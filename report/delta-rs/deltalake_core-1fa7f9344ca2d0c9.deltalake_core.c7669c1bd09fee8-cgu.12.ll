inline.NumInlined: 12919
inline.NumDeleted: 5719
begin_hunk_0_@_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1F_5array15byte_view_array20GenericByteViewArrayNtNtB1F_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB43_:bb.a
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !12493, !noalias !12494
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !12493, !noalias !12494
  %.promoted.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !12485, !noalias !12490 ; 5 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %.lr.ph.split.us.i.i.i.i, label %.lr.ph.split.split.i.i.i.i

.lr.ph.split.us.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i
end_hunk_0
begin_hunk_1_@_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1F_5array15byte_view_array20GenericByteViewArrayNtNtB1F_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB43_:bb.a

.lr.ph.split.split.i.i.i.i:                       ; preds = %.lr.ph.i.i.i.i
  %i.r = icmp eq i64 %.promoted.i.i.i.i, %i.h
  br i1 %i.r, label %.split.us.thread38.i.i.i.i, label %.lr.ph32.preheader.i.i.i.i

.lr.ph32.preheader.i.i.i.i:                       ; preds = %.lr.ph.split.split.i.i.i.i
  %umax.i.i.i.i = tail call i64 @llvm.umax.i64(i64 %.promoted.i.i.i.i, i64 %i.l)
  br label %.lr.ph32.i.i.i.i

.lr.ph32.i.i.i.i:                                 ; preds = %bb.e, %.lr.ph32.preheader.i.i.i.i
  %i.s = phi i64 [ %i.af, %bb.e ], [ %.promoted.i.i.i.i, %.lr.ph32.preheader.i.i.i.i ] ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12495)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12496)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12497)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !12498)
  %exitcond.not.i.i.i.i = icmp eq i64 %i.s, %umax.i.i.i.i
  br i1 %exitcond.not.i.i.i.i, label %.split27.us.i.i.i.i, label %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i, !prof !49

.split27.us.i.i.i.i:                              ; preds = %.lr.ph32.i.i.i.i
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @235, i64 noundef 36, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @237) #50, !noalias !12499
end_hunk_1
begin_hunk_2_@_RINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtB2_7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1F_5array15byte_view_array20GenericByteViewArrayNtNtB1F_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENtNtCs6Po7BT7Nknu_5alloc6string6StringNvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB43_:bb.a
  br label %_RNvYNvYINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtBa_7flatten7FlattenINtNtCs1N9T06jgEdt_11arrow_array8iterator9ArrayIterRINtNtNtB1m_5array15byte_view_array20GenericByteViewArrayNtNtB1m_5types14StringViewTypeEEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files24scan_files_where_matches0s1_00ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB3K_.exit.thread

bb.e:                                             ; preds = %_RNvMNtCs1N9T06jgEdt_11arrow_array8iteratorINtB2_9ArrayIterRINtNtNtB4_5array15byte_view_array20GenericByteViewArrayNtNtB4_5types14StringViewTypeEE7is_nullCs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i.i.i
  %i.af = add i64 %i.s, 1                         ; 3 uses
  store i64 %i.af, ptr %i.f, align 8, !alias.scope !12485, !noalias !12490
  %i.ag = icmp eq i64 %i.af, %i.h
  br i1 %i.ag, label %.split.us.thread38.i.i.i.i, label %.lr.ph32.i.i.i.i
end_hunk_2
