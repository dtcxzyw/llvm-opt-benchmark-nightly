inline.NumInlined: 3136
inline.NumDeleted: 1358
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.4.sroa.7.i.i.i.i = alloca [24 x i8], align 8 ; 7 uses
  %.sroa.7.i.i.i = alloca [24 x i8], align 8      ; 4 uses
  %.sroa.8.i.i.i = alloca [64 x i8], align 8      ; 4 uses
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2177)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2180)
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2182)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2185)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i)
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.q = load ptr, ptr %1, align 8, !alias.scope !2187, !noalias !2190, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = load ptr, ptr %i.p, align 8, !alias.scope !2187, !noalias !2190, !nonnull !4, !noundef !4
  %i.s = icmp eq ptr %i.q, %i.r
  br i1 %i.s, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  %.sroa.611.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.k, i64 24 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.4.sroa.6.0..8.val.sroa_idx6.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  %.sroa.4.sroa.7.0..8.val.sroa_idx8.i.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %.pre.i.i = load i64, ptr %i.o, align 8, !alias.scope !2180, !noalias !2193
  br label %bb.b

bb.b:                                             ; preds = %bb.z, %.lr.ph.i.i
  %i.ab = phi i64 [ %.pre.i.i, %.lr.ph.i.i ], [ %i.bo, %bb.z ]
  %i.ac = phi ptr [ %i.q, %.lr.ph.i.i ], [ %8, %bb.z ] ; 6 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 144
  store ptr %i.ad, ptr %1, align 8, !alias.scope !2187, !noalias !2190
  call void @llvm.experimental.noalias.scope.decl(metadata !2198)
  call void @llvm.experimental.noalias.scope.decl(metadata !2199)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.9.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i.i.i.i)
  %.val.i.i.i.i = load ptr, ptr %4, align 8, !noalias !2202, !nonnull !4, !align !29, !noundef !4 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !2204)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !2202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !2207
  store i64 %i.ab, ptr %i.n, align 8, !noalias !2207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m), !noalias !2207
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l), !noalias !2207
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 88
  call void @_RNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB5_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE26convert_data_type_to_fieldCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %i.l, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.val.i.i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ae), !noalias !2209
  %i.af = load i64, ptr %i.l, align 8, !range !1815, !noalias !2207, !noundef !4 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.af, 20
  %i.ag = load ptr, ptr %i.t, align 8, !noalias !2207 ; 2 uses
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !2202
  br label %.loopexit.i

bb.c:                                             ; preds = %bb.b
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2225
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2225
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2207
  %5 = getelementptr inbounds nuw i8, ptr %.val.i.i.i.i, i64 15
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2207
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.e, ptr noundef nonnull align 8 dereferenceable(64) %i.k, i64 64, i1 false), !noalias !2207
  invoke void @_RNvMs5_NtCsjHlmExTLNuX_14datafusion_sql7plannerNtB5_15IdentNormalizer9normalize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly captures(address, read_provenance) dereferenceable(1) %5, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.e)
end_hunk_3
begin_hunk_4_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.5.0.copyload.i.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx.i.i.i.i, align 8, !noalias !2210 ; 2 uses
  %.sroa.72.0.copyload.i.i.i.i = load ptr, ptr %.sroa.72.0..sroa_idx.i.i.i.i, align 8, !noalias !2210 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.0..sroa_idx.i.i.i.i, i64 24, i1 false), !noalias !2210
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(64) %.sroa.9.0..sroa_idx.i.i.i.i, i64 64, i1 false), !noalias !2202
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2207
  call void @llvm.experimental.noalias.scope.decl(metadata !2229)
end_hunk_4
begin_hunk_5_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i: ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n), !noalias !2207
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2202
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.sroa.7.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i.i.i.i, i64 24, i1 false), !noalias !2202
  %i.bj = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, -9223372036854775808
  br i1 %i.bj, label %.loopexit.i, label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i

end_hunk_5
begin_hunk_6_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %6 = load i64, ptr %i.o, align 8, !alias.scope !2180, !noalias !2246, !noundef !4
  %i.bn = add i64 %6, 1
  store i64 %i.bn, ptr %i.o, align 8, !alias.scope !2180, !noalias !2246
  br label %.loopexit8.i

