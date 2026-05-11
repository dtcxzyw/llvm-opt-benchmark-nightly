inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00ENvYNCNCB1z_00NtNtNtCs8CRAYtH5WmW_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB3j_14try_maybe_done12TryMaybeDoneINtNtB3h_11into_future10IntoFutureB35_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB62_8for_each4callB4C_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecB75_E14extend_trustedBN_E0E0EB1J_:bb.a
  %.sroa.7.0.copyload.i.i = load ptr, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !alias.scope !3817, !noalias !3816
  %.sroa.8.24.copyload.i.i = load ptr, ptr %0, align 8, !alias.scope !3816, !noalias !3817 ; 3 uses
  %.sroa.10.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.10.24.copyload.i.i = load ptr, ptr %.sroa.10.24..sroa_idx.i.i, align 8, !alias.scope !3816, !noalias !3817 ; 2 uses
  %i.h = icmp ult i64 %i.e, %i.g
  br i1 %i.h, label %.lr.ph.i.i.i, label %_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_INtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00ENvYNCNCB1v_00NtNtNtCs8CRAYtH5WmW_12futures_util6future10try_future12TryFutureExt11into_futureENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldINtNtB3d_11into_future10IntoFutureB31_EINtNtB3f_14try_maybe_done12TryMaybeDoneB5p_EuNcNtB62_6Future0NCINvNvB4u_8for_each4callB62_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7D_3VecB62_E14extend_trustedIBO_BN_B6L_EE0E0E0EB1F_.exit

end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtNtBc_3ops5range5RangejENCNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter21execute_plan_to_batch00ENvYNCNCB1z_00NtNtNtCs8CRAYtH5WmW_12futures_util6future10try_future12TryFutureExt11into_futureENcNtINtNtB3j_14try_maybe_done12TryMaybeDoneINtNtB3h_11into_future10IntoFutureB35_EE6Future0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB62_8for_each4callB4C_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB7i_3VecB75_E14extend_trustedBN_E0E0EB1J_:bb.a
  store <2 x ptr> %i.k, ptr %i.c, align 16, !noalias !3818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3818
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3818
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.10.24.copyload.i.i) ]
  %i.o = load ptr, ptr %i.i, align 8, !invariant.load !4, !noalias !3818, !nonnull !4
  %i.p = invoke noundef nonnull ptr %i.o(ptr noundef nonnull %.sroa.10.24.copyload.i.i)
          to label %bb.g unwind label %bb.f, !noalias !3818 ; 4 uses
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  %.sroa.4.sroa.7.i.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.7.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.8.i.i.i = alloca [64 x i8], align 8      ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10979)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10982)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10984)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !10987)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted.i.i = load ptr, ptr %1, align 8, !alias.scope !10989, !noalias !10992, !nonnull !4, !noundef !4 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !alias.scope !10989, !noalias !10992, !nonnull !4, !noundef !4
  %i.r = icmp eq ptr %.promoted.i.i, %i.q
  br i1 %i.r, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.s = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.611.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  %.sroa.4.sroa.6.0..8.val.sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.4.sroa.7.0..8.val.sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre.i.i = load i64, ptr %i.o, align 8, !alias.scope !10982, !noalias !10995
  br label %bb.b

bb.b:                                             ; preds = %bb.z, %.lr.ph.i.i
  %i.aa = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bn, %bb.z ]
  %i.ab = phi ptr [ %.promoted.i.i, %.lr.ph.i.i ], [ %8, %bb.z ] ; 6 uses
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 144
  store ptr %i.ac, ptr %1, align 8, !alias.scope !10989, !noalias !10992
  call void @llvm.experimental.noalias.scope.decl(metadata !11000)
  call void @llvm.experimental.noalias.scope.decl(metadata !11001)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %.val.i.i.i.i = load ptr, ptr %4, align 8, !noalias !11004, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !11006)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !11004
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !11009
  store i64 %i.aa, ptr %i.n, align 8, !noalias !11009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !11009
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !11009
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 88
  call void @_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE26convert_data_type_to_fieldB14_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ad), !noalias !11011
  %i.ae = load i64, ptr %i.l, align 8, !range !3300, !noalias !11009, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.ae, 20
  %i.af = load ptr, ptr %i.s, align 8, !noalias !11009 ; 2 uses
