Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rustls-rs/original/rustls-4ad64157e40deda7.rustls.5d29eed01e91001d-cgu.08?download=true
inline.NumInlined: 649
inline.NumDeleted: 283
begin_hunk_0_@_RNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB4_17ExpectClientHello18with_certified_key:bb.a
.body.i:                                          ; preds = %bb.cc, %bb.bz, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i, %.loopexit.split-lp.loopexit.i, %.loopexit.i
  %.pn.i = phi { ptr, i32 } [ %i.qa, %bb.bz ], [ %i.qc, %bb.cc ], [ %lpad.loopexit.i, %.loopexit.i ], [ %lpad.loopexit23.i, %.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit29.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit31.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit34.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i ], [ %lpad.loopexit.split-lp.i, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i ]
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EEEB1B_(ptr noalias nofree noundef align 8 dereferenceable(24) %i.bk) #24
          to label %.body190 unwind label %bb.cf, !noalias !663

.loopexit.i:                                      ; preds = %.noexc105.i, %bb.cg
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, %bb.bm
  %lpad.loopexit23.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.i:  ; preds = %.noexc77.i, %.lr.ph
  %lpad.loopexit29.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bb, %bb.ba
  %lpad.loopexit31.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i: ; preds = %bb.bd, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i
  %lpad.loopexit34.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i: ; preds = %bb.ck, %.noexc103.i, %._RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups3_0Ba_.exit.thread_crit_edge7.split.us.i.i, %bb.cd, %bb.ca, %bb.bk
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i: ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i, %.noexc73.i, %._RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit_crit_edge.i
  %i.lg = phi i16 [ %.pre56.i, %._RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit_crit_edge.i ], [ %i.kj, %.noexc73.i ], [ %i.kj, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i ]
  %.sroa.0.0.i.i = phi ptr [ null, %._RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit_crit_edge.i ], [ null, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_group0Ba_.exit.thread.i.i ], [ %i.kl, %.noexc73.i ] ; 2 uses
  %i.lh = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %.pre.i, i16 %i.lg)
          to label %bb.bc unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !663 ; 2 uses

bb.bc:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_group0EBW_.exit.i
  %i.li = icmp ne ptr %.sroa.0.0.i.i, null
  %i.lj = zext i1 %i.li to i8
  %..i = select i1 %i.lh, ptr %i.bm, ptr %i.bl    ; 2 uses
  %not..i = xor i1 %i.lh, true
  %.sroa.0.045..i = select i1 %not..i, i1 true, i1 %.sroa.0.045.i ; 2 uses
  %i.lk = load i8, ptr %..i, align 1, !range !12, !noalias !662, !noundef !5
  %i.ll = or i8 %i.lk, %i.lj
  store i8 %i.ll, ptr %..i, align 1, !noalias !662
  %i.lm = load i64, ptr %i.jt, align 8, !alias.scope !669, !noalias !662, !noundef !5 ; 3 uses
  %i.ln = load i64, ptr %i.bk, align 8, !range !6, !alias.scope !669, !noalias !662, !noundef !5
  %i.lo = icmp eq i64 %i.lm, %i.ln
  br i1 %i.lo, label %bb.bd, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8push_mutB1o_.exit.i

bb.bd:                                            ; preds = %bb.bc
  invoke void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8grow_oneB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk) #27
          to label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8push_mutB1o_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !663

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EE8push_mutB1o_.exit.i: ; preds = %bb.bd, %bb.bc
  %i.lp = load ptr, ptr %i.js, align 8, !alias.scope !669, !noalias !662, !nonnull !5, !noundef !5
  %i.lq = getelementptr inbounds nuw [8 x i8], ptr %i.lp, i64 %i.lm
  store ptr %.sroa.0.0.i.i, ptr %i.lq, align 8, !noalias !670
  %i.lr = add i64 %i.lm, 1
  store i64 %i.lr, ptr %i.jt, align 8, !alias.scope !669, !noalias !662
  %i.ls = icmp eq ptr %i.jy, %i.ju
  br i1 %i.ls, label %._crit_edge.loopexit.i, label %bb.az

bb.be:                                            ; preds = %._crit_edge.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val175) ]
  %i.lt = getelementptr inbounds nuw i8, ptr %.val175, i64 104
  %i.lu = load ptr, ptr %i.lt, align 8, !noalias !662, !nonnull !5, !noundef !5 ; 2 uses
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lu, i64 48
  %i.lw = load ptr, ptr %i.lv, align 8, !noalias !663, !nonnull !5, !noundef !5 ; 2 uses
  %i.lx = getelementptr inbounds nuw i8, ptr %i.lu, i64 56
  %i.ly = load i64, ptr %i.lx, align 8, !noalias !663, !noundef !5 ; 2 uses
  %.idx = shl nuw nsw i64 %i.ly, 4
  %i.lz = getelementptr inbounds nuw i8, ptr %i.lw, i64 %.idx
  %i.ma = icmp eq i64 %i.ly, 0
  br i1 %i.ma, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i, label %.lr.ph

bb.bf:                                            ; preds = %.noexc78.i
  %i.mb = icmp eq ptr %i.md, %i.lz
  br i1 %i.mb, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i, label %.lr.ph

.lr.ph:                                           ; preds = %bb.be, %bb.bf
  %i.mc = phi ptr [ %i.md, %bb.bf ], [ %i.lw, %bb.be ] ; 4 uses
  %i.md = getelementptr inbounds nuw i8, ptr %i.mc, i64 16 ; 2 uses
  %i.me = load ptr, ptr %i.mc, align 8, !noalias !671, !nonnull !5, !noundef !5
  %i.mf = getelementptr inbounds nuw i8, ptr %i.mc, i64 8
  %i.mg = load ptr, ptr %i.mf, align 8, !noalias !671, !nonnull !5, !align !11, !noundef !5
  %i.mh = getelementptr inbounds nuw i8, ptr %i.mg, i64 56
  %i.mi = load ptr, ptr %i.mh, align 8, !invariant.load !5, !noalias !671, !nonnull !5
  %i.mj = invoke { i16, i16 } %i.mi(ptr noundef nonnull %i.me) #30
          to label %.noexc77.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !663, !inline_history !513 ; 2 uses

