Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tokenizers-rs/original/tokenizers-73a819a89809b4f0.tokenizers.1fce5ff7a8803495-cgu.07?download=true
inline.NumInlined: 820
inline.NumDeleted: 415
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString5sliceINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_:bb.a
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.be = load i64, ptr %i.bd, align 8, !alias.scope !312, !noalias !313, !noundef !7 ; 2 uses
  %.idx.i66 = shl i64 %i.be, 4                    ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bc, i64 %.idx.i66
  %.not.i.i.i.i.i67 = icmp eq i64 %i.be, 0
  br i1 %.not.i.i.i.i.i67, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15convert_offsetsINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit94, label %.lr.ph.i.i.i.i.preheader.i68

.lr.ph.i.i.i.i.preheader.i68:                     ; preds = %bb.r
  %i.bg = getelementptr i8, ptr %i.bc, i64 8
  %.val6.i.i.i.i52.i69 = load i64, ptr %i.bg, align 8, !alias.scope !314, !noalias !315, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i.i53.not.i70 = icmp ult i64 %.sroa.5.0.i20.i, %.val6.i.i.i.i52.i69
  br i1 %.not.i.i.i.i.i.i53.not.i70, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15convert_offsetsINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit94, label %.lr.ph.preheader.i71

.lr.ph.preheader.i71:                             ; preds = %.lr.ph.i.i.i.i.preheader.i68
  %i.bh = add i64 %.idx.i66, -16
  %i.bi = lshr exact i64 %i.bh, 4
  %i.bj = add nuw nsw i64 %i.bi, 1
  br label %.lr.ph.i72

.lr.ph.i.i.i.i.i82:                               ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i78
  %.pre.i.i.i.i83 = add nuw nsw i64 %i.bl, 1      ; 2 uses
  %i.bk = getelementptr i8, ptr %.val.i.i.i.i56.in.i74, i64 24
  %.val6.i.i.i.i.i84 = load i64, ptr %i.bk, align 8, !alias.scope !314, !noalias !315, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i.i.i85 = icmp ult i64 %.sroa.5.0.i20.i, %.val6.i.i.i.i.i84
  br i1 %.not.i.i.i.i.i.i.i85, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i86, label %.lr.ph.i72

.lr.ph.i72:                                       ; preds = %.lr.ph.i.i.i.i.i82, %.lr.ph.preheader.i71
  %.val6.i.i.i.i57.i73 = phi i64 [ %.val6.i.i.i.i.i84, %.lr.ph.i.i.i.i.i82 ], [ %.val6.i.i.i.i52.i69, %.lr.ph.preheader.i71 ]
  %.val.i.i.i.i56.in.i74 = phi ptr [ %i.bm, %.lr.ph.i.i.i.i.i82 ], [ %i.bc, %.lr.ph.preheader.i71 ] ; 3 uses
  %i.bl = phi i64 [ %.pre.i.i.i.i83, %.lr.ph.i.i.i.i.i82 ], [ 0, %.lr.ph.preheader.i71 ] ; 2 uses
  %.sroa.034.055.i75 = phi i64 [ %.sroa.034.1.i80, %.lr.ph.i.i.i.i.i82 ], [ 0, %.lr.ph.preheader.i71 ]
  %.sroa.6.054.i76 = phi i64 [ %.sroa.6.1.i79, %.lr.ph.i.i.i.i.i82 ], [ undef, %.lr.ph.preheader.i71 ] ; 2 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i56.in.i74, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i77 = icmp eq i64 %.sroa.034.055.i75, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i77, label %bb.s, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i78

bb.s:                                             ; preds = %.lr.ph.i72
  %.val.i.i.i.i56.i89 = load i64, ptr %.val.i.i.i.i56.in.i74, align 8, !noalias !316 ; 2 uses
  %i.bn = icmp ule i64 %.sroa.0.0.i18.i, %.val.i.i.i.i56.i89
  %i.bo = icmp ne i64 %.val.i.i.i.i56.i89, %.val6.i.i.i.i57.i73
  %or.cond.i.i.i.i.i.i.i.i.i.i90 = and i1 %i.bn, %i.bo ; 2 uses
  %spec.select.i91 = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i90, i64 %i.bl, i64 %.sroa.6.054.i76
  %spec.select48.i92 = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i90 to i64
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i78

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i78: ; preds = %bb.s, %.lr.ph.i72
  %.sroa.6.1.i79 = phi i64 [ %.sroa.6.054.i76, %.lr.ph.i72 ], [ %spec.select.i91, %bb.s ] ; 2 uses
  %.sroa.034.1.i80 = phi i64 [ 1, %.lr.ph.i72 ], [ %spec.select48.i92, %bb.s ] ; 2 uses
  %.not16.i.i.i.i.i81 = icmp eq ptr %i.bm, %i.bf
  br i1 %.not16.i.i.i.i.i81, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i86, label %.lr.ph.i.i.i.i.i82

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i86: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i78, %.lr.ph.i.i.i.i.i82
  %.pre.i.i.i.lcssa.i87 = phi i64 [ %.pre.i.i.i.i83, %.lr.ph.i.i.i.i.i82 ], [ %i.bj, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i78 ] ; 2 uses
  %i.bp = trunc nuw i64 %.sroa.034.1.i80 to i1
  %spec.select = select i1 %i.bp, i64 %.sroa.6.1.i79, i64 %.pre.i.i.i.lcssa.i87
  br label %bb.w

_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15convert_offsetsINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit94: ; preds = %.lr.ph.i.i.i.i.preheader.i68, %bb.r, %bb.q
  store i64 -1, ptr %0, align 8
  br label %bb.t

_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15convert_offsetsINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.p
  store i64 -1, ptr %0, align 8
  br label %bb.t

bb.t:                                             ; preds = %bb.n, %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15convert_offsetsINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15convert_offsetsINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit94, %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit124, %bb.bs
  ret void

bb.u:                                             ; preds = %bb.p
  %i.bq = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.br = load ptr, ptr %i.bq, align 8, !alias.scope !308, !noalias !309, !nonnull !7, !noundef !7
  %i.bs = getelementptr inbounds nuw [16 x i8], ptr %i.br, i64 %.sroa.0.0.i.i
  %i.bt = load i64, ptr %i.bs, align 8, !noalias !317, !noundef !7 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %i.bt, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !310, !noalias !311, !nonnull !7, !noundef !7
  tail call void @llvm.experimental.noalias.scope.decl(metadata !318)
  %i.bw = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.bx = load i64, ptr %i.bw, align 8, !alias.scope !319, !noalias !320
  %.not.i.i = icmp ugt i64 %.sroa.5.0.i.i, %i.bx
  br i1 %.not.i.i, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.by = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.bz = load ptr, ptr %i.by, align 8, !alias.scope !321, !noalias !322, !nonnull !7, !noundef !7
  %i.ca = getelementptr inbounds nuw [16 x i8], ptr %i.bz, i64 %.sroa.0.0.i.i ; 2 uses
  %i.cb = xor i64 %.sroa.0.0.i.i, -1
  %i.cc = load i64, ptr %i.ca, align 8, !noalias !323, !noundef !7 ; 2 uses
  %i.cd = getelementptr [16 x i8], ptr %i.ca, i64 %.sroa.5.0.i.i
  %i.ce = getelementptr [16 x i8], ptr %i.cd, i64 %i.cb
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.cg = load i64, ptr %i.cf, align 8, !noalias !323, !noundef !7 ; 2 uses
  %.not.i9.i = icmp ugt i64 %i.cc, %i.cg
  br i1 %.not.i9.i, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, label %.thread.i

bb.w:                                             ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i86, %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString14validate_rangeINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit
  %.sroa.10.0.ph = phi i64 [ %.pre.i.i.i.lcssa.i87, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i86 ], [ %.sroa.0.0.i18.i, %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString14validate_rangeINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit ] ; 6 uses
  %.sroa.5139.0.ph = phi i64 [ %spec.select, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i86 ], [ %.sroa.0.0.i18.i, %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString14validate_rangeINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit ] ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store i64 %.sroa.0.0.i18.i, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !319)
  %.not.i7.i = icmp ugt i64 %.sroa.0.0.i18.i, %.sroa.5.0.i20.i
  br i1 %.not.i7.i, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  br i1 %i.u, label %bb.z, label %bb.y

bb.y:                                             ; preds = %bb.x
  %.not5.i.i = icmp ult i64 %.sroa.0.0.i18.i, %i.q
  br i1 %.not5.i.i, label %bb.aa, label %.split.i.i

bb.z:                                             ; preds = %bb.aa, %.split.i.i, %bb.x
  br i1 %i.v, label %bb.ad, label %bb.ab