end_hunk_3
begin_hunk_4_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !11009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !11004
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
end_hunk_4
begin_hunk_5_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !11027
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !11027
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !11009
  %5 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !11009
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !11009
  invoke void @_RNvMs5_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_15IdentNormalizer9normalize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
end_hunk_5
begin_hunk_6_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !11012 ; 2 uses
  %.sroa.72.0.copyload.i.i.i.i = load ptr, ptr %.sroa.72.0..sroa_idx.i.i.i.i, align 8, !noalias !11012 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !11012
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx.i.i.i.i, i64 64, i1 false), !noalias !11004
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !11009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !11009
  call void @llvm.experimental.noalias.scope.decl(metadata !11031)
end_hunk_6
begin_hunk_7_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0B16_.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !11009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !11009
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !11004
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !11004
  %i.bi = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.bi, label %.loopexit.i, label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0B7v_.exit.i.i

end_hunk_7
begin_hunk_8_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %6 = load i64, ptr %i.o, align 8, !alias.scope !10982, !noalias !11048, !noundef !4
  %i.bm = add i64 %6, 1
  store i64 %i.bm, ptr %i.o, align 8, !alias.scope !10982, !noalias !11048
  br label %.loopexit8.i

end_hunk_8
begin_hunk_9_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %7 = load i64, ptr %i.o, align 8, !alias.scope !10982, !noalias !11048, !noundef !4
  %i.bn = add i64 %7, 1                           ; 2 uses
  store i64 %i.bn, ptr %i.o, align 8, !alias.scope !10982, !noalias !11048
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.z, label %.loopexit8.i
end_hunk_9
begin_hunk_10_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EEB3I_:bb.a
  br label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB5G_B3X_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6D_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXB7_INtB7_12GenericShuntINtB36_3MapBS_B6v_EIB3C_NtNtBb_7convert10InfallibleB4F_EEB2j_8try_folduNCINvNvB2j_12try_for_each4callB3X_B6k_NcNtB6k_5Break0E0B6k_E0E0B5F_EB7D_.exit