.noexc77.i:                                       ; preds = %.lr.ph
  %i.mk = extractvalue { i16, i16 } %i.mj, 0
  %i.ml = extractvalue { i16, i16 } %i.mj, 1
  %i.mm = invoke noundef zeroext i1 @_RNvMs0_NtNtCs7ZUl82OSlxp_6rustls4msgs5enumsNtB5_10NamedGroup22key_exchange_algorithm(i16 noundef %i.mk, i16 %i.ml)
          to label %.noexc78.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.i, !noalias !663

.noexc78.i:                                       ; preds = %.noexc77.i
  br i1 %i.mm, label %bb.bf, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i: ; preds = %bb.bf, %.noexc78.i, %bb.be
  %.sroa.0.0.i76.i = phi ptr [ null, %bb.be ], [ null, %bb.bf ], [ %i.mc, %.noexc78.i ] ; 2 uses
  %i.mn = icmp ne ptr %.sroa.0.0.i76.i, null
  %narrow.i = and i1 %.sroa.0.0.lcssa.i, %i.mn
  %.sroa.07.0.i = zext i1 %narrow.i to i8
  %i.mo = load i8, ptr %i.bl, align 1, !range !12, !noalias !662, !noundef !5
  %i.mp = or i8 %i.mo, %.sroa.07.0.i              ; 2 uses
  store i8 %i.mp, ptr %i.bl, align 1, !noalias !662
  br label %bb.bg

bb.bg:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i, %._crit_edge._crit_edge.i
  %i.mq = phi i8 [ %i.mp, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i ], [ %.pre58.i, %._crit_edge._crit_edge.i ]
  %.sroa.04.0.i = phi ptr [ %.sroa.0.0.i76.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_ENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvMs_NtNtBW_6server2hsNtB2B_17ExpectClientHello25choose_suite_and_kx_groups_0EBW_.exit.i ], [ null, %._crit_edge._crit_edge.i ] ; 4 uses
  %i.mr = load i8, ptr %i.bm, align 1, !range !12, !noalias !662, !noundef !5
  %i.ms = trunc nuw i8 %i.mr to i1
  %i.mt = trunc nuw i8 %i.mq to i1
  %or.cond.i = select i1 %i.ms, i1 true, i1 %i.mt
  br i1 %or.cond.i, label %bb.bh, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i

bb.bh:                                            ; preds = %bb.bg
  %i.mu = getelementptr inbounds nuw i8, ptr %.val175, i64 104
  %i.mv = load ptr, ptr %i.mu, align 8, !noalias !662, !nonnull !5, !noundef !5 ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 24
  %i.mx = load ptr, ptr %i.mw, align 8, !noalias !663, !nonnull !5, !noundef !5 ; 3 uses
  %i.my = getelementptr inbounds nuw i8, ptr %i.mv, i64 32
  %i.mz = load i64, ptr %i.my, align 8, !noalias !663, !noundef !5 ; 2 uses
  %.idx20.i = shl nuw nsw i64 %i.mz, 4
  %i.na = getelementptr inbounds nuw i8, ptr %i.mx, i64 %.idx20.i ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val175) ]
  %i.nb = getelementptr inbounds nuw i8, ptr %.val175, i64 252
  %i.nc = load i8, ptr %i.nb, align 4, !range !12, !noalias !662, !noundef !5
  %i.nd = trunc nuw i8 %i.nc to i1
  br i1 %i.nd, label %bb.bl, label %bb.bk

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, %bb.bl, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i, %bb.bg, %bb.cj
  %.sroa.24.0 = phi ptr [ undef, %bb.bg ], [ %i.rx, %bb.cj ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ undef, %bb.bl ], [ undef, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  %.sroa.20.0 = phi ptr [ undef, %bb.bg ], [ %i.rv, %bb.cj ], [ undef, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ undef, %bb.bl ], [ undef, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  %.sroa.11230.0 = phi i64 [ -9223372036854775800, %bb.bg ], [ %i.ry, %bb.cj ], [ -9223372036854775802, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ -9223372036854775802, %bb.bl ], [ -9223372036854775802, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  %.sroa.0229.0 = phi i64 [ 2, %bb.bg ], [ %i.ru, %bb.cj ], [ 2, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i ], [ 2, %bb.bl ], [ 2, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtBK_3ops4drop4Drop4dropB1o_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecINtNtB4_6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EEEB1B_.exit108.i unwind label %bb.bi, !noalias !663

bb.bi:                                            ; preds = %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i
  %i.ne = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtCsj6eKBz9Db1c_4core6option6OptionRRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_EENtNtNtBR_3ops4drop4Drop4dropB1v_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bk)
          to label %.body190 unwind label %bb.bj, !noalias !663

bb.bj:                                            ; preds = %bb.bi
  %i.nf = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !663
  unreachable

bb.bk:                                            ; preds = %bb.bh
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj), !noalias !662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi), !noalias !662
  store ptr %i.mx, ptr %i.bi, align 8, !noalias !662
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 8
  store ptr %i.na, ptr %.sroa.7.0..sroa_idx7.i, align 8, !noalias !662
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  store ptr %i.bo, ptr %.sroa.9.0..sroa_idx.i, align 8, !noalias !662
  %.sroa.11.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 24
  store ptr %i.bp, ptr %.sroa.11.0..sroa_idx.i, align 8, !noalias !662
  %.sroa.13.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  store ptr %i.bn, ptr %.sroa.13.0..sroa_idx.i, align 8, !noalias !662
  %.sroa.15.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 40
  store ptr %i.bm, ptr %.sroa.15.0..sroa_idx.i, align 8, !noalias !662
  %.sroa.18.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 48
  store ptr %i.bl, ptr %.sroa.18.0..sroa_idx.i, align 8, !noalias !662
  invoke void @_RNvXNtNtCs4wP2HXfJTCR_5alloc3vec21spec_from_iter_nestedINtB4_3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEINtB2_18SpecFromIterNestedB11_INtNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter6FilterINtNtNtB2y_5slice4iter4IterB12_ENCNvMs_NtNtB16_6server2hsNtB3W_17ExpectClientHello25choose_suite_and_kx_groups0_0EE9from_iterB16_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bj, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(56) %i.bi)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !663

