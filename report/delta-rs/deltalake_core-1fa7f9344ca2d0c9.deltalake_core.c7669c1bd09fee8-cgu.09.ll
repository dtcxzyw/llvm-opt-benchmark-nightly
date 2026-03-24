begin_hunk_0
_RNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss_00Bd_.exit.i.i.i.i.i.i.i: ; preds = %.noexc.i.i3.i.i.i
  %141 = extractvalue { ptr, i64 } %138, 0
  %bcmp.i.i.i.i.i.i.i.i = call i32 @bcmp(ptr %141, ptr nonnull %133, i64 %132), !noalias !4881
  %142 = icmp eq i32 %bcmp.i.i.i.i.i.i.i.i, 0
  br i1 %142, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter6ValuesNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2g_4find5checkRB1p_NCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss_00E0INtNtNtB2o_3ops12control_flow11ControlFlowB3H_EEB40_.exit.i.i.i.i.i, label %_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss_00E0B2h_.exit.i.i.i.i.i.i

_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4find5checkRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss_00E0B2h_.exit.i.i.i.i.i.i: ; preds = %_RNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot9iterators8scan_row16parse_partitionss_00Bd_.exit.i.i.i.i.i.i.i, %.noexc.i.i3.i.i.i
end_hunk_0
begin_hunk_1
  %.promoted.i = load i64, ptr %4, align 8, !alias.scope !23136, !noalias !23141 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 16
  %8 = load ptr, ptr %7, align 8, !alias.scope !23143
  %.not.i.i.i = icmp eq ptr %8, null
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 48
  %10 = load i64, ptr %9, align 8, !alias.scope !23143
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 24
end_hunk_1
begin_hunk_2
  %.promoted.i = load i64, ptr %4, align 8, !alias.scope !23148, !noalias !23153 ; 2 uses
  %7 = getelementptr inbounds nuw i8, ptr %0, i64 8
  %8 = load ptr, ptr %7, align 8, !alias.scope !23155
  %.not.i.i.i = icmp eq ptr %8, null
  %9 = getelementptr inbounds nuw i8, ptr %0, i64 40
  %10 = load i64, ptr %9, align 8, !alias.scope !23155
  %11 = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_2
