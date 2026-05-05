inline.NumInlined: 3136
inline.NumDeleted: 1358
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtBc_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEEIBO_IBY_IB1e_IB1E_NtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1e_INtNtB23_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2Z_8dfschemaNtB5i_8DFSchema4iter0EENCINvMs8_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB63_13SubqueryAlias7try_newB2V_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callNtNtB67_4expr4ExprNCINvMsj_NtB23_3vecINtB8Z_3VecB8y_E14extend_trustedBN_E0E0ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %bb.e

bb.b:                                             ; preds = %bb.t
  %.sroa.0.020.i.i.lcssa129 = phi i64 [ %.sroa.0.020.i.i, %bb.t ]
  %lpad107 = landingpad { ptr, i32 }
          cleanup
  %i.m = add i64 %.sroa.0.020.i.i.lcssa129, %.sroa.56.0.copyload
  br label %bb.d

bb.c:                                             ; preds = %bb.aj
  %.sroa.0.020.i.i.lcssa121 = phi i64 [ %.sroa.0.020.i.i, %bb.aj ]
  %lpad = landingpad { ptr, i32 }
          cleanup
  %i.n = add i64 %.sroa.0.020.i.i.lcssa121, %.sroa.56.0.copyload
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEB1d_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6e_8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtB1I_3vecINtB89_3VecB7h_E14extend_trustedBN_E0E0ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  resume { ptr, i32 } %.pn.i.i

bb.b:                                             ; preds = %bb.e, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %.sroa.0.018.i.i.lcssa = phi i64 [ %.sroa.0.018.i.i, %bb.e ], [ %.sroa.0.018.i.i, %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ]
  %lpad26 = landingpad { ptr, i32 }
          cleanup
  %i.i = add i64 %.sroa.0.018.i.i.lcssa, %.sroa.54.0.copyload
  br label %bb.d

bb.c:                                             ; preds = %.noexc16.i.i
  %.sroa.0.018.i.i.lcssa28 = phi i64 [ %.sroa.0.018.i.i, %.noexc16.i.i ]
  %lpad = landingpad { ptr, i32 }
          cleanup
  %i.j = add i64 %.sroa.0.018.i.i.lcssa28, %.sroa.54.0.copyload
  br label %bb.d

bb.d:                                             ; preds = %bb.b, %bb.c
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEB1d_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB6e_8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtB1I_3vecINtB89_3VecB7h_E14extend_trustedBN_E0E0ECsdJxlLsGgtXr_16delta_benchmarks:bb.a

bb.e:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %.lr.ph.i.i
  %lsr.iv = phi ptr [ %scevgep27, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %scevgep, %.lr.ph.i.i ] ; 2 uses
  %.sroa.0.018.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.l, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEBV_ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB38_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2h_NCINvMsj_NtB11_3vecINtB7k_3VecB2h_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EB8q_EB31_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ] ; 7 uses
  %i.k = add i64 %.sroa.54.0.copyload, %.sroa.0.018.i.i
  %i.l = add nuw i64 %.sroa.0.018.i.i, 1          ; 3 uses
  %i.m = shl i64 %.sroa.0.018.i.i, 3
end_hunk_2