.split.i.i:                                       ; preds = %bb.y
  %i.ch = icmp eq i64 %.sroa.0.0.i18.i, %i.q
  br i1 %i.ch, label %bb.z, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.aa:                                            ; preds = %bb.y
  %i.ci = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i18.i
  %i.cj = load i8, ptr %i.ci, align 1, !alias.scope !324, !noalias !325, !noundef !7
  %i.ck = icmp sgt i8 %i.cj, -65
  br i1 %i.ck, label %bb.z, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.ab:                                            ; preds = %bb.z
  %.not6.i.i = icmp ult i64 %.sroa.5.0.i20.i, %i.q
  br i1 %.not6.i.i, label %bb.ac, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.ab
  %i.cl = icmp eq i64 %.sroa.5.0.i20.i, %i.q
  br i1 %i.cl, label %bb.ad, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.ac:                                            ; preds = %bb.ab
  %i.cm = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.5.0.i20.i
  %i.cn = load i8, ptr %i.cm, align 1, !alias.scope !324, !noalias !325, !noundef !7
  %i.co = icmp sgt i8 %i.cn, -65
  br i1 %i.co, label %bb.ad, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.ad:                                            ; preds = %bb.ac, %.split7.i.i, %bb.z
  %i.cp = sub nuw nsw i64 %.sroa.5.0.i20.i, %.sroa.0.0.i18.i
  %i.cq = getelementptr inbounds nuw i8, ptr %i.t, i64 %.sroa.0.0.i18.i
  br label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

.thread.i:                                        ; preds = %.thread, %bb.v
  %i.cr = phi ptr [ %i.bv, %bb.v ], [ %i.as, %.thread ] ; 3 uses
  %.sroa.5144.0.ph214 = phi i64 [ %i.bt, %bb.v ], [ %.sroa.0.0.i.i, %.thread ] ; 5 uses
  %.sroa.5.0.ph26.i = phi i64 [ %i.cc, %bb.v ], [ %.sroa.0.0.i.i, %.thread ] ; 6 uses
  %.sroa.10.0.ph25.i = phi i64 [ %i.cg, %bb.v ], [ %.sroa.0.0.i.i, %.thread ] ; 5 uses
  %i.cs = icmp eq i64 %.sroa.5.0.ph26.i, 0
  br i1 %i.cs, label %bb.af, label %bb.ae

bb.ae:                                            ; preds = %.thread.i
  %.not5.i10.i = icmp ult i64 %.sroa.5.0.ph26.i, %i.ao
  br i1 %.not5.i10.i, label %bb.ag, label %.split.i11.i

bb.af:                                            ; preds = %bb.ag, %.split.i11.i, %.thread.i
  %i.ct = icmp eq i64 %.sroa.10.0.ph25.i, 0
  br i1 %i.ct, label %bb.aj, label %bb.ah

.split.i11.i:                                     ; preds = %bb.ae
  %i.cu = icmp eq i64 %.sroa.5.0.ph26.i, %i.ao
  br i1 %i.cu, label %bb.af, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.ag:                                            ; preds = %bb.ae
  %i.cv = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.5.0.ph26.i
  %i.cw = load i8, ptr %i.cv, align 1, !alias.scope !326, !noalias !325, !noundef !7
  %i.cx = icmp sgt i8 %i.cw, -65
  br i1 %i.cx, label %bb.af, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.ah:                                            ; preds = %bb.af
  %.not6.i14.i = icmp ult i64 %.sroa.10.0.ph25.i, %i.ao
  br i1 %.not6.i14.i, label %bb.ai, label %.split7.i15.i

.split7.i15.i:                                    ; preds = %bb.ah
  %i.cy = icmp eq i64 %.sroa.10.0.ph25.i, %i.ao
  br i1 %i.cy, label %bb.aj, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.ai:                                            ; preds = %bb.ah
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.10.0.ph25.i
  %i.da = load i8, ptr %i.cz, align 1, !alias.scope !326, !noalias !325, !noundef !7
  %i.db = icmp sgt i8 %i.da, -65
  br i1 %i.db, label %bb.aj, label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

bb.aj:                                            ; preds = %bb.ai, %.split7.i15.i, %bb.af
  %i.dc = sub nuw nsw i64 %.sroa.10.0.ph25.i, %.sroa.5.0.ph26.i
  %i.dd = getelementptr inbounds nuw i8, ptr %i.cr, i64 %.sroa.5.0.ph26.i
  br label %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit

_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit: ; preds = %bb.u, %bb.v, %bb.w, %.split.i.i, %bb.aa, %.split7.i.i, %bb.ac, %bb.ad, %.split.i11.i, %bb.ag, %.split7.i15.i, %bb.ai, %bb.aj
  %i.de = phi i64 [ %i.ax, %.split7.i.i ], [ %i.k, %bb.u ], [ %i.ax, %bb.ad ], [ %i.ax, %bb.ac ], [ %i.ax, %bb.aa ], [ %i.ax, %bb.w ], [ %i.ax, %.split.i.i ], [ %i.k, %bb.aj ], [ %i.k, %bb.ai ], [ %i.k, %bb.ag ], [ %i.k, %bb.v ], [ %i.k, %.split.i11.i ], [ %i.k, %.split7.i15.i ] ; 9 uses
  %.sroa.037.1195 = phi i64 [ %.sroa.0.0.i18.i, %.split7.i.i ], [ %i.bt, %bb.u ], [ %.sroa.0.0.i18.i, %bb.ad ], [ %.sroa.0.0.i18.i, %bb.ac ], [ %.sroa.0.0.i18.i, %bb.aa ], [ %.sroa.0.0.i18.i, %bb.w ], [ %.sroa.0.0.i18.i, %.split.i.i ], [ %.sroa.5144.0.ph214, %bb.aj ], [ %.sroa.5144.0.ph214, %bb.ai ], [ %.sroa.5144.0.ph214, %bb.ag ], [ %i.bt, %bb.v ], [ %.sroa.5144.0.ph214, %.split.i11.i ], [ %.sroa.5144.0.ph214, %.split7.i15.i ]
  %.sroa.034.1193 = phi i64 [ %.sroa.10.0.ph, %.split7.i.i ], [ %.sroa.5.0.i.i, %bb.u ], [ %.sroa.10.0.ph, %bb.ad ], [ %.sroa.10.0.ph, %bb.ac ], [ %.sroa.10.0.ph, %bb.aa ], [ %.sroa.10.0.ph, %bb.w ], [ %.sroa.10.0.ph, %.split.i.i ], [ %.sroa.5.0.i.i, %bb.aj ], [ %.sroa.5.0.i.i, %bb.ai ], [ %.sroa.5.0.i.i, %bb.ag ], [ %.sroa.5.0.i.i, %bb.v ], [ %.sroa.5.0.i.i, %.split.i11.i ], [ %.sroa.5.0.i.i, %.split7.i15.i ] ; 3 uses
  %.sroa.031.1191 = phi i64 [ %.sroa.5139.0.ph, %.split7.i.i ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.5139.0.ph, %bb.ad ], [ %.sroa.5139.0.ph, %bb.ac ], [ %.sroa.5139.0.ph, %bb.aa ], [ %.sroa.5139.0.ph, %bb.w ], [ %.sroa.5139.0.ph, %.split.i.i ], [ %.sroa.0.0.i.i, %bb.aj ], [ %.sroa.0.0.i.i, %bb.ai ], [ %.sroa.0.0.i.i, %bb.ag ], [ %.sroa.0.0.i.i, %bb.v ], [ %.sroa.0.0.i.i, %.split.i11.i ], [ %.sroa.0.0.i.i, %.split7.i15.i ] ; 2 uses
  %.sroa.11131.0165187 = phi i64 [ %.sroa.5.0.i20.i, %.split7.i.i ], [ %.sroa.5.0.i.i, %bb.u ], [ %.sroa.5.0.i20.i, %bb.ad ], [ %.sroa.5.0.i20.i, %bb.ac ], [ %.sroa.5.0.i20.i, %bb.aa ], [ %.sroa.5.0.i20.i, %bb.w ], [ %.sroa.5.0.i20.i, %.split.i.i ], [ %.sroa.5.0.i.i, %bb.aj ], [ %.sroa.5.0.i.i, %bb.ai ], [ %.sroa.5.0.i.i, %bb.ag ], [ %.sroa.5.0.i.i, %bb.v ], [ %.sroa.5.0.i.i, %.split.i11.i ], [ %.sroa.5.0.i.i, %.split7.i15.i ] ; 12 uses
  %.sroa.9.0167185 = phi i64 [ %.sroa.0.0.i18.i, %.split7.i.i ], [ %.sroa.0.0.i.i, %bb.u ], [ %.sroa.0.0.i18.i, %bb.ad ], [ %.sroa.0.0.i18.i, %bb.ac ], [ %.sroa.0.0.i18.i, %bb.aa ], [ %.sroa.0.0.i18.i, %bb.w ], [ %.sroa.0.0.i18.i, %.split.i.i ], [ %.sroa.0.0.i.i, %bb.aj ], [ %.sroa.0.0.i.i, %bb.ai ], [ %.sroa.0.0.i.i, %bb.ag ], [ %.sroa.0.0.i.i, %bb.v ], [ %.sroa.0.0.i.i, %.split.i11.i ], [ %.sroa.0.0.i.i, %.split7.i15.i ] ; 10 uses
  %.sroa.4.0.i = phi i64 [ undef, %.split7.i.i ], [ undef, %bb.u ], [ %i.cp, %bb.ad ], [ undef, %bb.ac ], [ undef, %bb.aa ], [ undef, %bb.w ], [ undef, %.split.i.i ], [ %i.dc, %bb.aj ], [ undef, %bb.ai ], [ undef, %bb.ag ], [ undef, %bb.v ], [ undef, %.split.i11.i ], [ undef, %.split7.i15.i ] ; 2 uses
  %.sroa.0.0.i = phi ptr [ null, %.split7.i.i ], [ null, %bb.u ], [ %i.cq, %bb.ad ], [ null, %bb.ac ], [ null, %bb.aa ], [ null, %bb.w ], [ null, %.split.i.i ], [ %i.dd, %bb.aj ], [ null, %bb.ai ], [ null, %bb.ag ], [ null, %bb.v ], [ null, %.split.i11.i ], [ null, %.split7.i15.i ] ; 2 uses
  %.not43 = icmp eq ptr %.sroa.0.0.i, null        ; 2 uses
  %.sroa.310.0 = select i1 %.not43, i64 0, i64 %.sroa.4.0.i ; 4 uses
  %.sroa.09.0 = select i1 %.not43, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef %.sroa.310.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
  %i.df = load i64, ptr %i.b, align 8, !range !11, !noundef !7
  %i.dg = trunc nuw i64 %i.df to i1
  %i.dh = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.di = load i64, ptr %i.dh, align 8, !range !15, !noundef !7 ; 3 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  br i1 %i.dg, label %bb.ak, label %bb.al, !prof !10

