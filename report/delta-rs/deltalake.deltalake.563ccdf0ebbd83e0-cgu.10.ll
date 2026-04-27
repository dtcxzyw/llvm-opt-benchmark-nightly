inline.NumInlined: 6556
inline.NumDeleted: 2964
begin_hunk_0_@_RINvMs6_NtNtCsbvkFyIu7lgC_4core3fmt8buildersNtB6_8DebugMap7entriesRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ERINtNtB18_3vec3VecjEINtNtCs2HSpDNxY7OE_9hashbrown3map4IterB13_B2Z_EECs7p2uQeJxui2_9deltalake:bb.a
  %i.l = zext nneg i16 %i.k to i64
  %i.m = and i16 %i.j, %.lcssa.i.i
  %i.n = sub nsw i64 0, %i.l
  %i.o = getelementptr inbounds [40 x i8], ptr %.sroa.0.1, i64 %i.n ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.o) ]
  %i.p = add i64 %.sroa.107.020, -1               ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -40
  %i.r = getelementptr inbounds i8, ptr %i.o, i64 -24
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 5 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit, label %bb.c

end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss2_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s3_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_:bb.a
  store ptr %i.g, ptr %i.a, align 8, !noalias !7065
  %i.j = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBW_13RawDeltaTable21get_active_partitionss3_0INtB7_5FnMutTRRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !7051
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7061
  br i1 %i.j, label %2, label %bb.b

2:                                                ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss2_0NCINvNvB2k_4find5checkB3R_QNCB4I_s3_0E0E0B3W_EB1y_.exit: ; preds = %bb.b, %2
  %.sroa.0.0.i = phi ptr [ %i.g, %2 ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_:bb.a
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 5 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit, label %bb.c

end_hunk_3
begin_hunk_4_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrB1o_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENCNvMsl_B2d_NtB2d_13RawDeltaTable21get_active_partitionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB3Y_4find5checkRB1o_QNCB31_s5_0E0INtNtNtBc_3ops12control_flow11ControlFlowB52_EEB2d_:bb.a
  store ptr %i.g, ptr %i.a, align 8, !noalias !7083
  %i.j = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMsl_Cs7p2uQeJxui2_9deltalakeNtBW_13RawDeltaTable21get_active_partitionss5_0INtB7_5FnMutTRRNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrEE8call_mutBW_(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !7069
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7079
  br i1 %i.j, label %2, label %bb.b

2:                                                ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.g) ]
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBK_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2q_8adapters3map12map_try_foldRBJ_RBK_uINtNtNtBa_3ops12control_flow11ControlFlowB3R_ENCNvMsl_B1y_NtB1y_13RawDeltaTable21get_active_partitionss4_0NCINvNvB2k_4find5checkB3R_QNCB4I_s5_0E0E0B3W_EB1y_.exit: ; preds = %bb.b, %2
  %.sroa.0.0.i = phi ptr [ %i.g, %2 ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}
end_hunk_4
