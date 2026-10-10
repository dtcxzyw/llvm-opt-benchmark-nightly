Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.10?download=true
inline.NumInlined: 1070
inline.NumDeleted: 542
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 12
loop-unroll.NumUnrolled: 13
begin_hunk_0_@_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14word_to_tokens:bb.a
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 16
  br label %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit

_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit: ; preds = %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i, %select.unfold.i
  %.pn.i = phi i64 [ 0, %select.unfold.i ], [ %.val.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ] ; 5 uses
  %.val10.pn.i.in = phi ptr [ %i.ai, %select.unfold.i ], [ %i.ah, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ]
  %.val10.pn.i = load i64, ptr %.val10.pn.i.in, align 8, !noundef !5 ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.ak = load i64, ptr %i.aj, align 8, !noundef !5
  %i.al = icmp ult i64 %.val10.pn.i, %.pn.i
  %.not = icmp ugt i64 %.val10.pn.i, %i.ak
  %or.cond = or i1 %i.al, %.not
  br i1 %or.cond, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread, label %bb.f

bb.f:                                             ; preds = %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.an = load ptr, ptr %i.am, align 8, !nonnull !5, !noundef !5 ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.val10.pn.i
  %.not.i.i.i.i = icmp samesign eq i64 %.pn.i, %.val10.pn.i
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread, label %.lr.ph.i.i.i.i.preheader

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.f
  %i.ap = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.pn.i
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i.preheader, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i
  %.sroa.722.0 = phi i64 [ %.sroa.722.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.020.0 = phi i64 [ %.sroa.020.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.7.0 = phi i64 [ %.sroa.7.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ undef, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %.sroa.0.0 = phi i64 [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %i.aq = phi i64 [ %i.ay, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.preheader ] ; 5 uses
  %i.ar = phi ptr [ %i.as, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %i.ap, %.lr.ph.i.i.i.i.preheader ] ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 8 ; 2 uses
  %.val.i.i.i.i = load i32, ptr %i.ar, align 4, !range !20, !alias.scope !906, !noalias !907, !noundef !5
  %i.at = getelementptr i8, ptr %i.ar, i64 4
  %.val6.i.i.i.i = load i32, ptr %i.at, align 4, !noalias !908 ; 2 uses
  %i.au = trunc nuw i32 %.val.i.i.i.i to i1
  br i1 %i.au, label %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i

_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %.not.i.i.i.i.i.i = icmp ugt i32 %.val6.i.i.i.i, %2
  br i1 %.not.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit, label %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i

_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i: ; preds = %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i
  %i.av = icmp eq i32 %.val6.i.i.i.i, %2
  br i1 %i.av, label %bb.g, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i

bb.g:                                             ; preds = %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.020.0, 0
  %i.aw = icmp ult i64 %i.aq, %.sroa.722.0
  %or.cond31 = select i1 %.not.i.i.i.i.i.i.i.i.i.i, i1 true, i1 %i.aw ; 2 uses
  %.sroa.722.2 = select i1 %or.cond31, i64 %i.aq, i64 %.sroa.722.0
  %.sroa.020.2 = select i1 %or.cond31, i64 1, i64 %.sroa.020.0
  %.not2.i.i.i.i.i.i.i.i.i.i = icmp ne i64 %.sroa.0.0, 0
  %.not1.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.aq, %.sroa.7.0
  %or.cond32 = select i1 %.not2.i.i.i.i.i.i.i.i.i.i, i1 %.not1.i.i.i.i.i.i.i.i.i.i, i1 false ; 2 uses
  %i.ax = add nuw nsw i64 %i.aq, 1
  %spec.select = select i1 %or.cond32, i64 %.sroa.7.0, i64 %i.ax
  %spec.select33 = select i1 %or.cond32, i64 %.sroa.0.0, i64 1
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i: ; preds = %bb.g, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.sroa.722.1 = phi i64 [ %.sroa.722.0, %.lr.ph.i.i.i.i ], [ %.sroa.722.2, %bb.g ], [ %.sroa.722.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.020.1 = phi i64 [ %.sroa.020.0, %.lr.ph.i.i.i.i ], [ %.sroa.020.2, %bb.g ], [ %.sroa.020.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.7.1 = phi i64 [ %.sroa.7.0, %.lr.ph.i.i.i.i ], [ %spec.select, %bb.g ], [ %.sroa.7.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %.lr.ph.i.i.i.i ], [ %spec.select33, %bb.g ], [ %.sroa.0.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokenss_0B8_.exit.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.ay = add nuw nsw i64 %i.aq, 1
  %.not17.i.i.i.i = icmp eq ptr %i.as, %i.ao
  br i1 %.not17.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit, label %.lr.ph.i.i.i.i

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit: ; preds = %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i
  %.sroa.722.3 = phi i64 [ %.sroa.722.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.722.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %.sroa.020.3 = phi i64 [ %.sroa.020.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.020.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %.sroa.7.2 = phi i64 [ %.sroa.7.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.7.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %.sroa.0.2 = phi i64 [ %.sroa.0.1, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRINtNtBf_6option6OptionmEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2A_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB40_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB3a_NCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB5b_8Encoding14word_to_tokens0NCINvMB3d_B3a_10wrap_mut_2uB4U_NCINvNtBb_6filter11filter_foldB4U_uNCB58_s_0NCINvNvB1e_8for_each4callB4U_NCB58_s0_0E0E0E0E0E0B5f_.exit.i.i.i.i ], [ %.sroa.0.0, %_RNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB4_8Encoding14word_to_tokens0B8_.exit.i.i.i.i.i.i ]
  %i.az = trunc nuw i64 %.sroa.020.3 to i1
  %i.ba = trunc nuw i64 %.sroa.0.2 to i1
  %or.cond12 = select i1 %i.az, i1 %i.ba, i1 false
  br i1 %or.cond12, label %bb.h, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread

bb.h:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit
  %i.bb = add i64 %.sroa.722.3, %.pn.i
  %i.bc = add i64 %.sroa.7.2, %.pn.i
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.bb, ptr %i.bd, align 8
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.bc, ptr %i.be, align 8
  br label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit.thread: ; preds = %bb.h, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit, %bb.f, %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit
  %storemerge34 = phi i64 [ 0, %_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding14sequence_range.exit ], [ 1, %bb.h ], [ 0, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionmEEENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2y_8Encoding14word_to_tokens0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_6filter11filter_foldTjRB23_EuNCB2v_s_0NCINvNvB3S_8for_each4callB50_NCB2v_s0_0E0E0EB2C_.exit ], [ 0, %bb.f ]
  store i64 %storemerge34, ptr %0, align 8
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding15set_overflowing(ptr noalias noundef align 8 dereferenceable(256) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 5 uses
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBK_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %.body unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropBR_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit unwind label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.b, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.d, %bb.e ], [ %i.b, %bb.b ]
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  resume { ptr, i32 } %eh.lpad-body

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEEB1d_.exit: ; preds = %bb.c
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding15set_sequence_id(ptr noalias noundef align 8 dereferenceable(256) %0, i64 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952
  tail call void @llvm.assume(i1 %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @_RNvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB5_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE6insertCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(64) %i.e, i64 noundef %1, i64 noundef 0, i64 noundef %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding16get_sequence_ids(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [64 x i8], align 8                ; 11 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load i64, ptr %i.e, align 8, !noundef !5 ; 7 uses
  %i.g = icmp ult i64 %i.f, 2305843009213693952
  tail call void @llvm.assume(i1 %i.g)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !928)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !928
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef range(i64 0, 2305843009213693952) %i.f, i1 noundef zeroext true, i64 noundef 8, i64 noundef 16), !noalias !928
  %i.h = load i64, ptr %i.b, align 8, !range !9, !noalias !928, !noundef !5
  %i.i = trunc nuw i64 %i.h to i1
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.k = load i64, ptr %i.j, align 8, !range !21, !noalias !928, !noundef !5 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.i, label %bb.b, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, !prof !11

bb.b:                                             ; preds = %bb.a
  %i.m = load i64, ptr %i.l, align 8, !noalias !928
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.k, i64 %i.m) #25, !noalias !928
  unreachable

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a
  %i.n = load ptr, ptr %i.l, align 8, !noalias !928, !nonnull !5, !noundef !5
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !928
  store i64 %i.k, ptr %i.d, align 8, !alias.scope !928
  %i.o = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.n, ptr %i.o, align 8, !alias.scope !928
  %i.p = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.f, ptr %i.p, align 8, !alias.scope !928
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 216
  %i.r = load i64, ptr %i.q, align 8, !noundef !5 ; 2 uses
  %i.s = icmp eq i64 %i.r, 0
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 224
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 192
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 200
  %i.w = load i64, ptr %i.v, align 8              ; 2 uses
  %i.x = load ptr, ptr %i.u, align 8, !nonnull !5 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 24 ; 5 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.s, label %bb.c, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split

bb.c:                                             ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionjEE5drainINtNtNtBJ_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 0, i64 noundef %i.f)
          to label %bb.d unwind label %.loopexit.split-lp.split.us.a

bb.d:                                             ; preds = %bb.c
  %.not.not.us.not = icmp eq i64 %i.f, 0
  %.sroa.010.0.us = select i1 %.not.not.us.not, i64 2, i64 1
  store i64 %.sroa.010.0.us, ptr %i.c, align 8, !alias.scope !929, !noalias !930
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !929, !noalias !930
  store i64 %i.f, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !929, !noalias !930
  invoke void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources8repeat_n7RepeatNINtNtBZ_6option6OptionjEEENtNtNtBZ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.e unwind label %.split.us.a

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtBT_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %.split31.us.loopexit unwind label %.loopexit.split-lp.split.us.a

.loopexit.split-lp.split.us.a:                    ; preds = %bb.e, %bb.c
  %lpad.loopexit.split-lp.us = landingpad { ptr, i32 }
          cleanup
  br label %.body

.split.us.a:                                      ; preds = %bb.d
  %i.z = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.split31.us.loopexit:                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %.split31.us

.split31.us:                                      ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit, %.split31.us.loopexit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split: ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit
  %.sroa.03.027 = phi i64 [ %i.aa, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit ], [ 0, %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit ] ; 3 uses
  %i.aa = add nuw i64 %.sroa.03.027, 1            ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.03.027, ptr %i.a, align 8, !noalias !931
  %i.ab = invoke noundef i64 @_RINvYNtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateNtNtCs4NRVxsYgnAr_4core4hash11BuildHasher8hash_oneRjECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a)
          to label %.noexc unwind label %.loopexit.split-lp.split ; 2 uses

.noexc:                                           ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split
  %i.ac = lshr i64 %i.ab, 57
  %i.ad = trunc nuw nsw i64 %i.ac to i8
  %i.ae = insertelement <16 x i8> poison, i8 %i.ad, i64 0
  %i.af = shufflevector <16 x i8> %i.ae, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.f

bb.f:                                             ; preds = %bb.h, %.noexc
  %.sroa.9.0.i.i.i.i = phi i64 [ 0, %.noexc ], [ %i.aw, %bb.h ]
  %.pn.i.i.i.i = phi i64 [ %i.ab, %.noexc ], [ %i.ax, %bb.h ]
  %.sroa.01.0.i.i.i.i = and i64 %.pn.i.i.i.i, %i.w ; 3 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.x, i64 %.sroa.01.0.i.i.i.i
  %.sroa.0.0.copyload.i26.i.i.i = load <16 x i8>, ptr %i.ag, align 1, !noalias !932 ; 2 uses
  %i.ah = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, %i.af
  %i.ai = bitcast <16 x i1> %i.ah to i16          ; 2 uses
  %.not.i.not32.i.i.i = icmp eq i16 %i.ai, 0
  br i1 %.not.i.not32.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %bb.f, %bb.g
  %.sroa.06.0.i33.i.i.i = phi i16 [ %i.av, %bb.g ], [ %i.ai, %bb.f ] ; 3 uses
  %i.aj = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i.i, i1 true)
  %i.ak = zext nneg i16 %i.aj to i64
  %i.al = add i64 %.sroa.01.0.i.i.i.i, %i.ak
  %i.am = and i64 %i.al, %i.w
  %i.an = sub nsw i64 0, %i.am
  %i.ao = getelementptr inbounds [24 x i8], ptr %i.x, i64 %i.an ; 3 uses
  %i.ap = getelementptr inbounds i8, ptr %i.ao, i64 -24
  %i.aq = invoke noundef zeroext i1 @_RNvXCsgQfI1edjipl_9hashbrownjINtB2_10EquivalentjE10equivalentCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap)
          to label %.noexc21 unwind label %.loopexit

.noexc21:                                         ; preds = %.lr.ph.i.i.i
  br i1 %i.aq, label %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i, label %bb.g, !prof !30

._crit_edge.i.i.i:                                ; preds = %bb.g, %bb.f
  %i.ar = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i.i, splat (i8 -1)
  %i.as = bitcast <16 x i1> %i.ar to i16
  %i.at = icmp eq i16 %i.as, 0
  br i1 %i.at, label %bb.h, label %.loopexit24, !prof !11

bb.g:                                             ; preds = %.noexc21
  %i.au = add i16 %.sroa.06.0.i33.i.i.i, -1
  %i.av = and i16 %i.au, %.sroa.06.0.i33.i.i.i    ; 2 uses
  %.not.i.not.i.i.i = icmp eq i16 %i.av, 0
  br i1 %.not.i.not.i.i.i, label %._crit_edge.i.i.i, label %.lr.ph.i.i.i

bb.h:                                             ; preds = %._crit_edge.i.i.i
  %i.aw = add i64 %.sroa.9.0.i.i.i.i, 16          ; 2 uses
  %i.ax = add i64 %.sroa.01.0.i.i.i.i, %i.aw
  br label %bb.f

_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %.noexc21
  %i.ay = getelementptr inbounds i8, ptr %i.ao, i64 -16
  %.val.i = load i64, ptr %i.ay, align 8, !alias.scope !933, !noundef !5
  %i.az = getelementptr i8, ptr %i.ao, i64 -8
  %.val10.i = load i64, ptr %i.az, align 8, !alias.scope !934, !noundef !5
  br label %.loopexit24

.loopexit:                                        ; preds = %.lr.ph.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit.split-lp.split:                         ; preds = %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split, %.loopexit24, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %.loopexit, %.loopexit.split-lp.split.us.a, %.loopexit.split-lp.split, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %.us-phi29, %bb.j ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp.split ], [ %lpad.loopexit.split-lp.us, %.loopexit.split-lp.split.us.a ]
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecINtNtB4_6option6OptionjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef align 8 dereferenceable(24) %i.d) #28
          to label %bb.n unwind label %bb.m

.loopexit24:                                      ; preds = %._crit_edge.i.i.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i
  %.pn.i = phi i64 [ %.val.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ 0, %._crit_edge.i.i.i ] ; 3 uses
  %.val10.pn.i = phi i64 [ %.val10.i, %_RINvMs1_NtCsgQfI1edjipl_9hashbrown3mapINtB6_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE3getjECs2JiOgHzbbc7_10tokenizers.exit.i ], [ %i.f, %._crit_edge.i.i.i ] ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionjEE5drainINtNtNtBJ_3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.y, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef %.pn.i, i64 noundef %.val10.pn.i)
          to label %bb.i unwind label %.loopexit.split-lp.split

bb.i:                                             ; preds = %.loopexit24
  %.not.not = icmp ugt i64 %.val10.pn.i, %.pn.i
  %.sroa.010.0 = select i1 %.not.not, i64 1, i64 2
  %.sroa.05.0 = call i64 @llvm.usub.sat.i64(i64 %.val10.pn.i, i64 %.pn.i)
  store i64 %.sroa.010.0, ptr %i.c, align 8, !alias.scope !929, !noalias !930
  store i64 %.sroa.03.027, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !929, !noalias !930
  store i64 %.sroa.05.0, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !929, !noalias !930
  invoke void @_RNvXs1_NtNtCscdodAO9FK5_5alloc3vec6spliceINtB5_6SpliceINtNtNtNtCs4NRVxsYgnAr_4core4iter7sources8repeat_n7RepeatNINtNtBZ_6option6OptionjEEENtNtNtBZ_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.c)
          to label %bb.k unwind label %.split

.split:                                           ; preds = %bb.i
  %i.ba = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.split.us.a, %.split
  %.us-phi29 = phi { ptr, i32 } [ %i.ba, %.split ], [ %i.z, %.split.us.a ]
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtBT_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %.body unwind label %bb.l

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXs5_NtNtCscdodAO9FK5_5alloc3vec5drainINtB5_5DrainINtNtCs4NRVxsYgnAr_4core6option6OptionjEENtNtNtBT_3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.y)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit unwind label %.loopexit.split-lp.split

bb.l:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec6splice6SpliceINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionjEEEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %exitcond.not = icmp eq i64 %i.aa, %i.r
  br i1 %exitcond.not, label %.split31.us, label %_RINvXs_NtNtCscdodAO9FK5_5alloc3vec14spec_from_elemINtNtCs4NRVxsYgnAr_4core6option6OptionjENtB5_12SpecFromElem9from_elemNtNtB9_5alloc6GlobalECs2JiOgHzbbc7_10tokenizers.exit.split

bb.m:                                             ; preds = %.body
  %i.bc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #26
  unreachable

bb.n:                                             ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define { i64, i64 } @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding17token_to_sequence(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(256) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !5 ; 2 uses
  %i.d = icmp ult i64 %i.c, 2305843009213693952
  tail call void @llvm.assume(i1 %i.d)
  %i.e = icmp ugt i64 %1, %i.c
  br i1 %i.e, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.g = load i64, ptr %i.f, align 8, !noundef !5
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 192
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvMs1_NtNtNtCs2AWtUsOyxgP_3std11collections4hash3mapINtB5_7HashMapjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejENtNtCsiTTz6JxaXqu_5ahash12random_state11RandomStateE4iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(64) %i.i)
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.j = call { ptr, ptr } @_RNvXsG_NtCsgQfI1edjipl_9hashbrown3mapINtB5_4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtBS_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a), !noalias !942 ; 2 uses
  %i.k = extractvalue { ptr, ptr } %i.j, 0        ; 2 uses
  %.not.i.not.not.not.not.not.not = icmp ne ptr %i.k, null ; 2 uses
  br i1 %.not.i.not.not.not.not.not.not, label %bb.e, label %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit

bb.e:                                             ; preds = %bb.d
  %i.l = extractvalue { ptr, ptr } %i.j, 1        ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %.val9.i = load i64, ptr %i.l, align 8, !alias.scope !943, !noalias !944, !noundef !5
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val10.i = load i64, ptr %i.m, align 8, !alias.scope !945, !noalias !942
  %.not.i.i.i.i = icmp ule i64 %.val9.i, %1
  %i.n = icmp ult i64 %1, %.val10.i
  %.sroa.0.0.i.i.i.i = select i1 %.not.i.i.i.i, i1 %i.n, i1 false
  br i1 %.sroa.0.0.i.i.i.i, label %bb.f, label %bb.d

bb.f:                                             ; preds = %bb.e
  %.val8.i = load i64, ptr %i.k, align 8, !noalias !942
  br label %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit

_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit: ; preds = %bb.d, %bb.f
  %.sroa.5.0 = phi i64 [ %.val8.i, %bb.f ], [ undef, %bb.d ]
  %.sroa.0.0 = zext i1 %.not.i.not.not.not.not.not.not to i64
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.b, %bb.a, %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit
  %.sroa.5.1 = phi i64 [ %.sroa.5.0, %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit ], [ undef, %bb.a ], [ 0, %bb.b ]
  %.sroa.0.1 = phi i64 [ %.sroa.0.0, %_RINvYINtNtNtNtCs2AWtUsOyxgP_3std11collections4hash3map4IterjINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEENtNtNtNtB13_4iter6traits8iterator8Iterator8try_folduNCINvNvB1F_8find_map5checkTRjRBW_EjNCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB39_8Encoding17token_to_sequence0E0INtNtB11_12control_flow11ControlFlowjEEB3d_.exit ], [ 0, %bb.a ], [ 1, %bb.b ]
  %i.o = insertvalue { i64, i64 } poison, i64 %.sroa.0.1, 0
  %i.p = insertvalue { i64, i64 } %i.o, i64 %.sroa.5.1, 1
  ret { i64, i64 } %i.p
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2_8Encoding3pad(ptr noalias noundef align 8 dereferenceable(256) %0, i64 noundef %1, i32 noundef %2, i32 noundef %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %4, i64 noundef %5, i1 noundef zeroext %6) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [64 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 5 uses
  %i.g = alloca [64 x i8], align 8                ; 7 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %i.i = alloca [64 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [64 x i8], align 8                ; 7 uses
  %i.l = alloca [24 x i8], align 8                ; 5 uses
  %i.m = alloca [64 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [64 x i8], align 8                ; 7 uses
  %i.p = alloca [24 x i8], align 8                ; 5 uses
  %i.q = alloca [64 x i8], align 8                ; 7 uses
  %i.r = alloca [24 x i8], align 8                ; 5 uses
  %i.s = alloca [8 x i8], align 8                 ; 4 uses
  %i.t = alloca [40 x i8], align 8                ; 8 uses
  %i.u = alloca [24 x i8], align 8                ; 4 uses
  %i.v = alloca [1 x i8], align 1                 ; 3 uses
  %i.w = alloca [16 x i8], align 8                ; 5 uses
  %i.x = alloca [4 x i8], align 4                 ; 4 uses
  %i.y = alloca [4 x i8], align 4                 ; 4 uses
  %i.z = alloca [8 x i8], align 8                 ; 3 uses
  store i64 %1, ptr %i.z, align 8
  store i32 %2, ptr %i.y, align 4
  store i32 %3, ptr %i.x, align 4
  store ptr %4, ptr %i.w, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.w, i64 8
  store i64 %5, ptr %i.aa, align 8
  %i.ab = zext i1 %6 to i8
  store i8 %i.ab, ptr %i.v, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u)
  %i.ac = getelementptr inbounds nuw i8, ptr %0, i64 168
  call void @_RNvXs0_NtNtCs2JiOgHzbbc7_10tokenizers5utils11parallelismINtNtCscdodAO9FK5_5alloc3vec3VecNtNtNtB9_9tokenizer8encoding8EncodingEINtB5_27MaybeParallelRefMutIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutB1o_EINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB1o_EE18maybe_par_iter_mutB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ac)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t)
  store ptr %i.z, ptr %i.t, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  store ptr %i.y, ptr %i.ad, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  store ptr %i.x, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.t, i64 24
  store ptr %i.w, ptr %i.af, align 8
  %i.ag = getelementptr inbounds nuw i8, ptr %i.t, i64 32
  store ptr %i.v, ptr %i.ag, align 8
  call void @_RINvMs0_CskqoA5J4kFRc_10rayon_condINtB6_12CondIteratorINtNtCsgbNVBrIJ05E_5rayon5slice7IterMutNtNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encoding8EncodingEINtNtNtCs4NRVxsYgnAr_4core5slice4iter7IterMutB1t_EE8for_eachNCNvMB1v_B1t_3pad0EB1z_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.t)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.u)
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ai = load i64, ptr %i.ah, align 8, !noundef !5 ; 3 uses
  %i.aj = icmp ult i64 %i.ai, 2305843009213693952
  call void @llvm.assume(i1 %i.aj)
  %i.ak = load i64, ptr %i.z, align 8, !noundef !5 ; 2 uses
  %.not = icmp ult i64 %i.ai, %i.ak
  br i1 %.not, label %bb.b, label %bb.ai

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s)
  %i.al = sub nuw i64 %i.ak, %i.ai                ; 15 uses
  store i64 %i.al, ptr %i.s, align 8
  %i.am = load i8, ptr %i.v, align 1, !range !4, !noundef !5
  %i.an = trunc nuw i8 %i.am to i1
  br i1 %i.an, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store i64 0, ptr %i.ao, align 8
  %i.ap = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store i64 %i.al, ptr %i.ap, align 8
  store ptr %i.y, ptr %i.d, align 8
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3pads7_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.ar = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 0, ptr %i.ar, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.al, ptr %i.as, align 8
  store ptr %i.x, ptr %i.c, align 8
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3pads8_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aq, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.au = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store i64 0, ptr %i.au, align 8
  %i.av = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 %i.al, ptr %i.av, align 8
  store ptr %i.w, ptr %i.b, align 8
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecNtNtB8_6string6StringE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1q_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2D_8Encoding3pads9_0EEB2H_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.at, ptr noalias noundef nonnull readonly align 8 captures(address) dereferenceable(24) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 72
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecINtNtCs4NRVxsYgnAr_4core6option6OptionmEE14extend_trustedINtNtNtNtBK_4iter8adapters3map3MapINtNtNtBK_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2F_8Encoding3padsa_0EEB2J_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aw, i64 noundef 0, i64 noundef %i.al)
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 144
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3padsb_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i64 noundef 0, i64 noundef %i.al)
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecmE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB16_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2j_8Encoding3padsc_0EEB2n_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ay, i64 noundef 0, i64 noundef %i.al)
  %i.az = getelementptr inbounds nuw i8, ptr %0, i64 96
  call void @_RINvMsj_NtCscdodAO9FK5_5alloc3vecINtB6_3VecTjjEE14extend_trustedINtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB19_3ops5range5RangejENCNvMNtNtCs2JiOgHzbbc7_10tokenizers9tokenizer8encodingNtB2m_8Encoding3padsd_0EEB2q_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.az, i64 noundef 0, i64 noundef %i.al)
  br label %bb.ag

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  %i.ba = getelementptr inbounds nuw i8, ptr %i.q, i64 24
  call void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecmE5drainNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.ba, ptr noalias noundef nonnull align 8 dereferenceable(24) %0)
  store ptr %i.y, ptr %i.q, align 8, !alias.scope !970, !noalias !971
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store i64 0, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !970, !noalias !971
end_hunk_0