bb.bl:                                            ; preds = %bb.bh
  %i.ng = icmp eq i64 %i.mz, 0
  br i1 %i.ng, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i, label %.lr.ph.i80.i

.lr.ph.i80.i:                                     ; preds = %bb.bl
  %i.nh = getelementptr inbounds nuw i8, ptr %i.bp, i64 2
  br label %bb.bm

bb.bm:                                            ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, %.lr.ph.i80.i
  %i.ni = phi ptr [ %i.mx, %.lr.ph.i80.i ], [ %i.nj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i ] ; 8 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %i.ni, i64 16 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !672)
  %i.nk = load i8, ptr %i.bo, align 1, !range !25, !noalias !673, !noundef !5
  %i.nl = load i8, ptr %i.jj, align 1, !noalias !673
  %i.nm = invoke noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6suitesNtB4_20SupportedCipherSuite30usable_for_signature_algorithm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ni, i8 noundef %i.nk, i8 %i.nl)
          to label %.noexc82.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !663

.noexc82.i:                                       ; preds = %bb.bm
  br i1 %i.nm, label %bb.bn, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bn:                                            ; preds = %.noexc82.i
  %i.nn = load i64, ptr %i.ni, align 8, !range !10, !alias.scope !672, !noalias !674, !noundef !5
  %i.no = trunc nuw i64 %i.nn to i1               ; 4 uses
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.i.i.i.i = select i1 %i.no, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12 ; 2 uses
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i.i.i = load i16, ptr %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.i.i.i.i, align 2, !range !24, !noalias !673, !noundef !5 ; 2 uses
  %6 = getelementptr inbounds nuw i8, ptr %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.i.i.i.i, i64 2
  %i.np = load i16, ptr %i.bp, align 2, !range !24, !noalias !675, !noundef !5
  %i.nq = icmp eq i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i.i.i, %i.np
  br i1 %i.nq, label %bb.bo, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bo:                                            ; preds = %bb.bn
  %i.nr = icmp eq i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i.i.i.i, 9
  br i1 %i.nr, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %bb.bo
  %.val7.i.i.i.i = load i16, ptr %6, align 2, !noalias !673, !noundef !5
  %i.ns = load i16, ptr %i.nh, align 2, !noalias !675, !noundef !5
  %i.nt = icmp eq i16 %.val7.i.i.i.i, %i.ns
  br i1 %i.nt, label %bb.bq, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bq:                                            ; preds = %bb.bp, %bb.bo
  %i.nu = load i8, ptr %i.bn, align 1, !range !12, !noalias !675, !noundef !5
  %i.nv = trunc nuw i8 %i.nu to i1
  br i1 %i.nv, label %bb.br, label %bb.bs

bb.br:                                            ; preds = %bb.bq
  br i1 %i.no, label %bb.bt, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bs:                                            ; preds = %bb.bq
  %i.nw = load i8, ptr %i.bm, align 1, !range !12, !noalias !675, !noundef !5
  %i.nx = trunc nuw i8 %i.nw to i1
  br i1 %i.nx, label %bb.bv, label %bb.bu

.thread.i.i.i.i:                                  ; preds = %bb.bt
  %i.ny = load i8, ptr %i.bm, align 1, !range !12, !noalias !675, !noundef !5
  %i.nz = trunc nuw i8 %i.ny to i1
  %i.oa = load i8, ptr %i.bl, align 1, !range !12, !noalias !662
  %i.ob = trunc nuw i8 %i.oa to i1
  %or.cond16.i = select i1 %i.nz, i1 true, i1 %i.ob
  br i1 %or.cond16.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

bb.bt:                                            ; preds = %bb.br
  %i.oc = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.od = load ptr, ptr %i.oc, align 8, !alias.scope !672, !noalias !674, !nonnull !5, !align !11, !noundef !5
  %i.oe = load ptr, ptr %i.od, align 8, !noalias !676, !noundef !5
  %.not.i.i.i.i = icmp eq ptr %i.oe, null
  br i1 %.not.i.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, label %.thread.i.i.i.i

bb.bu:                                            ; preds = %bb.bs
  %i.of = load i8, ptr %i.bl, align 1, !range !12, !noalias !675, !noundef !5
  %i.og = trunc nuw i8 %i.of to i1                ; 2 uses
  %.not6.i.i.i.i = xor i1 %i.og, true
  %brmerge.i.i.i.i = or i1 %i.no, %.not6.i.i.i.i
  br i1 %brmerge.i.i.i.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i, label %..thread3_crit_edge.i.i.i.i

..thread3_crit_edge.i.i.i.i:                      ; preds = %bb.bu
  %.phi.trans.insert.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.pre.i.i.i.i = load ptr, ptr %.phi.trans.insert.i.i.i.i, align 8, !alias.scope !672, !noalias !674
  %.phi.trans.insert8.i.i.i.i = getelementptr inbounds nuw i8, ptr %.pre.i.i.i.i, i64 80
  %.pre9.i.i.i.i = load i8, ptr %.phi.trans.insert8.i.i.i.i, align 8, !range !12, !noalias !676
  %i.oh = trunc nuw i8 %.pre9.i.i.i.i to i1
  br i1 %i.oh, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i

