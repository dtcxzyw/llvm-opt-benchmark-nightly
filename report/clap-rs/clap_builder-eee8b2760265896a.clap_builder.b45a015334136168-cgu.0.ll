Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/clap-rs/original/clap_builder-eee8b2760265896a.clap_builder.b45a015334136168-cgu.0?download=true
inline.NumInlined: 5218
inline.NumDeleted: 2692
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 38
loop-unroll.NumUnrolled: 51
begin_hunk_0_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  %i.cps = icmp ult i64 %i.cpb, 230584300921369396
  call void @llvm.assume(i1 %i.cps)
  call void @llvm.experimental.noalias.scope.decl(metadata !10658)
  %i.cpt = load i64, ptr %i.gb, align 8, !range !11, !alias.scope !10659, !noundef !10
  %i.cpu = icmp eq i64 %i.cpb, %i.cpt
  br i1 %i.cpu, label %bb.qe, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i47.i.i.i

bb.qe:                                            ; preds = %.loopexit.i46.i.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBR_2id2IdEE8grow_oneBT_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.gb) #42, !noalias !10660
  %.pre.i53.i.i.i = load ptr, ptr %i.cgl, align 8, !alias.scope !10659
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i47.i.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i47.i.i.i: ; preds = %bb.qe, %.loopexit.i46.i.i.i
  %i.cpv = phi ptr [ %i.cpc, %.loopexit.i46.i.i.i ], [ %.pre.i53.i.i.i, %bb.qe ] ; 2 uses
  %i.cpw = getelementptr inbounds nuw [40 x i8], ptr %i.cpv, i64 %i.cpb ; 5 uses
  store i64 0, ptr %i.cpw, align 8, !noalias !10661
  %.sroa.4.0..sroa_idx.i48.i.i.i = getelementptr inbounds nuw i8, ptr %i.cpw, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.4.0..sroa_idx.i48.i.i.i, align 8, !noalias !10661
  %.sroa.5.0..sroa_idx11.i49.i.i.i = getelementptr inbounds nuw i8, ptr %i.cpw, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx11.i49.i.i.i, align 8, !noalias !10661
  %.sroa.612.0..sroa_idx.i50.i.i.i = getelementptr inbounds nuw i8, ptr %i.cpw, i64 24
  store ptr %i.cpe, ptr %.sroa.612.0..sroa_idx.i50.i.i.i, align 8, !noalias !10661
  %.sroa.7.0..sroa_idx.i51.i.i.i = getelementptr inbounds nuw i8, ptr %i.cpw, i64 32
  store i64 %i.cpg, ptr %.sroa.7.0..sroa_idx.i51.i.i.i, align 8, !noalias !10662
  %i.cpx = add nuw nsw i64 %i.cpb, 1              ; 2 uses
  store i64 %i.cpx, ptr %i.cgm, align 8, !alias.scope !10659
  br label %_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit57.i.i.i

_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder4util5graphINtB4_10ChildGraphNtNtB6_2id2IdE6insertB8_.exit57.i.i.i: ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i47.i.i.i, %bb.qd
  %i.cpy = phi i64 [ %i.cpb, %bb.qd ], [ %i.cpx, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i47.i.i.i ]
  %i.cpz = phi ptr [ %i.cpc, %bb.qd ], [ %i.cpv, %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBK_2id2IdEE8push_mutBM_.exit.i47.i.i.i ]
  %i.cqa = icmp eq ptr %i.cpd, %i.coz
  br i1 %i.cqa, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i.backedge, label %.lr.ph132.i.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i.i: ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtNtCs4wP2HXfJTCR_5alloc3vec9into_iter8IntoIterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1v_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ed), !noalias !10663
  store i64 0, ptr %i.ed, align 8, !noalias !10663
  %i.cqb = getelementptr inbounds nuw i8, ptr %i.ed, i64 8 ; 7 uses
  store ptr inttoptr (i64 8 to ptr), ptr %i.cqb, align 8, !noalias !10663
  %i.cqc = getelementptr inbounds nuw i8, ptr %i.ed, i64 16 ; 8 uses
  store i64 0, ptr %i.cqc, align 8, !noalias !10663
  %i.cqd = load ptr, ptr %i.cck, align 8, !alias.scope !10664, !nonnull !10, !align !16, !noundef !10 ; 9 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10665)
  %.not24.i.i.i = icmp eq i64 %i.ccp, 0           ; 8 uses
  br i1 %.not24.i.i.i, label %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i, label %.lr.ph.i82.i.i

.lr.ph.i82.i.i:                                   ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i.i
  %i.cqe = getelementptr inbounds nuw i8, ptr %i.cqd, i64 136
  %.val.i.i.i.i.i.i = load ptr, ptr %i.cqe, align 8, !alias.scope !10665, !noalias !10666, !nonnull !10 ; 2 uses
  %i.cqf = getelementptr inbounds nuw i8, ptr %i.cqd, i64 144
  %.val4.i.i.i.i.i.i = load i64, ptr %i.cqf, align 8, !alias.scope !10665, !noalias !10666
  %.val4.i.i.i.fr.i.i.i = freeze i64 %.val4.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i = mul nuw nsw i64 %.val4.i.i.i.fr.i.i.i, 600
  %i.cqg = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i.i, i64 %.idx.i.i.i.i.i.i.i
  %i.cqh = icmp eq i64 %.val4.i.i.i.fr.i.i.i, 0
  br i1 %i.cqh, label %.lr.ph.split.us.i.i.i.preheader, label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i.preheader:                  ; preds = %.lr.ph.i82.i.i
  %i.cqi = add i64 %.idx.i, -16                   ; 2 uses
  %i.cqj = lshr exact i64 %i.cqi, 4
  %i.cqk = add nuw nsw i64 %i.cqj, 1
  %xtraiter5365 = and i64 %i.cqk, 7               ; 2 uses
  %lcmp.mod5366.not = icmp eq i64 %xtraiter5365, 0
  br i1 %lcmp.mod5366.not, label %.lr.ph.split.us.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.prol

.lr.ph.split.us.i.i.i.prol:                       ; preds = %.lr.ph.split.us.i.i.i.preheader, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol
  %i.cql = phi ptr [ %i.cqp, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol ], [ %i.ccs, %.lr.ph.split.us.i.i.i.preheader ] ; 2 uses
  %i.cqm = phi ptr [ %i.cqo, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol ], [ %i.ccn, %.lr.ph.split.us.i.i.i.preheader ]
  %prol.iter5367 = phi i64 [ %prol.iter5367.next, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol ], [ 0, %.lr.ph.split.us.i.i.i.preheader ]
  %i.cqn = icmp eq ptr %i.cql, %i.ccv
  br i1 %i.cqn, label %.split.us.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol, !prof !18

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol: ; preds = %.lr.ph.split.us.i.i.i.prol
  %i.cqo = getelementptr inbounds nuw i8, ptr %i.cqm, i64 16 ; 2 uses
  %i.cqp = getelementptr inbounds nuw i8, ptr %i.cql, i64 104 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10667)
  call void @llvm.experimental.noalias.scope.decl(metadata !10668)
  %prol.iter5367.next = add i64 %prol.iter5367, 1 ; 2 uses
  %prol.iter5367.cmp.not = icmp eq i64 %prol.iter5367.next, %xtraiter5365
  br i1 %prol.iter5367.cmp.not, label %.lr.ph.split.us.i.i.i.prol.loopexit, label %.lr.ph.split.us.i.i.i.prol, !llvm.loop !9530

