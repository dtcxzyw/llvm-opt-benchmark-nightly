inline.NumInlined: 8054
inline.NumDeleted: 3226
begin_hunk_0_@_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan21maintains_input_order:bb.a
  store i64 1, ptr %i.h, align 8, !alias.scope !14626, !noalias !14631
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14632
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14632
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 1, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan8children.exit
end_hunk_0
begin_hunk_1_@_RNvXs5_NtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion15data_validationNtB5_18DataValidationExecNtNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan13ExecutionPlan21maintains_input_order:bb.a
  store ptr %i.o, ptr %i.q, align 8, !noalias !14632
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store i64 0, ptr %i.r, align 8, !noalias !14632
  invoke void @_RNvMs3_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecbE11extend_withCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef range(i64 0, 1152921504606846976) 1, i1 noundef zeroext true)
          to label %bb.g unwind label %bb.d, !noalias !14632

bb.d:                                             ; preds = %_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner16with_capacity_inCs14kWLkQVSKO_14deltalake_core.exit.i
end_hunk_1
begin_hunk_2_@_RNvYNtNtCs5wg436RVUAP_24datafusion_physical_plan5empty9EmptyExecNtNtB6_14execution_plan13ExecutionPlan21maintains_input_orderCs14kWLkQVSKO_14deltalake_core:bb.a
  store i64 0, ptr %i.d, align 8, !alias.scope !18006
  tail call void @llvm.experimental.noalias.scope.decl(metadata !18009)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !18009
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, 1152921504606846976) 0, i1 noundef zeroext true, i64 noundef 1, i64 noundef 1)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.a
end_hunk_2
