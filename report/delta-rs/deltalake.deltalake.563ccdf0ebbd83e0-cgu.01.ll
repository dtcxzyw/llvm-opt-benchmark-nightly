inline.NumInlined: 10669
inline.NumDeleted: 3626
begin_hunk_0_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake:bb.a
  store ptr %i.d, ptr %i.b, align 8, !noalias !13946
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  store ptr %1, ptr %i.e, align 8, !noalias !13946
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 73 ; 3 uses
  %.promoted.i.i.i = load i8, ptr %i.f, align 1, !alias.scope !13950, !noalias !13955
  %.promoted25.i.i.i = load i64, ptr %i.c, align 8, !alias.scope !13956, !noalias !13955 ; 5 uses
  %i.g = trunc nuw i8 %.promoted.i.i.i to i1
end_hunk_0
begin_hunk_1_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake:bb.a
  br label %.lr.ph.split.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %.lr.ph.i.i.i
  store i8 1, ptr %i.f, align 1, !alias.scope !13962, !noalias !13955
  %.not.i3.i.i.us.i.i.i = icmp ne i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  %or.cond.not.i.i.i.us.i.i.i = select i1 %i.v, i1 true, i1 %.not.i3.i.i.us.i.i.i
  %i.w = sub nuw i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  %.sroa.0.1.i.i.us.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i.i, i64 %.promoted25.i.i.i
  br i1 %or.cond.not.i.i.i.us.i.i.i, label %.lr.ph.split.us.split.us.split.us.i.i.i, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.i.i.i

.lr.ph.split.us.split.us.split.us.i.i.i:          ; preds = %.lr.ph.split.us.i.i.i
  %.not.i.us.i.i.i = icmp eq i64 %.pre2.i.i.i.i.i.i, %.promoted25.i.i.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13967)
  br i1 %.not.i.us.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit, label %_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i

_RNvMsf_NtNtCsbvkFyIu7lgC_4core3str4iterINtB5_13SplitInternalcE7get_endCs7p2uQeJxui2_9deltalake.exit.i.i.us.us.i.i.i: ; preds = %.lr.ph.split.us.split.us.split.us.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !13968
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtBU_7Builder11parse_lossyReEs_0INtB7_5FnMutTB2h_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([80 x i8]) align 8 captures(address) dereferenceable(80) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.e, ptr noalias noundef nonnull readonly captures(address, read_provenance) %.sroa.0.1.i.i.us.i.i.i, i64 noundef %i.w), !noalias !13977
  %i.x = load i64, ptr %i.a, align 8, !range !402, !noalias !13968, !noundef !3 ; 2 uses
end_hunk_1
begin_hunk_2_@_RNvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_mapINtB5_9FilterMapINtNtB7_6filter6FilterINtNtNtBb_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB23_7Builder11parse_lossyReE0ENCB1Z_s_0ENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake:bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13965)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13966)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !13967)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtNtBc_3str4iter5SplitcENCINvMNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env7builderNtB1u_7Builder11parse_lossyReE0ENtNtNtBa_6traits8iterator8Iterator8find_mapNtNtB1w_9directive9DirectiveQNCB1q_s_0ECs7p2uQeJxui2_9deltalake.exit

.lr.ph.split.i.i.i:                               ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter15filter_try_foldReuINtNtNtBa_3ops12control_flow11ControlFlowNtNtNtNtCsbG4i8A5DnWX_18tracing_subscriber6filter3env9directive9DirectiveENCINvMNtB1R_7builderNtB35_7Builder11parse_lossyB15_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8find_map5checkB15_B1N_QNCB31_s_0E0E0Cs7p2uQeJxui2_9deltalake.exit.thread.i.i.i, %.lr.ph.split.preheader.i.i.i
end_hunk_2