bb.ak:                                            ; preds = %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit
  %i.dk = load i64, ptr %i.dj, align 8
  tail call void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.di, i64 %i.dk) #29
  unreachable

bb.al:                                            ; preds = %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString18get_range_originalINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEEBa_.exit
  %i.dl = load ptr, ptr %i.dj, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.dm = icmp ule i64 %.sroa.310.0, %i.di
  tail call void @llvm.assume(i1 %i.dm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not44 = icmp eq i64 %.sroa.310.0, 0
  br i1 %.not44, label %bb.am, label %bb.bf

bb.am:                                            ; preds = %bb.bf, %bb.al
  %.sroa.627.0 = phi i64 [ %.sroa.4.0.i, %bb.bf ], [ 0, %bb.al ]
  store i64 %i.di, ptr %i.f, align 8
  %.sroa.426.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %i.dl, ptr %.sroa.426.0..sroa_idx, align 8
  %.sroa.627.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  store i64 %.sroa.627.0, ptr %.sroa.627.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !327)
  %i.dn = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.do = load ptr, ptr %i.dn, align 8, !alias.scope !327, !noalias !328, !nonnull !7, !noundef !7 ; 6 uses
  br i1 %i.i, label %bb.an, label %bb.av

bb.an:                                            ; preds = %bb.am
  %.not.i.i117 = icmp ugt i64 %.sroa.9.0167185, %.sroa.11131.0165187
  br i1 %.not.i.i117, label %bb.bh, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dp = icmp eq i64 %.sroa.9.0167185, 0
  br i1 %i.dp, label %bb.aq, label %bb.ap

bb.ap:                                            ; preds = %bb.ao
  %.not5.i.i118 = icmp ult i64 %.sroa.9.0167185, %i.de
  br i1 %.not5.i.i118, label %bb.ar, label %.split.i.i119

bb.aq:                                            ; preds = %bb.ar, %.split.i.i119, %bb.ao
  %i.dq = icmp eq i64 %.sroa.11131.0165187, 0
  br i1 %i.dq, label %bb.au, label %bb.as

.split.i.i119:                                    ; preds = %bb.ap
  %i.dr = icmp eq i64 %.sroa.9.0167185, %i.de
  br i1 %i.dr, label %bb.aq, label %bb.bh

bb.ar:                                            ; preds = %bb.ap
  %i.ds = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.9.0167185
  %i.dt = load i8, ptr %i.ds, align 1, !alias.scope !329, !noalias !330, !noundef !7
  %i.du = icmp sgt i8 %i.dt, -65
  br i1 %i.du, label %bb.aq, label %bb.bh

bb.as:                                            ; preds = %bb.aq
  %.not6.i.i120 = icmp ult i64 %.sroa.11131.0165187, %i.de
  br i1 %.not6.i.i120, label %bb.at, label %.split7.i.i121

.split7.i.i121:                                   ; preds = %bb.as
  %i.dv = icmp eq i64 %.sroa.11131.0165187, %i.de
  br i1 %i.dv, label %bb.au, label %bb.bh

bb.at:                                            ; preds = %bb.as
  %i.dw = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.11131.0165187
  %i.dx = load i8, ptr %i.dw, align 1, !alias.scope !329, !noalias !330, !noundef !7
  %i.dy = icmp sgt i8 %i.dx, -65
  br i1 %i.dy, label %bb.au, label %bb.bh

bb.au:                                            ; preds = %bb.at, %.split7.i.i121, %bb.aq
  %i.dz = sub nuw nsw i64 %.sroa.11131.0165187, %.sroa.9.0167185
  %i.ea = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.9.0167185
  br label %bb.bh

bb.av:                                            ; preds = %bb.am
  tail call void @llvm.experimental.noalias.scope.decl(metadata !331)
  %i.eb = icmp eq i64 %.sroa.9.0167185, %.sroa.11131.0165187
  br i1 %i.eb, label %.thread.i110, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.ec = icmp ugt i64 %.sroa.9.0167185, %.sroa.11131.0165187
  br i1 %i.ec, label %bb.bh, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ee = load ptr, ptr %i.ed, align 8, !alias.scope !332, !noalias !333, !nonnull !7, !noundef !7 ; 3 uses
  %i.ef = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.eg = load i64, ptr %i.ef, align 8, !alias.scope !332, !noalias !333, !noundef !7 ; 2 uses
  %.idx.i.i = shl i64 %i.eg, 4                    ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ee, i64 %.idx.i.i
  %.not.i.i.i.i.i.i = icmp eq i64 %i.eg, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.bh, label %.lr.ph.i.i.i.i.preheader.i.i

.lr.ph.i.i.i.i.preheader.i.i:                     ; preds = %bb.ax
  %i.ei = getelementptr i8, ptr %i.ee, i64 8
  %.val6.i.i.i.i52.i.i = load i64, ptr %i.ei, align 8, !alias.scope !334, !noalias !335, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i.i53.not.i.i = icmp ult i64 %.sroa.11131.0165187, %.val6.i.i.i.i52.i.i
  br i1 %.not.i.i.i.i.i.i53.not.i.i, label %bb.bh, label %.lr.ph.preheader.i.i

.lr.ph.preheader.i.i:                             ; preds = %.lr.ph.i.i.i.i.preheader.i.i
  %i.ej = add i64 %.idx.i.i, -16
  %i.ek = lshr exact i64 %i.ej, 4
  %i.el = add nuw nsw i64 %i.ek, 1
  br label %.lr.ph.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i.i
  %.pre.i.i.i.i.i = add nuw nsw i64 %i.en, 1      ; 2 uses
  %i.em = getelementptr i8, ptr %.val.i.i.i.i56.in.i.i, i64 24
  %.val6.i.i.i.i.i.i = load i64, ptr %i.em, align 8, !alias.scope !334, !noalias !335, !noundef !7 ; 2 uses
  %.not.i.i.i.i.i.i.i.i = icmp ult i64 %.sroa.11131.0165187, %.val6.i.i.i.i.i.i
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.preheader.i.i
  %.val6.i.i.i.i57.i.i = phi i64 [ %.val6.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %.val6.i.i.i.i52.i.i, %.lr.ph.preheader.i.i ]
  %.val.i.i.i.i56.in.i.i = phi ptr [ %i.eo, %.lr.ph.i.i.i.i.i.i ], [ %i.ee, %.lr.ph.preheader.i.i ] ; 3 uses
  %i.en = phi i64 [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i ] ; 2 uses
  %.sroa.034.055.i.i = phi i64 [ %.sroa.034.1.i.i, %.lr.ph.i.i.i.i.i.i ], [ 0, %.lr.ph.preheader.i.i ]
  %.sroa.6.054.i.i = phi i64 [ %.sroa.6.1.i.i, %.lr.ph.i.i.i.i.i.i ], [ undef, %.lr.ph.preheader.i.i ] ; 2 uses
  %i.eo = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i56.in.i.i, i64 16 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %.sroa.034.055.i.i, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.ay, label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i.i

bb.ay:                                            ; preds = %.lr.ph.i.i
  %.val.i.i.i.i56.i.i = load i64, ptr %.val.i.i.i.i56.in.i.i, align 8, !noalias !336 ; 2 uses
  %i.ep = icmp ule i64 %.sroa.9.0167185, %.val.i.i.i.i56.i.i
  %i.eq = icmp ne i64 %.val.i.i.i.i56.i.i, %.val6.i.i.i.i57.i.i
  %or.cond.i.i.i.i.i.i.i.i.i.i.i = and i1 %i.ep, %i.eq ; 2 uses
  %spec.select.i.i = select i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i, i64 %i.en, i64 %.sroa.6.054.i.i
  %spec.select48.i.i = zext i1 %or.cond.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i.i

