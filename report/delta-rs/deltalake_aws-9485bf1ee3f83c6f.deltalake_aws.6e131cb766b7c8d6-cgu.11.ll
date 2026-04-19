inline.NumInlined: 1116
inline.NumDeleted: 605
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtBc_3ops5range5RangeyEENCNCINvNtCsjyY8HP3IvQ6_12object_store4util15coalesce_rangesNCNCNvYNtNtCs9rVkZwOUgsI_13deltalake_aws7storage16S3StorageBackendNtB1Z_11ObjectStore10get_ranges00NtB1Z_5ErrorINtNtBc_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBc_6future6future6Futurep6OutputINtNtBc_6result6ResultNtNtCs9Ct3XQYJhun_5bytes5bytes5BytesB4o_ENtNtBc_6marker4SendEL_EEE00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB7v_8for_each4callB6o_NCINvMsj_NtB4V_3vecINtB8L_3VecB6o_E14extend_trustedBN_E0E0EB2Y_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENvYNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryINtNtBc_7convert7TryFromRB1n_E8try_fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtB51_10InfallibleNtNtB4i_6errors15LockClientErrorEEB5C_8try_folduNCINvNvB5C_12try_for_each4callB4g_INtNtNtBc_3ops12control_flow11ControlFlowB4g_ENcNtB8O_5Break0E0B8O_E0IB8P_B8O_EEB4i_(ptr dead_on_unwind noalias noundef writable writeonly sret([56 x i8]) align 8 captures(none) dereferenceable(56) %0, ptr noalias noundef align 8 captures(none) dereferenceable(16) %1, ptr noalias noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [56 x i8], align 8                ; 7 uses
  %.sroa.6.i = alloca [40 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !668)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !671)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load ptr, ptr %i.b, align 8, !alias.scope !673, !noalias !668, !nonnull !12, !noundef !12 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !673, !noalias !668 ; 2 uses
  %i.d = icmp eq ptr %.promoted.i, %i.c
  br i1 %i.d, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 3 uses
  %.sroa.7.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  br label %bb.b

bb.b:                                             ; preds = %bb.ay, %.lr.ph.i
  %4 = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.f, %bb.ay ] ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 48 ; 3 uses
  store ptr %i.f, ptr %1, align 8, !alias.scope !673, !noalias !668
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !676
  call void @_RNvXs2_Cs9rVkZwOUgsI_13deltalake_awsNtB5_11CommitEntryINtNtCsbvkFyIu7lgC_4core7convert7TryFromRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEE8try_from(ptr noalias noundef nonnull sret([56 x i8]) align 8 captures(none) dereferenceable(56) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %4), !noalias !677
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.a, align 8, !noalias !680 ; 3 uses
  %i.g = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775808
  br i1 %i.g, label %._crit_edge, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB4d_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5s_B4b_EENvYB4b_INtNtBa_7convert7TryFromBZ_E8try_fromNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6h_EIB3Q_NtB6r_10InfallibleB4T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8F_12try_for_each4callB4b_B66_NcNtB66_5Break0E0B66_E0E0B4d_.exit.i

._crit_edge:                                      ; preds = %bb.b
  tail call void @llvm.experimental.noalias.scope.decl(metadata !682)
  %i.h = load i64, ptr %3, align 8, !range !685, !alias.scope !682, !noalias !686, !noundef !12 ; 2 uses
  %i.i = icmp eq i64 %i.h, 9
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENvYNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryINtNtBc_7convert7TryFromRB1n_E8try_fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtB51_10InfallibleNtNtB4i_6errors15LockClientErrorEEB5C_8try_folduNCINvNvB5C_12try_for_each4callB4g_INtNtNtBc_3ops12control_flow11ControlFlowB4g_ENcNtB8O_5Break0E0B8O_E0IB8P_B8O_EEB4i_:bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !676
  br label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB4d_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5s_B4b_EENvYB4b_INtNtBa_7convert7TryFromBZ_E8try_fromNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6h_EIB3Q_NtB6r_10InfallibleB4T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8F_12try_for_each4callB4b_B66_NcNtB66_5Break0E0B66_E0E0B4d_.exit.i: ; preds = %bb.b
  %.sroa.7.0.copyload.i.i = load i64, ptr %.sroa.7.0..sroa_idx.i.i, align 8, !noalias !680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(40) %i.e, i64 40, i1 false), !noalias !704
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !676
  %.not.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, -9223372036854775807
  br i1 %.not.i.i, label %bb.ay, label %.loopexit.i

