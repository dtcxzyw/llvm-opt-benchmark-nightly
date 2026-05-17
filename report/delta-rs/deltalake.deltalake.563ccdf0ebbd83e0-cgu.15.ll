inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters3map12map_try_foldBX_IBJ_INtNtBa_5boxed3BoxNtBZ_4ExprEEuINtNtNtB1L_3ops12control_flow11ControlFlowIB3Z_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5B_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0NCINvNvMsg_NtB2P_7flattenINtB8s_13FlattenCompatppE13iter_try_fold7flattenB3p_uB3Y_NCINvNvXsi_B8s_B8G_B1D_8try_fold7flattenB3p_uB3Y_NCIB2L_B3t_INtNtB1L_6result6ResultB4J_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Y_NCB5w_s_0NCINvXB2P_INtB2P_12GenericShuntINtB2N_3MapINtB8s_7FlatMapBI_B3p_B5u_EBc4_EIBaA_NtNtB1L_7convert10InfallibleBb0_EEB1D_8try_folduNCINvNvB1D_12try_for_each4callB4J_B4E_NcNtB4E_5Break0E0B4E_E0E0E0E0E0B3Y_ECs7p2uQeJxui2_9deltalake:bb.a
  store i64 2, ptr %.sroa.66.0..8.val.sroa_idx7.i, align 8, !alias.scope !6471, !noalias !6472
  store ptr %i.s, ptr %.sroa.7.0..8.val.sroa_idx9.i, align 8, !alias.scope !6471, !noalias !6472
  call void @llvm.experimental.noalias.scope.decl(metadata !6473)
  call void @llvm.experimental.noalias.scope.decl(metadata !6474)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6475
  store ptr %.val, ptr %i.b, align 8, !noalias !6477
  store ptr %i.r, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !6479, !noalias !6480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6477
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.w), !noalias !6464
  %i.x = load i64, ptr %i.a, align 16, !range !5547, !alias.scope !6481, !noalias !6484, !noundef !12 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i64 %i.x, 38
  br i1 %.not.i.i.i.i.i, label %.lr.ph.i.i.i.1.i, label %bb.i

.lr.ph.i.i.i.1.i:                                 ; preds = %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6477
  %i.y = load ptr, ptr %i.r, align 8, !noalias !6464, !nonnull !12, !align !375, !noundef !12
  store ptr %i.s, ptr %.sroa.53.0..8.val.sroa_idx4.i, align 8, !alias.scope !6479, !noalias !6480
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6477
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.y), !noalias !6464
  %i.z = load i64, ptr %i.a, align 16, !range !5547, !alias.scope !6481, !noalias !6484, !noundef !12 ; 2 uses
  %.not.i.i.i.i.1.i = icmp eq i64 %i.z, 38
  br i1 %.not.i.i.i.i.1.i, label %bb.j, label %bb.i

._crit_edge:                                      ; preds = %bb.j, %bb.a, %bb.i
  %storemerge = phi i64 [ %.lcssa.i, %bb.i ], [ 38, %bb.a ], [ 38, %bb.j ]
  store i64 %storemerge, ptr %0, align 16
  ret void

bb.i:                                             ; preds = %.lr.ph.i.i.i.1.i, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs7p2uQeJxui2_9deltalake.exit.i.i
  %.lcssa.i = phi i64 [ %i.x, %_RNvMNtCsbvkFyIu7lgC_4core6optionINtB2_6OptionINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBO_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEE6insertCs7p2uQeJxui2_9deltalake.exit.i.i ], [ %i.z, %.lr.ph.i.i.i.1.i ]
  %.sroa.7.0..sroa_idx4.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx4.i.i.i.i, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6475
  br label %._crit_edge