.lr.ph.split.us.i.i.i.prol.loopexit:              ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol, %.lr.ph.split.us.i.i.i.preheader
  %.unr5368 = phi ptr [ %i.ccs, %.lr.ph.split.us.i.i.i.preheader ], [ %i.cqp, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol ]
  %.unr5369 = phi ptr [ %i.ccn, %.lr.ph.split.us.i.i.i.preheader ], [ %i.cqo, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.prol ]
  %i.cqq = icmp ult i64 %i.cqi, 112
  br i1 %i.cqq, label %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.split.us.i.i.i.prol.loopexit, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.7
  %i.cqr = phi ptr [ %i.crj, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.7 ], [ %.unr5368, %.lr.ph.split.us.i.i.i.prol.loopexit ] ; 9 uses
  %i.cqs = phi ptr [ %i.cri, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.7 ], [ %.unr5369, %.lr.ph.split.us.i.i.i.prol.loopexit ]
  %i.cqt = icmp eq ptr %i.cqr, %i.ccv
  br i1 %i.cqt, label %.split.us.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i, !prof !18

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i: ; preds = %.lr.ph.split.us.i.i.i
  %i.cqu = getelementptr inbounds nuw i8, ptr %i.cqr, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !10667)
  call void @llvm.experimental.noalias.scope.decl(metadata !10668)
  %i.cqv = icmp eq ptr %i.cqu, %i.ccv
  %i.cqw = getelementptr inbounds nuw i8, ptr %i.cqr, i64 208
  %i.cqx = icmp eq ptr %i.cqw, %i.ccv
  %or.cond6054 = select i1 %i.cqv, i1 true, i1 %i.cqx, !prof !23
  %i.cqy = getelementptr inbounds nuw i8, ptr %i.cqr, i64 312
  %i.cqz = icmp eq ptr %i.cqy, %i.ccv
  %or.cond6056 = select i1 %or.cond6054, i1 true, i1 %i.cqz, !prof !10669
  %i.cra = getelementptr inbounds nuw i8, ptr %i.cqr, i64 416
  %i.crb = icmp eq ptr %i.cra, %i.ccv
  %or.cond6058 = select i1 %or.cond6056, i1 true, i1 %i.crb, !prof !10670
  %i.crc = getelementptr inbounds nuw i8, ptr %i.cqr, i64 520
  %i.crd = icmp eq ptr %i.crc, %i.ccv
  %or.cond6060 = select i1 %or.cond6058, i1 true, i1 %i.crd, !prof !10671
  %i.cre = getelementptr inbounds nuw i8, ptr %i.cqr, i64 624
  %i.crf = icmp eq ptr %i.cre, %i.ccv
  %or.cond6062 = select i1 %or.cond6060, i1 true, i1 %i.crf, !prof !10672
  %i.crg = getelementptr inbounds nuw i8, ptr %i.cqr, i64 728
  %i.crh = icmp eq ptr %i.crg, %i.ccv
  %or.cond6064 = select i1 %or.cond6062, i1 true, i1 %i.crh, !prof !10673
  br i1 %or.cond6064, label %.split.us.i.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.7, !prof !10673

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.7: ; preds = %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i
  %i.cri = getelementptr inbounds nuw i8, ptr %i.cqs, i64 128 ; 2 uses
  %i.crj = getelementptr inbounds nuw i8, ptr %i.cqr, i64 832
  %.not26.i.i.i.7 = icmp eq ptr %i.cri, %i.ccq
  br i1 %.not26.i.i.i.7, label %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.i.i.i:                               ; preds = %.lr.ph.i82.i.i, %.backedge.i.i.i
  %i.crk = phi ptr [ %i.cro, %.backedge.i.i.i ], [ %i.ccs, %.lr.ph.i82.i.i ] ; 3 uses
  %i.crl = phi ptr [ %i.crm, %.backedge.i.i.i ], [ %i.ccn, %.lr.ph.i82.i.i ] ; 3 uses
  %i.crm = getelementptr inbounds nuw i8, ptr %i.crl, i64 16 ; 2 uses
  %i.crn = icmp eq ptr %i.crk, %i.ccv
  br i1 %i.crn, label %.split.us.i.i.i, label %bb.qf, !prof !18

.split.us.i.i.i:                                  ; preds = %.lr.ph.split.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i, %.lr.ph.split.us.i.i.i, %.lr.ph.split.us.i.i.i.prol
  call void @_RNvNtCsj6eKBz9Db1c_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @335) #44, !noalias !10674
  unreachable

bb.qf:                                            ; preds = %.lr.ph.split.i.i.i
  %i.cro = getelementptr inbounds nuw i8, ptr %i.crk, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !10667)
  call void @llvm.experimental.noalias.scope.decl(metadata !10668)
  %i.crp = getelementptr inbounds nuw i8, ptr %i.crk, i64 97
  %i.crq = load i8, ptr %i.crp, align 1, !range !38, !alias.scope !10675, !noalias !10676, !noundef !10
  %cond.i.i.not.i.i.i.i = icmp eq i8 %i.crq, 0
  br i1 %cond.i.i.not.i.i.i.i, label %.backedge.i.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i.i

.lr.ph.i.i.i.i.i.preheader.i.i.i:                 ; preds = %bb.qf
  %.val4.i.i.i44.i = load ptr, ptr %i.crl, align 8, !alias.scope !10667, !noalias !10676
  %i.crr = getelementptr inbounds nuw i8, ptr %i.crl, i64 8
  %.val5.i.i.i.i = load i64, ptr %i.crr, align 8, !alias.scope !10667, !noalias !10676 ; 2 uses
  br label %.lr.ph.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i:                           ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i
  %i.crs = phi ptr [ %i.crt, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i ], [ %.val.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.preheader.i.i.i ] ; 4 uses
  %i.crt = getelementptr inbounds nuw i8, ptr %i.crs, i64 600 ; 2 uses
  %i.cru = getelementptr inbounds nuw i8, ptr %i.crs, i64 544
  %i.crv = load i64, ptr %i.cru, align 8, !noalias !10677, !noundef !10
  %i.crw = icmp eq i64 %i.crv, %.val5.i.i.i.i
  br i1 %i.crw, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i
  %i.crx = getelementptr inbounds nuw i8, ptr %i.crs, i64 536
  %i.cry = load ptr, ptr %i.crx, align 8, !noalias !10677, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.cry, ptr nonnull readonly %.val4.i.i.i44.i, i64 %.val5.i.i.i.i), !noalias !10677
  %i.crz = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.crz, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i
  %i.csa = icmp eq ptr %i.crt, %i.cqg
  br i1 %i.csa, label %.backedge.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i.i.i.i.i
  %i.csb = getelementptr inbounds nuw i8, ptr %i.crs, i64 592
  %i.csc = load i32, ptr %i.csb, align 8, !noalias !10678, !noundef !10
  %i.csd = and i32 %i.csc, 16384
  %.not.i.i54.i = icmp eq i32 %i.csd, 0
  br i1 %.not.i.i54.i, label %.backedge.i.i.i, label %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i

.backedge.i.i.i:                                  ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i.i.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i, %bb.qf
  %.not25.i.i.i = icmp eq ptr %i.crm, %i.ccq
  br i1 %.not25.i.i.i, label %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i, label %.lr.ph.split.i.i.i

_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i: ; preds = %.backedge.i.i.i, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i, %.lr.ph.split.us.i.i.i.prol.loopexit, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.7, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i.i
  %.lcssa15.i.i.i = phi i1 [ false, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator15gather_requires.exit.i.i ], [ false, %.lr.ph.split.us.i.i.i.prol.loopexit ], [ false, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldTRNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdRNtNtNtNtB1d_6parser7matches11matched_arg10MatchedArgEuINtNtNtBa_3ops12control_flow11ControlFlowuENCNvMNtB1X_9validatorNtB3v_9Validator17validate_required0NCINvNvNtNtNtB8_6traits8iterator8Iterator3any5checkB15_NCB3s_s_0E0E0B1d_.exit.us.i.i.i.7 ], [ true, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i.i.i.i.i ], [ false, %.backedge.i.i.i ] ; 3 uses
  %.val69.i.i = load ptr, ptr %i.cgl, align 8, !alias.scope !10664, !nonnull !10, !noundef !10 ; 2 uses
  %.val70.i.i = load i64, ptr %i.cgm, align 8, !alias.scope !10664, !noundef !10
  %i.cse = getelementptr inbounds nuw [40 x i8], ptr %.val69.i.i, i64 %.val70.i.i ; 2 uses
  %i.csf = getelementptr i8, ptr %i.cqd, i64 136
  %i.csg = getelementptr i8, ptr %i.cqd, i64 144
  %i.csh = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.csi = getelementptr inbounds nuw i8, ptr %i.dj, i64 8 ; 2 uses
  %i.csj = getelementptr i8, ptr %i.cqd, i64 208  ; 2 uses
  %i.csk = getelementptr i8, ptr %i.cqd, i64 216  ; 2 uses
  %i.csl = getelementptr inbounds nuw i8, ptr %i.di, i64 16
  %i.csm = getelementptr inbounds nuw i8, ptr %i.di, i64 8 ; 2 uses
  %i.csn = getelementptr inbounds nuw i8, ptr %i.ec, i64 8
  %i.cso = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i
  %i.csp = phi ptr [ inttoptr (i64 8 to ptr), %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %.be4707, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 7 uses
  %i.csq = phi i64 [ 0, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %.be4708, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 12 uses
  %.sroa.0277.0.i.i = phi ptr [ %.val69.i.i, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %i.cth, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 5 uses
  %.sroa.04.0.i.i = phi i64 [ 0, %_RINvYINtNtNtCsfu0rQaTkGUu_12clap_builder4util8flat_map4IterNtNtB8_2id2IdNtNtNtNtBa_6parser7matches11matched_arg10MatchedArgENtNtNtNtCsj6eKBz9Db1c_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB24_8adapters6filter15filter_try_foldTRBV_RB18_EuINtNtNtB26_3ops12control_flow11ControlFlowuENCNvMNtB1e_9validatorNtB4M_9Validator17validate_required0NCINvNvB1Y_3any5checkB3N_NCB4J_s_0E0E0B3Z_EBa_.exit.i.i ], [ %.sroa.04.0.i.i.be, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge ] ; 11 uses
  br i1 %.not24.i.i.i, label %.split.us.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i

.split.us.i.i:                                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i
  %i.csr = icmp eq ptr %.sroa.0277.0.i.i, %i.cse
  br i1 %i.csr, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i, label %.loopexit351.split.us.i.i

.loopexit351.split.us.i.i:                        ; preds = %.split.us.i.i
  %i.css = getelementptr inbounds nuw i8, ptr %.sroa.0277.0.i.i, i64 40
  call void @llvm.experimental.noalias.scope.decl(metadata !10679)
  call void @llvm.experimental.noalias.scope.decl(metadata !10680)
  %.phi.trans.insert673.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %.sroa.0277.0.i.i, i64 24
  %.val49.pre.pre.pre.i.i = load ptr, ptr %.phi.trans.insert673.phi.trans.insert.i.i, align 8, !noalias !10666
  %.phi.trans.insert.i.phi.trans.insert.i = getelementptr i8, ptr %.sroa.0277.0.i.i, i64 32
  %.val50.pre.i.pre.i = load i64, ptr %.phi.trans.insert.i.phi.trans.insert.i, align 8, !noalias !10666
  br label %.loopexit348.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i, %bb.qi
  %.sroa.0277.1.i.i = phi ptr [ %i.csu, %bb.qi ], [ %.sroa.0277.0.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i ] ; 4 uses
  %i.cst = icmp eq ptr %.sroa.0277.1.i.i, %i.cse
  br i1 %i.cst, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i, label %.lr.ph.i.i.i152.preheader.i.i

.lr.ph.i.i.i152.preheader.i.i:                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i
  %i.csu = getelementptr inbounds nuw i8, ptr %.sroa.0277.1.i.i, i64 40 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10679)
  %i.csv = getelementptr inbounds nuw i8, ptr %.sroa.0277.1.i.i, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !10680)
  %.val.i.i.i.i.i.i45.i = load ptr, ptr %i.csv, align 8, !alias.scope !10681, !noalias !10682 ; 4 uses
  %i.csw = getelementptr inbounds nuw i8, ptr %.sroa.0277.1.i.i, i64 32
  %.val1.i.i.i.i.i.i46.i = load i64, ptr %i.csw, align 8, !alias.scope !10681, !noalias !10682 ; 4 uses
  br label %.lr.ph.i.i.i152.i.i

.lr.ph.i.i.i152.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i, %.lr.ph.i.i.i152.preheader.i.i
  %.sroa.0.019.i.i.i153.i.i = phi ptr [ %i.csx, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %i.ccn, %.lr.ph.i.i.i152.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i154.i.i = phi i64 [ %i.csy, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ 0, %.lr.ph.i.i.i152.preheader.i.i ] ; 4 uses
  %i.csx = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i153.i.i, i64 16 ; 2 uses
  %i.csy = add nuw nsw i64 %.sroa.8.08.i.i.i154.i.i, 1
  %i.csz = getelementptr i8, ptr %.sroa.0.019.i.i.i153.i.i, i64 8
  %.val7.i.i.i155.i.i = load i64, ptr %i.csz, align 8, !noalias !10683, !noundef !10
  %i.cta = icmp eq i64 %.val7.i.i.i155.i.i, %.val1.i.i.i.i.i.i46.i
  br i1 %i.cta, label %.split.i.i.i158.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i

.split.i.i.i158.i.i:                              ; preds = %.lr.ph.i.i.i152.i.i
  %.val.i.i.i159.i.i = load ptr, ptr %.sroa.0.019.i.i.i153.i.i, align 8, !noalias !10683, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i.i45.i) ], !noalias !10684
  %bcmp.i.i.i.i.i160.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i159.i.i, ptr nonnull readonly %.val.i.i.i.i.i.i45.i, i64 %.val1.i.i.i.i.i.i46.i), !noalias !10683
  %i.ctb = icmp eq i32 %bcmp.i.i.i.i.i160.i.i, 0
  br i1 %i.ctb, label %bb.qg, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i: ; preds = %.split.i.i.i158.i.i, %.lr.ph.i.i.i152.i.i
  %i.ctc = icmp eq ptr %i.csx, %i.ccq
  br i1 %i.ctc, label %.loopexit348.i.i, label %.lr.ph.i.i.i152.i.i