._crit_edge.i:                                    ; preds = %bb.ay, %bb.a
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENvYNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryINtNtBc_7convert7TryFromRB1n_E8try_fromENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtB51_10InfallibleNtNtB4i_6errors15LockClientErrorEEB5C_8try_folduNCINvNvB5C_12try_for_each4callB4g_INtNtNtBc_3ops12control_flow11ControlFlowB4g_ENcNtB8O_5Break0E0B8O_E0IB8P_B8O_EEB4i_:bb.a
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB5u_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB6J_B5s_EENvYB5s_INtNtBa_7convert7TryFromB52_E8try_fromNCINvXB4v_INtB4v_12GenericShuntINtB4t_3MapB3_B7y_EIB57_NtB7I_10InfallibleB6a_EEB3z_8try_folduNCINvNvB3z_12try_for_each4callB5s_B7n_NcNtB7n_5Break0E0B7n_E0E0B6I_EB5u_.exit

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB4d_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5s_B4b_EENvYB4b_INtNtBa_7convert7TryFromBZ_E8try_fromNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6h_EIB3Q_NtB6r_10InfallibleB4T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8F_12try_for_each4callB4b_B66_NcNtB66_5Break0E0B66_E0E0B4d_.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB4d_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5s_B4b_EENvYB4b_INtNtBa_7convert7TryFromBZ_E8try_fromNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6h_EIB3Q_NtB6r_10InfallibleB4T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8F_12try_for_each4callB4b_B66_NcNtB66_5Break0E0B66_E0E0B4d_.exit.thread.i
  %.sroa.8.112.i = phi i64 [ undef, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB4d_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5s_B4b_EENvYB4b_INtNtBa_7convert7TryFromBZ_E8try_fromNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6h_EIB3Q_NtB6r_10InfallibleB4T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8F_12try_for_each4callB4b_B66_NcNtB66_5Break0E0B66_E0E0B4d_.exit.thread.i ], [ %.sroa.7.0.copyload.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB4d_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5s_B4b_EENvYB4b_INtNtBa_7convert7TryFromBZ_E8try_fromNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6h_EIB3Q_NtB6r_10InfallibleB4T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8F_12try_for_each4callB4b_B66_NcNtB66_5Break0E0B66_E0E0B4d_.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.i, i64 40, i1 false), !noalias !671
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  store i64 %.sroa.0.0.copyload.i.i, ptr %0, align 8, !alias.scope !708, !noalias !671
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 48
  store i64 %.sroa.8.112.i, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !708, !noalias !671
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB5u_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB6J_B5s_EENvYB5s_INtNtBa_7convert7TryFromB52_E8try_fromNCINvXB4v_INtB4v_12GenericShuntINtB4t_3MapB3_B7y_EIB57_NtB7I_10InfallibleB6a_EEB3z_8try_folduNCINvNvB3z_12try_for_each4callB5s_B7n_NcNtB7n_5Break0E0B7n_E0E0B6I_EB5u_.exit

