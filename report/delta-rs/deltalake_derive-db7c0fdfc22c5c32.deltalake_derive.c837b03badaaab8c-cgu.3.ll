inline.NumInlined: 153
inline.NumDeleted: 114
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_:bb.a
  br label %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i

_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i: ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %bb.a
  %4 = phi ptr [ %.promoted.i, %bb.a ], [ %i.ad, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ] ; 4 uses
  %.sroa.8.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.75.0.i = phi ptr [ undef, %bb.a ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.5.0.i = phi i64 [ undef, %bb.a ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %i.ac = icmp eq ptr %4, %.pre.i
  br i1 %i.ac, label %bb.bs, label %bb.b

bb.b:                                             ; preds = %_RNvXNtNtCsbvkFyIu7lgC_4core3ops12control_flowINtB2_11ControlFlowIBI_NtCsbjGuDcEILED_11proc_macro211TokenStreamEENtNtB4_9try_trait3Try6branchCshbKHpCRGxgC_16deltalake_derive.exit.i
  %i.ad = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  store ptr %i.ad, ptr %1, align 8, !alias.scope !143, !noalias !138
  call void @llvm.experimental.noalias.scope.decl(metadata !146)
  call void @llvm.experimental.noalias.scope.decl(metadata !149)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.r), !noalias !152
  %i.ae = load ptr, ptr %4, align 8, !alias.scope !155, !noalias !156, !nonnull !17, !align !70, !noundef !17 ; 4 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 304
  %i.ag = load i8, ptr %i.af, align 8, !range !157, !noalias !152, !noundef !17
  %.not.i.i.i = icmp eq i8 %i.ag, 3
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_:bb.a

bb.h:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !152
  call void @_RINvMNtCs7nQiqFc7Txl_3syn5errorNtB3_5Error11new_spannedRRNtNtB5_4data5FieldReECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %4, ptr noalias noundef nonnull readonly captures(address, read_provenance) @7, i64 noundef 13), !noalias !156
  %.sroa.07.0.copyload.i.i.i = load i64, ptr %i.f, align 8, !noalias !152
  %.sroa.69.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.69.0.copyload.i.i.i = load ptr, ptr %.sroa.69.0..sroa_idx.i.i.i, align 8, !noalias !152
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_:bb.a

bb.aw:                                            ; preds = %bb.av
  %.sroa.01.0.copyload.i.i = load i64, ptr %i.g, align 8, !noalias !181 ; 2 uses
  %.sroa.6.0.copyload.i.i = load i64, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  %.sroa.9.0.copyload.i.i = load ptr, ptr %.sroa.9.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  %.sroa.10.0.copyload.i.i = load i64, ptr %.sroa.10.0..sroa_idx.i.i, align 8, !noalias !181 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !152
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtCsbjGuDcEILED_11proc_macro211TokenStreamECshbKHpCRGxgC_16deltalake_derive(ptr noalias noundef align 8 dereferenceable(32) %i.l)
          to label %bb.ax unwind label %bb.ao, !noalias !152
end_hunk_2
begin_hunk_3_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB1s_5error5ErrorEEB2U_8try_folduNCINvNvB2U_12try_for_each4callNtCsbjGuDcEILED_11proc_macro211TokenStreamINtNtNtBc_3ops12control_flow11ControlFlowB5Z_ENcNtB6F_5Break0E0B6F_E0IB6G_B6F_EEB20_:bb.a
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit

.loopexit33.i:                                    ; preds = %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i
  %.sroa.7.sroa.5.1.ph.i = phi ptr [ %.sroa.75.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.9.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.7.sroa.0.1.ph.i = phi i64 [ %.sroa.5.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.6.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.7.sroa.6.1.ph.i = phi i64 [ %.sroa.8.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.10.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  %.sroa.0.0.ph.i = phi i64 [ -9223372036854775807, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRRNtNtCs7nQiqFc7Txl_3syn4data5FieldINtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtB15_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB2X_B1U_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB3M_EIB1z_NtNtBa_7convert10InfallibleB2A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB6y_12try_for_each4callB1U_B3B_NcNtB3B_5Break0E0B3B_E0E0B3Q_.exit.thread.i ], [ %.sroa.01.0.copyload.i.i, %_RNCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0B3_.exit.i.i ]
  store i64 %.sroa.0.0.ph.i, ptr %0, align 8, !alias.scope !202, !noalias !141
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.7.sroa.0.1.ph.i, ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.7.sroa.5.1.ph.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i64 %.sroa.7.sroa.6.1.ph.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !202, !noalias !141
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs7nQiqFc7Txl_3syn4data5FieldENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1o_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCsbjGuDcEILED_11proc_macro211TokenStreamNtNtBO_5error5ErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4d_B3b_EENCNvCshbKHpCRGxgC_16deltalake_derive20generate_config_keys0NCINvXB2e_INtB2e_12GenericShuntINtB2c_3MapB3_B52_EIB2Q_NtNtBa_7convert10InfallibleB3R_EEB1i_8try_folduNCINvNvB1i_12try_for_each4callB3b_B4R_NcNtB4R_5Break0E0B4R_E0E0B4c_EB56_.exit: ; preds = %bb.bs, %.loopexit33.i
end_hunk_3