bb.qg:                                            ; preds = %.split.i.i.i158.i.i
  %i.ctd = icmp ult i64 %.sroa.8.08.i.i.i154.i.i, %i.ccu
  br i1 %i.ctd, label %bb.qi, label %bb.qh

bb.qh:                                            ; preds = %bb.qg
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i154.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10683
  unreachable

bb.qi:                                            ; preds = %bb.qg
  %i.cte = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i154.i.i
  %i.ctf = getelementptr inbounds nuw i8, ptr %i.cte, i64 97
  %i.ctg = load i8, ptr %i.ctf, align 1, !range !38, !alias.scope !10685, !noalias !10686, !noundef !10
  %cond.i.i161.i.i = icmp eq i8 %i.ctg, 0
  br i1 %cond.i.i161.i.i, label %.loopexit348.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i

.loopexit348.i.i:                                 ; preds = %bb.qi, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i, %.loopexit351.split.us.i.i
  %.val50.pre.i.i = phi i64 [ %.val1.i.i.i.i.i.i46.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %.val50.pre.i.pre.i, %.loopexit351.split.us.i.i ], [ %.val1.i.i.i.i.i.i46.i, %bb.qi ] ; 7 uses
  %.val49.pre.i.i.a = phi ptr [ %.val.i.i.i.i.i.i45.i, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %.val49.pre.pre.pre.i.i, %.loopexit351.split.us.i.i ], [ %.val.i.i.i.i.i.i45.i, %bb.qi ] ; 2 uses
  %i.cth = phi ptr [ %i.csu, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i156.i.i ], [ %i.css, %.loopexit351.split.us.i.i ], [ %i.csu, %bb.qi ]
  %.val.i47.i = load ptr, ptr %i.csf, align 8, !noalias !10666, !nonnull !10, !noundef !10 ; 2 uses
  %.val46.i.i = load i64, ptr %i.csg, align 8, !noalias !10666, !noundef !10 ; 2 uses
  %.idx.i86.i.i = mul nuw nsw i64 %.val46.i.i, 600
  %i.cti = getelementptr inbounds nuw i8, ptr %.val.i47.i, i64 %.idx.i86.i.i
  %i.ctj = icmp eq i64 %.val46.i.i, 0
  br i1 %i.ctj, label %.loopexit350.i.i, label %.lr.ph.i.i87.i.i

.lr.ph.i.i87.i.i:                                 ; preds = %.loopexit348.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i
  %i.ctk = phi ptr [ %i.ctl, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i ], [ %.val.i47.i, %.loopexit348.i.i ] ; 8 uses
  %i.ctl = getelementptr inbounds nuw i8, ptr %i.ctk, i64 600 ; 2 uses
  %i.ctm = getelementptr i8, ptr %i.ctk, i64 544
  %i.ctn = load i64, ptr %i.ctm, align 8, !noalias !10687, !noundef !10
  %i.cto = icmp eq i64 %i.ctn, %.val50.pre.i.i
  br i1 %i.cto, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i: ; preds = %.lr.ph.i.i87.i.i
  %i.ctp = getelementptr i8, ptr %i.ctk, i64 536
  %i.ctq = load ptr, ptr %i.ctp, align 8, !noalias !10687, !nonnull !10, !noundef !10 ; 3 uses
  %bcmp.i.i.i.i.i = call i32 @bcmp(ptr nonnull %i.ctq, ptr nonnull %.val49.pre.i.i.a, i64 %.val50.pre.i.i), !noalias !10687
  %i.ctr = icmp eq i32 %bcmp.i.i.i.i.i, 0
  br i1 %i.ctr, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i, %.lr.ph.i.i87.i.i
  %i.cts = icmp eq ptr %i.ctl, %i.cti
  br i1 %i.cts, label %.loopexit350.i.i, label %.lr.ph.i.i87.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i: ; preds = %.split.us.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit162.i.i
  %i.ctt = load ptr, ptr %i.cck, align 8, !alias.scope !10664, !nonnull !10, !align !16, !noundef !10 ; 2 uses
  %i.ctu = getelementptr i8, ptr %i.ctt, i64 136
  %.val63.i.i = load ptr, ptr %i.ctu, align 8, !noalias !10666, !nonnull !10, !noundef !10 ; 2 uses
  %i.ctv = getelementptr i8, ptr %i.ctt, i64 144
  %.val64.i.i = load i64, ptr %i.ctv, align 8, !noalias !10666, !noundef !10
  %i.ctw = getelementptr inbounds nuw [600 x i8], ptr %.val63.i.i, i64 %.val64.i.i ; 2 uses
  %i.ctx = getelementptr inbounds nuw i8, ptr %i.dh, i64 8
  %i.cty = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.ctz = getelementptr inbounds nuw i8, ptr %i.dg, i64 8
  %i.cua = getelementptr inbounds nuw i8, ptr %i.dg, i64 16
  %i.cub = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.cuc = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.cud = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.cue = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %.not.i50.i = xor i1 %.lcssa15.i.i.i, true
  br label %.outer

.outer:                                           ; preds = %bb.tj, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i
  %.sroa.0281.0.i.i.ph = phi ptr [ %i.djc, %bb.tj ], [ %.val63.i.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i ]
  %.sroa.04.1.i.i.ph = phi i64 [ %..i.i.i, %bb.tj ], [ %.sroa.04.0.i.i, %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterINtNtNtCsfu0rQaTkGUu_12clap_builder4util5graph5ChildNtNtBO_2id2IdEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldRBJ_RB1z_uINtNtNtBa_3ops12control_flow11ControlFlowB3l_ENCNvMs_BM_INtBM_10ChildGraphB1z_E4iter0NCINvNvB1O_4find5checkB3l_QNCNvMNtNtBQ_6parser9validatorNtB5k_9Validator17validate_requireds0_0E0E0B3r_EBQ_.exit.i.i ] ; 3 uses
  br label %bb.qj

bb.qj:                                            ; preds = %.backedge4670, %.outer
  %.sroa.0281.0.i.i = phi ptr [ %.sroa.0281.0.i.i.ph, %.outer ], [ %i.djc, %.backedge4670 ] ; 6 uses
  br i1 %.not24.i.i.i, label %.split482.us.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i

