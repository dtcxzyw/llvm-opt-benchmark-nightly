Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_sql-4f9f54f7d5831ee1.polars_sql.cafc849952b8d473-cgu.10?download=true
inline.NumInlined: 1945
inline.NumDeleted: 1079
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3E_4expr4Expr3maxNvMB3E_B4n_7cum_maxE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB55_8try_folduNCINvNvB55_12try_for_each4callB4n_INtNtNtBc_3ops12control_flow11ControlFlowB4n_ENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EEB2a_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !10745
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !10745
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3maxNvMB3i_B3e_7cum_maxE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, !dbg !10746

bb.f:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3maxNvMB21_B1X_7cum_maxE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !10745
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !10745
  %i.o = icmp eq ptr %i.i, %i.c, !dbg !10723
  br i1 %i.o, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3maxNvMB3i_B3e_7cum_maxE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, label %bb.b, !dbg !10724

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3maxNvMB3i_B3e_7cum_maxE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %.sink = phi i64 [ %.sroa.6.0.copyload.i.i, %.loopexit.i ], [ -9223372036854775779, %bb.a ], [ -9223372036854775779, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !10747
  store i64 %.sink, ptr %i.p, align 16, !dbg !10747, !alias.scope !10711
  ret void, !dbg !10748
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3E_4expr4Expr3minNvMB3E_B4n_7cum_minE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB55_8try_folduNCINvNvB55_12try_for_each4callB4n_INtNtNtBc_3ops12control_flow11ControlFlowB4n_ENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EEB2a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10749 !guid !10787 {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.04.i = alloca [112 x i8], align 16       ; 5 uses
  %.sroa.76.i = alloca [24 x i8], align 8         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10788), !dbg !10799
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10789), !dbg !10799
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10790, !nonnull !532, !noundef !532 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !10790 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c, !dbg !10800
  br i1 %i.d, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3minNvMB3i_B3e_7cum_minE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, label %.lr.ph.i, !dbg !10801

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10802
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !10791, !nonnull !532, !align !639, !noundef !532
  %.val2.i.i = load ptr, ptr %i.f, align 8, !noalias !10791, !nonnull !532, !align !639, !noundef !532
  br label %bb.b, !dbg !10801

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 328, !dbg !10803 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !dbg !10804, !alias.scope !10790
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i), !dbg !10805
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.i), !dbg !10805
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10792
  %i.j = load ptr, ptr %.val2.i.i, align 8, !dbg !10806, !noalias !10793, !align !639, !noundef !532
  call void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(248) %.val.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.j), !dbg !10807, !noalias !10794
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !10808, !noalias !10791 ; 3 uses
  %i.k = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775780, !dbg !10809
  br i1 %i.k, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i, !dbg !10810

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %3, align 8, !dbg !10811, !range !847, !alias.scope !10795, !noalias !10796, !noundef !532
  %i.m = icmp eq i64 %i.l, 18, !dbg !10811
  br i1 %i.m, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i, label %bb.d, !dbg !10811

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i unwind label %bb.e, !dbg !10812, !noalias !10797

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !10813, !noalias !10791
  resume { ptr, i32 } %i.n, !dbg !10814

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !10813, !noalias !10791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10815, !noalias !10792
  br label %.loopexit.i, !dbg !10816

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !10817, !noalias !10798
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !dbg !10818, !noalias !10798
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10815, !noalias !10792
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775779, !dbg !10819
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i, !dbg !10816

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, i64 112, i1 false), !dbg !10820, !noalias !10789
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !10821
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, i64 24, i1 false), !dbg !10820, !noalias !10789
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !10822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !10822
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3minNvMB3i_B3e_7cum_minE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, !dbg !10823

bb.f:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3minNvMB21_B1X_7cum_minE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !10822
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !10822
  %i.o = icmp eq ptr %i.i, %i.c, !dbg !10800
  br i1 %i.o, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3minNvMB3i_B3e_7cum_minE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, label %bb.b, !dbg !10801

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3minNvMB3i_B3e_7cum_minE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %.sink = phi i64 [ %.sroa.6.0.copyload.i.i, %.loopexit.i ], [ -9223372036854775779, %bb.a ], [ -9223372036854775779, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !10824
  store i64 %.sink, ptr %i.p, align 16, !dbg !10824, !alias.scope !10788
  ret void, !dbg !10825
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB28_18SQLFunctionVisitor23apply_cumulative_windowNvMNtNtCsfcROwRM8ZtH_11polars_plan3dsl10statisticsNtNtB3E_4expr4Expr3sumNvMB3E_B4n_7cum_sumE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB55_8try_folduNCINvNvB55_12try_for_each4callB4n_INtNtNtBc_3ops12control_flow11ControlFlowB4n_ENcNtB8B_5Break0E0B8B_E0IB8C_B8B_EEB2a_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10826 !guid !10864 {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.04.i = alloca [112 x i8], align 16       ; 5 uses
  %.sroa.76.i = alloca [24 x i8], align 8         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10865), !dbg !10876
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10866), !dbg !10876
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !10867, !nonnull !532, !noundef !532 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !10867 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c, !dbg !10877
  br i1 %i.d, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3sumNvMB3i_B3e_7cum_sumE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, label %.lr.ph.i, !dbg !10878

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !10879
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !10868, !nonnull !532, !align !639, !noundef !532
  %.val2.i.i = load ptr, ptr %i.f, align 8, !noalias !10868, !nonnull !532, !align !639, !noundef !532
  br label %bb.b, !dbg !10878

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 328, !dbg !10880 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !dbg !10881, !alias.scope !10867
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i), !dbg !10882
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.i), !dbg !10882
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !10869
  %i.j = load ptr, ptr %.val2.i.i, align 8, !dbg !10883, !noalias !10870, !align !639, !noundef !532
  call void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(248) %.val.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.j), !dbg !10884, !noalias !10871
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !10885, !noalias !10868 ; 3 uses
  %i.k = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775780, !dbg !10886
  br i1 %i.k, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i, !dbg !10887

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %3, align 8, !dbg !10888, !range !847, !alias.scope !10872, !noalias !10873, !noundef !532
  %i.m = icmp eq i64 %i.l, 18, !dbg !10888
  br i1 %i.m, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i, label %bb.d, !dbg !10888

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i unwind label %bb.e, !dbg !10889, !noalias !10874

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !10890, !noalias !10868
  resume { ptr, i32 } %i.n, !dbg !10891

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !10890, !noalias !10868
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10892, !noalias !10869
  br label %.loopexit.i, !dbg !10893

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !10894, !noalias !10875
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !dbg !10895, !noalias !10875
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !10892, !noalias !10869
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775779, !dbg !10896
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i, !dbg !10893

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, i64 112, i1 false), !dbg !10897, !noalias !10866
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !10898
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, i64 24, i1 false), !dbg !10897, !noalias !10866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !10899
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !10899
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3sumNvMB3i_B3e_7cum_sumE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, !dbg !10900

bb.f:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4q_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB21_10statisticsB1X_3sumNvMB21_B1X_7cum_sumE0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4s_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !10899
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !10899
  %i.o = icmp eq ptr %i.i, %i.c, !dbg !10877
  br i1 %i.o, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3sumNvMB3i_B3e_7cum_sumE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit, label %bb.b, !dbg !10878

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCINvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5H_18SQLFunctionVisitor23apply_cumulative_windowNvMNtB3i_10statisticsB3e_3sumNvMB3i_B3e_7cum_sumE0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5J_.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %.sink = phi i64 [ %.sroa.6.0.copyload.i.i, %.loopexit.i ], [ -9223372036854775779, %bb.a ], [ -9223372036854775779, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !10901
  store i64 %.sink, ptr %i.p, align 16, !dbg !10901, !alias.scope !10865
  ret void, !dbg !10902
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2a_10SQLContext14process_valuesIBO_IBY_INtB1p_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1n_EEENCNvB26_13process_query0EE00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4L_8try_folduNCINvNvB4L_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtBc_3ops12control_flow11ControlFlowB8d_ENcNtB9d_5Break0E0B9d_E0IB9e_B9d_EEB2c_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 16 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(24) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !10903 !guid !11001 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [72 x i8], align 8                ; 5 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [48 x i8], align 16               ; 6 uses
  %i.i = alloca [80 x i8], align 16               ; 5 uses
  %i.j = alloca [96 x i8], align 16               ; 7 uses
  %i.k = alloca [144 x i8], align 16              ; 8 uses
  %.sroa.0.i.i.i = alloca [112 x i8], align 16    ; 7 uses
  %i.l = alloca [144 x i8], align 16              ; 13 uses
  %i.m = alloca [80 x i8], align 16               ; 8 uses
  %.sroa.7.i.i = alloca [47 x i8], align 1        ; 9 uses
  %.sroa.10.i.i = alloca [16 x i8], align 16      ; 8 uses
  %.sroa.5.i = alloca [47 x i8], align 1          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11002), !dbg !11037
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11003), !dbg !11037
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !11004, !nonnull !532, !noundef !532 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !11004 ; 2 uses
  %i.p = icmp eq ptr %.promoted.i, %i.o, !dbg !11038
  br i1 %i.p, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_.exit, label %.lr.ph.i, !dbg !11039

.lr.ph.i:                                         ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11040
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 112
  %.sroa.9.0..sroa_idx3.i.i.i = getelementptr inbounds nuw i8, ptr %i.k, i64 120
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 120
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 112 ; 6 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.m, i64 16 ; 5 uses
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.4.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.m, i64 8 ; 4 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 17 ; 4 uses
  %.sroa.10.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 64 ; 2 uses
  %.val.i.i = load ptr, ptr %i.q, align 8, !noalias !11005, !nonnull !532, !align !639, !noundef !532
  br label %bb.b, !dbg !11039