bb.bv:                                            ; preds = %bb.bs
  br i1 %i.no, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %bb.bw

bb.bw:                                            ; preds = %bb.bv
  %i.oi = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %i.oj = load ptr, ptr %i.oi, align 8, !alias.scope !672, !noalias !674, !nonnull !5, !align !11, !noundef !5
  %i.ok = getelementptr inbounds nuw i8, ptr %i.oj, i64 80
  %i.ol = load i8, ptr %i.ok, align 8, !range !12, !noalias !676, !noundef !5
  %i.om = trunc nuw i8 %i.ol to i1
  %i.on = load i8, ptr %i.bl, align 1, !range !12, !noalias !662
  %i.oo = trunc nuw i8 %i.on to i1
  %or.cond18.i = select i1 %i.om, i1 true, i1 %i.oo
  br i1 %or.cond18.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i: ; preds = %bb.bu
  br i1 %i.og, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i: ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i, %bb.bw, %bb.bv, %..thread3_crit_edge.i.i.i.i, %.thread.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !677)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg), !noalias !678
  %i.op = getelementptr inbounds nuw i8, ptr %i.ni, i64 8
  %.pn.i.i.i.i.i = load ptr, ptr %i.op, align 8, !alias.scope !679, !noalias !680, !nonnull !5, !align !11, !noundef !5
  %i.oq = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i.i, i64 72
  %i.or = load <2 x i16>, ptr %i.oq, align 8, !noalias !681
  store <2 x i16> %i.or, ptr %i.bg, align 4, !noalias !678
  %i.os = invoke noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.bg, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.fy, i64 noundef range(i64 0, 2305843009213693952) %i.ga)
          to label %.noexc83.i unwind label %.loopexit.split-lp.loopexit.i, !noalias !663

.noexc83.i:                                       ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.thread7.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg), !noalias !678
  br i1 %i.os, label %.loopexit26.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteuINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs_NtNtB1a_6server2hsNtB2Q_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_NCB2L_s1_0E0E0B1a_.exit.i.i: ; preds = %.noexc83.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit.i.i.i, %bb.bw, %..thread3_crit_edge.i.i.i.i, %bb.bt, %.thread.i.i.i.i, %bb.br, %bb.bp, %bb.bn, %.noexc82.i
  %i.ot = icmp eq ptr %i.nj, %i.na
  br i1 %i.ot, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i, label %bb.bm

bb.bx:                                            ; preds = %bb.bk
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi), !noalias !662
  %.idx19.i = shl nuw nsw i64 %i.ga, 2
  %i.ou = getelementptr inbounds nuw i8, ptr %i.fy, i64 %.idx19.i
  call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.ov = icmp eq i64 %i.ga, 0
  br i1 %i.ov, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i, label %.lr.ph.i85.i

.lr.ph.i85.i:                                     ; preds = %bb.bx
  %i.ow = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  %i.ox = load ptr, ptr %i.ow, align 8, !alias.scope !682, !noalias !662, !nonnull !5, !noundef !5 ; 3 uses
  %i.oy = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  %i.oz = load i64, ptr %i.oy, align 8, !alias.scope !682, !noalias !662, !noundef !5 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.oz, 3
  %i.pa = getelementptr inbounds nuw i8, ptr %i.ox, i64 %.idx.i.i.i ; 2 uses
  %i.pb = icmp eq i64 %i.oz, 0
  br i1 %i.pb, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i85.i, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i
  %i.pc = phi ptr [ %i.pd, %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i ], [ %i.fy, %.lr.ph.i85.i ] ; 3 uses
  %i.pd = getelementptr inbounds nuw i8, ptr %i.pc, i64 4 ; 2 uses
  %.val4.i.i = load i16, ptr %i.pc, align 2, !alias.scope !661, !noalias !683
  %i.pe = getelementptr i8, ptr %i.pc, i64 2
  %.val5.i.i = load i16, ptr %i.pe, align 2, !alias.scope !661, !noalias !683
  %.0.val1.fr.i.i.i = freeze i16 %.val4.i.i       ; 2 uses
  %.not.i.i.i = icmp eq i16 %.0.val1.fr.i.i.i, 376
  br i1 %.not.i.i.i, label %.lr.ph.i.split.i.i.i, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.us.i.i.i:                          ; preds = %.lr.ph.i.i.i.i, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i
  %i.pf = phi ptr [ %i.pl, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i ], [ %i.ox, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.pg = load ptr, ptr %i.pf, align 8, !noalias !684, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %i.pg, i64 8
  %.pn.i.i.us.i.i.i = load ptr, ptr %i.ph, align 8, !noalias !684, !nonnull !5, !align !11, !noundef !5
  %i.pi = getelementptr inbounds nuw i8, ptr %.pn.i.i.us.i.i.i, i64 72
  %i.pj = load i16, ptr %i.pi, align 8, !range !26, !noalias !684, !noundef !5
  %i.pk = icmp eq i16 %.0.val1.fr.i.i.i, %i.pj
  br i1 %i.pk, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i, label %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i

_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i: ; preds = %.lr.ph.i.split.us.i.i.i
  %i.pl = getelementptr inbounds nuw i8, ptr %i.pf, i64 8 ; 2 uses
  %i.pm = icmp eq ptr %i.pl, %i.pa
  br i1 %i.pm, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i, label %.lr.ph.i.split.us.i.i.i

.lr.ph.i.split.i.i.i:                             ; preds = %.lr.ph.i.i.i.i, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i
  %i.pn = phi ptr [ %i.po, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i ], [ %i.ox, %.lr.ph.i.i.i.i ] ; 2 uses
  %i.po = getelementptr inbounds nuw i8, ptr %i.pn, i64 8 ; 2 uses
  %i.pp = load ptr, ptr %i.pn, align 8, !noalias !684, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.pq = getelementptr inbounds nuw i8, ptr %i.pp, i64 8
  %.pn.i.i.i.i87.i = load ptr, ptr %i.pq, align 8, !noalias !684, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.pr = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i87.i, i64 72
  %i.ps = load i16, ptr %i.pr, align 8, !range !26, !noalias !684, !noundef !5
  %i.pt = icmp eq i16 %i.ps, 376
  br i1 %i.pt, label %bb.by, label %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i

bb.by:                                            ; preds = %.lr.ph.i.split.i.i.i
  %i.pu = getelementptr inbounds nuw i8, ptr %.pn.i.i.i.i87.i, i64 74
  %i.pv = load i16, ptr %i.pu, align 2, !noalias !684
  %i.pw = icmp eq i16 %.val5.i.i, %i.pv
  br i1 %i.pw, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i, label %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i

_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i: ; preds = %bb.by, %.lr.ph.i.split.i.i.i
  %i.px = icmp eq ptr %i.po, %i.pa
  br i1 %i.px, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i, label %.lr.ph.i.split.i.i.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i: ; preds = %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.us.i.i.i, %_RNCNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB8_17ExpectClientHello25choose_suite_and_kx_groups2_00Bc_.exit.thread5.i.i.i.i
  %i.py = icmp eq ptr %i.pd, %i.ou
  br i1 %i.py, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i, label %.lr.ph.i.i.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i: ; preds = %.lr.ph.i.split.us.i.i.i, %bb.by
  %i.pz = phi ptr [ %i.pp, %bb.by ], [ %i.pg, %.lr.ph.i.split.us.i.i.i ]
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.ca unwind label %bb.bz, !noalias !663

bb.bz:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i
  %i.qa = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body.i unwind label %bb.cb, !noalias !663

bb.ca:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteENtNtNtNtBb_4iter6traits8iterator8Iterator8find_mapRRNtNtBU_6suites20SupportedCipherSuiteNCNvMs_NtNtBU_6server2hsNtB36_17ExpectClientHello25choose_suite_and_kx_groups2_0EBU_.exit.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !663

bb.cb:                                            ; preds = %bb.bz
  %i.qb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !663
  unreachable

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i: ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.i.i, %.lr.ph.i85.i, %bb.bx
  invoke void @_RNvXsp_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBK_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %bb.cd unwind label %bb.cc, !noalias !663

bb.cc:                                            ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i
  %i.qc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %.body.i unwind label %bb.ce, !noalias !663

bb.cd:                                            ; preds = %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups2_0Ba_.exit.us.preheader.i.i
  invoke void @_RNvXs1_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtCsj6eKBz9Db1c_4core3ops4drop4Drop4dropBR_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bj)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.i, !noalias !663