.split482.us.i.i:                                 ; preds = %bb.qj
  %i.cuf = icmp eq ptr %.sroa.0281.0.i.i, %i.ctw
  br i1 %i.cuf, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i, label %._crit_edge.i.thread.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i: ; preds = %bb.qj, %bb.qm
  %i.cug = phi ptr [ %i.cui, %bb.qm ], [ %.sroa.0281.0.i.i, %bb.qj ] ; 14 uses
  %i.cuh = icmp eq ptr %i.cug, %i.ctw
  br i1 %i.cuh, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i, label %.lr.ph.i.i.i164.preheader.i.i

.lr.ph.i.i.i164.preheader.i.i:                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i
  %i.cui = getelementptr inbounds nuw i8, ptr %i.cug, i64 600 ; 7 uses
  %i.cuj = getelementptr inbounds nuw i8, ptr %i.cug, i64 536
  %.val.i.i.i.i.i = load ptr, ptr %i.cuj, align 8, !noalias !10688 ; 2 uses
  %i.cuk = getelementptr i8, ptr %i.cug, i64 544
  %.val1.i.i.i.i.i = load i64, ptr %i.cuk, align 8, !noalias !10688 ; 2 uses
  br label %.lr.ph.i.i.i164.i.i

.lr.ph.i.i.i164.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i, %.lr.ph.i.i.i164.preheader.i.i
  %.sroa.0.019.i.i.i165.i.i = phi ptr [ %i.cul, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i ], [ %i.ccn, %.lr.ph.i.i.i164.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i166.i.i = phi i64 [ %i.cum, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i ], [ 0, %.lr.ph.i.i.i164.preheader.i.i ] ; 4 uses
  %i.cul = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i165.i.i, i64 16 ; 2 uses
  %i.cum = add nuw nsw i64 %.sroa.8.08.i.i.i166.i.i, 1
  %i.cun = getelementptr i8, ptr %.sroa.0.019.i.i.i165.i.i, i64 8
  %.val7.i.i.i167.i.i = load i64, ptr %i.cun, align 8, !noalias !10689, !noundef !10
  %i.cuo = icmp eq i64 %.val7.i.i.i167.i.i, %.val1.i.i.i.i.i
  br i1 %i.cuo, label %.split.i.i.i170.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i

.split.i.i.i170.i.i:                              ; preds = %.lr.ph.i.i.i164.i.i
  %.val.i.i.i171.i.i = load ptr, ptr %.sroa.0.019.i.i.i165.i.i, align 8, !noalias !10689, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i) ], !noalias !10690
  %bcmp.i.i.i.i.i172.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i171.i.i, ptr nonnull readonly %.val.i.i.i.i.i, i64 %.val1.i.i.i.i.i), !noalias !10689
  %i.cup = icmp eq i32 %bcmp.i.i.i.i.i172.i.i, 0
  br i1 %i.cup, label %bb.qk, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i: ; preds = %.split.i.i.i170.i.i, %.lr.ph.i.i.i164.i.i
  %i.cuq = icmp eq ptr %i.cul, %i.ccq
  br i1 %i.cuq, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i, label %.lr.ph.i.i.i164.i.i

bb.qk:                                            ; preds = %.split.i.i.i170.i.i
  %i.cur = icmp ult i64 %.sroa.8.08.i.i.i166.i.i, %i.ccu
  br i1 %i.cur, label %bb.qm, label %bb.ql

bb.ql:                                            ; preds = %bb.qk
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i166.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10689
  unreachable

bb.qm:                                            ; preds = %bb.qk
  %i.cus = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i166.i.i
  %i.cut = getelementptr inbounds nuw i8, ptr %i.cus, i64 97
  %i.cuu = load i8, ptr %i.cut, align 1, !range !38, !alias.scope !10691, !noalias !10692, !noundef !10
  %cond.i.i173.i.i = icmp eq i8 %i.cuu, 0
  br i1 %cond.i.i173.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread305.i.i: ; preds = %bb.qm, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i168.i.i
  %i.cuv = getelementptr inbounds nuw i8, ptr %i.cug, i64 208
  %i.cuw = load ptr, ptr %i.cuv, align 8, !noalias !10666, !nonnull !10, !noundef !10 ; 2 uses
  %i.cux = getelementptr inbounds nuw i8, ptr %i.cug, i64 216
  %i.cuy = load i64, ptr %i.cux, align 8, !noalias !10666, !noundef !10 ; 2 uses
  %.idx509.i.i = shl nuw nsw i64 %i.cuy, 5
  %i.cuz = getelementptr inbounds nuw i8, ptr %i.cuw, i64 %.idx509.i.i
  %i.cva = icmp eq i64 %i.cuy, 0
  br i1 %i.cva, label %._crit_edge.i.i, label %.lr.ph.i.i.i113.preheader.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i: ; preds = %.split482.us.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit174.i.i
  %i.cvb = load ptr, ptr %i.cck, align 8, !alias.scope !10664, !nonnull !10, !align !16, !noundef !10 ; 3 uses
  %i.cvc = getelementptr i8, ptr %i.cvb, i64 700
  %i.cvd = load <2 x i32>, ptr %i.cvc, align 4, !noalias !10666
  %i.cve = and <2 x i32> %i.cvd, splat (i32 16)
  %i.cvf = icmp ne <2 x i32> %i.cve, zeroinitializer ; 2 uses
  %i.cvg = extractelement <2 x i1> %i.cvf, i64 0
  %i.cvh = extractelement <2 x i1> %i.cvf, i64 1
  %.sroa.0.0.i92.i.i = select i1 %i.cvg, i1 true, i1 %i.cvh
  br i1 %.sroa.0.0.i92.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i, label %bb.qn

bb.qn:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i
  %i.cvi = getelementptr i8, ptr %i.cvb, i64 136
  %.val61.i.i = load ptr, ptr %i.cvi, align 8, !noalias !10666, !nonnull !10, !noundef !10 ; 2 uses
  %i.cvj = getelementptr i8, ptr %i.cvb, i64 144
  %.val62.i.i = load i64, ptr %i.cvj, align 8, !noalias !10666, !noundef !10 ; 2 uses
  %.idx515.i.i = mul nuw nsw i64 %.val62.i.i, 600
  %i.cvk = getelementptr inbounds nuw i8, ptr %.val61.i.i, i64 %.idx515.i.i ; 3 uses
  %i.cvl = icmp eq i64 %.val62.i.i, 0
  br i1 %i.cvl, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i, label %.lr.ph.i94.preheader.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i: ; preds = %bb.qt, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i, %bb.qn, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMNtNtBW_6parser9validatorNtB2v_9Validator17validate_requireds2_0EBW_.exit.thread.i.i
  %i.cvm = load i64, ptr %i.cqc, align 8, !noalias !10663, !noundef !10 ; 5 uses
  %i.cvn = icmp ult i64 %i.cvm, 576460752303423488
  call void @llvm.assume(i1 %i.cvn)
  %i.cvo = icmp eq i64 %i.cvm, 0
  br i1 %i.cvo, label %bb.sf, label %bb.qu

.lr.ph.i94.preheader.i.i:                         ; preds = %bb.qn, %bb.qt
  %.sroa.0286.0506.i.i = phi ptr [ %i.cwq, %bb.qt ], [ %.val61.i.i, %bb.qn ] ; 2 uses
  br i1 %.not24.i.i.i, label %.lr.ph.i94.us.i.i, label %.lr.ph.i94.i.i

.lr.ph.i94.us.i.i:                                ; preds = %.lr.ph.i94.preheader.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i
  %i.cvp = phi ptr [ %i.cvq, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i ], [ %.sroa.0286.0506.i.i, %.lr.ph.i94.preheader.i.i ] ; 4 uses
  %i.cvq = getelementptr inbounds nuw i8, ptr %i.cvp, i64 600 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10693)
  %i.cvr = getelementptr inbounds nuw i8, ptr %i.cvp, i64 552
  %i.cvs = load ptr, ptr %i.cvr, align 8, !alias.scope !10693, !noalias !10694, !noundef !10
  %.not.i.i.i.us.i.i = icmp eq ptr %i.cvs, null
  %i.cvt = getelementptr inbounds nuw i8, ptr %i.cvp, i64 584
  %i.cvu = load i32, ptr %i.cvt, align 8, !range !44, !alias.scope !10693, !noalias !10694
  %.not1.i.i.i.us.i.i = icmp eq i32 %i.cvu, -1
  %or.cond.i.i.us.i.i = select i1 %.not.i.i.i.us.i.i, i1 %.not1.i.i.i.us.i.i, i1 false
  br i1 %or.cond.i.i.us.i.i, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.loopexit337.split.us.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i

_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.loopexit337.split.us.i.i: ; preds = %.lr.ph.i94.us.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10695)
  br label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i

_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.us.i.i: ; preds = %.lr.ph.i94.us.i.i
  %i.cvv = icmp eq ptr %i.cvq, %i.cvk
  br i1 %i.cvv, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread.i.i, label %.lr.ph.i94.us.i.i