bb.j:                                             ; preds = %.lr.ph.i.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6477
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6475
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldBX_NtBZ_10PushedDownuNCNvMs2_BZ_INtBZ_25FilterPushdownPropagationINtNtBa_4sync3ArcDNtNtB11_14execution_plan13ExecutionPlanEL_EE6if_all0NCINvNvB2o_8for_each4callB41_NCINvMsj_B8_INtB8_3VecB41_E14extend_trustedINtB3u_3MapBI_B4j_EE0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted7 = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %.val3 = phi i64 [ %.promoted7, %.lr.ph ], [ %i.p, %bb.f ] ; 3 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6486
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  %i.j = invoke noundef zeroext i1 @_RNvMs1_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_25ChildFilterPushdownResult3all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c, !noalias !6486

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #38
          to label %.body unwind label %bb.d, !noalias !6486

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6486
  unreachable

_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a)
          to label %bb.f unwind label %bb.e

._crit_edge:                                      ; preds = %bb.f, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.p, %bb.f ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val5, ptr %.val4, align 8
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.e:                                             ; preds = %_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs7p2uQeJxui2_9deltalake.exit.i
  %i.m = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.c, %bb.e
  %eh.lpad-body = phi { ptr, i32 } [ %i.m, %bb.e ], [ %i.k, %bb.c ]
  %.val = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val3, ptr %.val, align 8
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.g

bb.f:                                             ; preds = %_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs7p2uQeJxui2_9deltalake.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6486
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.val3
  %i.o = zext i1 %i.j to i8
  store i8 %i.o, ptr %i.n, align 1, !noalias !6490
  %i.p = add i64 %.val3, 1                        ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3R_5types3any5PyAnyENtNtB3R_3err5PyErrEiINtNtNtB1L_3ops12control_flow11ControlFlowIB3q_iB4Q_EiENCINvYBX_NtNtB3R_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2P_4takeINtB7E_4TakepEB1D_8try_fold5checkB3p_iB5Q_NCINvNtB4t_4list17try_new_from_iterQINtB2N_3MapBI_B63_EE0E0E0B5a_EB11_(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [48 x i8], align 8          ; 5 uses
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [96 x i8], align 8                ; 5 uses
  %.sroa.10 = alloca [48 x i8], align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not28 = icmp eq ptr %.promoted, %i.d
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %3, align 8               ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5 = load ptr, ptr %i.f, align 8            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.029 = phi i64 [ %2, %.lr.ph ], [ %.sink1.i.i.i, %bb.g ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6495
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6499
  call void @_RNvXsT_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_5FieldNtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b), !noalias !6506
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !6499, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %.sroa.4.8.copyload.i = load ptr, ptr %i.g, align 8, !noalias !6507 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.8..sroa_idx.i, i64 48, i1 false), !noalias !6495
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = load i64, ptr %.val, align 8, !noalias !6508, !noundef !12
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !6508
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.n = ptrtoint ptr %.sroa.4.8.copyload.i to i64
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6499
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6495
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = load i64, ptr %.val, align 8, !noalias !6512, !noundef !12
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.val, align 8, !noalias !6512
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.q = load ptr, ptr %.val5, align 8, !noalias !6515, !noundef !12
  %i.r = call noundef i32 @PyList_SetItem(ptr noundef %i.q, i64 noundef %.sroa.0.029, ptr noundef nonnull %.sroa.4.8.copyload.i) #40, !noalias !6515 ; 0 uses
  %i.s = add i64 %.sroa.0.029, 1
  %.pre.i.i = load i64, ptr %.val, align 8, !noalias !6512
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i

_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.t = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.sink1.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.sink.i.i3.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = trunc nuw i64 %.sink.i.i3.i to i1
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sink1.i.i.i, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.w, align 8, !alias.scope !6519
  store i64 2, ptr %0, align 8, !alias.scope !6519
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.f
  ret void