bb.z:                                             ; preds = %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0B7v_.exit.i.i
  %8 = load ptr, ptr %1, align 8, !alias.scope !10989, !noalias !10992, !nonnull !4, !noundef !4 ; 2 uses
  %9 = load ptr, ptr %i.p, align 8, !alias.scope !10989, !noalias !10992, !nonnull !4, !noundef !4
  %i.bo = icmp eq ptr %8, %9
  br i1 %i.bo, label %._crit_edge.i.i, label %bb.b

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB5G_B3X_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6D_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXB7_INtB7_12GenericShuntINtB36_3MapBS_B6v_EIB3C_NtNtBb_7convert10InfallibleB4F_EEB2j_8try_folduNCINvNvB2j_12try_for_each4callB3X_B6k_NcNtB6k_5Break0E0B6k_E0E0B5F_EB7D_.exit: ; preds = %._crit_edge.i.i, %.loopexit8.i
end_hunk_10
begin_hunk_11_@llvm.vector.reduce.add.v2i64
!10997 = distinct !{!10997, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0B7v_"}
!10998 = distinct !{!10998, !10997, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0B7v_: argument 1"}
!10999 = distinct !{!10999, !10997, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0B7v_: argument 2"}
!11000 = !{!10999}
!11001 = !{!11002}
!11002 = distinct !{!11002, !11003, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTjRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3R_B28_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB4O_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterB12_EEB4G_EIB1N_NtNtBa_7convert10InfallibleB2Q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9N_12try_for_each4callB28_B4v_NcNtB4v_5Break0E0B4v_E0E0B5O_: argument 1"}
!11003 = distinct !{!11003, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTjRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3R_B28_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB4O_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterB12_EEB4G_EIB1N_NtNtBa_7convert10InfallibleB2Q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9N_12try_for_each4callB28_B4v_NcNtB4v_5Break0E0B4v_E0E0B5O_"}
!11004 = !{!11005, !11002, !10996, !10998, !10999, !10985, !10988, !10993, !10980, !10983, !10994}
!11005 = distinct !{!11005, !11003, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTjRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3R_B28_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB4O_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterB12_EEB4G_EIB1N_NtNtBa_7convert10InfallibleB2Q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9N_12try_for_each4callB28_B4v_NcNtB4v_5Break0E0B4v_E0E0B5O_: argument 0"}
!11006 = !{!11007}
!11007 = distinct !{!11007, !11008, !"_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0B16_: argument 1"}
!11008 = distinct !{!11008, !"_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0B16_"}
!11009 = !{!11010, !11007, !11005, !11002, !10996, !10998, !10999, !10985, !10988, !10993, !10980, !10983, !10994}
!11010 = distinct !{!11010, !11008, !"_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0B16_: argument 0"}
!11011 = !{!11010, !11005, !10996, !10998, !10985, !10988, !10993, !10980, !10983, !10994}
!11012 = !{!11007, !11005, !11002, !10996, !10998, !10999, !10985, !10988, !10993, !10980, !10983, !10994}
!11013 = !{!11007, !11002, !10999}
!11014 = !{!11015}
!11015 = distinct !{!11015, !11016, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!11016 = distinct !{!11016, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core"}
end_hunk_11
begin_hunk_12_@llvm.vector.reduce.add.v2i64
!11018 = distinct !{!11018, !11019, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!11019 = distinct !{!11019, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!11020 = !{!11018, !11015}
!11021 = !{!11018, !11015, !11010, !11005, !10996, !10998, !10985, !10988, !10993, !10980, !10983, !10994}
!11022 = !{!11023}
!11023 = distinct !{!11023, !11024, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!11024 = distinct !{!11024, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!11025 = !{!11026}
!11026 = distinct !{!11026, !11024, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!11027 = !{!11023, !11026, !11010, !11007, !11005, !11002, !10996, !10998, !10999, !10985, !10988, !10993, !10980, !10983, !10994}
!11028 = !{!11023, !11010, !11005, !10996, !10998, !10985, !10988, !10993, !10980, !10983, !10994}
!11029 = !{i32 0, i32 1114113}
!11030 = !{!11026, !11010, !11007, !11005, !11002, !10996, !10998, !10999, !10985, !10988, !10993, !10980, !10983, !10994}
!11031 = !{!11032}
!11032 = distinct !{!11032, !11033, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!11033 = distinct !{!11033, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs14kWLkQVSKO_14deltalake_core"}
end_hunk_12
begin_hunk_13_@llvm.vector.reduce.add.v2i64
!11035 = distinct !{!11035, !11036, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core: argument 0"}
!11036 = distinct !{!11036, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core"}
!11037 = !{!11035, !11032}
!11038 = !{!11035, !11032, !11010, !11005, !10996, !10998, !10985, !10988, !10993, !10980, !10983, !10994}
!11039 = !{!11040}
!11040 = distinct !{!11040, !11041, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core: argument 0"}
!11041 = distinct !{!11041, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core"}
!11042 = !{!11043, !11045, !11005, !11002, !10996, !10998, !10985, !10988, !10993, !10980, !10983, !10994}
!11043 = distinct !{!11043, !11044, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_9enumerate9EnumerateINtNtNtB9_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB31_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7w_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB8I_ENcNtB9q_5Break0E0B9q_E0B41_: argument 0"}
!11044 = distinct !{!11044, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_9enumerate9EnumerateINtNtNtB9_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB31_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7w_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB8I_ENcNtB9q_5Break0E0B9q_E0B41_"}
!11045 = distinct !{!11045, !11044, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_9enumerate9EnumerateINtNtNtB9_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB31_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE24convert_simple_data_types_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7w_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB8I_ENcNtB9q_5Break0E0B9q_E0B41_: argument 1"}
!11046 = !{!11043, !11045, !11005, !10996, !10998, !10985, !10988, !10993, !10980, !10983, !10994}
!11047 = !{!11043, !11005, !11002, !10996, !10998, !10985, !10988, !10993, !10980, !10983, !10994}
!11048 = !{!10996, !10998, !10985, !10988, !10993, !10980, !10994}
!11049 = !{!10985, !10988, !10993, !10980, !10983, !10994}
!11050 = !{!11051, !10985, !10980}
end_hunk_13
begin_hunk_14_@llvm.vector.reduce.add.v2i64
!13320 = distinct !{!13320, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs14kWLkQVSKO_14deltalake_core"}
!13321 = !{!13312, !13306, !13303, !13298, !13307, !13301, !13290, !13293}
!13322 = !{!13306, !13298, !13307, !13290, !13293}
!13323 = !{!13303, !13298, !13307, !13301, !13290, !13293}
!13324 = !{!13325}
!13325 = distinct !{!13325, !13326, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_: argument 0"}
!13326 = distinct !{!13326, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCs14kWLkQVSKO_14deltalake_core6errors15DeltaTableErrorEEEB1T_"}
end_hunk_14