bb.b:                                             ; preds = %bb.x, %.lr.ph.i
  %i.w = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.x, %bb.x ] ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 328, !dbg !11041 ; 3 uses
  store ptr %i.x, ptr %1, align 8, !dbg !11042, !alias.scope !11004
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i), !dbg !11043
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i), !dbg !11044
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.10.i.i), !dbg !11044
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !dbg !11045, !noalias !11005
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !dbg !11046, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i.i.i), !dbg !11047
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k), !dbg !11047, !noalias !11006
  call void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.w, ptr noalias noundef nonnull align 8 dereferenceable(248) %.val.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) null), !dbg !11047, !noalias !11008
  call void @llvm.experimental.noalias.scope.decl(metadata !11009), !dbg !11047
  %i.y = load i64, ptr %i.r, align 16, !dbg !11048, !range !572, !alias.scope !11010, !noalias !11006, !noundef !532 ; 4 uses
  %i.z = icmp eq i64 %i.y, -9223372036854775780, !dbg !11048
  br i1 %i.z, label %bb.c, label %bb.d, !dbg !11049

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(72) %i.k, i64 72, i1 false), !dbg !11050, !alias.scope !11011, !noalias !11006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11051, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull align 16 dereferenceable(72) %.sroa.0.i.i.i, i64 72, i1 false), !dbg !11051, !noalias !11012
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i), !dbg !11052
  %.sroa.4.0.copyload4.i.pre.i = load i64, ptr %i.v, align 8, !dbg !11044, !noalias !11005
  br label %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.thread.i.i, !dbg !11053

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, ptr noundef nonnull align 16 dereferenceable(112) %i.k, i64 112, i1 false), !dbg !11054, !alias.scope !11011, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.9.0..sroa_idx3.i.i.i, i64 24, i1 false), !dbg !11054, !noalias !11006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !dbg !11051, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.l, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.0.i.i.i, i64 112, i1 false), !dbg !11047, !noalias !11006
  store i64 %i.y, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !11055, !noalias !11006
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i.i.i), !dbg !11052
  %i.aa = icmp ne i64 %i.y, -9223372036854775795, !dbg !11056
  call void @llvm.assume(i1 %i.aa), !dbg !11056
  %.not.i.i.i = icmp eq i64 %i.y, -9223372036854775804, !dbg !11057
  br i1 %.not.i.i.i, label %bb.e, label %bb.p, !dbg !11057

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !dbg !11058, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.j, ptr noundef nonnull align 16 dereferenceable(96) %i.l, i64 96, i1 false), !dbg !11058, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !dbg !11059, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !11059, !noalias !11006
  invoke void @_RNvMs7_NtNtCsfcROwRM8ZtH_11polars_plan5plans3litNtB5_12LiteralValue12to_any_value(ptr noalias noundef nonnull sret([48 x i8]) align 16 captures(none) dereferenceable(48) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %i.j)
          to label %bb.g unwind label %bb.f, !dbg !11060, !noalias !11008

bb.f:                                             ; preds = %bb.j, %.noexc.i.i.i, %bb.h, %bb.e
  %i.ab = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit12LiteralValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(96) %i.j) #43
          to label %.thread15.i.i.i unwind label %bb.o, !dbg !11061, !noalias !11008

bb.g:                                             ; preds = %bb.e
  call void @llvm.experimental.noalias.scope.decl(metadata !11014), !dbg !11062
  call void @llvm.experimental.noalias.scope.decl(metadata !11015), !dbg !11062
  %i.ac = load i8, ptr %i.h, align 16, !dbg !11063, !range !11016, !alias.scope !11015, !noalias !11006, !noundef !532
  %.not.i.i.i.i = icmp eq i8 %i.ac, 35, !dbg !11063 ; 2 uses
  br i1 %.not.i.i.i.i, label %bb.h, label %bb.j, !dbg !11064

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !11065, !noalias !11017
  call void @llvm.experimental.noalias.scope.decl(metadata !11018), !dbg !11065
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !11066, !noalias !11019
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !11067, !noalias !11019
  store ptr %i.j, ptr %i.a, align 8, !dbg !11067, !noalias !11019
  store ptr @_RNvXsb_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir6formatNtNtB9_3lit12LiteralValueNtNtCscgRAwXFJnXP_4core3fmt5Debug3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !11067, !noalias !11019
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noundef nonnull @11, ptr noundef nonnull %i.a)
          to label %.noexc.i.i.i unwind label %bb.f, !dbg !11068, !noalias !11008

.noexc.i.i.i:                                     ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11066, !noalias !11019
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %.sroa.4.0..sroa_idx.i.i.i.i.i, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @12)
          to label %bb.i unwind label %bb.f, !dbg !11069, !noalias !11008

bb.i:                                             ; preds = %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !11066, !noalias !11019
  store i64 11, ptr %i.c, align 8, !dbg !11070, !alias.scope !11022, !noalias !11017
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.u, ptr noundef nonnull align 8 dereferenceable(72) %i.c, i64 72, i1 false), !dbg !11071, !noalias !11026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !11072, !noalias !11017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11073, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.v, ptr noundef nonnull readonly align 8 dereferenceable(72) %i.u, i64 72, i1 false), !dbg !11074, !alias.scope !11027, !noalias !11012
  br label %bb.k, !dbg !11075

bb.j:                                             ; preds = %bb.g
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %i.s, ptr noundef nonnull readonly align 16 dereferenceable(48) %i.h, i64 48, i1 false), !dbg !11076, !alias.scope !11028, !noalias !11006
  store i64 0, ptr %i.i, align 16, !dbg !11077, !alias.scope !11014, !noalias !11006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !11073, !noalias !11006
  invoke fastcc void @_RNvMs8_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_valueNtB5_8AnyValue11into_static(ptr noalias noundef nonnull align 16 captures(none) dereferenceable(48) %i.t, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(48) %i.s) #45
          to label %bb.k unwind label %bb.f, !dbg !11078, !noalias !11029

bb.k:                                             ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !dbg !11079, !noalias !11006
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit12LiteralValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(96) %i.j)
          to label %bb.m unwind label %bb.l, !dbg !11061, !noalias !11008

bb.l:                                             ; preds = %bb.k
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ad = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !11080, !range !671, !noalias !11006, !noundef !532 ; 2 uses
  %i.ae = icmp ne i64 %i.ad, -9223372036854775795, !dbg !11080
  call void @llvm.assume(i1 %i.ae), !dbg !11080
  %i.af = icmp eq i64 %i.ad, -9223372036854775804, !dbg !11080
  br i1 %i.af, label %common.resume.i.i, label %bb.t, !dbg !11080

.thread.i:                                        ; preds = %bb.q, %bb.p
  %lpad.loopexit.split-lp.i = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.ag = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !11080, !range !671, !noalias !11006, !noundef !532 ; 2 uses
  %i.ah = icmp ne i64 %i.ag, -9223372036854775795, !dbg !11080
  call void @llvm.assume(i1 %i.ah), !dbg !11080
  %i.ai = icmp eq i64 %i.ag, -9223372036854775804, !dbg !11080
  br i1 %i.ai, label %.thread45.i, label %bb.t, !dbg !11080

.thread15.i.i.i:                                  ; preds = %bb.f
  %i.aj = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !11080, !range !671, !noalias !11006, !noundef !532 ; 2 uses
  %i.ak = icmp ne i64 %i.aj, -9223372036854775795, !dbg !11080
  call void @llvm.assume(i1 %i.ak), !dbg !11080
  %i.al = icmp eq i64 %i.aj, -9223372036854775804, !dbg !11080
  br i1 %i.al, label %common.resume.i.i, label %bb.t, !dbg !11080

bb.m:                                             ; preds = %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !dbg !11061, !noalias !11006
  %i.am = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !11080, !range !671, !noalias !11006, !noundef !532 ; 2 uses
  %i.an = icmp ne i64 %i.am, -9223372036854775795, !dbg !11080
  call void @llvm.assume(i1 %i.an), !dbg !11080
  %i.ao = icmp eq i64 %i.am, -9223372036854775804, !dbg !11080
  br i1 %i.ao, label %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.i.i, label %bb.n, !dbg !11080

bb.n:                                             ; preds = %bb.m
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l), !dbg !11080, !noalias !11008
  br label %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.i.i, !dbg !11080

bb.o:                                             ; preds = %.thread45.i, %bb.t, %bb.f
  %i.ap = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #40, !dbg !11081, !noalias !11008
  unreachable, !dbg !11081

bb.p:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !11082, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !11082, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !11082, !noalias !11006
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !11083, !noalias !11006
  store ptr %i.l, ptr %i.d, align 8, !dbg !11083, !noalias !11006
  %.sroa.412.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8, !dbg !11083
  store ptr @_RNvXs_NtNtCsfcROwRM8ZtH_11polars_plan3dsl6formatNtNtB6_4expr4ExprNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.412.0..sroa_idx.i.i.i, align 8, !dbg !11083, !noalias !11006
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @8, ptr noundef nonnull %i.d)
          to label %bb.q unwind label %.thread.i, !dbg !11084, !noalias !11008

bb.q:                                             ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !11082, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.e, i64 24, i1 false), !dbg !11085, !alias.scope !11031, !noalias !11006
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !11082, !noalias !11006
  invoke void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) @10)
          to label %bb.r unwind label %.thread.i, !dbg !11086, !noalias !11008

bb.r:                                             ; preds = %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !11082, !noalias !11006
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !11082, !noalias !11012
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !11082, !noalias !11006
  %i.aq = load i64, ptr %.sroa.4.0..sroa_idx.i.i.i, align 16, !dbg !11080, !range !671, !noalias !11006, !noundef !532 ; 2 uses
  %i.ar = icmp ne i64 %i.aq, -9223372036854775795, !dbg !11080
  call void @llvm.assume(i1 %i.ar), !dbg !11080
  %i.as = icmp eq i64 %i.aq, -9223372036854775804, !dbg !11080
  br i1 %i.as, label %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.thread.i.i, label %bb.s, !dbg !11080

bb.s:                                             ; preds = %bb.r
  call fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l), !dbg !11080, !noalias !11008
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11080, !noalias !11006
  %.sroa.5.0.copyload17.i.i = load i8, ptr %i.t, align 16, !dbg !11044, !noalias !11005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.0..sroa_idx.i.i, i64 47, i1 false), !dbg !11044, !noalias !11005
  br label %.loopexit16.i, !dbg !11087

bb.t:                                             ; preds = %.thread15.i.i.i, %.thread.i, %bb.l
  %.pn19.i.i.i = phi { ptr, i32 } [ %i.ab, %.thread15.i.i.i ], [ %lpad.loopexit.i, %bb.l ], [ %lpad.loopexit.split-lp.i, %.thread.i ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(144) %i.l) #43
          to label %common.resume.i.i unwind label %bb.o, !dbg !11080, !noalias !11008