end_hunk_6
begin_hunk_7_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9.i.i.i.i)
  %7 = load i64, ptr %i.o, align 8, !alias.scope !2180, !noalias !2246, !noundef !4
  %i.bo = add i64 %7, 1                           ; 2 uses
  store i64 %i.bo, ptr %i.o, align 8, !alias.scope !2180, !noalias !2246
  %.not.i.i.i = icmp eq i64 %.sroa.01.0.copyload.i.i.i.i, -9223372036854775807
  br i1 %.not.i.i.i, label %bb.z, label %.loopexit8.i
end_hunk_7
begin_hunk_8_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2I_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5q_8try_folduNCINvNvB5q_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtBc_3ops12control_flow11ControlFlowB99_ENcNtB9R_5Break0E0B9R_E0IB9S_B9R_EECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB5G_B3X_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6D_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXB7_INtB7_12GenericShuntINtB36_3MapBS_B6v_EIB3C_NtNtBb_7convert10InfallibleB4F_EEB2j_8try_folduNCINvNvB2j_12try_for_each4callB3X_B6k_NcNtB6k_5Break0E0B6k_E0E0B5F_ECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.z:                                             ; preds = %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %8 = load ptr, ptr %1, align 8, !alias.scope !2187, !noalias !2190, !nonnull !4, !noundef !4 ; 2 uses
  %9 = load ptr, ptr %i.p, align 8, !alias.scope !2187, !noalias !2190, !nonnull !4, !noundef !4
  %i.bp = icmp eq ptr %8, %9
  br i1 %i.bp, label %._crit_edge.i.i, label %bb.b

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNtB7_3map12map_try_foldTjRB1y_EINtNtBb_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBb_3ops12control_flow11ControlFlowIB5G_B3X_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6D_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXB7_INtB7_12GenericShuntINtB36_3MapBS_B6v_EIB3C_NtNtBb_7convert10InfallibleB4F_EEB2j_8try_folduNCINvNvB2j_12try_for_each4callB3X_B6k_NcNtB6k_5Break0E0B6k_E0E0B5F_ECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %._crit_edge.i.i, %.loopexit8.i
end_hunk_8
begin_hunk_9_@llvm.memset.p0.i64
!2195 = distinct !{!2195, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!2196 = distinct !{!2196, !2195, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!2197 = distinct !{!2197, !2195, !"_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator8try_fold9enumerateRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFielduINtNtNtBf_3ops12control_flow11ControlFlowIB2R_NtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNtBb_3map12map_try_foldTjB25_EINtNtBf_6result6ResultB3A_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB2Q_NCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB6v_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXBb_INtBb_12GenericShuntINtB4p_3MapIBX_INtNtNtBf_5slice4iter4IterB26_EEB6n_EIB4U_NtNtBf_7convert10InfallibleB5j_EEB1e_8try_folduNCINvNvB1e_12try_for_each4callB3A_B3v_NcNtB3v_5Break0E0B3v_E0E0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 2"}
!2198 = !{!2197}
!2199 = !{!2200}
!2200 = distinct !{!2200, !2201, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTjRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3R_B28_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB4O_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterB12_EEB4G_EIB1N_NtNtBa_7convert10InfallibleB2Q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9N_12try_for_each4callB28_B4v_NcNtB4v_5Break0E0B4v_E0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!2201 = distinct !{!2201, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTjRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3R_B28_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB4O_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterB12_EEB4G_EIB1N_NtNtBa_7convert10InfallibleB2Q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9N_12try_for_each4callB28_B4v_NcNtB4v_5Break0E0B4v_E0E0CsdJxlLsGgtXr_16delta_benchmarks"}
!2202 = !{!2203, !2200, !2194, !2196, !2197, !2183, !2186, !2191, !2178, !2181, !2192}
!2203 = distinct !{!2203, !2201, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTjRNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEINtNtBa_6result6ResultNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3R_B28_EENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB4O_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB6_9enumerate9EnumerateINtNtNtBa_5slice4iter4IterB12_EEB4G_EIB1N_NtNtBa_7convert10InfallibleB2Q_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9N_12try_for_each4callB28_B4v_NcNtB4v_5Break0E0B4v_E0E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2204 = !{!2205}
!2205 = distinct !{!2205, !2206, !"_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!2206 = distinct !{!2206, !"_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0CsdJxlLsGgtXr_16delta_benchmarks"}
!2207 = !{!2208, !2205, !2203, !2200, !2194, !2196, !2197, !2183, !2186, !2191, !2178, !2181, !2192}
!2208 = distinct !{!2208, !2206, !"_RNCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB7_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2209 = !{!2208, !2203, !2194, !2196, !2183, !2186, !2191, !2178, !2181, !2192}
!2210 = !{!2205, !2203, !2200, !2194, !2196, !2197, !2183, !2186, !2191, !2178, !2181, !2192}
!2211 = !{!2205, !2200, !2197}
!2212 = !{!2213}
!2213 = distinct !{!2213, !2214, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2214 = distinct !{!2214, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsdJxlLsGgtXr_16delta_benchmarks"}
end_hunk_9
begin_hunk_10_@llvm.memset.p0.i64
!2216 = distinct !{!2216, !2217, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2217 = distinct !{!2217, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!2218 = !{!2216, !2213}
!2219 = !{!2216, !2213, !2208, !2203, !2194, !2196, !2183, !2186, !2191, !2178, !2181, !2192}
!2220 = !{!2221}
!2221 = distinct !{!2221, !2222, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!2222 = distinct !{!2222, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!2223 = !{!2224}
!2224 = distinct !{!2224, !2222, !"_RNvXs7_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB5_5FieldNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!2225 = !{!2221, !2224, !2208, !2205, !2203, !2200, !2194, !2196, !2197, !2183, !2186, !2191, !2178, !2181, !2192}
!2226 = !{!2221, !2208, !2203, !2194, !2196, !2183, !2186, !2191, !2178, !2181, !2192}
!2227 = !{i8 0, i8 2}
!2228 = !{!2224, !2208, !2205, !2203, !2200, !2194, !2196, !2197, !2183, !2186, !2191, !2178, !2181, !2192}
!2229 = !{!2230}
!2230 = distinct !{!2230, !2231, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2231 = distinct !{!2231, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECsdJxlLsGgtXr_16delta_benchmarks"}
end_hunk_10
begin_hunk_11_@llvm.memset.p0.i64
!2233 = distinct !{!2233, !2234, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2234 = distinct !{!2234, !"_RNvXsE_NtCs6Po7BT7Nknu_5alloc4syncINtB5_3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks"}
!2235 = !{!2233, !2230}
!2236 = !{!2233, !2230, !2208, !2203, !2194, !2196, !2183, !2186, !2191, !2178, !2181, !2192}
!2237 = !{!2238}
!2238 = distinct !{!2238, !2239, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2239 = distinct !{!2239, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECsdJxlLsGgtXr_16delta_benchmarks"}
!2240 = !{!2241, !2243, !2203, !2200, !2194, !2196, !2183, !2186, !2191, !2178, !2181, !2192}
!2241 = distinct !{!2241, !2242, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_9enumerate9EnumerateINtNtNtB9_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB31_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7w_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB8I_ENcNtB9q_5Break0E0B9q_E0CsdJxlLsGgtXr_16delta_benchmarks: argument 0"}
!2242 = distinct !{!2242, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_9enumerate9EnumerateINtNtNtB9_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB31_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7w_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB8I_ENcNtB9q_5Break0E0B9q_E0CsdJxlLsGgtXr_16delta_benchmarks"}
!2243 = distinct !{!2243, !2242, !"_RNCINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB5_12GenericShuntINtNtB5_3map3MapINtNtB5_9enumerate9EnumerateINtNtNtB9_5slice4iter4IterNtNtCs4lawaffTVVK_9sqlparser3ast11StructFieldEENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB31_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24convert_simple_data_types_0EINtNtB9_6result6ResultNtNtB9_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtNtNtB7_6traits8iterator8Iterator8try_folduNCINvNvB7w_12try_for_each4callNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtNtB9_3ops12control_flow11ControlFlowB8I_ENcNtB9q_5Break0E0B9q_E0CsdJxlLsGgtXr_16delta_benchmarks: argument 1"}
!2244 = !{!2241, !2243, !2203, !2194, !2196, !2183, !2186, !2191, !2178, !2181, !2192}
!2245 = !{!2241, !2203, !2200, !2194, !2196, !2183, !2186, !2191, !2178, !2181, !2192}
!2246 = !{!2194, !2196, !2183, !2186, !2191, !2178, !2192}
!2247 = !{!2183, !2186, !2191, !2178, !2181, !2192}
!2248 = !{!2249, !2183, !2178}
end_hunk_11