_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i.i: ; preds = %bb.ay, %.lr.ph.i.i
  %.sroa.6.1.i.i = phi i64 [ %.sroa.6.054.i.i, %.lr.ph.i.i ], [ %spec.select.i.i, %bb.ay ] ; 3 uses
  %.sroa.034.1.i.i = phi i64 [ 1, %.lr.ph.i.i ], [ %spec.select48.i.i, %bb.ay ] ; 2 uses
  %.not16.i.i.i.i.i.i = icmp eq ptr %i.eo, %i.eh
  br i1 %.not16.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i.i, label %.lr.ph.i.i.i.i.i.i

_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i.i: ; preds = %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i
  %.pre.i.i.i.lcssa.i.i = phi i64 [ %.pre.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i ], [ %i.el, %_RNCINvNvXs_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRTjjEuINtNtNtBf_3ops12control_flow11ControlFlowINtNtB2g_9try_trait17NeverShortCircuituEENCINvNvXs0_NtBb_10take_whileINtB3G_9TakeWhileppEB1e_8try_fold5checkTjB25_EuB2Q_NCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4V_16NormalizedString15convert_offsetsINtNtB2g_5range5RangejEE0NCINvMB2T_B2Q_10wrap_mut_2uB4A_NCINvNvB1e_8for_each4callB4A_NCB4O_s_0E0E0E0E0B4Z_.exit.i.i.i.i.i.i ] ; 4 uses
  %i.er = trunc nuw i64 %.sroa.034.1.i.i to i1
  br i1 %i.er, label %bb.az, label %.thread.thread.i

bb.az:                                            ; preds = %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i.i
  %.not.i9.i109 = icmp ugt i64 %.sroa.6.1.i.i, %.pre.i.i.i.lcssa.i.i
  br i1 %.not.i9.i109, label %bb.bh, label %.thread.i110

.thread.i110:                                     ; preds = %bb.az, %bb.av
  %.sroa.5.0.ph26.i111 = phi i64 [ %.sroa.6.1.i.i, %bb.az ], [ %.sroa.11131.0165187, %bb.av ] ; 2 uses
  %.sroa.10.0.ph25.i112 = phi i64 [ %.pre.i.i.i.lcssa.i.i, %bb.az ], [ %.sroa.11131.0165187, %bb.av ] ; 2 uses
  %i.es = icmp eq i64 %.sroa.5.0.ph26.i111, 0
  br i1 %i.es, label %bb.ba, label %.thread.thread.i

.thread.thread.i:                                 ; preds = %.thread.i110, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i.i
  %.sroa.10.0.ph2534.i = phi i64 [ %.sroa.10.0.ph25.i112, %.thread.i110 ], [ %.pre.i.i.i.lcssa.i.i, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i.i ] ; 2 uses
  %.sroa.5.0.ph2632.i = phi i64 [ %.sroa.5.0.ph26.i111, %.thread.i110 ], [ %.pre.i.i.i.lcssa.i.i, %_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterTjjEEENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2i_16NormalizedString15convert_offsetsINtNtNtBc_3ops5range5RangejEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4i_8for_each4callTjRB23_ENCB2b_s_0E0EB2m_.exit.i.i ] ; 4 uses
  %.not5.i10.i103 = icmp ult i64 %.sroa.5.0.ph2632.i, %i.de
  br i1 %.not5.i10.i103, label %bb.bb, label %.split.i11.i104

bb.ba:                                            ; preds = %bb.bb, %.split.i11.i104, %.thread.i110
  %.sroa.10.0.ph2535.i = phi i64 [ %.sroa.10.0.ph2534.i, %bb.bb ], [ %.sroa.10.0.ph2534.i, %.split.i11.i104 ], [ %.sroa.10.0.ph25.i112, %.thread.i110 ] ; 5 uses
  %.sroa.5.0.ph2633.i = phi i64 [ %.sroa.5.0.ph2632.i, %bb.bb ], [ %i.de, %.split.i11.i104 ], [ 0, %.thread.i110 ] ; 2 uses
  %i.et = icmp eq i64 %.sroa.10.0.ph2535.i, 0
  br i1 %i.et, label %bb.be, label %bb.bc

.split.i11.i104:                                  ; preds = %.thread.thread.i
  %i.eu = icmp eq i64 %.sroa.5.0.ph2632.i, %i.de
  br i1 %i.eu, label %bb.ba, label %bb.bh

bb.bb:                                            ; preds = %.thread.thread.i
  %i.ev = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.5.0.ph2632.i
  %i.ew = load i8, ptr %i.ev, align 1, !alias.scope !337, !noalias !330, !noundef !7
  %i.ex = icmp sgt i8 %i.ew, -65
  br i1 %i.ex, label %bb.ba, label %bb.bh

bb.bc:                                            ; preds = %bb.ba
  %.not6.i14.i107 = icmp ult i64 %.sroa.10.0.ph2535.i, %i.de
  br i1 %.not6.i14.i107, label %bb.bd, label %.split7.i15.i108

.split7.i15.i108:                                 ; preds = %bb.bc
  %i.ey = icmp eq i64 %.sroa.10.0.ph2535.i, %i.de
  br i1 %i.ey, label %bb.be, label %bb.bh

bb.bd:                                            ; preds = %bb.bc
  %i.ez = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.10.0.ph2535.i
  %i.fa = load i8, ptr %i.ez, align 1, !alias.scope !337, !noalias !330, !noundef !7
  %i.fb = icmp sgt i8 %i.fa, -65
  br i1 %i.fb, label %bb.be, label %bb.bh

bb.be:                                            ; preds = %bb.bd, %.split7.i15.i108, %bb.ba
  %i.fc = sub nuw nsw i64 %.sroa.10.0.ph2535.i, %.sroa.5.0.ph2633.i
  %i.fd = getelementptr inbounds nuw i8, ptr %i.do, i64 %.sroa.5.0.ph2633.i
  br label %bb.bh

bb.bf:                                            ; preds = %bb.al
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dl, ptr nonnull align 1 %.sroa.09.0, i64 %.sroa.310.0, i1 false)
  br label %bb.am

.body:                                            ; preds = %bb.bo, %bb.bg, %bb.br
  %.pn = phi { ptr, i32 } [ %i.fy, %bb.br ], [ %i.fe, %bb.bg ], [ %i.fq, %bb.bo ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #28
          to label %common.resume unwind label %bb.bt

bb.bg:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i, %bb.bj, %bb.bh
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %.body

bb.bh:                                            ; preds = %bb.be, %bb.bd, %.split7.i15.i108, %bb.bb, %.split.i11.i104, %bb.az, %.lr.ph.i.i.i.i.preheader.i.i, %bb.ax, %bb.aw, %bb.au, %bb.at, %.split7.i.i121, %bb.ar, %.split.i.i119, %bb.an
  %.sroa.4.0.i105 = phi i64 [ undef, %bb.aw ], [ undef, %.split7.i.i121 ], [ undef, %.lr.ph.i.i.i.i.preheader.i.i ], [ undef, %bb.ax ], [ %i.dz, %bb.au ], [ undef, %bb.at ], [ undef, %bb.ar ], [ undef, %bb.an ], [ undef, %.split.i.i119 ], [ %i.fc, %bb.be ], [ undef, %bb.bd ], [ undef, %bb.bb ], [ undef, %bb.az ], [ undef, %.split.i11.i104 ], [ undef, %.split7.i15.i108 ] ; 2 uses
  %.sroa.0.0.i106 = phi ptr [ null, %bb.aw ], [ null, %.split7.i.i121 ], [ null, %.lr.ph.i.i.i.i.preheader.i.i ], [ null, %bb.ax ], [ %i.ea, %bb.au ], [ null, %bb.at ], [ null, %bb.ar ], [ null, %bb.an ], [ null, %.split.i.i119 ], [ %i.fd, %bb.be ], [ null, %bb.bd ], [ null, %bb.bb ], [ null, %bb.az ], [ null, %.split.i11.i104 ], [ null, %.split7.i15.i108 ] ; 2 uses
  %.not45 = icmp eq ptr %.sroa.0.0.i106, null     ; 2 uses
  %.sroa.316.0 = select i1 %.not45, i64 0, i64 %.sroa.4.0.i105 ; 4 uses
  %.sroa.015.0 = select i1 %.not45, ptr inttoptr (i64 1 to ptr), ptr %.sroa.0.0.i106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.sroa.316.0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.bi unwind label %bb.bg

bb.bi:                                            ; preds = %bb.bh
  %i.ff = load i64, ptr %i.a, align 8, !range !11, !noundef !7
  %i.fg = trunc nuw i64 %i.ff to i1
  %i.fh = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.fi = load i64, ptr %i.fh, align 8, !range !15, !noundef !7 ; 3 uses
  %i.fj = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br i1 %i.fg, label %bb.bj, label %bb.bk, !prof !10

bb.bj:                                            ; preds = %bb.bi
  %i.fk = load i64, ptr %i.fj, align 8
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.fi, i64 %i.fk) #29
          to label %bb.bw unwind label %bb.bg