bb.ay:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEINtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB4d_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5s_B4b_EENvYB4b_INtNtBa_7convert7TryFromBZ_E8try_fromNCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB6h_EIB3Q_NtB6r_10InfallibleB4T_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB8F_12try_for_each4callB4b_B66_NcNtB66_5Break0E0B66_E0E0B4d_.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i)
  %i.cw = icmp eq ptr %i.f, %i.c
  br i1 %i.cw, label %._crit_edge.i, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb5types16__attribute_value14AttributeValueEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB3F_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultNtCs9rVkZwOUgsI_13deltalake_aws11CommitEntryNtNtB5u_6errors15LockClientErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB6J_B5s_EENvYB5s_INtNtBa_7convert7TryFromB52_E8try_fromNCINvXB4v_INtB4v_12GenericShuntINtB4t_3MapB3_B7y_EIB57_NtB7I_10InfallibleB6a_EEB3z_8try_folduNCINvNvB3z_12try_for_each4callB5s_B7n_NcNtB7n_5Break0E0B7n_E0E0B6I_EB5u_.exit: ; preds = %._crit_edge.i, %.loopexit.i
end_hunk_2
begin_hunk_3_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
          to label %.body.thread unwind label %bb.u, !noalias !1188

.body:                                            ; preds = %bb.an, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit
  %.sroa.032.0.a = phi i8 [ %.sroa.032.2.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 0, %bb.an ] ; 2 uses
  %.sroa.037.0 = phi i8 [ %.sroa.037.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit ], [ 0, %bb.an ] ; 2 uses
  %.sroa.038.0 = phi i8 [ %.sroa.038.2, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %.sroa.032.1, %bb.an ]
  %.pn118.pn.pn = phi { ptr, i32 } [ %.pn118.pn, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit ], [ %i.dg, %bb.an ] ; 2 uses
  %i.df = trunc nuw i8 %.sroa.038.0 to i1
  br i1 %i.df, label %.body.thread, label %bb.dm

bb.an:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit209, %bb.cx
end_hunk_3
begin_hunk_4_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
          to label %bb.aq unwind label %bb.ap

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit: ; preds = %.body126, %bb.ax, %bb.ap
  %.sroa.032.2.a = phi i8 [ %.sroa.032.3.a, %bb.ap ], [ 0, %bb.ax ], [ 0, %.body126 ]
  %.sroa.037.2 = phi i8 [ %.sroa.032.3.a, %bb.ap ], [ %.sroa.032.4.a, %bb.ax ], [ %.sroa.032.4.a, %.body126 ]
  %.sroa.038.2 = phi i8 [ %.sroa.038.3, %bb.ap ], [ %.sroa.037.4, %bb.ax ], [ %.sroa.037.4, %.body126 ]
  %.pn118.pn = phi { ptr, i32 } [ %i.di, %bb.ap ], [ %.pn118, %bb.ax ], [ %.pn118, %.body126 ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjPG5xYjJYir_9aws_types10sdk_config9SdkConfigECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(416) %i.ak) #38
          to label %.body unwind label %bb.cz

bb.ap:                                            ; preds = %bb.dh, %bb.ao
  %.sroa.032.3.a = phi i8 [ 0, %bb.dh ], [ 1, %bb.ao ] ; 2 uses
  %.sroa.038.3 = phi i8 [ %.sroa.032.8, %bb.dh ], [ 1, %bb.ao ]
  %i.di = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6D2ubN3bMGD_16aws_sdk_dynamodb6client6ClientECs9rVkZwOUgsI_13deltalake_aws.exit
end_hunk_4
begin_hunk_5_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  unreachable

.body126:                                         ; preds = %bb.da, %bb.cw, %bb.bd, %.body129, %bb.au, %bb.ay, %bb.dp, %bb.dn
  %.sroa.032.4.a = phi i8 [ 1, %bb.dp ], [ 1, %.body129 ], [ 1, %bb.bd ], [ 0, %bb.dn ], [ 1, %bb.au ], [ 0, %bb.ay ], [ 0, %bb.cw ], [ 0, %bb.da ] ; 2 uses
  %.sroa.037.4 = phi i8 [ 1, %bb.dp ], [ 1, %.body129 ], [ 1, %bb.bd ], [ %.sroa.032.6.ph, %bb.dn ], [ 1, %bb.au ], [ %.sroa.032.8, %bb.ay ], [ 0, %bb.cw ], [ %.sroa.032.8, %bb.da ] ; 2 uses
  %.pn118 = phi { ptr, i32 } [ %lpad.thr_comm, %bb.dp ], [ %lpad.thr_comm.split-lp, %.body129 ], [ %i.ec, %bb.bd ], [ %.pn116.ph, %bb.dn ], [ %i.dn, %bb.au ], [ %i.ds, %bb.ay ], [ %i.id, %bb.cw ], [ %i.ih, %bb.da ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1226)
  call void @llvm.experimental.noalias.scope.decl(metadata !1229)