common.resume.i.i:                                ; preds = %bb.l, %bb.w, %.thread45.i, %bb.t, %.thread15.i.i.i
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.av, %bb.w ], [ %lpad.loopexit.split-lp.i, %.thread45.i ], [ %.pn19.i.i.i, %bb.t ], [ %i.ab, %.thread15.i.i.i ], [ %lpad.loopexit.i, %bb.l ]
  resume { ptr, i32 } %common.resume.op.i.i, !dbg !11088

.thread45.i:                                      ; preds = %.thread.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans3lit12LiteralValueECshquuC4dCYVj_10polars_sql(ptr noalias noundef align 16 dereferenceable(96) %i.l) #43
          to label %common.resume.i.i unwind label %bb.o, !dbg !11080, !noalias !11008

_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.thread.i.i: ; preds = %bb.r, %bb.c
  %.sroa.4.0.copyload3.i.i = phi i64 [ %.sroa.4.0.copyload4.i.pre.i, %bb.c ], [ 11, %bb.r ], !dbg !11044
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11080, !noalias !11006
  %.sroa.5.0.copyload6.i.i = load i8, ptr %i.t, align 16, !dbg !11044, !noalias !11005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.0..sroa_idx.i.i, i64 47, i1 false), !dbg !11044, !noalias !11005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i, i64 16, i1 false), !dbg !11044, !noalias !11005
  br label %.loopexit16.i, !dbg !11087

_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.i.i: ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !dbg !11080, !noalias !11006
  %.sroa.4.0.copyload.i.i = load i64, ptr %i.v, align 8, !dbg !11044, !noalias !11005
  %.sroa.5.0.copyload.i.i = load i8, ptr %i.t, align 16, !dbg !11044, !noalias !11005 ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.0..sroa_idx.i.i, i64 47, i1 false), !dbg !11044, !noalias !11005
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.0..sroa_idx.i.i, i64 16, i1 false), !dbg !11044, !noalias !11005
  br i1 %.not.i.i.i.i, label %.loopexit16.i, label %bb.v, !dbg !11087

.loopexit16.i:                                    ; preds = %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.i.i, %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.thread.i.i, %bb.s
  %.sroa.5.0.copyload9.i.i = phi i8 [ %.sroa.5.0.copyload6.i.i, %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.thread.i.i ], [ %.sroa.5.0.copyload17.i.i, %bb.s ], [ %.sroa.5.0.copyload.i.i, %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload8.i.i = phi i64 [ %.sroa.4.0.copyload3.i.i, %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.thread.i.i ], [ 11, %bb.s ], [ %.sroa.4.0.copyload.i.i, %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.i.i ] ; 2 uses
  %i.at = load i64, ptr %3, align 8, !dbg !11089, !range !847, !alias.scope !11032, !noalias !11033, !noundef !532
  %i.au = icmp eq i64 %i.at, 18, !dbg !11089
  br i1 %i.au, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread10.i, label %bb.u, !dbg !11089

bb.u:                                             ; preds = %.loopexit16.i
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread10.i unwind label %bb.w, !dbg !11090, !noalias !11034

bb.v:                                             ; preds = %_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_.exit.i.i
  %.not.i.i3.i.i = icmp eq i8 %.sroa.5.0.copyload.i.i, 35, !dbg !11091
  br i1 %.not.i.i3.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.i, !dbg !11092

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread.i: ; preds = %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11093, !noalias !11005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !11093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !11093
  br label %bb.x, !dbg !11094

bb.w:                                             ; preds = %bb.u
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.4.0.copyload8.i.i, ptr %3, align 8, !dbg !11095, !noalias !11033
  %.sroa.517.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11095
  store i8 %.sroa.5.0.copyload9.i.i, ptr %.sroa.517.0..8.val.sroa_idx.i.i.i, align 8, !dbg !11095, !noalias !11033
  %.sroa.6.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 9, !dbg !11095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.i.i, i64 47, i1 false), !dbg !11095, !noalias !11035
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !11095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.i.i, i64 16, i1 false), !dbg !11095, !noalias !11035
  br label %common.resume.i.i, !dbg !11096

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread10.i: ; preds = %bb.u, %.loopexit16.i
  store i64 %.sroa.4.0.copyload8.i.i, ptr %3, align 8, !dbg !11095, !noalias !11033
  %.sroa.517.0..8.val.sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !11095
  store i8 %.sroa.5.0.copyload9.i.i, ptr %.sroa.517.0..8.val.sroa_idx18.i.i.i, align 8, !dbg !11095, !noalias !11033
  %.sroa.6.0..8.val.sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 9, !dbg !11095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.6.0..8.val.sroa_idx20.i.i.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.i.i, i64 47, i1 false), !dbg !11095, !noalias !11035
  %.sroa.7.0..8.val.sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 56, !dbg !11095
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..8.val.sroa_idx21.i.i.i, ptr noundef nonnull align 16 dereferenceable(16) %.sroa.10.i.i, i64 16, i1 false), !dbg !11095, !noalias !11035
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11093, !noalias !11005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !11093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !11093
  br label %.loopexit17.i, !dbg !11094

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.i: ; preds = %bb.v
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.7.0..sroa_idx.i.i, i64 47, i1 false), !dbg !11097, !noalias !11036
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !dbg !11093, !noalias !11005
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i), !dbg !11093
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i.i), !dbg !11093
  %.not.i.i = icmp eq i8 %.sroa.5.0.copyload.i.i, 36, !dbg !11098
  br i1 %.not.i.i, label %bb.x, label %.loopexit17.i, !dbg !11094

.loopexit17.i:                                    ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread10.i
  %storemerge.i.i13.i = phi i8 [ 35, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread10.i ], [ %.sroa.5.0.copyload.i.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 1, !dbg !11099
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(47) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 1 dereferenceable(47) %.sroa.5.i, i64 47, i1 false), !dbg !11100, !noalias !11003
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !11101
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_.exit, !dbg !11102

bb.x:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i), !dbg !11101
  %i.aw = icmp eq ptr %i.x, %i.o, !dbg !11038
  br i1 %i.aw, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_.exit, label %bb.b, !dbg !11039

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_.exit: ; preds = %bb.x, %bb.a, %.loopexit17.i
  %storemerge.i = phi i8 [ %storemerge.i.i13.i, %.loopexit17.i ], [ 36, %bb.a ], [ 36, %bb.x ], !dbg !11103
  store i8 %storemerge.i, ptr %0, align 16, !dbg !11103, !alias.scope !11002
  ret void, !dbg !11104
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB27_18SQLFunctionVisitor11visit_count0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3o_8try_folduNCINvNvB3o_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6Q_ENcNtB7B_5Break0E0B7B_E0IB7C_B7B_EEB29_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11105 !guid !11143 {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.04.i = alloca [112 x i8], align 16       ; 5 uses
  %.sroa.76.i = alloca [24 x i8], align 8         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11144), !dbg !11156
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11145), !dbg !11156
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11146, !nonnull !532, !noundef !532 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !11146 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c, !dbg !11157
  br i1 %i.d, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit, label %.lr.ph.i, !dbg !11158

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11159
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !11147, !nonnull !532, !align !639, !noundef !532
  %.val2.i.i = load ptr, ptr %i.f, align 8, !noalias !11147, !nonnull !532, !align !639, !noundef !532
  br label %bb.b, !dbg !11158

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 328, !dbg !11160 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !dbg !11161, !alias.scope !11146
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i), !dbg !11162
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.i), !dbg !11162
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11148
  %i.j = load ptr, ptr %.val2.i.i, align 8, !dbg !11163, !noalias !11149, !align !639, !noundef !532
  call void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(248) %.val.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.j), !dbg !11164, !noalias !11151
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !11165, !noalias !11147 ; 3 uses
  %i.k = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775780, !dbg !11166
  br i1 %i.k, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i, !dbg !11167

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %3, align 8, !dbg !11168, !range !847, !alias.scope !11152, !noalias !11153, !noundef !532
  %i.m = icmp eq i64 %i.l, 18, !dbg !11168
  br i1 %i.m, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i, label %bb.d, !dbg !11168

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i unwind label %bb.e, !dbg !11169, !noalias !11154

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !11170, !noalias !11147
  resume { ptr, i32 } %i.n, !dbg !11171

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !11170, !noalias !11147
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11172, !noalias !11148
  br label %.loopexit.i, !dbg !11173

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !11174, !noalias !11155
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !dbg !11175, !noalias !11155
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11172, !noalias !11148
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775779, !dbg !11176
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i, !dbg !11173

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, i64 112, i1 false), !dbg !11177, !noalias !11145
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !11178
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, i64 24, i1 false), !dbg !11177, !noalias !11145
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !11179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !11179
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit, !dbg !11180

bb.f:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !11179
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !11179
  %i.o = icmp eq ptr %i.i, %i.c, !dbg !11157
  br i1 %i.o, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit, label %bb.b, !dbg !11158

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %.sink = phi i64 [ %.sroa.6.0.copyload.i.i, %.loopexit.i ], [ -9223372036854775779, %bb.a ], [ -9223372036854775779, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !11181
  store i64 %.sink, ptr %i.p, align 16, !dbg !11181, !alias.scope !11144
  ret void, !dbg !11182
}

; Function Attrs: nonlazybind optsize uwtable
define void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB27_18SQLFunctionVisitor17apply_window_spec0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3u_8try_folduNCINvNvB3u_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6W_ENcNtB7H_5Break0E0B7H_E0IB7I_B7H_EEB29_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !11183 !guid !11221 {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 9 uses
  %.sroa.04.i = alloca [112 x i8], align 16       ; 5 uses
  %.sroa.76.i = alloca [24 x i8], align 8         ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11222), !dbg !11234
  tail call void @llvm.experimental.noalias.scope.decl(metadata !11223), !dbg !11234
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !11224, !nonnull !532, !noundef !532 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !11224 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c, !dbg !11235
  br i1 %i.d, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit, label %.lr.ph.i, !dbg !11236

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !11237
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 112
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  %.val.i.i = load ptr, ptr %i.e, align 8, !noalias !11225, !nonnull !532, !align !639, !noundef !532
  %.val2.i.i = load ptr, ptr %i.f, align 8, !noalias !11225, !nonnull !532, !align !639, !noundef !532
  br label %bb.b, !dbg !11236

