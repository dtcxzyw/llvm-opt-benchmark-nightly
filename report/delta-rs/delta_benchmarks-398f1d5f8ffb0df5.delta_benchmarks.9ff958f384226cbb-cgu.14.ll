inline.NumInlined: 2497
inline.NumDeleted: 1001
begin_hunk_0_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %.backedge.i.i
  %i.d = phi ptr [ %i.e, %.backedge.i.i ], [ %.promoted.i.i, %.lr.ph.i.i.preheader ] ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 112 ; 3 uses
  %i.f = load i64, ptr %i.d, align 16, !range !127, !noalias !7488, !noundef !16 ; 3 uses
  %i.g = icmp ne i64 %i.f, 35
  tail call void @llvm.assume(i1 %i.g)
end_hunk_0
begin_hunk_1_@_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB4_6ClonedINtNtB6_6filter6FilterINtNtNtBa_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2E_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0EENtNtNtB8_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB5_6FilterINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2j_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0ENtNtNtB9_6traits8iterator8Iterator4nextCsdJxlLsGgtXr_16delta_benchmarks.exit.thread

split.a:                                          ; preds = %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtBV_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0INtB7_5FnMutTRRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %.lcssa32.a = phi ptr [ %i.d, %_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtBV_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14select_to_plans0_0INtB7_5FnMutTRRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8call_mutCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 2 uses
  %scevgep30 = getelementptr i8, ptr %.lcssa32.a, i64 112
  br label %bb.b

.lr.ph.i.i._crit_edge:                            ; preds = %.lr.ph.i.i
  %.lcssa31 = phi ptr [ %i.d, %.lr.ph.i.i ]       ; 2 uses
  %scevgep = getelementptr i8, ptr %.lcssa31, i64 112
  br label %bb.b

bb.b:                                             ; preds = %split.a, %.lr.ph.i.i._crit_edge
  %.lcssa28 = phi ptr [ %.lcssa31, %.lr.ph.i.i._crit_edge ], [ %.lcssa32.a, %split.a ]
  %.lcssa = phi ptr [ %scevgep, %.lr.ph.i.i._crit_edge ], [ %scevgep30, %split.a ]
  store ptr %.lcssa, ptr %1, align 8, !alias.scope !7488
  tail call fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %.lcssa28) #48
  br label %bb.c
end_hunk_1