end_hunk_5
begin_hunk_6_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws.exit215

bb.dm:                                            ; preds = %.body.thread, %.body
  %.sroa.037.6.a = phi i8 [ %.sroa.037.0261, %.body.thread ], [ %.sroa.032.0.a, %.body ]
  %.sroa.038.4 = phi i8 [ %.sroa.038.0262, %.body.thread ], [ %.sroa.037.0, %.body ]
  %.pn118.pn.pn.pn = phi { ptr, i32 } [ %.pn118.pn.pn263, %.body.thread ], [ %.pn118.pn.pn, %.body ] ; 2 uses
  %i.iy = trunc nuw i8 %.sroa.038.4 to i1
  br i1 %i.iy, label %bb.dq, label %.thread248

bb.dn:                                            ; preds = %.body166, %.thread234, %bb.bm, %bb.bj, %bb.cf, %bb.ct, %bb.df
end_hunk_6
begin_hunk_7_@_RNvMs1_Cs9rVkZwOUgsI_13deltalake_awsNtB5_18DynamoDbLockClient7try_new:bb.a

.body.thread:                                     ; preds = %bb.ak, %bb.am, %.body
  %.pn118.pn.pn263 = phi { ptr, i32 } [ %.pn118.pn.pn, %.body ], [ %.pn2090.i, %bb.am ], [ %.pn2090.i, %bb.ak ]
  %.sroa.038.0262 = phi i8 [ %.sroa.037.0, %.body ], [ 1, %bb.am ], [ 1, %bb.ak ]
  %.sroa.037.0261 = phi i8 [ %.sroa.032.0.a, %.body ], [ 1, %bb.am ], [ 1, %bb.ak ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef align 8 dereferenceable(24) %4) #38
          to label %bb.dm unwind label %bb.cz

.thread248:                                       ; preds = %bb.dq, %bb.dm
  %i.iz = trunc nuw i8 %.sroa.037.6.a to i1
  br i1 %i.iz, label %bb.dr, label %.thread248.thread

bb.dq:                                            ; preds = %bb.dm
end_hunk_7
begin_hunk_8_@_RNvXs_Cs9rVkZwOUgsI_13deltalake_awsNtB4_17S3LogStoreFactoryNtNtNtCs14kWLkQVSKO_14deltalake_core8logstore9factories15LogStoreFactory12with_options:bb.a
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit97 unwind label %.loopexit.split-lp

.body104:                                         ; preds = %.loopexit, %.loopexit.split-lp, %bb.ci, %bb.cl, %.body
  %.pn = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %i.kx, %bb.ci ], [ %i.lb, %bb.cl ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ] ; 2 uses
  %.sroa.041.2 = phi i1 [ %.sroa.041.4.lpad-body, %.body ], [ true, %bb.ci ], [ true, %bb.cl ], [ true, %.loopexit ], [ %.sroa.041.3.ph, %.loopexit.split-lp ]
  invoke void @_RNvXsg_NtCs3gpiEk3WpjL_9hashbrown3rawINtB5_8RawTableTNtNtCs6Po7BT7Nknu_5alloc6string6StringBP_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs9rVkZwOUgsI_13deltalake_aws(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.bu)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringB1B_EECs9rVkZwOUgsI_13deltalake_aws.exit99 unwind label %bb.dw

end_hunk_8