bb.b:                                             ; preds = %bb.f, %.lr.ph.i
  %i.h = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.i, %bb.f ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 328, !dbg !11238 ; 3 uses
  store ptr %i.i, ptr %1, align 8, !dbg !11239, !alias.scope !11224
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.04.i), !dbg !11240
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.76.i), !dbg !11240
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !11226
  %i.j = load ptr, ptr %.val2.i.i, align 8, !dbg !11241, !noalias !11227, !align !639, !noundef !532
  call void @_RNvNtCshquuC4dCYVj_10polars_sql8sql_expr14parse_sql_expr(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(address) dereferenceable(144) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(248) %.val.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(64) %i.j), !dbg !11242, !noalias !11229
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 16, !dbg !11243, !noalias !11225 ; 3 uses
  %i.k = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775780, !dbg !11244
  br i1 %i.k, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i, !dbg !11245

bb.c:                                             ; preds = %bb.b
  %i.l = load i64, ptr %3, align 8, !dbg !11246, !range !847, !alias.scope !11230, !noalias !11231, !noundef !532
  %i.m = icmp eq i64 %i.l, 18, !dbg !11246
  br i1 %i.m, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i, label %bb.d, !dbg !11246

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECshquuC4dCYVj_10polars_sql(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i unwind label %bb.e, !dbg !11247, !noalias !11232

bb.e:                                             ; preds = %bb.d
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !11248, !noalias !11225
  resume { ptr, i32 } %i.n, !dbg !11249

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i: ; preds = %bb.d, %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 16 dereferenceable(72) %i.a, i64 72, i1 false), !dbg !11248, !noalias !11225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11250, !noalias !11226
  br label %.loopexit.i, !dbg !11251

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !dbg !11252, !noalias !11233
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !dbg !11253, !noalias !11233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !11250, !noalias !11226
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload.i.i, -9223372036854775779, !dbg !11254
  br i1 %.not.i.i, label %bb.f, label %.loopexit.i, !dbg !11251

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.thread.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %0, ptr noundef nonnull align 16 dereferenceable(112) %.sroa.04.i, i64 112, i1 false), !dbg !11255, !noalias !11223
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 120, !dbg !11256
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.76.i, i64 24, i1 false), !dbg !11255, !noalias !11223
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !11257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !11257
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit, !dbg !11258

bb.f:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.04.i), !dbg !11257
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.76.i), !dbg !11257
  %i.o = icmp eq ptr %i.i, %i.c, !dbg !11235
  br i1 %i.o, label %_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit, label %bb.b, !dbg !11236

_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_.exit: ; preds = %bb.f, %bb.a, %.loopexit.i
  %.sink = phi i64 [ %.sroa.6.0.copyload.i.i, %.loopexit.i ], [ -9223372036854775779, %bb.a ], [ -9223372036854775779, %bb.f ]
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 112, !dbg !11259
  store i64 %.sink, ptr %i.p, align 16, !dbg !11259, !alias.scope !11222