.lr.ph.i94.i.i:                                   ; preds = %.lr.ph.i94.preheader.i.i, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i
  %i.cvw = phi ptr [ %i.cvx, %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i ], [ %.sroa.0286.0506.i.i, %.lr.ph.i94.preheader.i.i ] ; 7 uses
  %i.cvx = getelementptr inbounds nuw i8, ptr %i.cvw, i64 600 ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !10693)
  %i.cvy = getelementptr inbounds nuw i8, ptr %i.cvw, i64 552
  %i.cvz = load ptr, ptr %i.cvy, align 8, !alias.scope !10693, !noalias !10694, !noundef !10
  %.not.i.i.i.i.i = icmp eq ptr %i.cvz, null
  %i.cwa = getelementptr inbounds nuw i8, ptr %i.cvw, i64 584
  %i.cwb = load i32, ptr %i.cwa, align 8, !range !44, !alias.scope !10693, !noalias !10694
  %.not1.i.i.i.i.i = icmp eq i32 %i.cwb, -1
  %or.cond.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not1.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i, label %.lr.ph.i.i.i176.preheader.i.i, label %_RNCINvNtNtNtCsj6eKBz9Db1c_4core4iter8adapters6filter15filter_try_foldRNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArguINtNtNtBa_3ops12control_flow11ControlFlowB15_ENCNvMs2_NtB1a_7commandNtB2N_7Command15get_positionals0NCINvNvNtNtNtB8_6traits8iterator8Iterator4find5checkB15_QNCNvMNtNtB1c_6parser9validatorNtB4x_9Validator17validate_requireds4_0E0E0B1c_.exit.i.i.i

.lr.ph.i.i.i176.preheader.i.i:                    ; preds = %.lr.ph.i94.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10695)
  %i.cwc = getelementptr inbounds nuw i8, ptr %i.cvw, i64 536
  %.val.i.i.i.i.i98.i.i = load ptr, ptr %i.cwc, align 8, !alias.scope !10696, !noalias !10694 ; 2 uses
  %i.cwd = getelementptr inbounds nuw i8, ptr %i.cvw, i64 544
  %.val1.i.i.i.i.i99.i.i = load i64, ptr %i.cwd, align 8, !alias.scope !10696, !noalias !10694 ; 2 uses
  br label %.lr.ph.i.i.i176.i.i

.lr.ph.i.i.i176.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i, %.lr.ph.i.i.i176.preheader.i.i
  %.sroa.0.019.i.i.i177.i.i = phi ptr [ %i.cwe, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i ], [ %i.ccn, %.lr.ph.i.i.i176.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i178.i.i = phi i64 [ %i.cwf, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i ], [ 0, %.lr.ph.i.i.i176.preheader.i.i ] ; 4 uses
  %i.cwe = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i177.i.i, i64 16 ; 2 uses
  %i.cwf = add nuw nsw i64 %.sroa.8.08.i.i.i178.i.i, 1
  %i.cwg = getelementptr i8, ptr %.sroa.0.019.i.i.i177.i.i, i64 8
  %.val7.i.i.i179.i.i = load i64, ptr %i.cwg, align 8, !noalias !10697, !noundef !10
  %i.cwh = icmp eq i64 %.val7.i.i.i179.i.i, %.val1.i.i.i.i.i99.i.i
  br i1 %i.cwh, label %.split.i.i.i182.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i

.split.i.i.i182.i.i:                              ; preds = %.lr.ph.i.i.i176.i.i
  %.val.i.i.i183.i.i = load ptr, ptr %.sroa.0.019.i.i.i177.i.i, align 8, !noalias !10697, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i.i.i.i.i98.i.i) ], !noalias !10698
  %bcmp.i.i.i.i.i184.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i183.i.i, ptr nonnull readonly %.val.i.i.i.i.i98.i.i, i64 %.val1.i.i.i.i.i99.i.i), !noalias !10697
  %i.cwi = icmp eq i32 %bcmp.i.i.i.i.i184.i.i, 0
  br i1 %i.cwi, label %bb.qo, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i180.i.i: ; preds = %.split.i.i.i182.i.i, %.lr.ph.i.i.i176.i.i
  %i.cwj = icmp eq ptr %i.cwe, %i.ccq
  br i1 %i.cwj, label %_RINvYINtNtNtCsj6eKBz9Db1c_4core5slice4iter4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder3arg3ArgENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1E_8adapters6filter15filter_try_foldRBJ_uINtNtNtBa_3ops12control_flow11ControlFlowB37_ENCNvMs2_NtBN_7commandNtB44_7Command15get_positionals0NCINvNvB1y_4find5checkB37_QNCNvMNtNtBP_6parser9validatorNtB5j_9Validator17validate_requireds4_0E0E0B3c_EBP_.exit.thread311.i.i, label %.lr.ph.i.i.i176.i.i

bb.qo:                                            ; preds = %.split.i.i.i182.i.i
  %i.cwk = icmp ult i64 %.sroa.8.08.i.i.i178.i.i, %i.ccu
  br i1 %i.cwk, label %bb.qq, label %bb.qp

bb.qp:                                            ; preds = %bb.qo
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i178.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10697
  unreachable

end_hunk_0
begin_hunk_1_@_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser6parserNtB4_6Parser16get_matches_with:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10801)
  %i.djp = icmp ult i64 %i.djj, 576460752303423488
  call void @llvm.assume(i1 %i.djp)
  %i.djq = icmp eq i64 %i.djj, 0
  br i1 %i.djq, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, label %.thread.i.i

.thread.i.i:                                      ; preds = %bb.tg, %bb.sz
  %i.djr = getelementptr inbounds nuw i8, ptr %i.djd, i64 280
  %i.djs = load ptr, ptr %i.djr, align 8, !alias.scope !10801, !noalias !10666, !nonnull !10, !noundef !10 ; 2 uses
  %.idx513.i.i = shl nuw nsw i64 %i.djj, 4
  %i.djt = getelementptr inbounds nuw i8, ptr %i.djs, i64 %.idx513.i.i
  br i1 %.not24.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader: ; preds = %.thread.i.i
  %i.dju = icmp eq i64 %i.djj, 0
  br i1 %i.dju, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i, label %.lr.ph.i.i.i229.preheader.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i: ; preds = %bb.tc
  %i.djv = icmp eq ptr %i.djx, %i.djt
  br i1 %i.djv, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i, label %.lr.ph.i.i.i229.preheader.i.i

.lr.ph.i.i.i229.preheader.i.i:                    ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i
  %i.djw = phi ptr [ %i.djx, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i ], [ %i.djs, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader ] ; 3 uses
  %i.djx = getelementptr inbounds nuw i8, ptr %i.djw, i64 16 ; 2 uses
  %.val2.i.i.i52.i = load ptr, ptr %i.djw, align 8, !noalias !10802 ; 2 uses
  %i.djy = getelementptr i8, ptr %i.djw, i64 8
  %.val3.i.i.i53.i = load i64, ptr %i.djy, align 8, !noalias !10802 ; 2 uses
  br label %.lr.ph.i.i.i229.i.i

.lr.ph.i.i.i229.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i, %.lr.ph.i.i.i229.preheader.i.i
  %.sroa.0.019.i.i.i230.i.i = phi ptr [ %i.djz, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i ], [ %i.ccn, %.lr.ph.i.i.i229.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i231.i.i = phi i64 [ %i.dka, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i ], [ 0, %.lr.ph.i.i.i229.preheader.i.i ] ; 4 uses
  %i.djz = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i230.i.i, i64 16 ; 2 uses
  %i.dka = add nuw nsw i64 %.sroa.8.08.i.i.i231.i.i, 1
  %i.dkb = getelementptr i8, ptr %.sroa.0.019.i.i.i230.i.i, i64 8
  %.val7.i.i.i232.i.i = load i64, ptr %i.dkb, align 8, !noalias !10803, !noundef !10
  %i.dkc = icmp eq i64 %.val7.i.i.i232.i.i, %.val3.i.i.i53.i
  br i1 %i.dkc, label %.split.i.i.i235.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i

.split.i.i.i235.i.i:                              ; preds = %.lr.ph.i.i.i229.i.i
  %.val.i.i.i236.i.i = load ptr, ptr %.sroa.0.019.i.i.i230.i.i, align 8, !noalias !10803, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i.i52.i) ], !noalias !10804
  %bcmp.i.i.i.i.i237.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i236.i.i, ptr nonnull readonly %.val2.i.i.i52.i, i64 %.val3.i.i.i53.i), !noalias !10803
  %i.dkd = icmp eq i32 %bcmp.i.i.i.i.i237.i.i, 0
  br i1 %i.dkd, label %bb.ta, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i: ; preds = %.split.i.i.i235.i.i, %.lr.ph.i.i.i229.i.i
  %i.dke = icmp eq ptr %i.djz, %i.ccq
  br i1 %i.dke, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, label %.lr.ph.i.i.i229.i.i

bb.ta:                                            ; preds = %.split.i.i.i235.i.i
  %i.dkf = icmp ult i64 %.sroa.8.08.i.i.i231.i.i, %i.ccu
  br i1 %i.dkf, label %bb.tc, label %bb.tb

bb.tb:                                            ; preds = %bb.ta
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i231.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10803
  unreachable

bb.tc:                                            ; preds = %bb.ta
  %i.dkg = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i231.i.i
  %i.dkh = getelementptr inbounds nuw i8, ptr %i.dkg, i64 97
  %i.dki = load i8, ptr %i.dkh, align 1, !range !38, !alias.scope !10805, !noalias !10806, !noundef !10
  %cond.i.i238.i.i = icmp eq i8 %i.dki, 0
  br i1 %cond.i.i238.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i: ; preds = %bb.tc, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i233.i.i, %bb.sz
  %i.dkj = getelementptr inbounds nuw i8, ptr %i.djd, i64 256
  %i.dkk = load ptr, ptr %i.dkj, align 8, !alias.scope !10801, !noalias !10666, !nonnull !10, !noundef !10 ; 2 uses
  %.idx514.i.i = shl nuw nsw i64 %i.djf, 4
  %i.dkl = getelementptr inbounds nuw i8, ptr %i.dkk, i64 %.idx514.i.i
  %brmerge.i.i = or i1 %.not24.i.i.i, %i.djh
  br i1 %brmerge.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, label %.lr.ph.i.i.i217.preheader.i.i