bb.bk:                                            ; preds = %bb.bi
  %i.fl = load ptr, ptr %i.fj, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.fm = icmp ule i64 %.sroa.316.0, %i.fi
  tail call void @llvm.assume(i1 %i.fm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not46 = icmp eq i64 %.sroa.316.0, 0
  br i1 %.not46, label %bb.bl, label %bb.bm

bb.bl:                                            ; preds = %bb.bm, %bb.bk
  %.sroa.630.0 = phi i64 [ %.sroa.4.0.i105, %bb.bm ], [ 0, %bb.bk ]
  store i64 %i.fi, ptr %i.e, align 8
  %.sroa.429.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.fl, ptr %.sroa.429.0..sroa_idx, align 8
  %.sroa.630.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store i64 %.sroa.630.0, ptr %.sroa.630.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.fn = icmp ult i64 %.sroa.034.1193, %.sroa.031.1191
  %i.fo = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.fp = load i64, ptr %i.fo, align 8
  %.not47 = icmp ugt i64 %.sroa.034.1193, %i.fp
  %or.cond = select i1 %i.fn, i1 true, i1 %.not47
  br i1 %or.cond, label %bb.bn, label %bb.bq

bb.bm:                                            ; preds = %bb.bk
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.fl, ptr nonnull align 1 %.sroa.015.0, i64 %.sroa.316.0, i1 false)
  br label %bb.bl

bb.bn:                                            ; preds = %bb.bl
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.fq = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body unwind label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.fr = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i: ; preds = %bb.bn
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit unwind label %bb.bg

bb.bq:                                            ; preds = %bb.bl
  %i.fs = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ft = load ptr, ptr %i.fs, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.fu = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %.sroa.031.1191
  %i.fv = getelementptr inbounds nuw [16 x i8], ptr %i.ft, i64 %.sroa.034.1193
  store ptr %i.fu, ptr %i.c, align 8
  %i.fw = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.fv, ptr %i.fw, align 8
  %i.fx = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.g, ptr %i.fx, align 8
  invoke void @_RNvXNtNtCscdodAO9FK5_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBT_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtNtB1u_5slice4iter4IterBT_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB2N_16NormalizedString5sliceINtNtNtB1u_3ops5range5RangejEE0EE9from_iterB2R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
          to label %bb.bs unwind label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.fy = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %.body unwind label %bb.bt

bb.bs:                                            ; preds = %bb.bq
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %i.fz = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ga = load i64, ptr %i.fz, align 8, !noundef !7
  %i.gb = add i64 %i.ga, %.sroa.037.1195
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  %.sroa.08.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  %.sroa.08.48..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.08, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.08.48..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(72) %.sroa.08, i64 72, i1 false)
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 72
  store i64 %i.gb, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.bt:                                            ; preds = %bb.br, %.body
  %i.gc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  invoke void @_RNvXso_NtCscdodAO9FK5_5alloc3vecINtB5_3VechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit124 unwind label %bb.bu

bb.bu:                                            ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  %i.gd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %common.resume unwind label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.ge = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30
  unreachable

common.resume:                                    ; preds = %.body, %bb.bu
  %common.resume.op = phi { ptr, i32 } [ %i.gd, %bb.bu ], [ %.pn, %.body ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit124: ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers.exit
  call void @_RNvXs1_NtCscdodAO9FK5_5alloc7raw_vecINtB5_6RawVechENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.08)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.t

bb.bw:                                            ; preds = %bb.bj
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString5splitINtNtB8_7pattern6InvertRNtNtNtBa_5utils4onig8SysRegexEEBa_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(80) %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %2, i8 noundef range(i8 0, 5) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 13 uses
  %i.b = alloca [32 x i8], align 8                ; 10 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [1 x i8], align 1                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 7 uses
  %i.i = alloca [1 x i8], align 1                 ; 4 uses
  %i.j = alloca [32 x i8], align 8                ; 7 uses
  %i.k = alloca [24 x i8], align 8                ; 14 uses
  %i.l = alloca [24 x i8], align 8                ; 6 uses
  %i.m = alloca [8 x i8], align 8                 ; 2 uses
  %i.n = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %1, ptr %i.n, align 8
  store ptr %2, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !nonnull !7, !noundef !7
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.r = load i64, ptr %i.q, align 8, !noundef !7
  call void @_RNvXs4_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer7patternINtB5_6InvertRNtNtNtB9_5utils4onig8SysRegexENtB5_7Pattern12find_matchesB9_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.m, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.p, i64 noundef %i.r)
  %i.s = load i64, ptr %i.l, align 8, !range !9, !noundef !7 ; 6 uses
  %i.t = icmp eq i64 %i.s, -1
  %i.u = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.v = load ptr, ptr %i.u, align 8              ; 20 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.x = load ptr, ptr %i.w, align 8              ; 7 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br i1 %i.t, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %i.x, ptr %i.z, align 8
  store i64 -1, ptr %0, align 8
  br label %bb.y

bb.c:                                             ; preds = %bb.a
  %i.aa = ptrtoint ptr %i.x to i64                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  switch i8 %3, label %default.unreachable65 [
    i8 0, label %bb.d
    i8 1, label %bb.e
    i8 2, label %bb.f
    i8 3, label %bb.g
    i8 4, label %bb.w
  ]

default.unreachable65:                            ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.c
  store i64 %i.s, ptr %i.k, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  store ptr %i.v, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.14.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  store i64 %i.aa, ptr %.sroa.14.0..sroa_idx, align 8
  br label %bb.x

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.ab = icmp ult ptr %i.x, inttoptr (i64 384307168202282326 to ptr)
  call void @llvm.assume(i1 %i.ab)
  %i.ac = getelementptr inbounds nuw [24 x i8], ptr %i.v, i64 %i.aa
  store ptr %i.v, ptr %i.j, align 8
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.v, ptr %.sroa.48.0..sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 %i.s, ptr %.sroa.59.0..sroa_idx, align 8
  %.sroa.610.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  store ptr %i.ac, ptr %.sroa.610.0..sroa_idx, align 8
  call void @_RNvXs_NtNtCscdodAO9FK5_5alloc3vec16in_place_collectINtB6_3VecTTjjEbEEINtNtB6_14spec_from_iter12SpecFromIterBX_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters3map3MapINtNtB6_9into_iter8IntoIterBX_ENCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3c_16NormalizedString5splitINtNtB3e_7pattern6InvertRNtNtNtB3g_5utils4onig8SysRegexEE0EE9from_iterB3g_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.k, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %bb.x

bb.f:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store i8 0, ptr %i.f, align 1
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.v) ]
  %i.ad = icmp ult ptr %i.x, inttoptr (i64 384307168202282326 to ptr)
end_hunk_0
begin_hunk_1_@_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString7lrstrip:bb.a
bb.o:                                             ; preds = %bb.m
  %i.ch = call noundef i64 @_RNvNtNtCs4NRVxsYgnAr_4core3str5count23char_count_general_case(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cc, i64 noundef %i.ce)
  br label %_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit

_RNvXNtNtCs4NRVxsYgnAr_4core3str4iterNtB2_5CharsNtNtNtNtB6_4iter6traits8iterator8Iterator5count.exit: ; preds = %bb.n, %bb.o
  %.sroa.0.0.i = phi i64 [ %i.ch, %bb.o ], [ %i.cg, %bb.n ]
  store i64 %.sroa.0.0.i, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.ci = load ptr, ptr %i.cb, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.cj = load i64, ptr %i.cd, align 8, !noundef !7
  %i.ck = getelementptr inbounds nuw i8, ptr %i.ci, i64 %i.cj
  store ptr %i.ci, ptr %i.a, align 8
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.ck, ptr %.sroa.4.0..sroa_idx, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 0, ptr %.sroa.5.0..sroa_idx, align 8
  %i.cl = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %i.cl, align 8
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store ptr %i.c, ptr %.sroa.43.0..sroa_idx, align 8
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr %i.e, ptr %.sroa.54.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.g, ptr %.sroa.6.0..sroa_idx, align 8
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VecTciEEINtB2_18SpecFromIterNestedB10_INtNtNtNtCs4NRVxsYgnAr_4core4iter8adapters10filter_map9FilterMapINtNtB1E_9enumerate9EnumerateNtNtNtB1I_3str4iter5CharsENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3C_16NormalizedString7lrstrips0_0EE9from_iterB3G_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(56) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %i.cm = load i64, ptr %i.f, align 8, !noundef !7
  %i.cn = load ptr, ptr %i.g, align 8, !nonnull !7, !align !8, !noundef !7
  call void @_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15transform_rangeNtNtNtCs4NRVxsYgnAr_4core3ops5range9RangeFullINtNtCscdodAO9FK5_5alloc3vec3VecTciEEEBa_(ptr noalias noundef nonnull align 8 dereferenceable(80) %i.cn, i1 noundef zeroext false, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, i64 noundef %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.pre = load ptr, ptr %i.g, align 8
  br label %bb.l
}