end_hunk_0
begin_hunk_1_@memcmp
!10887 = !DILocation(line: 2173, column: 9, scope: !230, inlinedAt: !10851)
!10888 = !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !10858)
!10889 = !DILocation(line: 810, column: 1, scope: !214, inlinedAt: !10859)
!10890 = !DILocation(line: 198, column: 21, scope: !10857, inlinedAt: !10850)
!10891 = !DILocation(line: 195, column: 29, scope: !10849, inlinedAt: !10850)
!10892 = !DILocation(line: 95, column: 35, scope: !10846, inlinedAt: !10847)
!10893 = !DILocation(line: 116, column: 9, scope: !231, inlinedAt: !10860)
!10894 = !DILocation(line: 2174, column: 22, scope: !232, inlinedAt: !10851)
!10895 = !DILocation(line: 196, column: 39, scope: !10849, inlinedAt: !10850)
!10896 = !DILocation(line: 116, column: 15, scope: !231, inlinedAt: !10860)
!10897 = !DILocation(line: 118, column: 38, scope: !233, inlinedAt: !10860)
!10898 = !DILocation(line: 131, column: 38, scope: !235, inlinedAt: !10863)
!10899 = !DILocation(line: 2509, column: 32, scope: !10834, inlinedAt: !10835)
!10900 = !DILocation(line: 2512, column: 5, scope: !10832, inlinedAt: !10835)
!10901 = !DILocation(line: 0, scope: !10833, inlinedAt: !10835)
!10902 = !DILocation(line: 122, column: 6, scope: !10826)
!10903 = distinct !DISubprogram(name: "try_fold<core::result::Result<polars_core::datatypes::any_value::AnyValue, polars_error::PolarsError>, core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::datatypes::any_value::AnyValue, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, fn(polars_core::datatypes::any_value::AnyValue) -> core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2a_10SQLContext14process_valuesIBO_IBY_INtB1p_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1n_EEENCNvB26_13process_query0EE00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4L_8try_folduNCINvNvB4L_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtBc_3ops12control_flow11ControlFlowB8d_ENcNtB9d_5Break0E0B9d_E0IB9e_B9d_EEB2c_", scope: !688, file: !684, line: 115, type: !533, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10904 = distinct !{!10904, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_"}
!10905 = distinct !{!10905, !10904, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_: argument 0"}
!10906 = distinct !{!10906, !10904, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_: argument 1"}
!10907 = distinct !{!10907, i1 true, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql"}
!10908 = distinct !{!10908, !10907, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql: argument 0"}
!10909 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<sqlparser::ast::Expr>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&sqlparser::ast::Expr, core::result::Result<polars_core::datatypes::any_value::AnyValue, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, ()>, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::datatypes::any_value::AnyValue, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, fn(polars_core::datatypes::any_value::AnyValue) -> core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4Y_B3e_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5Y_10SQLContext14process_valuesINtB2f_3MapIB4_INtBL_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecBJ_EEENCNvB5U_13process_query0EE00NCINvXB2h_INtB2h_12GenericShuntIB77_B3_B5N_EIB2T_NtNtBa_7convert10InfallibleB4e_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5C_NcNtB5C_5Break0E0B5C_E0E0B4X_EB60_", scope: !714, file: !711, line: 2501, type: !578, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10910 = distinct !DILexicalBlock(scope: !10909, file: !711, line: 2507, column: 9)
!10911 = distinct !DILexicalBlock(scope: !10910, file: !711, line: 2508, column: 41)
!10912 = distinct !DILocation(line: 121, column: 19, scope: !10903)
!10913 = distinct !DILocation(line: 2508, column: 34, scope: !10911, inlinedAt: !10912)
!10914 = distinct !DILocation(line: 180, column: 28, scope: !239, inlinedAt: !10913)
!10915 = distinct !{!10915, i1 true, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_"}
!10916 = distinct !{!10916, !10915, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_: argument 1"}
!10917 = distinct !{!10917, !10915, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_: argument 0"}
!10918 = distinct !DILocation(line: 185, column: 40, scope: !239, inlinedAt: !10913)
!10919 = distinct !DISubprogram(name: "{closure#0}<&sqlparser::ast::Expr, core::result::Result<polars_core::datatypes::any_value::AnyValue, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, ()>, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::datatypes::any_value::AnyValue, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, fn(polars_core::datatypes::any_value::AnyValue) -> core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3H_B1X_EENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4H_10SQLContext14process_valuesINtB4_3MapINtNtNtBa_5slice4iter4IterINtB12_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB10_EEENCNvB4D_13process_query0EE00NCINvXB6_INtB6_12GenericShuntIB5Q_IB60_B10_EB4w_EIB1C_NtNtBa_7convert10InfallibleB2X_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB98_12try_for_each4callB1X_B4l_NcNtB4l_5Break0E0B4l_E0E0B4J_", scope: !837, file: !684, line: 95, type: !578, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10920 = distinct !DILocation(line: 2509, column: 21, scope: !10911, inlinedAt: !10912)
!10921 = distinct !{!10921, i1 true, !"_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_"}
!10922 = distinct !{!10922, !10921, !"_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_: argument 1"}
!10923 = distinct !{!10923, !10921, !"_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_: argument 0"}
!10924 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>", linkageName: "_RNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBa_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1q_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2z_4ExprEEENCNvB6_13process_query0EE00Bc_", scope: !11007, file: !702, line: 706, type: !578, scopeLine: 706, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10925 = distinct !DILocation(line: 95, column: 28, scope: !10919, inlinedAt: !10920)
!10926 = distinct !{!10926, i1 true, !"_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql"}
!10927 = distinct !{!10927, !10926, !"_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 0"}
!10928 = distinct !{!10928, !10926, !"_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql: argument 1"}
!10929 = distinct !DILocation(line: 707, column: 28, scope: !10924, inlinedAt: !10925)
!10930 = distinct !DILexicalBlock(scope: !230, file: !601, line: 2175, column: 13)
!10931 = distinct !DILexicalBlock(scope: !10924, file: !702, line: 707, column: 60)
!10932 = distinct !DILexicalBlock(scope: !10931, file: !702, line: 707, column: 28)
!10933 = distinct !DILexicalBlock(scope: !10924, file: !702, line: 707, column: 17)
!10934 = distinct !DILexicalBlock(scope: !10933, file: !702, line: 709, column: 21)
!10935 = distinct !{!10935, i1 true, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueE10ok_or_elseNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2P_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4Y_4ExprEEENCNvB2L_13process_query0EE000EB2R_"}
!10936 = distinct !{!10936, !10935, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueE10ok_or_elseNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2P_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4Y_4ExprEEENCNvB2L_13process_query0EE000EB2R_: argument 0"}
!10937 = distinct !{!10937, !10935, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueE10ok_or_elseNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2P_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4Y_4ExprEEENCNvB2L_13process_query0EE000EB2R_: argument 1"}
!10938 = distinct !DISubprogram(name: "ok_or_else<polars_core::datatypes::any_value::AnyValue, polars_error::PolarsError, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueE10ok_or_elseNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2P_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4Y_4ExprEEENCNvB2L_13process_query0EE000EB2R_", scope: !738, file: !736, line: 1363, type: !533, scopeLine: 1363, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10939 = distinct !DILocation(line: 711, column: 30, scope: !10934, inlinedAt: !10925)
!10940 = distinct !{!10940, !10935, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueE10ok_or_elseNtCsgjwxzEoLG5s_12polars_error11PolarsErrorNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2P_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4Y_4ExprEEENCNvB2L_13process_query0EE000EB2R_: argument 2"}
!10941 = distinct !{!10941, i1 true, !"_RNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBc_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2B_4ExprEEENCNvB8_13process_query0EE000Be_"}
!10942 = distinct !{!10942, !10941, !"_RNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBc_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2B_4ExprEEENCNvB8_13process_query0EE000Be_: argument 0"}
!10943 = distinct !{!10943, !10941, !"_RNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBc_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2B_4ExprEEENCNvB8_13process_query0EE000Be_: argument 1"}
!10944 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>", linkageName: "_RNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBc_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2B_4ExprEEENCNvB8_13process_query0EE000Be_", scope: !11020, file: !702, line: 711, type: !533, scopeLine: 711, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10945 = distinct !DILocation(line: 1369, column: 25, scope: !10938, inlinedAt: !10939)
!10946 = distinct !DILexicalBlock(scope: !10944, file: !890, line: 114, column: 33)
!10947 = distinct !DILocation(line: 711, column: 44, scope: !10944, inlinedAt: !10945)
!10948 = distinct !DILocation(line: 659, column: 19, scope: !243, inlinedAt: !10947)
!10949 = distinct !DILocation(line: 1278, column: 21, scope: !242, inlinedAt: !10948)
!10950 = distinct !DISubprogram(name: "into<alloc::string::String, polars_error::ErrString>", linkageName: "_RNvXs1_NtCscgRAwXFJnXP_4core7convertNtNtCsgZ49sUHp3tW_5alloc6string6StringINtB5_4IntoNtCsgjwxzEoLG5s_12polars_error9ErrStringE4intoCshquuC4dCYVj_10polars_sql", scope: !557, file: !555, line: 777, type: !533, scopeLine: 777, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10951 = distinct !DILocation(line: 711, column: 44, scope: !10944, inlinedAt: !10945)
!10952 = distinct !{!10952, i1 true, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use"}
!10953 = distinct !{!10953, !10952, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 1"}
!10954 = distinct !{!10954, !10952, !"_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use: argument 0"}
!10955 = distinct !DISubprogram(name: "must_use", linkageName: "_RNvNtCsgjwxzEoLG5s_12polars_error9___private8must_use", scope: !11025, file: !11023, line: 668, type: !533, scopeLine: 668, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10956 = distinct !DILocation(line: 711, column: 44, scope: !10944, inlinedAt: !10945)
!10957 = distinct !{!10957, i1 true, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3mapBI_NCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4T_4ExprEEENCNvB2G_13process_query0EE00s_0EB2M_"}
!10958 = distinct !{!10958, !10957, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3mapBI_NCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4T_4ExprEEENCNvB2G_13process_query0EE00s_0EB2M_: argument 1"}
!10959 = distinct !{!10959, !10957, !"_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3mapBI_NCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4T_4ExprEEENCNvB2G_13process_query0EE00s_0EB2M_: argument 0"}
!10960 = distinct !DISubprogram(name: "map<polars_core::datatypes::any_value::AnyValue, polars_error::PolarsError, polars_core::datatypes::any_value::AnyValue, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure#0}::{closure_env#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>>", linkageName: "_RINvMNtCscgRAwXFJnXP_4core6resultINtB3_6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorE3mapBI_NCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2K_10SQLContext14process_valuesINtNtNtNtB5_4iter8adapters3map3MapINtNtNtB5_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB4T_4ExprEEENCNvB2G_13process_query0EE00s_0EB2M_", scope: !603, file: !601, line: 831, type: !533, scopeLine: 831, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10961 = distinct !DILocation(line: 712, column: 30, scope: !10934, inlinedAt: !10925)
!10962 = distinct !DILexicalBlock(scope: !10938, file: !736, line: 1368, column: 13)
!10963 = distinct !DISubprogram(name: "{closure#1}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>", linkageName: "_RNCNCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtBc_10SQLContext14process_valuesINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map3MapINtNtNtB1s_5slice4iter4IterINtNtCsaRr8xKSRVhT_9sqlparser3ast6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtB2B_4ExprEEENCNvB8_13process_query0EE00s_0Be_", scope: !11020, file: !702, line: 712, type: !533, scopeLine: 712, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10964 = distinct !DILexicalBlock(scope: !10960, file: !601, line: 836, column: 13)
!10965 = distinct !DILocation(line: 836, column: 25, scope: !10964, inlinedAt: !10961)
!10966 = distinct !DILexicalBlock(scope: !10933, file: !890, line: 114, column: 33)
!10967 = distinct !DILocation(line: 714, column: 26, scope: !10933, inlinedAt: !10925)
!10968 = distinct !DILocation(line: 659, column: 19, scope: !243, inlinedAt: !10967)
!10969 = distinct !DILocation(line: 1278, column: 21, scope: !242, inlinedAt: !10968)
!10970 = distinct !{!10970, i1 true, !"_RINvNtCscgRAwXFJnXP_4core4hint8must_useNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql"}
!10971 = distinct !{!10971, !10970, !"_RINvNtCscgRAwXFJnXP_4core4hint8must_useNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql: argument 1"}
!10972 = distinct !{!10972, !10970, !"_RINvNtCscgRAwXFJnXP_4core4hint8must_useNtNtCsgZ49sUHp3tW_5alloc6string6StringECshquuC4dCYVj_10polars_sql: argument 0"}
!10973 = distinct !DILocation(line: 714, column: 26, scope: !10933, inlinedAt: !10925)
!10974 = distinct !DILocation(line: 714, column: 26, scope: !10933, inlinedAt: !10925)
!10975 = distinct !DISubprogram(name: "branch<polars_core::datatypes::any_value::AnyValue, polars_error::PolarsError>", linkageName: "_RNvXsp_NtCscgRAwXFJnXP_4core6resultINtB5_6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueNtCsgjwxzEoLG5s_12polars_error11PolarsErrorENtNtNtB7_3ops9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !838, file: !601, line: 2172, type: !533, scopeLine: 2172, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10976 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::process_values::{closure#0}::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Parens<alloc::vec::Vec<sqlparser::ast::Expr, alloc::alloc::Global>>>, polars_sql::context::{impl#3}::process_query::{closure_env#0}>>>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_core::datatypes::any_value::AnyValue, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, fn(polars_core::datatypes::any_value::AnyValue) -> core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>, core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>", linkageName: "_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2t_10SQLContext14process_valuesIB11_IB1h_INtB1I_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1G_EEENCNvB2p_13process_query0EE00EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8O_5Break0E0B8O_E0B2v_", scope: !840, file: !839, line: 195, type: !578, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10977 = distinct !DILocation(line: 95, column: 21, scope: !10919, inlinedAt: !10920)
!10978 = distinct !DILocation(line: 195, column: 44, scope: !10976, inlinedAt: !10977)
!10979 = distinct !{!10979, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql"}
!10980 = distinct !{!10980, !10979, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql: argument 0"}
!10981 = distinct !{!10981, i1 true, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2t_10SQLContext14process_valuesIB11_IB1h_INtB1I_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1G_EEENCNvB2p_13process_query0EE00EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8O_5Break0E0B8O_E0B2v_"}
!10982 = distinct !{!10982, !10981, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2t_10SQLContext14process_valuesIB11_IB1h_INtB1I_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1G_EEENCNvB2p_13process_query0EE00EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8O_5Break0E0B8O_E0B2v_: argument 1"}
!10983 = distinct !{!10983, !10981, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNCINvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2t_10SQLContext14process_valuesIB11_IB1h_INtB1I_6ParensINtNtCsgZ49sUHp3tW_5alloc3vec3VecB1G_EEENCNvB2p_13process_query0EE00EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB6C_12try_for_each4callNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueINtNtNtB9_3ops12control_flow11ControlFlowB7O_ENcNtB8O_5Break0E0B8O_E0B2v_: argument 0"}
!10984 = distinct !DILexicalBlock(scope: !10976, file: !839, line: 197, column: 17)
!10985 = distinct !DILocation(line: 198, column: 21, scope: !10984, inlinedAt: !10977)
!10986 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !10985)
!10987 = distinct !DISubprogram(name: "branch<polars_core::datatypes::any_value::AnyValue, ()>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !850, file: !848, line: 115, type: !533, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10988 = distinct !DISubprogram(name: "from_try<core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>>", linkageName: "_RNvMs3_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB5_11ControlFlowIBL_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEE8from_tryCshquuC4dCYVj_10polars_sql", scope: !851, file: !848, line: 429, type: !533, scopeLine: 429, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10989 = distinct !DILexicalBlock(scope: !10976, file: !839, line: 196, column: 17)
!10990 = distinct !DILocation(line: 196, column: 45, scope: !10989, inlinedAt: !10977)
!10991 = distinct !DILocation(line: 430, column: 15, scope: !10988, inlinedAt: !10990)
!10992 = distinct !DISubprogram(name: "branch<core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, ()>", linkageName: "_RNvXNtNtCscgRAwXFJnXP_4core3ops12control_flowINtB2_11ControlFlowIBI_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEENtNtB4_9try_trait3Try6branchCshquuC4dCYVj_10polars_sql", scope: !850, file: !848, line: 115, type: !533, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10993 = distinct !DILocation(line: 2509, column: 21, scope: !10911, inlinedAt: !10912)
!10994 = distinct !DILexicalBlock(scope: !10987, file: !848, line: 118, column: 13)
!10995 = distinct !DISubprogram(name: "from_residual<core::ops::control_flow::ControlFlow<polars_core::datatypes::any_value::AnyValue, ()>, ()>", linkageName: "_RNvXs_NtNtCscgRAwXFJnXP_4core3ops12control_flowINtB4_11ControlFlowIBK_NtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9any_value8AnyValueEEINtNtB6_9try_trait12FromResidualIBK_B12_NtNtB8_7convert10InfallibleEE13from_residualCshquuC4dCYVj_10polars_sql", scope: !852, file: !848, line: 129, type: !533, scopeLine: 129, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!10996 = distinct !DILexicalBlock(scope: !10995, file: !848, line: 131, column: 13)
!10997 = distinct !DILexicalBlock(scope: !10911, file: !711, line: 2509, column: 32)
!10998 = distinct !DILexicalBlock(scope: !10997, file: !711, line: 2509, column: 32)
!10999 = distinct !DILocation(line: 2509, column: 21, scope: !10998, inlinedAt: !10912)
!11000 = distinct !DILexicalBlock(scope: !10992, file: !848, line: 118, column: 13)
!11001 = !{i64 8032534844973855592}
!11002 = !{!10905}
!11003 = !{!10906}
!11004 = !{!10908, !10906}
!11005 = !{!10917, !10916, !10905, !10906}
!11006 = !{!10923, !10922, !10917, !10916, !10905, !10906}
!11007 = !DINamespace(name: "{closure#0}", scope: !844)
!11008 = !{!10923, !10917, !10905, !10906}
!11009 = !{!10927}
!11010 = !{!10928}
!11011 = !{!10927, !10928}
!11012 = !{!10922, !10917, !10916, !10905, !10906}
!11013 = !DILexicalBlockFile(scope: !10924, file: !885, discriminator: 0)
!11014 = !{!10936}
!11015 = !{!10937}
!11016 = !{i8 0, i8 36}
!11017 = !{!10936, !10937, !10940, !10923, !10922, !10917, !10916, !10905, !10906}
!11018 = !{!10942}
!11019 = !{!10942, !10943, !10936, !10937, !10940, !10923, !10922, !10917, !10916, !10905, !10906}
!11020 = !DINamespace(name: "{closure#0}", scope: !11007)
!11021 = !DILexicalBlockFile(scope: !10946, file: !702, discriminator: 0)
!11022 = !{!10954, !10953, !10942}
!11023 = !DIFile(filename: "crates/polars-error/src/lib.rs", directory: "/opt-bench/work/pola-rs/polars", checksumkind: CSK_MD5, checksum: "49971f08fd25b94414fd1245099a73ea")
!11024 = !DINamespace(name: "polars_error", scope: null)
!11025 = !DINamespace(name: "__private", scope: !11024)
!11026 = !{!10937, !10940, !10923, !10922, !10917, !10916, !10905, !10906}
!11027 = !{!10959, !10958}
!11028 = !{!10936, !10937}
!11029 = !{!10917, !10905, !10906}
!11030 = !DILexicalBlockFile(scope: !10966, file: !702, discriminator: 0)
!11031 = !{!10972, !10971}
!11032 = !{!10980}
!11033 = !{!10983, !10982, !10917, !10916, !10905, !10906}
!11034 = !{!10983, !10982, !10917, !10905, !10906}
!11035 = !{!10983, !10917, !10916, !10905, !10906}
!11036 = !{!10916, !10905, !10906}
!11037 = !DILocation(line: 121, column: 19, scope: !10903)
!11038 = !DILocation(line: 1717, column: 9, scope: !236, inlinedAt: !10914)
!11039 = !DILocation(line: 180, column: 28, scope: !239, inlinedAt: !10913)
!11040 = !DILocation(line: 121, column: 47, scope: !10903)
!11041 = !DILocation(line: 659, column: 28, scope: !240, inlinedAt: !10918)
!11042 = !DILocation(line: 185, column: 25, scope: !239, inlinedAt: !10913)
!11043 = !DILocation(line: 2509, column: 21, scope: !10911, inlinedAt: !10912)
!11044 = !DILocation(line: 95, column: 21, scope: !10919, inlinedAt: !10920)
!11045 = !DILocation(line: 95, column: 28, scope: !10919, inlinedAt: !10920)
!11046 = !DILocation(line: 707, column: 21, scope: !10924, inlinedAt: !10925)
!11047 = !DILocation(line: 707, column: 28, scope: !10924, inlinedAt: !10925)
!11048 = !DILocation(line: 2173, column: 15, scope: !230, inlinedAt: !10929)
!11049 = !DILocation(line: 2173, column: 9, scope: !230, inlinedAt: !10929)
!11050 = !DILocation(line: 2175, column: 23, scope: !10930, inlinedAt: !10929)
!11051 = !DILocation(line: 707, column: 60, scope: !10924, inlinedAt: !10925)
!11052 = !DILocation(line: 707, column: 61, scope: !10924, inlinedAt: !10925)
!11053 = !DILocation(line: 0, scope: !11013, inlinedAt: !10925)
!11054 = !DILocation(line: 2174, column: 22, scope: !232, inlinedAt: !10929)
!11055 = !DILocation(line: 707, column: 28, scope: !10932, inlinedAt: !10925)
!11056 = !DILocation(line: 708, column: 23, scope: !10933, inlinedAt: !10925)
!11057 = !DILocation(line: 708, column: 17, scope: !10933, inlinedAt: !10925)
!11058 = !DILocation(line: 709, column: 35, scope: !10933, inlinedAt: !10925)
!11059 = !DILocation(line: 710, column: 25, scope: !10934, inlinedAt: !10925)
!11060 = !DILocation(line: 710, column: 31, scope: !10934, inlinedAt: !10925)
!11061 = !DILocation(line: 713, column: 21, scope: !10933, inlinedAt: !10925)
!11062 = !DILocation(line: 711, column: 30, scope: !10934, inlinedAt: !10925)
!11063 = !DILocation(line: 1367, column: 15, scope: !10938, inlinedAt: !10939)
!11064 = !DILocation(line: 1367, column: 9, scope: !10938, inlinedAt: !10939)
!11065 = !DILocation(line: 1369, column: 25, scope: !10938, inlinedAt: !10939)
!11066 = !DILocation(line: 711, column: 44, scope: !10944, inlinedAt: !10945)
!11067 = !DILocation(line: 711, column: 44, scope: !11021, inlinedAt: !10945)
!11068 = !DILocation(line: 659, column: 34, scope: !241, inlinedAt: !10949)
!11069 = !DILocation(line: 778, column: 9, scope: !10950, inlinedAt: !10951)
!11070 = !DILocation(line: 669, column: 9, scope: !10955, inlinedAt: !10956)
!11071 = !DILocation(line: 1369, column: 21, scope: !10938, inlinedAt: !10939)
!11072 = !DILocation(line: 1369, column: 30, scope: !10938, inlinedAt: !10939)
!11073 = !DILocation(line: 711, column: 107, scope: !10934, inlinedAt: !10925)
!11074 = !DILocation(line: 837, column: 17, scope: !10960, inlinedAt: !10961)
!11075 = !DILocation(line: 839, column: 5, scope: !10960, inlinedAt: !10961)
!11076 = !DILocation(line: 1368, column: 24, scope: !10962, inlinedAt: !10939)
!11077 = !DILocation(line: 0, scope: !10938, inlinedAt: !10939)
!11078 = !DILocation(line: 712, column: 42, scope: !10963, inlinedAt: !10965)
!11079 = !DILocation(line: 712, column: 55, scope: !10934, inlinedAt: !10925)
!11080 = !DILocation(line: 716, column: 13, scope: !10924, inlinedAt: !10925)
!11081 = !DILocation(line: 706, column: 62, scope: !10924, inlinedAt: !10925)
!11082 = !DILocation(line: 714, column: 26, scope: !10933, inlinedAt: !10925)
!11083 = !DILocation(line: 714, column: 26, scope: !11030, inlinedAt: !10925)
!11084 = !DILocation(line: 659, column: 34, scope: !241, inlinedAt: !10969)
!11085 = !DILocation(line: 614, column: 5, scope: !244, inlinedAt: !10973)
!11086 = !DILocation(line: 778, column: 9, scope: !10950, inlinedAt: !10974)
!11087 = !DILocation(line: 2173, column: 9, scope: !10975, inlinedAt: !10978)
!11088 = !DILocation(line: 95, scope: !10919, inlinedAt: !10920)
!11089 = !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !10985)
!11090 = !DILocation(line: 810, column: 1, scope: !214, inlinedAt: !10986)
!11091 = !DILocation(line: 116, column: 15, scope: !10987, inlinedAt: !10991)
!11092 = !DILocation(line: 116, column: 9, scope: !10987, inlinedAt: !10991)
!11093 = !DILocation(line: 95, column: 34, scope: !10919, inlinedAt: !10920)
!11094 = !DILocation(line: 116, column: 9, scope: !10992, inlinedAt: !10993)
!11095 = !DILocation(line: 198, column: 21, scope: !10984, inlinedAt: !10977)
!11096 = !DILocation(line: 195, column: 29, scope: !10976, inlinedAt: !10977)
!11097 = !DILocation(line: 118, column: 38, scope: !10994, inlinedAt: !10991)
!11098 = !DILocation(line: 116, column: 15, scope: !10992, inlinedAt: !10993)
!11099 = !DILocation(line: 131, column: 38, scope: !10996, inlinedAt: !10999)
!11100 = !DILocation(line: 118, column: 38, scope: !11000, inlinedAt: !10993)
!11101 = !DILocation(line: 2509, column: 32, scope: !10911, inlinedAt: !10912)
!11102 = !DILocation(line: 2512, column: 5, scope: !10909, inlinedAt: !10912)
!11103 = !DILocation(line: 0, scope: !10910, inlinedAt: !10912)
!11104 = !DILocation(line: 122, column: 6, scope: !10903)
!11105 = distinct !DISubprogram(name: "try_fold<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::visit_count::{closure_env#0}, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::visit_count::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB27_18SQLFunctionVisitor11visit_count0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3o_8try_folduNCINvNvB3o_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6Q_ENcNtB7B_5Break0E0B7B_E0IB7C_B7B_EEB29_", scope: !688, file: !684, line: 115, type: !533, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11106 = distinct !{!11106, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_"}
!11107 = distinct !{!11107, !11106, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_: argument 0"}
!11108 = distinct !{!11108, !11106, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_: argument 1"}
!11109 = distinct !{!11109, i1 true, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql"}
!11110 = distinct !{!11110, !11109, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql: argument 0"}
!11111 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<sqlparser::ast::Expr>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&sqlparser::ast::Expr, core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>, polars_sql::functions::{impl#2}::visit_count::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::visit_count::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor11visit_count0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_", scope: !714, file: !711, line: 2501, type: !578, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11112 = distinct !DILexicalBlock(scope: !11111, file: !711, line: 2507, column: 9)
!11113 = distinct !DILexicalBlock(scope: !11112, file: !711, line: 2508, column: 41)
!11114 = distinct !DILocation(line: 121, column: 19, scope: !11105)
!11115 = distinct !DILocation(line: 2508, column: 34, scope: !11113, inlinedAt: !11114)
!11116 = distinct !DILocation(line: 180, column: 28, scope: !239, inlinedAt: !11115)
!11117 = distinct !{!11117, i1 true, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_"}
!11118 = distinct !{!11118, !11117, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_: argument 1"}
!11119 = distinct !{!11119, !11117, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_: argument 0"}
!11120 = distinct !DILocation(line: 185, column: 40, scope: !239, inlinedAt: !11115)
!11121 = distinct !{!11121, i1 true, !"_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_count0B9_"}
!11122 = distinct !{!11122, !11121, !"_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_count0B9_: argument 1"}
!11123 = distinct !{!11123, !11121, !"_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_count0B9_: argument 0"}
!11124 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor11visit_count0B9_", scope: !11150, file: !886, line: 2280, type: !578, scopeLine: 2280, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11125 = distinct !DISubprogram(name: "{closure#0}<&sqlparser::ast::Expr, core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>, polars_sql::functions::{impl#2}::visit_count::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::visit_count::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor11visit_count0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7u_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_", scope: !837, file: !684, line: 95, type: !578, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11126 = distinct !DILocation(line: 2509, column: 21, scope: !11113, inlinedAt: !11114)
!11127 = distinct !DILocation(line: 95, column: 28, scope: !11125, inlinedAt: !11126)
!11128 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::visit_count::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>", linkageName: "_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor11visit_count0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5d_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6p_ENcNtB7a_5Break0E0B7a_E0B2s_", scope: !840, file: !839, line: 195, type: !578, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11129 = distinct !DILocation(line: 95, column: 21, scope: !11125, inlinedAt: !11126)
!11130 = distinct !DILocation(line: 195, column: 44, scope: !11128, inlinedAt: !11129)
!11131 = distinct !{!11131, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql"}
!11132 = distinct !{!11132, !11131, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql: argument 0"}
!11133 = distinct !{!11133, i1 true, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor11visit_count0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5d_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6p_ENcNtB7a_5Break0E0B7a_E0B2s_"}
!11134 = distinct !{!11134, !11133, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor11visit_count0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5d_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6p_ENcNtB7a_5Break0E0B7a_E0B2s_: argument 1"}
!11135 = distinct !{!11135, !11133, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor11visit_count0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5d_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6p_ENcNtB7a_5Break0E0B7a_E0B2s_: argument 0"}
!11136 = distinct !DILexicalBlock(scope: !11128, file: !839, line: 197, column: 17)
!11137 = distinct !DILocation(line: 198, column: 21, scope: !11136, inlinedAt: !11129)
!11138 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !11137)
!11139 = distinct !DILocation(line: 2509, column: 21, scope: !11113, inlinedAt: !11114)
!11140 = distinct !DILexicalBlock(scope: !11113, file: !711, line: 2509, column: 32)
!11141 = distinct !DILexicalBlock(scope: !11140, file: !711, line: 2509, column: 32)
!11142 = distinct !DILocation(line: 2509, column: 21, scope: !11141, inlinedAt: !11114)
!11143 = !{i64 6299695838007194202}
!11144 = !{!11107}
!11145 = !{!11108}
!11146 = !{!11110, !11108}
!11147 = !{!11119, !11118, !11107, !11108}
!11148 = !{!11107, !11108}
!11149 = !{!11123, !11122, !11119, !11118, !11107, !11108}
!11150 = !DINamespace(name: "visit_count", scope: !888)
!11151 = !{!11119, !11107, !11108}
!11152 = !{!11132}
!11153 = !{!11135, !11134, !11119, !11118, !11107, !11108}
!11154 = !{!11135, !11134, !11119, !11107, !11108}
!11155 = !{!11118, !11107, !11108}
!11156 = !DILocation(line: 121, column: 19, scope: !11105)
!11157 = !DILocation(line: 1717, column: 9, scope: !236, inlinedAt: !11116)
!11158 = !DILocation(line: 180, column: 28, scope: !239, inlinedAt: !11115)
!11159 = !DILocation(line: 121, column: 47, scope: !11105)
!11160 = !DILocation(line: 659, column: 28, scope: !240, inlinedAt: !11120)
!11161 = !DILocation(line: 185, column: 25, scope: !239, inlinedAt: !11115)
!11162 = !DILocation(line: 2509, column: 21, scope: !11113, inlinedAt: !11114)
!11163 = !DILocation(line: 2280, column: 74, scope: !11124, inlinedAt: !11127)
!11164 = !DILocation(line: 2280, column: 46, scope: !11124, inlinedAt: !11127)
!11165 = !DILocation(line: 95, column: 21, scope: !11125, inlinedAt: !11126)
!11166 = !DILocation(line: 2173, column: 15, scope: !230, inlinedAt: !11130)
!11167 = !DILocation(line: 2173, column: 9, scope: !230, inlinedAt: !11130)
!11168 = !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !11137)
!11169 = !DILocation(line: 810, column: 1, scope: !214, inlinedAt: !11138)
!11170 = !DILocation(line: 198, column: 21, scope: !11136, inlinedAt: !11129)
!11171 = !DILocation(line: 195, column: 29, scope: !11128, inlinedAt: !11129)
!11172 = !DILocation(line: 95, column: 35, scope: !11125, inlinedAt: !11126)
!11173 = !DILocation(line: 116, column: 9, scope: !231, inlinedAt: !11139)
!11174 = !DILocation(line: 2174, column: 22, scope: !232, inlinedAt: !11130)
!11175 = !DILocation(line: 196, column: 39, scope: !11128, inlinedAt: !11129)
!11176 = !DILocation(line: 116, column: 15, scope: !231, inlinedAt: !11139)
!11177 = !DILocation(line: 118, column: 38, scope: !233, inlinedAt: !11139)
!11178 = !DILocation(line: 131, column: 38, scope: !235, inlinedAt: !11142)
!11179 = !DILocation(line: 2509, column: 32, scope: !11113, inlinedAt: !11114)
!11180 = !DILocation(line: 2512, column: 5, scope: !11111, inlinedAt: !11114)
!11181 = !DILocation(line: 0, scope: !11112, inlinedAt: !11114)
!11182 = !DILocation(line: 122, column: 6, scope: !11105)
!11183 = distinct !DISubprogram(name: "try_fold<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::apply_window_spec::{closure_env#0}, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::apply_window_spec::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB27_18SQLFunctionVisitor17apply_window_spec0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3u_8try_folduNCINvNvB3u_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6W_ENcNtB7H_5Break0E0B7H_E0IB7I_B7H_EEB29_", scope: !688, file: !684, line: 115, type: !533, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11184 = distinct !{!11184, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_"}
!11185 = distinct !{!11185, !11184, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_: argument 0"}
!11186 = distinct !{!11186, !11184, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_: argument 1"}
!11187 = distinct !{!11187, i1 true, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql"}
!11188 = distinct !{!11188, !11187, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql: argument 0"}
!11189 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<sqlparser::ast::Expr>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&sqlparser::ast::Expr, core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>, polars_sql::functions::{impl#2}::apply_window_spec::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::apply_window_spec::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB5G_18SQLFunctionVisitor17apply_window_spec0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_", scope: !714, file: !711, line: 2501, type: !578, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11190 = distinct !DILexicalBlock(scope: !11189, file: !711, line: 2507, column: 9)
!11191 = distinct !DILexicalBlock(scope: !11190, file: !711, line: 2508, column: 41)
!11192 = distinct !DILocation(line: 121, column: 19, scope: !11183)
!11193 = distinct !DILocation(line: 2508, column: 34, scope: !11191, inlinedAt: !11192)
!11194 = distinct !DILocation(line: 180, column: 28, scope: !239, inlinedAt: !11193)
!11195 = distinct !{!11195, i1 true, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_"}
!11196 = distinct !{!11196, !11195, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_: argument 1"}
!11197 = distinct !{!11197, !11195, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_: argument 0"}
!11198 = distinct !DILocation(line: 185, column: 40, scope: !239, inlinedAt: !11193)
!11199 = distinct !{!11199, i1 true, !"_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor17apply_window_spec0B9_"}
!11200 = distinct !{!11200, !11199, !"_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor17apply_window_spec0B9_: argument 1"}
!11201 = distinct !{!11201, !11199, !"_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor17apply_window_spec0B9_: argument 0"}
!11202 = distinct !DISubprogram(name: "{closure#0}", linkageName: "_RNCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB7_18SQLFunctionVisitor17apply_window_spec0B9_", scope: !11228, file: !886, line: 2418, type: !578, scopeLine: 2418, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11203 = distinct !DISubprogram(name: "{closure#0}<&sqlparser::ast::Expr, core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>, polars_sql::functions::{impl#2}::apply_window_spec::{closure_env#0}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::apply_window_spec::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB4p_18SQLFunctionVisitor17apply_window_spec0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7A_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_", scope: !837, file: !684, line: 95, type: !578, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11204 = distinct !DILocation(line: 2509, column: 21, scope: !11191, inlinedAt: !11192)
!11205 = distinct !DILocation(line: 95, column: 28, scope: !11203, inlinedAt: !11204)
!11206 = distinct !DISubprogram(name: "{closure#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::functions::{impl#2}::apply_window_spec::{closure_env#0}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>", linkageName: "_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor17apply_window_spec0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5j_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6v_ENcNtB7g_5Break0E0B7g_E0B2s_", scope: !840, file: !839, line: 195, type: !578, scopeLine: 195, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11207 = distinct !DILocation(line: 95, column: 21, scope: !11203, inlinedAt: !11204)
!11208 = distinct !DILocation(line: 195, column: 44, scope: !11206, inlinedAt: !11207)
!11209 = distinct !{!11209, i1 true, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql"}
!11210 = distinct !{!11210, !11209, !"_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECshquuC4dCYVj_10polars_sql: argument 0"}
!11211 = distinct !{!11211, i1 true, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor17apply_window_spec0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5j_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6v_ENcNtB7g_5Break0E0B7g_E0B2s_"}
!11212 = distinct !{!11212, !11211, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor17apply_window_spec0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5j_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6v_ENcNtB7g_5Break0E0B7g_E0B2s_: argument 1"}
!11213 = distinct !{!11213, !11211, !"_RNCINvXNtNtCscgRAwXFJnXP_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtNtB9_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs0_NtCshquuC4dCYVj_10polars_sql9functionsNtB2q_18SQLFunctionVisitor17apply_window_spec0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB5j_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtB9_3ops12control_flow11ControlFlowB6v_ENcNtB7g_5Break0E0B7g_E0B2s_: argument 0"}
!11214 = distinct !DILexicalBlock(scope: !11206, file: !839, line: 197, column: 17)
!11215 = distinct !DILocation(line: 198, column: 21, scope: !11214, inlinedAt: !11207)
!11216 = distinct !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !11215)
!11217 = distinct !DILocation(line: 2509, column: 21, scope: !11191, inlinedAt: !11192)
!11218 = distinct !DILexicalBlock(scope: !11191, file: !711, line: 2509, column: 32)
!11219 = distinct !DILexicalBlock(scope: !11218, file: !711, line: 2509, column: 32)
!11220 = distinct !DILocation(line: 2509, column: 21, scope: !11219, inlinedAt: !11192)
!11221 = !{i64 -7917484879577477639}
!11222 = !{!11185}
!11223 = !{!11186}
!11224 = !{!11188, !11186}
!11225 = !{!11197, !11196, !11185, !11186}
!11226 = !{!11185, !11186}
!11227 = !{!11201, !11200, !11197, !11196, !11185, !11186}
!11228 = !DINamespace(name: "apply_window_spec", scope: !888)
!11229 = !{!11197, !11185, !11186}
!11230 = !{!11210}
!11231 = !{!11213, !11212, !11197, !11196, !11185, !11186}
!11232 = !{!11213, !11212, !11197, !11185, !11186}
!11233 = !{!11196, !11185, !11186}
!11234 = !DILocation(line: 121, column: 19, scope: !11183)
!11235 = !DILocation(line: 1717, column: 9, scope: !236, inlinedAt: !11194)
!11236 = !DILocation(line: 180, column: 28, scope: !239, inlinedAt: !11193)
!11237 = !DILocation(line: 121, column: 47, scope: !11183)
!11238 = !DILocation(line: 659, column: 28, scope: !240, inlinedAt: !11198)
!11239 = !DILocation(line: 185, column: 25, scope: !239, inlinedAt: !11193)
!11240 = !DILocation(line: 2509, column: 21, scope: !11191, inlinedAt: !11192)
!11241 = !DILocation(line: 2418, column: 58, scope: !11202, inlinedAt: !11205)
!11242 = !DILocation(line: 2418, column: 30, scope: !11202, inlinedAt: !11205)
!11243 = !DILocation(line: 95, column: 21, scope: !11203, inlinedAt: !11204)
!11244 = !DILocation(line: 2173, column: 15, scope: !230, inlinedAt: !11208)
!11245 = !DILocation(line: 2173, column: 9, scope: !230, inlinedAt: !11208)
!11246 = !DILocation(line: 810, column: 1, scope: !213, inlinedAt: !11215)
!11247 = !DILocation(line: 810, column: 1, scope: !214, inlinedAt: !11216)
!11248 = !DILocation(line: 198, column: 21, scope: !11214, inlinedAt: !11207)
!11249 = !DILocation(line: 195, column: 29, scope: !11206, inlinedAt: !11207)
!11250 = !DILocation(line: 95, column: 35, scope: !11203, inlinedAt: !11204)
!11251 = !DILocation(line: 116, column: 9, scope: !231, inlinedAt: !11217)
!11252 = !DILocation(line: 2174, column: 22, scope: !232, inlinedAt: !11208)
!11253 = !DILocation(line: 196, column: 39, scope: !11206, inlinedAt: !11207)
!11254 = !DILocation(line: 116, column: 15, scope: !231, inlinedAt: !11217)
!11255 = !DILocation(line: 118, column: 38, scope: !233, inlinedAt: !11217)
!11256 = !DILocation(line: 131, column: 38, scope: !235, inlinedAt: !11220)
!11257 = !DILocation(line: 2509, column: 32, scope: !11191, inlinedAt: !11192)
!11258 = !DILocation(line: 2512, column: 5, scope: !11189, inlinedAt: !11192)
!11259 = !DILocation(line: 0, scope: !11190, inlinedAt: !11192)
!11260 = !DILocation(line: 122, column: 6, scope: !11183)
!11261 = distinct !DISubprogram(name: "try_fold<core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::execute_select::{closure_env#6}, (), core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::execute_select::{closure_env#6}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>>", linkageName: "_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB27_10SQLContext14execute_selects4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3k_8try_folduNCINvNvB3k_12try_for_each4callNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB6M_ENcNtB7x_5Break0E0B7x_E0IB7y_B7x_EEB29_", scope: !688, file: !684, line: 115, type: !533, scopeLine: 115, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11262 = distinct !{!11262, i1 true, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5G_10SQLContext14execute_selects4_0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_"}
!11263 = distinct !{!11263, !11262, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5G_10SQLContext14execute_selects4_0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_: argument 0"}
!11264 = distinct !{!11264, !11262, !"_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5G_10SQLContext14execute_selects4_0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_: argument 1"}
!11265 = distinct !{!11265, i1 true, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql"}
!11266 = distinct !{!11266, !11265, !"_RNvXs2J_NtNtCscgRAwXFJnXP_4core5slice4iterINtB6_4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator4nextCshquuC4dCYVj_10polars_sql: argument 0"}
!11267 = distinct !DISubprogram(name: "try_fold<core::slice::iter::Iter<sqlparser::ast::Expr>, (), core::iter::adapters::map::map_try_fold::{closure_env#0}<&sqlparser::ast::Expr, core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>, polars_sql::context::{impl#3}::execute_select::{closure_env#6}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::execute_select::{closure_env#6}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>>, core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>>", linkageName: "_RINvYINtNtNtCscgRAwXFJnXP_4core5slice4iter4IterNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1r_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B3e_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB5G_10SQLContext14execute_selects4_0NCINvXB2h_INtB2h_12GenericShuntINtB2f_3MapB3_B5y_EIB2T_NtNtBa_7convert10InfallibleB3Z_EEB1l_8try_folduNCINvNvB1l_12try_for_each4callB3e_B5n_NcNtB5n_5Break0E0B5n_E0E0B4I_EB5I_", scope: !714, file: !711, line: 2501, type: !578, scopeLine: 2501, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11268 = distinct !DILexicalBlock(scope: !11267, file: !711, line: 2507, column: 9)
!11269 = distinct !DILexicalBlock(scope: !11268, file: !711, line: 2508, column: 41)
!11270 = distinct !DILocation(line: 121, column: 19, scope: !11261)
!11271 = distinct !DILocation(line: 2508, column: 34, scope: !11269, inlinedAt: !11270)
!11272 = distinct !DILocation(line: 180, column: 28, scope: !239, inlinedAt: !11271)
!11273 = distinct !DILocation(line: 185, column: 40, scope: !239, inlinedAt: !11271)
!11274 = distinct !{!11274, i1 true, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4p_10SQLContext14execute_selects4_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7q_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_"}
!11275 = distinct !{!11275, !11274, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4p_10SQLContext14execute_selects4_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7q_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_: argument 1"}
!11276 = distinct !{!11276, i1 true, !"_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects4_0B9_"}
!11277 = distinct !{!11277, !11276, !"_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects4_0B9_: argument 2"}
!11278 = distinct !DISubprogram(name: "{closure#0}<&sqlparser::ast::Expr, core::result::Result<polars_plan::dsl::expr::Expr, polars_error::PolarsError>, (), core::ops::control_flow::ControlFlow<core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, ()>, polars_sql::context::{impl#3}::execute_select::{closure_env#6}, core::iter::adapters::{impl#0}::try_fold::{closure_env#0}<core::iter::adapters::map::Map<core::slice::iter::Iter<sqlparser::ast::Expr>, polars_sql::context::{impl#3}::execute_select::{closure_env#6}>, core::result::Result<core::convert::Infallible, polars_error::PolarsError>, (), core::iter::traits::iterator::Iterator::try_for_each::call::{closure_env#0}<polars_plan::dsl::expr::Expr, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>, fn(polars_plan::dsl::expr::Expr) -> core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>, core::ops::control_flow::ControlFlow<polars_plan::dsl::expr::Expr, ()>>>", linkageName: "_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4p_10SQLContext14execute_selects4_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7q_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_", scope: !837, file: !684, line: 95, type: !578, scopeLine: 95, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11279 = distinct !DILocation(line: 2509, column: 21, scope: !11269, inlinedAt: !11270)
!11280 = distinct !DISubprogram(name: "{closure#6}", linkageName: "_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects4_0B9_", scope: !706, file: !702, line: 1477, type: !533, scopeLine: 1477, flags: DIFlagPrototyped, spFlags: DISPFlagLocalToUnit | DISPFlagDefinition | DISPFlagOptimized, unit: !0, templateParams: !532)
!11281 = distinct !DILocation(line: 95, column: 28, scope: !11278, inlinedAt: !11279)
!11282 = distinct !{!11282, !11274, !"_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldRNtNtCsaRr8xKSRVhT_9sqlparser3ast4ExprINtNtBa_6result6ResultNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3s_B1X_EENCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB4p_10SQLContext14execute_selects4_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB4h_EIB1C_NtNtBa_7convert10InfallibleB2I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB7q_12try_for_each4callB1X_B46_NcNtB46_5Break0E0B46_E0E0B4r_: argument 0"}
!11283 = distinct !{!11283, !11276, !"_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects4_0B9_: argument 1"}
!11284 = distinct !{!11284, !11276, !"_RNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB7_10SQLContext14execute_selects4_0B9_: argument 0"}
!11285 = distinct !DILexicalBlock(scope: !11280, file: !702, line: 1478, column: 25)
!11286 = distinct !DILocation(line: 1479, column: 78, scope: !11285, inlinedAt: !11281)
!11287 = distinct !{!11287, i1 true, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE11map_or_elseINtNtB5_6result6ResultBI_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2Y_10SQLContext14execute_selects4_00NcNtB1H_2Ok0EB30_"}
!11288 = distinct !{!11288, !11287, !"_RINvMNtCscgRAwXFJnXP_4core6optionINtB3_6OptionNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprE11map_or_elseINtNtB5_6result6ResultBI_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorENCNCNvMs1_NtCshquuC4dCYVj_10polars_sql7contextNtB2Y_10SQLContext14execute_selects4_00NcNtB1H_2Ok0EB30_: argument 1"}
end_hunk_1