bb.f:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %.sink.i.i3.i, ptr %0, align 8, !alias.scope !6522
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !6522
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesENCINvNtNtB1U_8adapters3map12map_try_foldBX_B3s_B2S_INtNtB1W_6result6ResultB2S_zENvYBX_INtNtB1W_7convert4IntoB3s_E4intoNCINvNtB8_16in_place_collect24write_in_place_with_dropB3s_E0E0B5v_EB11_(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull readnone captures(none) %3, ptr noundef readnone captures(none) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.c, align 8        ; 8 uses
  %.not12 = icmp eq ptr %.promoted, %i.b
  br i1 %.not12, label %bb.b, label %iter.check

iter.check:                                       ; preds = %bb.a
  %.promoted18 = ptrtoaddr ptr %.promoted to i64
  %i.d = ptrtoaddr ptr %2 to i64
  %.promoted19 = ptrtoint ptr %.promoted to i64
  %i.e = ptrtoint ptr %i.b to i64                 ; 3 uses
  %i.f = sub i64 %i.e, %.promoted19               ; 7 uses
  %min.iters.check = icmp ult i64 %i.f, 4
  %i.g = sub i64 %i.d, %.promoted18
  %diff.check = icmp ult i64 %i.g, 32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.f, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.f, 28
  %n.vec = and i64 %i.f, -32                      ; 5 uses
  %i.h = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.i = getelementptr i8, ptr %.promoted, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep21 = getelementptr i8, ptr %.promoted, i64 %index ; 2 uses
  %i.j = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep21, align 1
  %wide.load22 = load <16 x i8>, ptr %i.j, align 1
  %i.k = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load22, ptr %i.k, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.l = icmp eq i64 %index.next, %n.vec
  br i1 %i.l, label %middle.block, label %vector.body, !llvm.loop !6526

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.f, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !6529

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.f, -4                     ; 4 uses
  %i.m = getelementptr i8, ptr %2, i64 %n.vec25   ; 2 uses
  %i.n = getelementptr i8, ptr %.promoted, i64 %n.vec25 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %next.gep27 = getelementptr i8, ptr %2, i64 %index26
  %next.gep28 = getelementptr i8, ptr %.promoted, i64 %index26
  %wide.load29 = load <4 x i8>, ptr %next.gep28, align 1
  store <4 x i8> %wide.load29, ptr %next.gep27, align 1
  %index.next30 = add nuw i64 %index26, 4         ; 2 uses
  %i.o = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.o, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6530

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.f, %n.vec25
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.4.013.ph = phi ptr [ %2, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 2 uses
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %i.i, %vec.epilog.iter.check ], [ %i.n, %vec.epilog.middle.block ] ; 3 uses
  %.ph36 = ptrtoint ptr %.ph to i64               ; 2 uses
  %i.p = sub i64 %i.e, %.ph36
  %xtraiter = and i64 %i.p, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.4.013.prol = phi ptr [ %i.t, %.lr.ph.prol ], [ %.sroa.4.013.ph, %.lr.ph.preheader ] ; 2 uses
  %i.q = phi ptr [ %i.s, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.r = load i8, ptr %i.q, align 1, !range !6531, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 1 ; 3 uses
  store i8 %i.r, ptr %.sroa.4.013.prol, align 1
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.4.013.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !6532

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.lcssa34.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.sroa.4.013.unr = phi ptr [ %.sroa.4.013.ph, %.lr.ph.preheader ], [ %i.t, %.lr.ph.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %i.u = sub i64 %.ph36, %i.e
  %i.v = icmp ugt i64 %i.u, -8
  br i1 %i.v, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.4.013 = phi ptr [ %i.au, %.lr.ph ], [ %.sroa.4.013.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.w = phi ptr [ %i.at, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.x = load i8, ptr %i.w, align 1, !range !6531, !noundef !12
  %i.y = getelementptr inbounds nuw i8, ptr %i.w, i64 1
  store i8 %i.x, ptr %.sroa.4.013, align 1
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 1
  %i.aa = load i8, ptr %i.y, align 1, !range !6531, !noundef !12
  %i.ab = getelementptr inbounds nuw i8, ptr %i.w, i64 2
  store i8 %i.aa, ptr %i.z, align 1
  %i.ac = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 2
  %i.ad = load i8, ptr %i.ab, align 1, !range !6531, !noundef !12
  %i.ae = getelementptr inbounds nuw i8, ptr %i.w, i64 3
  store i8 %i.ad, ptr %i.ac, align 1
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 3
  %i.ag = load i8, ptr %i.ae, align 1, !range !6531, !noundef !12
  %i.ah = getelementptr inbounds nuw i8, ptr %i.w, i64 4
  store i8 %i.ag, ptr %i.af, align 1
  %i.ai = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 4
  %i.aj = load i8, ptr %i.ah, align 1, !range !6531, !noundef !12
  %i.ak = getelementptr inbounds nuw i8, ptr %i.w, i64 5
  store i8 %i.aj, ptr %i.ai, align 1
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 5
  %i.am = load i8, ptr %i.ak, align 1, !range !6531, !noundef !12
  %i.an = getelementptr inbounds nuw i8, ptr %i.w, i64 6
  store i8 %i.am, ptr %i.al, align 1
  %i.ao = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 6
  %i.ap = load i8, ptr %i.an, align 1, !range !6531, !noundef !12
  %i.aq = getelementptr inbounds nuw i8, ptr %i.w, i64 7
  store i8 %i.ap, ptr %i.ao, align 1
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 7
  %i.as = load i8, ptr %i.aq, align 1, !range !6531, !noundef !12
  %i.at = getelementptr inbounds nuw i8, ptr %i.w, i64 8 ; 3 uses
  store i8 %i.as, ptr %i.ar, align 1
  %i.au = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.at, %i.b
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !6534

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa17 = phi ptr [ %i.n, %vec.epilog.middle.block ], [ %i.i, %middle.block ], [ %.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %i.at, %.lr.ph ]
  %.lcssa = phi ptr [ %i.m, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa34.unr, %.lr.ph.prol.loopexit ], [ %i.au, %.lr.ph ]
  store ptr %.lcssa17, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %.lcssa, %._crit_edge ], [ %2, %bb.a ]
  %i.av = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.aw = insertvalue { ptr, ptr } %i.av, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.aw
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB22_8adapters5chain5ChainINtNtNtB22_7sources4once4OnceBX_EBI_EE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.e, align 8        ; 3 uses
  %.not7 = icmp eq ptr %.promoted, %i.d
  br i1 %.not7, label %._crit_edge14, label %.lr.ph

._crit_edge14:                                    ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterRINtNtBa_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB25_8adapters3map8map_foldBX_NtNtBa_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvB1Z_8for_each4callB3C_NCINvMsj_B8_INtB8_3VecB3C_E14extend_trustedINtB35_3MapBI_B3Y_EE0E0E0ECs7p2uQeJxui2_9deltalake:bb.a
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted12 = load i64, ptr %i.i, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB10_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_NtB10_3vecINtB6s_3VecB2c_E14extend_trustedINtB4_3MapINtNtB6s_9into_iter8IntoIterBU_EB2z_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit
  %.val4 = phi i64 [ %.promoted12, %.lr.ph ], [ %i.o, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB10_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_NtB10_3vecINtB6s_3VecB2c_E14extend_trustedINtB4_3MapINtNtB6s_9into_iter8IntoIterBU_EB2z_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit ] ; 3 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.m, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB10_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_NtB10_3vecINtB6s_3VecB2c_E14extend_trustedINtB4_3MapINtNtB6s_9into_iter8IntoIterBU_EB2z_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !12, !align !375, !noundef !12
  %.val = load ptr, ptr %i.k, align 8, !nonnull !12, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !6956
  %i.l = getelementptr inbounds nuw i8, ptr %.val, i64 16
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.l)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB10_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_NtB10_3vecINtB6s_3VecB2c_E14extend_trustedINtB4_3MapINtNtB6s_9into_iter8IntoIterBU_EB2z_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.c

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB10_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_NtB10_3vecINtB6s_3VecB2c_E14extend_trustedINtB4_3MapINtNtB6s_9into_iter8IntoIterBU_EB2z_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.h, i64 %.val4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.n, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !6959
  %i.o = add i64 %.val4, 1                        ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !6956
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB10_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_NtB10_3vecINtB6s_3VecB2c_E14extend_trustedINtB4_3MapINtNtB6s_9into_iter8IntoIterBU_EB2z_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit, %.._crit_edge_crit_edge
  %.val6 = phi i64 [ %.val6.pre, %.._crit_edge_crit_edge ], [ %i.o, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtB10_6string6StringuNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE12copy_to_plans0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2c_NCINvMsj_NtB10_3vecINtB6s_3VecB2c_E14extend_trustedINtB4_3MapINtNtB6s_9into_iter8IntoIterBU_EB2z_EE0E0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %.val5 = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val6, ptr %.val5, align 8
  %.val9 = load ptr, ptr %0, align 8, !alias.scope !6964, !nonnull !12, !noundef !12
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val10 = load i64, ptr %i.p, align 8, !alias.scope !6964, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6967
  store i64 %.val10, ptr %i.b, align 8, !noalias !6967
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val9, ptr %i.q, align 8, !noalias !6967
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !6967
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6967
  ret void

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %.val3 = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val4, ptr %.val3, align 8
  %.val7 = load ptr, ptr %0, align 8, !alias.scope !6964, !nonnull !12, !noundef !12
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val8 = load i64, ptr %i.s, align 8, !alias.scope !6964, !noundef !12
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6970
  store i64 %.val8, ptr %i.a, align 8, !noalias !6970
  %i.t = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val7, ptr %i.t, align 8, !noalias !6970
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecRINtNtB7_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.e:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6970
  resume { ptr, i32 } %i.r
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtBa_6string6StringEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprENCINvNtNtB35_8adapters3map12map_try_foldBX_B4D_B43_INtNtB37_6result6ResultB43_zENvYBX_INtNtB37_7convert4IntoB4D_E4intoNCINvNtB8_16in_place_collect24write_in_place_with_dropB4D_E0E0B6D_ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull readnone captures(none) %3, ptr noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [56 x i8], align 8                ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not10 = icmp eq ptr %.promoted, %i.e
  br i1 %.not10, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB15_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprINtNtNtB15_3vec13in_place_drop11InPlaceDropB3i_EINtNtBa_6result6ResultB4s_zENvYBZ_INtNtBa_7convert4IntoB3i_E4intoNCINvNtB4x_16in_place_collect24write_in_place_with_dropB3i_E0E0Cs7p2uQeJxui2_9deltalake.exit
  %.sroa.4.011 = phi ptr [ %2, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB15_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprINtNtNtB15_3vec13in_place_drop11InPlaceDropB3i_EINtNtBa_6result6ResultB4s_zENvYBZ_INtNtBa_7convert4IntoB3i_E4intoNCINvNtB4x_16in_place_collect24write_in_place_with_dropB3i_E0E0Cs7p2uQeJxui2_9deltalake.exit ] ; 4 uses
  %i.j = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB15_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprINtNtNtB15_3vec13in_place_drop11InPlaceDropB3i_EINtNtBa_6result6ResultB4s_zENvYBZ_INtNtBa_7convert4IntoB3i_E4intoNCINvNtB4x_16in_place_collect24write_in_place_with_dropB3i_E0E0Cs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.j, i64 40, i1 false)
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 40 ; 3 uses
  store ptr %i.k, ptr %i.f, align 8
  store ptr %1, ptr %i.c, align 8
  store ptr %.sroa.4.011, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6973
  store ptr %1, ptr %i.b, align 8, !noalias !6973
  store ptr %.sroa.4.011, ptr %i.i, align 8, !noalias !6973
  invoke void @_RNvXs2_NtCshCk07IZuEAL_24datafusion_physical_expr10projectionNtB5_14ProjectionExprINtNtCsbvkFyIu7lgC_4core7convert4FromTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB1Z_6string6StringEE4from(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.a, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.h)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB15_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprINtNtNtB15_3vec13in_place_drop11InPlaceDropB3i_EINtNtBa_6result6ResultB4s_zENvYBZ_INtNtBa_7convert4IntoB3i_E4intoNCINvNtB4x_16in_place_collect24write_in_place_with_dropB3i_E0E0Cs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.d
  resume { ptr, i32 } %i.l

bb.d:                                             ; preds = %bb.b
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(16) %i.b) #38
          to label %bb.c unwind label %bb.e, !noalias !6973

bb.e:                                             ; preds = %bb.d
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39, !noalias !6973
  unreachable

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB15_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprINtNtNtB15_3vec13in_place_drop11InPlaceDropB3i_EINtNtBa_6result6ResultB4s_zENvYBZ_INtNtBa_7convert4IntoB3i_E4intoNCINvNtB4x_16in_place_collect24write_in_place_with_dropB3i_E0E0Cs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.011, ptr noundef nonnull align 8 dereferenceable(40) %i.a, i64 40, i1 false), !noalias !6973
  %i.n = getelementptr inbounds nuw i8, ptr %.sroa.4.011, i64 40 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6973
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.k, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB15_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprINtNtNtB15_3vec13in_place_drop11InPlaceDropB3i_EINtNtBa_6result6ResultB4s_zENvYBZ_INtNtBa_7convert4IntoB3i_E4intoNCINvNtB4x_16in_place_collect24write_in_place_with_dropB3i_E0E0Cs7p2uQeJxui2_9deltalake.exit, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %2, %bb.a ], [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldTINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB15_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprINtNtNtB15_3vec13in_place_drop11InPlaceDropB3i_EINtNtBa_6result6ResultB4s_zENvYBZ_INtNtBa_7convert4IntoB3i_E4intoNCINvNtB4x_16in_place_collect24write_in_place_with_dropB3i_E0E0Cs7p2uQeJxui2_9deltalake.exit ]
  %i.o = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.p = insertvalue { ptr, ptr } %i.o, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1u_8adapters3map12map_try_foldBX_INtNtB1w_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3C_5types3any5PyAnyENtNtB3C_3err5PyErrEiINtNtNtB1w_3ops12control_flow11ControlFlowIB3b_iB4B_EiENCINvYBX_NtNtB3C_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2A_4takeINtB7p_4TakepEB1o_8try_fold5checkB3a_iB5B_NCINvNtB4e_4list17try_new_from_iterQINtB2y_3MapBI_B5O_EE0E0E0B4V_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [48 x i8], align 8          ; 5 uses
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %.sroa.10 = alloca [48 x i8], align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not28 = icmp eq ptr %.promoted, %i.d
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %3, align 8               ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5 = load ptr, ptr %i.f, align 8            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.029 = phi i64 [ %2, %.lr.ph ], [ %.sink1.i.i.i, %bb.g ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6976
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 48 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6980
  call void @_RNvXsn_NtNtCsgbCypRs12E4_4pyo35types5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringBF_ENtNtB9_10conversion12IntoPyObject13into_pyobjectCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.b), !noalias !6987
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !6980, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %.sroa.4.8.copyload.i = load ptr, ptr %i.g, align 8, !noalias !6988 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.8..sroa_idx.i, i64 48, i1 false), !noalias !6976
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6976
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = load i64, ptr %.val, align 8, !noalias !6989, !noundef !12
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !6989
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.n = ptrtoint ptr %.sroa.4.8.copyload.i to i64
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6980
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6976
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = load i64, ptr %.val, align 8, !noalias !6993, !noundef !12
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.val, align 8, !noalias !6993
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.q = load ptr, ptr %.val5, align 8, !noalias !6996, !noundef !12
  %i.r = call noundef i32 @PyList_SetItem(ptr noundef %i.q, i64 noundef %.sroa.0.029, ptr noundef nonnull %.sroa.4.8.copyload.i) #40, !noalias !6996 ; 0 uses
  %i.s = add i64 %.sroa.0.029, 1
  %.pre.i.i = load i64, ptr %.val, align 8, !noalias !6993
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.d, %bb.c
  %i.t = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.sink1.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.sink.i.i3.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = trunc nuw i64 %.sink.i.i3.i to i1
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sink1.i.i.i, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.w, align 8, !alias.scope !7000
  store i64 2, ptr %0, align 8, !alias.scope !7000
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.f
  ret void