; Function Attrs: nonlazybind uwtable
define noundef nonnull align 8 ptr @_RNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB5_16NormalizedString7prepend(ptr noalias noundef returned align 8 dereferenceable(80) %0, ptr noalias noundef nonnull readonly captures(address, read_provenance) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [56 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [72 x i8], align 8                ; 8 uses
  %i.g = alloca [72 x i8], align 8                ; 12 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [40 x i8], align 8                ; 8 uses
  %i.j = alloca [24 x i8], align 8                ; 8 uses
  %i.k = alloca [8 x i8], align 8                 ; 4 uses
  %i.l = alloca [24 x i8], align 8                ; 7 uses
  %i.m = alloca [32 x i8], align 8                ; 11 uses
  %i.n = alloca [40 x i8], align 8                ; 8 uses
  %i.o = alloca [32 x i8], align 8                ; 7 uses
  %i.p = alloca [16 x i8], align 8                ; 9 uses
  %i.q = alloca [8 x i8], align 8                 ; 5 uses
  %i.r = alloca [8 x i8], align 8                 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7 ; 5 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.v = load i64, ptr %i.u, align 8, !noundef !7 ; 6 uses
  %i.w = icmp samesign eq i64 %i.v, 0
  br i1 %i.w, label %_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.x = load i8, ptr %i.t, align 1, !noalias !1141, !noundef !7 ; 5 uses
  %i.y = icmp sgt i8 %i.x, -1
  br i1 %i.y, label %.thread, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i: ; preds = %bb.b
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 1
  %i.aa = and i8 %i.x, 31
  %i.ab = zext nneg i8 %i.aa to i32               ; 3 uses
  %i.ac = icmp samesign ne i64 %i.v, 1
  tail call void @llvm.assume(i1 %i.ac)
  %i.ad = load i8, ptr %i.z, align 1, !noalias !1141, !noundef !7
  %i.ae = shl nuw nsw i32 %i.ab, 6
  %i.af = and i8 %i.ad, 63
  %i.ag = zext nneg i8 %i.af to i32               ; 2 uses
  %i.ah = or disjoint i32 %i.ae, %i.ag
  %i.ai = icmp samesign ugt i8 %i.x, -33
  br i1 %i.ai, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i, label %bb.c

.thread:                                          ; preds = %bb.b
  %i.aj = zext nneg i8 %i.x to i32
  br label %bb.f

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i
  %i.ak = getelementptr inbounds nuw i8, ptr %i.t, i64 2
  %i.al = icmp samesign ne i64 %i.v, 2
  tail call void @llvm.assume(i1 %i.al)
  %i.am = load i8, ptr %i.ak, align 1, !noalias !1141, !noundef !7
  %i.an = shl nuw nsw i32 %i.ag, 6
  %i.ao = and i8 %i.am, 63
  %i.ap = zext nneg i8 %i.ao to i32
  %i.aq = or disjoint i32 %i.an, %i.ap            ; 2 uses
  %i.ar = shl nuw nsw i32 %i.ab, 12
  %i.as = or disjoint i32 %i.aq, %i.ar
  %i.at = icmp samesign ugt i8 %i.x, -17
  br i1 %i.at, label %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i, label %bb.c

_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i: ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i
  %i.au = getelementptr inbounds nuw i8, ptr %i.t, i64 3
  %i.av = icmp samesign ne i64 %i.v, 3
  tail call void @llvm.assume(i1 %i.av)
  %i.aw = load i8, ptr %i.au, align 1, !noalias !1141, !noundef !7
  %i.ax = shl nuw nsw i32 %i.ab, 18
  %i.ay = and i32 %i.ax, 1835008
  %i.az = shl nuw nsw i32 %i.aq, 6
  %i.ba = and i8 %i.aw, 63
  %i.bb = zext nneg i8 %i.ba to i32
  %i.bc = or disjoint i32 %i.az, %i.bb
  %i.bd = or disjoint i32 %i.bc, %i.ay
  br label %bb.c

bb.c:                                             ; preds = %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i
  %.sroa.4.0.i.ph = phi i32 [ %i.as, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit14.i ], [ %i.bd, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit16.i ], [ %i.ah, %_RNvXs2J_NtNtCs4NRVxsYgnAr_4core5slice4iterINtB6_4IterhENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCs2JiOgHzbbc7_10tokenizers.exit12.i ] ; 7 uses
  %i.be = icmp samesign ult i32 %.sroa.4.0.i.ph, 1114112
  tail call void @llvm.assume(i1 %i.be)
  %i.bf = icmp samesign ult i32 %.sroa.4.0.i.ph, 128
  br i1 %i.bf, label %bb.f, label %bb.d

_RINvNtNtCs4NRVxsYgnAr_4core3str11validations15next_code_pointINtNtNtB6_5slice4iter4IterhEECs2JiOgHzbbc7_10tokenizers.exit: ; preds = %bb.a, %_RINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB6_16NormalizedString15transform_rangeINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEINtNtNtNtB1H_4iter8adapters5chain5ChainINtNtB2n_3map3MapINtNtB2n_9enumerate9EnumerateNtNtNtB1H_3str4iter5CharsENCNvB2_7prepend0EINtNtNtB2p_7sources4once4OnceTciEEEEBa_.exit
  ret ptr %0

bb.d:                                             ; preds = %bb.c
  %i.bg = icmp samesign ult i32 %.sroa.4.0.i.ph, 2048
  br i1 %i.bg, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.bh = icmp samesign ult i32 %.sroa.4.0.i.ph, 65536
  %. = select i1 %i.bh, i64 3, i64 4
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.e, %bb.d, %.thread
  %.sroa.4.0.i.ph21 = phi i32 [ %.sroa.4.0.i.ph, %bb.d ], [ %.sroa.4.0.i.ph, %bb.e ], [ %.sroa.4.0.i.ph, %bb.c ], [ %i.aj, %.thread ]
  %.sroa.02.0 = phi i64 [ 2, %bb.d ], [ %., %bb.e ], [ 1, %bb.c ], [ 1, %.thread ] ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %1, i64 %2
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1142)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r)
  store ptr %0, ptr %i.r, align 8, !noalias !1143
  store i64 0, ptr %i.q, align 8, !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.p), !noalias !1143
  %i.bj = icmp sgt i64 %i.v, -1
  tail call void @llvm.assume(i1 %i.bj)
  store i64 0, ptr %i.p, align 8, !noalias !1143
  %i.bk = getelementptr inbounds nuw i8, ptr %i.p, i64 8 ; 5 uses
  store i64 %.sroa.02.0, ptr %i.bk, align 8, !noalias !1143
  %i.bl = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1143 ; 2 uses
  %i.bm = icmp ult i64 %i.bl, 6
  tail call void @llvm.assume(i1 %i.bm)
  %i.bn = icmp samesign ugt i64 %i.bl, 4
  br i1 %i.bn, label %bb.g, label %.thread42

.thread42:                                        ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1143
  br label %bb.l

bb.g:                                             ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o), !noalias !1143
  store ptr %i.p, ptr %i.o, align 8, !noalias !1143
  %.sroa.44.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  store ptr @_RNvXs_NtNtCs4NRVxsYgnAr_4core3ops5rangeINtB4_5RangejENtNtB8_3fmt5Debug3fmtCs2JiOgHzbbc7_10tokenizers, ptr %.sroa.44.0..sroa_idx.i, align 8, !noalias !1143
  %i.bo = getelementptr inbounds nuw i8, ptr %i.o, i64 16
  store ptr %i.q, ptr %i.bo, align 8, !noalias !1143
  %.sroa.48.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store ptr @_RNvXsi_NtNtNtCs4NRVxsYgnAr_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.48.0..sroa_idx.i, align 8, !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1143
  store ptr @3, ptr %i.n, align 8, !noalias !1143
  %i.bp = getelementptr inbounds nuw i8, ptr %i.n, i64 8
  store i64 33, ptr %i.bp, align 8, !noalias !1143
  %i.bq = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store ptr @3, ptr %i.bq, align 8, !noalias !1143
  %i.br = getelementptr inbounds nuw i8, ptr %i.n, i64 24
  store i64 33, ptr %i.br, align 8, !noalias !1143
  %i.bs = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  store ptr @2, ptr %i.bs, align 8, !noalias !1143
  call void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @1, ptr noundef nonnull %i.o, i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.n), !noalias !1144
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o), !noalias !1143
  %.val.pre.i = load i64, ptr %i.p, align 8, !alias.scope !1145, !noalias !1143 ; 10 uses
  %.val28.pre.i = load i64, ptr %i.bk, align 8, !alias.scope !1146, !noalias !1143 ; 6 uses
  %.pre.i = load i64, ptr %i.u, align 8, !alias.scope !1142, !noalias !1144 ; 6 uses
  %.pre = load ptr, ptr %i.s, align 8, !alias.scope !1142, !noalias !1144 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !1143
  %.not.i33.i = icmp ugt i64 %.val.pre.i, %.val28.pre.i
  br i1 %.not.i33.i, label %bb.p, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.bt = icmp eq i64 %.val.pre.i, 0
  br i1 %i.bt, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %.not5.i.i = icmp ult i64 %.val.pre.i, %.pre.i
  br i1 %.not5.i.i, label %bb.k, label %.split.i.i