.lr.ph.i.i.i217.preheader.i.i:                    ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i
  %i.dkm = phi ptr [ %i.dkn, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i ], [ %i.dkk, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i ] ; 3 uses
  %i.dkn = getelementptr inbounds nuw i8, ptr %i.dkm, i64 16 ; 2 uses
  %.val2.i2.i.i.i = load ptr, ptr %i.dkm, align 8, !noalias !10807 ; 2 uses
  %i.dko = getelementptr i8, ptr %i.dkm, i64 8
  %.val3.i3.i.i.i = load i64, ptr %i.dko, align 8, !noalias !10807 ; 2 uses
  br label %.lr.ph.i.i.i217.i.i

.lr.ph.i.i.i217.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i, %.lr.ph.i.i.i217.preheader.i.i
  %.sroa.0.019.i.i.i218.i.i = phi ptr [ %i.dkp, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i ], [ %i.ccn, %.lr.ph.i.i.i217.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i219.i.i = phi i64 [ %i.dkq, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i ], [ 0, %.lr.ph.i.i.i217.preheader.i.i ] ; 4 uses
  %i.dkp = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i218.i.i, i64 16 ; 2 uses
  %i.dkq = add nuw nsw i64 %.sroa.8.08.i.i.i219.i.i, 1
  %i.dkr = getelementptr i8, ptr %.sroa.0.019.i.i.i218.i.i, i64 8
  %.val7.i.i.i220.i.i = load i64, ptr %i.dkr, align 8, !noalias !10808, !noundef !10
  %i.dks = icmp eq i64 %.val7.i.i.i220.i.i, %.val3.i3.i.i.i
  br i1 %i.dks, label %.split.i.i.i223.i.i, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i

.split.i.i.i223.i.i:                              ; preds = %.lr.ph.i.i.i217.i.i
  %.val.i.i.i224.i.i = load ptr, ptr %.sroa.0.019.i.i.i218.i.i, align 8, !noalias !10808, !nonnull !10, !noundef !10
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i2.i.i.i) ], !noalias !10809
  %bcmp.i.i.i.i.i225.i.i = call i32 @bcmp(ptr nonnull readonly %.val.i.i.i224.i.i, ptr nonnull readonly %.val2.i2.i.i.i, i64 %.val3.i3.i.i.i), !noalias !10808
  %i.dkt = icmp eq i32 %bcmp.i.i.i.i.i225.i.i, 0
  br i1 %i.dkt, label %bb.td, label %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i

_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i: ; preds = %.split.i.i.i223.i.i, %.lr.ph.i.i.i217.i.i
  %i.dku = icmp eq ptr %i.dkp, %i.ccq
  br i1 %i.dku, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i, label %.lr.ph.i.i.i217.i.i

bb.td:                                            ; preds = %.split.i.i.i223.i.i
  %i.dkv = icmp ult i64 %.sroa.8.08.i.i.i219.i.i, %i.ccu
  br i1 %i.dkv, label %bb.tf, label %bb.te

bb.te:                                            ; preds = %bb.td
  call void @_RNvNtCsj6eKBz9Db1c_4core9panicking18panic_bounds_check(i64 noundef %.sroa.8.08.i.i.i219.i.i, i64 noundef %i.ccu, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #44, !noalias !10808
  unreachable

bb.tf:                                            ; preds = %bb.td
  %i.dkw = getelementptr inbounds nuw [104 x i8], ptr %i.ccs, i64 %.sroa.8.08.i.i.i219.i.i
  %i.dkx = getelementptr inbounds nuw i8, ptr %i.dkw, i64 97
  %i.dky = load i8, ptr %i.dkx, align 1, !range !38, !alias.scope !10810, !noalias !10811, !noundef !10
  %cond.i.i226.i.i = icmp eq i8 %i.dky, 0
  br i1 %cond.i.i226.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i: ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i221.i.i, %bb.tf
  %.not.not.not.i.not.i.i.i = icmp eq ptr %i.dkn, %i.dkl
  br i1 %.not.not.not.i.not.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, label %.lr.ph.i.i.i217.preheader.i.i

bb.tg:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterTNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdNtNtNtBX_7builder6os_str5OsStrEENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBX_6parser9validatorNtB2U_9Validator17validate_requireds3_0EBX_.exit.i.i
  %i.dkz = icmp ult i64 %i.djj, 576460752303423488
  call void @llvm.assume(i1 %i.dkz)
  %i.dla = icmp eq i64 %i.djj, 0
  br i1 %i.dla, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i, label %.thread.i.i

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i, %bb.tf, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit239.i.i.preheader, %bb.tg
  %or.cond.i.i = select i1 %.not.i50.i, i1 %.sroa.021.2.i.i, i1 false
  br i1 %or.cond.i.i, label %bb.th, label %.backedge4670

_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i: ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit227.i.i, %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3allNCNvMNtNtBW_6parser9validatorNtB2o_9Validator25fails_arg_required_unless0EBW_.exit.i.i.i, %.thread.i.i
  br i1 %.lcssa15.i.i.i, label %.backedge4670, label %bb.th

bb.th:                                            ; preds = %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i
  %i.dlb = getelementptr inbounds nuw i8, ptr %i.djd, i64 536
  %.val55.i.i = load ptr, ptr %i.dlb, align 8, !noalias !10666, !nonnull !10, !noundef !10
  %i.dlc = getelementptr i8, ptr %i.djd, i64 544
  %.val56.i.i = load i64, ptr %i.dlc, align 8, !noalias !10666, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !10812)
  %i.dld = load i64, ptr %i.cqc, align 8, !alias.scope !10812, !noalias !10663, !noundef !10 ; 3 uses
  %i.dle = load i64, ptr %i.ed, align 8, !range !11, !alias.scope !10812, !noalias !10663, !noundef !10
  %i.dlf = icmp eq i64 %i.dld, %i.dle
  br i1 %i.dlf, label %bb.ti, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i

bb.ti:                                            ; preds = %bb.th
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed) #42, !noalias !10813
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i: ; preds = %bb.ti, %bb.th
  %i.dlg = load ptr, ptr %i.cqb, align 8, !alias.scope !10812, !noalias !10663, !nonnull !10, !noundef !10
  %i.dlh = getelementptr inbounds nuw [16 x i8], ptr %i.dlg, i64 %i.dld ; 2 uses
  store ptr %.val55.i.i, ptr %i.dlh, align 8, !noalias !10814
  %i.dli = getelementptr inbounds nuw i8, ptr %i.dlh, i64 8
  store i64 %.val56.i.i, ptr %i.dli, align 8, !noalias !10815
  %i.dlj = add i64 %i.dld, 1
  store i64 %i.dlj, ptr %i.cqc, align 8, !alias.scope !10812, !noalias !10663
  %i.dlk = getelementptr i8, ptr %i.djd, i64 592
  %.val68.i.i = load i32, ptr %i.dlk, align 8, !noalias !10666, !noundef !10
  %i.dll = and i32 %.val68.i.i, 256
  %.not334.i.i = icmp eq i32 %i.dll, 0
  br i1 %.not334.i.i, label %bb.tj, label %.backedge4670

.backedge4670:                                    ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator25fails_arg_required_unless.exit.thread.i.i
  br label %bb.qj

bb.tj:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit126.i.i
  %i.dlm = getelementptr i8, ptr %i.djd, i64 40
  %.val73.i.i = load i64, ptr %i.dlm, align 8, !range !13, !noalias !10666, !noundef !10
  %i.dln = getelementptr i8, ptr %i.djd, i64 48
  %.val74.i.i = load i64, ptr %i.dln, align 8, !noalias !10666
  %i.dlo = trunc nuw i64 %.val73.i.i to i1
  %i.dlp = call i64 @llvm.umax.i64(i64 %.val74.i.i, i64 %.sroa.04.1.i.i.ph)
  %..i.i.i = select i1 %i.dlo, i64 %i.dlp, i64 %.sroa.04.1.i.i.ph
  br label %.outer

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.i.i.i.i
  %i.dlq = getelementptr i8, ptr %i.ctk, i64 544
  %i.dlr = getelementptr i8, ptr %i.ctk, i64 536
  br i1 %.lcssa15.i.i.i, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge, label %bb.tk

.loopexit350.i.i:                                 ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command4find0Bb_.exit.thread.i.i.i.i, %.loopexit348.i.i
  %.val47.i.i = load ptr, ptr %i.csj, align 8, !noalias !10666, !nonnull !10, !noundef !10 ; 2 uses
  %.val48.i.i = load i64, ptr %i.csk, align 8, !noalias !10666, !noundef !10 ; 2 uses
  %.idx.i127.i.i = mul nuw nsw i64 %.val48.i.i, 96
  %i.dls = getelementptr inbounds nuw i8, ptr %.val47.i.i, i64 %.idx.i127.i.i
  %i.dlt = icmp eq i64 %.val48.i.i, 0
  br i1 %i.dlt, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge, label %.lr.ph.i.i128.i.i