bb.f:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %.sink.i.i3.i, ptr %0, align 8, !alias.scope !7003
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7003
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEENtNtNtNtB1o_4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB38_8adapters3map12map_try_foldBX_INtNtB1o_6result6ResultB1V_NtNtB20_3err5PyErrEiINtNtNtB1o_3ops12control_flow11ControlFlowIB4A_iB50_EiENCINvYBX_NtNtB20_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB3Z_4takeINtB7O_4TakepEB32_8try_fold5checkB4z_iB60_NCINvNtB2C_4list17try_new_from_iterQINtB3X_3MapBI_B6d_EE0E0E0B5k_ECs7p2uQeJxui2_9deltalake(ptr dead_on_unwind noalias noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.7.i = alloca [48 x i8], align 8          ; 5 uses
  %i.a = alloca [64 x i8], align 8                ; 7 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.10 = alloca [48 x i8], align 8           ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not28 = icmp eq ptr %.promoted, %i.d
  br i1 %.not28, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.val = load ptr, ptr %3, align 8               ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5 = load ptr, ptr %i.f, align 8            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.029 = phi i64 [ %2, %.lr.ph ], [ %.sink1.i.i.i, %bb.g ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7007
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7011
  call void @_RNvXsn_NtNtCsgbCypRs12E4_4pyo35types5tupleTNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtB9_8instance5BoundNtNtB7_3any5PyAnyEEENtNtB9_10conversion12IntoPyObject13into_pyobjectCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b), !noalias !7018
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !7011, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %.sroa.4.8.copyload.i = load ptr, ptr %i.g, align 8, !noalias !7019 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.8..sroa_idx.i, i64 48, i1 false), !noalias !7007
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7007
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = load i64, ptr %.val, align 8, !noalias !7020, !noundef !12
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !7020
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.n = ptrtoint ptr %.sroa.4.8.copyload.i to i64
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7011
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7007
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = load i64, ptr %.val, align 8, !noalias !7024, !noundef !12
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.val, align 8, !noalias !7024
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.q = load ptr, ptr %.val5, align 8, !noalias !7027, !noundef !12
  %i.r = call noundef i32 @PyList_SetItem(ptr noundef %i.q, i64 noundef %.sroa.0.029, ptr noundef nonnull %.sroa.4.8.copyload.i) #40, !noalias !7027 ; 0 uses
  %i.s = add i64 %.sroa.0.029, 1
  %.pre.i.i = load i64, ptr %.val, align 8, !noalias !7024
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.d, %bb.c
  %i.t = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.sink1.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.sink.i.i3.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = trunc nuw i64 %.sink.i.i3.i to i1
  %or.cond = select i1 %i.u, i1 true, i1 %i.v
  br i1 %or.cond, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sink1.i.i.i, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.w, align 8, !alias.scope !7031
  store i64 2, ptr %0, align 8, !alias.scope !7031
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.f
  ret void

