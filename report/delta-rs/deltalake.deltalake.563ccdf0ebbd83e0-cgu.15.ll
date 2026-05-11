inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol11checkpoints21create_checkpoint_for00s2_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 16               ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12 ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !522)
  call void @llvm.experimental.noalias.scope.decl(metadata !525)
  %i.k = load i64, ptr %.sroa.0.0.copyload, align 8, !range !100, !alias.scope !525, !noalias !528, !noundef !12
end_hunk_0
begin_hunk_1_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol11checkpoints21create_checkpoint_for00s2_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store <2 x ptr> %i.j, ptr %i.h, align 16, !noalias !522
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !531)
  call void @llvm.experimental.noalias.scope.decl(metadata !534)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i), !noalias !528
end_hunk_1
begin_hunk_2_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol11checkpoints21create_checkpoint_for00s2_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
          to label %.thread unwind label %bb.ab

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s2_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB2i_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc4, %bb.x, %.noexc10.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
end_hunk_2
begin_hunk_3_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol14log_compaction16compact_logs_for00s0_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [40 x i8], align 16               ; 10 uses
  %i.i = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.ac

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12 ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.j = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !551)
  call void @llvm.experimental.noalias.scope.decl(metadata !554)
  %i.k = load i64, ptr %.sroa.0.0.copyload, align 8, !range !100, !alias.scope !554, !noalias !557, !noundef !12
end_hunk_3
begin_hunk_4_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol14log_compaction16compact_logs_for00s0_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 8 ; 2 uses
  store <2 x ptr> %i.j, ptr %i.h, align 16, !noalias !551
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !560)
  call void @llvm.experimental.noalias.scope.decl(metadata !563)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i), !noalias !557
end_hunk_4
begin_hunk_5_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB11_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4z_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4z_8protocol14log_compaction16compact_logs_for00s0_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
          to label %.thread unwind label %bb.ab

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol14log_compaction16compact_logs_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTINtNtB2g_6option6OptionNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc4, %bb.x, %.noexc10.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  ret void
end_hunk_5
begin_hunk_6_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4b_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4b_8protocol11checkpoints21create_checkpoint_for00s0_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = alloca [16 x i8], align 8                ; 5 uses
  %i.i = alloca [40 x i8], align 16               ; 9 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  invoke void @_RNvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher11set_default(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %1)
          to label %bb.b unwind label %bb.ah

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8, !nonnull !12, !noundef !12 ; 11 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.k = load <2 x ptr>, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 24
  call void @llvm.experimental.noalias.scope.decl(metadata !578)
  call void @llvm.experimental.noalias.scope.decl(metadata !581)
  %i.l = load i64, ptr %.sroa.0.0.copyload, align 8, !range !100, !alias.scope !581, !noalias !584, !noundef !12
end_hunk_6
begin_hunk_7_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4b_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4b_8protocol11checkpoints21create_checkpoint_for00s0_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.6.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 2 uses
  store <2 x ptr> %i.k, ptr %i.i, align 16, !noalias !578
  %.sroa.7.8..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %.sroa.7.8..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx, i64 24, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !587)
  call void @llvm.experimental.noalias.scope.decl(metadata !590)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.3.i.i), !noalias !584
end_hunk_7
begin_hunk_8_@_RINvNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12with_defaultINtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorENCNCINvNtB4b_6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB4b_8protocol11checkpoints21create_checkpoint_for00s0_0BW_Es_00ECs7p2uQeJxui2_9deltalake:bb.a
          to label %.thread unwind label %bb.ag

_RNCNCINvNtCs14kWLkQVSKO_14deltalake_core6kernel24spawn_blocking_with_spanNCNCNCNvNtNtB8_8protocol11checkpoints21create_checkpoint_for00s0_0INtNtCsbvkFyIu7lgC_4core6result6ResultTNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtNtCs8ulvy0Wg6Ot_12delta_kernel21action_reconciliation10log_replay28ActionReconciliationIteratorENtNtB8_6errors15DeltaTableErrorEEs_00Cs7p2uQeJxui2_9deltalake.exit: ; preds = %.noexc4, %bb.ac, %.noexc9.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs2y6mmZ7bjoM_12tracing_core10dispatcher12DefaultGuardECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(24) %i.j)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  ret void
end_hunk_8
begin_hunk_9_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldBX_INtNtB1W_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1W_3ops12control_flow11ControlFlowIB6b_B3X_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB78_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB30_INtB30_12GenericShuntINtB2Y_3MapBI_B71_EIB3B_NtNtB1W_7convert10InfallibleB5a_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3X_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6a_ECs7p2uQeJxui2_9deltalake:bb.a
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 11 uses
  %i.h = alloca [456 x i8], align 8               ; 16 uses
  %.sroa.10.i = alloca [24 x i8], align 8         ; 7 uses
  %.sroa.9 = alloca [24 x i8], align 8            ; 2 uses
  %.sroa.10 = alloca [160 x i8], align 16         ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
end_hunk_9
begin_hunk_10_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldBX_INtNtB1W_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1W_3ops12control_flow11ControlFlowIB6b_B3X_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB78_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB30_INtB30_12GenericShuntINtB2Y_3MapBI_B71_EIB3B_NtNtB1W_7convert10InfallibleB5a_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3X_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6a_ECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.222.i.sroa.6.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !6003
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !6003
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(160) %.sroa.10, ptr noundef nonnull align 16 dereferenceable(160) %.sroa.718.i, i64 160, i1 false)
  br label %bb.an

end_hunk_10
begin_hunk_11_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldBX_INtNtB1W_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1W_3ops12control_flow11ControlFlowIB6b_B3X_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB78_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB30_INtB30_12GenericShuntINtB2Y_3MapBI_B71_EIB3B_NtNtB1W_7convert10InfallibleB5a_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3X_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6a_ECs7p2uQeJxui2_9deltalake:bb.a
  %.sroa.4.sroa.6.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val, i64 8
  store ptr %.sroa.9.0.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx7.i, align 8, !noalias !6051
  %.sroa.4.sroa.7.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val, i64 16
  br label %bb.an

bb.al:                                            ; preds = %bb.a
end_hunk_11
begin_hunk_12_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldBX_INtNtB1W_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1W_3ops12control_flow11ControlFlowIB6b_B3X_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB78_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB30_INtB30_12GenericShuntINtB2Y_3MapBI_B71_EIB3B_NtNtB1W_7convert10InfallibleB5a_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3X_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6a_ECs7p2uQeJxui2_9deltalake:bb.a
  ret void

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i, %bb.aj
  %.sroa.4.sroa.7.0..8.val.sroa_idx9.i.sink = phi ptr [ %.sroa.4.sroa.7.0..8.val.sroa_idx9.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.9, %bb.aj ]
  %.sroa.8.1 = phi ptr [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.5.0.copyload.i, %bb.aj ]
  %.sroa.6.1 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.4.0.copyload.i, %bb.aj ]
  %.sroa.06.0 = phi i64 [ 38, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs7p2uQeJxui2_9deltalake.exit.i.i ], [ %.sroa.016.0.copyload.i, %bb.aj ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.0..8.val.sroa_idx9.i.sink, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.10.i, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.718.i)
  store i64 %.sroa.06.0, ptr %0, align 16, !alias.scope !6055
end_hunk_12