.lr.ph.i.i128.i.i:                                ; preds = %.loopexit350.i.i, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i
  %i.dlu = phi ptr [ %i.dlv, %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i ], [ %.val47.i.i, %.loopexit350.i.i ] ; 5 uses
  %i.dlv = getelementptr inbounds nuw i8, ptr %i.dlu, i64 96 ; 2 uses
  %i.dlw = getelementptr i8, ptr %i.dlu, i64 80
  %i.dlx = load i64, ptr %i.dlw, align 8, !noalias !10816, !noundef !10
  %i.dly = icmp eq i64 %i.dlx, %.val50.pre.i.i
  br i1 %i.dly, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i: ; preds = %.lr.ph.i.i128.i.i
  %i.dlz = getelementptr inbounds nuw i8, ptr %i.dlu, i64 72
  %i.dma = load ptr, ptr %i.dlz, align 8, !noalias !10816, !nonnull !10, !noundef !10
  %bcmp.i.i.i130.i.i = call i32 @bcmp(ptr nonnull %i.dma, ptr nonnull readonly %.val49.pre.i.i.a, i64 %.val50.pre.i.i), !noalias !10816
  %i.dmb = icmp eq i32 %bcmp.i.i.i130.i.i, 0
  br i1 %i.dmb, label %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i, label %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i

_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.thread.i.i.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i, %.lr.ph.i.i128.i.i
  %i.dmc = icmp eq ptr %i.dlv, %i.dls
  br i1 %i.dmc, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge, label %.lr.ph.i.i128.i.i

bb.tk:                                            ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command4find.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.dj), !noalias !10817
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts16gather_conflicts(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.dj, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cqd, ptr nonnull readonly %i.ctq, i64 %.val50.pre.i.i) #43, !noalias !10818
  %i.dmd = load i64, ptr %i.csh, align 8, !noalias !10817, !noundef !10 ; 2 uses
  %i.dme = icmp ult i64 %i.dmd, 576460752303423488
  call void @llvm.assume(i1 %i.dme)
  %i.dmf = icmp eq i64 %i.dmd, 0
  br i1 %i.dmf, label %bb.tn, label %bb.tl

bb.tl:                                            ; preds = %bb.tk
  call void @llvm.experimental.noalias.scope.decl(metadata !10819)
  %.val.i.i131.i.i = load i64, ptr %i.dj, align 8, !range !11, !alias.scope !10819, !noalias !10817, !noundef !10 ; 2 uses
  %i.dmg = icmp eq i64 %.val.i.i131.i.i, 0
  br i1 %i.dmg, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i48.i, label %bb.tm

bb.tm:                                            ; preds = %bb.tl
  %.val1.i.i132.i.i = load ptr, ptr %i.csi, align 8, !alias.scope !10819, !noalias !10817, !nonnull !10, !noundef !10
  %i.dmh = shl nuw i64 %.val.i.i131.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i132.i.i, i64 noundef %i.dmh, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10820
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i48.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit.i.i48.i: ; preds = %bb.tm, %bb.tl
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !10817
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge

bb.tn:                                            ; preds = %bb.tk
  call void @llvm.experimental.noalias.scope.decl(metadata !10821)
  %.val.i11.i.i.i = load i64, ptr %i.dj, align 8, !range !11, !alias.scope !10821, !noalias !10817, !noundef !10 ; 2 uses
  %i.dmi = icmp eq i64 %.val.i11.i.i.i, 0
  br i1 %i.dmi, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit13.i.i.i, label %bb.to

bb.to:                                            ; preds = %bb.tn
  %.val1.i12.i.i.i = load ptr, ptr %i.csi, align 8, !alias.scope !10821, !noalias !10817, !nonnull !10, !noundef !10
  %i.dmj = shl nuw i64 %.val.i11.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i12.i.i.i, i64 noundef %i.dmj, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10822
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit13.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit13.i.i.i: ; preds = %bb.to, %bb.tn
  call void @llvm.lifetime.end.p0(ptr nonnull %i.dj), !noalias !10817
  %i.dmk = load ptr, ptr %i.csj, align 8, !noalias !10823, !nonnull !10, !noundef !10 ; 2 uses
  %i.dml = load i64, ptr %i.csk, align 8, !noalias !10823, !noundef !10 ; 2 uses
  %.idx.i135.i.i = mul nuw nsw i64 %i.dml, 96
  %i.dmm = getelementptr inbounds nuw i8, ptr %i.dmk, i64 %.idx.i135.i.i ; 2 uses
  %i.dmn = icmp eq i64 %i.dml, 0
  br i1 %i.dmn, label %.loopexit.i.i, label %.lr.ph.i.i136.i.i

.lr.ph.i.i136.i.i:                                ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit13.i.i.i, %.lr.ph.i.i136.i.i.backedge
  %i.dmo = phi ptr [ %i.dmp, %.lr.ph.i.i136.i.i.backedge ], [ %i.dmk, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit13.i.i.i ] ; 5 uses
  %i.dmp = getelementptr inbounds nuw i8, ptr %i.dmo, i64 96 ; 3 uses
  %i.dmq = getelementptr inbounds nuw i8, ptr %i.dmo, i64 8
  %i.dmr = load ptr, ptr %i.dmq, align 8, !noalias !10824, !nonnull !10, !noundef !10 ; 2 uses
  %i.dms = getelementptr inbounds nuw i8, ptr %i.dmo, i64 16
  %i.dmt = load i64, ptr %i.dms, align 8, !noalias !10824, !noundef !10 ; 2 uses
  %.idx.i.i.i.i.i.i = shl nuw nsw i64 %i.dmt, 4
  %i.dmu = getelementptr inbounds nuw i8, ptr %i.dmr, i64 %.idx.i.i.i.i.i.i
  %.not.i.i.i.i.i137.i.i = icmp eq i64 %i.dmt, 0
  br i1 %.not.i.i.i.i.i137.i.i, label %.loopexit.i.i139.i.i, label %.lr.ph.i.i.i.i.i138.i.i

.lr.ph.i.i.i.i.i138.i.i:                          ; preds = %.lr.ph.i.i136.i.i, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i.i.i
  %i.dmv = phi ptr [ %i.dmw, %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i.i.i ], [ %i.dmr, %.lr.ph.i.i136.i.i ] ; 3 uses
  %i.dmw = getelementptr inbounds nuw i8, ptr %i.dmv, i64 16 ; 2 uses
  %i.dmx = getelementptr i8, ptr %i.dmv, i64 8
  %.val3.i.i.i.i.i.i.i = load i64, ptr %i.dmx, align 8, !noalias !10825, !noundef !10
  %i.dmy = icmp eq i64 %.val3.i.i.i.i.i.i.i, %.val50.pre.i.i
  br i1 %i.dmy, label %.split.i.i.i.i.i.i.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i.i.i

.split.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i138.i.i
  %.val2.i.i.i.i.i.i.i = load ptr, ptr %i.dmv, align 8, !noalias !10825, !nonnull !10, !noundef !10
  %bcmp.i.i.i.i.i.i140.i.i = call i32 @bcmp(ptr nonnull readonly %.val2.i.i.i.i.i.i.i, ptr nonnull readonly %i.ctq, i64 %.val50.pre.i.i), !noalias !10825
  %i.dmz = icmp eq i32 %bcmp.i.i.i.i.i.i140.i.i, 0
  br i1 %i.dmz, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i.i.i, label %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i.i.i

_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i138.i.i
  %.not7.i.i.i.i.i.i.i = icmp eq ptr %i.dmw, %i.dmu
  br i1 %.not7.i.i.i.i.i.i.i, label %.loopexit.i.i139.i.i, label %.lr.ph.i.i.i.i.i138.i.i

.loopexit.i.i139.i.i:                             ; preds = %_RNCNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB9_7Command14groups_for_arg00Bd_.exit.backedge.i.i.i.i.i.i.i, %.lr.ph.i.i136.i.i
  %i.dna = icmp eq ptr %i.dmp, %i.dmm
  br i1 %i.dna, label %.loopexit.i.i, label %.lr.ph.i.i136.i.i.backedge

.lr.ph.i.i136.i.i.backedge:                       ; preds = %.loopexit.i.i139.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i
  br label %.lr.ph.i.i136.i.i

_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i.i.i: ; preds = %.split.i.i.i.i.i.i.i
  %i.dnb = getelementptr inbounds nuw i8, ptr %i.dmo, i64 72
  %i.dnc = load ptr, ptr %i.dnb, align 8, !noalias !10823, !nonnull !10, !noundef !10
  %i.dnd = getelementptr inbounds nuw i8, ptr %i.dmo, i64 80
  %i.dne = load i64, ptr %i.dnd, align 8, !noalias !10823, !noundef !10
  call void @llvm.lifetime.start.p0(ptr nonnull %i.di), !noalias !10817
  call fastcc void @_RNvMs_NtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB4_9Conflicts16gather_conflicts(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.di, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.ei, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cqd, ptr nonnull %i.dnc, i64 %i.dne) #43, !noalias !10818
  %i.dnf = load i64, ptr %i.csl, align 8, !noalias !10817, !noundef !10 ; 2 uses
  %i.dng = icmp ult i64 %i.dnf, 576460752303423488
  call void @llvm.assume(i1 %i.dng)
  %i.dnh = icmp eq i64 %i.dnf, 0
  br i1 %i.dnh, label %bb.tr, label %bb.tp