bb.f:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %.sink.i.i3.i, ptr %0, align 8, !alias.scope !7034
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7034
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB24_8for_each4callBX_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB3H_7HashMapBY_B1j_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB28_7collect6ExtendBX_E6extendBI_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 5 uses
  %i.b = alloca [112 x i8], align 16              ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not4 = icmp eq ptr %.promoted, %i.e
  br i1 %.not4, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.d
  %i.g = phi ptr [ %i.h, %bb.d ], [ %.promoted, %bb.a ] ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 144 ; 3 uses
  store ptr %i.h, ptr %i.f, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7038
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !7038
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 16 dereferenceable(24) %i.g, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.i, i64 112, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7041
  invoke void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.b)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %.lr.ph
  %i.j = load i64, ptr %i.a, align 16, !range !5659, !alias.scope !7044, !noalias !7041, !noundef !12
  %i.k = icmp eq i64 %i.j, 37
  br i1 %i.k, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.noexc
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(112) %i.a)
          to label %bb.d unwind label %bb.c

._crit_edge:                                      ; preds = %bb.d, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %bb.b, %.lr.ph
  %i.l = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtB9_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBN_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.e

bb.d:                                             ; preds = %.noexc, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7038
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !7038
  %.not = icmp eq ptr %i.h, %i.e
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c
  %i.m = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtBN_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.c
  resume { ptr, i32 } %i.l
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB12_9arguments12ArgumentNameEEENtNtNtNtB1M_4iter6traits8iterator8Iterator4folduNCINvNvB2S_8for_each4callBX_NCINvNvNtB2W_7collect14default_extend18unchecked_extenderTINtB8_3VecBY_EIB53_B1H_EEBX_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7047
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  invoke void @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE20extend_one_uncheckedCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a)
          to label %bb.c unwind label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7047
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB12_9arguments12ArgumentNameEEENtNtNtNtB1M_4iter6traits8iterator8Iterator4folduNCINvNvB2S_8for_each4callBX_NCINvNvNtB2W_7collect14default_extend8extenderTINtB8_3VecBY_EIB4S_B1H_EEBX_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [144 x i8], align 16              ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not2 = icmp eq ptr %.promoted, %i.c
  br i1 %.not2, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.e = phi ptr [ %i.f, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !7050
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.a, ptr noundef nonnull align 16 dereferenceable(144) %i.e, i64 144, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 144 ; 3 uses
  store ptr %i.f, ptr %i.d, align 8
  invoke void @_RNvXs2_NtNtNtCsbvkFyIu7lgC_4core4iter6traits7collectTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBQ_INtNtBb_6option6OptionNtNtB1q_9arguments12ArgumentNameEEEINtB5_6ExtendTB1m_B2a_EE10extend_oneCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(144) %i.a)
          to label %bb.c unwind label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void