bb.j:                                             ; preds = %bb.k, %.split.i.i, %bb.h
  %.val.i3540 = phi i64 [ 0, %bb.h ], [ %.val.pre.i, %bb.k ], [ %.val.pre.i, %.split.i.i ] ; 2 uses
  %i.bu = icmp eq i64 %.val28.pre.i, 0
  br i1 %i.bu, label %bb.n, label %bb.l

.split.i.i:                                       ; preds = %bb.i
  %i.bv = icmp eq i64 %.val.pre.i, %.pre.i
  br i1 %i.bv, label %bb.j, label %bb.p

bb.k:                                             ; preds = %bb.i
  %i.bw = getelementptr inbounds nuw i8, ptr %.pre, i64 %.val.pre.i
  %i.bx = load i8, ptr %i.bw, align 1, !alias.scope !1147, !noalias !1144, !noundef !7
  %i.by = icmp sgt i8 %i.bx, -65
  br i1 %i.by, label %bb.j, label %bb.p

bb.l:                                             ; preds = %.thread42, %bb.j
  %.val.i354047 = phi i64 [ 0, %.thread42 ], [ %.val.i3540, %bb.j ] ; 4 uses
  %.val28.i334145 = phi i64 [ %.sroa.02.0, %.thread42 ], [ %.val28.pre.i, %bb.j ] ; 7 uses
  %i.bz = phi i64 [ %i.v, %.thread42 ], [ %.pre.i, %bb.j ] ; 4 uses
  %i.ca = phi ptr [ %i.t, %.thread42 ], [ %.pre, %bb.j ] ; 5 uses
  %.not6.i.i = icmp ult i64 %.val28.i334145, %i.bz
  br i1 %.not6.i.i, label %bb.m, label %.split7.i.i

.split7.i.i:                                      ; preds = %bb.l
  %i.cb = icmp eq i64 %.val28.i334145, %i.bz
  br i1 %i.cb, label %bb.n, label %bb.p

bb.m:                                             ; preds = %bb.l
  %i.cc = getelementptr inbounds nuw i8, ptr %i.ca, i64 %.val28.i334145
  %i.cd = load i8, ptr %i.cc, align 1, !alias.scope !1147, !noalias !1144, !noundef !7
  %i.ce = icmp sgt i8 %i.cd, -65
  br i1 %i.ce, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m, %.split7.i.i, %bb.j
  %.val.i354048 = phi i64 [ %.val.i354047, %bb.m ], [ %.val.i354047, %.split7.i.i ], [ %.val.i3540, %bb.j ]
  %.val28.i334146 = phi i64 [ %.val28.i334145, %bb.m ], [ %.val28.i334145, %.split7.i.i ], [ 0, %bb.j ]
  %i.cf = phi ptr [ %i.ca, %bb.m ], [ %i.ca, %.split7.i.i ], [ %.pre, %bb.j ] ; 2 uses
  %i.cg = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.val.i354048
  %i.ch = getelementptr inbounds nuw i8, ptr %i.cf, i64 %.val28.i334146
  call void @_RNvXNtNtCscdodAO9FK5_5alloc3vec21spec_from_iter_nestedINtB4_3VeccEINtB2_18SpecFromIterNestedcNtNtNtCs4NRVxsYgnAr_4core3str4iter5CharsE9from_iterCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.l, ptr noundef nonnull %i.cg, ptr noundef nonnull %i.ch), !noalias !1144
  %i.ci = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %i.cj = load ptr, ptr %i.ci, align 8, !noalias !1143, !nonnull !7, !noundef !7 ; 3 uses
  %i.ck = load i64, ptr %i.l, align 8, !range !14, !noalias !1143, !noundef !7
  %i.cl = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.cm = load i64, ptr %i.cl, align 8, !noalias !1143, !noundef !7 ; 2 uses
  %i.cn = icmp ult i64 %i.cm, 2305843009213693952
  call void @llvm.assume(i1 %i.cn)
  %i.co = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %i.cm
  store ptr %i.cj, ptr %i.m, align 8, !noalias !1143
  %i.cp = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  store i64 %i.ck, ptr %i.cp, align 8, !noalias !1143
  %i.cq = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  store ptr %i.cj, ptr %i.cq, align 8, !noalias !1143
  %i.cr = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  store ptr %i.co, ptr %i.cr, align 8, !noalias !1143
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !1143
  %i.cs = load i64, ptr %i.q, align 8, !noalias !1143, !noundef !7 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1143
  store ptr %i.m, ptr %i.b, align 8, !noalias !1148
  %i.ct = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 %i.cs, ptr %i.ct, align 8, !noalias !1148
  %i.cu = icmp eq i64 %i.cs, 0
  br i1 %i.cu, label %bb.s, label %bb.o

bb.o:                                             ; preds = %bb.n
  %i.cv = invoke { i64, i64 } @_RINvXs0_NtNtNtCs4NRVxsYgnAr_4core4iter6traits8iteratorQINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercENtB6_8Iterator8try_foldjNCINvNvXs_NtNtBa_8adapters4takeINtB2e_4TakepEB1G_8try_fold5checkcjINtNtNtBc_3ops9try_trait17NeverShortCircuitjENCINvMB3b_B38_10wrap_mut_2jcNCINvNtB2g_3map8map_foldcjjNCINvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB4T_16NormalizedString15transform_rangeINtNtB3d_5range5RangejEINtNtB2g_5chain5ChainINtB4o_3MapINtNtB2g_9enumerate9EnumerateNtNtNtBc_3str4iter5CharsENCNvB4P_7prepend0EINtNtNtBa_7sources4once4OnceTciEEEE0NCINvXsK_NtB8_5accumjNtB9a_3Sum3sumIB77_IB2A_BQ_EB4K_EE0E0E0E0INtNtB3d_12control_flow11ControlFlowB38_jEEB4X_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, i64 noundef 0, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.ct)
          to label %.noexc.i unwind label %bb.r, !noalias !1144

.noexc.i:                                         ; preds = %bb.o
  %i.cw = extractvalue { i64, i64 } %i.cv, 1
  br label %bb.s

bb.p:                                             ; preds = %bb.m, %.split7.i.i, %bb.k, %.split.i.i, %bb.g
  %.val.i36 = phi i64 [ %.val.i354047, %bb.m ], [ %.val.i354047, %.split7.i.i ], [ %.val.pre.i, %bb.k ], [ %.val.pre.i, %.split.i.i ], [ %.val.pre.i, %bb.g ]
  %.val28.i34 = phi i64 [ %.val28.i334145, %bb.m ], [ %.val28.i334145, %.split7.i.i ], [ %.val28.pre.i, %bb.k ], [ %.val28.pre.i, %.split.i.i ], [ %.val28.pre.i, %bb.g ]
  %i.cx = phi i64 [ %i.bz, %bb.m ], [ %i.bz, %.split7.i.i ], [ %.pre.i, %bb.k ], [ %.pre.i, %.split.i.i ], [ %.pre.i, %bb.g ]
  %i.cy = phi ptr [ %i.ca, %bb.m ], [ %i.ca, %.split7.i.i ], [ %.pre, %bb.k ], [ %.pre, %.split.i.i ], [ %.pre, %bb.g ]
  call void @_RNvNtCs4NRVxsYgnAr_4core3str16slice_error_fail(ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.cy, i64 noundef %i.cx, i64 noundef %.val.i36, i64 noundef %.val28.i34, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @4) #29, !noalias !1144
  unreachable

bb.q:                                             ; preds = %bb.an, %bb.u
  unreachable

.thread.i:                                        ; preds = %bb.at, %bb.aq, %.body.i, %bb.v, %bb.r
  %.pn25.i = phi { ptr, i32 } [ %i.cz, %bb.r ], [ %lpad.thr_comm.i, %bb.at ], [ %lpad.thr_comm.split-lp.i, %bb.v ], [ %eh.lpad-body.i, %.body.i ], [ %i.fa, %bb.aq ]
  invoke void @_RNvXse_NtNtCscdodAO9FK5_5alloc3vec9into_iterINtB5_8IntoItercENtNtNtCs4NRVxsYgnAr_4core3ops4drop4Drop4dropCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.m)
          to label %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtNtCscdodAO9FK5_5alloc3vec9into_iter8IntoItercEECs2JiOgHzbbc7_10tokenizers.exit.i unwind label %bb.as, !noalias !1144