bb.ce:                                            ; preds = %bb.cc
  %i.qd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !663
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit93.i: ; preds = %bb.cd
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !662
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1I_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB3b_ENCNvMs_NtNtBN_6server2hsNtB47_17ExpectClientHello25choose_suite_and_kx_groups0_0NCINvNvB1C_4find5checkB3b_NCB42_s1_0E0E0B3g_EBN_.exit.thread.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecRNtNtCs7ZUl82OSlxp_6rustls6suites20SupportedCipherSuiteEEB1d_.exit.i: ; preds = %bb.ca
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj), !noalias !662
  br label %.loopexit26.i

bb.cf:                                            ; preds = %.body.i
  %i.qe = landingpad { ptr, i32 }
end_hunk_0
begin_hunk_1_@_RNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtNtB7_6server11server_conn15ProducesTickets7decrypt:bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !nonnull !5, !align !11, !noundef !5
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.j(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noundef nonnull %i.f, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit9

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit9: ; preds = %bb.l, %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE7or_elseNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB1y_13TicketRotatorNtNtNtB1A_6server11server_conn15ProducesTickets7decrypt0EB1A_.exit, %bb.c
  ret void

bb.d:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.j, %bb.d
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.v, %bb.j ]
  %i.l = atomicrmw sub ptr %i.e, i32 1 release, align 4
  %i.m = add i32 %i.l, -1                         ; 2 uses
  %i.n = and i32 %i.m, -1073741825
  %or.cond.i.i = icmp eq i32 %i.n, -2147483648
  br i1 %or.cond.i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit, !prof !23

bb.e:                                             ; preds = %.body
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.e, i32 noundef %i.m)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit unwind label %bb.m

bb.f:                                             ; preds = %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !851)
  call void @llvm.experimental.noalias.scope.decl(metadata !852)
  %i.o = load i64, ptr %i.a, align 8, !range !4, !alias.scope !852, !noundef !5
  %.not.i = icmp eq i64 %i.o, -1
  br i1 %.not.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !alias.scope !853
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE7or_elseNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB1y_13TicketRotatorNtNtNtB1A_6server11server_conn15ProducesTickets7decrypt0EB1A_.exit

bb.h:                                             ; preds = %bb.f
  call void @llvm.experimental.noalias.scope.decl(metadata !854)
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.q = load ptr, ptr %i.p, align 8, !noalias !855, !noundef !5 ; 2 uses
  %.not.i.i = icmp eq ptr %i.q, null
  br i1 %.not.i.i, label %_RNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB7_13TicketRotatorNtNtNtB9_6server11server_conn15ProducesTickets7decrypt0B9_.exit.thread.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.s = load ptr, ptr %i.r, align 8, !noalias !855, !nonnull !5, !align !11, !noundef !5
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 56
  %i.u = load ptr, ptr %i.t, align 8, !invariant.load !5, !noalias !855, !nonnull !5
  invoke void %i.u(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.q, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3) #30
          to label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE7or_elseNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB1y_13TicketRotatorNtNtNtB1A_6server11server_conn15ProducesTickets7decrypt0EB1A_.exit unwind label %bb.j, !noalias !856, !inline_history !850

_RNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB7_13TicketRotatorNtNtNtB9_6server11server_conn15ProducesTickets7decrypt0B9_.exit.thread.i: ; preds = %bb.h
  store i64 -1, ptr %0, align 8, !alias.scope !857
  br label %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE7or_elseNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB1y_13TicketRotatorNtNtNtB1A_6server11server_conn15ProducesTickets7decrypt0EB1A_.exit

bb.j:                                             ; preds = %bb.i
  %i.v = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEEECs7ZUl82OSlxp_6rustls(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.a) #24
          to label %.body unwind label %bb.k, !noalias !858

bb.k:                                             ; preds = %bb.j
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25, !noalias !858
  unreachable

_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE7or_elseNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB1y_13TicketRotatorNtNtNtB1A_6server11server_conn15ProducesTickets7decrypt0EB1A_.exit: ; preds = %_RNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB7_13TicketRotatorNtNtNtB9_6server11server_conn15ProducesTickets7decrypt0B9_.exit.thread.i, %bb.g, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.x = atomicrmw sub ptr %i.e, i32 1 release, align 4
  %i.y = add i32 %i.x, -1                         ; 2 uses
  %i.z = and i32 %i.y, -1073741825
  %or.cond.i.i8 = icmp eq i32 %i.z, -2147483648
  br i1 %or.cond.i.i8, label %bb.l, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit9, !prof !23

bb.l:                                             ; preds = %_RINvMNtCsj6eKBz9Db1c_4core6optionINtB3_6OptionINtNtCs4wP2HXfJTCR_5alloc3vec3VechEE7or_elseNCNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB1y_13TicketRotatorNtNtNtB1A_6server11server_conn15ProducesTickets7decrypt0EB1A_.exit
  call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.e, i32 noundef %i.y)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit9

bb.m:                                             ; preds = %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit: ; preds = %.body, %bb.e
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define void @_RNvXs1_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotatorNtNtNtB7_6server11server_conn15ProducesTickets7encrypt(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull align 8 %1, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef range(i64 0, -9223372036854775808) %3) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = tail call noundef i64 @_RNvMsU_CseO5Jl7W60Eg_16rustls_pki_typesNtB5_8UnixTime3now()
  %i.b = tail call fastcc { ptr, ptr } @_RNvMs0_NtCs7ZUl82OSlxp_6rustls8ticketerNtB5_13TicketRotator10maybe_roll(ptr noundef nonnull align 8 %1, i64 noundef %i.a) ; 2 uses
  %i.c = extractvalue { ptr, ptr } %i.b, 0        ; 3 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = extractvalue { ptr, ptr } %i.b, 1        ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.d) ]
  %i.e = load ptr, ptr %i.c, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !5, !align !11, !noundef !5
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  %i.i = load ptr, ptr %i.h, align 8, !invariant.load !5, !nonnull !5
  invoke void %i.i(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %i.e, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %2, i64 noundef %3)
          to label %bb.f unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 -1, ptr %0, align 8
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit8

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit8: ; preds = %bb.g, %bb.f, %bb.c
  ret void

bb.d:                                             ; preds = %bb.b
  %i.j = landingpad { ptr, i32 }
          cleanup
  %i.k = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.l = add i32 %i.k, -1                         ; 2 uses
  %i.m = and i32 %i.l, -1073741825
  %or.cond.i.i = icmp eq i32 %i.m, -2147483648
  br i1 %or.cond.i.i, label %bb.e, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit, !prof !23

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.d, i32 noundef %i.l)
          to label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit unwind label %bb.h

bb.f:                                             ; preds = %bb.b
  %i.n = atomicrmw sub ptr %i.d, i32 1 release, align 4
  %i.o = add i32 %i.n, -1                         ; 2 uses
  %i.p = and i32 %i.o, -1073741825
  %or.cond.i.i7 = icmp eq i32 %i.p, -2147483648
  br i1 %or.cond.i.i7, label %bb.g, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit8, !prof !23

bb.g:                                             ; preds = %bb.f
  tail call void @_RNvMNtNtNtNtCsaKJjC64KgbL_3std3sys4sync6rwlock5futexNtB2_6RwLock22wake_writer_or_readers(ptr noundef nonnull align 4 %i.d, i32 noundef %i.o)
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit8

bb.h:                                             ; preds = %bb.e
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsj6eKBz9Db1c_4core9panicking16panic_in_cleanup() #25
  unreachable

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtNtCsaKJjC64KgbL_3std4sync6poison6rwlock15RwLockReadGuardNtNtCs7ZUl82OSlxp_6rustls8ticketer18TicketRotatorStateEEB1G_.exit: ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.j
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal { ptr, ptr } @_RNvXs1_NtNtCs7ZUl82OSlxp_6rustls6server5tls12NtB5_9ExpectCcsINtNtB9_12common_state5StateNtNtB7_11server_conn20ServerConnectionDataE10into_owned(ptr noalias noundef nonnull align 8 %0) unnamed_addr #4 {
bb.a:
  %i.a = insertvalue { ptr, ptr } poison, ptr %0, 0
  %i.b = insertvalue { ptr, ptr } %i.a, ptr @27, 1
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtBV_17ExpectClientHello18with_certified_key0INtB7_5FnMutTRNtNtBZ_6suites20SupportedCipherSuiteEE8call_mutBZ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %1) unnamed_addr #1 {
bb.a:
  %i.a = alloca [4 x i8], align 4                 ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %.val = load ptr, ptr %i.b, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !5, !align !11, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5
  %i.f = getelementptr inbounds nuw i8, ptr %.val, i64 16
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.h = getelementptr inbounds nuw i8, ptr %.val1, i64 72
  %i.i = load <2 x i16>, ptr %i.h, align 8
  store <2 x i16> %i.i, ptr %i.a, align 4
  %i.j = call noundef zeroext i1 @_RNvXsf_NtNtCsj6eKBz9Db1c_4core5slice3cmpNtNtCs7ZUl82OSlxp_6rustls5enums11CipherSuiteNtB5_13SliceContains14slice_containsBG_(ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) dereferenceable(4) %i.a, ptr noalias nofree noundef nonnull readonly align 2 captures(address, read_provenance) %i.e, i64 noundef %i.g)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret i1 %i.j
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1_NtNtNtCsj6eKBz9Db1c_4core3ops8function5implsQNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtBV_17ExpectClientHello25choose_suite_and_kx_groups0_0INtB7_5FnMutTRRNtNtBZ_6suites20SupportedCipherSuiteEE8call_mutBZ_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5 ; 8 uses
  %.val = load ptr, ptr %1, align 8, !nonnull !5, !align !11, !noundef !5 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !861)
  %i.b = load ptr, ptr %i.a, align 8, !alias.scope !861, !nonnull !5, !noundef !5 ; 2 uses
  %i.c = load i8, ptr %i.b, align 1, !range !25, !noalias !861, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 1
  %i.e = load i8, ptr %i.d, align 1, !noalias !861
  %i.f = tail call noundef zeroext i1 @_RNvMs_NtCs7ZUl82OSlxp_6rustls6suitesNtB4_20SupportedCipherSuite30usable_for_signature_algorithm(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val, i8 noundef %i.c, i8 %i.e), !noalias !861
  br i1 %i.f, label %bb.b, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit

bb.b:                                             ; preds = %bb.a
  %i.g = load i64, ptr %.val, align 8, !range !10, !noalias !861, !noundef !5
  %i.h = trunc nuw i64 %i.g to i1                 ; 4 uses
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.i = select i1 %i.h, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13, ptr @_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !861, !nonnull !5, !align !862, !noundef !5 ; 2 uses
  %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i = load i16, ptr %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.i, align 2, !range !24, !noalias !861, !noundef !5 ; 2 uses
  %2 = getelementptr inbounds nuw i8, ptr %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS13._RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.i, i64 2
  %i.k = load i16, ptr %i.j, align 2, !range !24, !noalias !861, !noundef !5
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 2
  %i.m = icmp eq i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i, %i.k
  br i1 %i.m, label %bb.c, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit

bb.c:                                             ; preds = %bb.b
  %i.n = icmp eq i16 %_RNvNtCs7ZUl82OSlxp_6rustls8versions5TLS12.val.i, 9
  br i1 %i.n, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %.val7.i = load i16, ptr %2, align 2, !noalias !861, !noundef !5
  %i.o = load i16, ptr %i.l, align 2, !noalias !861, !noundef !5
  %i.p = icmp eq i16 %.val7.i, %i.o
  br i1 %i.p, label %bb.e, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.r = load ptr, ptr %i.q, align 8, !alias.scope !861, !nonnull !5, !noundef !5
  %i.s = load i8, ptr %i.r, align 1, !range !12, !noalias !861, !noundef !5
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  br i1 %i.h, label %bb.h, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit

bb.g:                                             ; preds = %bb.e
  %i.u = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.v = load ptr, ptr %i.u, align 8, !alias.scope !861, !nonnull !5, !noundef !5
  %i.w = load i8, ptr %i.v, align 1, !range !12, !noalias !861, !noundef !5
  %i.x = trunc nuw i8 %i.w to i1
  br i1 %i.x, label %bb.j, label %bb.i

.thread.i:                                        ; preds = %bb.h
  %i.y = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.z = load ptr, ptr %i.y, align 8, !alias.scope !861, !nonnull !5, !noundef !5
  %i.aa = load i8, ptr %i.z, align 1, !range !12, !noalias !861, !noundef !5
  %i.ab = trunc nuw i8 %i.aa to i1
  br i1 %i.ab, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit, label %.thread4.i

bb.h:                                             ; preds = %bb.f
  %i.ac = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !noalias !861, !nonnull !5, !align !11, !noundef !5
  %i.ae = load ptr, ptr %i.ad, align 8, !noalias !861, !noundef !5
  %.not.i = icmp eq ptr %i.ae, null
  br i1 %.not.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit, label %.thread.i

bb.i:                                             ; preds = %bb.g
  %i.af = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ag = load ptr, ptr %i.af, align 8, !alias.scope !861, !nonnull !5, !noundef !5
  %i.ah = load i8, ptr %i.ag, align 1, !range !12, !noalias !861, !noundef !5
  %i.ai = trunc nuw i8 %i.ah to i1                ; 2 uses
  %.not6.i = xor i1 %i.ai, true
  %brmerge.i = or i1 %i.h, %.not6.i
  br i1 %brmerge.i, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit, label %..thread3_crit_edge.i

..thread3_crit_edge.i:                            ; preds = %bb.i
  %.phi.trans.insert.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %.pre.i = load ptr, ptr %.phi.trans.insert.i, align 8, !noalias !861
  %.phi.trans.insert8.i = getelementptr inbounds nuw i8, ptr %.pre.i, i64 80
  %.pre9.i = load i8, ptr %.phi.trans.insert8.i, align 8, !range !12, !noalias !861
  %i.aj = trunc nuw i8 %.pre9.i to i1
  %i.ak = xor i1 %i.aj, true
  br label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit

.thread4.i:                                       ; preds = %.thread.i
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.am = load ptr, ptr %i.al, align 8, !alias.scope !861, !nonnull !5, !noundef !5
  %i.an = load i8, ptr %i.am, align 1, !range !12, !noalias !861, !noundef !5
  %i.ao = trunc nuw i8 %i.an to i1
  br label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit

.thread2.i:                                       ; preds = %bb.k
  %i.ap = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.aq = load ptr, ptr %i.ap, align 8, !alias.scope !861, !nonnull !5, !noundef !5
  %i.ar = load i8, ptr %i.aq, align 1, !range !12, !noalias !861, !noundef !5
  %i.as = trunc nuw i8 %i.ar to i1
  br label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit

bb.j:                                             ; preds = %bb.g
  br i1 %i.h, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.at = getelementptr inbounds nuw i8, ptr %.val, i64 8
  %i.au = load ptr, ptr %i.at, align 8, !noalias !861, !nonnull !5, !align !11, !noundef !5
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 80
  %i.aw = load i8, ptr %i.av, align 8, !range !12, !noalias !861, !noundef !5
  %i.ax = trunc nuw i8 %i.aw to i1
  br i1 %i.ax, label %_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit, label %.thread2.i

_RNCNvMs_NtNtCs7ZUl82OSlxp_6rustls6server2hsNtB6_17ExpectClientHello25choose_suite_and_kx_groups0_0Ba_.exit: ; preds = %bb.a, %bb.b, %bb.d, %bb.f, %.thread.i, %bb.h, %bb.i, %..thread3_crit_edge.i, %.thread4.i, %.thread2.i, %bb.j, %bb.k
  %.sroa.0.0.i = phi i1 [ false, %bb.d ], [ %i.ai, %bb.i ], [ %i.as, %.thread2.i ], [ true, %bb.k ], [ false, %bb.h ], [ false, %bb.f ], [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.j ], [ %i.ao, %.thread4.i ], [ true, %.thread.i ], [ %i.ak, %..thread3_crit_edge.i ]
  ret i1 %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRDNtNtCs7ZUl82OSlxp_6rustls6crypto16SupportedKxGroupEL_NtB6_5Debug3fmtBB_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(16) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !noundef !5
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !5, !align !11, !noundef !5
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !invariant.load !5, !nonnull !5
  %i.f = tail call noundef zeroext i1 %i.e(ptr noundef nonnull %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1) #30
  ret i1 %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ClientExtensionsENtB6_5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs3f_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16ClientExtensionsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtCs4wP2HXfJTCR_5alloc5boxed3BoxNtNtNtCs7ZUl82OSlxp_6rustls4msgs9handshake16ServerExtensionsENtB6_5Debug3fmtB1b_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #1 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5
  %.val = load ptr, ptr %i.a, align 8, !nonnull !5, !noundef !5
  %i.b = tail call noundef zeroext i1 @_RNvXs3m_NtNtCs7ZUl82OSlxp_6rustls4msgs9handshakeNtB6_16ServerExtensionsNtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmt(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(200) %.val, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  ret i1 %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base10PayloadU16NtBz_8NonEmptyENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !866)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !867)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !867 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val1.i = load ptr, ptr %i.d, align 8, !alias.scope !867 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.val2.i = load ptr, ptr %i.e, align 8, !alias.scope !866, !nonnull !5, !noundef !5 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.val3.i = load i64, ptr %i.f, align 8, !alias.scope !866, !noundef !5 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val2.i, i64 %.val3.i
  %i.h = icmp samesign eq i64 %.val3.i, 0
  br i1 %i.h, label %_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val1.i) ]
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val2.i, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !868
  store ptr %.sroa.0.08.i.i, ptr %i.b, align 8, !noalias !868, !captures !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !868
  store ptr %i.b, ptr %i.a, align 8, !noalias !868
  store ptr @_RNvXs1o_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_8LowerHex3fmtCs7ZUl82OSlxp_6rustls, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !868
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %.val.i, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val1.i, ptr noundef nonnull @0, ptr noundef nonnull %i.a), !noalias !868
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !868
  br label %_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit

bb.c:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i
  %i.j = getelementptr inbounds nuw i8, ptr %.sroa.0.08.i.i, i64 1 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !868
  %i.k = icmp eq ptr %i.j, %i.g
  br i1 %i.k, label %_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i

_RNvXs9_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_10PayloadU16NtB5_8NonEmptyENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit: ; preds = %bb.c, %bb.a, %bb.b
  %.not6.i.i = phi i1 [ true, %bb.b ], [ false, %bb.a ], [ false, %bb.c ]
  ret i1 %.not6.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef zeroext i1 @_RNvXs1g_NtCsj6eKBz9Db1c_4core3fmtRINtNtNtCs7ZUl82OSlxp_6rustls4msgs4base9PayloadU8NtBz_8NonEmptyENtB6_5Debug3fmtBD_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !5, !align !11, !noundef !5 ; 2 uses
  %i.d = getelementptr i8, ptr %i.c, i64 8
  %.val = load ptr, ptr %i.d, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.e = getelementptr i8, ptr %i.c, i64 16
  %.val1 = load i64, ptr %i.e, align 8, !noundef !5 ; 2 uses
  %.val2 = load ptr, ptr %1, align 8              ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val3 = load ptr, ptr %i.f, align 8            ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val, i64 %.val1
  %i.h = icmp samesign eq i64 %.val1, 0
  br i1 %i.h, label %_RNvXse_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_9PayloadU8NtB5_8NonEmptyENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit, label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i: ; preds = %bb.a
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3) ]
  br label %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i

_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i: ; preds = %bb.c, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i
  %.sroa.0.08.i.i = phi ptr [ %.val, %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.lr.ph.i.i ], [ %i.j, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %.sroa.0.08.i.i, ptr %i.b, align 8, !captures !20
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.b, ptr %i.a, align 8
  store ptr @_RNvXs1o_NtCsj6eKBz9Db1c_4core3fmtRhNtB6_8LowerHex3fmtCs7ZUl82OSlxp_6rustls, ptr %.sroa.46.0..sroa_idx.i.i, align 8
  %i.i = call noundef zeroext i1 @_RNvNtCsj6eKBz9Db1c_4core3fmt5write(ptr noundef nonnull %.val2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %.val3, ptr noundef nonnull @0, ptr noundef nonnull %i.a)
  br i1 %i.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_RNvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs7ZUl82OSlxp_6rustls.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RNvXse_NtNtCs7ZUl82OSlxp_6rustls4msgs4baseINtB5_9PayloadU8NtB5_8NonEmptyENtNtCsj6eKBz9Db1c_4core3fmt5Debug3fmtB9_.exit
end_hunk_1