bb.b:                                             ; preds = %.lr.ph
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtB11_9arguments12ArgumentNameEEENtNtNtB1L_3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7050
  %.not = icmp eq ptr %i.f, %i.c
  br i1 %.not, label %._crit_edge, label %.lr.ph

bb.d:                                             ; preds = %bb.b
  %i.h = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.g
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCsgbCypRs12E4_4pyo38pybacked11PyBackedStrBY_NtCs7p2uQeJxui2_9deltalake20PartitionFilterValueEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6schema10partitions15PartitionFilterENCINvNtNtB2E_8adapters3map12map_try_foldBX_INtNtB2G_6result6ResultB4c_NtNtB4k_6errors15DeltaTableErrorEB3C_INtNtNtB2G_3ops12control_flow11ControlFlowIB6e_B3C_zEB3C_ENCNvB1M_25convert_partition_filters0NCINvXB5D_INtB5D_12GenericShuntINtB5B_3MapBI_B8b_EIB6e_NtNtB2G_7convert10InfallibleB6E_EEB2y_8try_foldB3C_NCINvNtB8_16in_place_collect24write_in_place_with_dropB4c_E0B7V_E0E0B7f_EB1M_(ptr dead_on_unwind noalias noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 9 uses
  %i.d = alloca [24 x i8], align 8                ; 9 uses
  %i.e = alloca [24 x i8], align 8                ; 7 uses
  %i.f = alloca [24 x i8], align 8                ; 7 uses
  %i.g = alloca [48 x i8], align 8                ; 9 uses
  %i.h = alloca [24 x i8], align 8                ; 7 uses
  %i.i = alloca [24 x i8], align 8                ; 7 uses
  %i.j = alloca [24 x i8], align 8                ; 7 uses
  %i.k = alloca [96 x i8], align 16               ; 8 uses
  %i.l = alloca [16 x i8], align 8                ; 6 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.o, align 8        ; 2 uses
  %.not38 = icmp eq ptr %.promoted, %i.n
end_hunk_1