bb.r:                                             ; preds = %bb.u, %bb.s, %bb.o
  %i.cz = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.s:                                             ; preds = %.noexc.i, %bb.n
  %.sroa.0.0.i.i.i = phi i64 [ %i.cw, %.noexc.i ], [ 0, %bb.n ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !noalias !1143
  %i.da = load i64, ptr %i.p, align 8, !noalias !1143, !noundef !7 ; 2 uses
  %i.db = add i64 %i.da, %.sroa.0.0.i.i.i
  store i64 %i.db, ptr %i.k, align 8, !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !1143
  %i.dc = load i64, ptr %i.bk, align 8, !noalias !1143, !noundef !7
  %.sroa.418.0.i = call i64 @llvm.usub.sat.i64(i64 %i.dc, i64 %i.da) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1143
  invoke void @_RNvMs4_NtCscdodAO9FK5_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sroa.418.0.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 16)
          to label %bb.t unwind label %bb.r, !noalias !1144

bb.t:                                             ; preds = %bb.s
  %i.dd = load i64, ptr %i.c, align 8, !range !11, !noalias !1143, !noundef !7
  %i.de = trunc nuw i64 %i.dd to i1
  %i.df = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.dg = load i64, ptr %i.df, align 8, !range !15, !noalias !1143, !noundef !7 ; 3 uses
  %i.dh = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  br i1 %i.de, label %bb.u, label %bb.w, !prof !10

bb.u:                                             ; preds = %bb.t
  %i.di = load i64, ptr %i.dh, align 8, !noalias !1143
  invoke void @_RNvNtCscdodAO9FK5_5alloc7raw_vec12handle_error(i64 noundef %i.dg, i64 %i.di) #29
          to label %bb.q unwind label %bb.r, !noalias !1144

bb.v:                                             ; preds = %_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VechEECs2JiOgHzbbc7_10tokenizers.exit.i.i
  %lpad.thr_comm.split-lp.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i

bb.w:                                             ; preds = %bb.t
  %i.dj = load ptr, ptr %i.dh, align 8, !noalias !1143, !nonnull !7, !noundef !7
  %i.dk = icmp ule i64 %.sroa.418.0.i, %i.dg
  call void @llvm.assume(i1 %i.dk)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1143
  store i64 %i.dg, ptr %i.j, align 8, !noalias !1143
  %i.dl = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  store ptr %i.dj, ptr %i.dl, align 8, !noalias !1143
  %i.dm = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  store i64 0, ptr %i.dm, align 8, !noalias !1143
  %i.dn = load atomic i64, ptr @_RNvCsbKm4k1ctY99_3log20MAX_LOG_LEVEL_FILTER monotonic, align 8, !noalias !1143 ; 2 uses
  %i.do = icmp ult i64 %i.dn, 6
  call void @llvm.assume(i1 %i.do)
  %i.dp = icmp samesign ugt i64 %i.dn, 4
  br i1 %i.dp, label %bb.x, label %bb.z

bb.x:                                             ; preds = %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !1143
  store ptr @3, ptr %i.i, align 8, !noalias !1143
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store i64 33, ptr %i.dq, align 8, !noalias !1143
  %i.dr = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr @3, ptr %i.dr, align 8, !noalias !1143
  %i.ds = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  store i64 33, ptr %i.ds, align 8, !noalias !1143
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr @6, ptr %i.dt, align 8, !noalias !1143
  invoke void @_RINvNtCsbKm4k1ctY99_3log13___private_api3loguNtB2_12GlobalLoggerECs2JiOgHzbbc7_10tokenizers(ptr noundef nonnull @5, ptr noundef nonnull inttoptr (i64 55 to ptr), i64 noundef 5, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.i)
          to label %bb.y unwind label %bb.at, !noalias !1144

bb.y:                                             ; preds = %bb.x
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !1143
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.w
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !1143
  call void @llvm.experimental.noalias.scope.decl(metadata !1149)
  call void @llvm.experimental.noalias.scope.decl(metadata !1150)
  store i32 %.sroa.4.0.i.ph21, ptr %i.g, align 8, !alias.scope !1151, !noalias !1152
  %.sroa.48.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store i64 1, ptr %.sroa.48.0..sroa_idx, align 8, !alias.scope !1151, !noalias !1152
  %.sroa.5.0..sroa_idx9 = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store ptr %1, ptr %.sroa.5.0..sroa_idx9, align 8, !alias.scope !1151, !noalias !1152
  %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 24
  store ptr %i.bi, ptr %.sroa.5.sroa.4.0..sroa.5.0..sroa_idx9.sroa_idx, align 8, !alias.scope !1151, !noalias !1152
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx9.sroa_idx = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  store i64 0, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx9.sroa_idx, align 8, !alias.scope !1151, !noalias !1152
  %i.du = getelementptr inbounds nuw i8, ptr %i.g, i64 40
  store ptr %i.k, ptr %i.du, align 8, !alias.scope !1153, !noalias !1154
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48
  store ptr %i.r, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1154
  %.sroa.549.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 56
  store ptr %i.m, ptr %.sroa.549.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1154
  %.sroa.6.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 64
  store ptr %i.j, ptr %.sroa.6.0..sroa_idx.i, align 8, !alias.scope !1153, !noalias !1154
  invoke void @_RINvXs5_NtCscdodAO9FK5_5alloc6stringNtB6_6StringINtNtNtNtCs4NRVxsYgnAr_4core4iter6traits7collect12FromIteratorcE9from_iterINtNtNtBR_8adapters3map3MapINtNtB21_5chain5ChainIB1X_INtNtB21_9enumerate9EnumerateNtNtNtBT_3str4iter5CharsENCNvMs0_NtNtCs2JiOgHzbbc7_10tokenizers9tokenizer10normalizerNtB3N_16NormalizedString7prepend0EINtNtNtBR_7sources4once4OnceTciEEENCINvB3J_15transform_rangeINtNtNtBT_3ops5range5RangejEB2n_Es_0EEB3R_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.h, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.g)
          to label %bb.ab unwind label %bb.at, !noalias !1144

bb.aa:                                            ; preds = %bb.ao, %bb.an, %bb.am, %bb.ae
  %i.dv = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.ad, %bb.aa
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.dv, %bb.aa ], [ %i.dz, %bb.ad ]
  invoke void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueNtNtCscdodAO9FK5_5alloc6string6StringECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #28
          to label %.thread.i unwind label %bb.as, !noalias !1144

bb.ab:                                            ; preds = %bb.z
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !1143
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1143
  %i.dw = load ptr, ptr %i.r, align 8, !noalias !1143, !nonnull !7, !align !8, !noundef !7
  %.val31.i = load i64, ptr %i.p, align 8, !alias.scope !1145, !noalias !1143, !noundef !7
  %.val32.i = load i64, ptr %i.bk, align 8, !alias.scope !1146, !noalias !1143, !noundef !7
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 48
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !1143
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull align 8 dereferenceable(24) %i.j, i64 24, i1 false), !noalias !1143
  call void @llvm.experimental.noalias.scope.decl(metadata !1155)
  call void @llvm.experimental.noalias.scope.decl(metadata !1156)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1157
  invoke void @_RINvMs_NtCscdodAO9FK5_5alloc3vecINtB5_3VecTjjEE5drainINtNtNtCs4NRVxsYgnAr_4core3ops5range5RangejEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.dx, i64 noundef %.val31.i, i64 noundef %.val32.i)
          to label %bb.ae unwind label %bb.ad, !noalias !1158

bb.ac:                                            ; preds = %bb.ad
  %i.dy = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs4NRVxsYgnAr_4core9panicking16panic_in_cleanup() #30, !noalias !1159
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.dz = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCs4NRVxsYgnAr_4core3ptr9drop_glueINtNtCscdodAO9FK5_5alloc3vec3VecTjjEEECs2JiOgHzbbc7_10tokenizers(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #28
          to label %.body.i unwind label %bb.ac, !noalias !1159

bb.ae:                                            ; preds = %bb.ab
  %.sroa.03.0.copyload.i.i = load i64, ptr %i.e, align 8, !alias.scope !1156, !noalias !1160
  %.sroa.44.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.44.0.copyload.i.i = load ptr, ptr %.sroa.44.0..sroa_idx.i.i, align 8, !alias.scope !1156, !noalias !1160, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.55.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.55.0.copyload.i.i = load i64, ptr %.sroa.55.0..sroa_idx.i.i, align 8, !alias.scope !1156, !noalias !1160 ; 2 uses
  %i.ea = icmp ult i64 %.sroa.55.0.copyload.i.i, 576460752303423488
  call void @llvm.assume(i1 %i.ea)
  %i.eb = getelementptr inbounds nuw [16 x i8], ptr %.sroa.44.0.copyload.i.i, i64 %.sroa.55.0.copyload.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !1161
  %i.ec = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  store ptr %.sroa.44.0.copyload.i.i, ptr %i.ec, align 8, !alias.scope !1155, !noalias !1161
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store ptr %.sroa.44.0.copyload.i.i, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !1155, !noalias !1161
end_hunk_1
