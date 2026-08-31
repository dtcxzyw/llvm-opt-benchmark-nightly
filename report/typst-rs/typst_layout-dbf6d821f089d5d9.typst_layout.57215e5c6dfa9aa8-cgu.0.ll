Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/typst-rs/original/typst_layout-dbf6d821f089d5d9.typst_layout.57215e5c6dfa9aa8-cgu.0?download=true
inline.NumInlined: 19601
inline.NumDeleted: 9837
loop-unroll.NumCompletelyUnrolled: 50
loop-unroll.NumRuntimeUnrolled: 58
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout:bb.a
  %i.bq = load i8, ptr %i.bp, align 8, !alias.scope !3375, !noalias !3378
  %i.br = icmp eq i8 %i.bq, %3
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.bo, i1 %i.br, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.p, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout5sides5SidesINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4l_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4l_s0_0NCIB5O_B6c_B3b_B3b_NCINvB4n_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.backedge

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout5sides5SidesINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4l_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4l_s0_0NCIB5O_B6c_B3b_B3b_NCINvB4n_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.backedge: ; preds = %bb.o, %.loopexit.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout5sides5SidesINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4l_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4l_s0_0NCIB5O_B6c_B3b_B3b_NCINvB4n_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i, i64 -104
  call void @llvm.experimental.noalias.scope.decl(metadata !3382)
  call void @llvm.experimental.noalias.scope.decl(metadata !3385)
  call void @llvm.experimental.noalias.scope.decl(metadata !3388)
  call void @llvm.experimental.noalias.scope.decl(metadata !3391)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !3394, !noalias !3395, !nonnull !10, !noundef !10 ; 13 uses
  %i.bu = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i, i64 -96
  %i.bv = load ptr, ptr %i.bu, align 16, !alias.scope !3394, !noalias !3395, !nonnull !10, !align !151, !noundef !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !10, !noalias !3404, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3404
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !10, !noalias !3404, !nonnull !10
  call void %i.bz(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.bt) #59, !noalias !3404, !inline_history !3405
  %i.ca = load i128, ptr %i.a, align 16, !noalias !3404, !noundef !10
  %i.cb = icmp eq i128 %i.ca, -83205993932036020620063529963946274114
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3404
  br i1 %i.cb, label %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i, i64 -104
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %2, i8 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cc) #57, !noalias !3406
  unreachable

_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cd = load i64, ptr %i.bt, align 8, !range !285, !alias.scope !3407, !noalias !3412, !noundef !10
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.r, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.ch = load double, ptr %i.cg, align 8, !alias.scope !3415, !noalias !3418, !noundef !10
  %i.ci = load <2 x double>, ptr %i.cf, align 8, !alias.scope !3415, !noalias !3418
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ch, %bb.r ], [ undef, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.r ], [ 0, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cj = phi <2 x double> [ %i.ci, %bb.r ], [ undef, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !range !285, !alias.scope !3420, !noalias !3423, !noundef !10
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.s, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.cp = load double, ptr %i.co, align 8, !alias.scope !3425, !noalias !3428, !noundef !10
  %i.cq = load <2 x double>, ptr %i.cn, align 8, !alias.scope !3425, !noalias !3428
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.622.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cp, %bb.s ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi <2 x double> [ %i.cq, %bb.s ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !range !285, !alias.scope !3430, !noalias !3433, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.t, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.cx = load double, ptr %i.cw, align 8, !alias.scope !3435, !noalias !3438, !noundef !10
  %i.cy = load <2 x double>, ptr %i.cv, align 8, !alias.scope !3435, !noalias !3438
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.626.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cx, %bb.t ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i7.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.t ], [ 0, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cz = phi <2 x double> [ %i.cy, %bb.t ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.db = load i64, ptr %i.da, align 8, !range !285, !alias.scope !3440, !noalias !3443, !noundef !10
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.u, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.df = load double, ptr %i.de, align 8, !alias.scope !3445, !noalias !3448, !noundef !10
  %i.dg = load <2 x double>, ptr %i.dd, align 8, !alias.scope !3445, !noalias !3448
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.630.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.df, %bb.u ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i13.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.u ], [ 0, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dh = phi <2 x double> [ %i.dg, %bb.u ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.di = and i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.075.0.i.i.ph139
  %or.cond.i.i.i.i.not.i.i = icmp eq i64 %i.di, 0
  br i1 %or.cond.i.i.i.i.not.i.i, label %bb.v, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.v:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %i.dj = trunc i64 %.sroa.075.0.i.i.ph139 to i1  ; 2 uses
  %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i = or i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.075.0.i.i.ph139
  %i.dk = insertelement <2 x i1> poison, i1 %i.dj, i64 0
  %i.dl = shufflevector <2 x i1> %i.dk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dm = select <2 x i1> %i.dl, <2 x double> %.ph145, <2 x double> %i.cj
  %.sroa.7.0.copyload36.sroa.speculated.i.i.i.i = select i1 %i.dj, double %.sroa.1488.0.i.i.ph138, double %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.v, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi double [ %.sroa.7.0.copyload36.sroa.speculated.i.i.i.i, %bb.v ], [ %.sroa.1488.0.i.i.ph138, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i, %bb.v ], [ 1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dn = phi <2 x double> [ %i.dm, %bb.v ], [ %.ph145, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout5sides5SidesINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3l_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.do = and i64 %storemerge.i1.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.1793.0.i.i.ph137
  %or.cond.i.i3.i.i.not.i.i = icmp eq i64 %i.do, 0
  br i1 %or.cond.i.i3.i.i.not.i.i, label %bb.w, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

bb.w:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.dp = trunc i64 %.sroa.1793.0.i.i.ph137 to i1 ; 2 uses
  %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i = or i64 %storemerge.i1.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.1793.0.i.i.ph137
  %i.dq = insertelement <2 x i1> poison, i1 %i.dp, i64 0
  %i.dr = shufflevector <2 x i1> %i.dq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ds = select <2 x i1> %i.dr, <2 x double> %.ph146, <2 x double> %i.cr
  %.sroa.758.0.copyload59.sroa.speculated.i.i.i.i = select i1 %i.dp, double %.sroa.26.0.i.i.ph136, double %.sroa.622.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i: ; preds = %bb.w, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.758.0.i.i.i.i = phi double [ %.sroa.758.0.copyload59.sroa.speculated.i.i.i.i, %bb.w ], [ %.sroa.26.0.i.i.ph136, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %.sroa.052.0.i.i.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i, %bb.w ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.dt = phi <2 x double> [ %i.ds, %bb.w ], [ %.ph146, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.du = and i64 %storemerge.i7.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.29.0.i.i.ph135
  %or.cond.i.i13.i.i.not.i.i = icmp eq i64 %i.du, 0
  br i1 %or.cond.i.i13.i.i.not.i.i, label %bb.x, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i

bb.x:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %i.dv = trunc i64 %.sroa.29.0.i.i.ph135 to i1   ; 2 uses
  %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i = or i64 %storemerge.i7.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.29.0.i.i.ph135
  %i.dw = insertelement <2 x i1> poison, i1 %i.dv, i64 0
  %i.dx = shufflevector <2 x i1> %i.dw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dy = select <2 x i1> %i.dx, <2 x double> %.ph147, <2 x double> %i.cz
  %.sroa.784.0.copyload85.sroa.speculated.i.i.i.i = select i1 %i.dv, double %.sroa.38.0.i.i.ph134, double %.sroa.626.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i: ; preds = %bb.x, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %.sroa.784.0.i.i.i.i = phi double [ %.sroa.784.0.copyload85.sroa.speculated.i.i.i.i, %bb.x ], [ %.sroa.38.0.i.i.ph134, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %.sroa.078.0.i.i.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i, %bb.x ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.dz = phi <2 x double> [ %i.dy, %bb.x ], [ %.ph147, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.ea = and i64 %storemerge.i13.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.41.0.i.i.ph133
  %or.cond.i.i23.i.i.not.i.i = icmp eq i64 %i.ea, 0
  br i1 %or.cond.i.i23.i.i.not.i.i, label %bb.y, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout5sides5SidesINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4l_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4l_s0_0NCIB5O_B6c_B3b_B3b_NCINvB4n_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.outer132

bb.y:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i
  %i.eb = trunc i64 %.sroa.41.0.i.i.ph133 to i1   ; 2 uses
  %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i = or i64 %storemerge.i13.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.41.0.i.i.ph133
  %i.ec = insertelement <2 x i1> poison, i1 %i.eb, i64 0
  %i.ed = shufflevector <2 x i1> %i.ec, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ee = select <2 x i1> %i.ed, <2 x double> %.ph131, <2 x double> %i.dh
  %.sroa.7110.0.copyload111.sroa.speculated.i.i.i.i = select i1 %i.eb, double %.sroa.50.0.i.i.ph125, double %.sroa.630.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout5sides5SidesINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4l_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4l_s0_0NCIB5O_B6c_B3b_B3b_NCINvB4n_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.outer

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3450)
  call void @llvm.experimental.noalias.scope.decl(metadata !3453)
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.045.0.copyload.i = load i64, ptr %i.ef, align 8, !alias.scope !3453, !noalias !3455 ; 2 uses
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.eg = load <2 x double>, ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.648.0.copyload.i = load double, ptr %.sroa.648.0..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.049.0.copyload.i = load i64, ptr %i.eh, align 8, !alias.scope !3453, !noalias !3455 ; 2 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ei = load <2 x double>, ptr %.sroa.450.0..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.652.0.copyload.i = load double, ptr %.sroa.652.0..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.053.0.copyload.i = load i64, ptr %i.ej, align 8, !alias.scope !3453, !noalias !3455 ; 2 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ek = load <2 x double>, ptr %.sroa.454.0..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 120
  %.sroa.656.0.copyload.i = load double, ptr %.sroa.656.0..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %.sroa.75.32.copyload.i = load i64, ptr %4, align 8, !alias.scope !3453, !noalias !3455 ; 2 uses
  %i.el = trunc i64 %.sroa.075.0.i.i.ph139 to i1  ; 4 uses
  %i.em = trunc nuw i64 %.sroa.75.32.copyload.i to i1
  %or.cond.i.i.i.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i.i.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.118.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.118.32.copyload.i = load double, ptr %.sroa.118.32..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %.sroa.96.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = load <2 x double>, ptr %.sroa.96.32..sroa_idx.i, align 8, !alias.scope !3453, !noalias !3455
  %.sroa.0.0.copyload33.sroa.speculated.i.i = select i1 %i.el, i64 1, i64 %.sroa.75.32.copyload.i
  %i.eo = insertelement <2 x i1> poison, i1 %i.el, i64 0
  %i.ep = shufflevector <2 x i1> %i.eo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.eq = select <2 x i1> %i.ep, <2 x double> %.ph145, <2 x double> %i.en
  %.sroa.7.0.copyload36.sroa.speculated.i.i = select i1 %i.el, double %.sroa.1488.0.i.i.ph138, double %.sroa.118.32.copyload.i
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.z, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.7.0.i.i12 = phi double [ %.sroa.7.0.copyload36.sroa.speculated.i.i, %bb.z ], [ %.sroa.1488.0.i.i.ph138, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit ]
  %.sroa.0.0.i.i14 = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i, %bb.z ], [ 1, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit ]
  %i.er = phi <2 x double> [ %i.eq, %bb.z ], [ %.ph145, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit ]
  %i.es = trunc i64 %.sroa.1793.0.i.i.ph137 to i1 ; 4 uses
  %i.et = trunc nuw i64 %.sroa.045.0.copyload.i to i1
  %or.cond.i.i3.i.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i.i3.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.052.0.copyload53.sroa.speculated.i.i = select i1 %i.es, i64 1, i64 %.sroa.045.0.copyload.i
  %i.eu = insertelement <2 x i1> poison, i1 %i.es, i64 0
  %i.ev = shufflevector <2 x i1> %i.eu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ew = select <2 x i1> %i.ev, <2 x double> %.ph146, <2 x double> %i.eg
  %.sroa.758.0.copyload59.sroa.speculated.i.i = select i1 %i.es, double %.sroa.26.0.i.i.ph136, double %.sroa.648.0.copyload.i
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.aa, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.758.0.i.i = phi double [ %.sroa.758.0.copyload59.sroa.speculated.i.i, %bb.aa ], [ %.sroa.26.0.i.i.ph136, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.052.0.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i, %bb.aa ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.ex = phi <2 x double> [ %i.ew, %bb.aa ], [ %.ph146, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.ey = trunc i64 %.sroa.29.0.i.i.ph135 to i1   ; 4 uses
  %i.ez = trunc nuw i64 %.sroa.049.0.copyload.i to i1
  %or.cond.i.i13.i.i = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond.i.i13.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.078.0.copyload79.sroa.speculated.i.i = select i1 %i.ey, i64 1, i64 %.sroa.049.0.copyload.i
  %i.fa = insertelement <2 x i1> poison, i1 %i.ey, i64 0
  %i.fb = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fc = select <2 x i1> %i.fb, <2 x double> %.ph147, <2 x double> %i.ei
  %.sroa.784.0.copyload85.sroa.speculated.i.i = select i1 %i.ey, double %.sroa.38.0.i.i.ph134, double %.sroa.652.0.copyload.i
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i: ; preds = %bb.ab, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.784.0.i.i = phi double [ %.sroa.784.0.copyload85.sroa.speculated.i.i, %bb.ab ], [ %.sroa.38.0.i.i.ph134, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.078.0.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i, %bb.ab ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.fd = phi <2 x double> [ %i.fc, %bb.ab ], [ %.ph147, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.fe = trunc i64 %.sroa.41.0.i.i.ph133 to i1   ; 4 uses
  %i.ff = trunc nuw i64 %.sroa.053.0.copyload.i to i1
  %or.cond.i.i23.i.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond.i.i23.i.i, label %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i = select i1 %i.fe, i64 1, i64 %.sroa.053.0.copyload.i
  %i.fg = insertelement <2 x i1> poison, i1 %i.fe, i64 0
  %i.fh = shufflevector <2 x i1> %i.fg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fi = select <2 x i1> %i.fh, <2 x double> %.ph131, <2 x double> %i.ek
  %.sroa.7110.0.copyload111.sroa.speculated.i.i = select i1 %i.fe, double %.sroa.50.0.i.i.ph125, double %.sroa.656.0.copyload.i
  br label %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, %bb.ac
  %.sroa.7110.0.i.i = phi double [ %.sroa.7110.0.copyload111.sroa.speculated.i.i, %bb.ac ], [ %.sroa.50.0.i.i.ph125, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %.sroa.0104.0.i.i = phi i64 [ %.sroa.0104.0.copyload105.sroa.speculated.i.i, %bb.ac ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %i.fj = phi <2 x double> [ %i.fi, %bb.ac ], [ %.ph131, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  store i64 %.sroa.0.0.i.i14, ptr %0, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> %i.er, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.7.0.i.i12, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.052.0.i.i, ptr %i.fk, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.554.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x double> %i.ex, ptr %.sroa.554.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.758.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.758.0.i.i, ptr %.sroa.758.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.078.0.i.i, ptr %i.fl, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.580.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x double> %i.fd, ptr %.sroa.580.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.784.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %.sroa.784.0.i.i, ptr %.sroa.784.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.0104.0.i.i, ptr %i.fm, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.5106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x double> %i.fj, ptr %.sroa.5106.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  %.sroa.7110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %.sroa.7110.0.i.i, ptr %.sroa.7110.0..sroa_idx.i.i, align 8, !alias.scope !3457, !noalias !3460
  br label %bb.ad

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout5sides5SidesINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %2, i8 noundef range(i8 4, 6) %3, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(128) %4) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.8.16.copyload = load ptr, ptr %1, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.11.16.copyload = load i64, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.14.16.copyload = load ptr, ptr %.sroa.14.16..sroa_idx, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge, %bb.a
  %.sroa.14.0 = phi ptr [ %.sroa.14.16.copyload, %bb.a ], [ %.sroa.14.2, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.11.16.copyload, %bb.a ], [ %.sroa.11.2, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.08.0.i24.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.16.copyload, %bb.a ], [ %.sroa.546.0.copyload.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.08.025.i19.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %.sroa.044.0.copyload.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %i.c = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %i.d = icmp eq ptr %.sroa.08.025.i19.i.i.i.i.i.i.i, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit14.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %bb.d
  %.sroa.14.1 = phi ptr [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0, %bb.d ], [ %.sroa.14.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.11.1 = phi i64 [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0, %bb.d ], [ %.sroa.11.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.08.025.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i.i.i.i.i.i, %bb.d ], [ %.sroa.08.0.i24.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.08.025.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.14.1, null
  br i1 %.not17.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.013.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.14.1, align 8, !noalias !3462
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.1, i64 8
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3462
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14.1, i64 16
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0.copyload = load ptr, ptr %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.sroa_idx, align 8, !noalias !3462
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0 = phi i64 [ undef, %bb.b ], [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0.copyload, %bb.c ] ; 2 uses
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0 = phi ptr [ undef, %bb.b ], [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0.copyload, %bb.c ] ; 2 uses
  %.sroa.08.0.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %.sroa.013.0.copyload.i.i.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.e = icmp eq i64 %.sroa.11.1, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit14.i.i.i.i.i.i.loopexit.i

.loopexit14.i.i.i.i.i.i.loopexit.i:               ; preds = %bb.d
  %.idx.i.i.i.i.i.i.i.le.i = shl nuw nsw i64 %.sroa.11.1, 7
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.le.i
  br label %.loopexit14.i.i.i.i.i.i.i

.loopexit14.i.i.i.i.i.i.i:                        ; preds = %.loopexit14.i.i.i.i.i.i.loopexit.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %.sroa.14.2 = phi ptr [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.14.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.11.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.546.0.copyload.i = phi ptr [ %.sroa.08.0.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.08.0.i24.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.044.0.copyload.i = phi ptr [ %.sroa.08.025.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.08.025.i19.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %i.c, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -112
  %i.i = load i64, ptr %i.h, align 16, !range !288, !noalias !3482, !noundef !10 ; 2 uses
  %i.j = icmp ne i64 %i.i, 4
  tail call void @llvm.assume(i1 %i.j)
  %.not.i7.i.i.i.i.i.i.i = icmp eq i64 %i.i, 3
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.e, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge

bb.e:                                             ; preds = %.loopexit14.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -88
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3483, !noalias !3482, !nonnull !10, !align !151, !noundef !10
  %i.m = icmp eq ptr %i.l, %2
  br i1 %i.m, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -72
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !3483, !noalias !3482, !noundef !10
  %i.p = icmp eq i8 %i.o, %3
  br i1 %i.p, label %bb.f, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, %bb.e, %.loopexit14.i.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3486)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3489)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3492, !noalias !3493, !nonnull !10, !noundef !10 ; 13 uses
  %i.s = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -96
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3492, !noalias !3493, !nonnull !10, !align !151, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !10, !noalias !3496, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3496
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !10, !noalias !3496, !nonnull !10
  call void %i.x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.r) #59, !noalias !3496, !inline_history !3497
  %i.y = load i128, ptr %i.b, align 16, !noalias !3496, !noundef !10
  %i.z = icmp eq i128 %i.y, 139520137582578923563371865297397731207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3496
  br i1 %i.z, label %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %2, i8 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q) #57, !noalias !3498
  unreachable

_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.f
  %i.aa = load i64, ptr %i.r, align 8, !range !285, !alias.scope !3499, !noalias !3504, !noundef !10
  %i.ab = trunc nuw i64 %i.aa to i1
  br i1 %i.ab, label %bb.h, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.h:                                             ; preds = %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.ae = load double, ptr %i.ad, align 8, !alias.scope !3507, !noalias !3510, !noundef !10
  %i.af = load <2 x double>, ptr %i.ac, align 8, !alias.scope !3507, !noalias !3510
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.h, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.6.0.i.i.i.i = phi double [ %i.ae, %bb.h ], [ undef, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %storemerge.i.i.i.i.i = phi i64 [ 1, %bb.h ], [ 0, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.ag = phi <2 x double> [ %i.af, %bb.h ], [ undef, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.ah = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ai = load i64, ptr %i.ah, align 8, !range !285, !alias.scope !3512, !noalias !3515, !noundef !10
  %i.aj = trunc nuw i64 %i.ai to i1
  br i1 %i.aj, label %bb.i, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i

bb.i:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  %i.al = getelementptr inbounds nuw i8, ptr %i.r, i64 56
  %i.am = load double, ptr %i.al, align 8, !alias.scope !3517, !noalias !3520, !noundef !10
  %i.an = load <2 x double>, ptr %i.ak, align 8, !alias.scope !3517, !noalias !3520
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i: ; preds = %bb.i, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.622.0.i.i.i.i = phi double [ %i.am, %bb.i ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ]
  %storemerge.i1.i.i.i.i = phi i64 [ 1, %bb.i ], [ 0, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ]
  %i.ao = phi <2 x double> [ %i.an, %bb.i ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.r, i64 64
  %i.aq = load i64, ptr %i.ap, align 8, !range !285, !alias.scope !3522, !noalias !3525, !noundef !10
  %i.ar = trunc nuw i64 %i.aq to i1
  br i1 %i.ar, label %bb.j, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

bb.j:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i
  %i.as = getelementptr inbounds nuw i8, ptr %i.r, i64 72
  %i.at = getelementptr inbounds nuw i8, ptr %i.r, i64 88
  %i.au = load double, ptr %i.at, align 8, !alias.scope !3527, !noalias !3530, !noundef !10
  %i.av = load <2 x double>, ptr %i.as, align 8, !alias.scope !3527, !noalias !3530
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

end_hunk_0
begin_hunk_1_@_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout:bb.a
  %i.bq = load i8, ptr %i.bp, align 8, !alias.scope !3574, !noalias !3577
  %i.br = icmp eq i8 %i.bq, %3
  %or.cond.i.i.i.i.i.i.i.i = select i1 %i.bo, i1 %i.br, i1 false
  br i1 %or.cond.i.i.i.i.i.i.i.i, label %bb.p, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout7corners7CornersINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4p_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4p_s0_0NCIB5S_B6g_B3b_B3b_NCINvB4r_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.backedge

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout7corners7CornersINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4p_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4p_s0_0NCIB5S_B6g_B3b_B3b_NCINvB4r_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.backedge: ; preds = %bb.o, %.loopexit.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout7corners7CornersINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4p_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4p_s0_0NCIB5S_B6g_B3b_B3b_NCINvB4r_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i

bb.p:                                             ; preds = %bb.o
  %i.bs = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i, i64 -104
  call void @llvm.experimental.noalias.scope.decl(metadata !3581)
  call void @llvm.experimental.noalias.scope.decl(metadata !3584)
  call void @llvm.experimental.noalias.scope.decl(metadata !3587)
  call void @llvm.experimental.noalias.scope.decl(metadata !3590)
  %i.bt = load ptr, ptr %i.bs, align 8, !alias.scope !3593, !noalias !3594, !nonnull !10, !noundef !10 ; 13 uses
  %i.bu = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i, i64 -96
  %i.bv = load ptr, ptr %i.bu, align 16, !alias.scope !3593, !noalias !3594, !nonnull !10, !align !151, !noundef !10
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 40
  %i.bx = load ptr, ptr %i.bw, align 8, !invariant.load !10, !noalias !3603, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3603
  %i.by = getelementptr inbounds nuw i8, ptr %i.bx, i64 24
  %i.bz = load ptr, ptr %i.by, align 8, !invariant.load !10, !noalias !3603, !nonnull !10
  call void %i.bz(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef nonnull %i.bt) #59, !noalias !3603, !inline_history !3604
  %i.ca = load i128, ptr %i.a, align 16, !noalias !3603, !noundef !10
  %i.cb = icmp eq i128 %i.ca, 139520137582578923563371865297397731207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3603
  br i1 %i.cb, label %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i, label %bb.q, !prof !13

bb.q:                                             ; preds = %bb.p
  %i.cc = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i, i64 -104
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %2, i8 noundef %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.cc) #57, !noalias !3605
  unreachable

_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.p
  %i.cd = load i64, ptr %i.bt, align 8, !range !285, !alias.scope !3606, !noalias !3611, !noundef !10
  %i.ce = trunc nuw i64 %i.cd to i1
  br i1 %i.ce, label %bb.r, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.r:                                             ; preds = %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i
  %i.cf = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.cg = getelementptr inbounds nuw i8, ptr %i.bt, i64 24
  %i.ch = load double, ptr %i.cg, align 8, !alias.scope !3614, !noalias !3617, !noundef !10
  %i.ci = load <2 x double>, ptr %i.cf, align 8, !alias.scope !3614, !noalias !3617
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.r, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.ch, %bb.r ], [ undef, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.r ], [ 0, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cj = phi <2 x double> [ %i.ci, %bb.r ], [ undef, %_RINvMsc_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_5Block8downcastINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1m_3rel3RelEEECs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i ]
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.cl = load i64, ptr %i.ck, align 8, !range !285, !alias.scope !3619, !noalias !3622, !noundef !10
  %i.cm = trunc nuw i64 %i.cl to i1
  br i1 %i.cm, label %bb.s, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cn = getelementptr inbounds nuw i8, ptr %i.bt, i64 40
  %i.co = getelementptr inbounds nuw i8, ptr %i.bt, i64 56
  %i.cp = load double, ptr %i.co, align 8, !alias.scope !3624, !noalias !3627, !noundef !10
  %i.cq = load <2 x double>, ptr %i.cn, align 8, !alias.scope !3624, !noalias !3627
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.s, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.622.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cp, %bb.s ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i1.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.s ], [ 0, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cr = phi <2 x double> [ %i.cq, %bb.s ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bt, i64 64
  %i.ct = load i64, ptr %i.cs, align 8, !range !285, !alias.scope !3629, !noalias !3632, !noundef !10
  %i.cu = trunc nuw i64 %i.ct to i1
  br i1 %i.cu, label %bb.t, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i

bb.t:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bt, i64 72
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bt, i64 88
  %i.cx = load double, ptr %i.cw, align 8, !alias.scope !3634, !noalias !3637, !noundef !10
  %i.cy = load <2 x double>, ptr %i.cv, align 8, !alias.scope !3634, !noalias !3637
  br label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.t, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.626.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.cx, %bb.t ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i7.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.t ], [ 0, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.cz = phi <2 x double> [ %i.cy, %bb.t ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit6.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.da = getelementptr inbounds nuw i8, ptr %i.bt, i64 96
  %i.db = load i64, ptr %i.da, align 8, !range !285, !alias.scope !3639, !noalias !3642, !noundef !10
  %i.dc = trunc nuw i64 %i.db to i1
  br i1 %i.dc, label %bb.u, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

bb.u:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.bt, i64 104
  %i.de = getelementptr inbounds nuw i8, ptr %i.bt, i64 120
  %i.df = load double, ptr %i.de, align 8, !alias.scope !3644, !noalias !3647, !noundef !10
  %i.dg = load <2 x double>, ptr %i.dd, align 8, !alias.scope !3644, !noalias !3647
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.u, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.630.0.i.i.i.i.i.i.i.i.i.i.i.i = phi double [ %i.df, %bb.u ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %storemerge.i13.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 1, %bb.u ], [ 0, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dh = phi <2 x double> [ %i.dg, %bb.u ], [ undef, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i.i.i.i.i.i.i.i.i ]
  %i.di = and i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.075.0.i.i.ph139
  %or.cond.i.i.i.i.not.i.i = icmp eq i64 %i.di, 0
  br i1 %or.cond.i.i.i.i.not.i.i, label %bb.v, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

bb.v:                                             ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %i.dj = trunc i64 %.sroa.075.0.i.i.ph139 to i1  ; 2 uses
  %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i = or i64 %storemerge.i.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.075.0.i.i.ph139
  %i.dk = insertelement <2 x i1> poison, i1 %i.dj, i64 0
  %i.dl = shufflevector <2 x i1> %i.dk, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dm = select <2 x i1> %i.dl, <2 x double> %.ph145, <2 x double> %i.cj
  %.sroa.7.0.copyload36.sroa.speculated.i.i.i.i = select i1 %i.dj, double %.sroa.1488.0.i.i.ph138, double %.sroa.6.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i: ; preds = %bb.v, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i
  %.sroa.7.0.i.i.i.i = phi double [ %.sroa.7.0.copyload36.sroa.speculated.i.i.i.i, %bb.v ], [ %.sroa.1488.0.i.i.ph138, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.i.i.i.i = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i.i.i, %bb.v ], [ 1, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.dn = phi <2 x double> [ %i.dm, %bb.v ], [ %.ph145, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map8map_foldRNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles8PropertyRNtBX_5BlockINtNtNtB11_6layout7corners7CornersINtNtBa_6option6OptionNtNtB2e_3rel3RelEENCNvMsk_BX_NtBX_10StyleChain10propertiess0_0NCIB2_B1X_B29_B29_NCINvB3p_10get_foldedB29_E0FB29_B29_EB29_E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.do = and i64 %storemerge.i1.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.1793.0.i.i.ph137
  %or.cond.i.i3.i.i.not.i.i = icmp eq i64 %i.do, 0
  br i1 %or.cond.i.i3.i.i.not.i.i, label %bb.w, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

bb.w:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %i.dp = trunc i64 %.sroa.1793.0.i.i.ph137 to i1 ; 2 uses
  %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i = or i64 %storemerge.i1.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.1793.0.i.i.ph137
  %i.dq = insertelement <2 x i1> poison, i1 %i.dp, i64 0
  %i.dr = shufflevector <2 x i1> %i.dq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ds = select <2 x i1> %i.dr, <2 x double> %.ph146, <2 x double> %i.cr
  %.sroa.758.0.copyload59.sroa.speculated.i.i.i.i = select i1 %i.dp, double %.sroa.26.0.i.i.ph136, double %.sroa.622.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i: ; preds = %bb.w, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i
  %.sroa.758.0.i.i.i.i = phi double [ %.sroa.758.0.copyload59.sroa.speculated.i.i.i.i, %bb.w ], [ %.sroa.26.0.i.i.ph136, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %.sroa.052.0.i.i.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i.i.i, %bb.w ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.dt = phi <2 x double> [ %i.ds, %bb.w ], [ %.ph146, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i ] ; 2 uses
  %i.du = and i64 %storemerge.i7.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.29.0.i.i.ph135
  %or.cond.i.i13.i.i.not.i.i = icmp eq i64 %i.du, 0
  br i1 %or.cond.i.i13.i.i.not.i.i, label %bb.x, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i

bb.x:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %i.dv = trunc i64 %.sroa.29.0.i.i.ph135 to i1   ; 2 uses
  %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i = or i64 %storemerge.i7.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.29.0.i.i.ph135
  %i.dw = insertelement <2 x i1> poison, i1 %i.dv, i64 0
  %i.dx = shufflevector <2 x i1> %i.dw, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.dy = select <2 x i1> %i.dx, <2 x double> %.ph147, <2 x double> %i.cz
  %.sroa.784.0.copyload85.sroa.speculated.i.i.i.i = select i1 %i.dv, double %.sroa.38.0.i.i.ph134, double %.sroa.626.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i: ; preds = %bb.x, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i
  %.sroa.784.0.i.i.i.i = phi double [ %.sroa.784.0.copyload85.sroa.speculated.i.i.i.i, %bb.x ], [ %.sroa.38.0.i.i.ph134, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %.sroa.078.0.i.i.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i.i.i, %bb.x ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.dz = phi <2 x double> [ %i.dy, %bb.x ], [ %.ph147, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i.i.i ] ; 2 uses
  %i.ea = and i64 %storemerge.i13.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.41.0.i.i.ph133
  %or.cond.i.i23.i.i.not.i.i = icmp eq i64 %i.ea, 0
  br i1 %or.cond.i.i23.i.i.not.i.i, label %bb.y, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout7corners7CornersINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4p_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4p_s0_0NCIB5S_B6g_B3b_B3b_NCINvB4r_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.outer132

bb.y:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i.i.i
  %i.eb = trunc i64 %.sroa.41.0.i.i.ph133 to i1   ; 2 uses
  %.sroa.0104.0.copyload105.sroa.speculated.i.i.i.i = or i64 %storemerge.i13.i.i.i.i.i.i.i.i.i.i.i.i, %.sroa.41.0.i.i.ph133
  %i.ec = insertelement <2 x i1> poison, i1 %i.eb, i64 0
  %i.ed = shufflevector <2 x i1> %i.ec, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ee = select <2 x i1> %i.ed, <2 x double> %.ph131, <2 x double> %i.dh
  %.sroa.7110.0.copyload111.sroa.speculated.i.i.i.i = select i1 %i.eb, double %.sroa.50.0.i.i.ph125, double %.sroa.630.0.i.i.i.i.i.i.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map15filter_map_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB1X_8PropertyINtNtNtB21_6layout7corners7CornersINtNtBa_6option6OptionNtNtB3g_3rel3RelEENCNvMsk_B1X_NtB1X_10StyleChain10properties0NCINvNtB6_6filter11filter_foldB2V_B3b_NCB4p_s_0NCINvNtB6_3map8map_foldB2V_RNtB1X_5BlockB3b_NCB4p_s0_0NCIB5S_B6g_B3b_B3b_NCINvB4r_10get_foldedB3b_E0FB3b_B3b_EB3b_E0E0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.outer

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.lr.ph.i.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !3649)
  call void @llvm.experimental.noalias.scope.decl(metadata !3652)
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.045.0.copyload.i = load i64, ptr %i.ef, align 8, !alias.scope !3652, !noalias !3654 ; 2 uses
  %.sroa.446.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.eg = load <2 x double>, ptr %.sroa.446.0..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %.sroa.648.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 56
  %.sroa.648.0.copyload.i = load double, ptr %.sroa.648.0..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %i.eh = getelementptr inbounds nuw i8, ptr %4, i64 64
  %.sroa.049.0.copyload.i = load i64, ptr %i.eh, align 8, !alias.scope !3652, !noalias !3654 ; 2 uses
  %.sroa.450.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 72
  %i.ei = load <2 x double>, ptr %.sroa.450.0..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %.sroa.652.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 88
  %.sroa.652.0.copyload.i = load double, ptr %.sroa.652.0..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %i.ej = getelementptr inbounds nuw i8, ptr %4, i64 96
  %.sroa.053.0.copyload.i = load i64, ptr %i.ej, align 8, !alias.scope !3652, !noalias !3654 ; 2 uses
  %.sroa.454.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 104
  %i.ek = load <2 x double>, ptr %.sroa.454.0..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %.sroa.656.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 120
  %.sroa.656.0.copyload.i = load double, ptr %.sroa.656.0..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %.sroa.75.32.copyload.i = load i64, ptr %4, align 8, !alias.scope !3652, !noalias !3654 ; 2 uses
  %i.el = trunc i64 %.sroa.075.0.i.i.ph139 to i1  ; 4 uses
  %i.em = trunc nuw i64 %.sroa.75.32.copyload.i to i1
  %or.cond.i.i.i.i = select i1 %i.el, i1 %i.em, i1 false
  br i1 %or.cond.i.i.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.z

bb.z:                                             ; preds = %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.118.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.118.32.copyload.i = load double, ptr %.sroa.118.32..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %.sroa.96.32..sroa_idx.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.en = load <2 x double>, ptr %.sroa.96.32..sroa_idx.i, align 8, !alias.scope !3652, !noalias !3654
  %.sroa.0.0.copyload33.sroa.speculated.i.i = select i1 %i.el, i64 1, i64 %.sroa.75.32.copyload.i
  %i.eo = insertelement <2 x i1> poison, i1 %i.el, i64 0
  %i.ep = shufflevector <2 x i1> %i.eo, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.eq = select <2 x i1> %i.ep, <2 x double> %.ph145, <2 x double> %i.en
  %.sroa.7.0.copyload36.sroa.speculated.i.i = select i1 %i.el, double %.sroa.1488.0.i.i.ph138, double %.sroa.118.32.copyload.i
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.z, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.7.0.i.i12 = phi double [ %.sroa.7.0.copyload36.sroa.speculated.i.i, %bb.z ], [ %.sroa.1488.0.i.i.ph138, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit ]
  %.sroa.0.0.i.i14 = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i, %bb.z ], [ 1, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit ]
  %i.er = phi <2 x double> [ %i.eq, %bb.z ], [ %.ph145, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit ]
  %i.es = trunc i64 %.sroa.1793.0.i.i.ph137 to i1 ; 4 uses
  %i.et = trunc nuw i64 %.sroa.045.0.copyload.i to i1
  %or.cond.i.i3.i.i = select i1 %i.es, i1 %i.et, i1 false
  br i1 %or.cond.i.i3.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i, label %bb.aa

bb.aa:                                            ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.052.0.copyload53.sroa.speculated.i.i = select i1 %i.es, i64 1, i64 %.sroa.045.0.copyload.i
  %i.eu = insertelement <2 x i1> poison, i1 %i.es, i64 0
  %i.ev = shufflevector <2 x i1> %i.eu, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ew = select <2 x i1> %i.ev, <2 x double> %.ph146, <2 x double> %i.eg
  %.sroa.758.0.copyload59.sroa.speculated.i.i = select i1 %i.es, double %.sroa.26.0.i.i.ph136, double %.sroa.648.0.copyload.i
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.aa, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.758.0.i.i = phi double [ %.sroa.758.0.copyload59.sroa.speculated.i.i, %bb.aa ], [ %.sroa.26.0.i.i.ph136, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.052.0.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i, %bb.aa ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.ex = phi <2 x double> [ %i.ew, %bb.aa ], [ %.ph146, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.ey = trunc i64 %.sroa.29.0.i.i.ph135 to i1   ; 4 uses
  %i.ez = trunc nuw i64 %.sroa.049.0.copyload.i to i1
  %or.cond.i.i13.i.i = select i1 %i.ey, i1 %i.ez, i1 false
  br i1 %or.cond.i.i13.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, label %bb.ab

bb.ab:                                            ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.078.0.copyload79.sroa.speculated.i.i = select i1 %i.ey, i64 1, i64 %.sroa.049.0.copyload.i
  %i.fa = insertelement <2 x i1> poison, i1 %i.ey, i64 0
  %i.fb = shufflevector <2 x i1> %i.fa, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fc = select <2 x i1> %i.fb, <2 x double> %.ph147, <2 x double> %i.ei
  %.sroa.784.0.copyload85.sroa.speculated.i.i = select i1 %i.ey, double %.sroa.38.0.i.i.ph134, double %.sroa.652.0.copyload.i
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i: ; preds = %bb.ab, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.784.0.i.i = phi double [ %.sroa.784.0.copyload85.sroa.speculated.i.i, %bb.ab ], [ %.sroa.38.0.i.i.ph134, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.078.0.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i, %bb.ab ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.fd = phi <2 x double> [ %i.fc, %bb.ab ], [ %.ph147, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.fe = trunc i64 %.sroa.41.0.i.i.ph133 to i1   ; 4 uses
  %i.ff = trunc nuw i64 %.sroa.053.0.copyload.i to i1
  %or.cond.i.i23.i.i = select i1 %i.fe, i1 %i.ff, i1 false
  br i1 %or.cond.i.i23.i.i, label %_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, label %bb.ac

bb.ac:                                            ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i = select i1 %i.fe, i64 1, i64 %.sroa.053.0.copyload.i
  %i.fg = insertelement <2 x i1> poison, i1 %i.fe, i64 0
  %i.fh = shufflevector <2 x i1> %i.fg, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.fi = select <2 x i1> %i.fh, <2 x double> %.ph131, <2 x double> %i.ek
  %.sroa.7110.0.copyload111.sroa.speculated.i.i = select i1 %i.fe, double %.sroa.50.0.i.i.ph125, double %.sroa.656.0.copyload.i
  br label %_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, %bb.ac
  %.sroa.7110.0.i.i = phi double [ %.sroa.7110.0.copyload111.sroa.speculated.i.i, %bb.ac ], [ %.sroa.50.0.i.i.ph125, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %.sroa.0104.0.i.i = phi i64 [ %.sroa.0104.0.copyload105.sroa.speculated.i.i, %bb.ac ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %i.fj = phi <2 x double> [ %i.fi, %bb.ac ], [ %.ph131, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  store i64 %.sroa.0.0.i.i14, ptr %0, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> %i.er, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.7.0.i.i12, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  %i.fk = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.052.0.i.i, ptr %i.fk, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.554.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x double> %i.ex, ptr %.sroa.554.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.758.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.758.0.i.i, ptr %.sroa.758.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  %i.fl = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.078.0.i.i, ptr %i.fl, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.580.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x double> %i.fd, ptr %.sroa.580.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.784.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %.sroa.784.0.i.i, ptr %.sroa.784.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  %i.fm = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.0104.0.i.i, ptr %i.fm, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.5106.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x double> %i.fj, ptr %.sroa.5106.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  %.sroa.7110.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %.sroa.7110.0.i.i, ptr %.sroa.7110.0..sroa_idx.i.i, align 8, !alias.scope !3656, !noalias !3659
  br label %bb.ad

_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %4, i64 128, i1 false)
  br label %bb.ad

bb.ad:                                            ; preds = %_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedINtNtNtB1R_6layout7corners7CornersINtNtBc_6option6OptionNtNtB4f_3rel3RelEEE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit.thread
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc i16 @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedNtNtNtBa_6layout5align9AlignmentECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, i8 noundef range(i8 0, 4) %2, i16 range(i16 0, 514) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %.sroa.8.16.copyload = load ptr, ptr %0, align 8
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.11.16.copyload = load i64, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.14.16..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.14.16.copyload = load ptr, ptr %.sroa.14.16..sroa_idx, align 8
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i: ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge, %bb.a
  %.sroa.14.0 = phi ptr [ %.sroa.14.16.copyload, %bb.a ], [ %.sroa.14.2, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.11.0 = phi i64 [ %.sroa.11.16.copyload, %bb.a ], [ %.sroa.11.2, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.08.0.i24.i.i.i.i.i.i.i = phi ptr [ %.sroa.8.16.copyload, %bb.a ], [ %.sroa.5.0.copyload.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %.sroa.08.025.i19.i.i.i.i.i.i.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %.sroa.0.0.copyload.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %i.c = phi ptr [ inttoptr (i64 16 to ptr), %bb.a ], [ %i.g, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge ] ; 2 uses
  %i.d = icmp eq ptr %.sroa.08.025.i19.i.i.i.i.i.i.i, %i.c
  br i1 %i.d, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit14.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i, %bb.d
  %.sroa.14.1 = phi ptr [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0, %bb.d ], [ %.sroa.14.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 4 uses
  %.sroa.11.1 = phi i64 [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0, %bb.d ], [ %.sroa.11.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.08.025.i.i.i.i.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i.i.i.i.i.i, %bb.d ], [ %.sroa.08.0.i24.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 3 uses
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.08.025.i.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedNtNtNtB1R_6layout5align9AlignmentE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.14.1, null
  br i1 %.not17.i.i.i.i.i.i.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.013.0.copyload.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.14.1, align 8, !noalias !3661
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.14.1, i64 8
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0.copyload = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i, align 8, !noalias !3661
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.14.1, i64 16
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0.copyload = load ptr, ptr %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.i.i.i.i.i.i.sroa_idx, align 8, !noalias !3661
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0 = phi i64 [ undef, %bb.b ], [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0.copyload, %bb.c ] ; 2 uses
  %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0 = phi ptr [ undef, %bb.b ], [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0.copyload, %bb.c ] ; 2 uses
  %.sroa.08.0.i.i.i.i.i.i.i.i = phi ptr [ null, %bb.b ], [ %.sroa.013.0.copyload.i.i.i.i.i.i.i.i, %bb.c ] ; 2 uses
  %i.e = icmp eq i64 %.sroa.11.1, 0
  br i1 %i.e, label %.lr.ph.i.i.i.i.i.i.i.i, label %.loopexit14.i.i.i.i.i.i.loopexit.i

.loopexit14.i.i.i.i.i.i.loopexit.i:               ; preds = %bb.d
  %.idx.i.i.i.i.i.i.i.le.i = shl nuw nsw i64 %.sroa.11.1, 7
  %i.f = getelementptr inbounds nuw i8, ptr %.sroa.08.025.i.i.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i.le.i
  br label %.loopexit14.i.i.i.i.i.i.i

.loopexit14.i.i.i.i.i.i.i:                        ; preds = %.loopexit14.i.i.i.i.i.i.loopexit.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i
  %.sroa.14.2 = phi ptr [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.4.0, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.14.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.11.2 = phi i64 [ %.sroa.510.i.i.i.i.i.i.i.i.sroa.0.0, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.11.0, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.5.0.copyload.i = phi ptr [ %.sroa.08.0.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.08.0.i24.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.0.copyload.i = phi ptr [ %.sroa.08.025.i.i.i.i.i.i.i.i, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %.sroa.08.025.i19.i.i.i.i.i.i.i, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 2 uses
  %.lcssa.i.i.i.i.i.i.i.i = phi ptr [ %i.f, %.loopexit14.i.i.i.i.i.i.loopexit.i ], [ %i.c, %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i ] ; 6 uses
  %i.g = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -128 ; 2 uses
  %i.h = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -112
  %i.i = load i64, ptr %i.h, align 16, !range !288, !noalias !3679, !noundef !10 ; 2 uses
  %i.j = icmp ne i64 %i.i, 4
  tail call void @llvm.assume(i1 %i.j)
  %.not.i7.i.i.i.i.i.i.i = icmp eq i64 %i.i, 3
  br i1 %.not.i7.i.i.i.i.i.i.i, label %bb.e, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge

bb.e:                                             ; preds = %.loopexit14.i.i.i.i.i.i.i
  %i.k = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -88
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !3680, !noalias !3679, !nonnull !10, !align !151, !noundef !10
  %i.m = icmp eq ptr %i.l, %1
  br i1 %i.m, label %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge

_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.e
  %i.n = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -72
  %i.o = load i8, ptr %i.n, align 8, !alias.scope !3680, !noalias !3679, !noundef !10
  %i.p = icmp eq i8 %i.o, %2
  br i1 %i.p, label %bb.f, label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge

_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.backedge: ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i, %bb.e, %.loopexit14.i.i.i.i.i.i.i
  br label %_RNCINvNtNtNtCs3oUPovFnLWP_4core4iter8adapters10filter_map19filter_map_try_foldRINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles5StyleERNtB21_8PropertyuINtNtNtBa_3ops12control_flow11ControlFlowB2Z_ENCNvMsk_B21_NtB21_10StyleChain10properties0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB2Z_QNCB42_s_0E0E0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i

bb.f:                                             ; preds = %_RNvXs1_NtNtNtCs3oUPovFnLWP_4core3ops8function5implsQNCNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtBW_10StyleChain10propertiess_0INtB7_5FnMutTRRNtBW_8PropertyEE8call_mutCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i
  %i.q = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -104 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3683)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !3686)
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !3689, !noalias !3690, !nonnull !10, !noundef !10 ; 2 uses
  %i.s = getelementptr inbounds i8, ptr %.lcssa.i.i.i.i.i.i.i.i, i64 -96
  %i.t = load ptr, ptr %i.s, align 8, !alias.scope !3689, !noalias !3690, !nonnull !10, !align !151, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  %i.v = load ptr, ptr %i.u, align 8, !invariant.load !10, !noalias !3692, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3692
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8, !invariant.load !10, !noalias !3692, !nonnull !10
  call void %i.x(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noundef nonnull %i.r) #59, !noalias !3692, !inline_history !3693
  %i.y = load i128, ptr %i.b, align 16, !noalias !3692, !noundef !10
  %i.z = icmp eq i128 %i.y, -48047881881507784669014151487819035683
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3692
  br i1 %i.z, label %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.g, !prof !13

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(216) %1, i8 noundef %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.q) #57, !noalias !3694
  unreachable

_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.f
  %.val.i.i.i = load i16, ptr %i.r, align 1, !noalias !3695 ; 2 uses
  %i.aa = and i16 %.val.i.i.i, 255
  %.not.i = icmp eq i16 %i.aa, 255
  br i1 %.not.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedNtNtNtB1R_6layout5align9AlignmentE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %.preheader.outer

.preheader.outer:                                 ; preds = %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles4Fold4fold.exit.i.i
  %.sroa.11.0.i.i.i.i.i.ph = phi ptr [ %.sroa.11.1.i.i.i.i.i, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles4Fold4fold.exit.i.i ], [ %.sroa.14.2, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.9.0.i.i.i.i.i.ph = phi i64 [ %.sroa.9.1.i.i.i.i.i, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles4Fold4fold.exit.i.i ], [ %.sroa.11.2, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.08.0.i28.i.i.i.i.i.i.ph = phi ptr [ %.sroa.08.0.i27.i.i.i.i.i.i, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles4Fold4fold.exit.i.i ], [ %.sroa.5.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.08.025.i23.i.i.i.i.i.i.ph = phi ptr [ %.sroa.08.025.i22.i.i.i.i.i.i, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles4Fold4fold.exit.i.i ], [ %.sroa.0.0.copyload.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.ph = phi ptr [ %i.af, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles4Fold4fold.exit.i.i ], [ %i.g, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.04.0.i.i.i.i.i.i.ph = phi i16 [ %.sroa.016.0.insert.insert.i.i.i, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout5alignNtB5_9AlignmentNtNtNtB9_11foundations6styles4Fold4fold.exit.i.i ], [ %.val.i.i.i, %_RNvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB5_3MapIBN_INtNtB7_6filter6FilterINtNtB7_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1S_NtB1S_10StyleChain10properties0ENCB2T_s_0ENCB2T_s0_0ENCINvB2V_10get_foldedNtNtNtB1W_6layout5align9AlignmentE0ENtNtNtB9_6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit.i ] ; 11 uses
  br label %.preheader

.preheader:                                       ; preds = %.preheader.backedge, %.preheader.outer
  %.sroa.11.0.i.i.i.i.i = phi ptr [ %.sroa.11.0.i.i.i.i.i.ph, %.preheader.outer ], [ %.sroa.11.1.i.i.i.i.i, %.preheader.backedge ] ; 2 uses
  %.sroa.9.0.i.i.i.i.i = phi i64 [ %.sroa.9.0.i.i.i.i.i.ph, %.preheader.outer ], [ %.sroa.9.1.i.i.i.i.i, %.preheader.backedge ] ; 2 uses
  %.sroa.08.0.i28.i.i.i.i.i.i = phi ptr [ %.sroa.08.0.i28.i.i.i.i.i.i.ph, %.preheader.outer ], [ %.sroa.08.0.i27.i.i.i.i.i.i, %.preheader.backedge ] ; 2 uses
  %.sroa.08.025.i23.i.i.i.i.i.i = phi ptr [ %.sroa.08.025.i23.i.i.i.i.i.i.ph, %.preheader.outer ], [ %.sroa.08.025.i22.i.i.i.i.i.i, %.preheader.backedge ] ; 2 uses
  %i.ab = phi ptr [ %.ph, %.preheader.outer ], [ %i.af, %.preheader.backedge ] ; 2 uses
  %i.ac = icmp eq ptr %.sroa.08.025.i23.i.i.i.i.i.i, %i.ab
  br i1 %i.ac, label %.lr.ph.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.preheader, %bb.j
  %.sroa.11.2.i.i.i.i.i = phi ptr [ %.sroa.510.i.i.sroa.4.0.i.i.i.i.i, %bb.j ], [ %.sroa.11.0.i.i.i.i.i, %.preheader ] ; 4 uses
  %.sroa.9.2.i.i.i.i.i = phi i64 [ %.sroa.510.i.i.sroa.0.0.i.i.i.i.i, %bb.j ], [ %.sroa.9.0.i.i.i.i.i, %.preheader ] ; 2 uses
  %.sroa.08.025.i.i.i.i.i.i.i = phi ptr [ %.sroa.08.0.i.i.i.i.i.i.i, %bb.j ], [ %.sroa.08.0.i28.i.i.i.i.i.i, %.preheader ] ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.08.025.i.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i.i, label %_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter8adapters3map3MapIB4_INtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapNtNtNtCsdaEETE4DqmE_13typst_library11foundations6styles7EntriesNCNvMsk_B1N_NtB1N_10StyleChain10properties0ENCB2O_s_0ENCB2O_s0_0ENCINvB2Q_10get_foldedNtNtNtB1R_6layout5align9AlignmentE0ENtNtNtBa_6traits8iterator8Iterator6reduceFB4a_B4a_EB4a_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i
  %.not17.i.i.i.i.i.i.i = icmp eq ptr %.sroa.11.2.i.i.i.i.i, null
  br i1 %.not17.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.sroa.013.0.copyload.i.i.i.i.i.i.i = load ptr, ptr %.sroa.11.2.i.i.i.i.i, align 8, !noalias !3696
  %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2.i.i.i.i.i, i64 8
  %.sroa.510.i.i.sroa.0.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.414.0..sroa_idx.i.i.i.i.i.i.i, align 8, !noalias !3696
  %.sroa.510.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.11.2.i.i.i.i.i, i64 16
  %.sroa.510.i.i.sroa.4.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.510.i.i.sroa.4.0..sroa.414.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i, align 8, !noalias !3696
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
end_hunk_1
begin_hunk_2_@_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner11finish_growCs7tN9tvpkfrg_12typst_layout:bb.a
  %.sink13 = phi i64 [ 16, %bb.e ], [ 16, %bb.f ], [ 8, %bb.a ]
  %.sink11 = phi i64 [ %i.b, %bb.e ], [ %i.b, %bb.f ], [ 0, %bb.a ]
  %.sink = phi i64 [ 1, %bb.e ], [ 0, %bb.f ], [ 1, %bb.a ]
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 %.sink13
  store i64 %.sink11, ptr %i.o, align 8
  store i64 %.sink, ptr %0, align 8
  ret void
}

; Function Attrs: noinline nounwind nonlazybind uwtable
define void @_RNvMs6_NtCs1xwejQucwHj_5alloc2rcINtB5_2RcINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEE9drop_slowCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #28 personality ptr @rust_eh_personality {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10 ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.val = load ptr, ptr %i.b, align 8             ; 2 uses
  %i.c = getelementptr i8, ptr %i.a, i64 24
  %.val1 = load i64, ptr %i.c, align 8, !noundef !10 ; 3 uses
  %i.d = icmp eq i64 %.val1, 0
  br i1 %i.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit, label %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i

_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i: ; preds = %bb.a
  %i.e = shl i64 %.val1, 4                        ; 2 uses
  %i.f = add i64 %i.e, 16                         ; 2 uses
  %i.g = add i64 %.val1, 17
  %i.h = add i64 %i.g, %i.f                       ; 4 uses
  %i.i = icmp uge i64 %i.h, %i.f
  %i.j = icmp ult i64 %i.h, 9223372036854775793
  tail call void @llvm.assume(i1 %i.i)
  tail call void @llvm.assume(i1 %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.k = icmp eq i64 %i.h, 0
  br i1 %i.k, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.b

bb.b:                                             ; preds = %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i
  %i.l = sub nuw nsw i64 -16, %i.e
  %i.m = getelementptr inbounds i8, ptr %.val, i64 %i.l
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.m, i64 noundef %i.h, i64 noundef range(i64 1, -9223372036854775807) 16) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b, %_RNvMs1_NtCskt5MLIAl8nl_9hashbrown3rawNtB5_11TableLayout20calculate_layout_for.exit.i.i.i.i.i.i, %bb.a
  %i.n = icmp eq ptr %i.a, inttoptr (i64 -1 to ptr)
  br i1 %i.n, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.c

bb.c:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8, !noundef !10
  %i.q = add i64 %i.p, -1                         ; 2 uses
  store i64 %i.q, ptr %i.o, align 8
  %i.r = icmp eq i64 %i.q, 0
  br i1 %i.r, label %bb.d, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.a, i64 noundef 48, i64 noundef 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc2rc4WeakINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherERNtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsaL1QbXo9JQH_3std11collections4hash3set7HashSetNtNtNtCsdaEETE4DqmE_13typst_library13introspection8location8LocationNtCsiUdj97bPFdy_10rustc_hash13FxBuildHasherEECs7tN9tvpkfrg_12typst_layout.exit, %bb.c, %bb.d
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh4_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(448) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(448) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [448 x i8], align 8               ; 4 uses
  %i.b = alloca [448 x i8], align 8               ; 4 uses
  %i.c = alloca [448 x i8], align 8               ; 4 uses
  %i.d = alloca [448 x i8], align 8               ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27292
  %i.e = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_RNvNCNvXs9_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtBb_9BlockElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK, i64 448) acquire, align 8, !noalias !27296
  %i.f = icmp eq i32 %i.e, 0
  br i1 %i.f, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout9container9BlockElemKh4_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.b, !prof !13

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtNtCsdaEETE4DqmE_13typst_library6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionIB1N_NtNtNtB10_9visualize6stroke6StrokeEEEE10initializeNCINvB2_11get_or_initFEBT_E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 @_RNvNCNvXs9_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtBb_9BlockElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK), !noalias !27296
  br label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout9container9BlockElemKh4_ECs7tN9tvpkfrg_12typst_layout.exit

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout9container9BlockElemKh4_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.a, %bb.b
  call fastcc void @_RNvXsd_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionIB12_NtNtNtB9_9visualize6stroke6StrokeEEENtNtB16_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(448) %i.a, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(448) @_RNvNCNvXs9_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtBb_9BlockElemINtNtNtNtBf_11foundations7content5field13SettableFieldKh4_E5FIELDs0_04LOCK) #59, !noalias !27292
  call fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionIB1U_NtNtNtBa_9visualize6stroke6StrokeEEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(448) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB9_9BlockElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 4, ptr noalias nofree noundef align 8 captures(address) dereferenceable(448) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27292
  %i.g = load i64, ptr %1, align 8, !range !1126, !noundef !10
  %.not = icmp eq i64 %i.g, -2
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout9container9BlockElemKh4_ECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  invoke fastcc void @_RNvXsd_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionIB12_NtNtNtB9_9visualize6stroke6StrokeEEENtNtB16_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(448) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(448) %1)
          to label %bb.e unwind label %bb.g

bb.d:                                             ; preds = %bb.e, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_6layout9container9BlockElemKh4_ECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %0, ptr noundef nonnull align 8 dereferenceable(448) %i.d, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.e:                                             ; preds = %bb.c
  call fastcc void @_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionIB12_NtNtNtB9_9visualize6stroke6StrokeEEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull sret([448 x i8]) align 8 captures(address) dereferenceable(448) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(448) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(448) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(448) %i.d, ptr noundef nonnull align 8 dereferenceable(448) %i.c, i64 448, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.d

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.h

bb.g:                                             ; preds = %bb.c
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library6layout5sides5SidesINtNtB4_6option6OptionIB1v_NtNtNtBI_9visualize6stroke6StrokeEEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(448) %i.d) #54
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh5_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) initializes((0, 128)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [128 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27299
  store i64 0, ptr %i.a, align 8, !alias.scope !27303, !noalias !27299
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 8, !alias.scope !27303, !noalias !27299
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.d, align 8, !alias.scope !27303, !noalias !27299
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 0, ptr %i.e, align 8, !alias.scope !27303, !noalias !27299
  call fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout7corners7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB9_9BlockElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 5, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27299
  %i.f = load i64, ptr %1, align 8, !range !289, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.f, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.g = trunc i64 %i.f to i1                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = load <2 x double>, ptr %i.h, align 8     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !range !285, !alias.scope !27308, !noalias !27313, !noundef !10
  %i.n = trunc nuw i64 %i.m to i1                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !range !285, !alias.scope !27316, !noalias !27319, !noundef !10
  %i.t = trunc nuw i64 %i.s to i1                 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load double, ptr %i.v, align 8           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load i64, ptr %i.x, align 8, !range !285, !alias.scope !27321, !noalias !27324, !noundef !10
  %i.z = trunc nuw i64 %i.y to i1                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.716.0.copyload = load i64, ptr %.sroa.716.0..sroa_idx, align 8 ; 2 uses
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.o, align 8    ; 2 uses
  %i.ae = load <2 x double>, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.1019.0.copyload = load double, ptr %.sroa.1019.0..sroa_idx, align 8
  %.sroa.1120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.1120.0.copyload = load i64, ptr %.sroa.1120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.af = load <2 x double>, ptr %i.u, align 8    ; 2 uses
  %i.ag = load <2 x double>, ptr %.sroa.1221.0..sroa_idx, align 8
  %.sroa.1423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.sroa.1423.0.copyload = load double, ptr %.sroa.1423.0..sroa_idx, align 8
  %.sroa.1524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.1524.0.copyload = load i64, ptr %.sroa.1524.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.ah = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ai = load <2 x double>, ptr %.sroa.1625.0..sroa_idx, align 8
  %.sroa.1827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %.sroa.1827.0.copyload = load double, ptr %.sroa.1827.0..sroa_idx, align 8
  %i.aj = trunc nuw i64 %.sroa.012.0.copyload to i1
  %or.cond.i.i.i.i = select i1 %i.g, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.615.0.copyload = load double, ptr %.sroa.615.0..sroa_idx, align 8
  %i.ak = load <2 x double>, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.0.0.copyload33.sroa.speculated.i.i = select i1 %i.g, i64 1, i64 %.sroa.012.0.copyload
  %i.al = insertelement <2 x i1> poison, i1 %i.g, i64 0
  %i.am = shufflevector <2 x i1> %i.al, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x double> %i.k, <2 x double> %i.ak
  %.sroa.7.0.copyload36.sroa.speculated.i.i = select i1 %i.g, double %i.j, double %.sroa.615.0.copyload
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.b, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.7.0.i.i = phi double [ %.sroa.7.0.copyload36.sroa.speculated.i.i, %bb.b ], [ %i.j, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i, %bb.b ], [ 1, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.ao = phi <2 x double> [ %i.an, %bb.b ], [ %i.k, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.ap = trunc nuw i64 %.sroa.716.0.copyload to i1
  %or.cond.i.i3.i.i = select i1 %i.n, i1 %i.ap, i1 false
  br i1 %or.cond.i.i3.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.052.0.copyload53.sroa.speculated.i.i = select i1 %i.n, i64 1, i64 %.sroa.716.0.copyload
  %i.aq = insertelement <2 x i1> poison, i1 %i.n, i64 0
  %i.ar = shufflevector <2 x i1> %i.aq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.ad, <2 x double> %i.ae
  %.sroa.758.0.copyload59.sroa.speculated.i.i = select i1 %i.n, double %i.q, double %.sroa.1019.0.copyload
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.c, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.758.0.i.i = phi double [ %.sroa.758.0.copyload59.sroa.speculated.i.i, %bb.c ], [ %i.q, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.052.0.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i, %bb.c ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.at = phi <2 x double> [ %i.as, %bb.c ], [ %i.ad, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.au = trunc nuw i64 %.sroa.1120.0.copyload to i1
  %or.cond.i.i13.i.i = select i1 %i.t, i1 %i.au, i1 false
  br i1 %or.cond.i.i13.i.i, label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, label %bb.d

bb.d:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.078.0.copyload79.sroa.speculated.i.i = select i1 %i.t, i64 1, i64 %.sroa.1120.0.copyload
  %i.av = insertelement <2 x i1> poison, i1 %i.t, i64 0
  %i.aw = shufflevector <2 x i1> %i.av, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x double> %i.af, <2 x double> %i.ag
  %.sroa.784.0.copyload85.sroa.speculated.i.i = select i1 %i.t, double %i.w, double %.sroa.1423.0.copyload
  br label %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i

_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i: ; preds = %bb.d, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.784.0.i.i = phi double [ %.sroa.784.0.copyload85.sroa.speculated.i.i, %bb.d ], [ %i.w, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.078.0.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i, %bb.d ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.ay = phi <2 x double> [ %i.ax, %bb.d ], [ %i.af, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.az = trunc nuw i64 %.sroa.1524.0.copyload to i1
  %or.cond.i.i23.i.i = select i1 %i.z, i1 %i.az, i1 false
  br i1 %or.cond.i.i23.i.i, label %_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i = select i1 %i.z, i64 1, i64 %.sroa.1524.0.copyload
  %i.ba = insertelement <2 x i1> poison, i1 %i.z, i64 0
  %i.bb = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x double> %i.ah, <2 x double> %i.ai
  %.sroa.7110.0.copyload111.sroa.speculated.i.i = select i1 %i.z, double %i.ac, double %.sroa.1827.0.copyload
  br label %_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, %bb.e
  %.sroa.7110.0.i.i = phi double [ %.sroa.7110.0.copyload111.sroa.speculated.i.i, %bb.e ], [ %i.ac, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %.sroa.0104.0.i.i = phi i64 [ %.sroa.0104.0.copyload105.sroa.speculated.i.i, %bb.e ], [ 1, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %i.bd = phi <2 x double> [ %i.bc, %bb.e ], [ %i.ah, %_RNCNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB7_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  store i64 %.sroa.0.0.i.i, ptr %i.b, align 8
  store <2 x double> %i.ao, ptr %.sroa.413.0..sroa_idx, align 8
  store double %.sroa.7.0.i.i, ptr %.sroa.615.0..sroa_idx, align 8
  store i64 %.sroa.052.0.i.i, ptr %.sroa.716.0..sroa_idx, align 8
  store <2 x double> %i.at, ptr %.sroa.817.0..sroa_idx, align 8
  store double %.sroa.758.0.i.i, ptr %.sroa.1019.0..sroa_idx, align 8
  store i64 %.sroa.078.0.i.i, ptr %.sroa.1120.0..sroa_idx, align 8
  store <2 x double> %i.ay, ptr %.sroa.1221.0..sroa_idx, align 8
  store double %.sroa.784.0.i.i, ptr %.sroa.1423.0..sroa_idx, align 8
  store i64 %.sroa.0104.0.i.i, ptr %.sroa.1524.0..sroa_idx, align 8
  store <2 x double> %i.bd, ptr %.sroa.1625.0..sroa_idx, align 8
  store double %.sroa.7110.0.i.i, ptr %.sroa.1827.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs6_NtNtCsdaEETE4DqmE_13typst_library6layout7cornersINtB5_7CornersINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh6_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) initializes((0, 128)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [128 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27326
  store i64 0, ptr %i.a, align 8, !alias.scope !27330, !noalias !27326
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 8, !alias.scope !27330, !noalias !27326
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.d, align 8, !alias.scope !27330, !noalias !27326
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 0, ptr %i.e, align 8, !alias.scope !27330, !noalias !27326
  call fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB9_9BlockElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27326
  %i.f = load i64, ptr %1, align 8, !range !289, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.f, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.g = trunc i64 %i.f to i1                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = load <2 x double>, ptr %i.h, align 8     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !range !285, !alias.scope !27335, !noalias !27340, !noundef !10
  %i.n = trunc nuw i64 %i.m to i1                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !range !285, !alias.scope !27343, !noalias !27346, !noundef !10
  %i.t = trunc nuw i64 %i.s to i1                 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load double, ptr %i.v, align 8           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load i64, ptr %i.x, align 8, !range !285, !alias.scope !27348, !noalias !27351, !noundef !10
  %i.z = trunc nuw i64 %i.y to i1                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.716.0.copyload = load i64, ptr %.sroa.716.0..sroa_idx, align 8 ; 2 uses
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.o, align 8    ; 2 uses
  %i.ae = load <2 x double>, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.1019.0.copyload = load double, ptr %.sroa.1019.0..sroa_idx, align 8
  %.sroa.1120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.1120.0.copyload = load i64, ptr %.sroa.1120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.af = load <2 x double>, ptr %i.u, align 8    ; 2 uses
  %i.ag = load <2 x double>, ptr %.sroa.1221.0..sroa_idx, align 8
  %.sroa.1423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.sroa.1423.0.copyload = load double, ptr %.sroa.1423.0..sroa_idx, align 8
  %.sroa.1524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.1524.0.copyload = load i64, ptr %.sroa.1524.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.ah = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ai = load <2 x double>, ptr %.sroa.1625.0..sroa_idx, align 8
  %.sroa.1827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %.sroa.1827.0.copyload = load double, ptr %.sroa.1827.0..sroa_idx, align 8
  %i.aj = trunc nuw i64 %.sroa.012.0.copyload to i1
  %or.cond.i.i.i.i = select i1 %i.g, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.615.0.copyload = load double, ptr %.sroa.615.0..sroa_idx, align 8
  %i.ak = load <2 x double>, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.0.0.copyload33.sroa.speculated.i.i = select i1 %i.g, i64 1, i64 %.sroa.012.0.copyload
  %i.al = insertelement <2 x i1> poison, i1 %i.g, i64 0
  %i.am = shufflevector <2 x i1> %i.al, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x double> %i.k, <2 x double> %i.ak
  %.sroa.7.0.copyload36.sroa.speculated.i.i = select i1 %i.g, double %i.j, double %.sroa.615.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.b, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.7.0.i.i = phi double [ %.sroa.7.0.copyload36.sroa.speculated.i.i, %bb.b ], [ %i.j, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i, %bb.b ], [ 1, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.ao = phi <2 x double> [ %i.an, %bb.b ], [ %i.k, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.ap = trunc nuw i64 %.sroa.716.0.copyload to i1
  %or.cond.i.i3.i.i = select i1 %i.n, i1 %i.ap, i1 false
  br i1 %or.cond.i.i3.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.052.0.copyload53.sroa.speculated.i.i = select i1 %i.n, i64 1, i64 %.sroa.716.0.copyload
  %i.aq = insertelement <2 x i1> poison, i1 %i.n, i64 0
  %i.ar = shufflevector <2 x i1> %i.aq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.ad, <2 x double> %i.ae
  %.sroa.758.0.copyload59.sroa.speculated.i.i = select i1 %i.n, double %i.q, double %.sroa.1019.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.c, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.758.0.i.i = phi double [ %.sroa.758.0.copyload59.sroa.speculated.i.i, %bb.c ], [ %i.q, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.052.0.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i, %bb.c ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.at = phi <2 x double> [ %i.as, %bb.c ], [ %i.ad, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.au = trunc nuw i64 %.sroa.1120.0.copyload to i1
  %or.cond.i.i13.i.i = select i1 %i.t, i1 %i.au, i1 false
  br i1 %or.cond.i.i13.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, label %bb.d

bb.d:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.078.0.copyload79.sroa.speculated.i.i = select i1 %i.t, i64 1, i64 %.sroa.1120.0.copyload
  %i.av = insertelement <2 x i1> poison, i1 %i.t, i64 0
  %i.aw = shufflevector <2 x i1> %i.av, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x double> %i.af, <2 x double> %i.ag
  %.sroa.784.0.copyload85.sroa.speculated.i.i = select i1 %i.t, double %i.w, double %.sroa.1423.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i: ; preds = %bb.d, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.784.0.i.i = phi double [ %.sroa.784.0.copyload85.sroa.speculated.i.i, %bb.d ], [ %i.w, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.078.0.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i, %bb.d ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.ay = phi <2 x double> [ %i.ax, %bb.d ], [ %i.af, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.az = trunc nuw i64 %.sroa.1524.0.copyload to i1
  %or.cond.i.i23.i.i = select i1 %i.z, i1 %i.az, i1 false
  br i1 %or.cond.i.i23.i.i, label %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i = select i1 %i.z, i64 1, i64 %.sroa.1524.0.copyload
  %i.ba = insertelement <2 x i1> poison, i1 %i.z, i64 0
  %i.bb = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x double> %i.ah, <2 x double> %i.ai
  %.sroa.7110.0.copyload111.sroa.speculated.i.i = select i1 %i.z, double %i.ac, double %.sroa.1827.0.copyload
  br label %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, %bb.e
  %.sroa.7110.0.i.i = phi double [ %.sroa.7110.0.copyload111.sroa.speculated.i.i, %bb.e ], [ %i.ac, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %.sroa.0104.0.i.i = phi i64 [ %.sroa.0104.0.copyload105.sroa.speculated.i.i, %bb.e ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %i.bd = phi <2 x double> [ %i.bc, %bb.e ], [ %i.ah, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  store i64 %.sroa.0.0.i.i, ptr %i.b, align 8
  store <2 x double> %i.ao, ptr %.sroa.413.0..sroa_idx, align 8
  store double %.sroa.7.0.i.i, ptr %.sroa.615.0..sroa_idx, align 8
  store i64 %.sroa.052.0.i.i, ptr %.sroa.716.0..sroa_idx, align 8
  store <2 x double> %i.at, ptr %.sroa.817.0..sroa_idx, align 8
  store double %.sroa.758.0.i.i, ptr %.sroa.1019.0..sroa_idx, align 8
  store i64 %.sroa.078.0.i.i, ptr %.sroa.1120.0..sroa_idx, align 8
  store <2 x double> %i.ay, ptr %.sroa.1221.0..sroa_idx, align 8
  store double %.sroa.784.0.i.i, ptr %.sroa.1423.0..sroa_idx, align 8
  store i64 %.sroa.0104.0.i.i, ptr %.sroa.1524.0..sroa_idx, align 8
  store <2 x double> %i.bd, ptr %.sroa.1625.0..sroa_idx, align 8
  store double %.sroa.7110.0.i.i, ptr %.sroa.1827.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs6_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content5fieldINtB5_8SettableNtNtNtBb_6layout9container9BlockElemKh7_E10get_clonedCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(128) initializes((0, 128)) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(128) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 7 uses
  %i.b = alloca [128 x i8], align 8               ; 17 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !27353
  store i64 0, ptr %i.a, align 8, !alias.scope !27357, !noalias !27353
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 0, ptr %i.c, align 8, !alias.scope !27357, !noalias !27353
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 0, ptr %i.d, align 8, !alias.scope !27357, !noalias !27353
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 96
  store i64 0, ptr %i.e, align 8, !alias.scope !27357, !noalias !27353
  call fastcc void @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_foldedINtNtNtBa_6layout5sides5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB1v_3rel3RelEEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(128) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB9_9BlockElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 7, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(128) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !27353
  %i.f = load i64, ptr %1, align 8, !range !289, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.f, 2
  br i1 %.not, label %bb.f, label %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i

_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.a
  %i.g = trunc i64 %i.f to i1                     ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = load double, ptr %i.i, align 8           ; 2 uses
  %i.k = load <2 x double>, ptr %i.h, align 8     ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.m = load i64, ptr %i.l, align 8, !range !285, !alias.scope !27362, !noalias !27367, !noundef !10
  %i.n = trunc nuw i64 %i.m to i1                 ; 4 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.q = load double, ptr %i.p, align 8           ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.s = load i64, ptr %i.r, align 8, !range !285, !alias.scope !27370, !noalias !27373, !noundef !10
  %i.t = trunc nuw i64 %i.s to i1                 ; 4 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.w = load double, ptr %i.v, align 8           ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.y = load i64, ptr %i.x, align 8, !range !285, !alias.scope !27375, !noalias !27378, !noundef !10
  %i.z = trunc nuw i64 %i.y to i1                 ; 4 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.ac = load double, ptr %i.ab, align 8         ; 2 uses
  %.sroa.012.0.copyload = load i64, ptr %i.b, align 8 ; 2 uses
  %.sroa.413.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sroa.615.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.716.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %.sroa.716.0.copyload = load i64, ptr %.sroa.716.0..sroa_idx, align 8 ; 2 uses
  %.sroa.817.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 40 ; 2 uses
  %i.ad = load <2 x double>, ptr %i.o, align 8    ; 2 uses
  %i.ae = load <2 x double>, ptr %.sroa.817.0..sroa_idx, align 8
  %.sroa.1019.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 56 ; 2 uses
  %.sroa.1019.0.copyload = load double, ptr %.sroa.1019.0..sroa_idx, align 8
  %.sroa.1120.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 64 ; 2 uses
  %.sroa.1120.0.copyload = load i64, ptr %.sroa.1120.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1221.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 72 ; 2 uses
  %i.af = load <2 x double>, ptr %i.u, align 8    ; 2 uses
  %i.ag = load <2 x double>, ptr %.sroa.1221.0..sroa_idx, align 8
  %.sroa.1423.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 88 ; 2 uses
  %.sroa.1423.0.copyload = load double, ptr %.sroa.1423.0..sroa_idx, align 8
  %.sroa.1524.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 96 ; 2 uses
  %.sroa.1524.0.copyload = load i64, ptr %.sroa.1524.0..sroa_idx, align 8 ; 2 uses
  %.sroa.1625.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 104 ; 2 uses
  %i.ah = load <2 x double>, ptr %i.aa, align 8   ; 2 uses
  %i.ai = load <2 x double>, ptr %.sroa.1625.0..sroa_idx, align 8
  %.sroa.1827.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.b, i64 120 ; 2 uses
  %.sroa.1827.0.copyload = load double, ptr %.sroa.1827.0..sroa_idx, align 8
  %i.aj = trunc nuw i64 %.sroa.012.0.copyload to i1
  %or.cond.i.i.i.i = select i1 %i.g, i1 %i.aj, i1 false
  br i1 %or.cond.i.i.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.b

bb.b:                                             ; preds = %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.615.0.copyload = load double, ptr %.sroa.615.0..sroa_idx, align 8
  %i.ak = load <2 x double>, ptr %.sroa.413.0..sroa_idx, align 8
  %.sroa.0.0.copyload33.sroa.speculated.i.i = select i1 %i.g, i64 1, i64 %.sroa.012.0.copyload
  %i.al = insertelement <2 x i1> poison, i1 %i.g, i64 0
  %i.am = shufflevector <2 x i1> %i.al, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.an = select <2 x i1> %i.am, <2 x double> %i.k, <2 x double> %i.ak
  %.sroa.7.0.copyload36.sroa.speculated.i.i = select i1 %i.g, double %i.j, double %.sroa.615.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.b, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i
  %.sroa.7.0.i.i = phi double [ %.sroa.7.0.copyload36.sroa.speculated.i.i, %bb.b ], [ %i.j, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %.sroa.0.0.i.i = phi i64 [ %.sroa.0.0.copyload33.sroa.speculated.i.i, %bb.b ], [ 1, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.ao = phi <2 x double> [ %i.an, %bb.b ], [ %i.k, %_RNvXs4_NtCs3oUPovFnLWP_4core6optionINtB5_6OptionNtNtNtCsdaEETE4DqmE_13typst_library6layout3rel3RelENtNtB7_5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout.exit.i ]
  %i.ap = trunc nuw i64 %.sroa.716.0.copyload to i1
  %or.cond.i.i3.i.i = select i1 %i.n, i1 %i.ap, i1 false
  br i1 %or.cond.i.i3.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i, label %bb.c

bb.c:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.052.0.copyload53.sroa.speculated.i.i = select i1 %i.n, i64 1, i64 %.sroa.716.0.copyload
  %i.aq = insertelement <2 x i1> poison, i1 %i.n, i64 0
  %i.ar = shufflevector <2 x i1> %i.aq, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.as = select <2 x i1> %i.ar, <2 x double> %i.ad, <2 x double> %i.ae
  %.sroa.758.0.copyload59.sroa.speculated.i.i = select i1 %i.n, double %i.q, double %.sroa.1019.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i: ; preds = %bb.c, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  %.sroa.758.0.i.i = phi double [ %.sroa.758.0.copyload59.sroa.speculated.i.i, %bb.c ], [ %i.q, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %.sroa.052.0.i.i = phi i64 [ %.sroa.052.0.copyload53.sroa.speculated.i.i, %bb.c ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.at = phi <2 x double> [ %i.as, %bb.c ], [ %i.ad, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i ]
  %i.au = trunc nuw i64 %.sroa.1120.0.copyload to i1
  %or.cond.i.i13.i.i = select i1 %i.t, i1 %i.au, i1 false
  br i1 %or.cond.i.i13.i.i, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, label %bb.d

bb.d:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.078.0.copyload79.sroa.speculated.i.i = select i1 %i.t, i64 1, i64 %.sroa.1120.0.copyload
  %i.av = insertelement <2 x i1> poison, i1 %i.t, i64 0
  %i.aw = shufflevector <2 x i1> %i.av, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.ax = select <2 x i1> %i.aw, <2 x double> %i.af, <2 x double> %i.ag
  %.sroa.784.0.copyload85.sroa.speculated.i.i = select i1 %i.t, double %i.w, double %.sroa.1423.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i: ; preds = %bb.d, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i
  %.sroa.784.0.i.i = phi double [ %.sroa.784.0.copyload85.sroa.speculated.i.i, %bb.d ], [ %i.w, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %.sroa.078.0.i.i = phi i64 [ %.sroa.078.0.copyload79.sroa.speculated.i.i, %bb.d ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.ay = phi <2 x double> [ %i.ax, %bb.d ], [ %i.af, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit12.i.i ]
  %i.az = trunc nuw i64 %.sroa.1524.0.copyload to i1
  %or.cond.i.i23.i.i = select i1 %i.z, i1 %i.az, i1 false
  br i1 %or.cond.i.i23.i.i, label %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, label %bb.e

bb.e:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i
  %.sroa.0104.0.copyload105.sroa.speculated.i.i = select i1 %i.z, i64 1, i64 %.sroa.1524.0.copyload
  %i.ba = insertelement <2 x i1> poison, i1 %i.z, i64 0
  %i.bb = shufflevector <2 x i1> %i.ba, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.bc = select <2 x i1> %i.bb, <2 x double> %i.ah, <2 x double> %i.ai
  %.sroa.7110.0.copyload111.sroa.speculated.i.i = select i1 %i.z, double %i.ac, double %.sroa.1827.0.copyload
  br label %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i, %bb.e
  %.sroa.7110.0.i.i = phi double [ %.sroa.7110.0.copyload111.sroa.speculated.i.i, %bb.e ], [ %i.ac, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %.sroa.0104.0.i.i = phi i64 [ %.sroa.0104.0.copyload105.sroa.speculated.i.i, %bb.e ], [ 1, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  %i.bd = phi <2 x double> [ %i.bc, %bb.e ], [ %i.ah, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB9_3rel3RelEENtNtNtBb_11foundations6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit22.i.i ]
  store i64 %.sroa.0.0.i.i, ptr %i.b, align 8
  store <2 x double> %i.ao, ptr %.sroa.413.0..sroa_idx, align 8
  store double %.sroa.7.0.i.i, ptr %.sroa.615.0..sroa_idx, align 8
  store i64 %.sroa.052.0.i.i, ptr %.sroa.716.0..sroa_idx, align 8
  store <2 x double> %i.at, ptr %.sroa.817.0..sroa_idx, align 8
  store double %.sroa.758.0.i.i, ptr %.sroa.1019.0..sroa_idx, align 8
  store i64 %.sroa.078.0.i.i, ptr %.sroa.1120.0..sroa_idx, align 8
  store <2 x double> %i.ay, ptr %.sroa.1221.0..sroa_idx, align 8
  store double %.sroa.784.0.i.i, ptr %.sroa.1423.0..sroa_idx, align 8
  store i64 %.sroa.0104.0.i.i, ptr %.sroa.1524.0..sroa_idx, align 8
  store <2 x double> %i.bd, ptr %.sroa.1625.0..sroa_idx, align 8
  store double %.sroa.7110.0.i.i, ptr %.sroa.1827.0..sroa_idx, align 8
  br label %bb.f

bb.f:                                             ; preds = %_RNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB5_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtB7_3rel3RelEENtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit, %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(128) %0, ptr noundef nonnull align 8 dereferenceable(128) %i.b, i64 128, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef range(i8 -1, 19) i8 @_RNvMs7_NtCs4vtCw9T9d1A_20unicode_segmentation4wordNtB5_11UWordBounds12get_next_cat(ptr nofree readonly captures(address, read_provenance) %.0.val, i64 %.8.val, i64 noundef %0) unnamed_addr #0 {
bb.a:
  %i.a = alloca [12 x i8], align 4                ; 4 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  %i.b = icmp eq i64 %0, 0
  br i1 %i.b, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %.not.i = icmp ult i64 %0, %.8.val
  br i1 %.not.i, label %bb.c, label %.split.i

.split.i:                                         ; preds = %bb.b
  %i.c = icmp eq i64 %0, %.8.val
  br i1 %i.c, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %.0.val, i64 %0
  %i.e = load i8, ptr %i.d, align 1, !alias.scope !27380, !noundef !10
  %i.f = icmp sgt i8 %i.e, -65
  br i1 %i.f, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit: ; preds = %bb.a, %.split.i, %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %.0.val, i64 %0 ; 4 uses
  %i.h = icmp samesign eq i64 %0, %.8.val
  br i1 %i.h, label %bb.f, label %bb.d

bb.d:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  %i.i = load i8, ptr %i.g, align 1, !noalias !27383, !noundef !10 ; 4 uses
  %i.j = icmp sgt i8 %i.i, -1
  br i1 %i.j, label %.thread, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i: ; preds = %bb.d
  %i.k = getelementptr inbounds nuw i8, ptr %i.g, i64 1
  %i.l = and i8 %i.i, 31
  %i.m = zext nneg i8 %i.l to i32                 ; 3 uses
  %i.n = add nuw nsw i64 %0, 1
  %i.o = icmp samesign ne i64 %i.n, %.8.val
  tail call void @llvm.assume(i1 %i.o)
  %i.p = load i8, ptr %i.k, align 1, !noalias !27383, !noundef !10
  %i.q = shl nuw nsw i32 %i.m, 6
  %i.r = and i8 %i.p, 63
  %i.s = zext nneg i8 %i.r to i32                 ; 2 uses
  %i.t = or disjoint i32 %i.q, %i.s
  %i.u = icmp samesign ugt i8 %i.i, -33
  br i1 %i.u, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i, label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.g, i64 2
  %i.w = add nuw nsw i64 %0, 2
  %i.x = icmp samesign ne i64 %i.w, %.8.val
  tail call void @llvm.assume(i1 %i.x)
  %i.y = load i8, ptr %i.v, align 1, !noalias !27383, !noundef !10
  %i.z = shl nuw nsw i32 %i.s, 6
  %i.aa = and i8 %i.y, 63
  %i.ab = zext nneg i8 %i.aa to i32
  %i.ac = or disjoint i32 %i.z, %i.ab             ; 2 uses
  %i.ad = shl nuw nsw i32 %i.m, 12
  %i.ae = or disjoint i32 %i.ac, %i.ad
  %i.af = icmp samesign ugt i8 %i.i, -17
  br i1 %i.af, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i, label %bb.e

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i
  %i.ag = getelementptr inbounds nuw i8, ptr %i.g, i64 3
  %i.ah = add nuw nsw i64 %0, 3
  %i.ai = icmp samesign ne i64 %i.ah, %.8.val
  tail call void @llvm.assume(i1 %i.ai)
  %i.aj = load i8, ptr %i.ag, align 1, !noalias !27383, !noundef !10
  %i.ak = shl nuw nsw i32 %i.m, 18
  %i.al = and i32 %i.ak, 1835008
  %i.am = shl nuw nsw i32 %i.ac, 6
  %i.an = and i8 %i.aj, 63
  %i.ao = zext nneg i8 %i.an to i32
  %i.ap = or disjoint i32 %i.am, %i.ao
  %i.aq = or disjoint i32 %i.ap, %i.al
  br label %bb.e

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit.thread: ; preds = %.split.i, %bb.c
  tail call void @_RNvNtCs3oUPovFnLWP_4core3str16slice_error_fail(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %.0.val, i64 noundef %.8.val, i64 noundef %0, i64 noundef %.8.val, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @398) #53
  unreachable

bb.e:                                             ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.ae, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i ], [ %i.aq, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit16.i ], [ %i.t, %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i ] ; 4 uses
  %i.ar = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.ar)
  %i.as = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.as, label %.thread, label %bb.g

bb.f:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @399) #53
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.at = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.at, label %.thread, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.au = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.au, i64 3, i64 4
  br label %.thread

.thread:                                          ; preds = %bb.d, %bb.g, %bb.h, %bb.e
  %.sroa.01.0 = phi i64 [ 2, %bb.g ], [ %., %bb.h ], [ 1, %bb.e ], [ 1, %bb.d ]
  %i.av = add i64 %.sroa.01.0, %0                 ; 8 uses
  %i.aw = icmp ult i64 %i.av, %.8.val
  br i1 %i.aw, label %bb.i, label %bb.k

bb.i:                                             ; preds = %.thread
  %i.ax = icmp eq i64 %i.av, 0
  br i1 %i.ax, label %._RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge, label %bb.j

._RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge: ; preds = %bb.i
  %.pre = load i8, ptr %.0.val, align 1, !noalias !27386
  br label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24

bb.j:                                             ; preds = %bb.i
  %i.ay = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.av
  %i.az = load i8, ptr %i.ay, align 1, !alias.scope !27389, !noundef !10 ; 2 uses
  %i.ba = icmp sgt i8 %i.az, -65
  br i1 %i.ba, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24, label %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24.thread

_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24: ; preds = %._RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge, %bb.j
  %i.bb = phi i8 [ %.pre, %._RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24_crit_edge ], [ %i.az, %bb.j ] ; 5 uses
  %i.bc = getelementptr inbounds nuw i8, ptr %.0.val, i64 %i.av ; 3 uses
  %i.bd = icmp sgt i8 %i.bb, -1
  br i1 %i.bd, label %bb.l, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i25

bb.k:                                             ; preds = %.thread, %bb.m
  %.sroa.0.0 = phi i8 [ %i.co, %bb.m ], [ -1, %.thread ]
  ret i8 %.sroa.0.0

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i25: ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24
  %i.be = getelementptr inbounds nuw i8, ptr %i.bc, i64 1
  %i.bf = and i8 %i.bb, 31
  %i.bg = zext nneg i8 %i.bf to i32               ; 3 uses
  %i.bh = add nuw nsw i64 %i.av, 1
  %i.bi = icmp samesign ne i64 %i.bh, %.8.val
  tail call void @llvm.assume(i1 %i.bi)
  %i.bj = load i8, ptr %i.be, align 1, !noalias !27386, !noundef !10
  %i.bk = shl nuw nsw i32 %i.bg, 6
  %i.bl = and i8 %i.bj, 63
  %i.bm = zext nneg i8 %i.bl to i32               ; 2 uses
  %i.bn = or disjoint i32 %i.bk, %i.bm
  %i.bo = icmp samesign ugt i8 %i.bb, -33
  br i1 %i.bo, label %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i28, label %bb.m

bb.l:                                             ; preds = %_RNvXs9_NtNtCs3oUPovFnLWP_4core3str6traitsINtNtNtB9_3ops5range9RangeFromjEINtNtNtB9_5slice5index10SliceIndexeE3get.exit24
  %i.bp = zext nneg i8 %i.bb to i32
  br label %bb.m

_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit14.i28: ; preds = %_RNvXs2J_NtNtCs3oUPovFnLWP_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7tN9tvpkfrg_12typst_layout.exit12.i25
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bc, i64 2
  %i.br = add nuw nsw i64 %i.av, 2
  %i.bs = icmp samesign ne i64 %i.br, %.8.val
  tail call void @llvm.assume(i1 %i.bs)
  %i.bt = load i8, ptr %i.bq, align 1, !noalias !27386, !noundef !10
  %i.bu = shl nuw nsw i32 %i.bm, 6
  %i.bv = and i8 %i.bt, 63
  %i.bw = zext nneg i8 %i.bv to i32
  %i.bx = or disjoint i32 %i.bu, %i.bw            ; 2 uses
  %i.by = shl nuw nsw i32 %i.bg, 12
end_hunk_2
begin_hunk_3_@_RNvMsB_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE8make_mutCs7tN9tvpkfrg_12typst_layout:bb.a
.body.thread.i:                                   ; preds = %.body.thread9.i, %bb.bo
  %eh.lpad-body8.i = phi { ptr, i32 } [ %lpad.thr_comm.i, %.body.thread9.i ], [ %eh.lpad-body.i.i.i.i.i.i, %bb.bo ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2r_5frame9FrameItemEEENtNtBG_5alloc6GlobalEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(32) %i.i) #54
          to label %common.resume unwind label %bb.bp

bb.bp:                                            ; preds = %.body.thread.i
  %i.fw = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE17clone_from_ref_inCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.h, %bb.bm, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i
  %i.fx = phi ptr [ %i.ag, %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.thread.i.i.i.i.i.i ], [ %i.ak, %bb.bm ], [ %i.ak, %bb.h ]
  %i.fy = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload.i, i64 16
  store i64 %.val1.i.i.i.i, ptr %i.fx, align 8, !noalias !27402
  %i.fz = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.fz, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !27402
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.h, ptr noundef nonnull align 16 dereferenceable(16) %i.g, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !27396
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.fy, ptr noundef nonnull align 16 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.ga = atomicrmw sub ptr %i.l, i64 1 release, align 8, !noalias !27503
  %i.gb = icmp eq i64 %i.ga, 1
  br i1 %i.gb, label %bb.bq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit

bb.bq:                                            ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE17clone_from_ref_inCs7tN9tvpkfrg_12typst_layout.exit
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %0) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ca

bb.br:                                            ; preds = %bb.b
  store atomic i64 1, ptr %i.l release, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2f_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit11

bb.bs:                                            ; preds = %bb.b
  %i.gc = invoke { i64, i64 } @_RNvNtCs1xwejQucwHj_5alloc4sync32arcinner_layout_for_value_layout(i64 noundef 16, i64 noundef 48)
          to label %.noexc8 unwind label %bb.bz   ; 2 uses

.noexc8:                                          ; preds = %bb.bs
  %i.gd = extractvalue { i64, i64 } %i.gc, 0      ; 3 uses
  %i.ge = extractvalue { i64, i64 } %i.gc, 1      ; 3 uses
  %i.gf = icmp eq i64 %i.ge, 0
  br i1 %i.gf, label %bb.bt, label %bb.bu

bb.bt:                                            ; preds = %.noexc8
  %i.gg = inttoptr i64 %i.gd to ptr
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB21_5frame9FrameItemEEENtNtBa_5alloc6GlobalE3new0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.bu:                                            ; preds = %.noexc8
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !27508
  %i.gh = tail call noundef ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.ge, i64 noundef range(i64 1, -9223372036854775807) %i.gd) #56, !noalias !27508
  br label %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB21_5frame9FrameItemEEENtNtBa_5alloc6GlobalE3new0Cs7tN9tvpkfrg_12typst_layout.exit.i.i

_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB21_5frame9FrameItemEEENtNtBa_5alloc6GlobalE3new0Cs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.bu, %bb.bt
  %.sroa.0.0.i.i.i.i.i = phi ptr [ %i.gg, %bb.bt ], [ %i.gh, %bb.bu ] ; 5 uses
  %i.gi = icmp eq ptr %.sroa.0.0.i.i.i.i.i, null
  br i1 %i.gi, label %bb.bv, label %bb.bw, !prof !33

bb.bv:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB21_5frame9FrameItemEEENtNtBa_5alloc6GlobalE3new0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  invoke void @_RNvNtCs1xwejQucwHj_5alloc5alloc18handle_alloc_error(i64 noundef %i.gd, i64 noundef %i.ge) #57
          to label %.noexc9 unwind label %bb.bz

.noexc9:                                          ; preds = %bb.bv
  unreachable

bb.bw:                                            ; preds = %_RNCNvMs1m_NtCs1xwejQucwHj_5alloc4syncINtB8_15UniqueArcUninitINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBa_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB21_5frame9FrameItemEEENtNtBa_5alloc6GlobalE3new0Cs7tN9tvpkfrg_12typst_layout.exit.i.i
  store i64 1, ptr %.sroa.0.0.i.i.i.i.i, align 16, !noalias !27508
  %i.gj = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 8
  store i64 1, ptr %i.gj, align 8, !noalias !27508
  %i.gk = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.gl = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i, i64 16
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.gl, ptr noundef nonnull align 8 dereferenceable(48) %i.gk, i64 48, i1 false)
  store ptr %.sroa.0.0.i.i.i.i.i, ptr %0, align 8
  %i.gm = icmp eq ptr %i.l, inttoptr (i64 -1 to ptr)
  br i1 %i.gm, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2f_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit11, label %bb.bx

bb.bx:                                            ; preds = %bb.bw
  %i.gn = atomicrmw sub ptr %i.m, i64 1 release, align 8
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.by, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2f_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit11

bb.by:                                            ; preds = %bb.bx
  fence acquire
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %i.l, i64 noundef 64, i64 noundef 16) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2f_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit11

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2f_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit11: ; preds = %bb.bw, %bb.bx, %bb.by, %bb.br, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit
  %i.gp = load ptr, ptr %0, align 8, !nonnull !10, !noundef !10
  %i.gq = getelementptr inbounds nuw i8, ptr %i.gp, i64 16
  ret ptr %i.gq

bb.bz:                                            ; preds = %bb.bv, %bb.bs
  %i.gr = landingpad { ptr, i32 }
          cleanup
  store atomic i64 1, ptr %i.l release, align 8, !noalias !27511
  br label %common.resume

bb.ca:                                            ; preds = %bb.bq
  %i.gs = landingpad { ptr, i32 }
          cleanup
  store ptr %.sroa.3.0.copyload.i, ptr %0, align 8
  br label %common.resume

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2e_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNvMsk_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE17clone_from_ref_inCs7tN9tvpkfrg_12typst_layout.exit, %bb.bq
  store ptr %.sroa.3.0.copyload.i, ptr %0, align 8
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc4sync4WeakINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtBG_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB2f_5frame9FrameItemEEEEECs7tN9tvpkfrg_12typst_layout.exit11
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBO_5model8footnote12FootnoteElemEE8push_mutCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 3 uses
  %i.c = load i64, ptr %0, align 8, !range !69, !noundef !10
  %i.d = icmp eq i64 %i.b, %i.c
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBV_5model8footnote12FootnoteElemEE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %0)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !10, !noundef !10
  %i.g = getelementptr inbounds nuw [24 x i8], ptr %i.f, i64 %i.b
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.h = add i64 %i.b, 1
  store i64 %i.h, ptr %i.a, align 8
  ret void

bb.d:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtBK_5model8footnote12FootnoteElemEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.d
  resume { ptr, i32 } %i.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs7tN9tvpkfrg_12typst_layout4flowNtB4_4Work7advance(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(168) %0) unnamed_addr #1 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !noundef !10 ; 2 uses
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.c, label %bb.b, !prof !33

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !10, !align !151, !noundef !10
  %i.f = add i64 %i.b, -1
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store ptr %i.g, ptr %i.d, align 8, !captures !1091
  store i64 %i.f, ptr %i.a, align 8
  ret void

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtNtCs3oUPovFnLWP_4core5slice5index16slice_index_fail(i64 noundef 1, i64 noundef 0, i64 noundef 0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @404) #53
  unreachable
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvMs_NtCs7tN9tvpkfrg_12typst_layout5stackNtB4_13StackLayouter13finish_region(ptr noalias nofree noundef nonnull align 16 dereferenceable(256) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [48 x i8], align 8                ; 5 uses
  %i.f = alloca [48 x i8], align 8                ; 8 uses
  %i.g = alloca [40 x i8], align 8                ; 10 uses
  %i.h = alloca [48 x i8], align 8                ; 6 uses
  %i.i = alloca [16 x i8], align 8                ; 7 uses
  %i.j = alloca [16 x i8], align 8                ; 5 uses
  %i.k = alloca [72 x i8], align 8                ; 11 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.m = load i8, ptr %i.l, align 8, !range !299, !noundef !10
  %i.n = trunc nuw i8 %i.m to i1
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 249
  %i.p = load i8, ptr %i.o, align 1, !range !299, !noundef !10
  %i.q = trunc nuw i8 %i.p to i1
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 128 ; 2 uses
  %i.s = load double, ptr %i.r, align 16, !noundef !10 ; 5 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 136 ; 2 uses
  %i.u = load double, ptr %i.t, align 8, !noundef !10 ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.w = load double, ptr %i.v, align 16, !noundef !10 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 3 uses
  %i.y = load double, ptr %i.x, align 8, !noundef !10 ; 4 uses
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 250 ; 2 uses
  %i.aa = load i8, ptr %i.z, align 2, !range !299, !noundef !10
  %i.ab = trunc nuw i8 %i.aa to i1                ; 4 uses
  %. = select i1 %i.ab, double %i.y, double %i.w
  %.143 = select i1 %i.ab, double %i.w, double %i.y
  %.19.i = select i1 %i.q, double %i.u, double %. ; 2 uses
  %..i = select i1 %i.n, double %i.s, double %.143 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store double %..i, ptr %i.d, align 8
  store double %i.s, ptr %i.c, align 8
  %i.ac = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
  %i.ad = icmp slt i8 %i.ac, 0
  %..i.i = select i1 %i.ad, double %i.s, double %..i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store double %.19.i, ptr %i.b, align 8
  store double %i.u, ptr %i.a, align 8
  %i.ae = call noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  %i.af = icmp slt i8 %i.ae, 0
  %..i2.i = select i1 %i.af, double %i.u, double %.19.i ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.sroa.speculated.i = select i1 %i.ab, double %i.u, double %i.s ; 3 uses
  %i.ag = fneg double %i.y
  %i.ah = fcmp uno double %i.y, 0.000000e+00
  %spec.store.select = select i1 %i.ah, double 0.000000e+00, double %i.ag
  %i.ai = fadd double %.sroa.speculated.i, %spec.store.select ; 2 uses
  %.inv = fcmp ord double %i.ai, 0.000000e+00
  %spec.store.select1 = select i1 %.inv, double %i.ai, double 0.000000e+00
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 3 uses
  %i.ak = load double, ptr %i.aj, align 16, !noundef !10
  %i.al = fcmp ogt double %i.ak, 0.000000e+00
  %i.am = call double @llvm.fabs.f64(double %.sroa.speculated.i)
  %i.an = fcmp one double %i.am, +inf
  %or.cond = and i1 %i.al, %i.an
  br i1 %or.cond, label %bb.b, label %.cont

.cont:                                            ; preds = %.else, %bb.b, %bb.a
  %.sroa.0.0171 = phi double [ %..i.i, %bb.a ], [ %i.s, %.else ], [ %..i.i, %bb.b ] ; 4 uses
  %.sroa.9.0 = phi double [ %..i2.i, %bb.a ], [ %..i2.i, %.else ], [ %i.u, %bb.b ] ; 4 uses
  %i.ao = call double @llvm.fabs.f64(double %.sroa.0.0171)
  %i.ap = fcmp one double %i.ao, +inf
  %i.aq = call double @llvm.fabs.f64(double %.sroa.9.0)
  %i.ar = fcmp one double %i.aq, +inf
  %or.cond4 = and i1 %i.ap, %i.ar
  br i1 %or.cond4, label %switch.lookup, label %bb.c

bb.b:                                             ; preds = %bb.a
  store double %.sroa.speculated.i, ptr %i.x, align 8
  br i1 %i.ab, label %.cont, label %.else

.else:                                            ; preds = %bb.b
  br label %.cont

bb.c:                                             ; preds = %.cont
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.at = load i64, ptr %i.as, align 16, !range !290, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(15) %i.i, i8 0, i64 15, i1 false)
  %.sroa.457.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 15
  store i8 -128, ptr %.sroa.457.0..sroa_idx, align 1
  invoke void @_RNvMNtCsakL8LGkl72C_4ecow6stringNtB2_9EcoString8push_str(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @407, i64 noundef 25)
          to label %bb.e unwind label %bb.d

switch.lookup:                                    ; preds = %.cont
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.h, double noundef %.sroa.0.0171, double noundef %.sroa.9.0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @409)
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 251 ; 2 uses
  %i.av = load i8, ptr %i.au, align 1, !range !10973, !noundef !10
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.ay = load i64, ptr %i.ax, align 16, !alias.scope !27516, !noalias !27519, !noundef !10 ; 4 uses
  %i.az = icmp ult i64 %i.ay, 164703072086692426
  call void @llvm.assume(i1 %i.az)
  store i64 0, ptr %i.ax, align 16, !alias.scope !27516, !noalias !27519
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.bb = load ptr, ptr %i.ba, align 8, !alias.scope !27516, !noalias !27519, !nonnull !10, !noundef !10 ; 3 uses
  %.idx = mul nuw nsw i64 %i.ay, 56
  %i.bc = getelementptr inbounds nuw i8, ptr %i.bb, i64 %.idx ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  %.sroa.2173.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.bc, ptr %.sroa.2173.0..sroa_idx, align 8
  %.sroa.3174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %i.aw, ptr %.sroa.3174.0..sroa_idx, align 8
  %.sroa.4175.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store i64 %i.ay, ptr %.sroa.4175.0..sroa_idx, align 8
  %.sroa.5176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %.sroa.5176.0..sroa_idx, align 8
  %i.bd = icmp eq i64 %i.ay, 0
  br i1 %i.bd, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.c
  %i.be = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.i) #54
          to label %common.resume unwind label %bb.i

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.j, ptr noundef nonnull align 8 dereferenceable(16) %i.i, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %i.bf = invoke { i64, i64 } @_RNvXs0_NtCs5PEMdK7bMAG_12typst_syntax4spanNtB5_8DiagSpanINtNtCs3oUPovFnLWP_4core7convert4FromNtB5_4SpanE4from(i64 noundef range(i64 1, 0) %i.at)
          to label %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.g, !noalias !27521 ; 2 uses

bb.f:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !27521
  unreachable

common.resume:                                    ; preds = %bb.d, %bb.al, %bb.am, %bb.ap, %.thread, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.bh, %bb.g ], [ %i.dt, %bb.am ], [ %i.be, %bb.d ], [ %i.dt, %bb.al ], [ %.pn140180, %bb.ap ], [ %.pn140180, %.thread ]
  resume { ptr, i32 } %common.resume.op

bb.g:                                             ; preds = %bb.e
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(16) %i.j) #54
          to label %common.resume unwind label %bb.f, !noalias !27525

_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.e
  %i.bi = extractvalue { i64, i64 } %i.bf, 1
  %i.bj = extractvalue { i64, i64 } %i.bf, 0
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7170.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %i.j, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  store i64 %i.bj, ptr %i.k, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %i.bi, ptr %.sroa.2.0..sroa_idx, align 8
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.3.0..sroa_idx, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 40
  store i64 0, ptr %.sroa.6169.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i8 0, ptr %.sroa.8.0..sroa_idx, align 8
  %i.bk = call fastcc { ptr, i64 } @_RNvXsr_NtCsakL8LGkl72C_4ecow3vecINtB5_6EcoVecNtNtCsdaEETE4DqmE_13typst_library4diag16SourceDiagnosticEINtNtCs3oUPovFnLWP_4core7convert4FromABH_j1_E4fromCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(72) %i.k) ; 2 uses
  %i.bl = extractvalue { ptr, i64 } %i.bk, 0
  %i.bm = extractvalue { ptr, i64 } %i.bk, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.h

bb.h:                                             ; preds = %bb.ao, %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.3.0 = phi i64 [ undef, %bb.ao ], [ %i.bm, %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout.exit ]
  %.sroa.0.0 = phi ptr [ null, %bb.ao ], [ %i.bl, %_RINvMs1_NtCsdaEETE4DqmE_13typst_library4diagNtB6_16SourceDiagnostic5errorNtNtCs5PEMdK7bMAG_12typst_syntax4span4SpanNtNtCsakL8LGkl72C_4ecow6string9EcoStringECs7tN9tvpkfrg_12typst_layout.exit ]
  %i.bn = insertvalue { ptr, i64 } poison, ptr %.sroa.0.0, 0
  %i.bo = insertvalue { ptr, i64 } %i.bn, i64 %.sroa.3.0, 1
  ret { ptr, i64 } %i.bo

bb.i:                                             ; preds = %bb.ap, %bb.p, %bb.d
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

default.unreachable.loopexit:                     ; preds = %bb.v, %bb.aa
  unreachable

default.unreachable207:                           ; preds = %bb.y, %bb.n
  unreachable

bb.j:                                             ; preds = %bb.k
  unreachable

.thread181:                                       ; preds = %._crit_edge
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %.thread

.lr.ph:                                           ; preds = %switch.lookup
  %i.br = shl nuw nsw i8 %i.av, 3
  %switch.shiftamt = zext nneg i8 %i.br to i32
  %switch.downshift = lshr i32 33554944, %switch.shiftamt
  %switch.masked = trunc i32 %switch.downshift to i8
  %.sroa.4.0..sroa_idx198 = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.6200.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.8.0..sroa_idx202 = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph, %bb.o
  %.sroa.034.1189 = phi i8 [ %switch.masked, %.lr.ph ], [ %.sroa.034.2, %bb.o ] ; 4 uses
  %.sroa.0123.0188 = phi double [ 0.000000e+00, %.lr.ph ], [ %.sroa.0123.1, %bb.o ] ; 7 uses
  %i.bs = phi ptr [ %i.bb, %.lr.ph ], [ %i.bt, %bb.o ] ; 8 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bs, i64 56 ; 3 uses
  %.sroa.070.0.copyload = load i64, ptr %i.bs, align 8 ; 3 uses
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 8
  %.sroa.471.0.copyload = load double, ptr %.sroa.471.0..sroa_idx, align 8 ; 3 uses
  %.sroa.572.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 16
  %.sroa.572.sroa.0.0.copyload = load i64, ptr %.sroa.572.0..sroa_idx, align 8
  %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 24
  %i.bu = load <2 x double>, ptr %.sroa.572.sroa.4.0..sroa.572.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.572.sroa.6.0..sroa.572.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 40
  %.sroa.572.sroa.6.0.copyload = load i64, ptr %.sroa.572.sroa.6.0..sroa.572.0..sroa_idx.sroa_idx, align 8
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 48
  %.sroa.673.0.copyload = load i8, ptr %.sroa.673.0..sroa_idx, align 8 ; 2 uses
  %.sroa.774.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bs, i64 49
  %.sroa.774.0.copyload = load i8, ptr %.sroa.774.0..sroa_idx, align 1 ; 2 uses
  %i.bv = add i64 %.sroa.070.0.copyload, -2
  %.inv130 = icmp ult i64 %.sroa.070.0.copyload, 2
  %i.bw = select i1 %.inv130, i64 2, i64 %i.bv
  switch i64 %i.bw, label %bb.j [
    i64 0, label %bb.l
    i64 1, label %bb.m
    i64 2, label %bb.n
  ]

._crit_edge:                                      ; preds = %bb.o, %switch.lookup
  %.lcssa = phi ptr [ %i.bb, %switch.lookup ], [ %i.bc, %bb.o ]
  store ptr %.lcssa, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs7tN9tvpkfrg_12typst_layout5stack9StackItemEEB1m_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g)
          to label %bb.af unwind label %.thread181

bb.l:                                             ; preds = %bb.k
  %i.bx = fadd double %.sroa.0123.0188, %.sroa.471.0.copyload ; 2 uses
  %.inv139 = fcmp ord double %i.bx, 0.000000e+00
  %spec.store.select5 = select i1 %.inv139, double %i.bx, double 0.000000e+00
  br label %bb.o

bb.m:                                             ; preds = %bb.k
  %i.by = load double, ptr %i.aj, align 16, !noundef !10
  %i.bz = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout2frNtB2_2Fr5share(double noundef %.sroa.471.0.copyload, double noundef %i.by, double noundef %spec.store.select1)
          to label %bb.r unwind label %bb.q

bb.n:                                             ; preds = %bb.k
  %i.ca = load i8, ptr %i.au, align 1, !range !10973, !noundef !10 ; 2 uses
  %i.cb = load i8, ptr %i.z, align 2, !range !299, !noundef !10
  %i.cc = trunc nuw i8 %i.cb to i1                ; 8 uses
  %.sroa.speculated.i144 = select i1 %i.cc, i8 %.sroa.774.0.copyload, i8 %.sroa.673.0.copyload ; 2 uses
  switch i8 %i.ca, label %default.unreachable207 [
    i8 0, label %bb.t
    i8 1, label %bb.u
    i8 2, label %bb.t
    i8 3, label %bb.u
  ]

bb.o:                                             ; preds = %bb.ae, %bb.r, %bb.l
  %.sroa.0123.1 = phi double [ %spec.store.select5, %bb.l ], [ %spec.store.select6, %bb.r ], [ %spec.store.select18, %bb.ae ]
  %.sroa.034.2 = phi i8 [ %.sroa.034.1189, %bb.l ], [ %.sroa.034.1189, %bb.r ], [ %.sroa.034.3, %bb.ae ]
  %i.cd = icmp eq ptr %i.bt, %i.bc
  br i1 %i.cd, label %._crit_edge, label %bb.k

bb.p:                                             ; preds = %bb.s, %bb.q
  %.pn = phi { ptr, i32 } [ %i.ce, %bb.q ], [ %i.cg, %bb.s ]
  store ptr %i.bt, ptr %i.g, align 8
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec5drain5DrainNtNtCs7tN9tvpkfrg_12typst_layout5stack9StackItemEEB1m_(ptr noalias nofree noundef align 8 dereferenceable(40) %i.g) #54
          to label %.thread unwind label %bb.i

bb.q:                                             ; preds = %bb.m
  %i.ce = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.r:                                             ; preds = %bb.m
  %i.cf = fadd double %.sroa.0123.0188, %i.bz     ; 2 uses
  %.inv138 = fcmp ord double %i.cf, 0.000000e+00
  %spec.store.select6 = select i1 %.inv138, double %i.cf, double 0.000000e+00
  br label %bb.o

bb.s:                                             ; preds = %bb.ad
  %i.cg = landingpad { ptr, i32 }
          cleanup
  br label %bb.p

bb.t:                                             ; preds = %bb.n, %bb.n
  %..i146 = call noundef range(i8 0, 3) i8 @llvm.umax.i8(i8 range(i8 0, 3) %.sroa.speculated.i144, i8 range(i8 0, 3) %.sroa.034.1189)
  br label %bb.v

bb.u:                                             ; preds = %bb.n, %bb.n
  %..i148 = call noundef range(i8 0, 3) i8 @llvm.umin.i8(i8 range(i8 0, 3) %.sroa.speculated.i144, i8 range(i8 0, 3) %.sroa.034.1189)
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.t
  %.sroa.034.3 = phi i8 [ %..i148, %bb.u ], [ %..i146, %bb.t ] ; 2 uses
  %.sroa.speculated.i147 = select i1 %i.cc, double %.sroa.9.0, double %.sroa.0.0171
  %i.ch = extractelement <2 x double> %i.bu, i64 0 ; 2 uses
  %i.ci = extractelement <2 x double> %i.bu, i64 1 ; 2 uses
  %.sroa.speculated.i149 = select i1 %i.cc, double %i.ci, double %i.ch ; 3 uses
  %i.cj = load double, ptr %i.x, align 8, !noundef !10 ; 3 uses
  %i.ck = fneg double %i.cj
  %i.cl = fcmp uno double %i.cj, 0.000000e+00
  %spec.store.select7 = select i1 %i.cl, double 0.000000e+00, double %i.ck
  %i.cm = fadd double %.sroa.speculated.i147, %spec.store.select7 ; 2 uses
  %.inv131 = fcmp ord double %i.cm, 0.000000e+00
  %spec.store.select8 = select i1 %.inv131, double %i.cm, double 0.000000e+00 ; 2 uses
  switch i8 %.sroa.034.3, label %default.unreachable.loopexit [
    i8 0, label %bb.w
    i8 1, label %bb.x
    i8 2, label %bb.y
  ]

bb.w:                                             ; preds = %bb.v
  br label %bb.y

bb.x:                                             ; preds = %bb.v
  %i.cn = fmul nnan double %spec.store.select8, 5.000000e-01
  br label %bb.y

bb.y:                                             ; preds = %bb.v, %bb.x, %bb.w
  %.sroa.085.0 = phi double [ 0.000000e+00, %bb.w ], [ %i.cn, %bb.x ], [ %spec.store.select8, %bb.v ]
  switch i8 %i.ca, label %default.unreachable207 [
    i8 0, label %bb.aa
    i8 1, label %bb.z
    i8 2, label %bb.aa
    i8 3, label %bb.z
  ]

bb.z:                                             ; preds = %bb.y, %bb.y
  %i.co = fneg double %.sroa.speculated.i149
  %i.cp = fcmp uno double %.sroa.speculated.i149, 0.000000e+00
  %spec.store.select10 = select i1 %i.cp, double 0.000000e+00, double %i.co
  %i.cq = fadd double %i.cj, %spec.store.select10 ; 2 uses
  %.inv132 = fcmp ord double %i.cq, 0.000000e+00
  %spec.store.select12 = select i1 %.inv132, double %i.cq, double 0.000000e+00
  %i.cr = fneg double %.sroa.0123.0188
  %i.cs = fcmp uno double %.sroa.0123.0188, 0.000000e+00
  %spec.store.select13 = select i1 %i.cs, double 0.000000e+00, double %i.cr
  %i.ct = fadd double %spec.store.select13, %spec.store.select12 ; 2 uses
  %.inv133 = fcmp ord double %i.ct, 0.000000e+00
  %spec.store.select14 = select i1 %.inv133, double %i.ct, double 0.000000e+00
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.y
  %.sroa.0101.0 = phi double [ %spec.store.select14, %bb.z ], [ %.sroa.0123.0188, %bb.y ], [ %.sroa.0123.0188, %bb.y ]
  %i.cu = fadd double %.sroa.085.0, %.sroa.0101.0 ; 2 uses
  %.inv134 = fcmp ord double %i.cu, 0.000000e+00
  %spec.store.select11 = select i1 %.inv134, double %i.cu, double 0.000000e+00 ; 2 uses
  %.sroa.speculated.i150 = select i1 %i.cc, i8 %.sroa.673.0.copyload, i8 %.sroa.774.0.copyload
  %.sroa.speculated.i151 = select i1 %i.cc, double %.sroa.0.0171, double %.sroa.9.0
  %.sroa.speculated.i152 = select i1 %i.cc, double %i.ch, double %i.ci ; 2 uses
  %i.cv = fneg double %.sroa.speculated.i152
  %i.cw = fcmp uno double %.sroa.speculated.i152, 0.000000e+00
  %spec.store.select15 = select i1 %i.cw, double 0.000000e+00, double %i.cv
  %i.cx = fadd double %.sroa.speculated.i151, %spec.store.select15 ; 2 uses
  %.inv135 = fcmp ord double %i.cx, 0.000000e+00
  %spec.store.select16 = select i1 %.inv135, double %i.cx, double 0.000000e+00 ; 2 uses
  switch i8 %.sroa.speculated.i150, label %default.unreachable.loopexit [
    i8 0, label %bb.ab
    i8 1, label %bb.ac
    i8 2, label %bb.ad
  ]

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ad

bb.ac:                                            ; preds = %bb.aa
  %i.cy = fmul nnan double %spec.store.select16, 5.000000e-01
  br label %bb.ad

bb.ad:                                            ; preds = %bb.aa, %bb.ac, %bb.ab
  %.sroa.042.0 = phi double [ 0.000000e+00, %bb.ab ], [ %i.cy, %bb.ac ], [ %spec.store.select16, %bb.aa ] ; 2 uses
  %.sroa.042.0.spec.store.select11 = select i1 %i.cc, double %.sroa.042.0, double %spec.store.select11
  %spec.store.select11..sroa.042.0 = select i1 %i.cc, double %spec.store.select11, double %.sroa.042.0
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i64 %.sroa.070.0.copyload, ptr %i.f, align 8
  store double %.sroa.471.0.copyload, ptr %.sroa.4.0..sroa_idx198, align 8
  store i64 %.sroa.572.sroa.0.0.copyload, ptr %.sroa.5.0..sroa_idx199, align 8
  store <2 x double> %i.bu, ptr %.sroa.6200.0..sroa_idx, align 8
  store i64 %.sroa.572.sroa.6.0.copyload, ptr %.sroa.8.0..sroa_idx202, align 8
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.h, double noundef %.sroa.042.0.spec.store.select11, double noundef %spec.store.select11..sroa.042.0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.f)
          to label %bb.ae unwind label %bb.s

bb.ae:                                            ; preds = %bb.ad
  %i.cz = fadd double %.sroa.0123.0188, %.sroa.speculated.i149 ; 2 uses
  %.inv136 = fcmp ord double %i.cz, 0.000000e+00
  %spec.store.select18 = select i1 %.inv136, double %i.cz, double 0.000000e+00
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.o

bb.af:                                            ; preds = %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.db = load i64, ptr %i.da, align 8, !noundef !10 ; 2 uses
  %.not = icmp eq i64 %i.db, 0
  br i1 %.not, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  %i.dc = load i64, ptr %0, align 16, !range !285, !noundef !10
  %i.dd = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.de = trunc nuw i64 %i.dc to i1
  br i1 %i.de, label %bb.ai, label %._crit_edge203

._crit_edge203:                                   ; preds = %bb.ag
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.pre = load double, ptr %.phi.trans.insert, align 8
  br label %bb.aj

bb.ah:                                            ; preds = %bb.af
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.dg = load ptr, ptr %i.df, align 16, !nonnull !10, !align !151, !noundef !10 ; 2 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.di = add i64 %i.db, -1
  store ptr %i.dh, ptr %i.df, align 16, !captures !1091
  store i64 %i.di, ptr %i.da, align 8
  br label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %.sroa.5121.0.in = phi ptr [ %i.dg, %bb.ah ], [ %i.dd, %bb.ag ]
  %.sroa.5121.0 = load double, ptr %.sroa.5121.0.in, align 8 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 40
  store double %.sroa.5121.0, ptr %i.dj, align 8
  %i.dk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store double %.sroa.5121.0, ptr %i.dk, align 16
  br label %bb.aj

bb.aj:                                            ; preds = %._crit_edge203, %bb.ai
  %i.dl = phi double [ %.pre, %._crit_edge203 ], [ %.sroa.5121.0, %bb.ai ]
  %i.dm = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.dn = load double, ptr %i.dm, align 16, !noundef !10
  store double %i.dn, ptr %i.r, align 16
  store double %i.dl, ptr %i.t, align 8
  store double 0.000000e+00, ptr %i.aj, align 16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %i.v, i8 0, i64 16, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.e, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !27526)
  call void @llvm.experimental.noalias.scope.decl(metadata !27529)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 200 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 8, !alias.scope !27526, !noalias !27529, !noundef !10 ; 3 uses
  %i.dr = load i64, ptr %i.do, align 8, !range !69, !alias.scope !27526, !noalias !27529, !noundef !10
  %i.ds = icmp eq i64 %i.dq, %i.dr
  br i1 %i.ds, label %bb.ak, label %bb.ao

bb.ak:                                            ; preds = %bb.aj
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameE8grow_oneCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.do)
          to label %bb.ao unwind label %bb.al, !noalias !27529

bb.al:                                            ; preds = %bb.ak
  %i.dt = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27531)
  %i.du = getelementptr inbounds nuw i8, ptr %i.e, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27534)
  call void @llvm.experimental.noalias.scope.decl(metadata !27537)
  %i.dv = load ptr, ptr %i.du, align 8, !alias.scope !27540, !noalias !27526, !nonnull !10, !noundef !10
  %i.dw = atomicrmw sub ptr %i.dv, i64 1 release, align 8, !noalias !27541
  %i.dx = icmp eq i64 %i.dw, 1
  br i1 %i.dx, label %bb.am, label %common.resume

bb.am:                                            ; preds = %bb.al
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.du) #58
          to label %common.resume unwind label %bb.an, !noalias !27526

bb.an:                                            ; preds = %bb.am
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !27526
  unreachable

bb.ao:                                            ; preds = %bb.ak, %bb.aj
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ea = load ptr, ptr %i.dz, align 16, !alias.scope !27526, !noalias !27529, !nonnull !10, !noundef !10
  %i.eb = getelementptr inbounds nuw [48 x i8], ptr %i.ea, i64 %i.dq
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.eb, ptr noundef nonnull align 8 dereferenceable(48) %i.e, i64 48, i1 false), !noalias !27526
  %i.ec = add i64 %i.dq, 1
  store i64 %i.ec, ptr %i.dp, align 8, !alias.scope !27526, !noalias !27529
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  br label %bb.h

.thread:                                          ; preds = %bb.p, %.thread181
  %.pn140180 = phi { ptr, i32 } [ %i.bq, %.thread181 ], [ %.pn, %bb.p ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27542)
  %i.ed = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !27545)
  call void @llvm.experimental.noalias.scope.decl(metadata !27548)
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !27551, !nonnull !10, !noundef !10
  %i.ef = atomicrmw sub ptr %i.ee, i64 1 release, align 8, !noalias !27551
  %i.eg = icmp eq i64 %i.ef, 1
  br i1 %i.eg, label %bb.ap, label %common.resume

bb.ap:                                            ; preds = %.thread
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ed) #58
          to label %common.resume unwind label %bb.i
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvMs_NtCs7tN9tvpkfrg_12typst_layout5stackNtB4_13StackLayouter14layout_spacing(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(256) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load i64, ptr %1, align 8, !range !285, !noundef !10
  %i.c = trunc nuw i64 %i.b to i1
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = load double, ptr %i.d, align 8, !noundef !10 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240 ; 2 uses
  %i.g = load double, ptr %i.f, align 16, !noundef !10
  %i.h = fadd double %i.e, %i.g                   ; 2 uses
  %.inv24 = fcmp ord double %i.h, 0.000000e+00
  %spec.store.select = select i1 %.inv24, double %i.h, double 0.000000e+00
  store double %spec.store.select, ptr %i.f, align 16
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !27552)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.k = load i64, ptr %i.j, align 16, !alias.scope !27552, !noalias !27555, !noundef !10 ; 3 uses
  %i.l = load i64, ptr %i.i, align 16, !range !69, !alias.scope !27552, !noalias !27555, !noundef !10
  %i.m = icmp eq i64 %i.k, %i.l
  br i1 %i.m, label %bb.c, label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs7tN9tvpkfrg_12typst_layout5stack9StackItemE8push_mutBJ_.exit

bb.c:                                             ; preds = %bb.b
  tail call void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtCs7tN9tvpkfrg_12typst_layout5stack9StackItemE8grow_oneBQ_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.i), !noalias !27555
  br label %_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs7tN9tvpkfrg_12typst_layout5stack9StackItemE8push_mutBJ_.exit

_RNvMsG_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCs7tN9tvpkfrg_12typst_layout5stack9StackItemE8push_mutBJ_.exit: ; preds = %bb.c, %bb.b
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !27552, !noalias !27555, !nonnull !10, !noundef !10
  %i.p = getelementptr inbounds nuw [56 x i8], ptr %i.o, i64 %i.k ; 2 uses
  store i64 3, ptr %i.p, align 8, !noalias !27552
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store double %i.e, ptr %.sroa.429.0..sroa_idx, align 8, !noalias !27552
  %i.q = add i64 %i.k, 1
  store i64 %i.q, ptr %i.j, align 16, !alias.scope !27552, !noalias !27555
  br label %bb.h

bb.d:                                             ; preds = %bb.a
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.s = load double, ptr %i.r, align 8, !noundef !10
  %i.t = load double, ptr %i.d, align 8, !noundef !10
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.v = load double, ptr %i.u, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 216
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.w, i64 24, i1 false)
  %i.x = call noundef double @_RNvXsb_NtNtCsdaEETE4DqmE_13typst_library6layout6lengthNtB5_6LengthNtNtNtB9_11foundations6styles7Resolve7resolve(double noundef %i.t, double noundef %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
end_hunk_3
begin_hunk_4_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6accent13layout_accent:bb.a

bb.k:                                             ; preds = %bb.j
  %i.ar = getelementptr inbounds nuw i8, ptr %i.u, i64 224
  %i.as = load ptr, ptr %i.ar, align 16, !alias.scope !44141, !noalias !44146, !nonnull !10, !noundef !10 ; 2 uses
  %i.at = atomicrmw add ptr %i.as, i64 1 monotonic, align 8, !noalias !44144
  %i.au = icmp slt i64 %i.at, 0
  br i1 %i.au, label %bb.m, label %bb.n

bb.l:                                             ; preds = %bb.j
  %.not.i = icmp eq i64 %.val196, 0
  br i1 %.not.i, label %bb.o, label %bb.p, !prof !33

bb.m:                                             ; preds = %bb.k
  call void @llvm.trap()
  unreachable

bb.n:                                             ; preds = %._crit_edge.i, %bb.k
  %i.av = phi ptr [ %i.as, %bb.k ], [ %storemerge.pre.i, %._crit_edge.i ] ; 5 uses
  store ptr %i.av, ptr %i.b, align 8, !noalias !44144
  %i.aw = call i64 @llvm.usub.sat.i64(i64 %i.af, i64 1)
  switch i64 %i.aw, label %bb.r [
    i64 0, label %bb.t
    i64 1, label %bb.s
  ]

bb.o:                                             ; preds = %bb.l
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc197 unwind label %.body.thread314

.noexc197:                                        ; preds = %bb.o
  unreachable

bb.p:                                             ; preds = %bb.l
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val195) ]
  %i.ax = getelementptr [8 x i8], ptr %.val195, i64 %.val196
  %i.ay = getelementptr i8, ptr %i.ax, i64 -8     ; 2 uses
  %i.az = load ptr, ptr %i.ay, align 8, !noalias !44144, !nonnull !10, !noundef !10
  %i.ba = atomicrmw add ptr %i.az, i64 1 monotonic, align 8, !noalias !44144
  %i.bb = icmp slt i64 %i.ba, 0
  br i1 %i.bb, label %bb.q, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.p
  %storemerge.pre.i = load ptr, ptr %i.ay, align 8, !noalias !44144
  br label %bb.n

bb.q:                                             ; preds = %bb.p
  call void @llvm.trap()
  unreachable

bb.r:                                             ; preds = %bb.n
  %i.bc = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.w unwind label %bb.u, !noalias !44141 ; 2 uses

bb.s:                                             ; preds = %bb.n
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.n
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.s ], [ %.sink.i.sroa.gep271, %bb.n ]
  %.sroa.4.0.i = load double, ptr %.sink.i.sroa.phi, align 8, !alias.scope !44141, !noalias !44146, !noundef !10
  br label %bb.y

bb.u:                                             ; preds = %bb.w, %bb.r
  %i.bd = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.be = atomicrmw sub ptr %i.av, i64 1 release, align 8, !noalias !44147
  %i.bf = icmp eq i64 %i.be, 1
  br i1 %i.bf, label %bb.v, label %.body.thread

bb.v:                                             ; preds = %bb.u
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #58
          to label %.body.thread unwind label %bb.x, !noalias !44144

bb.w:                                             ; preds = %bb.r
  %i.bg = extractvalue { double, double } %i.bc, 0
  %i.bh = extractvalue { double, double } %i.bc, 1
  %i.bi = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.bg, double noundef %i.bh, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.y unwind label %bb.u, !noalias !44141

bb.x:                                             ; preds = %bb.v
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44144
  unreachable

.noexc201:                                        ; preds = %bb.ac, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266
  br i1 %.sroa.068.2, label %.body.thread, label %bb.e

.body.thread314:                                  ; preds = %bb.at, %bb.o
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %.body.thread

.body:                                            ; preds = %bb.co
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.e

bb.y:                                             ; preds = %bb.w, %bb.t
  %.sroa.0.0.i = phi double [ %.sroa.4.0.i, %bb.t ], [ %i.bi, %bb.w ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !44144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  store ptr %i.av, ptr %i.s, align 8
  %i.bk = load i64, ptr %i.u, align 16, !range !4641, !alias.scope !44154, !noundef !10
  %i.bl = call i64 @llvm.usub.sat.i64(i64 %i.bk, i64 1)
  switch i64 %i.bl, label %default.unreachable [
    i64 0, label %bb.z
    i64 1, label %bb.aa
    i64 2, label %bb.ab
    i64 3, label %._crit_edge.i198
  ]

bb.z:                                             ; preds = %bb.y
  %i.bm = getelementptr inbounds nuw i8, ptr %i.u, i64 80
  %i.bn = load <2 x double>, ptr %i.bm, align 16, !alias.scope !44154
  br label %bb.ae

bb.aa:                                            ; preds = %bb.y
  %i.bo = getelementptr inbounds nuw i8, ptr %i.u, i64 88
  %i.bp = load <2 x double>, ptr %i.bo, align 8, !alias.scope !44154
  br label %bb.ae

default.unreachable:                              ; preds = %bb.bj, %bb.be, %bb.ba, %bb.au, %bb.ag, %bb.y
  unreachable

bb.ab:                                            ; preds = %bb.y
  %i.bq = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44154, !noundef !10
  %i.br = fmul double %i.bq, 5.000000e-01         ; 3 uses
  %.inv12.i = fcmp ord double %i.br, 0.000000e+00
  %spec.store.select13.i = select i1 %.inv12.i, double %i.br, double 0.000000e+00
  br label %._crit_edge.i198

._crit_edge.i198:                                 ; preds = %bb.y, %bb.ab
  %spec.store.select14.i = phi double [ %spec.store.select13.i, %bb.ab ], [ 0.000000e+00, %bb.y ]
  %.sroa.09.0.i = phi double [ %i.br, %bb.ab ], [ 0.000000e+00, %bb.y ] ; 2 uses
  %.inv10.i = fcmp ord double %.sroa.09.0.i, 0.000000e+00
  %spec.store.select1.i = select i1 %.inv10.i, double %.sroa.09.0.i, double 0.000000e+00
  %i.bs = insertelement <2 x double> poison, double %spec.store.select14.i, i64 0
  %i.bt = insertelement <2 x double> %i.bs, double %spec.store.select1.i, i64 1
  br label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266: ; preds = %.body259, %bb.cl, %bb.ay, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit, %bb.ct, %bb.cs, %bb.ad
  %.sroa.068.2 = phi i1 [ true, %bb.ad ], [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.sroa.068.4320, %bb.cs ], [ true, %bb.ay ], [ %.sroa.068.4320, %bb.ct ], [ false, %.body259 ], [ false, %bb.cl ]
  %.pn.pn.pn = phi { ptr, i32 } [ %i.bx, %bb.ad ], [ %lpad.thr_comm346, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit ], [ %.pn321, %bb.cs ], [ %i.eb, %bb.ay ], [ %.pn321, %bb.ct ], [ %lpad.thr_comm.split-lp347, %.body259 ], [ %i.kc, %bb.cl ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44157)
  call void @llvm.experimental.noalias.scope.decl(metadata !44160)
  call void @llvm.experimental.noalias.scope.decl(metadata !44163)
  %i.bu = load ptr, ptr %i.s, align 8, !alias.scope !44166, !nonnull !10, !noundef !10
  %i.bv = atomicrmw sub ptr %i.bu, i64 1 release, align 8, !noalias !44166
  %i.bw = icmp eq i64 %i.bv, 1
  br i1 %i.bw, label %bb.ac, label %.noexc201

bb.ac:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %.noexc201 unwind label %bb.cr

bb.ad:                                            ; preds = %bb.af, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit
  %i.bx = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

bb.ae:                                            ; preds = %._crit_edge.i198, %bb.aa, %bb.z
  %i.by = phi <2 x double> [ %i.bt, %._crit_edge.i198 ], [ %i.bn, %bb.z ], [ %i.bp, %bb.aa ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bz = getelementptr inbounds nuw i8, ptr %i.av, i64 184 ; 2 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.av, i64 192
  %i.cb = load atomic i32, ptr %i.ca acquire, align 4, !noalias !44167
  %i.cc = icmp eq i32 %i.cb, 0
  br i1 %i.cc, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.bz, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.s)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ad

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ae, %bb.af
  %i.cd = load ptr, ptr %i.bz, align 8, !nonnull !10, !noundef !10
  %i.ce = getelementptr inbounds nuw i8, ptr %i.cd, i64 32
  %i.cf = load double, ptr %i.ce, align 8, !noundef !10
  %i.cg = fmul double %.sroa.0.0.i, %i.cf         ; 2 uses
  %i.ch = call double @llvm.fabs.f64(double %i.cg)
  %i.ci = fcmp one double %i.ch, +inf
  %spec.store.select29 = select i1 %i.ci, double %i.cg, double 0.000000e+00
  store double %spec.store.select29, ptr %i.q, align 8
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 3 uses
  br i1 %i.ab, label %bb.ak, label %bb.ag

bb.ag:                                            ; preds = %bb.an, %bb.ao, %bb.ap, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %i.ck = load i64, ptr %i.u, align 16, !range !4641, !alias.scope !44170, !noundef !10
  %i.cl = call i64 @llvm.usub.sat.i64(i64 %i.ck, i64 1)
  switch i64 %i.cl, label %default.unreachable [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %bb.aj
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit
  ]

bb.ah:                                            ; preds = %bb.ag
  %i.cm = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %4 = load double, ptr %i.cm, align 16, !alias.scope !44170, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit

bb.ai:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %5 = load double, ptr %i.cn, align 16, !alias.scope !44170, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit

bb.aj:                                            ; preds = %bb.ag
  %6 = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44170, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit

bb.ak:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p)
  %i.co = load i64, ptr %i.u, align 16, !range !4641, !alias.scope !44173, !noundef !10 ; 2 uses
  %i.cp = call i64 @llvm.usub.sat.i64(i64 %i.co, i64 1)
  switch i64 %i.cp, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit [
    i64 0, label %bb.al
    i64 1, label %bb.am
  ]

bb.al:                                            ; preds = %bb.ak
  %i.cq = trunc nuw i64 %i.co to i1
  %spec.select.v.i = select i1 %i.cq, i64 8, i64 72
  br label %.sink.split.i

bb.am:                                            ; preds = %bb.ak
  %i.cr = load i64, ptr %.sroa.439.0..sroa_idx, align 8, !range !285, !alias.scope !44173, !noundef !10
  %i.cs = trunc nuw i64 %i.cr to i1
  %spec.select6.v.i = select i1 %i.cs, i64 16, i64 40
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.am, %bb.al
  %spec.select6.v.sink.i = phi i64 [ %spec.select6.v.i, %bb.am ], [ %spec.select.v.i, %bb.al ]
  %spec.select6.i = getelementptr inbounds nuw i8, ptr %i.u, i64 %spec.select6.v.sink.i
  %.sroa.0.2.i = load double, ptr %spec.select6.i, align 8, !alias.scope !44173
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit: ; preds = %.sink.split.i, %bb.ak
  %.sroa.0.1.i = phi double [ 0.000000e+00, %bb.ak ], [ %.sroa.0.2.i, %.sink.split.i ]
  store double %.sroa.0.1.i, ptr %i.p, align 8
  %i.ct = invoke noundef i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.p, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.q)
          to label %bb.an unwind label %bb.ad

bb.an:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit
  %i.cu = icmp sgt i8 %i.ct, 0
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p)
  br i1 %i.cu, label %bb.ao, label %bb.ag

bb.ao:                                            ; preds = %bb.an
  %i.cv = load i64, ptr %i.cj, align 16, !range !4641, !noundef !10
  %i.cw = icmp samesign ult i64 %i.cv, 2
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.cy = load i64, ptr %i.cx, align 16, !range !8934
  %i.cz = icmp eq i64 %i.cy, 14
  %or.cond = select i1 %i.cw, i1 %i.cz, i1 false
  br i1 %or.cond, label %bb.ap, label %bb.ag

bb.ap:                                            ; preds = %bb.ao
  %i.da = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.db = load ptr, ptr %i.da, align 8, !nonnull !10, !noundef !10
  %i.dc = getelementptr inbounds nuw i8, ptr %i.db, i64 257
  store i8 1, ptr %i.dc, align 1
  br label %bb.ag

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit: ; preds = %bb.aj, %bb.ai, %bb.ah, %bb.ag
  %.sroa.0.0.i203 = phi double [ %4, %bb.ah ], [ %5, %bb.ai ], [ %6, %bb.aj ], [ 0.000000e+00, %bb.ag ]
  call void @llvm.experimental.noalias.scope.decl(metadata !44176)
  %i.dd = load i64, ptr %i.cj, align 16, !range !4641, !alias.scope !44176, !noundef !10
  %i.de = icmp samesign ult i64 %i.dd, 2
  %i.df = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.dg = load i64, ptr %i.df, align 16, !range !8934, !alias.scope !44176
  %i.dh = icmp eq i64 %i.dg, 14
  %or.cond.i = select i1 %i.de, i1 %i.dh, i1 false
  br i1 %or.cond.i, label %bb.aq, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit

bb.aq:                                            ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit
  %i.di = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.dj = load ptr, ptr %i.di, align 8, !alias.scope !44176, !nonnull !10, !noundef !10 ; 5 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %.sroa.044.0.copyload.i = load i64, ptr %i.dk, align 8, !noalias !44176
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 72 ; 2 uses
  %.sroa.546.0.copyload.i = load i64, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !44176 ; 2 uses
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 80 ; 2 uses
  %.sroa.647.0.copyload.i = load double, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !44176
  %.not.i205 = icmp ne i64 %.sroa.044.0.copyload.i, 2 ; 2 uses
  %.not4.i = icmp eq i64 %.sroa.546.0.copyload.i, 0
  %or.cond60.i = select i1 %.not.i205, i1 %.not4.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond60.i, i64 1, i64 %.sroa.546.0.copyload.i
  %.sroa.6.0.i = select i1 %or.cond60.i, double %.sroa.0.0.i203, double %.sroa.647.0.copyload.i
  store i64 %spec.select, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !44176
  store double %.sroa.6.0.i, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !44176
  %.sroa.518.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 88 ; 2 uses
  %.sroa.518.0.copyload.i = load i64, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !44179 ; 2 uses
  %.sroa.619.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.dj, i64 96 ; 2 uses
  %.sroa.619.0.copyload.i = load double, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !44179
  %.not4.i208 = icmp eq i64 %.sroa.518.0.copyload.i, 0
  %or.cond21.i = select i1 %.not.i205, i1 %.not4.i208, i1 false ; 2 uses
  %.sroa.7.0.i = select i1 %or.cond21.i, double %.sroa.0.0.i, double %.sroa.619.0.copyload.i
  %.sroa.57.0.i = select i1 %or.cond21.i, i64 1, i64 %.sroa.518.0.copyload.i
  store i64 %.sroa.57.0.i, ptr %.sroa.518.0..sroa_idx.i, align 8, !noalias !44179
  store double %.sroa.7.0.i, ptr %.sroa.619.0..sroa_idx.i, align 8, !noalias !44179
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit: ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit, %bb.aq
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.o, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.cj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.ar unwind label %bb.ad

bb.ar:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem21set_stretch_font_size.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.dl = load i64, ptr %i.o, align 16, !range !4106, !noundef !10 ; 3 uses
  %i.dm = icmp eq i64 %i.dl, -1
  %i.dn = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.do = load ptr, ptr %i.dn, align 8            ; 7 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dq = load i64, ptr %i.dp, align 16           ; 7 uses
  br i1 %i.dm, label %bb.as, label %bb.au

bb.as:                                            ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.experimental.noalias.scope.decl(metadata !44182)
  call void @llvm.experimental.noalias.scope.decl(metadata !44185)
  call void @llvm.experimental.noalias.scope.decl(metadata !44188)
  %i.dr = load ptr, ptr %i.s, align 8, !alias.scope !44191, !nonnull !10, !noundef !10
  %i.ds = atomicrmw sub ptr %i.dr, i64 1 release, align 8, !noalias !44191
  %i.dt = icmp eq i64 %i.ds, 1
  br i1 %i.dt, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit210 unwind label %.body.thread314

bb.au:                                            ; preds = %bb.ar
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.679.0..sroa_idx, i64 56, i1 false)
  %.sroa.679.sroa.4.0..sroa.679.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  %i.du = load <2 x double>, ptr %.sroa.679.sroa.4.0..sroa.679.0..sroa_idx.sroa_idx, align 16 ; 3 uses
  %.sroa.679.sroa.6.0..sroa.679.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %.sroa.11, ptr noundef nonnull align 16 dereferenceable(208) %.sroa.679.sroa.6.0..sroa.679.0..sroa_idx.sroa_idx, i64 208, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  %i.dv = ptrtoint ptr %i.do to i64               ; 2 uses
  %i.dw = call i64 @llvm.usub.sat.i64(i64 %i.dl, i64 1)
  switch i64 %i.dw, label %default.unreachable [
    i64 0, label %bb.av
    i64 1, label %bb.aw
    i64 2, label %bb.ax
    i64 3, label %._crit_edge.i211
  ]

bb.av:                                            ; preds = %bb.au
  %i.dx = extractelement <2 x double> %i.du, i64 0
  br label %._crit_edge.i211

bb.aw:                                            ; preds = %bb.au
  %i.dy = extractelement <2 x double> %i.du, i64 1
  br label %._crit_edge.i211

bb.ax:                                            ; preds = %bb.au
  %i.dz = bitcast i64 %i.dv to double
  %i.ea = fmul double %i.dz, 5.000000e-01         ; 2 uses
  %.inv12.i218 = fcmp ord double %i.ea, 0.000000e+00
  %spec.store.select13.i219 = select i1 %.inv12.i218, double %i.ea, double 0.000000e+00
  br label %._crit_edge.i211

bb.ay:                                            ; preds = %._crit_edge.i211
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit266

._crit_edge.i211:                                 ; preds = %bb.au, %bb.ax, %bb.aw, %bb.av
  %.sroa.0.0.i217 = phi double [ %i.dy, %bb.aw ], [ %i.dx, %bb.av ], [ %spec.store.select13.i219, %bb.ax ], [ 0.000000e+00, %bb.au ] ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  store i64 %i.dl, ptr %i.m, align 16
  %.sroa.5.0..sroa_idx356 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store i64 %i.dv, ptr %.sroa.5.0..sroa_idx356, align 8
  %.sroa.7.0..sroa_idx357 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.dq, ptr %.sroa.7.0..sroa_idx357, align 16
  %.sroa.8.0..sroa_idx358 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8.0..sroa_idx358, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.8, i64 56, i1 false)
  %.sroa.9.0..sroa_idx359 = getelementptr inbounds nuw i8, ptr %i.m, i64 80
  store <2 x double> %i.du, ptr %.sroa.9.0..sroa_idx359, align 16
  %.sroa.11.0..sroa_idx361 = getelementptr inbounds nuw i8, ptr %i.m, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(208) %.sroa.11.0..sroa_idx361, ptr noundef nonnull align 16 dereferenceable(208) %.sroa.11, i64 208, i1 false)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.n, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.m)
          to label %bb.az unwind label %bb.ay

bb.az:                                            ; preds = %._crit_edge.i211
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  %i.ec = extractelement <2 x double> %i.by, i64 0
  %i.ed = extractelement <2 x double> %i.by, i64 1
  %. = select i1 %i.ab, double %i.ec, double %i.ed ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %0, i64 290
  %i.ef = load i8, ptr %i.ee, align 2, !range !299, !noundef !10
  %i.eg = trunc nuw i8 %i.ef to i1                ; 2 uses
  br i1 %i.eg, label %bb.be, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.eh = load i64, ptr %i.u, align 16, !range !4641, !alias.scope !44192, !noundef !10
  %i.ei = call i64 @llvm.usub.sat.i64(i64 %i.eh, i64 1)
  switch i64 %i.ei, label %default.unreachable [
    i64 0, label %bb.bb
    i64 1, label %bb.bc
    i64 2, label %bb.bd
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224
  ]

bb.bb:                                            ; preds = %bb.ba
  %i.ej = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ek = load double, ptr %i.ej, align 16, !alias.scope !44192, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224

bb.bc:                                            ; preds = %bb.ba
  %i.el = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.em = load double, ptr %i.el, align 16, !alias.scope !44192, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224

bb.bd:                                            ; preds = %bb.ba
  %i.en = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44192, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224

bb.be:                                            ; preds = %bb.az
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.eo = fneg double %.
  %i.ep = fcmp uno double %., 0.000000e+00
  %spec.store.select4 = select i1 %i.ep, double 0.000000e+00, double %i.eo ; 2 uses
  %i.eq = fadd double %spec.store.select4, %.sroa.0.0.i217 ; 2 uses
  %.inv170 = fcmp ord double %i.eq, 0.000000e+00
  %spec.store.select7 = select i1 %.inv170, double %i.eq, double 0.000000e+00 ; 5 uses
  store double %spec.store.select7, ptr %i.l, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %i.es = load double, ptr %i.er, align 8, !noundef !10
  %i.et = load i64, ptr %i.u, align 16, !range !4641, !alias.scope !44195, !noundef !10
  %i.eu = call i64 @llvm.usub.sat.i64(i64 %i.et, i64 1)
  switch i64 %i.eu, label %default.unreachable [
    i64 0, label %bb.bf
    i64 1, label %bb.bg
    i64 2, label %bb.bh
    i64 3, label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227
  ]

bb.bf:                                            ; preds = %bb.be
  %i.ev = getelementptr inbounds nuw i8, ptr %i.u, i64 64
  %i.ew = load double, ptr %i.ev, align 16, !alias.scope !44195, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

bb.bg:                                            ; preds = %bb.be
  %i.ex = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.ey = load double, ptr %i.ex, align 16, !alias.scope !44195, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

bb.bh:                                            ; preds = %bb.be
  %i.ez = load double, ptr %.sroa.439.0..sroa_idx, align 8, !alias.scope !44195, !noundef !10
  br label %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227

.thread:                                          ; preds = %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit230, %bb.bn, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment6ascent.exit243, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment12base_descent.exit, %bb.bv
  %i.fa = landingpad { ptr, i32 }
          cleanup
  br label %bb.cs

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224: ; preds = %bb.bd, %bb.bc, %bb.bb, %bb.ba
  %.sroa.0.0.i222 = phi double [ %i.ek, %bb.bb ], [ %i.em, %bb.bc ], [ %i.en, %bb.bd ], [ 0.000000e+00, %bb.ba ]
  %i.fb = fneg double %.sroa.0.0.i217
  %i.fc = fcmp uno double %.sroa.0.0.i217, 0.000000e+00
  %spec.store.select5 = select i1 %i.fc, double 0.000000e+00, double %i.fb
  %i.fd = fadd double %., %spec.store.select5     ; 2 uses
  %.inv = fcmp ord double %i.fd, 0.000000e+00
  %spec.store.select6 = select i1 %.inv, double %i.fd, double 0.000000e+00
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bq, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224
  %.sroa.056.0 = phi double [ %.sroa.056.1, %bb.bq ], [ %spec.store.select6, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  %.sroa.055.0 = phi double [ %spec.store.select15, %bb.bq ], [ %.sroa.0.0.i222, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  %.sroa.0163.0 = phi double [ %.sroa.0163.1, %bb.bq ], [ 0.000000e+00, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit224 ]
  br i1 %i.ab, label %bb.bu, label %bb.br

_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment5width.exit227: ; preds = %bb.bh, %bb.bg, %bb.bf, %bb.be
  %.sroa.0.0.i225 = phi double [ %i.ew, %bb.bf ], [ %i.ey, %bb.bg ], [ %i.ez, %bb.bh ], [ 0.000000e+00, %bb.be ]
  %i.fe = fcmp uno double %.sroa.0.0.i217, 0.000000e+00
  %i.ff = fneg double %.sroa.0.0.i217
  %spec.store.select8 = select i1 %i.fe, double 0.000000e+00, double %i.ff
  %i.fg = fadd double %spec.store.select8, %i.es  ; 2 uses
  %.inv171 = fcmp ord double %i.fg, 0.000000e+00
end_hunk_4
begin_hunk_5_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math6fenced13layout_fenced:bb.a
  br label %bb.ce

bb.x:                                             ; preds = %bb.v
  store i64 %i.ck, ptr %i.z, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 8 ; 2 uses
  store ptr %i.cn, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.z, i64 16
  store i64 %i.cp, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cq = icmp samesign ult i64 %i.ag, 2
  %i.cr = getelementptr inbounds nuw i8, ptr %0, i64 400
  %.sink = select i1 %i.cq, ptr %i.cr, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.x, ptr noundef nonnull align 8 dereferenceable(24) %.sink, i64 24, i1 false)
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 432
  %i.ct = load i8, ptr %i.cs, align 16, !range !299, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  store i8 %i.ct, ptr %i.q, align 1, !noalias !44486
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !44486
  %.idx.i = mul nuw nsw i64 %i.cp, 304
  %i.cu = getelementptr inbounds nuw i8, ptr %i.cn, i64 %.idx.i
  %i.cv = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.cu, ptr %i.cv, align 8, !noalias !44486
  %i.cw = getelementptr inbounds nuw i8, ptr %i.p, i64 16 ; 2 uses
  store ptr %i.q, ptr %i.cw, align 8, !noalias !44486
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  store ptr %1, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !44486
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  store ptr %i.x, ptr %.sroa.5.0..sroa_idx.i, align 8, !noalias !44486
  call void @llvm.experimental.noalias.scope.decl(metadata !44491)
  %.not.i107 = icmp eq i64 %i.cp, 0
  br i1 %.not.i107, label %bb.ac, label %bb.z

.loopexit240:                                     ; preds = %bb.ab, %.noexc109
  %lpad.loopexit242 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

.loopexit.split-lp241:                            ; preds = %bb.z
  %lpad.loopexit.split-lp243 = landingpad { ptr, i32 }
          cleanup
  br label %bb.y

bb.y:                                             ; preds = %.loopexit.split-lp241, %.loopexit240
  %lpad.phi244 = phi { ptr, i32 } [ %lpad.loopexit242, %.loopexit240 ], [ %lpad.loopexit.split-lp243, %.loopexit.split-lp241 ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.z) #54
          to label %.body158 unwind label %bb.ae

bb.z:                                             ; preds = %bb.x
  %i.cx = getelementptr inbounds nuw i8, ptr %i.cn, i64 304
  store ptr %i.cx, ptr %i.p, align 8, !alias.scope !44494, !noalias !44486
  %i.cy = invoke fastcc noundef double @_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math6fenced26relative_to_from_fragments0B7_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.cw, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.cn) #59
          to label %.noexc108 unwind label %.loopexit.split-lp241 ; 2 uses

.noexc108:                                        ; preds = %bb.z
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !44499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.o, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !noalias !44486
  call void @llvm.experimental.noalias.scope.decl(metadata !44500)
  %i.cz = load ptr, ptr %i.o, align 8, !alias.scope !44500, !noalias !44499, !nonnull !10, !noundef !10 ; 3 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !44500, !noalias !44499, !nonnull !10, !noundef !10 ; 2 uses
  %i.dc = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %i.dd = icmp eq ptr %i.cz, %i.db
  br i1 %i.dd, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENCNvNtB1r_6fenced26relative_to_from_fragments0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB3M_NtNtBc_3cmp3Ord3maxEB1t_.exit.i.i, label %bb.aa

bb.aa:                                            ; preds = %.noexc108
  %i.de = ptrtoint ptr %i.db to i64
  %i.df = ptrtoint ptr %i.cz to i64
  %i.dg = sub nuw i64 %i.de, %i.df
  %i.dh = udiv exact i64 %i.dg, 304
  br label %bb.ab

bb.ab:                                            ; preds = %.noexc110, %bb.aa
  %.sroa.04.0.i.i.i.i = phi i64 [ 0, %bb.aa ], [ %i.dm, %.noexc110 ] ; 2 uses
  %.sroa.02.0.i.i.i.i = phi double [ %i.cy, %bb.aa ], [ %..i.i.i.i.i.i.i, %.noexc110 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [304 x i8], ptr %i.cz, i64 %.sroa.04.0.i.i.i.i
  %i.dj = invoke fastcc noundef double @_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math6fenced26relative_to_from_fragments0B7_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(24) %i.dc, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(304) %i.di) #59
          to label %.noexc109 unwind label %.loopexit240 ; 2 uses

.noexc109:                                        ; preds = %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !44503
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !44503
  store double %.sroa.02.0.i.i.i.i, ptr %i.n, align 8, !noalias !44503
  store double %i.dj, ptr %i.m, align 8, !noalias !44503
  %i.dk = invoke noundef range(i8 -1, 2) i8 @_RNvXs5_NtCs6xpQEr8gLsQ_11typst_utils6scalarNtB5_6ScalarNtNtCs3oUPovFnLWP_4core3cmp3Ord3cmp(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.n)
          to label %.noexc110 unwind label %.loopexit240

.noexc110:                                        ; preds = %.noexc109
  %i.dl = icmp slt i8 %i.dk, 0
  %..i.i.i.i.i.i.i = select i1 %i.dl, double %.sroa.02.0.i.i.i.i, double %i.dj ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !44503
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !44503
  %i.dm = add nuw i64 %.sroa.04.0.i.i.i.i, 1      ; 2 uses
  %i.dn = icmp eq i64 %i.dm, %i.dh
  br i1 %i.dn, label %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENCNvNtB1r_6fenced26relative_to_from_fragments0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB3M_NtNtBc_3cmp3Ord3maxEB1t_.exit.i.i, label %bb.ab

_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENCNvNtB1r_6fenced26relative_to_from_fragments0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB3M_NtNtBc_3cmp3Ord3maxEB1t_.exit.i.i: ; preds = %.noexc110, %.noexc108
  %.sroa.0.0.i.i.i.i = phi double [ %i.cy, %.noexc108 ], [ %..i.i.i.i.i.i.i, %.noexc110 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !44499
  br label %bb.ac

bb.ac:                                            ; preds = %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENCNvNtB1r_6fenced26relative_to_from_fragments0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB3M_NtNtBc_3cmp3Ord3maxEB1t_.exit.i.i, %bb.x
  %.sroa.0.0.i = phi double [ %.sroa.0.0.i.i.i.i, %_RINvXs0_NtNtNtCs3oUPovFnLWP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENCNvNtB1r_6fenced26relative_to_from_fragments0ENtNtNtBa_6traits8iterator8Iterator4foldNtNtNtCsdaEETE4DqmE_13typst_library6layout3abs3AbsNvYB3M_NtNtBc_3cmp3Ord3maxEB1t_.exit.i.i ], [ 0.000000e+00, %bb.x ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !44486
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.z)
  br label %bb.ad

bb.ad:                                            ; preds = %._crit_edge, %bb.ac
  %.sroa.011.0 = phi i64 [ %i.ck, %bb.ac ], [ -1, %._crit_edge ] ; 3 uses
  %.sroa.08.0 = phi double [ %.sroa.0.0.i, %bb.ac ], [ %.sroa.0.0.i171.lcssa, %._crit_edge ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa)
  store i64 %.sroa.011.0, ptr %i.aa, align 8
  %.sroa.3.0..sroa_idx13 = getelementptr inbounds nuw i8, ptr %i.aa, i64 8 ; 3 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3.0..sroa_idx13, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.3, i64 16, i1 false)
  br i1 %i.ah, label %bb.ag, label %bb.ah

bb.ae:                                            ; preds = %bb.t, %bb.cf, %bb.y
  %i.do = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55
  unreachable

bb.af:                                            ; preds = %.noexc174
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !44450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !44445
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  br label %bb.ce

bb.ag:                                            ; preds = %.thread, %bb.ad
  %.sroa.3.0..sroa_idx13308 = phi ptr [ %.sroa.3.0..sroa_idx13298, %.thread ], [ %.sroa.3.0..sroa_idx13, %bb.ad ]
  %.sroa.08.0305 = phi double [ %i.ao, %.thread ], [ %.sroa.08.0, %bb.ad ]
  %.sroa.011.0302 = phi i64 [ -1, %.thread ], [ %.sroa.011.0, %bb.ad ] ; 2 uses
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.dq = load ptr, ptr %i.dp, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.ds = load i64, ptr %i.dr, align 16, !noundef !10 ; 3 uses
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dq, i64 32
  %i.du = load i64, ptr %i.dt, align 8, !noundef !10 ; 2 uses
  %i.dv = icmp ult i64 %i.ds, %i.du
  br i1 %i.dv, label %bb.ai, label %bb.aj

bb.ah:                                            ; preds = %bb.ad, %bb.ai
  %.sroa.3.0..sroa_idx13307 = phi ptr [ %.sroa.3.0..sroa_idx13308, %bb.ai ], [ %.sroa.3.0..sroa_idx13, %bb.ad ] ; 3 uses
  %.sroa.08.0304 = phi double [ %.sroa.08.0305, %bb.ai ], [ %.sroa.08.0, %bb.ad ] ; 3 uses
  %.sroa.011.0301 = phi i64 [ %.sroa.011.0302, %bb.ai ], [ %.sroa.011.0, %bb.ad ] ; 19 uses
  %i.dw = phi i64 [ %.pre, %bb.ai ], [ %i.ag, %bb.ad ]
  %.sroa.034.0 = phi ptr [ %i.ea, %bb.ai ], [ %i.af, %bb.ad ] ; 5 uses
  %i.dx = icmp samesign ult i64 %i.dw, 2
  br i1 %i.dx, label %bb.al, label %.thread309

bb.ai:                                            ; preds = %bb.ag
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.dz = load ptr, ptr %i.dy, align 8, !nonnull !10, !noundef !10
  %i.ea = getelementptr inbounds nuw [144 x i8], ptr %i.dz, i64 %i.ds ; 2 uses
  %.pre = load i64, ptr %i.ea, align 16, !range !4641
  br label %bb.ah

bb.aj:                                            ; preds = %bb.ag
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.ds, i64 noundef %i.du, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #57
          to label %bb.u unwind label %bb.ak

bb.ak:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152, %bb.bl, %bb.bj, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit130, %bb.aj
  %.sroa.011.0300 = phi i64 [ %.sroa.011.0301, %bb.bl ], [ %.sroa.011.0301, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152 ], [ %.sroa.011.0302, %bb.aj ], [ %.sroa.011.0301, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit130 ], [ %.sroa.011.0301, %bb.bj ]
  %.sroa.070.0 = phi i8 [ 1, %bb.bl ], [ %.sroa.070.2, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152 ], [ 1, %bb.aj ], [ 1, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit130 ], [ 1, %bb.bj ]
  %i.eb = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.bu, %bb.bg, %bb.ax, %bb.ak
  %.sroa.011.0299 = phi i64 [ %.sroa.011.0301, %bb.bg ], [ %.sroa.011.0301, %bb.ax ], [ %.sroa.011.0300, %bb.ak ], [ %.sroa.011.0301, %bb.bu ]
  %.sroa.070.0.lpad-body = phi i8 [ %.sroa.070.2, %bb.bg ], [ 1, %bb.ax ], [ %.sroa.070.0, %bb.ak ], [ %.sroa.070.2, %bb.bu ]
  %eh.lpad-body = phi { ptr, i32 } [ %i.gx, %bb.bg ], [ %i.fu, %bb.ax ], [ %i.eb, %bb.ak ], [ %i.ij, %bb.bu ] ; 2 uses
  %i.ec = icmp ne i64 %.sroa.011.0299, -1
  %i.ed = trunc nuw i8 %.sroa.070.0.lpad-body to i1
  %or.cond5 = select i1 %i.ec, i1 %i.ed, i1 false
  br i1 %or.cond5, label %bb.cf, label %.body158

bb.al:                                            ; preds = %bb.ah
  %i.ee = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 48
  %i.ef = load i64, ptr %i.ee, align 16, !range !8934, !noundef !10
  %i.eg = icmp eq i64 %i.ef, 0
  br i1 %i.eg, label %bb.am, label %.thread309

.thread309:                                       ; preds = %bb.al, %bb.ah
  %i.eh = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 144
  br label %.lr.ph260

bb.am:                                            ; preds = %bb.al
  %i.ei = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 64
  %i.ej = load ptr, ptr %i.ei, align 16, !nonnull !10, !noundef !10 ; 2 uses
  %i.ek = getelementptr inbounds nuw i8, ptr %.sroa.034.0, i64 72
  %i.el = load i64, ptr %i.ek, align 8, !noundef !10 ; 2 uses
  %i.em = mul nuw nsw i64 %i.el, 144
  %i.en = getelementptr inbounds nuw i8, ptr %i.ej, i64 %i.em
  %i.eo = icmp eq i64 %i.el, 0
  br i1 %i.eo, label %._crit_edge261, label %.lr.ph260

.lr.ph260:                                        ; preds = %.thread309, %bb.am
  %i.ep = phi ptr [ %i.eh, %.thread309 ], [ %i.en, %bb.am ]
  %.sroa.030.0312 = phi ptr [ %.sroa.034.0, %.thread309 ], [ %i.ej, %bb.am ]
  br label %bb.an

bb.an:                                            ; preds = %.lr.ph260, %bb.aq
  %.sroa.027.0258 = phi i1 [ %.sroa.027.1, %bb.aq ], [ false, %.lr.ph260 ] ; 3 uses
  %.sroa.028.0257 = phi ptr [ %i.eq, %bb.aq ], [ %.sroa.030.0312, %.lr.ph260 ] ; 4 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %.sroa.028.0257, i64 144 ; 2 uses
  %i.er = load i64, ptr %.sroa.028.0257, align 16, !range !4641, !noundef !10
  %i.es = icmp samesign ult i64 %i.er, 2
  br i1 %i.es, label %bb.ao, label %bb.aq

._crit_edge261:                                   ; preds = %bb.aq, %bb.am
  %.sroa.027.0.lcssa = phi i1 [ false, %bb.am ], [ %.sroa.027.1, %bb.aq ]
  %i.et = load i64, ptr %0, align 16, !range !4106, !noundef !10 ; 2 uses
  %.not101 = icmp eq i64 %i.et, -1
  br i1 %.not101, label %bb.as, label %bb.ar

bb.ao:                                            ; preds = %bb.an
  %i.eu = getelementptr inbounds nuw i8, ptr %.sroa.028.0257, i64 48
  %i.ev = load i64, ptr %i.eu, align 16, !range !8934, !noundef !10
  %i.ew = icmp eq i64 %i.ev, 14
  br i1 %i.ew, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ex = getelementptr inbounds nuw i8, ptr %.sroa.028.0257, i64 56
  %i.ey = load ptr, ptr %i.ex, align 8, !nonnull !10, !noundef !10 ; 4 uses
  %i.ez = getelementptr inbounds nuw i8, ptr %i.ey, i64 256
  %i.fa = load i8, ptr %i.ez, align 1, !range !284, !noundef !10
  %i.fb = icmp eq i8 %i.fa, 1
  br i1 %i.fb, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit, label %bb.aq

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit: ; preds = %bb.ap
  %.sroa.849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 136
  %.sroa.849.0.copyload.i = load i64, ptr %.sroa.849.0..sroa_idx.i, align 8, !noalias !44509
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 192 ; 2 uses
  %.sroa.1051.0.copyload.i = load i64, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !44509 ; 2 uses
  %.sroa.1152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ey, i64 200 ; 2 uses
  %.sroa.1152.0.copyload.i = load double, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !44509
  %.not.i111 = icmp ne i64 %.sroa.849.0.copyload.i, 2
  %.not4.i = icmp eq i64 %.sroa.1051.0.copyload.i, 0
  %or.cond60.i = select i1 %.not.i111, i1 %.not4.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond60.i, i64 1, i64 %.sroa.1051.0.copyload.i
  %.sroa.9.0.i = select i1 %or.cond60.i, double %.sroa.08.0304, double %.sroa.1152.0.copyload.i
  store i64 %spec.select, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !44509
  store double %.sroa.9.0.i, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !44509
  br label %bb.aq

bb.aq:                                            ; preds = %bb.ap, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit, %bb.an, %bb.ao
  %.sroa.027.1 = phi i1 [ true, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit ], [ %.sroa.027.0258, %bb.ap ], [ %.sroa.027.0258, %bb.ao ], [ %.sroa.027.0258, %bb.an ] ; 2 uses
  %i.fc = icmp eq ptr %i.eq, %i.ep
  br i1 %i.fc, label %._crit_edge261, label %bb.an

bb.ar:                                            ; preds = %._crit_edge261
  call void @llvm.experimental.noalias.scope.decl(metadata !44512)
  %i.fd = icmp samesign ult i64 %i.et, 2
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ff = load i64, ptr %i.fe, align 16, !range !8934, !alias.scope !44512
  %i.fg = icmp eq i64 %i.ff, 14
  %or.cond.i112 = select i1 %i.fd, i1 %i.fg, i1 false
  br i1 %or.cond.i112, label %.cont.i127, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit130

.cont.i127:                                       ; preds = %bb.ar
  %i.fh = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.fi = load ptr, ptr %i.fh, align 8, !alias.scope !44512, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.849.0..sroa_idx.i118 = getelementptr inbounds nuw i8, ptr %i.fi, i64 136
  %.sroa.849.0.copyload.i119 = load i64, ptr %.sroa.849.0..sroa_idx.i118, align 8, !noalias !44512
  %.sroa.1051.0..sroa_idx.i120 = getelementptr inbounds nuw i8, ptr %i.fi, i64 192 ; 2 uses
  %.sroa.1051.0.copyload.i121 = load i64, ptr %.sroa.1051.0..sroa_idx.i120, align 8, !noalias !44512 ; 2 uses
  %.sroa.1152.0..sroa_idx.i122 = getelementptr inbounds nuw i8, ptr %i.fi, i64 200 ; 2 uses
  %.sroa.1152.0.copyload.i123 = load double, ptr %.sroa.1152.0..sroa_idx.i122, align 8, !noalias !44512
  %.not.i124 = icmp ne i64 %.sroa.849.0.copyload.i119, 2
  %.not4.i125 = icmp eq i64 %.sroa.1051.0.copyload.i121, 0
  %or.cond60.i126 = select i1 %.not.i124, i1 %.not4.i125, i1 false ; 2 uses
  %spec.select231 = select i1 %or.cond60.i126, i64 1, i64 %.sroa.1051.0.copyload.i121
  %.sroa.9.0.i129 = select i1 %or.cond60.i126, double %.sroa.08.0304, double %.sroa.1152.0.copyload.i123
  store i64 %spec.select231, ptr %.sroa.1051.0..sroa_idx.i120, align 8, !noalias !44512
  store double %.sroa.9.0.i129, ptr %.sroa.1152.0..sroa_idx.i122, align 8, !noalias !44512
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit130

bb.as:                                            ; preds = %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit, %._crit_edge261
  %.not102 = icmp eq i64 %.sroa.011.0301, -1
  %or.cond105 = or i1 %.not102, %.sroa.027.0.lcssa
  br i1 %or.cond105, label %bb.ba, label %bb.bb

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit130: ; preds = %.cont.i127, %bb.ar
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.w, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.s)
          to label %bb.at unwind label %bb.ak

bb.at:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit130
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.fj = load i64, ptr %i.w, align 16, !range !4106, !noundef !10 ; 3 uses
  %i.fk = icmp eq i64 %i.fj, -1
  %i.fl = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  %i.fm = load ptr, ptr %i.fl, align 8            ; 3 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  %i.fo = load i64, ptr %i.fn, align 16           ; 3 uses
  br i1 %i.fk, label %bb.au, label %bb.av

bb.au:                                            ; preds = %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  br label %bb.az

bb.av:                                            ; preds = %bb.at
  %.sroa.679.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.679.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w)
  call void @llvm.experimental.noalias.scope.decl(metadata !44515)
  %i.fp = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !44518
  store i64 %i.fj, ptr %i.l, align 16, !alias.scope !44520, !noalias !44515
  %.sroa.3179.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr %i.fm, ptr %.sroa.3179.0..sroa_idx, align 8, !alias.scope !44520, !noalias !44515
  %.sroa.4.0..sroa_idx182 = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store i64 %i.fo, ptr %.sroa.4.0..sroa_idx182, align 16, !alias.scope !44520, !noalias !44515
  %.sroa.5.0..sroa_idx185 = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5.0..sroa_idx185, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5, i64 280, i1 false), !alias.scope !44520, !noalias !44515
  call void @llvm.experimental.noalias.scope.decl(metadata !44527)
  %i.fq = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !alias.scope !44530, !noalias !44531, !noundef !10 ; 3 uses
  %i.fs = load i64, ptr %i.fp, align 8, !range !69, !alias.scope !44530, !noalias !44531, !noundef !10
  %i.ft = icmp eq i64 %i.fr, %i.fs
  br i1 %i.ft, label %bb.aw, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit

bb.aw:                                            ; preds = %bb.av
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.fp)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit unwind label %bb.ax, !noalias !44531

bb.ax:                                            ; preds = %bb.aw
  %i.fu = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.l) #54
          to label %.body unwind label %bb.ay, !noalias !44533

bb.ay:                                            ; preds = %bb.ax
  %i.fv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44533
  unreachable

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit: ; preds = %bb.av, %bb.aw
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.fx = load ptr, ptr %i.fw, align 8, !alias.scope !44530, !noalias !44531, !nonnull !10, !noundef !10
  %i.fy = getelementptr inbounds nuw [304 x i8], ptr %i.fx, i64 %i.fr ; 4 uses
  store i64 %i.fj, ptr %i.fy, align 16, !noalias !44515
  %.sroa.3179.0..sroa_idx180 = getelementptr inbounds nuw i8, ptr %i.fy, i64 8
  store ptr %i.fm, ptr %.sroa.3179.0..sroa_idx180, align 8, !noalias !44515
  %.sroa.4.0..sroa_idx183 = getelementptr inbounds nuw i8, ptr %i.fy, i64 16
  store i64 %i.fo, ptr %.sroa.4.0..sroa_idx183, align 16, !noalias !44515
  %.sroa.5.0..sroa_idx186 = getelementptr inbounds nuw i8, ptr %i.fy, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5.0..sroa_idx186, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5, i64 280, i1 false), !noalias !44515
  %i.fz = add i64 %i.fr, 1
  store i64 %i.fz, ptr %i.fq, align 8, !alias.scope !44530, !noalias !44531
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !44518
  br label %bb.as

bb.az:                                            ; preds = %bb.bm, %bb.br, %bb.au
  %.sroa.070.1 = phi i1 [ true, %bb.au ], [ %i.if, %bb.br ], [ true, %bb.bm ]
  %.sroa.7.0 = phi i64 [ %i.fo, %bb.au ], [ %i.ie, %bb.br ], [ %i.ho, %bb.bm ]
  %.sroa.0.0 = phi ptr [ %i.fm, %bb.au ], [ %i.ic, %bb.br ], [ %i.hm, %bb.bm ]
  %i.ga = icmp ne i64 %.sroa.011.0301, -1
  %or.cond3 = select i1 %i.ga, i1 %.sroa.070.1, i1 false
  br i1 %or.cond3, label %bb.ca, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168

bb.ba:                                            ; preds = %bb.as
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v)
  br i1 %i.ah, label %bb.bi, label %bb.bj

bb.bb:                                            ; preds = %bb.as
  %.sroa.3188.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx13307, align 8
  %.sroa.5189.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.sroa.5189.0.copyload = load i64, ptr %.sroa.5189.0..sroa_idx, align 8
  br label %bb.bc

bb.bc:                                            ; preds = %bb.bm, %bb.bb
  %.sroa.5189.0 = phi i64 [ %.sroa.5189.0.copyload, %bb.bb ], [ %i.ho, %bb.bm ] ; 6 uses
  %.sroa.3188.0 = phi ptr [ %.sroa.3188.0.copyload, %bb.bb ], [ %i.hm, %bb.bm ] ; 6 uses
  %.sroa.0187.0 = phi i64 [ %.sroa.011.0301, %bb.bb ], [ %i.hj, %bb.bm ] ; 3 uses
  %.sroa.070.2 = phi i8 [ 0, %bb.bb ], [ 1, %bb.bm ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44534)
  %i.gb = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !44537
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3188.0) ]
  %i.gc = icmp ult i64 %.sroa.5189.0, 30340039594917026
  call void @llvm.assume(i1 %i.gc)
  %.idx1.i = mul nuw nsw i64 %.sroa.5189.0, 304   ; 2 uses
  %i.gd = getelementptr inbounds nuw i8, ptr %.sroa.3188.0, i64 %.idx1.i
  store ptr %.sroa.3188.0, ptr %i.k, align 8, !alias.scope !44539, !noalias !44542
  %i.ge = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %.sroa.0187.0, ptr %i.ge, align 8, !alias.scope !44539, !noalias !44542
  %i.gf = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %.sroa.3188.0, ptr %i.gf, align 8, !alias.scope !44539, !noalias !44542
  %i.gg = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  store ptr %i.gd, ptr %i.gg, align 8, !alias.scope !44539, !noalias !44542
  call void @llvm.experimental.noalias.scope.decl(metadata !44544)
  call void @llvm.experimental.noalias.scope.decl(metadata !44547)
  %i.gh = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 5 uses
  %i.gi = load i64, ptr %i.gh, align 8, !alias.scope !44550, !noalias !44553, !noundef !10 ; 5 uses
  %i.gj = load i64, ptr %i.gb, align 8, !range !69, !alias.scope !44550, !noalias !44553, !noundef !10
  %i.gk = sub i64 %i.gj, %i.gi
  %i.gl = icmp ugt i64 %.sroa.5189.0, %i.gk
  br i1 %i.gl, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.thread.i.i.i, label %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i, !prof !33

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.thread.i.i.i: ; preds = %bb.bc
  invoke fastcc void @_RINvNvMs2_NtCs1xwejQucwHj_5alloc7raw_vecINtB8_11RawVecInnerpE7reserve21do_reserve_and_handleNtNtBa_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb, i64 noundef %i.gi, i64 noundef %.sroa.5189.0, i64 noundef 16, i64 noundef 304)
          to label %.noexc.i.i unwind label %bb.bg, !noalias !44553

.noexc.i.i:                                       ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.thread.i.i.i
  %i.gm = load i64, ptr %i.gh, align 8, !alias.scope !44555, !noalias !44553, !noundef !10 ; 2 uses
  %i.gn = icmp ult i64 %i.gm, 30340039594917026
  call void @llvm.assume(i1 %i.gn)
  br label %bb.bd

_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i: ; preds = %bb.bc
  %i.go = icmp ult i64 %i.gi, 30340039594917026
  call void @llvm.assume(i1 %i.go)
  %.not.i.i.i = icmp eq i64 %.sroa.5189.0, 0
  br i1 %.not.i.i.i, label %bb.be, label %bb.bd

bb.bd:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i, %.noexc.i.i
  %i.gp = phi i64 [ %i.gm, %.noexc.i.i ], [ %i.gi, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i ] ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.gr = load ptr, ptr %i.gq, align 8, !alias.scope !44555, !noalias !44553, !nonnull !10, !noundef !10
  %i.gs = getelementptr inbounds nuw [304 x i8], ptr %i.gr, i64 %i.gp
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 16 %i.gs, ptr nonnull readonly align 16 %.sroa.3188.0, i64 %.idx1.i, i1 false), !noalias !44556
  br label %bb.be

bb.be:                                            ; preds = %bb.bd, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i
  %i.gt = phi i64 [ %i.gp, %bb.bd ], [ %i.gi, %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.i.i.i ]
  %i.gu = add nuw nsw i64 %i.gt, %.sroa.5189.0
  store i64 %i.gu, ptr %i.gh, align 8, !alias.scope !44555, !noalias !44553
  %i.gv = icmp eq i64 %.sroa.0187.0, 0
  br i1 %i.gv, label %bb.bn, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gw = mul nuw i64 %.sroa.0187.0, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.sroa.3188.0, i64 noundef %i.gw, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44557
  br label %bb.bn

bb.bg:                                            ; preds = %_RNvMs_NtCs1xwejQucwHj_5alloc3vecINtB4_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE7reserveBK_.exit.thread.i.i.i
  %i.gx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCs1xwejQucwHj_5alloc3vec9into_iter8IntoIterNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1v_(ptr noalias nofree noundef nonnull readonly align 8 dereferenceable(32) %i.k) #54
          to label %.body unwind label %bb.bh, !noalias !44558

bb.bh:                                            ; preds = %bb.bg
  %i.gy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44557
  unreachable

bb.bi:                                            ; preds = %bb.ba
  %i.gz = getelementptr inbounds nuw i8, ptr %0, i64 296
  %i.ha = load ptr, ptr %i.gz, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 304
  %i.hc = load i64, ptr %i.hb, align 16, !noundef !10 ; 3 uses
  %i.hd = getelementptr inbounds nuw i8, ptr %i.ha, i64 32
  %i.he = load i64, ptr %i.hd, align 8, !noundef !10 ; 2 uses
  %i.hf = icmp ult i64 %i.hc, %i.he
  br i1 %i.hf, label %bb.bk, label %bb.bl

bb.bj:                                            ; preds = %bb.ba, %bb.bk
  %.sroa.059.0 = phi ptr [ %i.hi, %bb.bk ], [ %i.af, %bb.ba ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext21layout_into_fragments(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.v, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %.sroa.059.0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.r)
          to label %bb.bm unwind label %bb.ak

bb.bk:                                            ; preds = %bb.bi
  %i.hg = getelementptr inbounds nuw i8, ptr %i.ha, i64 24
  %i.hh = load ptr, ptr %i.hg, align 8, !nonnull !10, !noundef !10
  %i.hi = getelementptr inbounds nuw [144 x i8], ptr %i.hh, i64 %i.hc
  br label %bb.bj

bb.bl:                                            ; preds = %bb.bi
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking18panic_bounds_check(i64 noundef %i.hc, i64 noundef %i.he, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @630) #57
          to label %bb.u unwind label %bb.ak

bb.bm:                                            ; preds = %bb.bj
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r)
  %i.hj = load i64, ptr %i.v, align 8, !range !1183, !noundef !10 ; 2 uses
  %i.hk = icmp eq i64 %i.hj, -1
  %i.hl = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.hm = load ptr, ptr %i.hl, align 8            ; 2 uses
  %i.hn = getelementptr inbounds nuw i8, ptr %i.v, i64 16
  %i.ho = load i64, ptr %i.hn, align 8            ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v)
  br i1 %i.hk, label %bb.az, label %bb.bc

bb.bn:                                            ; preds = %bb.bf, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !44537
  %i.hp = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 2 uses
  %i.hq = load i64, ptr %i.hp, align 16, !range !4106, !noundef !10 ; 2 uses
  %.not103 = icmp eq i64 %i.hq, -1
  br i1 %.not103, label %bb.bp, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !44559)
  %i.hr = icmp samesign ult i64 %i.hq, 2
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.ht = load i64, ptr %i.hs, align 16, !range !8934, !alias.scope !44559
  %i.hu = icmp eq i64 %i.ht, 14
  %or.cond.i134 = select i1 %i.hr, i1 %i.hu, i1 false
  br i1 %or.cond.i134, label %.cont.i149, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152

.cont.i149:                                       ; preds = %bb.bo
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.hw = load ptr, ptr %i.hv, align 8, !alias.scope !44559, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.849.0..sroa_idx.i140 = getelementptr inbounds nuw i8, ptr %i.hw, i64 136
  %.sroa.849.0.copyload.i141 = load i64, ptr %.sroa.849.0..sroa_idx.i140, align 8, !noalias !44559
  %.sroa.1051.0..sroa_idx.i142 = getelementptr inbounds nuw i8, ptr %i.hw, i64 192 ; 2 uses
  %.sroa.1051.0.copyload.i143 = load i64, ptr %.sroa.1051.0..sroa_idx.i142, align 8, !noalias !44559 ; 2 uses
  %.sroa.1152.0..sroa_idx.i144 = getelementptr inbounds nuw i8, ptr %i.hw, i64 200 ; 2 uses
  %.sroa.1152.0.copyload.i145 = load double, ptr %.sroa.1152.0..sroa_idx.i144, align 8, !noalias !44559
  %.not.i146 = icmp ne i64 %.sroa.849.0.copyload.i141, 2
  %.not4.i147 = icmp eq i64 %.sroa.1051.0.copyload.i143, 0
  %or.cond60.i148 = select i1 %.not.i146, i1 %.not4.i147, i1 false ; 2 uses
  %spec.select233 = select i1 %or.cond60.i148, i64 1, i64 %.sroa.1051.0.copyload.i143
  %.sroa.9.0.i151 = select i1 %or.cond60.i148, double %.sroa.08.0304, double %.sroa.1152.0.copyload.i145
  store i64 %spec.select233, ptr %.sroa.1051.0..sroa_idx.i142, align 8, !noalias !44559
  store double %.sroa.9.0.i151, ptr %.sroa.1152.0..sroa_idx.i144, align 8, !noalias !44559
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152

bb.bp:                                            ; preds = %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156, %bb.bn
  %i.hx = icmp ne i64 %.sroa.011.0301, -1
  %i.hy = trunc nuw i8 %.sroa.070.2 to i1
  %or.cond = and i1 %i.hx, %i.hy
  br i1 %or.cond, label %bb.bw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152: ; preds = %.cont.i149, %bb.bo
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.u, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.hp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2)
          to label %bb.bq unwind label %bb.ak

bb.bq:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit152
  %i.hz = load i64, ptr %i.u, align 16, !range !4106, !noundef !10 ; 3 uses
  %i.ia = icmp eq i64 %i.hz, -1
  %i.ib = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.ic = load ptr, ptr %i.ib, align 8            ; 3 uses
  %i.id = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ie = load i64, ptr %i.id, align 16           ; 3 uses
  br i1 %i.ia, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.if = trunc nuw i8 %.sroa.070.2 to i1
  br label %bb.az

bb.bs:                                            ; preds = %bb.bq
  %.sroa.686.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.686.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  call void @llvm.experimental.noalias.scope.decl(metadata !44562)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !44565
  store i64 %i.hz, ptr %i.j, align 16, !alias.scope !44567, !noalias !44562
  %.sroa.3192.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.ic, ptr %.sroa.3192.0..sroa_idx, align 8, !alias.scope !44567, !noalias !44562
  %.sroa.4195.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.ie, ptr %.sroa.4195.0..sroa_idx, align 16, !alias.scope !44567, !noalias !44562
  %.sroa.5198.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198, i64 280, i1 false), !alias.scope !44567, !noalias !44562
  call void @llvm.experimental.noalias.scope.decl(metadata !44574)
  %i.ig = load i64, ptr %i.gh, align 8, !alias.scope !44577, !noalias !44578, !noundef !10 ; 3 uses
  %i.ih = load i64, ptr %i.gb, align 8, !range !69, !alias.scope !44577, !noalias !44578, !noundef !10
  %i.ii = icmp eq i64 %i.ig, %i.ih
  br i1 %i.ii, label %bb.bt, label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156

bb.bt:                                            ; preds = %bb.bs
  invoke void @_RNvMs4_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.gb)
          to label %_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156 unwind label %bb.bu, !noalias !44578

bb.bu:                                            ; preds = %bb.bt
  %i.ij = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.j) #54
          to label %.body unwind label %bb.bv, !noalias !44580

bb.bv:                                            ; preds = %bb.bu
  %i.ik = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44580
  unreachable

_RINvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB3_11MathContext4pushNtNtB3_8fragment12MathFragmentEB5_.exit156: ; preds = %bb.bs, %bb.bt
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.im = load ptr, ptr %i.il, align 8, !alias.scope !44577, !noalias !44578, !nonnull !10, !noundef !10
  %i.in = getelementptr inbounds nuw [304 x i8], ptr %i.im, i64 %i.ig ; 4 uses
  store i64 %i.hz, ptr %i.in, align 16, !noalias !44562
  %.sroa.3192.0..sroa_idx193 = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  store ptr %i.ic, ptr %.sroa.3192.0..sroa_idx193, align 8, !noalias !44562
  %.sroa.4195.0..sroa_idx196 = getelementptr inbounds nuw i8, ptr %i.in, i64 16
  store i64 %i.ie, ptr %.sroa.4195.0..sroa_idx196, align 16, !noalias !44562
  %.sroa.5198.0..sroa_idx199 = getelementptr inbounds nuw i8, ptr %i.in, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198.0..sroa_idx199, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.5198, i64 280, i1 false), !noalias !44562
  %i.io = add i64 %i.ig, 1
  store i64 %i.io, ptr %i.gh, align 8, !alias.scope !44577, !noalias !44578
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !44565
  br label %bb.bp

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit: ; preds = %bb.bz, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i, %bb.bp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  %i.ip = load ptr, ptr %i.ab, align 8, !alias.scope !44581, !noundef !10
  %i.iq = icmp eq ptr %i.ip, null
  br i1 %i.iq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split

bb.bw:                                            ; preds = %bb.bp
  call void @llvm.experimental.noalias.scope.decl(metadata !44584)
  %.val4.i = load ptr, ptr %.sroa.3.0..sroa_idx13307, align 8, !alias.scope !44584, !nonnull !10, !noundef !10 ; 3 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val5.i = load i64, ptr %i.ir, align 8, !alias.scope !44584, !noundef !10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %.val4.i, i64 noundef %.val5.i)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i unwind label %bb.bx, !noalias !44584

bb.bx:                                            ; preds = %bb.bw
  %i.is = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.it = icmp eq i64 %.sroa.011.0301, 0
  br i1 %i.it, label %.body158, label %bb.by

bb.by:                                            ; preds = %bb.bx
  %i.iu = mul nuw i64 %.sroa.011.0301, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.iu, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44584
  br label %.body158

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i: ; preds = %bb.bw
  %i.iv = icmp eq i64 %.sroa.011.0301, 0
  br i1 %i.iv, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit, label %bb.bz

bb.bz:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i
  %i.iw = mul nuw i64 %.sroa.011.0301, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i, i64 noundef %i.iw, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44584
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit, %bb.ce
  %.sroa.7.1.ph = phi i64 [ %.sroa.7.2, %bb.ce ], [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ]
  %.sroa.0.1.ph = phi ptr [ %.sroa.0.2, %bb.ce ], [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ]
  call void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.ab)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169: ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit, %bb.ce
  %.sroa.7.1 = phi i64 [ undef, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ], [ %.sroa.7.2, %bb.ce ], [ %.sroa.7.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split ]
  %.sroa.0.1 = phi ptr [ null, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit ], [ %.sroa.0.2, %bb.ce ], [ %.sroa.0.1.ph, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ab)
  %i.ix = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.iy = insertvalue { ptr, i64 } %i.ix, i64 %.sroa.7.1, 1
  ret { ptr, i64 } %i.iy

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168: ; preds = %bb.cd, %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164, %bb.az
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aa)
  br label %bb.ce

bb.ca:                                            ; preds = %bb.az
  call void @llvm.experimental.noalias.scope.decl(metadata !44587)
  %.val4.i160 = load ptr, ptr %.sroa.3.0..sroa_idx13307, align 8, !alias.scope !44587, !nonnull !10, !noundef !10 ; 3 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %.val5.i161 = load i64, ptr %i.iz, align 8, !alias.scope !44587, !noundef !10
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueSNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBI_(ptr noalias nofree noundef nonnull align 16 %.val4.i160, i64 noundef %.val5.i161)
          to label %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164 unwind label %bb.cb, !noalias !44587

bb.cb:                                            ; preds = %bb.ca
  %i.ja = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.jb = icmp eq i64 %.sroa.011.0301, 0
  br i1 %i.jb, label %.body158, label %bb.cc

bb.cc:                                            ; preds = %bb.cb
  %i.jc = mul nuw i64 %.sroa.011.0301, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i160, i64 noundef %i.jc, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44587
  br label %.body158

_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164: ; preds = %bb.ca
  %i.jd = icmp eq i64 %.sroa.011.0301, 0
  br i1 %i.jd, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168, label %bb.cd

bb.cd:                                            ; preds = %_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropBL_.exit.i164
  %i.je = mul nuw i64 %.sroa.011.0301, 304
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val4.i160, i64 noundef %i.je, i64 noundef range(i64 1, -9223372036854775807) 16) #56, !noalias !44587
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168

bb.ce:                                            ; preds = %bb.w, %bb.af, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168
  %.sroa.7.2 = phi i64 [ %i.bg, %bb.af ], [ %.sroa.7.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168 ], [ %i.cp, %bb.w ] ; 2 uses
  %.sroa.0.2 = phi ptr [ %i.bf, %bb.af ], [ %.sroa.0.0, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_.exit168 ], [ %i.cn, %bb.w ] ; 2 uses
  %i.jf = load ptr, ptr %i.ab, align 8, !alias.scope !44590, !noundef !10
  %i.jg = icmp eq ptr %i.jf, null
  br i1 %i.jg, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit169.sink.split

bb.cf:                                            ; preds = %.body
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB1e_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.aa) #54
          to label %.body158 unwind label %bb.ae

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.body158, %bb.t
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define internal fastcc { ptr, i64 } @_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7radical14layout_radical(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(432) %0, ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(24) %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [304 x i8], align 16              ; 6 uses
  %i.b = alloca [136 x i8], align 8               ; 4 uses
  %i.c = alloca [80 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [16 x i8], align 16               ; 4 uses
  %i.f = alloca [16 x i8], align 16               ; 4 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [16 x i8], align 16               ; 4 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [304 x i8], align 16              ; 7 uses
  %i.o = alloca [48 x i8], align 8                ; 4 uses
  %i.p = alloca [304 x i8], align 16              ; 7 uses
  %i.q = alloca [48 x i8], align 8                ; 4 uses
  %i.r = alloca [104 x i8], align 8               ; 4 uses
  %i.s = alloca [48 x i8], align 8                ; 4 uses
  %.sroa.0545 = alloca [56 x i8], align 8         ; 5 uses
  %i.t = alloca [176 x i8], align 16              ; 15 uses
  %i.u = alloca [56 x i8], align 8                ; 11 uses
  %i.v = alloca [80 x i8], align 8                ; 4 uses
  %i.w = alloca [80 x i8], align 8                ; 4 uses
end_hunk_5
begin_hunk_6_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7radical14layout_radical:bb.a
  %i.ch = phi ptr [ %i.ce, %bb.p ], [ %storemerge.pre.i, %._crit_edge.i ] ; 5 uses
  store ptr %i.ch, ptr %i.i, align 8, !noalias !44599
  %i.ci = call i64 @llvm.usub.sat.i64(i64 %i.br, i64 1)
  switch i64 %i.ci, label %bb.w [
    i64 0, label %bb.y
    i64 1, label %bb.x
  ]

bb.t:                                             ; preds = %bb.q
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc450 unwind label %bb.ad

.noexc450:                                        ; preds = %bb.t
  unreachable

bb.u:                                             ; preds = %bb.q
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val448) ]
  %i.cj = getelementptr [8 x i8], ptr %.val448, i64 %.val449
  %i.ck = getelementptr i8, ptr %i.cj, i64 -8     ; 2 uses
  %i.cl = load ptr, ptr %i.ck, align 8, !noalias !44599, !nonnull !10, !noundef !10
  %i.cm = atomicrmw add ptr %i.cl, i64 1 monotonic, align 8, !noalias !44599
  %i.cn = icmp slt i64 %i.cm, 0
  br i1 %i.cn, label %bb.v, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %bb.u
  %storemerge.pre.i = load ptr, ptr %i.ck, align 8, !noalias !44599
  br label %bb.s

bb.v:                                             ; preds = %bb.u
  call void @llvm.trap()
  unreachable

bb.w:                                             ; preds = %bb.s
  %i.co = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aw)
          to label %bb.ab unwind label %bb.z      ; 2 uses

bb.x:                                             ; preds = %bb.s
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.s
  %.sink.i.sroa.phi = phi ptr [ %.sink.i.sroa.gep, %bb.x ], [ %.sink.i.sroa.gep539, %bb.s ]
  %.sroa.4.0.i = load double, ptr %.sink.i.sroa.phi, align 8, !alias.scope !44596, !noalias !44601, !noundef !10
  br label %bb.ae

bb.z:                                             ; preds = %bb.ab, %bb.w
  %i.cp = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.cq = atomicrmw sub ptr %i.ch, i64 1 release, align 8, !noalias !44602
  %i.cr = icmp eq i64 %i.cq, 1
  br i1 %i.cr, label %bb.aa, label %.body

bb.aa:                                            ; preds = %bb.z
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.i) #58
          to label %.body unwind label %bb.ac, !noalias !44599

bb.ab:                                            ; preds = %bb.w
  %i.cs = extractvalue { double, double } %i.co, 0
  %i.ct = extractvalue { double, double } %i.co, 1
  %i.cu = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.cs, double noundef %i.ct, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.au)
          to label %bb.ae unwind label %bb.z, !noalias !44596

bb.ac:                                            ; preds = %bb.aa
  %i.cv = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44599
  unreachable

.body:                                            ; preds = %bb.ag, %bb.ah, %bb.ad, %bb.aa, %bb.z
  %.pn = phi { ptr, i32 } [ %i.cp, %bb.z ], [ %i.cw, %bb.ad ], [ %i.cp, %bb.aa ], [ %i.db, %bb.ah ], [ %i.db, %bb.ag ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.ay) #54
          to label %.thread unwind label %bb.du

bb.ad:                                            ; preds = %bb.ao, %bb.t
  %i.cw = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.ae:                                            ; preds = %bb.ab, %bb.y
  %.sroa.0.0.i = phi double [ %.sroa.4.0.i, %bb.y ], [ %i.cu, %bb.ab ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !44599
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  store ptr %i.ch, ptr %i.av, align 8
  %i.cx = getelementptr inbounds nuw i8, ptr %i.ch, i64 184 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.ch, i64 192
  %i.cz = load atomic i32, ptr %i.cy acquire, align 4, !noalias !44609
  %i.da = icmp eq i32 %i.cz, 0
  br i1 %i.da, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.af, !prof !13

bb.af:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.ag

bb.ag:                                            ; preds = %bb.am, %bb.al, %bb.aj, %bb.ai, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, %bb.af
  %i.db = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44612)
  call void @llvm.experimental.noalias.scope.decl(metadata !44615)
  call void @llvm.experimental.noalias.scope.decl(metadata !44618)
  %i.dc = load ptr, ptr %i.av, align 8, !alias.scope !44621, !nonnull !10, !noundef !10
  %i.dd = atomicrmw sub ptr %i.dc, i64 1 release, align 8, !noalias !44621
  %i.de = icmp eq i64 %i.dd, 1
  br i1 %i.de, label %bb.ah, label %.body

bb.ah:                                            ; preds = %bb.ag
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #58
          to label %.body unwind label %bb.du

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.ae, %bb.af
  %i.df = load ptr, ptr %i.cx, align 8, !nonnull !10, !noundef !10
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 352
  %i.dh = load double, ptr %i.dg, align 8, !noundef !10
  %i.di = fmul double %.sroa.0.0.i, %i.dh         ; 2 uses
  %i.dj = call double @llvm.fabs.f64(double %i.di)
  %i.dk = fcmp one double %i.dj, +inf
  %spec.store.select52 = select i1 %i.dk, double %i.di, double 0.000000e+00
  %i.dl = invoke noundef align 8 ptr @_RNvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB5_10StyleChain4find(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.aw, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6)
          to label %.noexc453 unwind label %bb.ag ; 4 uses

.noexc453:                                        ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %.not.i.i = icmp eq ptr %i.dl, null
  br i1 %.not.i.i, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread, label %bb.ai

bb.ai:                                            ; preds = %.noexc453
  call void @llvm.experimental.noalias.scope.decl(metadata !44622)
  %i.dm = load ptr, ptr %i.dl, align 8, !alias.scope !44622, !noalias !44625, !nonnull !10, !noundef !10 ; 2 uses
  %i.dn = getelementptr inbounds nuw i8, ptr %i.dl, i64 8
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !44622, !noalias !44625, !nonnull !10, !align !151, !noundef !10
  %i.dp = getelementptr inbounds nuw i8, ptr %i.do, i64 40
  %i.dq = load ptr, ptr %i.dp, align 8, !invariant.load !10, !noalias !44630, !nonnull !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !44630
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ds = load ptr, ptr %i.dr, align 8, !invariant.load !10, !noalias !44630, !nonnull !10
  invoke void %i.ds(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.h, ptr noundef nonnull %i.dm) #59
          to label %.noexc454 unwind label %bb.ag, !inline_history !42972

.noexc454:                                        ; preds = %bb.ai
  %i.dt = load i128, ptr %i.h, align 16, !noalias !44630, !noundef !10
  %i.du = icmp eq i128 %i.dt, 149776027455858313211364231028671503831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !44630
  br i1 %i.du, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit, label %bb.aj, !prof !13

bb.aj:                                            ; preds = %.noexc454
  invoke void @_RNvNtNtCsdaEETE4DqmE_13typst_library11foundations6styles16block_wrong_type(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(216) @_RNvNvXs0_NvNtNtCsdaEETE4DqmE_13typst_library4math8equation1__NtB9_12EquationElemNtNtNtNtBd_11foundations7content7element13NativeElement4ELEM6VTABLE, i8 noundef 6, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.dl) #57
          to label %.noexc455 unwind label %bb.ag

.noexc455:                                        ; preds = %bb.aj
  unreachable

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %.noexc454
  %.val.i = load i8, ptr %i.dm, align 1, !range !10973, !noalias !44631, !noundef !10
  %i.dv = icmp eq i8 %.val.i, 3
  br i1 %i.dv, label %bb.ak, label %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread

bb.ak:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit
  %i.dw = load ptr, ptr %i.av, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 184 ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dw, i64 192
  %i.dz = load atomic i32, ptr %i.dy acquire, align 4, !noalias !44632
  %i.ea = icmp eq i32 %i.dz, 0
  br i1 %i.ea, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit457, label %bb.al, !prof !13

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.dx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit457 unwind label %bb.ag

_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread: ; preds = %.noexc453, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit
  %i.eb = load ptr, ptr %i.av, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 184 ; 2 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.eb, i64 192
  %i.ee = load atomic i32, ptr %i.ed acquire, align 4, !noalias !44635
  %i.ef = icmp eq i32 %i.ee, 0
  br i1 %i.ef, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit459, label %bb.am, !prof !13

bb.am:                                            ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ec, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.av)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit459 unwind label %bb.ag

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit457: ; preds = %bb.ak, %bb.al
  %i.eg = load ptr, ptr %i.dx, align 8, !nonnull !10, !noundef !10
  %i.eh = getelementptr inbounds nuw i8, ptr %i.eg, i64 344
  br label %bb.an

bb.an:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit459, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit457
  %.sroa.0378.0.in = phi ptr [ %i.eh, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit457 ], [ %i.eu, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit459 ]
  %.sroa.0378.0 = load double, ptr %.sroa.0378.0.in, align 8, !noundef !10
  %i.ei = fmul double %.sroa.0.0.i, %.sroa.0378.0 ; 2 uses
  %i.ej = call double @llvm.fabs.f64(double %i.ei)
  %i.ek = fcmp one double %i.ej, +inf
  %spec.store.select53 = select i1 %i.ek, double %i.ei, double 0.000000e+00
  %i.el = getelementptr inbounds nuw i8, ptr %i.bb, i64 24 ; 2 uses
  %i.em = getelementptr inbounds nuw i8, ptr %i.bb, i64 32 ; 4 uses
  %i.en = load double, ptr %i.em, align 8, !noundef !10
  %i.eo = fadd double %spec.store.select52, %i.en ; 2 uses
  %.inv = fcmp ord double %i.eo, 0.000000e+00
  %spec.store.select2 = select i1 %.inv, double %i.eo, double 0.000000e+00
  %i.ep = fadd double %spec.store.select2, %spec.store.select53 ; 2 uses
  %.inv385 = fcmp ord double %i.ep, 0.000000e+00
  %spec.store.select3 = select i1 %.inv385, double %i.ep, double 0.000000e+00
  call void @llvm.experimental.noalias.scope.decl(metadata !44638)
  call void @llvm.experimental.noalias.scope.decl(metadata !44641)
  call void @llvm.experimental.noalias.scope.decl(metadata !44644)
  %i.eq = load ptr, ptr %i.av, align 8, !alias.scope !44647, !nonnull !10, !noundef !10
  %i.er = atomicrmw sub ptr %i.eq, i64 1 release, align 8, !noalias !44647
  %i.es = icmp eq i64 %i.er, 1
  br i1 %i.es, label %bb.ao, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit461

bb.ao:                                            ; preds = %bb.an
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.av) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit461 unwind label %bb.ad

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit459: ; preds = %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtNtBa_4math8equation12EquationElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.thread, %bb.am
  %i.et = load ptr, ptr %i.ec, align 8, !nonnull !10, !noundef !10
  %i.eu = getelementptr inbounds nuw i8, ptr %i.et, i64 336
  br label %bb.an

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit461: ; preds = %bb.an, %bb.ao
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  call void @llvm.experimental.noalias.scope.decl(metadata !44648)
  %i.ev = load i64, ptr %i.ay, align 16, !range !4641, !alias.scope !44648, !noundef !10
  %i.ew = call i64 @llvm.usub.sat.i64(i64 %i.ev, i64 1)
  switch i64 %i.ew, label %bb.ap [
    i64 0, label %bb.ar
    i64 1, label %bb.as
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  ]

bb.ap:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit461
  %i.ex = load i8, ptr %.sroa.5.0..sroa_idx, align 16, !range !299, !alias.scope !44651, !noundef !10
  %i.ey = icmp eq i8 %i.ex, 0
  br i1 %i.ey, label %bb.aq, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.aq:                                            ; preds = %bb.ap
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.678.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %bb.l

bb.ar:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit461
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.ay)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %bb.l

bb.as:                                            ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit461
  call void @llvm.experimental.noalias.scope.decl(metadata !44654)
  call void @llvm.experimental.noalias.scope.decl(metadata !44657)
  call void @llvm.experimental.noalias.scope.decl(metadata !44660)
  call void @llvm.experimental.noalias.scope.decl(metadata !44663)
  %i.ez = load ptr, ptr %.sroa.678.0..sroa_idx, align 8, !alias.scope !44666, !nonnull !10, !noundef !10
  %i.fa = atomicrmw sub ptr %i.ez, i64 1 release, align 8, !noalias !44666
  %i.fb = icmp eq i64 %i.fa, 1
  br i1 %i.fb, label %bb.at, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit

bb.at:                                            ; preds = %bb.as
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.678.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit unwind label %bb.l

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit: ; preds = %bb.as, %bb.ap, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library4text4font12FontInstanceECs7tN9tvpkfrg_12typst_layout.exit461, %bb.aq, %bb.ar, %bb.at
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ay)
  call void @llvm.experimental.noalias.scope.decl(metadata !44667)
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 192
  %i.fd = load i64, ptr %i.fc, align 16, !range !8934, !alias.scope !44667
  %i.fe = icmp eq i64 %i.fd, 14
  %or.cond.i = select i1 %i.by, i1 %i.fe, i1 false
  br i1 %or.cond.i, label %.cont.i, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit

.cont.i:                                          ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  %i.ff = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.fg = load ptr, ptr %i.ff, align 8, !alias.scope !44667, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 136
  %.sroa.849.0.copyload.i = load i64, ptr %.sroa.849.0..sroa_idx.i, align 8, !noalias !44667
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 192 ; 2 uses
  %.sroa.1051.0.copyload.i = load i64, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !44667 ; 2 uses
  %.sroa.1152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.fg, i64 200 ; 2 uses
  %.sroa.1152.0.copyload.i = load double, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !44667
  %.not.i465 = icmp ne i64 %.sroa.849.0.copyload.i, 2
  %.not4.i = icmp eq i64 %.sroa.1051.0.copyload.i, 0
  %or.cond60.i = select i1 %.not.i465, i1 %.not4.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond60.i, i64 1, i64 %.sroa.1051.0.copyload.i
  %.sroa.9.0.i = select i1 %or.cond60.i, double %spec.store.select3, double %.sroa.1152.0.copyload.i
  store i64 %spec.select, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !44667
  store double %.sroa.9.0.i, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !44667
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit: ; preds = %.cont.i, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEBH_.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.at)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.as)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.k, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.as, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.k)
          to label %bb.au unwind label %bb.l

bb.au:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  %i.fh = load i64, ptr %i.as, align 16, !range !4106, !noundef !10 ; 4 uses
  %i.fi = icmp eq i64 %i.fh, -1
  %i.fj = getelementptr inbounds nuw i8, ptr %i.as, i64 8
  %i.fk = load ptr, ptr %i.fj, align 8            ; 2 uses
  %i.fl = getelementptr inbounds nuw i8, ptr %i.as, i64 16
  %i.fm = load i64, ptr %i.fl, align 16           ; 2 uses
  br i1 %i.fi, label %bb.av, label %bb.aw

bb.av:                                            ; preds = %bb.au
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  br label %bb.fm

bb.aw:                                            ; preds = %bb.au
  %.sroa.6196.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.as, i64 24
  %.sroa.692.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.692.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6196.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.as)
  store i64 %i.fh, ptr %i.at, align 16
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 8
  store ptr %i.fk, ptr %.sroa.490.0..sroa_idx, align 8
  %.sroa.591.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.at, i64 16
  store i64 %i.fm, ptr %.sroa.591.0..sroa_idx, align 16
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sink689 = select i1 %i.by, ptr %i.fn, ptr %2
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %.sink689, i64 24, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false)
  %.val446 = load ptr, ptr %i.ca, align 8         ; 2 uses
  %.val447 = load i64, ptr %i.cb, align 8         ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44670)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !44673
  %i.fo = icmp samesign ult i64 %i.fh, 2
  br i1 %i.fo, label %bb.ax, label %bb.ay

bb.ax:                                            ; preds = %bb.aw
  %i.fp = getelementptr inbounds nuw i8, ptr %i.at, i64 224
  %i.fq = load ptr, ptr %i.fp, align 16, !alias.scope !44670, !noalias !44675, !nonnull !10, !noundef !10 ; 2 uses
  %i.fr = atomicrmw add ptr %i.fq, i64 1 monotonic, align 8, !noalias !44673
  %i.fs = icmp slt i64 %i.fr, 0
  br i1 %i.fs, label %bb.az, label %bb.ba

bb.ay:                                            ; preds = %bb.aw
  %.not.i466 = icmp eq i64 %.val447, 0
  br i1 %.not.i466, label %bb.bb, label %bb.bc, !prof !33

bb.az:                                            ; preds = %bb.ax
  call void @llvm.trap()
  unreachable

bb.ba:                                            ; preds = %._crit_edge.i467, %bb.ax
  %i.ft = phi ptr [ %i.fq, %bb.ax ], [ %storemerge.pre.i468, %._crit_edge.i467 ] ; 5 uses
  store ptr %i.ft, ptr %i.g, align 8, !noalias !44673
  %i.fu = call i64 @llvm.usub.sat.i64(i64 %i.fh, i64 1)
  switch i64 %i.fu, label %bb.be [
    i64 0, label %bb.bg
    i64 1, label %bb.bf
  ]

bb.bb:                                            ; preds = %bb.ay
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc473 unwind label %.body474

.noexc473:                                        ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.ay
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val446) ]
  %i.fv = getelementptr [8 x i8], ptr %.val446, i64 %.val447
  %i.fw = getelementptr i8, ptr %i.fv, i64 -8     ; 2 uses
  %i.fx = load ptr, ptr %i.fw, align 8, !noalias !44673, !nonnull !10, !noundef !10
  %i.fy = atomicrmw add ptr %i.fx, i64 1 monotonic, align 8, !noalias !44673
  %i.fz = icmp slt i64 %i.fy, 0
  br i1 %i.fz, label %bb.bd, label %._crit_edge.i467

._crit_edge.i467:                                 ; preds = %bb.bc
  %storemerge.pre.i468 = load ptr, ptr %i.fw, align 8, !noalias !44673
  br label %bb.ba

bb.bd:                                            ; preds = %bb.bc
  call void @llvm.trap()
  unreachable

bb.be:                                            ; preds = %bb.ba
  %i.ga = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.ao)
          to label %bb.bj unwind label %bb.bh     ; 2 uses

bb.bf:                                            ; preds = %bb.ba
  br label %bb.bg

bb.bg:                                            ; preds = %bb.bf, %bb.ba
  %.sink.i469.sroa.phi = phi ptr [ %.sink.i469.sroa.gep, %bb.bf ], [ %.sink.i469.sroa.gep540, %bb.ba ]
  %.sroa.4.0.i470 = load double, ptr %.sink.i469.sroa.phi, align 8, !alias.scope !44670, !noalias !44675, !noundef !10
  br label %bb.bl

bb.bh:                                            ; preds = %bb.bj, %bb.be
  %i.gb = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.gc = atomicrmw sub ptr %i.ft, i64 1 release, align 8, !noalias !44676
  %i.gd = icmp eq i64 %i.gc, 1
  br i1 %i.gd, label %bb.bi, label %.body474.thread

bb.bi:                                            ; preds = %bb.bh
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.g) #58
          to label %.body474.thread unwind label %bb.bk, !noalias !44673

bb.bj:                                            ; preds = %bb.be
  %i.ge = extractvalue { double, double } %i.ga, 0
  %i.gf = extractvalue { double, double } %i.ga, 1
  %i.gg = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.ge, double noundef %i.gf, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.aq)
          to label %bb.bl unwind label %bb.bh, !noalias !44670

bb.bk:                                            ; preds = %bb.bi
  %i.gh = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !44673
  unreachable

.noexc479:                                        ; preds = %bb.bo, %bb.bn
  br i1 %.sroa.0169.2, label %.body474.thread, label %bb.k

.body474.thread567:                               ; preds = %bb.fb
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit538

.body474:                                         ; preds = %bb.bb
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body474.thread

bb.bl:                                            ; preds = %bb.bj, %bb.bg
  %.sroa.0.0.i471 = phi double [ %.sroa.4.0.i470, %bb.bg ], [ %i.gg, %bb.bj ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !44673
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  store ptr %i.ft, ptr %i.ar, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.gi = getelementptr inbounds nuw i8, ptr %i.ft, i64 184 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.ft, i64 192
  %i.gk = load atomic i32, ptr %i.gj acquire, align 4, !noalias !44683
  %i.gl = icmp eq i32 %i.gk, 0
  br i1 %i.gl, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit478, label %bb.bm, !prof !13

bb.bm:                                            ; preds = %bb.bl
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.gi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ar)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit478 unwind label %bb.bp

bb.bn:                                            ; preds = %.thread581, %bb.cv, %bb.bp
  %.sroa.0170.3 = phi i1 [ true, %bb.bp ], [ %.sroa.0170.4586, %.thread581 ], [ %.sroa.0170.5, %bb.cv ] ; 2 uses
  %.sroa.0169.2 = phi i1 [ %.sroa.0169.3, %bb.bp ], [ %.sroa.0169.4587, %.thread581 ], [ false, %bb.cv ]
  %.pn436 = phi { ptr, i32 } [ %i.gp, %bb.bp ], [ %.pn434588, %.thread581 ], [ %.pn432, %bb.cv ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44686)
  call void @llvm.experimental.noalias.scope.decl(metadata !44689)
  call void @llvm.experimental.noalias.scope.decl(metadata !44692)
  %i.gm = load ptr, ptr %i.ar, align 8, !alias.scope !44695, !nonnull !10, !noundef !10
  %i.gn = atomicrmw sub ptr %i.gm, i64 1 release, align 8, !noalias !44695
  %i.go = icmp eq i64 %i.gn, 1
  br i1 %i.go, label %bb.bo, label %.noexc479

bb.bo:                                            ; preds = %bb.bn
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcNtNtNtCsdaEETE4DqmE_13typst_library4text4font17FontInstanceInnerE9drop_slowBM_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.ar) #58
          to label %.noexc479 unwind label %bb.du

bb.bp:                                            ; preds = %.invoke, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.cs, %bb.cq, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment4fill.exit, %bb.bx, %bb.bw, %bb.bu, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit488, %bb.bt, %bb.bs, %bb.br, %bb.bq, %bb.bm, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs7tN9tvpkfrg_12typst_layout.exit
  %.sroa.0169.3 = phi i1 [ false, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke11FixedStrokeEECs7tN9tvpkfrg_12typst_layout.exit ], [ true, %_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain7get_refNtNtBa_4text8TextElemKh6_ECs7tN9tvpkfrg_12typst_layout.exit.i ], [ true, %bb.bu ], [ true, %bb.bw ], [ true, %bb.bx ], [ true, %bb.cs ], [ true, %bb.bt ], [ true, %bb.bs ], [ true, %bb.br ], [ true, %bb.bq ], [ true, %bb.bm ], [ true, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit488 ], [ true, %_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment4fill.exit ], [ true, %bb.cq ], [ true, %.invoke ]
  %i.gp = landingpad { ptr, i32 }
          cleanup
  br label %bb.bn

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit478: ; preds = %bb.bl, %bb.bm
  %i.gq = load ptr, ptr %i.gi, align 8, !nonnull !10, !noundef !10
  %i.gr = getelementptr inbounds nuw i8, ptr %i.gq, i64 352
  %i.gs = load double, ptr %i.gr, align 8, !noundef !10
  %i.gt = fmul double %.sroa.0.0.i471, %i.gs      ; 2 uses
  %i.gu = call double @llvm.fabs.f64(double %i.gt)
  %i.gv = fcmp one double %i.gu, +inf
  %spec.store.select54 = select i1 %i.gv, double %i.gt, double 0.000000e+00
  store double %spec.store.select54, ptr %i.ap, align 8
  %i.gw = load ptr, ptr %i.ar, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 184 ; 2 uses
  %i.gy = getelementptr inbounds nuw i8, ptr %i.gw, i64 192
  %i.gz = load atomic i32, ptr %i.gy acquire, align 4, !noalias !44696
  %i.ha = icmp eq i32 %i.gz, 0
  br i1 %i.ha, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit482, label %bb.bq, !prof !13

bb.bq:                                            ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit478
end_hunk_6
begin_hunk_7_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scripts:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1158)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.869)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  %i.bq = load i64, ptr %i.bp, align 16, !range !4106, !noundef !10
  %.not366 = icmp eq i64 %i.bq, -1
  br i1 %.not366, label %bb.m, label %bb.l

.thread503:                                       ; preds = %bb.ld, %bb.lf, %.thread495, %bb.on, %bb.n, %bb.h
  %.pn390 = phi { ptr, i32 } [ %i.bt, %bb.h ], [ %.pn388, %bb.on ], [ %.pn388, %bb.n ], [ %lpad.thr_comm.split-lp, %.thread495 ], [ %.pn243.i, %bb.lf ], [ %.pn243.i, %bb.ld ]
  %i.br = load ptr, ptr %i.bj, align 8, !alias.scope !45035, !noundef !10
  %i.bs = icmp eq ptr %i.br, null
  br i1 %i.bs, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.g

bb.g:                                             ; preds = %.thread503
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.bj)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.mr

bb.h:                                             ; preds = %bb.ol, %bb.oj, %bb.oi, %bb.e
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.thread503

bb.i:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aq), !noalias !45027
  %.sroa.022.0.copyload = load i64, ptr %i.ax, align 16 ; 2 uses
  %.sroa.624.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  %.sroa.624.0.copyload = load ptr, ptr %.sroa.624.0..sroa_idx, align 8 ; 3 uses
  %.sroa.727.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  %.sroa.727.0.copyload = load i64, ptr %.sroa.727.0..sroa_idx, align 16 ; 2 uses
  %.sroa.830.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.ax, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ax)
  %i.bu = icmp eq i64 %.sroa.022.0.copyload, -1
  br i1 %i.bu, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.624.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.830)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit463

bb.k:                                             ; preds = %bb.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.830, i64 280, i1 false)
  br label %bb.f

bb.l:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aw)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap), !noalias !45038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ap, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45044
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.aw, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ap)
          to label %bb.p unwind label %bb.o, !inline_history !45045

bb.m:                                             ; preds = %bb.f, %bb.r
  %i.bv = phi i64 [ %.pre, %bb.r ], [ %.sroa.08.0, %bb.f ] ; 2 uses
  %.sroa.953.0 = phi i64 [ %.sroa.766.0.copyload, %bb.r ], [ undef, %bb.f ]
  %.sroa.748.0 = phi ptr [ %.sroa.663.0.copyload, %bb.r ], [ undef, %bb.f ] ; 2 uses
  %.sroa.045.0 = phi i64 [ %.sroa.061.0.copyload, %bb.r ], [ -1, %bb.f ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869)
  %.sroa.675.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.675.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1158, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1158)
  store i64 %.sroa.045.0, ptr %i.bh, align 16
  %.sroa.473.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store ptr %.sroa.748.0, ptr %.sroa.473.0..sroa_idx, align 8
  %.sroa.574.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 16 ; 3 uses
  store i64 %.sroa.953.0, ptr %.sroa.574.0..sroa_idx, align 16
  %.not367 = icmp eq i64 %i.bv, -1
  %i.bw = ptrtoint ptr %.sroa.748.0 to i64
  %i.bx = bitcast i64 %i.bw to double
  br i1 %.not367, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit, label %bb.s

bb.n:                                             ; preds = %bb.om, %bb.w, %bb.o
  %.sroa.0261.0 = phi i8 [ %.sroa.0261.1, %bb.o ], [ %.sroa.0261.2474, %bb.om ], [ %.sroa.0261.4484, %bb.w ]
  %.pn388 = phi { ptr, i32 } [ %i.bz, %bb.o ], [ %.pn386475, %bb.om ], [ %.pn384485, %bb.w ] ; 2 uses
  %i.by = trunc nuw i8 %.sroa.0261.0 to i1
  br i1 %i.by, label %bb.on, label %.thread503

bb.o:                                             ; preds = %bb.oe, %bb.oc, %bb.ob, %bb.aj, %bb.ah, %bb.ag, %bb.l
  %.sroa.0261.1 = phi i8 [ 1, %bb.aj ], [ %.sroa.0261.7, %bb.oe ], [ 1, %bb.l ], [ 1, %bb.ag ], [ 1, %bb.ah ], [ %.sroa.0261.7, %bb.ob ], [ %.sroa.0261.7, %bb.oc ]
  %i.bz = landingpad { ptr, i32 }
          cleanup
  br label %bb.n

bb.p:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap), !noalias !45038
  %.sroa.061.0.copyload = load i64, ptr %i.aw, align 16 ; 2 uses
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 8
  %.sroa.663.0.copyload = load ptr, ptr %.sroa.663.0..sroa_idx, align 8 ; 3 uses
  %.sroa.766.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 16
  %.sroa.766.0.copyload = load i64, ptr %.sroa.766.0..sroa_idx, align 16 ; 2 uses
  %.sroa.869.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aw, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aw)
  %i.ca = icmp eq i64 %.sroa.061.0.copyload, -1
  br i1 %i.ca, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.663.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.869)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.1158)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit

bb.r:                                             ; preds = %bb.p
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1158, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.869, i64 280, i1 false)
  %.pre = load i64, ptr %i.bi, align 16, !range !4106
  br label %bb.m

bb.s:                                             ; preds = %bb.m
  %i.cb = call i64 @llvm.usub.sat.i64(i64 %i.bv, i64 1)
  switch i64 %i.cb, label %default.unreachable.i [
    i64 0, label %bb.t
    i64 1, label %bb.u
    i64 2, label %bb.v
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit
  ]

default.unreachable.i:                            ; preds = %bb.s
  unreachable

bb.t:                                             ; preds = %bb.s
  %i.cc = getelementptr inbounds nuw i8, ptr %i.bi, i64 64
  %i.cd = load double, ptr %i.cc, align 16, !alias.scope !45046, !noundef !10
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

bb.u:                                             ; preds = %bb.s
  %i.ce = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.cf = load double, ptr %i.ce, align 16, !alias.scope !45046, !noundef !10
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

bb.v:                                             ; preds = %bb.s
  %i.cg = load double, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !45046, !noundef !10
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit: ; preds = %bb.v, %bb.u, %bb.t, %bb.s, %bb.m
  %.sroa.076.0 = phi double [ 0.000000e+00, %bb.m ], [ %i.cd, %bb.t ], [ %i.cf, %bb.u ], [ %i.cg, %bb.v ], [ 0.000000e+00, %bb.s ]
  %.not368 = icmp eq i64 %.sroa.045.0, -1
  br i1 %.not368, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit, label %bb.x

bb.w:                                             ; preds = %.thread
  br i1 %.sroa.0260.2483, label %bb.om, label %bb.n

.split.thread:                                    ; preds = %bb.nx, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit, %bb.nu, %bb.nv
  %.sroa.0261.3.ph = phi i8 [ %.sroa.0261.7, %bb.nv ], [ %.sroa.0261.7, %bb.nu ], [ 1, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit ], [ 1, %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit ], [ %.sroa.0261.7, %bb.nx ]
  %lpad.thr_comm = landingpad { ptr, i32 }
          cleanup
  br label %bb.om

.thread495:                                       ; preds = %bb.mn, %bb.mo, %bb.mq
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread503

bb.x:                                             ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit
  %i.ch = call i64 @llvm.usub.sat.i64(i64 %.sroa.045.0, i64 1)
  switch i64 %i.ch, label %default.unreachable.i395 [
    i64 0, label %bb.y
    i64 1, label %bb.z
    i64 2, label %bb.aa
    i64 3, label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit
  ]

default.unreachable.i395:                         ; preds = %bb.x
  unreachable

bb.y:                                             ; preds = %bb.x
  %i.ci = getelementptr inbounds nuw i8, ptr %i.bh, i64 64
  %i.cj = load double, ptr %i.ci, align 16, !alias.scope !45049, !noundef !10
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit

bb.z:                                             ; preds = %bb.x
  %i.ck = getelementptr inbounds nuw i8, ptr %i.bh, i64 32
  %i.cl = load double, ptr %i.ck, align 16, !alias.scope !45049, !noundef !10
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit

bb.aa:                                            ; preds = %bb.x
  br label %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit

_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit: ; preds = %bb.aa, %bb.z, %bb.y, %bb.x, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit
  %.sroa.079.0 = phi double [ 0.000000e+00, %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss0_0B7_.exit ], [ %i.cj, %bb.y ], [ %i.cl, %bb.z ], [ %i.bx, %bb.aa ], [ 0.000000e+00, %bb.x ]
  %i.cm = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %.sroa.076.0, double noundef %.sroa.079.0)
          to label %bb.ab unwind label %.split.thread

bb.ab:                                            ; preds = %_RNCNvNtNtCs7tN9tvpkfrg_12typst_layout4math7scripts14layout_scriptss1_0B7_.exit
  call void @llvm.experimental.noalias.scope.decl(metadata !45052)
  %i.cn = load i64, ptr %0, align 16, !range !4641, !alias.scope !45052, !noundef !10
  %i.co = icmp samesign ult i64 %i.cn, 2          ; 2 uses
  %i.cp = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cq = load i64, ptr %i.cp, align 16, !range !8934, !alias.scope !45052
  %i.cr = icmp eq i64 %i.cq, 14
  %or.cond.i = select i1 %i.co, i1 %i.cr, i1 false
  br i1 %or.cond.i, label %.cont.i, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit

.cont.i:                                          ; preds = %bb.ab
  %i.cs = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !45052, !nonnull !10, !noundef !10 ; 3 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %i.ct, i64 16
  %.sroa.044.0.copyload.i = load i64, ptr %i.cu, align 8, !noalias !45052
  %.sroa.546.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 72 ; 2 uses
  %.sroa.546.0.copyload.i = load i64, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !45052 ; 2 uses
  %.sroa.647.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ct, i64 80 ; 2 uses
  %.sroa.647.0.copyload.i = load double, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !45052
  %.not.i = icmp ne i64 %.sroa.044.0.copyload.i, 2
  %.not4.i = icmp eq i64 %.sroa.546.0.copyload.i, 0
  %or.cond60.i = select i1 %.not.i, i1 %.not4.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond60.i, i64 1, i64 %.sroa.546.0.copyload.i
  %.sroa.6.0.i = select i1 %or.cond60.i, double %i.cm, double %.sroa.647.0.copyload.i
  store i64 %spec.select, ptr %.sroa.546.0..sroa_idx.i, align 8, !noalias !45052
  store double %.sroa.6.0.i, ptr %.sroa.647.0..sroa_idx.i, align 8, !noalias !45052
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit: ; preds = %.cont.i, %bb.ab
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ar)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ar, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.bf, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ar)
          to label %bb.ac unwind label %.split.thread

bb.ac:                                            ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ar)
  %i.cv = load i64, ptr %i.bf, align 16, !range !4106, !noundef !10 ; 2 uses
  %i.cw = icmp eq i64 %i.cv, -1
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.cy = load ptr, ptr %i.cx, align 8            ; 8 uses
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.da = load i64, ptr %i.cz, align 16           ; 8 uses
  br i1 %i.cw, label %bb.ad, label %bb.ak

bb.ad:                                            ; preds = %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  call void @llvm.experimental.noalias.scope.decl(metadata !45055)
  %i.db = load i64, ptr %i.bh, align 16, !range !4106, !alias.scope !45055, !noundef !10 ; 2 uses
  %i.dc = icmp eq i64 %i.db, -1
  br i1 %i.dc, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit, label %bb.ae

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.experimental.noalias.scope.decl(metadata !45058)
  %i.dd = call i64 @llvm.usub.sat.i64(i64 %i.db, i64 1)
  switch i64 %i.dd, label %bb.af [
    i64 0, label %bb.ah
    i64 1, label %bb.ai
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit
  ]

bb.af:                                            ; preds = %bb.ae
  %i.de = load i8, ptr %.sroa.574.0..sroa_idx, align 16, !range !299, !alias.scope !45061, !noundef !10
  %i.df = icmp eq i8 %i.de, 0
  br i1 %i.df, label %bb.ag, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit

bb.ag:                                            ; preds = %bb.af
  invoke void @_RNvXs2_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %.sroa.675.0..sroa_idx)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit unwind label %bb.o

bb.ah:                                            ; preds = %bb.ae
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment5glyph13GlyphFragmentEBJ_(ptr noalias nofree noundef nonnull align 16 dereferenceable(304) %i.bh)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit unwind label %bb.o

bb.ai:                                            ; preds = %bb.ae
  call void @llvm.experimental.noalias.scope.decl(metadata !45064)
  call void @llvm.experimental.noalias.scope.decl(metadata !45067)
  call void @llvm.experimental.noalias.scope.decl(metadata !45070)
  call void @llvm.experimental.noalias.scope.decl(metadata !45073)
  %i.dg = load ptr, ptr %.sroa.675.0..sroa_idx, align 8, !alias.scope !45076, !nonnull !10, !noundef !10
  %i.dh = atomicrmw sub ptr %i.dg, i64 1 release, align 8, !noalias !45076
  %i.di = icmp eq i64 %i.dh, 1
  br i1 %i.di, label %bb.aj, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit

bb.aj:                                            ; preds = %bb.ai
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %.sroa.675.0..sroa_idx) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit unwind label %bb.o

bb.ak:                                            ; preds = %bb.ac
  %.sroa.6299.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bf, i64 24
  %.sroa.696.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.696.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6299.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bf)
  store i64 %i.cv, ptr %i.bg, align 16
  %.sroa.494.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  store ptr %i.cy, ptr %.sroa.494.0..sroa_idx, align 8
  %.sroa.595.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16 ; 3 uses
  store i64 %i.da, ptr %.sroa.595.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11120)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8131)
  %i.dj = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  %i.dk = load i64, ptr %i.dj, align 16, !range !4106, !noundef !10
  %.not369 = icmp eq i64 %i.dk, -1
  br i1 %.not369, label %bb.am, label %bb.al

bb.al:                                            ; preds = %bb.ak
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao), !noalias !45077
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45083
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.av, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.dj, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.ao)
          to label %bb.an unwind label %.thread486, !inline_history !45084

bb.am:                                            ; preds = %bb.ak, %bb.ap
  %.sroa.9115.0 = phi i64 [ %.sroa.7128.0.copyload, %bb.ap ], [ undef, %bb.ak ]
  %.sroa.7110.0 = phi ptr [ %.sroa.6125.0.copyload, %bb.ap ], [ undef, %bb.ak ]
  %.sroa.0107.0 = phi i64 [ %.sroa.0123.0.copyload, %bb.ap ], [ -1, %bb.ak ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8131)
  %.sroa.6137.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 24 ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6137.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11120, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11120)
  store i64 %.sroa.0107.0, ptr %i.be, align 16
  %.sroa.4135.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr %.sroa.7110.0, ptr %.sroa.4135.0..sroa_idx, align 8
  %.sroa.5136.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 4 uses
  store i64 %.sroa.9115.0, ptr %.sroa.5136.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bd)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(304) %i.bd, ptr noundef nonnull align 16 dereferenceable(304) %i.bi, i64 304, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bc)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11161)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8172)
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 720 ; 2 uses
  %i.dm = load i64, ptr %i.dl, align 16, !range !4106, !noundef !10
  %.not370 = icmp eq i64 %i.dm, -1
  br i1 %.not370, label %bb.ar, label %bb.aq

.thread486:                                       ; preds = %bb.al, %bb.mi, %bb.mj, %bb.ml, %bb.ng, %bb.nh, %bb.nj, %bb.np, %bb.nq, %bb.ns
  %.sroa.0260.3 = phi i1 [ true, %bb.ns ], [ true, %bb.nj ], [ false, %bb.ml ], [ true, %bb.al ], [ false, %bb.mi ], [ false, %bb.mj ], [ true, %bb.ng ], [ true, %bb.nh ], [ true, %bb.np ], [ true, %bb.nq ]
  %.sroa.0261.5 = phi i8 [ 0, %bb.ns ], [ 0, %bb.nj ], [ 0, %bb.ml ], [ 1, %bb.al ], [ 0, %bb.mi ], [ 0, %bb.mj ], [ 0, %bb.ng ], [ 0, %bb.nh ], [ 0, %bb.np ], [ 0, %bb.nq ]
  %i.dn = landingpad { ptr, i32 }
          cleanup
  br label %.thread

bb.an:                                            ; preds = %bb.al
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ao), !noalias !45077
  %.sroa.0123.0.copyload = load i64, ptr %i.av, align 16 ; 2 uses
  %.sroa.6125.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 8
  %.sroa.6125.0.copyload = load ptr, ptr %.sroa.6125.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 16
  %.sroa.7128.0.copyload = load i64, ptr %.sroa.7128.0..sroa_idx, align 16 ; 2 uses
  %.sroa.8131.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.av, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8131, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8131.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.do = icmp eq i64 %.sroa.0123.0.copyload, -1
  br i1 %i.do, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6125.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8131)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11120)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_.exit450

bb.ap:                                            ; preds = %bb.an
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11120, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8131, i64 280, i1 false)
  br label %bb.am

bb.aq:                                            ; preds = %bb.am
  call void @llvm.lifetime.start.p0(ptr nonnull %i.au)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an), !noalias !45085
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.an, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !45091
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef nonnull align 16 captures(none) dereferenceable(304) %i.au, ptr noalias nofree noundef nonnull align 8 dereferenceable(80) %1, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.dl, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.an)
          to label %bb.at unwind label %bb.as, !inline_history !45092

bb.ar:                                            ; preds = %bb.am, %bb.bb
  %.sroa.9156.0 = phi i64 [ %.sroa.7169.0.copyload, %bb.bb ], [ undef, %bb.am ]
  %.sroa.7151.0 = phi ptr [ %.sroa.6166.0.copyload, %bb.bb ], [ undef, %bb.am ]
  %.sroa.0148.0 = phi i64 [ %.sroa.0164.0.copyload, %bb.bb ], [ -1, %bb.am ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8172)
  %.sroa.6178.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 24 ; 7 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.6178.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.11161, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11161)
  store i64 %.sroa.0148.0, ptr %i.bc, align 16
  %.sroa.4176.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 8
  store ptr %.sroa.7151.0, ptr %.sroa.4176.0..sroa_idx, align 8
  %.sroa.5177.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bc, i64 16 ; 3 uses
  store i64 %.sroa.9156.0, ptr %.sroa.5177.0..sroa_idx, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bb)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.11202)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8213)
  %i.dp = getelementptr inbounds nuw i8, ptr %0, i64 576 ; 2 uses
  %i.dq = load i64, ptr %i.dp, align 16, !range !4106, !noundef !10
  %.not371 = icmp eq i64 %i.dq, -1
  br i1 %.not371, label %bb.bd, label %bb.bc

bb.as:                                            ; preds = %bb.aq
  %i.dr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCs7tN9tvpkfrg_12typst_layout4math8fragment12MathFragmentEEB13_(ptr noalias nofree noundef align 16 dereferenceable(304) %i.bd) #54
          to label %bb.ny unwind label %bb.mr

bb.at:                                            ; preds = %bb.aq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.an), !noalias !45085
  %.sroa.0164.0.copyload = load i64, ptr %i.au, align 16 ; 2 uses
  %.sroa.6166.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %.sroa.6166.0.copyload = load ptr, ptr %.sroa.6166.0..sroa_idx, align 8 ; 9 uses
  %.sroa.7169.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %.sroa.7169.0.copyload = load i64, ptr %.sroa.7169.0..sroa_idx, align 16 ; 8 uses
  %.sroa.8172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.au, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8172, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.8172.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.au)
  %i.ds = icmp eq i64 %.sroa.0164.0.copyload, -1
  br i1 %i.ds, label %bb.au, label %bb.bb

bb.au:                                            ; preds = %bb.at
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6166.0.copyload) ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8172)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11161)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bc)
  call void @llvm.experimental.noalias.scope.decl(metadata !45093)
  %i.dt = load i64, ptr %i.bd, align 16, !range !4106, !alias.scope !45093, !noundef !10 ; 2 uses
  %i.du = icmp eq i64 %i.dt, -1
end_hunk_7
begin_hunk_8_@_RNvNtNtCs7tN9tvpkfrg_12typst_layout4math8fraction22layout_skewed_fraction:bb.a
  %i.y = load atomic i8, ptr @_RNvCsiNFdexS2GJ6_12typst_timing7ENABLED monotonic, align 1
  %.not = icmp eq i8 %i.y, 0
  br i1 %.not, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.v, align 8
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @_RNvMCsiNFdexS2GJ6_12typst_timingNtB2_11TimingScope8new_impl(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.v, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @643, i64 noundef 27, i64 noundef %i.x)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val210 = load i64, ptr %i.z, align 8, !noundef !10 ; 2 uses
  %.not.i = icmp eq i64 %.val210, 0
  br i1 %.not.i, label %bb.e, label %bb.h, !prof !33

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @295) #53
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.e
  unreachable

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228: ; preds = %bb.al, %.body, %bb.u, %bb.aw, %bb.ax, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit225, %bb.p, %bb.g
  %.pn208 = phi { ptr, i32 } [ %i.ac, %bb.g ], [ %.pn.pn236, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit225 ], [ %.pn243, %bb.p ], [ %.pn206231, %bb.ax ], [ %.pn206231, %bb.aw ], [ %lpad.thr_comm, %bb.u ], [ %lpad.thr_comm.split-lp, %.body ], [ %i.fa, %bb.al ]
  %i.aa = load ptr, ptr %i.v, align 8, !alias.scope !45848, !noundef !10
  %i.ab = icmp eq ptr %i.aa, null
  br i1 %i.ab, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit, label %bb.f

bb.f:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228
  invoke void @_RNvXs_CsiNFdexS2GJ6_12typst_timingNtB4_11TimingScopeNtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4drop(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.v)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtCsiNFdexS2GJ6_12typst_timing11TimingScopeEECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.aq

bb.g:                                             ; preds = %bb.at, %bb.i, %bb.e, %bb.n, %bb.k, %bb.j, %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228

bb.h:                                             ; preds = %bb.d
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val = load ptr, ptr %i.ad, align 8, !nonnull !10, !noundef !10
  %i.ae = getelementptr [8 x i8], ptr %.val, i64 %.val210
  %i.af = getelementptr i8, ptr %i.ae, i64 -8     ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !nonnull !10, !noundef !10 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 184 ; 2 uses
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 192
  %i.aj = load atomic i32, ptr %i.ai acquire, align 4, !noalias !45851
  %i.ak = icmp eq i32 %i.aj, 0
  br i1 %i.ak, label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit, label %bb.i, !prof !13

bb.i:                                             ; preds = %bb.h
  invoke fastcc void @_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE10initializeNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull align 8 %i.ah, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.af)
          to label %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit unwind label %bb.g

_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.h, %bb.i
  %i.al = load ptr, ptr %i.ah, align 8, !nonnull !10, !noundef !10 ; 3 uses
  %i.am = invoke fastcc { double, double } @_RINvMsk_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesNtB6_10StyleChain10get_clonedNtNtBa_4text8TextElemKh5_ECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %2)
          to label %bb.j unwind label %bb.g       ; 2 uses

bb.j:                                             ; preds = %_RINvMNtNtCsaL1QbXo9JQH_3std4sync9once_lockINtB3_8OnceLockINtNtCs1xwejQucwHj_5alloc5boxed3BoxNtNtNtNtCsdaEETE4DqmE_13typst_library4text4font7metrics13MathConstantsEE15get_or_try_initNCINvB2_11get_or_initNCNvMs3_B1w_NtB1w_12FontInstance4math0E0zECs7tN9tvpkfrg_12typst_layout.exit
  %i.an = extractvalue { double, double } %i.am, 0
  %i.ao = extractvalue { double, double } %i.am, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  %i.ap = invoke noundef double @_RNvXs8_NtCsdaEETE4DqmE_13typst_library4textNtB5_8TextSizeNtNtNtB7_11foundations6styles7Resolve7resolve(double noundef %i.an, double noundef %i.ao, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.k unwind label %bb.g       ; 3 uses

bb.k:                                             ; preds = %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 272
  %i.ar = load double, ptr %i.aq, align 8, !noundef !10
  %i.as = fmul double %i.ap, %i.ar                ; 2 uses
  %i.at = call double @llvm.fabs.f64(double %i.as)
  %i.au = fcmp one double %i.at, +inf
  %spec.store.select30 = select i1 %i.au, double %i.as, double 0.000000e+00 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 280
  %i.aw = load double, ptr %i.av, align 8, !noundef !10
  %i.ax = fmul double %i.ap, %i.aw                ; 2 uses
  %i.ay = call double @llvm.fabs.f64(double %i.ax)
  %i.az = fcmp one double %i.ay, +inf
  %spec.store.select32 = select i1 %i.az, double %i.ax, double 0.000000e+00 ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.bb = load double, ptr %i.ba, align 8, !noundef !10
  %i.bc = fmul double %i.ap, %i.bb                ; 2 uses
  %i.bd = call double @llvm.fabs.f64(double %i.bc)
  %i.be = fcmp one double %i.bd, +inf
  %spec.store.select31 = select i1 %i.be, double %i.bc, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.t, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.d)
          to label %bb.l unwind label %bb.g

bb.l:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.bf = load i64, ptr %i.t, align 16, !range !4106, !noundef !10 ; 2 uses
  %i.bg = icmp eq i64 %i.bf, -1
  %i.bh = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8            ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.bk = load i64, ptr %i.bj, align 16           ; 2 uses
  br i1 %i.bg, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit223

bb.n:                                             ; preds = %bb.l
  %.sroa.680.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  %.sroa.10.0..sroa_idx39 = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.10.0..sroa_idx39, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.680.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  store i64 %i.bf, ptr %i.s, align 16
  %.sroa.6.0..sroa_idx35 = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.bi, ptr %.sroa.6.0..sroa_idx35, align 8
  %.sroa.8.0..sroa_idx37 = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %i.bk, ptr %.sroa.8.0..sroa_idx37, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.u, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.s)
          to label %bb.o unwind label %bb.g

bb.o:                                             ; preds = %bb.n
  %i.bl = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.bm = load double, ptr %i.bl, align 8, !noundef !10 ; 3 uses
  %i.bn = getelementptr inbounds nuw i8, ptr %i.u, i64 32
  %i.bo = load double, ptr %i.bn, align 8, !noundef !10 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.bp = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.q, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.bp, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.q unwind label %.thread

bb.p:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit221
  br i1 %.sroa.063.2244, label %bb.aw, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228

.thread:                                          ; preds = %bb.o, %bb.s, %bb.x
  %i.bq = landingpad { ptr, i32 }
          cleanup
  br label %bb.aw

bb.q:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.br = load i64, ptr %i.q, align 16, !range !4106, !noundef !10 ; 2 uses
  %i.bs = icmp eq i64 %i.br, -1
  %i.bt = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  %i.bu = load ptr, ptr %i.bt, align 8            ; 2 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  %i.bw = load i64, ptr %i.bv, align 16           ; 2 uses
  br i1 %i.bs, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.s:                                             ; preds = %bb.q
  %.sroa.684.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  %.sroa.1048.0..sroa_idx49 = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1048.0..sroa_idx49, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.684.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q)
  store i64 %i.br, ptr %i.p, align 16
  %.sroa.642.0..sroa_idx43 = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.bu, ptr %.sroa.642.0..sroa_idx43, align 8
  %.sroa.845.0..sroa_idx46 = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  store i64 %i.bw, ptr %.sroa.845.0..sroa_idx46, align 16
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.r, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.p)
          to label %bb.t unwind label %.thread

bb.t:                                             ; preds = %bb.s
  %i.bx = getelementptr inbounds nuw i8, ptr %i.r, i64 24
  %i.by = load double, ptr %i.bx, align 8, !noundef !10
  %i.bz = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.cb = fadd double %i.bo, %i.ca                ; 2 uses
  %.inv = fcmp ord double %i.cb, 0.000000e+00
  %spec.store.select3 = select i1 %.inv, double %i.cb, double 0.000000e+00
  %i.cc = fadd double %spec.store.select30, %spec.store.select3 ; 2 uses
  store double %i.cc, ptr %i.o, align 8
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 288 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45854)
  %i.ce = load i64, ptr %i.cd, align 16, !range !4641, !alias.scope !45854, !noundef !10
  %i.cf = icmp samesign ult i64 %i.ce, 2
  %i.cg = getelementptr inbounds nuw i8, ptr %0, i64 336
  %i.ch = load i64, ptr %i.cg, align 16, !range !8934, !alias.scope !45854
  %i.ci = icmp eq i64 %i.ch, 14
  %or.cond.i = select i1 %i.cf, i1 %i.ci, i1 false
  br i1 %or.cond.i, label %.cont.i, label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit

.cont.i:                                          ; preds = %bb.t
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 344
  %i.ck = load ptr, ptr %i.cj, align 8, !alias.scope !45854, !nonnull !10, !noundef !10 ; 3 uses
  %.sroa.849.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 136
  %.sroa.849.0.copyload.i = load i64, ptr %.sroa.849.0..sroa_idx.i, align 8, !noalias !45854
  %.sroa.1051.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 192 ; 2 uses
  %.sroa.1051.0.copyload.i = load i64, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !45854 ; 2 uses
  %.sroa.1152.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.ck, i64 200 ; 2 uses
  %.sroa.1152.0.copyload.i = load double, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !45854
  %.not.i215 = icmp ne i64 %.sroa.849.0.copyload.i, 2
  %.not4.i = icmp eq i64 %.sroa.1051.0.copyload.i, 0
  %or.cond60.i = select i1 %.not.i215, i1 %.not4.i, i1 false ; 2 uses
  %spec.select = select i1 %or.cond60.i, i64 1, i64 %.sroa.1051.0.copyload.i
  %.sroa.9.0.i = select i1 %or.cond60.i, double %i.cc, double %.sroa.1152.0.copyload.i
  store i64 %spec.select, ptr %.sroa.1051.0..sroa_idx.i, align 8, !noalias !45854
  store double %.sroa.9.0.i, ptr %.sroa.1152.0..sroa_idx.i, align 8, !noalias !45854
  br label %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit

bb.u:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit219
  br i1 %.sroa.062.2.ph, label %bb.au, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228

.thread232:                                       ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit, %bb.y
  %i.cl = landingpad { ptr, i32 }
          cleanup
  br label %bb.au

_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit: ; preds = %.cont.i, %bb.t
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  invoke fastcc void @_RNvMNtCs7tN9tvpkfrg_12typst_layout4mathNtB2_11MathContext20layout_into_fragment(ptr noalias nofree noundef align 16 captures(none) dereferenceable(304) %i.n, ptr noalias nofree noundef align 8 dereferenceable(80) %1, ptr noalias nofree noundef readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.cd, ptr noalias nofree noundef align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.v unwind label %.thread232

bb.v:                                             ; preds = %_RNvMs1_NtNtNtCsdaEETE4DqmE_13typst_library4math2ir4itemNtB5_8MathItem23set_stretch_relative_to.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.cm = load i64, ptr %i.n, align 16, !range !4106, !noundef !10 ; 2 uses
  %i.cn = icmp eq i64 %i.cm, -1
  %i.co = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  %i.cp = load ptr, ptr %i.co, align 8            ; 3 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  %i.cr = load i64, ptr %i.cq, align 16           ; 3 uses
  br i1 %i.cn, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  call void @llvm.experimental.noalias.scope.decl(metadata !45857)
  %i.cs = getelementptr inbounds nuw i8, ptr %i.r, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45860)
  call void @llvm.experimental.noalias.scope.decl(metadata !45863)
  %i.ct = load ptr, ptr %i.cs, align 8, !alias.scope !45866, !nonnull !10, !noundef !10
  %i.cu = atomicrmw sub ptr %i.ct, i64 1 release, align 8, !noalias !45866
  %i.cv = icmp eq i64 %i.cu, 1
  br i1 %i.cv, label %bb.x, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit

bb.x:                                             ; preds = %bb.w
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtCs6xpQEr8gLsQ_11typst_utils4hash8LazyHashINtNtB7_3vec3VecTNtNtNtCsdaEETE4DqmE_13typst_library6layout5point5PointNtNtB1L_5frame9FrameItemEEEE9drop_slowB1N_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.cs) #58
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit unwind label %.thread

bb.y:                                             ; preds = %bb.v
  %.sroa.694.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  %.sroa.1058.0..sroa_idx59 = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(280) %.sroa.1058.0..sroa_idx59, ptr noundef nonnull align 8 dereferenceable(280) %.sroa.694.0..sroa_idx, i64 280, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  store i64 %i.cm, ptr %i.m, align 16
  %.sroa.652.0..sroa_idx53 = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.cp, ptr %.sroa.652.0..sroa_idx53, align 8
  %.sroa.855.0..sroa_idx56 = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.cr, ptr %.sroa.855.0..sroa_idx56, align 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  invoke fastcc void @_RNvMNtNtCs7tN9tvpkfrg_12typst_layout4math8fragmentNtB2_12MathFragment10into_frame(ptr noalias nofree noundef align 8 captures(address) dereferenceable(48) %i.l, ptr noalias nofree noundef readonly align 16 captures(address) dereferenceable(304) %i.m)
          to label %bb.z unwind label %.thread232

bb.z:                                             ; preds = %bb.y
  %i.cw = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.cx = load double, ptr %i.cw, align 8, !noundef !10 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.cz = load double, ptr %i.cy, align 8, !noundef !10 ; 3 uses
  %i.da = load double, ptr %i.o, align 8, !noundef !10 ; 2 uses
  %i.db = fneg double %i.da
  %i.dc = fcmp uno double %i.da, 0.000000e+00
  %spec.store.select5 = select i1 %i.dc, double 0.000000e+00, double %i.db
  %i.dd = fadd double %i.cz, %spec.store.select5  ; 2 uses
  %.inv188 = fcmp ord double %i.dd, 0.000000e+00
  %spec.store.select6 = select i1 %.inv188, double %i.dd, double 0.000000e+00
  %i.de = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef 0.000000e+00, double noundef %spec.store.select6)
          to label %bb.aa unwind label %.thread238

.thread238:                                       ; preds = %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae
  %i.df = landingpad { ptr, i32 }
          cleanup
  br label %bb.ar

bb.aa:                                            ; preds = %bb.z
  %i.dg = fmul double %i.de, 5.000000e-01         ; 2 uses
  %.inv189 = fcmp ord double %i.dg, 0.000000e+00
  %spec.store.select7 = select i1 %.inv189, double %i.dg, double 0.000000e+00 ; 2 uses
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs7set_max(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o, double noundef %i.cz)
          to label %bb.ab unwind label %.thread238

bb.ab:                                            ; preds = %bb.aa
  %i.dh = fmul nnan double %spec.store.select32, 5.000000e-01
  %i.di = fadd double %i.dh, %i.bm                ; 2 uses
  %.inv190 = fcmp ord double %i.di, 0.000000e+00
  %spec.store.select9 = select i1 %.inv190, double %i.di, double 0.000000e+00
  %i.dj = load double, ptr %i.o, align 8, !noundef !10
  %i.dk = fmul double %i.dj, 5.000000e-01         ; 2 uses
  %.inv191 = fcmp ord double %i.dk, 0.000000e+00
  %spec.store.select10 = select i1 %.inv191, double %i.dk, double 0.000000e+00
  %i.dl = fmul double %i.cx, 5.000000e-01         ; 2 uses
  %.inv192 = fcmp ord double %i.dl, 0.000000e+00
  %i.dm = fmul double %i.cz, 5.000000e-01         ; 2 uses
  %.inv193 = fcmp ord double %i.dm, 0.000000e+00
  %.neg = fneg double %i.dl
  %i.dn = select i1 %.inv192, double %.neg, double -0.000000e+00
  %.neg267 = fneg double %i.dm
  %i.do = select i1 %.inv193, double %.neg267, double -0.000000e+00
  %i.dp = fadd double %spec.store.select9, %i.dn  ; 2 uses
  %.inv.i = fcmp ord double %i.dp, 0.000000e+00
  %spec.store.select2.i = select i1 %.inv.i, double %i.dp, double 0.000000e+00 ; 4 uses
  %i.dq = fadd double %i.do, %spec.store.select10 ; 2 uses
  %.inv15.i = fcmp ord double %i.dq, 0.000000e+00
  %i.dr = fadd double %i.bm, 0.000000e+00
  %i.ds = fcmp uno double %i.bm, 0.000000e+00
  %spec.store.select13 = select i1 %i.ds, double 0.000000e+00, double %i.dr
  %i.dt = fadd double %i.bo, %spec.store.select7  ; 2 uses
  %.inv194 = fcmp ord double %i.dt, 0.000000e+00
  %spec.store.select14 = select i1 %.inv194, double %i.dt, double 0.000000e+00
  %i.du = fadd double %spec.store.select32, %spec.store.select13 ; 2 uses
  %.inv195 = fcmp ord double %i.du, 0.000000e+00
  %spec.store.select15 = select i1 %.inv195, double %i.du, double 0.000000e+00 ; 2 uses
  %i.dv = fadd double %spec.store.select30, %spec.store.select14 ; 2 uses
  %.inv196 = fcmp ord double %i.dv, 0.000000e+00
  %i.dw = fadd double %spec.store.select15, %i.by ; 2 uses
  %.inv197 = fcmp ord double %i.dw, 0.000000e+00
  %spec.store.select17 = select i1 %.inv197, double %i.dw, double 0.000000e+00
  %i.dx = fadd double %i.cx, %spec.store.select2.i ; 2 uses
  %.inv198 = fcmp ord double %i.dx, 0.000000e+00
  %spec.store.select18 = select i1 %.inv198, double %i.dx, double 0.000000e+00
  %i.dy = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef %spec.store.select17, double noundef %spec.store.select18)
          to label %bb.ac unwind label %.thread238

bb.ac:                                            ; preds = %bb.ab
  %i.dz = fneg double %spec.store.select2.i
  %i.ea = fcmp uno double %spec.store.select2.i, 0.000000e+00
  %spec.store.select19 = select i1 %i.ea, double 0.000000e+00, double %i.dz ; 2 uses
  %i.eb = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef 0.000000e+00, double noundef %spec.store.select19)
          to label %bb.ad unwind label %.thread238

bb.ad:                                            ; preds = %bb.ac
  %i.ec = invoke noundef double @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout3absNtB2_3Abs3max(double noundef 0.000000e+00, double noundef %spec.store.select19)
          to label %bb.ae unwind label %.thread238 ; 4 uses

bb.ae:                                            ; preds = %bb.ad
  %i.ed = fadd double %i.dy, %i.eb                ; 2 uses
  %.inv199 = fcmp ord double %i.ed, 0.000000e+00
  %spec.store.select20 = select i1 %.inv199, double %i.ed, double 0.000000e+00
  %i.ee = fadd double %spec.store.select2.i, %i.ec ; 2 uses
  %.inv200 = fcmp ord double %i.ee, 0.000000e+00
  %spec.store.select22 = select i1 %.inv200, double %i.ee, double 0.000000e+00
  %i.ef = fadd double %i.dq, 0.000000e+00
  %i.eg = select i1 %.inv15.i, double %i.ef, double 0.000000e+00
  %i.eh = fadd double %spec.store.select15, %i.ec ; 2 uses
  %.inv201 = fcmp ord double %i.eh, 0.000000e+00
  %spec.store.select26 = select i1 %.inv201, double %i.eh, double 0.000000e+00
  %i.ei = fadd double %i.dv, 0.000000e+00
  %i.ej = select i1 %.inv196, double %i.ei, double 0.000000e+00 ; 2 uses
  %.inv202 = fcmp ord double %i.ej, 0.000000e+00
  %spec.store.select27 = select i1 %.inv202, double %i.ej, double 0.000000e+00
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  %i.ek = load double, ptr %i.o, align 8, !noundef !10
  invoke void @_RNvMNtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB2_5Frame4soft(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.k, double noundef %spec.store.select20, double noundef %i.ek, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @644)
          to label %bb.af unwind label %.thread238

bb.af:                                            ; preds = %bb.ae
  %i.el = fadd double %spec.store.select7, 0.000000e+00
  %i.em = fcmp uno double %i.ec, 0.000000e+00
  %i.en = fadd double %i.ec, 0.000000e+00
  %spec.store.select24 = select i1 %i.em, double 0.000000e+00, double %i.en
  %i.eo = load double, ptr %i.o, align 8, !noundef !10
  %i.ep = fmul double %i.eo, 5.000000e-01         ; 2 uses
  %.inv203 = fcmp ord double %i.ep, 0.000000e+00
  %spec.store.select28 = select i1 %.inv203, double %i.ep, double 0.000000e+00
  %i.eq = fadd double %spec.store.select31, %spec.store.select28
  store i64 1, ptr %i.k, align 8
  %i.er = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store double %i.eq, ptr %i.er, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.j, ptr noundef nonnull align 8 dereferenceable(48) %i.u, i64 48, i1 false)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k, double noundef %spec.store.select24, double noundef %i.el, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.j)
          to label %bb.ag unwind label %bb.ao

.body:                                            ; preds = %bb.ai
  %lpad.thr_comm.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library6layout5frame5FrameECs7tN9tvpkfrg_12typst_layout.exit228

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.r, i64 48, i1 false)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k, double noundef %spec.store.select26, double noundef %spec.store.select27, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.i)
          to label %bb.ah unwind label %bb.ao

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.h, ptr noundef nonnull align 8 dereferenceable(48) %i.l, i64 48, i1 false)
  invoke void @_RNvMs_NtNtCsdaEETE4DqmE_13typst_library6layout5frameNtB4_5Frame10push_frame(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.k, double noundef %spec.store.select22, double noundef %i.eg, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.h)
          to label %bb.ai unwind label %bb.ao

bb.ai:                                            ; preds = %bb.ah
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
end_hunk_8
begin_hunk_9_@_RNvXs_NvNtNtCsdaEETE4DqmE_13typst_library13introspection12introspector1__DNtB6_12IntrospectorEL_NtNtCsloFShupyl5J_6comemo5track5Track4call:bb.a
  br label %bb.bk
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef i128 @_RNvXs_NvNtNtCsdaEETE4DqmE_13typst_library13introspection7locator1__NtB6_7LocatorNtNtCsloFShupyl5J_6comemo5track5Track4call(ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [16 x i8], align 16               ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 15 uses
  %i.d = alloca [32 x i8], align 16               ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @_RNvMs4_NtNtCsdaEETE4DqmE_13typst_library13introspection7locatorNtB5_7Locator7resolve(ptr noalias nofree noundef nonnull sret([32 x i8]) align 16 captures(address) dereferenceable(32) %i.d, ptr noalias nofree noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(32) %0)
  call void @llvm.experimental.noalias.scope.decl(metadata !52095)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !52095
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 3 uses
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %.sroa.12.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48 ; 3 uses
  %.sroa.14.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 56 ; 3 uses
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 64 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !52098)
  call void @llvm.experimental.noalias.scope.decl(metadata !52101)
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx.i, i8 0, i64 40, i1 false), !noalias !52095
  %i.e = load i64, ptr %i.d, align 16, !range !285, !alias.scope !52103, !noalias !52101, !noundef !10 ; 5 uses
  store i64 8, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !52104, !noalias !52103
  %i.f = xor i64 %i.e, 110374107243891
  %i.g = sub nuw nsw i64 -2243131504935184428, %i.e
  %i.h = call noundef i64 @llvm.fshl.i64(i64 %i.f, i64 8387220255154660722, i64 16)
  %i.i = xor i64 %i.h, %i.g                       ; 2 uses
  %i.j = add i64 %i.i, -2389206912058073146       ; 2 uses
  %i.k = call noundef i64 @llvm.fshl.i64(i64 %i.i, i64 -8882027881020349520, i64 21)
  %i.l = xor i64 %i.k, %i.j
  store i64 %i.l, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !52111, !noalias !52103
  %i.m = sub nuw nsw i64 1905512827985170505, %i.e ; 2 uses
  %i.n = xor i64 %i.m, -2011800273400728795
  store i64 %i.n, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !52111, !noalias !52103
  %i.o = call noundef i64 @llvm.fshl.i64(i64 %i.m, i64 1905512827985170504, i64 32)
  store i64 %i.o, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !52111, !noalias !52103
  %i.p = xor i64 %i.j, %i.e
  store i64 %i.p, ptr %i.c, align 8, !alias.scope !52104, !noalias !52103
  %i.q = trunc nuw i64 %i.e to i1
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.s = load i128, ptr %i.r, align 16, !alias.scope !52103, !noalias !52101, !noundef !10 ; 2 uses
  br i1 %i.q, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !52114
  store i128 %i.s, ptr %i.b, align 16, !noalias !52114
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.b, i64 noundef 16) #59, !noalias !52103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !52114
  %i.t = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.u = load i64, ptr %i.t, align 8, !range !290, !alias.scope !52103, !noalias !52101, !noundef !10 ; 2 uses
  %i.v = load i64, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103, !noundef !10
  %i.w = add i64 %i.v, 8
  store i64 %i.w, ptr %.sroa.12.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103
  %i.x = load i64, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103, !noundef !10 ; 4 uses
  %i.y = shl i64 %i.x, 3                          ; 2 uses
  %i.z = and i64 %i.y, 56
  %i.aa = shl i64 %i.u, %i.z
  %i.ab = load i64, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103, !noundef !10
  %i.ac = or i64 %i.aa, %i.ab                     ; 3 uses
  store i64 %i.ac, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103
  %i.ad = icmp ugt i64 %i.x, 8
  br i1 %i.ad, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103, !noundef !10
  %i.af = xor i64 %i.ae, %i.ac                    ; 3 uses
  %i.ag = load i64, ptr %i.c, align 8, !alias.scope !52122, !noalias !52103, !noundef !10
  %i.ah = load i64, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !52122, !noalias !52103, !noundef !10 ; 3 uses
  %i.ai = add i64 %i.ah, %i.ag                    ; 3 uses
  %i.aj = call noundef i64 @llvm.fshl.i64(i64 %i.ah, i64 %i.ah, i64 13)
  %i.ak = xor i64 %i.aj, %i.ai                    ; 3 uses
  %i.al = call noundef i64 @llvm.fshl.i64(i64 %i.ai, i64 %i.ai, i64 32)
  %i.am = load i64, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !52122, !noalias !52103, !noundef !10
  %i.an = add i64 %i.am, %i.af                    ; 2 uses
  %i.ao = call noundef i64 @llvm.fshl.i64(i64 %i.af, i64 %i.af, i64 16)
  %i.ap = xor i64 %i.an, %i.ao                    ; 3 uses
  %i.aq = add i64 %i.ap, %i.al                    ; 2 uses
  %i.ar = call noundef i64 @llvm.fshl.i64(i64 %i.ap, i64 %i.ap, i64 21)
  %i.as = xor i64 %i.ar, %i.aq
  store i64 %i.as, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !52122, !noalias !52103
  %i.at = add i64 %i.an, %i.ak                    ; 3 uses
  %i.au = call noundef i64 @llvm.fshl.i64(i64 %i.ak, i64 %i.ak, i64 17)
  %i.av = xor i64 %i.at, %i.au
  store i64 %i.av, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !52122, !noalias !52103
  %i.aw = call noundef i64 @llvm.fshl.i64(i64 %i.at, i64 %i.at, i64 32)
  store i64 %i.aw, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !52122, !noalias !52103
  %i.ax = xor i64 %i.aq, %i.ac
  store i64 %i.ax, ptr %i.c, align 8, !alias.scope !52117, !noalias !52103
  %.not.i.i.i.i = icmp eq i64 %i.x, 0
  %i.ay = sub nuw nsw i64 64, %i.y
  %i.az = lshr i64 %i.u, %i.ay
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i64 0, i64 %i.az
  store i64 %.sroa.0.0.i.i.i.i, ptr %.sroa.14.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103
  br label %_RINvNtCsloFShupyl5J_6comemo4hash4hashNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator8ResolvedECs7tN9tvpkfrg_12typst_layout.exit

bb.d:                                             ; preds = %bb.b
  %i.ba = add i64 %i.x, 8
  store i64 %i.ba, ptr %.sroa.15.0..sroa_idx.i, align 8, !alias.scope !52117, !noalias !52103
  br label %_RINvNtCsloFShupyl5J_6comemo4hash4hashNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator8ResolvedECs7tN9tvpkfrg_12typst_layout.exit

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52125
  store i128 %i.s, ptr %i.a, align 16, !noalias !52125
  call fastcc void @_RNvXsb_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsENtNtCs3oUPovFnLWP_4core4hash6Hasher5writeCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(72) %i.c, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %i.a, i64 noundef 16) #59, !noalias !52103
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !52125
  br label %_RINvNtCsloFShupyl5J_6comemo4hash4hashNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator8ResolvedECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCsloFShupyl5J_6comemo4hash4hashNtNtNtCsdaEETE4DqmE_13typst_library13introspection7locator8ResolvedECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.c, %bb.d, %bb.e
  %i.bb = call fastcc { i64, i64 } @_RNvMs7_NtCs83m0le5ggt2_9siphasher6sip128INtB5_6HasherNtB5_11Sip13RoundsE9finish128Cs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.c) #59, !noalias !52095 ; 2 uses
  %i.bc = extractvalue { i64, i64 } %i.bb, 0
  %i.bd = extractvalue { i64, i64 } %i.bb, 1
  %i.be = zext i64 %i.bc to i128
  %i.bf = zext i64 %i.bd to i128
  %i.bg = shl nuw i128 %i.bf, 64
  %i.bh = or disjoint i128 %i.bg, %i.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !52095
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret i128 %i.bh
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB9_9visualize6stroke6StrokeEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !545, !noundef !10
  %.not = icmp eq i64 %i.c, -1
  %i.d = load i64, ptr %i.b, align 8, !range !545 ; 2 uses
  %.not1 = icmp eq i64 %i.d, -1
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  switch i64 %i.d, label %bb.d [
    i64 -1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeEECs7tN9tvpkfrg_12typst_layout.exit
    i64 2, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeEECs7tN9tvpkfrg_12typst_layout.exit
  ]

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXsv_NtNtCsdaEETE4DqmE_13typst_library11foundations6stylesINtNtCs3oUPovFnLWP_4core6option6OptionNtNtNtB9_9visualize6stroke6StrokeENtB5_4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(112) %2)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeEECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeEECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.b, %bb.b, %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !1276, !alias.scope !52128, !noundef !10
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val2.i.i = load i64, ptr %i.i, align 8, !range !698, !alias.scope !52135, !noundef !10 ; 2 uses
  %i.j = icmp sgt i64 %.val2.i.i, 0
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.val3.i.i = load ptr, ptr %i.k, align 8, !alias.scope !52135, !nonnull !10, !noundef !10
  %i.l = mul nuw i64 %.val2.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val.i.i = load i64, ptr %i.m, align 8, !range !698, !alias.scope !52135, !noundef !10 ; 2 uses
  %i.n = icmp sgt i64 %.val.i.i, 0
  br i1 %i.n, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeEECs7tN9tvpkfrg_12typst_layout.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.val1.i.i = load ptr, ptr %i.o, align 8, !alias.scope !52135, !nonnull !10, !noundef !10
  %i.p = mul nuw i64 %.val.i.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtB4_6option6OptionNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeEECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define internal fastcc void @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartINtNtNtB9_6layout4page6MarginIBV_NtNtB1b_3rel3RelEEENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([136 x i8]) align 8 captures(none) dereferenceable(136) initializes((0, 129)) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(136) %2) unnamed_addr #31 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %1, align 8 ; 5 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %3 = load <2 x double>, ptr %.sroa.6.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.sroa.6.0.copyload = load double, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.sroa.6.sroa.7.0.copyload = load i64, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 40
  %4 = load <2 x double>, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 56
  %.sroa.6.sroa.10.0.copyload = load double, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 64
  %.sroa.6.sroa.11.0.copyload = load i64, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 72
  %5 = load <2 x double>, ptr %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.14.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 88
  %.sroa.6.sroa.14.0.copyload = load double, ptr %.sroa.6.sroa.14.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 96
  %.sroa.6.sroa.15.0.copyload = load i64, ptr %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 4 uses
  %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 104
  %6 = load <2 x double>, ptr %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 120
  %.sroa.6.sroa.18.0.copyload = load double, ptr %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 3 uses
  %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 128
  %.sroa.6.sroa.19.0.copyload = load i8, ptr %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.65.136.copyload = load i64, ptr %2, align 8 ; 3 uses
  %.sroa.11.136..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.a = load <2 x double>, ptr %.sroa.11.136..sroa_idx, align 8
  %.sroa.11.sroa.5.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  %.sroa.11.sroa.5.0.copyload = load double, ptr %.sroa.11.sroa.5.0..sroa.11.136..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.6.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %.sroa.11.sroa.6.0.copyload = load i64, ptr %.sroa.11.sroa.6.0..sroa.11.136..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.11.sroa.7.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 40
  %i.b = load <2 x double>, ptr %.sroa.11.sroa.7.0..sroa.11.136..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.9.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 56
  %.sroa.11.sroa.9.0.copyload = load double, ptr %.sroa.11.sroa.9.0..sroa.11.136..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.10.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  %.sroa.11.sroa.10.0.copyload = load i64, ptr %.sroa.11.sroa.10.0..sroa.11.136..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.11.sroa.11.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 72
  %i.c = load <2 x double>, ptr %.sroa.11.sroa.11.0..sroa.11.136..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.13.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 88
  %.sroa.11.sroa.13.0.copyload = load double, ptr %.sroa.11.sroa.13.0..sroa.11.136..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.14.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 96
  %.sroa.11.sroa.14.0.copyload = load i64, ptr %.sroa.11.sroa.14.0..sroa.11.136..sroa_idx.sroa_idx, align 8 ; 2 uses
  %.sroa.11.sroa.15.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 104
  %i.d = load <2 x double>, ptr %.sroa.11.sroa.15.0..sroa.11.136..sroa_idx.sroa_idx, align 8
  %.sroa.11.sroa.17.0..sroa.11.136..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 120
  %.sroa.11.sroa.17.0.copyload = load double, ptr %.sroa.11.sroa.17.0..sroa.11.136..sroa_idx.sroa_idx, align 8
  %.not = icmp eq i64 %.sroa.0.0.copyload, -1
  %.not11 = icmp eq i64 %.sroa.65.136.copyload, -1
  %or.cond = select i1 %.not, i1 true, i1 %.not11
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 129
  store i64 %.sroa.0.0.copyload, ptr %0, align 8
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> %3, ptr %.sroa.6.0..sroa_idx3, align 8
  %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.6.sroa.6.0.copyload, ptr %.sroa.6.sroa.6.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.6.sroa.7.0.copyload, ptr %.sroa.6.sroa.7.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x double> %4, ptr %.sroa.6.sroa.8.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.6.sroa.10.0.copyload, ptr %.sroa.6.sroa.10.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.6.sroa.11.0.copyload, ptr %.sroa.6.sroa.11.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x double> %5, ptr %.sroa.6.sroa.12.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.14.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %.sroa.6.sroa.14.0.copyload, ptr %.sroa.6.sroa.14.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.6.sroa.15.0.copyload, ptr %.sroa.6.sroa.15.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x double> %6, ptr %.sroa.6.sroa.16.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %.sroa.6.sroa.18.0.copyload, ptr %.sroa.6.sroa.18.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sroa.6.sroa.19.0.copyload, ptr %.sroa.6.sroa.19.0..sroa.6.0..sroa_idx3.sroa_idx, align 8
  %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx3.sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 129
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx3.sroa_idx, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.sroa.20.0..sroa.6.0..sroa_idx.sroa_idx, i64 7, i1 false)
  br label %bb.h

bb.c:                                             ; preds = %bb.a
  %.not.i.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload, 2 ; 4 uses
  %.not1.i.i.i.i.i = icmp eq i64 %.sroa.65.136.copyload, 2
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 true, i1 %.not1.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.d, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i

bb.d:                                             ; preds = %bb.c
  %.sroa.0.0.copyload45.sroa.speculated.i.i.i = select i1 %.not.i.i.i.i.i, i64 %.sroa.65.136.copyload, i64 %.sroa.0.0.copyload
  %i.e = insertelement <2 x i1> poison, i1 %.not.i.i.i.i.i, i64 0
  %i.f = shufflevector <2 x i1> %i.e, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.g = select <2 x i1> %i.f, <2 x double> %i.a, <2 x double> %3
  %.sroa.7.0.copyload48.sroa.speculated.i.i.i = select i1 %.not.i.i.i.i.i, double %.sroa.11.sroa.5.0.copyload, double %.sroa.6.sroa.6.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i: ; preds = %bb.d, %bb.c
  %.sroa.7.0.i.i.i = phi double [ %.sroa.7.0.copyload48.sroa.speculated.i.i.i, %bb.d ], [ %.sroa.6.sroa.6.0.copyload, %bb.c ]
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload45.sroa.speculated.i.i.i, %bb.d ], [ %.sroa.0.0.copyload, %bb.c ]
  %i.h = phi <2 x double> [ %i.g, %bb.d ], [ %3, %bb.c ]
  %.not.i.i3.i.i.i = icmp eq i64 %.sroa.6.sroa.7.0.copyload, 2 ; 4 uses
  %.not1.i.i4.i.i.i = icmp eq i64 %.sroa.11.sroa.6.0.copyload, 2
  %or.cond.i.i5.i.i.i = select i1 %.not.i.i3.i.i.i, i1 true, i1 %.not1.i.i4.i.i.i
  br i1 %or.cond.i.i5.i.i.i, label %bb.e, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i

bb.e:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.064.0.copyload65.sroa.speculated.i.i.i = select i1 %.not.i.i3.i.i.i, i64 %.sroa.11.sroa.6.0.copyload, i64 %.sroa.6.sroa.7.0.copyload
  %i.i = insertelement <2 x i1> poison, i1 %.not.i.i3.i.i.i, i64 0
  %i.j = shufflevector <2 x i1> %i.i, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.k = select <2 x i1> %i.j, <2 x double> %i.b, <2 x double> %4
  %.sroa.770.0.copyload71.sroa.speculated.i.i.i = select i1 %.not.i.i3.i.i.i, double %.sroa.11.sroa.9.0.copyload, double %.sroa.6.sroa.10.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i: ; preds = %bb.e, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i
  %.sroa.770.0.i.i.i = phi double [ %.sroa.770.0.copyload71.sroa.speculated.i.i.i, %bb.e ], [ %.sroa.6.sroa.10.0.copyload, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %.sroa.064.0.i.i.i = phi i64 [ %.sroa.064.0.copyload65.sroa.speculated.i.i.i, %bb.e ], [ %.sroa.6.sroa.7.0.copyload, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %i.l = phi <2 x double> [ %i.k, %bb.e ], [ %4, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit.i.i.i ]
  %.not.i.i17.i.i.i = icmp eq i64 %.sroa.6.sroa.11.0.copyload, 2 ; 4 uses
  %.not1.i.i18.i.i.i = icmp eq i64 %.sroa.11.sroa.10.0.copyload, 2
  %or.cond.i.i19.i.i.i = select i1 %.not.i.i17.i.i.i, i1 true, i1 %.not1.i.i18.i.i.i
  br i1 %or.cond.i.i19.i.i.i, label %bb.f, label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i

bb.f:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i
  %.sroa.091.0.copyload92.sroa.speculated.i.i.i = select i1 %.not.i.i17.i.i.i, i64 %.sroa.11.sroa.10.0.copyload, i64 %.sroa.6.sroa.11.0.copyload
  %i.m = insertelement <2 x i1> poison, i1 %.not.i.i17.i.i.i, i64 0
  %i.n = shufflevector <2 x i1> %i.m, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.o = select <2 x i1> %i.n, <2 x double> %i.c, <2 x double> %5
  %.sroa.797.0.copyload98.sroa.speculated.i.i.i = select i1 %.not.i.i17.i.i.i, double %.sroa.11.sroa.13.0.copyload, double %.sroa.6.sroa.14.0.copyload
  br label %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i

_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i: ; preds = %bb.f, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i
  %.sroa.797.0.i.i.i = phi double [ %.sroa.797.0.copyload98.sroa.speculated.i.i.i, %bb.f ], [ %.sroa.6.sroa.14.0.copyload, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i ]
  %.sroa.091.0.i.i.i = phi i64 [ %.sroa.091.0.copyload92.sroa.speculated.i.i.i, %bb.f ], [ %.sroa.6.sroa.11.0.copyload, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i ]
  %i.p = phi <2 x double> [ %i.o, %bb.f ], [ %5, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit16.i.i.i ]
  %.not.i.i31.i.i.i = icmp eq i64 %.sroa.6.sroa.15.0.copyload, 2 ; 4 uses
  %.not1.i.i32.i.i.i = icmp eq i64 %.sroa.11.sroa.14.0.copyload, 2
  %or.cond.i.i33.i.i.i = select i1 %.not.i.i31.i.i.i, i1 true, i1 %.not1.i.i32.i.i.i
  br i1 %or.cond.i.i33.i.i.i, label %bb.g, label %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout4pageINtB5_6MarginINtNtNtB9_11foundations4auto5SmartNtNtB7_3rel3RelEENtNtB16_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit

bb.g:                                             ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i
  %.sroa.0118.0.copyload119.sroa.speculated.i.i.i = select i1 %.not.i.i31.i.i.i, i64 %.sroa.11.sroa.14.0.copyload, i64 %.sroa.6.sroa.15.0.copyload
  %i.q = insertelement <2 x i1> poison, i1 %.not.i.i31.i.i.i, i64 0
  %i.r = shufflevector <2 x i1> %i.q, <2 x i1> poison, <2 x i32> zeroinitializer
  %i.s = select <2 x i1> %i.r, <2 x double> %i.d, <2 x double> %6
  %.sroa.7124.0.copyload125.sroa.speculated.i.i.i = select i1 %.not.i.i31.i.i.i, double %.sroa.11.sroa.17.0.copyload, double %.sroa.6.sroa.18.0.copyload
  br label %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout4pageINtB5_6MarginINtNtNtB9_11foundations4auto5SmartNtNtB7_3rel3RelEENtNtB16_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit

_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout4pageINtB5_6MarginINtNtNtB9_11foundations4auto5SmartNtNtB7_3rel3RelEENtNtB16_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit: ; preds = %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i, %bb.g
  %.sroa.7124.0.i.i.i = phi double [ %.sroa.7124.0.copyload125.sroa.speculated.i.i.i, %bb.g ], [ %.sroa.6.sroa.18.0.copyload, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i ]
  %.sroa.0118.0.i.i.i = phi i64 [ %.sroa.0118.0.copyload119.sroa.speculated.i.i.i, %bb.g ], [ %.sroa.6.sroa.15.0.copyload, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i ]
  %i.t = phi <2 x double> [ %i.s, %bb.g ], [ %6, %_RNCNvXs9_NtNtCsdaEETE4DqmE_13typst_library6layout5sidesINtB7_5SidesINtNtCs3oUPovFnLWP_4core6option6OptionINtNtNtBb_11foundations4auto5SmartNtNtB9_3rel3RelEEENtNtB1K_6styles4Fold4fold0Cs7tN9tvpkfrg_12typst_layout.exit30.i.i.i ]
  store i64 %.sroa.0.0.i.i.i, ptr %0, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store <2 x double> %i.h, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.648.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store double %.sroa.7.0.i.i.i, ptr %.sroa.648.0..sroa_idx, align 8
  %.sroa.749.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %.sroa.064.0.i.i.i, ptr %.sroa.749.0..sroa_idx, align 8
  %.sroa.850.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store <2 x double> %i.l, ptr %.sroa.850.0..sroa_idx, align 8
  %.sroa.1052.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 56
  store double %.sroa.770.0.i.i.i, ptr %.sroa.1052.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 64
  store i64 %.sroa.091.0.i.i.i, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.1253.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store <2 x double> %i.p, ptr %.sroa.1253.0..sroa_idx, align 8
  %.sroa.1455.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  store double %.sroa.797.0.i.i.i, ptr %.sroa.1455.0..sroa_idx, align 8
  %.sroa.1556.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 %.sroa.0118.0.i.i.i, ptr %.sroa.1556.0..sroa_idx, align 8
  %.sroa.1657.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  store <2 x double> %i.t, ptr %.sroa.1657.0..sroa_idx, align 8
  %.sroa.1859.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 120
  store double %.sroa.7124.0.i.i.i, ptr %.sroa.1859.0..sroa_idx, align 8
  %.sroa.1960.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 128
  store i8 %.sroa.6.sroa.19.0.copyload, ptr %.sroa.1960.0..sroa_idx, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.b, %_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library6layout4pageINtB5_6MarginINtNtNtB9_11foundations4auto5SmartNtNtB7_3rel3RelEENtNtB16_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout.exit
  ret void
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsa_NtNtCsdaEETE4DqmE_13typst_library11foundations4autoINtB5_5SmartNtNtNtB9_9visualize6stroke6StrokeENtNtB7_6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(112) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [224 x i8], align 8               ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.a, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 112 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %i.b, ptr noundef nonnull align 8 dereferenceable(112) %2, i64 112, i1 false)
  %i.c = load i64, ptr %i.a, align 8, !range !289, !noundef !10
  %.not = icmp eq i64 %i.c, 2
  %i.d = load i64, ptr %i.b, align 8, !range !289
  %.not1 = icmp eq i64 %i.d, 2                    ; 2 uses
  %or.cond = select i1 %.not, i1 true, i1 %.not1
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(112) %0, ptr noundef nonnull align 8 dereferenceable(112) %1, i64 112, i1 false)
  br i1 %.not1, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit, label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call fastcc void @_RNvXs2_NtNtCsdaEETE4DqmE_13typst_library9visualize6strokeNtB5_6StrokeNtNtNtB9_11foundations6styles4Fold4foldCs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull sret([112 x i8]) align 8 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %1, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(112) %2)
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit: ; preds = %bb.h, %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i, %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 192 ; 2 uses
  %i.f = load i32, ptr %i.e, align 8, !range !1276, !alias.scope !52136, !noundef !10
  %i.g = icmp eq i32 %i.f, -1
  br i1 %i.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize5paint5PaintECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val2.i = load i64, ptr %i.i, align 8, !range !698, !alias.scope !52141, !noundef !10 ; 2 uses
  %i.j = icmp sgt i64 %.val2.i, 0
  br i1 %i.j, label %bb.g, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.val3.i = load ptr, ptr %i.k, align 8, !alias.scope !52141, !nonnull !10, !noundef !10
  %i.l = mul nuw i64 %.val2.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i, i64 noundef %i.l, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.e, %bb.d
  %i.m = getelementptr inbounds nuw i8, ptr %i.a, i64 152
  %.val.i = load i64, ptr %i.m, align 8, !range !698, !alias.scope !52141, !noundef !10 ; 2 uses
  %i.n = icmp sgt i64 %.val.i, 0
  br i1 %i.n, label %bb.h, label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit

bb.h:                                             ; preds = %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartNtNtNtBI_9visualize5paint5PaintEECs7tN9tvpkfrg_12typst_layout.exit.i
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 160
  %.val1.i = load ptr, ptr %i.o, align 8, !alias.scope !52141, !nonnull !10, !noundef !10
  %i.p = mul nuw i64 %.val.i, 24
  call void @_RNvCsjHpjAFo4bi0_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i, i64 noundef %i.p, i64 noundef range(i64 1, -9223372036854775807) 8) #56
  br label %_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueNtNtNtCsdaEETE4DqmE_13typst_library9visualize6stroke6StrokeECs7tN9tvpkfrg_12typst_layout.exit

_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtNtCsdaEETE4DqmE_13typst_library11foundations4auto5SmartINtNtB4_6option6OptionNtNtNtBI_9visualize6stroke11DashPatternEEECs7tN9tvpkfrg_12typst_layout.exit.i: ; preds = %bb.g, %bb.f
  resume { ptr, i32 } %i.h
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvXsb_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecNtNtCsakL8LGkl72C_4ecow6string9EcoStringENtNtCs3oUPovFnLWP_4core5clone5Clone5cloneCs7tN9tvpkfrg_12typst_layout(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 8 captures(none) dereferenceable(24) %0, ptr nofree readonly captures(address) %.8.val, i64 %.16.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !52145
  %i.b = shl nuw nsw i64 %.16.val, 4              ; 2 uses
  %i.c = icmp eq i64 %.16.val, 0
  br i1 %i.c, label %_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.thread.i, label %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i

_RNvMs5_NtCs1xwejQucwHj_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs7tN9tvpkfrg_12typst_layout.exit.thread.i: ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !noalias !52145
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.d, align 8, !noalias !52145
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit

_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i: ; preds = %bb.a
  tail call void @_RNvCsjHpjAFo4bi0_7___rustc35___rust_no_alloc_shim_is_unstable_v2() #56, !noalias !52147
  %i.f = tail call noundef align 8 ptr @_RNvCsjHpjAFo4bi0_7___rustc12___rust_alloc(i64 noundef %i.b, i64 noundef range(i64 1, 17) 8) #56, !noalias !52147 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.b, label %.lr.ph.preheader.i

bb.b:                                             ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  tail call void @_RNvNtCs1xwejQucwHj_5alloc7raw_vec12handle_error(i64 noundef 8, i64 %i.b) #57, !noalias !52145
  unreachable

.lr.ph.preheader.i:                               ; preds = %_RNvXs1_NtCs1xwejQucwHj_5alloc5allocNtB5_6GlobalNtNtCs3oUPovFnLWP_4core5alloc9Allocator8allocate.exit.i.i.i
  store i64 %.16.val, ptr %i.a, align 8, !noalias !52145
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.f, ptr %i.h, align 8, !noalias !52145
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 3 uses
  %i.j = getelementptr inbounds nuw [16 x i8], ptr %.8.val, i64 %.16.val
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, %.lr.ph.preheader.i
  %.sroa.014.033.i = phi ptr [ %i.m, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.8.val, %.lr.ph.preheader.i ] ; 5 uses
  %.sroa.7.032.i = phi i64 [ %i.n, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ 0, %.lr.ph.preheader.i ] ; 3 uses
  %.sroa.10.031.i = phi i64 [ %i.k, %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i ], [ %.16.val, %.lr.ph.preheader.i ]
  %i.k = add nsw i64 %.sroa.10.031.i, -1          ; 2 uses
  %i.l = icmp eq ptr %.sroa.014.033.i, %i.j
  br i1 %i.l, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %bb.c

bb.c:                                             ; preds = %.lr.ph.i
  %i.m = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 16
  %i.n = add nuw nsw i64 %.sroa.7.032.i, 1
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52150)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52153)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !52156)
  %i.o = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 15
  %i.p = load i8, ptr %i.o, align 1, !alias.scope !52158, !noalias !52159, !noundef !10
  %.not.i.i12.i = icmp sgt i8 %i.p, -1
  %.val.i.i.i = load ptr, ptr %.sroa.014.033.i, align 8, !alias.scope !52161, !noalias !52162 ; 5 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.014.033.i, i64 8
  %.val10.i.i.i = load i64, ptr %i.q, align 8, !alias.scope !52161, !noalias !52162
  br i1 %.not.i.i12.i, label %bb.d, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i.i.i = icmp eq ptr %.val.i.i.i, inttoptr (i64 16 to ptr)
  br i1 %.not.i.i.i.i.i, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.r = getelementptr inbounds i8, ptr %.val.i.i.i, i64 -16
  %i.s = atomicrmw add ptr %i.r, i64 1 monotonic, align 8, !noalias !52163
  %i.t = icmp slt i64 %i.s, 0
  br i1 %i.t, label %bb.f, label %_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i, !prof !33

bb.f:                                             ; preds = %bb.e
  invoke fastcc void @_RINvNtCsakL8LGkl72C_4ecow3vec18ref_count_overflowhECs7tN9tvpkfrg_12typst_layout(ptr noundef nonnull %.val.i.i.i) #57
          to label %.noexc.i unwind label %bb.h

.noexc.i:                                         ; preds = %bb.f
  unreachable

_RNvXsx_NtCsakL8LGkl72C_4ecow6stringNtB5_9EcoStringNtNtCs3oUPovFnLWP_4core5clone5Clone5clone.exit.i: ; preds = %bb.e, %bb.d, %bb.c
  %.sroa.0.0.i13.i = phi ptr [ inttoptr (i64 16 to ptr), %bb.d ], [ %.val.i.i.i, %bb.e ], [ %.val.i.i.i, %bb.c ]
  %i.u = getelementptr inbounds nuw [16 x i8], ptr %i.f, i64 %.sroa.7.032.i ; 2 uses
  store ptr %.sroa.0.0.i13.i, ptr %i.u, align 8, !noalias !52145
  %.sroa.422.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 %.val10.i.i.i, ptr %.sroa.422.0..sroa_idx.i, align 8, !noalias !52145
  %i.v = icmp eq i64 %i.k, 0
  br i1 %i.v, label %_RINvXNvMNtCs1xwejQucwHj_5alloc5sliceSp9to_vec_inNtNtCsakL8LGkl72C_4ecow6string9EcoStringNtB3_10ConvertVec6to_vecNtNtB8_5alloc6GlobalECs7tN9tvpkfrg_12typst_layout.exit, label %.lr.ph.i

bb.g:                                             ; preds = %bb.h
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !52145
  unreachable

bb.h:                                             ; preds = %bb.f
  %i.x = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.7.032.i, ptr %i.i, align 8, !noalias !52145
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCs1xwejQucwHj_5alloc3vec3VecNtNtCsakL8LGkl72C_4ecow6string9EcoStringEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %i.a) #54
          to label %bb.i unwind label %bb.g, !noalias !52145

bb.i:                                             ; preds = %bb.h
  resume { ptr, i32 } %i.x

end_hunk_9
begin_hunk_10_@_RNvYNCNvNtCs7tN9tvpkfrg_12typst_layout5rules9SKEW_RULE0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceTRINtNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content6packed6PackedNtNtNtB1M_6layout9transform8SkewElemEQNtNtB1M_6engine6EngineNtNtB1K_6styles10StyleChainEE9call_onceB8_:bb.a
  %i.b = alloca [1032 x i8], align 8              ; 16 uses
  %i.c = alloca [1032 x i8], align 8              ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58038
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58042
  call void @_RNvXs1_NtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB5_10RawContentNtNtCs3oUPovFnLWP_4core5clone5Clone5clone(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1), !noalias !58046
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58038
  store i64 2, ptr %i.b, align 8, !noalias !58042
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 416
  store i64 -1, ptr %i.d, align 8, !noalias !58042
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 1024
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 1000
  store i32 -2, ptr %i.f, align 8, !noalias !58042
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 512
  store i64 -2, ptr %i.g, align 8, !noalias !58042
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store i64 2, ptr %i.h, align 8, !noalias !58042
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 160
  store i64 2, ptr %i.i, align 8, !noalias !58042
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 288
  store i64 2, ptr %i.j, align 8, !noalias !58042
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 448
  store i64 -1, ptr %i.k, align 8, !noalias !58042
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 480
  store i64 -1, ptr %i.l, align 8, !noalias !58042
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 1025
  store i8 2, ptr %i.m, align 1, !noalias !58042
  %i.n = getelementptr inbounds nuw i8, ptr %i.b, i64 1026
  store i8 2, ptr %i.n, align 2, !noalias !58042
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 960
  store i64 -2, ptr %i.o, align 8, !noalias !58042
  store i8 0, ptr %i.e, align 8, !noalias !58042
  store i64 1, ptr %i.a, align 8, !noalias !58042
  %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr @_RNvNtCs7tN9tvpkfrg_12typst_layout10transforms11layout_skew, ptr %.sroa.4.sroa.4.0..sroa.4.0..sroa_idx.sroa_idx.i.i, align 8, !noalias !58042
  call void @_RNvMNvNtNtCsdaEETE4DqmE_13typst_library6layout9containers0_1__NtB4_9BlockElem9with_body(ptr noalias nofree noundef nonnull sret([1032 x i8]) align 8 captures(none) dereferenceable(1032) %i.c, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(1032) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !58047
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58042
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58038
  call fastcc void @_RINvMNtNtNtCsdaEETE4DqmE_13typst_library11foundations7content3rawNtB3_10RawContent3newNtNtNtB9_6layout9container9BlockElemECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef nonnull align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(1032) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58038
  ret void
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal void @_RNvYNCNvNtNtCs7tN9tvpkfrg_12typst_layout6inline9linebreak12CJ_SEGMENTER0INtNtNtCs3oUPovFnLWP_4core3ops8function6FnOnceuE9call_onceBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([1760 x i8]) align 8 captures(none) dereferenceable(1760) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [128 x i8], align 16              ; 15 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.21.i.i.i.i.i.i.i = alloca [62 x i8], align 2 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 11 uses
  %i.f = alloca [11 x i8], align 1                ; 4 uses
  %i.g = alloca [56 x i8], align 8                ; 19 uses
  %i.h = alloca [56 x i8], align 8                ; 8 uses
  %i.i = alloca [56 x i8], align 8                ; 8 uses
  %i.j = alloca [56 x i8], align 8                ; 15 uses
  %i.k = alloca [72 x i8], align 8                ; 13 uses
  %i.l = alloca [72 x i8], align 8                ; 15 uses
  %.sroa.18.i.i.sroa.0.i.i = alloca [7 x i8], align 1 ; 9 uses
  %.sroa.23.i.i.i = alloca [9 x i8], align 8      ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 4 uses
  %i.n = alloca [8 x i8], align 8                 ; 4 uses
  %i.o = alloca [128 x i8], align 16              ; 15 uses
  %i.p = alloca [16 x i8], align 8                ; 6 uses
  %.sroa.21.i.i.i.i.i = alloca [62 x i8], align 2 ; 6 uses
  %i.q = alloca [32 x i8], align 8                ; 4 uses
  %i.r = alloca [11 x i8], align 1                ; 4 uses
  %i.s = alloca [56 x i8], align 8                ; 16 uses
  %i.t = alloca [56 x i8], align 8                ; 8 uses
  %i.u = alloca [56 x i8], align 8                ; 8 uses
  %i.v = alloca [56 x i8], align 8                ; 15 uses
  %i.w = alloca [72 x i8], align 8                ; 14 uses
  %i.x = alloca [72 x i8], align 8                ; 15 uses
  %.sroa.6.i.i.sroa.9.i.sroa.0.i = alloca [7 x i8], align 1 ; 6 uses
  %.sroa.1336.i.i = alloca [7 x i8], align 1      ; 6 uses
  %i.y = alloca [32 x i8], align 8                ; 11 uses
  %.sroa.18.i.sroa.0.i = alloca [7 x i8], align 1 ; 9 uses
  %.sroa.9.sroa.8.i.sroa.0.i = alloca [7 x i8], align 1 ; 6 uses
  %i.z = alloca [136 x i8], align 8               ; 19 uses
  %i.aa = alloca [56 x i8], align 8               ; 3 uses
  %i.ab = alloca [56 x i8], align 8               ; 9 uses
  %.sroa.16.i = alloca [7 x i8], align 1          ; 7 uses
  %i.ac = alloca [72 x i8], align 8               ; 6 uses
  %i.ad = alloca [64 x i8], align 8               ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58048)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i.i.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ad), !noalias !58048
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ac), !noalias !58048
  call void @_RNvMs_NtCsfj0ApNBhSbI_17icu_provider_blob18blob_data_providerNtB4_16BlobDataProvider24try_new_from_static_blob(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.ac, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 30135), !noalias !58048
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58051)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !58054)
  %i.ae = load i64, ptr %i.ac, align 8, !range !285, !alias.scope !58054, !noalias !58056, !noundef !10
  %i.af = trunc nuw i64 %i.ae to i1
  br i1 %i.af, label %bb.b, label %_RNvMs_NtCselBS6QMlFOX_13icu_segmenter4lineNtB4_16LineBreakOptions7resolve.exit.i.i, !prof !33

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aa), !noalias !58057
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.aa, ptr noundef nonnull readonly align 8 dereferenceable(56) %i.ag, i64 56, i1 false), !noalias !58056
  call void @_RNvNtCs3oUPovFnLWP_4core6result13unwrap_failed(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @287, i64 noundef 43, ptr noundef nonnull %i.aa, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) @289, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @269) #53, !noalias !58057
  unreachable

_RNvMs_NtCselBS6QMlFOX_13icu_segmenter4lineNtB4_16LineBreakOptions7resolve.exit.i.i: ; preds = %bb.a
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.ad, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.ah, i64 64, i1 false), !alias.scope !58058, !noalias !58048
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ac), !noalias !58048
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.21.i.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.1336.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.z), !noalias !58059
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.sroa.8.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.y), !noalias !58059
  store ptr inttoptr (i64 1 to ptr), ptr %i.y, align 8, !noalias !58059
  %.sroa.420.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 8
  store i64 0, ptr %.sroa.420.0..sroa_idx.i.i, align 8, !noalias !58059
  %.sroa.521.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.y, i64 16
  store ptr @_RNvNvXs3_NtCsQl2mMA5FpV_15icu_locale_core4dataRNtB7_10DataLocaleNtNtCs3oUPovFnLWP_4core7default7Default7default7DEFAULT, ptr %.sroa.521.0..sroa_idx.i.i, align 8, !noalias !58059
  %i.ai = getelementptr inbounds nuw i8, ptr %i.y, i64 24
  store i8 0, ptr %i.ai, align 8, !noalias !58059
  %i.aj = getelementptr inbounds nuw i8, ptr %i.y, i64 25
  store i8 0, ptr %i.aj, align 1, !noalias !58059
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !58063
  call void @llvm.lifetime.start.p0(ptr nonnull %i.w), !noalias !58063
  %i.ak = getelementptr inbounds nuw i8, ptr %i.s, i64 25 ; 3 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.s, i64 41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.sroa.9.i.sroa.0.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.x), !noalias !58067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !58067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.r, ptr noundef nonnull readonly align 1 dereferenceable(11) @752, i64 11, i1 false), !noalias !58072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !58067
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.q, ptr noundef nonnull readonly align 8 dereferenceable(32) %i.y, i64 32, i1 false), !noalias !58073
  invoke void @_RNvXs0_NtCsfj0ApNBhSbI_17icu_provider_blob18blob_data_providerNtB5_16BlobDataProviderINtNtCslM3NUDSIqe7_12icu_provider13data_provider19DynamicDataProviderNtNtB1q_3buf12BufferMarkerE9load_data(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.x, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(11) %i.r, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.q)
          to label %.noexc1.i unwind label %bb.an, !noalias !58048

.noexc1.i:                                        ; preds = %_RNvMs_NtCselBS6QMlFOX_13icu_segmenter4lineNtB4_16LineBreakOptions7resolve.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !58067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !58067
  %i.am = load i64, ptr %i.x, align 8, !range !289, !noalias !58067, !noundef !10 ; 2 uses
  %i.an = icmp eq i64 %i.am, 2
  %i.ao = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  %.sroa.6.i.i.sroa.0.0.copyload.i.i = load i64, ptr %i.ao, align 8, !noalias !58067 ; 3 uses
  %.sroa.6.i.i.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %i.ap = load <2 x i64>, ptr %.sroa.6.i.i.sroa.6.0..sroa_idx.i.i, align 8, !noalias !58067 ; 2 uses
  %.sroa.6.i.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 32
  %.sroa.6.i.i.sroa.8.0.copyload.i.i = load i8, ptr %.sroa.6.i.i.sroa.8.0..sroa_idx.i.i, align 8, !noalias !58067 ; 2 uses
  %.sroa.6.i.i.sroa.9.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.9.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.9.0..sroa_idx.i.i, i64 7, i1 false), !noalias !58067
  %.sroa.6.i.i.sroa.9.i.sroa.6.0..sroa.6.i.i.sroa.9.0..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.x, i64 40
  %.sroa.6.i.i.sroa.9.i.sroa.6.0.copyload.i = load i16, ptr %.sroa.6.i.i.sroa.9.i.sroa.6.0..sroa.6.i.i.sroa.9.0..sroa_idx.i.sroa_idx.i, align 8, !noalias !58067 ; 2 uses
  %.sroa.6.i.i.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 42
  %.sroa.6.i.i.sroa.10.0.copyload.i.i = load i8, ptr %.sroa.6.i.i.sroa.10.0..sroa_idx.i.i, align 2, !noalias !58067 ; 4 uses
  %.sroa.6.i.i.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 43
  %.sroa.6.i.i.sroa.11.i.sroa.0.0.copyload.i = load i40, ptr %.sroa.6.i.i.sroa.11.0..sroa_idx.i.i, align 1, !noalias !58067 ; 2 uses
  %.sroa.6.i.i.sroa.12.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 48
  %.sroa.6.i.i.sroa.12.0.copyload.i.i = load ptr, ptr %.sroa.6.i.i.sroa.12.0..sroa_idx.i.i, align 8, !noalias !58067 ; 7 uses
  %.sroa.6.i.i.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 56
  %.sroa.6.i.i.sroa.13.0.copyload.i.i = load i64, ptr %.sroa.6.i.i.sroa.13.0..sroa_idx.i.i, align 8, !noalias !58067 ; 4 uses
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %.noexc1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !58067
  %.sroa.81.sroa.0.0.extract.trunc23.i.i = trunc i64 %.sroa.6.i.i.sroa.0.0.copyload.i.i to i8
  %.sroa.81.sroa.8.0.extract.shift26.i.i = lshr i64 %.sroa.6.i.i.sroa.0.0.copyload.i.i, 8
  %.sroa.81.sroa.8.0.extract.trunc27.i.i = trunc nuw i64 %.sroa.81.sroa.8.0.extract.shift26.i.i to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.9.i.sroa.0.i, i64 7, i1 false), !noalias !58074
  %.sroa.25.sroa.0.0.extract.trunc.i.i = trunc i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i to i8
  %.sroa.25.sroa.9.0.extract.shift.i.i = lshr i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i, 8
  %.sroa.25.sroa.9.0.extract.trunc.i.i = trunc nuw i64 %.sroa.25.sroa.9.0.extract.shift.i.i to i56
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.9.i.sroa.0.i)
  br label %bb.s

bb.d:                                             ; preds = %.noexc1.i
  %.sroa.534.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.x, i64 64
  %.sroa.534.0.copyload.i.i.i.i = load i64, ptr %.sroa.534.0..sroa_idx.i.i.i.i, align 8, !noalias !58067 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.x), !noalias !58067
  %.sroa.4.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %.sroa.6.i.i.sroa.0.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i, align 8, !noalias !58067
  %.sroa.6.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 16
  store <2 x i64> %i.ap, ptr %.sroa.6.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58067
  %.sroa.6.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 32
  store i8 %.sroa.6.i.i.sroa.8.0.copyload.i.i, ptr %.sroa.6.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58067
  %.sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 33 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.9.i.sroa.0.i, i64 7, i1 false), !noalias !58067
  %.sroa.6.i.i.sroa.9.i.sroa.6.0..sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.w, i64 40
  store i16 %.sroa.6.i.i.sroa.9.i.sroa.6.0.copyload.i, ptr %.sroa.6.i.i.sroa.9.i.sroa.6.0..sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !58067
  %.sroa.6.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 42
  store i8 %.sroa.6.i.i.sroa.10.0.copyload.i.i, ptr %.sroa.6.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, align 2, !noalias !58067
  %.sroa.6.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 43
  store i40 %.sroa.6.i.i.sroa.11.i.sroa.0.0.copyload.i, ptr %.sroa.6.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, align 1, !noalias !58067
  %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 48 ; 2 uses
  store ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i, ptr %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58067
  %.sroa.6.i.i.sroa.13.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 56
  store i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i, ptr %.sroa.6.i.i.sroa.13.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58067
  store i64 %i.am, ptr %i.w, align 8, !noalias !58067
  %.sroa.5.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.w, i64 64
  store i64 %.sroa.534.0.copyload.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !58067
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.sroa.9.i.sroa.0.i)
  %.not.i.i.i.i = icmp eq i8 %.sroa.6.i.i.sroa.10.0.copyload.i.i, -1
  %1 = inttoptr i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i to ptr ; 3 uses
  br i1 %.not.i.i.i.i, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.aq = icmp eq ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i, null ; 2 uses
  %i.ar = load ptr, ptr @_RNvNvNtCsd8SJu24xSUi_4yoke12cartable_ptr12sentinel_for8SENTINEL, align 8, !noalias !58075, !nonnull !10 ; 2 uses
  %.sroa.07.0.i.i.i.i.i = select i1 %i.aq, ptr %i.ar, ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i ; 3 uses
  switch i8 %.sroa.6.i.i.sroa.10.0.copyload.i.i, label %default.unreachable.i.i.i [
    i8 2, label %bb.f
    i8 0, label %bb.i
    i8 1, label %bb.h
  ], !prof !58079

bb.f:                                             ; preds = %bb.e
  br i1 %i.aq, label %.then.i.i.i.i, label %.cont.i.i.i.i

.then.i.i.i.i:                                    ; preds = %bb.f
  %i.as = getelementptr i8, ptr %1, i64 8
  %.sroa.49.0.i.then.val.i.i.i.i = load ptr, ptr %1, align 8, !noalias !58080, !nonnull !10, !noundef !10
  %.sroa.610.0.i.then.val.i.i.i.i = load i64, ptr %i.as, align 8, !noalias !58080
  br label %.cont.i.i.i.i

.cont.i.i.i.i:                                    ; preds = %.then.i.i.i.i, %bb.f
  %.sroa.49.0.i177.i.i.i.i = phi ptr [ %.sroa.49.0.i.then.val.i.i.i.i, %.then.i.i.i.i ], [ %1, %bb.f ] ; 2 uses
  %.sroa.610.0.i.i.i.i.i = phi i64 [ %.sroa.610.0.i.then.val.i.i.i.i, %.then.i.i.i.i ], [ %.sroa.534.0.copyload.i.i.i.i, %bb.f ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !58081
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.49.0.i177.i.i.i.i, i64 %.sroa.610.0.i.i.i.i.i
  store ptr %.sroa.49.0.i177.i.i.i.i, ptr %i.p, align 8, !noalias !58081
  %i.au = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  store ptr %i.at, ptr %i.au, align 8, !noalias !58081
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !58081
  call fastcc void @_RINvXNvNtCselBS6QMlFOX_13icu_segmenter8providers_1__NtB5_13RuleBreakDataNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeQINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer12DeserializerNtNtB2b_7flavors5SliceEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.o, ptr noalias nofree noundef align 8 dereferenceable(16) %i.p), !noalias !58091
  %i.av = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  %i.aw = load i8, ptr %i.av, align 16, !range !284, !noalias !58081, !noundef !10 ; 2 uses
  %i.ax = icmp eq i8 %i.aw, 2
  br i1 %i.ax, label %bb.g, label %bb.t

bb.g:                                             ; preds = %.cont.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !58081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !58081
  br label %bb.i

default.unreachable.i.i.i:                        ; preds = %bb.e
  unreachable

bb.h:                                             ; preds = %bb.e
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g, %bb.e
  %.sroa.01.0.ph.i.i.i.i.i.i = phi ptr [ @170, %bb.e ], [ @171, %bb.h ], [ @169, %bb.g ]
  %.sroa.9.0.ph.i.i.i.i.i.i = phi i64 [ 80, %bb.e ], [ 89, %bb.h ], [ 8, %bb.g ]
  %.not.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.07.0.i.i.i.i.i, %i.ar
  br i1 %.not.i.i.i.i.i.i.i.i, label %bb.p, label %bb.j

bb.j:                                             ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !58092
  %i.ay = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i, i64 -16 ; 2 uses
  store ptr %i.ay, ptr %i.n, align 8, !noalias !58092
  %i.az = atomicrmw sub ptr %i.ay, i64 1 release, align 8, !noalias !58097
  %i.ba = icmp eq i64 %i.az, 1
  br i1 %i.ba, label %bb.k, label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i

bb.k:                                             ; preds = %bb.j
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxShEE9drop_slowCslM3NUDSIqe7_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.n) #58
          to label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i unwind label %bb.an, !noalias !58048

_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i: ; preds = %bb.k, %bb.j
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !58092
  br label %bb.p

bb.l:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.v), !noalias !58067
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !58067
  %i.bb = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  store i8 5, ptr %i.bb, align 8, !noalias !58067
  %i.bc = getelementptr inbounds nuw i8, ptr %i.u, i64 40
  store i8 0, ptr %i.bc, align 8, !noalias !58067
  store ptr @705, ptr %i.u, align 8, !noalias !58067
  %i.bd = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i64 38, ptr %i.bd, align 8, !noalias !58067
  %i.be = getelementptr inbounds nuw i8, ptr %i.u, i64 49
  store i8 0, ptr %i.be, align 1, !noalias !58067
  invoke void @_RNvMs0_NtCslM3NUDSIqe7_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.v, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.u, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(11) @752, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.y)
          to label %bb.m unwind label %bb.q, !noalias !58102

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u), !noalias !58067
  %.sroa.014.0.copyload.i.i.i.i = load i8, ptr %i.v, align 8, !noalias !58067 ; 2 uses
  %.sroa.716.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  %.sroa.81.sroa.8.sroa.0.0.copyload.i.i = load i56, ptr %.sroa.716.0..sroa_idx.i.i.i.i, align 1, !noalias !58074 ; 2 uses
  %.sroa.13.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 8
  %i.bf = load <2 x i64>, ptr %.sroa.13.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58074 ; 2 uses
  %.sroa.17.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %.sroa.17.9.copyload.i.i = load i8, ptr %.sroa.17.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58074 ; 2 uses
  %.sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i, i64 7, i1 false), !noalias !58074
  %.sroa.18.i.sroa.9.0..sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.v, i64 32
  %.sroa.18.i.sroa.9.0.copyload27.i = load i16, ptr %.sroa.18.i.sroa.9.0..sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.sroa_idx.i, align 8, !noalias !58074 ; 2 uses
  %.sroa.19.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 34
  %.sroa.19.9.copyload.i.i = load i8, ptr %.sroa.19.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i, align 2, !noalias !58074 ; 2 uses
  %.sroa.20.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 35
  %.sroa.20.i.sroa.0.0.copyload23.i = load i40, ptr %.sroa.20.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i, align 1, !noalias !58074 ; 2 uses
  %.sroa.22.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 40
  %.sroa.22.9.copyload.i.i = load ptr, ptr %.sroa.22.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58074 ; 2 uses
  %.sroa.25.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 48
  %.sroa.25.sroa.0.0.copyload.i.i = load i8, ptr %.sroa.25.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58074 ; 2 uses
  %.sroa.718.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 49
  %.sroa.718.0.copyload.i.i.i.i = load i8, ptr %.sroa.718.0..sroa_idx.i.i.i.i, align 1, !noalias !58067
  %.sroa.821.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 50
  %.sroa.25.sroa.9.1.copyload.i.i = load i48, ptr %.sroa.821.0..sroa_idx.i.i.i.i, align 2, !noalias !58074
  %.sroa.25.sroa.9.1.insert.ext.i.i = zext i48 %.sroa.25.sroa.9.1.copyload.i.i to i56
  %.sroa.25.sroa.9.1.insert.shift.i.i = shl nuw i56 %.sroa.25.sroa.9.1.insert.ext.i.i, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.v), !noalias !58067
  %.sroa.25.sroa.9.0.insert.ext19.i.i = zext i8 %.sroa.718.0.copyload.i.i.i.i to i56
  %.sroa.25.sroa.9.0.insert.insert21.i.i = or disjoint i56 %.sroa.25.sroa.9.1.insert.shift.i.i, %.sroa.25.sroa.9.0.insert.ext19.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i, null
  %i.bg = load ptr, ptr @_RNvNvNtCsd8SJu24xSUi_4yoke12cartable_ptr12sentinel_for8SENTINEL, align 8, !noalias !58063, !nonnull !10
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i, %i.bg
  %or.cond.i.i.i = select i1 %.not.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i, label %bb.s, label %bb.n

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !58103
  %i.bh = getelementptr inbounds i8, ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i, i64 -16 ; 2 uses
  store ptr %i.bh, ptr %i.m, align 8, !noalias !58103
  %i.bi = atomicrmw sub ptr %i.bh, i64 1 release, align 8, !noalias !58116
  %i.bj = icmp eq i64 %i.bi, 1
  br i1 %i.bj, label %bb.o, label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxShEE9drop_slowCslM3NUDSIqe7_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.m) #58
          to label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i unwind label %bb.an, !noalias !58048

_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.o, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !58103
  br label %bb.s

bb.p:                                             ; preds = %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i, %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !58067
  store ptr %.sroa.01.0.ph.i.i.i.i.i.i, ptr %i.t, align 8, !noalias !58067
  %.sroa.9.8..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store i64 %.sroa.9.0.ph.i.i.i.i.i.i, ptr %.sroa.9.8..sroa_idx4.i.i.i.i, align 8, !noalias !58067
  %.sroa.11.8..sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store i64 5, ptr %.sroa.11.8..sroa_idx10.i.i.i.i, align 8, !noalias !58067
  %.sroa.15.8..sroa_idx25.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 40
  store i8 0, ptr %.sroa.15.8..sroa_idx25.i.i.i.i, align 8, !noalias !58067
  %.sroa.17.8..sroa_idx41.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 49
  store i8 0, ptr %.sroa.17.8..sroa_idx41.i.i.i.i, align 1, !noalias !58067
  invoke void @_RNvMs0_NtCslM3NUDSIqe7_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.s, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.t, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(11) @752, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.y)
          to label %.noexc4.i unwind label %bb.an, !noalias !58048

.noexc4.i:                                        ; preds = %bb.p
  %.sroa.3.8.copyload2.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !58067
  %.sroa.9.8..sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  %i.bk = load <2 x i64>, ptr %.sroa.9.8..sroa_idx6.i.i.i.i, align 8, !noalias !58067
  %.sroa.13.8..sroa_idx18.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 24
  %.sroa.13.8.copyload19.i.i.i.i = load i8, ptr %.sroa.13.8..sroa_idx18.i.i.i.i, align 8, !noalias !58067
  %.sroa.15.8..sroa_idx27.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %.sroa.15.8.copyload28.i.i.i.i = load i64, ptr %.sroa.15.8..sroa_idx27.i.i.i.i, align 8, !noalias !58074
  %.sroa.1634.8..sroa_idx37.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 48
  %.sroa.1634.8.copyload38.i.i.i.i = load i8, ptr %.sroa.1634.8..sroa_idx37.i.i.i.i, align 8, !noalias !58067
  %.sroa.17.8..sroa_idx42.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 49
  %.sroa.17.sroa.0.0.copyload44.i.i.i.i = load i8, ptr %.sroa.17.8..sroa_idx42.i.i.i.i, align 1, !noalias !58067
  %.sroa.17.sroa.6.0..sroa.17.8..sroa_idx42.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 50
  %.sroa.17.sroa.6.sroa.0.0.copyload.i.i.i.i = load i48, ptr %.sroa.17.sroa.6.0..sroa.17.8..sroa_idx42.sroa_idx.i.i.i.i, align 2, !noalias !58067
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t), !noalias !58067
  %.sroa.18166.49.insert.ext.i.i.i.i = zext i8 %.sroa.17.sroa.0.0.copyload44.i.i.i.i to i56
  %.sroa.18166.50.insert.ext.i.i.i.i = zext i48 %.sroa.17.sroa.6.sroa.0.0.copyload.i.i.i.i to i56
  %.sroa.18166.50.insert.shift.i.i.i.i = shl nuw i56 %.sroa.18166.50.insert.ext.i.i.i.i, 8
  %.sroa.18166.50.insert.insert.i.i.i.i = or disjoint i56 %.sroa.18166.50.insert.shift.i.i.i.i, %.sroa.18166.49.insert.ext.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %i.ak, i64 7, i1 false), !noalias !58074
  %.sroa.18.i.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.18.i.sroa.9.0.copyload.i = load i16, ptr %.sroa.18.i.sroa.9.0..sroa_idx.i, align 8, !noalias !58074
  %.sroa.19.33..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 34
  %.sroa.19.33.copyload.i.i = load i8, ptr %.sroa.19.33..sroa_idx.i.i, align 2, !noalias !58074
  %.sroa.20.33..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 35
  %.sroa.20.i.sroa.0.0.copyload.i = load i40, ptr %.sroa.20.33..sroa_idx.i.i, align 1, !noalias !58074
  %i.bl = ptrtoint ptr %.sroa.3.8.copyload2.i.i.i.i to i64 ; 2 uses
  %.sroa.81.sroa.0.0.extract.trunc22.i.i = trunc i64 %i.bl to i8
  %.sroa.81.sroa.8.0.extract.shift24.i.i = lshr i64 %i.bl, 8
  %.sroa.81.sroa.8.0.extract.trunc25.i.i = trunc nuw i64 %.sroa.81.sroa.8.0.extract.shift24.i.i to i56
  %i.bm = inttoptr i64 %.sroa.15.8.copyload28.i.i.i.i to ptr
  br label %bb.s

bb.q:                                             ; preds = %bb.l
  %lpad.thr_comm.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCslM3NUDSIqe7_12icu_provider8response11DataPayloadNtNtBG_3buf12BufferMarkerEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i) #54
          to label %.body.i unwind label %bb.r, !noalias !58067

bb.r:                                             ; preds = %bb.q
  %i.bn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !58067
  unreachable

bb.s:                                             ; preds = %.noexc4.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i, %bb.m, %bb.c
  %.sroa.18.i.sroa.9.0.i = phi i16 [ %.sroa.6.i.i.sroa.9.i.sroa.6.0.copyload.i, %bb.c ], [ %.sroa.18.i.sroa.9.0.copyload27.i, %bb.m ], [ %.sroa.18.i.sroa.9.0.copyload27.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.18.i.sroa.9.0.copyload.i, %.noexc4.i ]
  %.sroa.20.i.sroa.0.0.i = phi i40 [ %.sroa.6.i.i.sroa.11.i.sroa.0.0.copyload.i, %bb.c ], [ %.sroa.20.i.sroa.0.0.copyload23.i, %bb.m ], [ %.sroa.20.i.sroa.0.0.copyload23.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.20.i.sroa.0.0.copyload.i, %.noexc4.i ]
  %.sroa.81.sroa.8.sroa.0.0.ph.i.i = phi i56 [ %.sroa.81.sroa.8.0.extract.trunc27.i.i, %bb.c ], [ %.sroa.81.sroa.8.sroa.0.0.copyload.i.i, %bb.m ], [ %.sroa.81.sroa.8.sroa.0.0.copyload.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.81.sroa.8.0.extract.trunc25.i.i, %.noexc4.i ]
  %.sroa.81.sroa.0.0.ph.i.i = phi i8 [ %.sroa.81.sroa.0.0.extract.trunc23.i.i, %bb.c ], [ %.sroa.014.0.copyload.i.i.i.i, %bb.m ], [ %.sroa.014.0.copyload.i.i.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.81.sroa.0.0.extract.trunc22.i.i, %.noexc4.i ]
  %.sroa.22.0.ph.i.i = phi ptr [ %.sroa.6.i.i.sroa.12.0.copyload.i.i, %bb.c ], [ %.sroa.22.9.copyload.i.i, %bb.m ], [ %.sroa.22.9.copyload.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bm, %.noexc4.i ]
  %.sroa.25.sroa.9.0.ph.i.i = phi i56 [ %.sroa.25.sroa.9.0.extract.trunc.i.i, %bb.c ], [ %.sroa.25.sroa.9.0.insert.insert21.i.i, %bb.m ], [ %.sroa.25.sroa.9.0.insert.insert21.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.18166.50.insert.insert.i.i.i.i, %.noexc4.i ]
  %.sroa.25.sroa.0.0.ph.i.i = phi i8 [ %.sroa.25.sroa.0.0.extract.trunc.i.i, %bb.c ], [ %.sroa.25.sroa.0.0.copyload.i.i, %bb.m ], [ %.sroa.25.sroa.0.0.copyload.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.1634.8.copyload38.i.i.i.i, %.noexc4.i ]
  %.sroa.19.0.ph.i.i = phi i8 [ %.sroa.6.i.i.sroa.10.0.copyload.i.i, %bb.c ], [ %.sroa.19.9.copyload.i.i, %bb.m ], [ %.sroa.19.9.copyload.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.19.33.copyload.i.i, %.noexc4.i ]
  %.sroa.17.0.ph.i.i = phi i8 [ %.sroa.6.i.i.sroa.8.0.copyload.i.i, %bb.c ], [ %.sroa.17.9.copyload.i.i, %bb.m ], [ %.sroa.17.9.copyload.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.13.8.copyload19.i.i.i.i, %.noexc4.i ]
  %i.bo = phi <2 x i64> [ %i.ap, %bb.c ], [ %i.bf, %bb.m ], [ %i.bf, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i ], [ %i.bk, %.noexc4.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !58063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !58063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !58059
  %.sroa.81.sroa.8.0.insert.ext.i.i = zext i56 %.sroa.81.sroa.8.sroa.0.0.ph.i.i to i64
  %.sroa.81.sroa.8.0.insert.shift.i.i = shl nuw i64 %.sroa.81.sroa.8.0.insert.ext.i.i, 8
  %.sroa.81.sroa.0.0.insert.ext.i.i = zext i8 %.sroa.81.sroa.0.0.ph.i.i to i64
  %.sroa.81.sroa.0.0.insert.insert.i.i = or disjoint i64 %.sroa.81.sroa.8.0.insert.shift.i.i, %.sroa.81.sroa.0.0.insert.ext.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.8.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.0.i, i64 7, i1 false), !noalias !58059
  %.sroa.25.sroa.9.0.insert.ext12.i.i = zext i56 %.sroa.25.sroa.9.0.ph.i.i to i64
  %.sroa.25.sroa.9.0.insert.shift13.i.i = shl nuw i64 %.sroa.25.sroa.9.0.insert.ext12.i.i, 8
  %.sroa.25.sroa.0.0.insert.ext8.i.i = zext i8 %.sroa.25.sroa.0.0.ph.i.i to i64
  %.sroa.25.sroa.0.0.insert.insert10.i.i = or disjoint i64 %.sroa.25.sroa.9.0.insert.shift13.i.i, %.sroa.25.sroa.0.0.insert.ext8.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.0.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.8.i.sroa.0.i, i64 7, i1 false), !noalias !58121
  br label %bb.aq

bb.t:                                             ; preds = %.cont.i.i.i.i
  %.sroa.11.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  %.sroa.11.1.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.11.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 16, !noalias !58122
  %.sroa.13.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 17
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %i.ak, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.13.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, i64 15, i1 false), !noalias !58067
  %.sroa.15.33..sroa.13.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  %.sroa.15.33.copyload.i.i.i.i = load i8, ptr %.sroa.15.33..sroa.13.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.sroa_idx.i.i.i.i, align 16, !noalias !58123
  %.sroa.16.33..sroa.13.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %i.al, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.16.33..sroa.13.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !58067
  %.sroa.135.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  %.sroa.135.1.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.135.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 8, !noalias !58122
  %.sroa.15.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 41
  %.sroa.15.1.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.15.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 1, !noalias !58122
  %.sroa.158.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 49
  %.sroa.158.1.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.158.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, align 1, !noalias !58122
  %.sroa.17.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 50
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(62) %.sroa.21.i.i.i.i.i, ptr noundef nonnull align 2 dereferenceable(62) %.sroa.17.1..sroa.442.0..sroa_idx.i.i.sroa_idx.i.i.i.i.i.i, i64 62, i1 false), !noalias !58059
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.o, i64 113
  %.sroa.14130.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 121
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.14130.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i, i64 15, i1 false), !noalias !58059
  %.sroa.21.64..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.21.i.i.i.i.i, i64 6
  %.sroa.12128.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 64
  %.sroa.5122.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 25
  %.sroa.7124.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 41
  %.sroa.2.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.bp = load <2 x i64>, ptr %i.o, align 16, !noalias !58122
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !58081
  call void @llvm.lifetime.end.p0(ptr nonnull %i.p), !noalias !58081
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12128.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(56) %.sroa.21.64..sroa_idx.i.i.i.i.i, i64 56, i1 false), !noalias !58059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5122.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(15) %i.ak, i64 15, i1 false), !noalias !58059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.7124.0..sroa_idx.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.al, i64 7, i1 false), !noalias !58059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i, i64 7, i1 false), !noalias !58074
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !58063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.w), !noalias !58063
  call void @llvm.lifetime.end.p0(ptr nonnull %i.y), !noalias !58059
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.9.sroa.8.i.sroa.0.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.sroa.0.i, i64 7, i1 false), !noalias !58059
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.18.i.sroa.0.i)
  store ptr %.sroa.07.0.i.i.i.i.i, ptr %i.z, align 8, !noalias !58059
  store <2 x i64> %i.bp, ptr %.sroa.2.0..sroa_idx.i.i, align 8, !noalias !58059
  %.sroa.4121.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 24
  store i8 %.sroa.11.1.copyload.i.i.i.i.i.i, ptr %.sroa.4121.0..sroa_idx.i.i, align 8, !noalias !58059
  %.sroa.6123.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 40
  store i8 %.sroa.15.33.copyload.i.i.i.i, ptr %.sroa.6123.0..sroa_idx.i.i, align 8, !noalias !58059
  %.sroa.8125.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 48
  store i8 %.sroa.135.1.copyload.i.i.i.i.i.i, ptr %.sroa.8125.0..sroa_idx.i.i, align 8, !noalias !58059
  %.sroa.9126.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 49
  store i64 %.sroa.15.1.copyload.i.i.i.i.i.i, ptr %.sroa.9126.0..sroa_idx.i.i, align 1, !noalias !58059
  %.sroa.10127.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 57
  store i8 %.sroa.158.1.copyload.i.i.i.i.i.i, ptr %.sroa.10127.0..sroa_idx.i.i, align 1, !noalias !58059
  %.sroa.11.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 58
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(6) %.sroa.11.0..sroa_idx.i.i, ptr noundef nonnull align 2 dereferenceable(6) %.sroa.21.i.i.i.i.i, i64 6, i1 false), !noalias !58059
  %.sroa.13129.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.z, i64 120
  store i8 %i.aw, ptr %.sroa.13129.0..sroa_idx.i.i, align 8, !noalias !58059
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.18.i.i.sroa.0.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.23.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !58124)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !58127
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !58127
  %i.bq = getelementptr inbounds nuw i8, ptr %i.l, i64 33 ; 2 uses
  %i.br = getelementptr inbounds nuw i8, ptr %i.l, i64 43 ; 2 uses
  store ptr inttoptr (i64 1 to ptr), ptr %i.e, align 8, !noalias !58130
  %.sroa.49.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 0, ptr %.sroa.49.0..sroa_idx.i.i.i.i, align 8, !noalias !58130
  %.sroa.510.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr @_RNvNvXs3_NtCsQl2mMA5FpV_15icu_locale_core4dataRNtB7_10DataLocaleNtNtCs3oUPovFnLWP_4core7default7Default7default7DEFAULT, ptr %.sroa.510.0..sroa_idx.i.i.i.i, align 8, !noalias !58130
  %i.bs = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  store i8 0, ptr %i.bs, align 8, !noalias !58130
  %i.bt = getelementptr inbounds nuw i8, ptr %i.e, i64 25
  store i8 0, ptr %i.bt, align 1, !noalias !58130
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !58131
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !58131
  %i.bu = getelementptr inbounds nuw i8, ptr %i.g, i64 25 ; 3 uses
  %i.bv = getelementptr inbounds nuw i8, ptr %i.g, i64 41 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !58135
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(11) %i.f, ptr noundef nonnull readonly align 1 dereferenceable(11) @753, i64 11, i1 false), !noalias !58140
  invoke void @_RNvXs0_NtCsfj0ApNBhSbI_17icu_provider_blob18blob_data_providerNtB5_16BlobDataProviderINtNtCslM3NUDSIqe7_12icu_provider13data_provider19DynamicDataProviderNtNtB1q_3buf12BufferMarkerE9load_data(ptr noalias nofree noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.l, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.ad, ptr noalias nofree noundef nonnull readonly align 1 captures(address) dereferenceable(11) %i.f, ptr noalias nofree noundef nonnull readonly align 8 captures(address) dereferenceable(32) %i.e)
          to label %.noexc.i.i unwind label %bb.ak, !noalias !58059

.noexc.i.i:                                       ; preds = %bb.t
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !58135
  %i.bw = load i64, ptr %i.l, align 8, !range !289, !noalias !58130, !noundef !10 ; 2 uses
  %i.bx = icmp eq i64 %i.bw, 2
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.6.i.i.sroa.0.0.copyload.i.i.i.i = load i64, ptr %i.by, align 8, !noalias !58130 ; 3 uses
  %.sroa.6.i.i.sroa.6.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.bz = load <2 x i64>, ptr %.sroa.6.i.i.sroa.6.0..sroa_idx.i.i.i.i, align 8, !noalias !58130 ; 2 uses
  %.sroa.6.i.i.sroa.8.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %.sroa.6.i.i.sroa.8.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.i.i.sroa.8.0..sroa_idx.i.i.i.i, align 8, !noalias !58130 ; 2 uses
  %.sroa.6.i.i.sroa.10.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 42
  %.sroa.6.i.i.sroa.10.0.copyload.i.i.i.i = load i8, ptr %.sroa.6.i.i.sroa.10.0..sroa_idx.i.i.i.i, align 2, !noalias !58130 ; 4 uses
  %.sroa.6.i.i.sroa.12.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 48
  %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i = load ptr, ptr %.sroa.6.i.i.sroa.12.0..sroa_idx.i.i.i.i, align 8, !noalias !58130 ; 7 uses
  %.sroa.6.i.i.sroa.13.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 56
  %.sroa.6.i.i.sroa.13.0.copyload.i.i.i.i = load i64, ptr %.sroa.6.i.i.sroa.13.0..sroa_idx.i.i.i.i, align 8, !noalias !58130 ; 4 uses
  br i1 %i.bx, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.noexc.i.i
  %.sroa.8.sroa.0.0.extract.trunc22.i.i.i.i = trunc i64 %.sroa.6.i.i.sroa.0.0.copyload.i.i.i.i to i8
  %.sroa.8.sroa.8.0.extract.shift25.i.i.i.i = lshr i64 %.sroa.6.i.i.sroa.0.0.copyload.i.i.i.i, 8
  %.sroa.8.sroa.8.0.extract.trunc26.i.i.i.i = trunc nuw i64 %.sroa.8.sroa.8.0.extract.shift25.i.i.i.i to i56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.i.sroa.0.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.bq, i64 7, i1 false), !noalias !58127
  %.sroa.18.i.i.sroa.8.0..sroa_idx145.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 40
  %.sroa.18.i.i.sroa.8.0.copyload146.i.i = load i16, ptr %.sroa.18.i.i.sroa.8.0..sroa_idx145.i.i, align 8, !noalias !58127
  %.sroa.20.i.i.sroa.0.0.copyload140.i.i = load i40, ptr %i.br, align 1, !noalias !58127
  %.sroa.25.sroa.0.0.extract.trunc.i.i.i.i = trunc i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i.i.i to i8
  %.sroa.25.sroa.9.0.extract.shift.i.i.i.i = lshr i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i.i.i, 8
  %.sroa.25.sroa.9.0.extract.trunc.i.i.i.i = trunc nuw i64 %.sroa.25.sroa.9.0.extract.shift.i.i.i.i to i56
  br label %bb.al

bb.v:                                             ; preds = %.noexc.i.i
  %.sroa.534.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 64
  %.sroa.534.0.copyload.i.i.i.i.i.i = load i64, ptr %.sroa.534.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58130 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store i64 %.sroa.6.i.i.sroa.0.0.copyload.i.i.i.i, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58135
  %.sroa.6.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store <2 x i64> %i.bz, ptr %.sroa.6.i.i.sroa.6.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58135
  %.sroa.6.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 32
  store i8 %.sroa.6.i.i.sroa.8.0.copyload.i.i.i.i, ptr %.sroa.6.i.i.sroa.8.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58135
  %.sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 33
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(9) %.sroa.6.i.i.sroa.9.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(9) %i.bq, i64 9, i1 false), !noalias !58130
  %.sroa.6.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 42
  store i8 %.sroa.6.i.i.sroa.10.0.copyload.i.i.i.i, ptr %.sroa.6.i.i.sroa.10.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 2, !noalias !58135
  %.sroa.6.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 43
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(5) %.sroa.6.i.i.sroa.11.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, ptr noundef nonnull align 1 dereferenceable(5) %i.br, i64 5, i1 false), !noalias !58130
  %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 48 ; 2 uses
  store ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i, ptr %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58135
  %.sroa.6.i.i.sroa.13.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 56
  store i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i.i.i, ptr %.sroa.6.i.i.sroa.13.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58135
  store i64 %i.bw, ptr %i.k, align 8, !noalias !58135
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 64
  store i64 %.sroa.534.0.copyload.i.i.i.i.i.i, ptr %.sroa.5.0..sroa_idx.i.i.i.i.i.i, align 8, !noalias !58135
  %.not.i.i.i.i.i.i = icmp eq i8 %.sroa.6.i.i.sroa.10.0.copyload.i.i.i.i, -1
  %2 = inttoptr i64 %.sroa.6.i.i.sroa.13.0.copyload.i.i.i.i to ptr ; 3 uses
  br i1 %.not.i.i.i.i.i.i, label %bb.ad, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.ca = icmp eq ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i, null ; 2 uses
  %i.cb = load ptr, ptr @_RNvNvNtCsd8SJu24xSUi_4yoke12cartable_ptr12sentinel_for8SENTINEL, align 8, !noalias !58141, !nonnull !10 ; 2 uses
  %.sroa.07.0.i.i.i.i.i.i.i = select i1 %i.ca, ptr %i.cb, ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i ; 3 uses
  switch i8 %.sroa.6.i.i.sroa.10.0.copyload.i.i.i.i, label %default.unreachable.i.i.i.i.i [
    i8 2, label %bb.x
    i8 0, label %bb.aa
    i8 1, label %bb.z
  ], !prof !58079

bb.x:                                             ; preds = %bb.w
  br i1 %i.ca, label %.then.i.i.i.i.i.i, label %.cont.i.i.i.i.i.i

.then.i.i.i.i.i.i:                                ; preds = %bb.x
  %i.cc = getelementptr i8, ptr %2, i64 8
  %.sroa.49.0.i.then.val.i.i.i.i.i.i = load ptr, ptr %2, align 8, !noalias !58145, !nonnull !10, !noundef !10
  %.sroa.610.0.i.then.val.i.i.i.i.i.i = load i64, ptr %i.cc, align 8, !noalias !58145
  br label %.cont.i.i.i.i.i.i

.cont.i.i.i.i.i.i:                                ; preds = %.then.i.i.i.i.i.i, %bb.x
  %.sroa.49.0.i177.i.i.i.i.i.i = phi ptr [ %.sroa.49.0.i.then.val.i.i.i.i.i.i, %.then.i.i.i.i.i.i ], [ %2, %bb.x ] ; 2 uses
  %.sroa.610.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.610.0.i.then.val.i.i.i.i.i.i, %.then.i.i.i.i.i.i ], [ %.sroa.534.0.copyload.i.i.i.i.i.i, %bb.x ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !58146
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.49.0.i177.i.i.i.i.i.i, i64 %.sroa.610.0.i.i.i.i.i.i.i
  store ptr %.sroa.49.0.i177.i.i.i.i.i.i, ptr %i.d, align 8, !noalias !58146
  %i.ce = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.cd, ptr %i.ce, align 8, !noalias !58146
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !58146
  call fastcc void @_RINvXNvNtCselBS6QMlFOX_13icu_segmenter8providers_1__NtB5_13RuleBreakDataNtNtCs7PiwjADO7TO_10serde_core2de11Deserialize11deserializeQINtNtNtCsjfJpIPnyD7D_8postcard2de12deserializer12DeserializerNtNtB2b_7flavors5SliceEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 captures(address) dereferenceable(128) %i.c, ptr noalias nofree noundef align 8 dereferenceable(16) %i.d), !noalias !58156
  %i.cf = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  %i.cg = load i8, ptr %i.cf, align 16, !range !284, !noalias !58146, !noundef !10 ; 2 uses
  %i.ch = icmp eq i8 %i.cg, 2
  br i1 %i.ch, label %bb.y, label %bb.ar

bb.y:                                             ; preds = %.cont.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !58146
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !58146
  br label %bb.aa

default.unreachable.i.i.i.i.i:                    ; preds = %bb.w
  unreachable

bb.z:                                             ; preds = %bb.w
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y, %bb.w
  %.sroa.01.0.ph.i.i.i.i.i.i.i.i = phi ptr [ @170, %bb.w ], [ @171, %bb.z ], [ @169, %bb.y ]
  %.sroa.9.0.ph.i.i.i.i.i.i.i.i = phi i64 [ 80, %bb.w ], [ 89, %bb.z ], [ 8, %bb.y ]
  %.not.i.i.i.i.i.i.i.i49.i.i = icmp eq ptr %.sroa.07.0.i.i.i.i.i.i.i, %i.cb
  br i1 %.not.i.i.i.i.i.i.i.i49.i.i, label %bb.ah, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !58157
  %i.ci = getelementptr inbounds i8, ptr %.sroa.07.0.i.i.i.i.i.i.i, i64 -16 ; 2 uses
  store ptr %i.ci, ptr %i.b, align 8, !noalias !58157
  %i.cj = atomicrmw sub ptr %i.ci, i64 1 release, align 8, !noalias !58162
  %i.ck = icmp eq i64 %i.cj, 1
  br i1 %i.ck, label %bb.ac, label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i50.i.i

bb.ac:                                            ; preds = %bb.ab
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxShEE9drop_slowCslM3NUDSIqe7_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b) #58
          to label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i50.i.i unwind label %bb.ak, !noalias !58059

_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i50.i.i: ; preds = %bb.ac, %bb.ab
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !58157
  br label %bb.ah

bb.ad:                                            ; preds = %bb.v
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !58135
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !58135
  %i.cl = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store i8 5, ptr %i.cl, align 8, !noalias !58135
  %i.cm = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store i8 0, ptr %i.cm, align 8, !noalias !58135
  store ptr @705, ptr %i.i, align 8, !noalias !58135
  %i.cn = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 38, ptr %i.cn, align 8, !noalias !58135
  %i.co = getelementptr inbounds nuw i8, ptr %i.i, i64 49
  store i8 0, ptr %i.co, align 1, !noalias !58135
  invoke void @_RNvMs0_NtCslM3NUDSIqe7_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.j, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.i, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(11) @753, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
          to label %bb.ae unwind label %bb.ai, !noalias !58130

bb.ae:                                            ; preds = %bb.ad
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !58135
  %.sroa.014.0.copyload.i.i.i.i.i.i = load i8, ptr %i.j, align 8, !noalias !58135 ; 2 uses
  %.sroa.716.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 1
  %.sroa.8.sroa.8.sroa.0.0.copyload.i.i.i.i = load i56, ptr %.sroa.716.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !58167 ; 2 uses
  %.sroa.13.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.cp = load <2 x i64>, ptr %.sroa.13.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58167 ; 2 uses
  %.sroa.17.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %.sroa.17.9.copyload.i.i.i.i = load i8, ptr %.sroa.17.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58167 ; 2 uses
  %.sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.i.sroa.0.i.i, ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i, i64 7, i1 false), !noalias !58127
  %.sroa.18.i.i.sroa.8.0..sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 32
  %.sroa.18.i.i.sroa.8.0.copyload144.i.i = load i16, ptr %.sroa.18.i.i.sroa.8.0..sroa.18.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.sroa_idx.i.i, align 8, !noalias !58127 ; 2 uses
  %.sroa.19.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 34
  %.sroa.19.9.copyload.i.i.i.i = load i8, ptr %.sroa.19.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 2, !noalias !58167 ; 2 uses
  %.sroa.20.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 35
  %.sroa.20.i.i.sroa.0.0.copyload139.i.i = load i40, ptr %.sroa.20.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 1, !noalias !58127 ; 2 uses
  %.sroa.22.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 40
  %.sroa.22.9.copyload.i.i.i.i = load ptr, ptr %.sroa.22.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58167 ; 2 uses
  %.sroa.25.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.25.sroa.0.0.copyload.i.i.i.i = load i8, ptr %.sroa.25.9..sroa.716.0..sroa_idx.i.i.sroa_idx.i.i.i.i, align 8, !noalias !58167 ; 2 uses
  %.sroa.718.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 49
  %.sroa.718.0.copyload.i.i.i.i.i.i = load i8, ptr %.sroa.718.0..sroa_idx.i.i.i.i.i.i, align 1, !noalias !58135
  %.sroa.821.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.j, i64 50
  %.sroa.25.sroa.9.1.copyload.i.i.i.i = load i48, ptr %.sroa.821.0..sroa_idx.i.i.i.i.i.i, align 2, !noalias !58167
  %.sroa.25.sroa.9.1.insert.ext.i.i.i.i = zext i48 %.sroa.25.sroa.9.1.copyload.i.i.i.i to i56
  %.sroa.25.sroa.9.1.insert.shift.i.i.i.i = shl nuw i56 %.sroa.25.sroa.9.1.insert.ext.i.i.i.i, 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !58135
  %.sroa.25.sroa.9.0.insert.ext18.i.i.i.i = zext i8 %.sroa.718.0.copyload.i.i.i.i.i.i to i56
  %.sroa.25.sroa.9.0.insert.insert20.i.i.i.i = or disjoint i56 %.sroa.25.sroa.9.1.insert.shift.i.i.i.i, %.sroa.25.sroa.9.0.insert.ext18.i.i.i.i ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i, null
  %i.cq = load ptr, ptr @_RNvNvNtCsd8SJu24xSUi_4yoke12cartable_ptr12sentinel_for8SENTINEL, align 8, !noalias !58131, !nonnull !10
  %.not.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i, %i.cq
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i.i.i.i.i, i1 true, i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %or.cond.i.i.i.i.i, label %bb.al, label %bb.af

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !58168
  %i.cr = getelementptr inbounds i8, ptr %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i, i64 -16 ; 2 uses
  store ptr %i.cr, ptr %i.a, align 8, !noalias !58168
  %i.cs = atomicrmw sub ptr %i.cr, i64 1 release, align 8, !noalias !58181
  %i.ct = icmp eq i64 %i.cs, 1
  br i1 %i.ct, label %bb.ag, label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ag:                                            ; preds = %bb.af
  fence acquire
  invoke void @_RNvMsn_NtCs1xwejQucwHj_5alloc4syncINtB5_3ArcINtNtB7_5boxed3BoxShEE9drop_slowCslM3NUDSIqe7_12icu_provider(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a) #58
          to label %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i unwind label %bb.ak, !noalias !58059

_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ag, %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !58168
  br label %bb.al

bb.ah:                                            ; preds = %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i50.i.i, %bb.aa
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !58135
  store ptr %.sroa.01.0.ph.i.i.i.i.i.i.i.i, ptr %i.h, align 8, !noalias !58135
  %.sroa.9.8..sroa_idx4.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store i64 %.sroa.9.0.ph.i.i.i.i.i.i.i.i, ptr %.sroa.9.8..sroa_idx4.i.i.i.i.i.i, align 8, !noalias !58135
  %.sroa.11.8..sroa_idx10.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 5, ptr %.sroa.11.8..sroa_idx10.i.i.i.i.i.i, align 8, !noalias !58135
  %.sroa.15.8..sroa_idx25.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40
  store i8 0, ptr %.sroa.15.8..sroa_idx25.i.i.i.i.i.i, align 8, !noalias !58135
  %.sroa.17.8..sroa_idx41.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 49
  store i8 0, ptr %.sroa.17.8..sroa_idx41.i.i.i.i.i.i, align 1, !noalias !58135
  invoke void @_RNvMs0_NtCslM3NUDSIqe7_12icu_provider5errorNtB5_9DataError8with_req(ptr noalias nofree noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.g, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.h, ptr noalias nofree noundef nonnull readonly align 1 captures(none) dereferenceable(11) @753, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.e)
          to label %.noexc53.i.i unwind label %bb.ak, !noalias !58059

.noexc53.i.i:                                     ; preds = %bb.ah
  %.sroa.3.8.copyload2.i.i.i.i.i.i = load ptr, ptr %i.g, align 8, !noalias !58135
  %.sroa.9.8..sroa_idx6.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.cu = load <2 x i64>, ptr %.sroa.9.8..sroa_idx6.i.i.i.i.i.i, align 8, !noalias !58135
  %.sroa.13.8..sroa_idx18.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  %.sroa.13.8.copyload19.i.i.i.i.i.i = load i8, ptr %.sroa.13.8..sroa_idx18.i.i.i.i.i.i, align 8, !noalias !58135
  %.sroa.15.8..sroa_idx27.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  %.sroa.15.8.copyload28.i.i.i.i.i.i = load i64, ptr %.sroa.15.8..sroa_idx27.i.i.i.i.i.i, align 8, !noalias !58167
  %.sroa.1634.8..sroa_idx37.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %.sroa.1634.8.copyload38.i.i.i.i.i.i = load i8, ptr %.sroa.1634.8..sroa_idx37.i.i.i.i.i.i, align 8, !noalias !58135
  %.sroa.17.8..sroa_idx42.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 49
  %.sroa.17.sroa.0.0.copyload44.i.i.i.i.i.i = load i8, ptr %.sroa.17.8..sroa_idx42.i.i.i.i.i.i, align 1, !noalias !58135
  %.sroa.17.sroa.6.0..sroa.17.8..sroa_idx42.sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 50
  %.sroa.17.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i = load i48, ptr %.sroa.17.sroa.6.0..sroa.17.8..sroa_idx42.sroa_idx.i.i.i.i.i.i, align 2, !noalias !58135
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !58135
  %.sroa.18166.49.insert.ext.i.i.i.i.i.i = zext i8 %.sroa.17.sroa.0.0.copyload44.i.i.i.i.i.i to i56
  %.sroa.18166.50.insert.ext.i.i.i.i.i.i = zext i48 %.sroa.17.sroa.6.sroa.0.0.copyload.i.i.i.i.i.i to i56
  %.sroa.18166.50.insert.shift.i.i.i.i.i.i = shl nuw i56 %.sroa.18166.50.insert.ext.i.i.i.i.i.i, 8
  %.sroa.18166.50.insert.insert.i.i.i.i.i.i = or disjoint i56 %.sroa.18166.50.insert.shift.i.i.i.i.i.i, %.sroa.18166.49.insert.ext.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(7) %.sroa.18.i.i.sroa.0.i.i, ptr noundef nonnull align 1 dereferenceable(7) %i.bu, i64 7, i1 false), !noalias !58127
  %.sroa.18.i.i.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  %.sroa.18.i.i.sroa.8.0.copyload.i.i = load i16, ptr %.sroa.18.i.i.sroa.8.0..sroa_idx.i.i, align 8, !noalias !58127
  %.sroa.19.33..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 34
  %.sroa.19.33.copyload.i.i.i.i = load i8, ptr %.sroa.19.33..sroa_idx.i.i.i.i, align 2, !noalias !58167
  %.sroa.20.33..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 35
  %.sroa.20.i.i.sroa.0.0.copyload.i.i = load i40, ptr %.sroa.20.33..sroa_idx.i.i.i.i, align 1, !noalias !58127
  %i.cv = ptrtoint ptr %.sroa.3.8.copyload2.i.i.i.i.i.i to i64 ; 2 uses
  %.sroa.8.sroa.0.0.extract.trunc21.i.i.i.i = trunc i64 %i.cv to i8
  %.sroa.8.sroa.8.0.extract.shift23.i.i.i.i = lshr i64 %i.cv, 8
  %.sroa.8.sroa.8.0.extract.trunc24.i.i.i.i = trunc nuw i64 %.sroa.8.sroa.8.0.extract.shift23.i.i.i.i to i56
  %i.cw = inttoptr i64 %.sroa.15.8.copyload28.i.i.i.i.i.i to ptr
  br label %bb.al

bb.ai:                                            ; preds = %bb.ad
  %lpad.thr_comm.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCslM3NUDSIqe7_12icu_provider8response11DataPayloadNtNtBG_3buf12BufferMarkerEECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(24) %.sroa.6.i.i.sroa.12.0..sroa.4.0..sroa_idx.i.i.sroa_idx.i.i.i.i) #54
          to label %.body.i.i unwind label %bb.aj, !noalias !58135

bb.aj:                                            ; preds = %bb.ai
  %i.cx = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #55, !noalias !58135
  unreachable

bb.ak:                                            ; preds = %bb.ah, %bb.ag, %bb.ac, %bb.t
  %i.cy = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.body.i.i:                                        ; preds = %bb.ak, %bb.ai
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.cy, %bb.ak ], [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %bb.ai ]
  invoke fastcc void @_RINvNtCs3oUPovFnLWP_4core3ptr9drop_glueINtNtCslM3NUDSIqe7_12icu_provider8response11DataPayloadNtNtCselBS6QMlFOX_13icu_segmenter8provider20SegmenterBreakLineV1EECs7tN9tvpkfrg_12typst_layout(ptr noalias nofree noundef align 8 dereferenceable(136) %i.z) #54
          to label %.body.i unwind label %bb.am, !noalias !58059

bb.al:                                            ; preds = %.noexc53.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i, %bb.ae, %bb.u
  %.sroa.20.i.i.sroa.0.0.i.i = phi i40 [ %.sroa.20.i.i.sroa.0.0.copyload140.i.i, %bb.u ], [ %.sroa.20.i.i.sroa.0.0.copyload139.i.i, %bb.ae ], [ %.sroa.20.i.i.sroa.0.0.copyload139.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.20.i.i.sroa.0.0.copyload.i.i, %.noexc53.i.i ]
  %.sroa.18.i.i.sroa.8.0.i.i = phi i16 [ %.sroa.18.i.i.sroa.8.0.copyload146.i.i, %bb.u ], [ %.sroa.18.i.i.sroa.8.0.copyload144.i.i, %bb.ae ], [ %.sroa.18.i.i.sroa.8.0.copyload144.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.18.i.i.sroa.8.0.copyload.i.i, %.noexc53.i.i ]
  %.sroa.8.sroa.8.sroa.0.0.ph.i.i.i.i = phi i56 [ %.sroa.8.sroa.8.0.extract.trunc26.i.i.i.i, %bb.u ], [ %.sroa.8.sroa.8.sroa.0.0.copyload.i.i.i.i, %bb.ae ], [ %.sroa.8.sroa.8.sroa.0.0.copyload.i.i.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.sroa.8.0.extract.trunc24.i.i.i.i, %.noexc53.i.i ]
  %.sroa.8.sroa.0.0.ph.i.i.i.i = phi i8 [ %.sroa.8.sroa.0.0.extract.trunc22.i.i.i.i, %bb.u ], [ %.sroa.014.0.copyload.i.i.i.i.i.i, %bb.ae ], [ %.sroa.014.0.copyload.i.i.i.i.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.sroa.8.sroa.0.0.extract.trunc21.i.i.i.i, %.noexc53.i.i ]
  %.sroa.22.0.ph.i.i.i.i = phi ptr [ %.sroa.6.i.i.sroa.12.0.copyload.i.i.i.i, %bb.u ], [ %.sroa.22.9.copyload.i.i.i.i, %bb.ae ], [ %.sroa.22.9.copyload.i.i.i.i, %_RNvXs7_NtCsd8SJu24xSUi_4yoke12cartable_ptrINtNtCs1xwejQucwHj_5alloc4sync3ArcINtNtBJ_5boxed3BoxShEENtB5_19CartablePointerLike8drop_rawCs7tN9tvpkfrg_12typst_layout.exit.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.cw, %.noexc53.i.i ]
end_hunk_10