bb.tp:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10826)
  %.val.i14.i.i.i = load i64, ptr %i.di, align 8, !range !11, !alias.scope !10826, !noalias !10817, !noundef !10 ; 2 uses
  %i.dni = icmp eq i64 %.val.i14.i.i.i, 0
  br i1 %i.dni, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit16.i.i.i, label %bb.tq

bb.tq:                                            ; preds = %bb.tp
  %.val1.i15.i.i.i = load ptr, ptr %i.csm, align 8, !alias.scope !10826, !noalias !10817, !nonnull !10, !noundef !10
  %i.dnj = shl nuw i64 %.val.i14.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i15.i.i.i, i64 noundef %i.dnj, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10827
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit16.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit16.i.i.i: ; preds = %bb.tq, %bb.tp
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !10817
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge

bb.tr:                                            ; preds = %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder7builder9arg_group8ArgGroupENtNtNtNtBb_4iter6traits8iterator8Iterator4findQNCNvMs5_NtBU_7commandNtB2J_7Command14groups_for_arg0EBW_.exit.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10828)
  %.val.i17.i.i.i = load i64, ptr %i.di, align 8, !range !11, !alias.scope !10828, !noalias !10817, !noundef !10 ; 2 uses
  %i.dnk = icmp eq i64 %.val.i17.i.i.i, 0
  br i1 %i.dnk, label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i, label %bb.ts

bb.ts:                                            ; preds = %bb.tr
  %.val1.i18.i.i.i = load ptr, ptr %i.csm, align 8, !alias.scope !10828, !noalias !10817, !nonnull !10, !noundef !10
  %i.dnl = shl nuw i64 %.val.i17.i.i.i, 4
  call void @_RNvCshxk5dXoXnx9_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i18.i.i.i, i64 noundef %i.dnl, i64 noundef range(i64 1, -9223372036854775807) 8) #43, !noalias !10829
  br label %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i

_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i: ; preds = %bb.ts, %bb.tr
  call void @llvm.lifetime.end.p0(ptr nonnull %i.di), !noalias !10817
  %i.dnm = icmp eq ptr %i.dmp, %i.dmm
  br i1 %i.dnm, label %.loopexit.i.i, label %.lr.ph.i.i136.i.i.backedge

.loopexit.i.i:                                    ; preds = %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit19.i.i.i, %.loopexit.i.i139.i.i, %_RINvNtCsj6eKBz9Db1c_4core3ptr9drop_glueINtNtCs4wP2HXfJTCR_5alloc3vec3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdEEB1e_.exit13.i.i.i
  %.val53.i.i = load ptr, ptr %i.dlr, align 8, !noalias !10666, !nonnull !10, !noundef !10
  %.val54.i.i = load i64, ptr %i.dlq, align 8, !noalias !10666, !noundef !10
  call void @llvm.experimental.noalias.scope.decl(metadata !10830)
  %i.dnn = load i64, ptr %i.ed, align 8, !range !11, !alias.scope !10830, !noalias !10663, !noundef !10
  %i.dno = icmp eq i64 %i.csq, %i.dnn
  br i1 %i.dno, label %bb.tt, label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit141.i.i

bb.tt:                                            ; preds = %.loopexit.i.i
  call void @_RNvMs4_NtCs4wP2HXfJTCR_5alloc7raw_vecINtB5_6RawVecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8grow_oneBS_(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.ed) #42, !noalias !10831
  %.pre.i49.i = load ptr, ptr %i.cqb, align 8, !alias.scope !10830, !noalias !10663
  br label %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit141.i.i

_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit141.i.i: ; preds = %bb.tt, %.loopexit.i.i
  %i.dnp = phi ptr [ %i.csp, %.loopexit.i.i ], [ %.pre.i49.i, %bb.tt ] ; 3 uses
  %i.dnq = getelementptr inbounds nuw [16 x i8], ptr %i.dnp, i64 %i.csq ; 2 uses
  store ptr %.val53.i.i, ptr %i.dnq, align 8, !noalias !10832
  %i.dnr = getelementptr inbounds nuw i8, ptr %i.dnq, i64 8
  store i64 %.val54.i.i, ptr %i.dnr, align 8, !noalias !10833
  %i.dns = add i64 %i.csq, 1                      ; 3 uses
  store i64 %i.dns, ptr %i.cqc, align 8, !alias.scope !10830, !noalias !10663
  %i.dnt = getelementptr i8, ptr %i.ctk, i64 592
  %.val67.i.i = load i32, ptr %i.dnt, align 8, !noalias !10666, !noundef !10
  %i.dnu = and i32 %.val67.i.i, 256
  %.not331.i.i = icmp eq i32 %i.dnu, 0
  br i1 %.not331.i.i, label %bb.tu, label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge

bb.tu:                                            ; preds = %_RNvMsG_NtCs4wP2HXfJTCR_5alloc3vecINtB5_3VecNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdE8push_mutBL_.exit141.i.i
  %i.dnv = getelementptr i8, ptr %i.ctk, i64 40
  %.val71.i.i = load i64, ptr %i.dnv, align 8, !range !13, !noalias !10666, !noundef !10
  %i.dnw = getelementptr i8, ptr %i.ctk, i64 48
  %.val72.i.i = load i64, ptr %i.dnw, align 8, !noalias !10666
  %i.dnx = trunc nuw i64 %.val71.i.i to i1
  %i.dny = call i64 @llvm.umax.i64(i64 %.val72.i.i, i64 %.sroa.04.0.i.i)
  %..i142.i.i = select i1 %i.dnx, i64 %i.dny, i64 %.sroa.04.0.i.i
  br label %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser9validatorNtB2_9Validator22is_missing_required_ok.exit.i.i.backedge

_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i: ; preds = %_RNCNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB7_7Command10find_group0Bb_.exit.i.i.i.i
  %i.dnz = getelementptr i8, ptr %i.dlu, i64 80
  %i.doa = getelementptr inbounds nuw i8, ptr %i.dlu, i64 72 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ec), !noalias !10663
  call fastcc void @_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command20unroll_args_in_group(ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %i.ec, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(712) %i.cqd, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.doa) #43, !noalias !10666
  %i.dob = load ptr, ptr %i.csn, align 8, !noalias !10663, !nonnull !10, !noundef !10 ; 4 uses
  %i.doc = load i64, ptr %i.cso, align 8, !noalias !10663, !noundef !10 ; 2 uses
  %.idx508.i.i = shl nuw nsw i64 %i.doc, 4
  %i.dod = getelementptr inbounds nuw i8, ptr %i.dob, i64 %.idx508.i.i
  %.not.not.not.i.not481.i.i = icmp eq i64 %i.doc, 0
  %brmerge507.i.i = or i1 %.not24.i.i.i, %.not.not.not.i.not481.i.i
  br i1 %brmerge507.i.i, label %_RINvXs2J_NtNtCsj6eKBz9Db1c_4core5slice4iterINtB7_4IterNtNtNtCsfu0rQaTkGUu_12clap_builder4util2id2IdENtNtNtNtBb_4iter6traits8iterator8Iterator3anyNCNvMNtNtBW_6parser9validatorNtB2o_9Validator17validate_requireds1_0EBW_.exit.thread.i.i, label %.lr.ph.i.i.i241.preheader.i.i

.lr.ph.i.i.i241.preheader.i.i:                    ; preds = %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit251.i.i
  %i.doe = phi ptr [ %i.dof, %_RNvMNtNtCsfu0rQaTkGUu_12clap_builder6parser11arg_matcherNtB2_10ArgMatcher14check_explicit.exit251.i.i ], [ %i.dob, %_RNvMs5_NtNtCsfu0rQaTkGUu_12clap_builder7builder7commandNtB5_7Command10find_group.exit.i.i ] ; 3 uses
  %i.dof = getelementptr inbounds nuw i8, ptr %i.doe, i64 16 ; 2 uses
  %.val2.i.i.i = load ptr, ptr %i.doe, align 8, !noalias !10834 ; 2 uses
  %i.dog = getelementptr i8, ptr %i.doe, i64 8
  %.val3.i.i.i = load i64, ptr %i.dog, align 8, !noalias !10834 ; 2 uses
  br label %.lr.ph.i.i.i241.i.i

.lr.ph.i.i.i241.i.i:                              ; preds = %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i245.i.i, %.lr.ph.i.i.i241.preheader.i.i
  %.sroa.0.019.i.i.i242.i.i = phi ptr [ %i.doh, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i245.i.i ], [ %i.ccn, %.lr.ph.i.i.i241.preheader.i.i ] ; 3 uses
  %.sroa.8.08.i.i.i243.i.i = phi i64 [ %i.doi, %_RNvXsm_NtNtCsfu0rQaTkGUu_12clap_builder4util2idNtB5_2IdNtNtCsj6eKBz9Db1c_4core3cmp9PartialEq2eq.exit.backedge.i.i.i245.i.i ], [ 0, %.lr.ph.i.i.i241.preheader.i.i ] ; 4 uses
  %i.doh = getelementptr inbounds nuw i8, ptr %.sroa.0.019.i.i.i242.i.i, i64 16 ; 2 uses
  %i.doi = add nuw nsw i64 %.sroa.8.08.i.i.i243.i.i, 1
  %i.doj = getelementptr i8, ptr %.sroa.0.019.i.i.i242.i.i, i64 8
end_hunk_1
