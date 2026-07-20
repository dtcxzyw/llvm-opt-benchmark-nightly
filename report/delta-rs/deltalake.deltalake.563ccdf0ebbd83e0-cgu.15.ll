inline.NumInlined: 6795
inline.NumDeleted: 2943
loop-unroll.NumCompletelyUnrolled: 4
loop-unroll.NumRuntimeUnrolled: 13
loop-unroll.NumUnrolled: 17
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1J_8adapters3map12map_try_foldBX_IBJ_INtNtBa_5boxed3BoxNtBZ_4ExprEEuINtNtNtB1L_3ops12control_flow11ControlFlowIB3Z_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5B_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0NCINvNvMsg_NtB2P_7flattenINtB8s_13FlattenCompatppE13iter_try_fold7flattenB3p_uB3Y_NCINvNvXsi_B8s_B8G_B1D_8try_fold7flattenB3p_uB3Y_NCIB2L_B3t_INtNtB1L_6result6ResultB4J_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Y_NCB5w_s_0NCINvXB2P_INtB2P_12GenericShuntINtB2N_3MapINtB8s_7FlatMapBI_B3p_B5u_EBc4_EIBaA_NtNtB1L_7convert10InfallibleBb0_EEB1D_8try_folduNCINvNvB1D_12try_for_each4callB4J_B4E_NcNtB4E_5Break0E0B4E_E0E0E0E0E0B3Y_ECs7p2uQeJxui2_9deltalake:bb.a
  br label %._crit_edge

bb.j:                                             ; preds = %.lr.ph.i.i.i.1.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6490
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6488
  %.not = icmp eq ptr %i.m, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldBX_NtBZ_10PushedDownuNCNvMs2_BZ_INtBZ_25FilterPushdownPropagationINtNtBa_4sync3ArcDNtNtB11_14execution_plan13ExecutionPlanEL_EE6if_all0NCINvNvB2o_8for_each4callB41_NCINvMsj_B8_INtB8_3VecB41_E14extend_trustedINtB3u_3MapBI_B4j_EE0E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6499
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.h, i64 40, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 40 ; 3 uses
  store ptr %i.i, ptr %i.d, align 8
  %i.j = invoke noundef zeroext i1 @_RNvMs1_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownNtB5_25ChildFilterPushdownResult3all(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.a)
          to label %_RNCNvMs2_NtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdownINtB7_25FilterPushdownPropagationINtNtCs6Po7BT7Nknu_5alloc4sync3ArcDNtNtB9_14execution_plan13ExecutionPlanEL_EE6if_all0Cs7p2uQeJxui2_9deltalake.exit.i unwind label %bb.c, !noalias !6499

bb.c:                                             ; preds = %bb.b
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.a) #37
          to label %.body unwind label %bb.d, !noalias !6499

bb.d:                                             ; preds = %bb.c
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6499
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
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6499
  %i.n = getelementptr inbounds nuw i8, ptr %i.f, i64 %.val3
  %i.o = zext i1 %i.j to i8
  store i8 %i.o, ptr %i.n, align 1, !noalias !6503
  %i.p = add i64 %.val3, 1                        ; 2 uses
  %.not = icmp eq ptr %i.i, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

bb.g:                                             ; preds = %.body
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs5wg436RVUAP_24datafusion_physical_plan15filter_pushdown25ChildFilterPushdownResultEECs7p2uQeJxui2_9deltalake.exit: ; preds = %.body
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3R_5types3any5PyAnyENtNtB3R_3err5PyErrEiINtNtNtB1L_3ops12control_flow11ControlFlowIB3q_iB4Q_EiENCINvYBX_NtNtB3R_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2P_4takeINtB7E_4TakepEB1D_8try_fold5checkB3p_iB5Q_NCINvNtB4t_4list17try_new_from_iterQINtB2N_3MapBI_B63_EE0E0E0B5a_EB11_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([64 x i8]) align 8 captures(none) dereferenceable(64) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, i64 noundef %2, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6508
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.b, ptr noundef nonnull align 8 dereferenceable(96) %i.h, i64 96, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 96 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6512
  call void @_RNvXsT_NtCs7p2uQeJxui2_9deltalake6schemaNtB5_5FieldNtNtCsgbCypRs12E4_4pyo310conversion12IntoPyObject13into_pyobject(ptr noalias noundef nonnull sret([64 x i8]) align 8 captures(address) dereferenceable(64) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.b), !noalias !6519
  %i.j = load i64, ptr %i.a, align 8, !range !11, !noalias !6512, !noundef !12
  %i.k = trunc nuw i64 %i.j to i1
  %.sroa.4.8.copyload.i = load ptr, ptr %i.g, align 8, !noalias !6520 ; 2 uses
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.8..sroa_idx.i, i64 48, i1 false), !noalias !6508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6508
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = load i64, ptr %.val, align 8, !noalias !6521, !noundef !12
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !6521
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.n = ptrtoint ptr %.sroa.4.8.copyload.i to i64
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6512
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6508
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.o = load i64, ptr %.val, align 8, !noalias !6525, !noundef !12
  %i.p = add i64 %i.o, -1
  store i64 %i.p, ptr %.val, align 8, !noalias !6525
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.q = load ptr, ptr %.val5, align 8, !noalias !6528, !noundef !12
  %i.r = call noundef i32 @PyList_SetItem(ptr noundef %i.q, i64 noundef %.sroa.0.029, ptr noundef nonnull %.sroa.4.8.copyload.i) #39, !noalias !6528 ; 0 uses
  %i.s = add i64 %.sroa.0.029, 1
  %.pre.i.i = load i64, ptr %.val, align 8, !noalias !6525
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i

_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i: ; preds = %bb.d, %bb.c
  %i.t = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.sink1.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.sink.i.i3.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %i.u = icmp eq i64 %i.t, 0
  %i.v = trunc nuw i64 %.sink.i.i3.i to i1
  %or.cond = or i1 %i.u, %i.v
  br i1 %or.cond, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sink1.i.i.i, %bb.g ]
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.w, align 8, !alias.scope !6532
  store i64 2, ptr %0, align 8, !alias.scope !6532
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.f
  ret void

bb.f:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %.sink.i.i3.i, ptr %0, align 8, !alias.scope !6535
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !6535
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions13TableFeaturesENCINvNtNtB1U_8adapters3map12map_try_foldBX_B3s_B2S_INtNtB1W_6result6ResultB2S_zENvYBX_INtNtB1W_7convert4IntoB3s_E4intoNCINvNtB8_16in_place_collect24write_in_place_with_dropB3s_E0E0B5v_EB11_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #7 personality ptr @rust_eh_personality {
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
  %5 = ptrtoint ptr %i.b to i64                   ; 3 uses
  %i.e = sub i64 %5, %.promoted19                 ; 7 uses
  %min.iters.check = icmp ult i64 %i.e, 4
  %i.f = sub i64 %.promoted18, %i.d
  %diff.check = icmp ugt i64 %i.f, -32
  %or.cond = or i1 %min.iters.check, %diff.check
  br i1 %or.cond, label %.lr.ph.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check20 = icmp ult i64 %i.e, 32
  br i1 %min.iters.check20, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %n.mod.vf = and i64 %i.e, 28
  %n.vec = and i64 %i.e, -32                      ; 5 uses
  %i.g = getelementptr i8, ptr %2, i64 %n.vec     ; 2 uses
  %i.h = getelementptr i8, ptr %.promoted, i64 %n.vec ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %next.gep = getelementptr i8, ptr %2, i64 %index ; 2 uses
  %next.gep21 = getelementptr i8, ptr %.promoted, i64 %index ; 2 uses
  %i.i = getelementptr i8, ptr %next.gep21, i64 16
  %wide.load = load <16 x i8>, ptr %next.gep21, align 1
  %wide.load22 = load <16 x i8>, ptr %i.i, align 1
  %i.j = getelementptr i8, ptr %next.gep, i64 16
  store <16 x i8> %wide.load, ptr %next.gep, align 1
  store <16 x i8> %wide.load22, ptr %i.j, align 1
  %index.next = add nuw i64 %index, 32            ; 2 uses
  %i.k = icmp eq i64 %index.next, %n.vec
  br i1 %i.k, label %middle.block, label %vector.body, !llvm.loop !6539

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.e, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %vec.epilog.iter.check

vec.epilog.iter.check:                            ; preds = %middle.block
  %min.epilog.iters.check = icmp eq i64 %n.mod.vf, 0
  br i1 %min.epilog.iters.check, label %.lr.ph.preheader, label %vec.epilog.ph, !prof !6542

vec.epilog.ph:                                    ; preds = %vector.main.loop.iter.check, %vec.epilog.iter.check
  %vec.epilog.resume.val = phi i64 [ %n.vec, %vec.epilog.iter.check ], [ 0, %vector.main.loop.iter.check ]
  %n.vec25 = and i64 %i.e, -4                     ; 4 uses
  %i.l = getelementptr i8, ptr %2, i64 %n.vec25   ; 2 uses
  %i.m = getelementptr i8, ptr %.promoted, i64 %n.vec25 ; 2 uses
  br label %vec.epilog.vector.body

vec.epilog.vector.body:                           ; preds = %vec.epilog.vector.body, %vec.epilog.ph
  %index26 = phi i64 [ %vec.epilog.resume.val, %vec.epilog.ph ], [ %index.next30, %vec.epilog.vector.body ] ; 3 uses
  %next.gep27.a = getelementptr i8, ptr %2, i64 %index26
  %next.gep28 = getelementptr i8, ptr %.promoted, i64 %index26
  %wide.load29 = load <4 x i8>, ptr %next.gep28, align 1
  store <4 x i8> %wide.load29, ptr %next.gep27.a, align 1
  %index.next30 = add nuw i64 %index26, 4         ; 2 uses
  %i.n = icmp eq i64 %index.next30, %n.vec25
  br i1 %i.n, label %vec.epilog.middle.block, label %vec.epilog.vector.body, !llvm.loop !6543

vec.epilog.middle.block:                          ; preds = %vec.epilog.vector.body
  %cmp.n31 = icmp eq i64 %i.e, %n.vec25
  br i1 %cmp.n31, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %iter.check, %vec.epilog.iter.check, %vec.epilog.middle.block
  %.sroa.4.013.ph = phi ptr [ %2, %iter.check ], [ %i.g, %vec.epilog.iter.check ], [ %i.l, %vec.epilog.middle.block ] ; 2 uses
  %.ph = phi ptr [ %.promoted, %iter.check ], [ %i.h, %vec.epilog.iter.check ], [ %i.m, %vec.epilog.middle.block ] ; 3 uses
  %.ph36 = ptrtoint ptr %.ph to i64               ; 2 uses
  %i.o = sub i64 %5, %.ph36
  %xtraiter = and i64 %i.o, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol

.lr.ph.prol:                                      ; preds = %.lr.ph.preheader, %.lr.ph.prol
  %.sroa.4.013.prol = phi ptr [ %i.s, %.lr.ph.prol ], [ %.sroa.4.013.ph, %.lr.ph.preheader ] ; 2 uses
  %i.p = phi ptr [ %i.r, %.lr.ph.prol ], [ %.ph, %.lr.ph.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.prol ], [ 0, %.lr.ph.preheader ]
  %i.q = load i8, ptr %i.p, align 1, !range !6544, !noundef !12
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 1 ; 3 uses
  store i8 %i.q, ptr %.sroa.4.013.prol, align 1
  %i.s = getelementptr inbounds nuw i8, ptr %.sroa.4.013.prol, i64 1 ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.prol.loopexit, label %.lr.ph.prol, !llvm.loop !6545

.lr.ph.prol.loopexit:                             ; preds = %.lr.ph.prol, %.lr.ph.preheader
  %.lcssa35.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %.lcssa34.unr = phi ptr [ poison, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.sroa.4.013.unr = phi ptr [ %.sroa.4.013.ph, %.lr.ph.preheader ], [ %i.s, %.lr.ph.prol ]
  %.unr = phi ptr [ %.ph, %.lr.ph.preheader ], [ %i.r, %.lr.ph.prol ]
  %i.t = sub i64 %.ph36, %5
  %i.u = icmp ugt i64 %i.t, -8
  br i1 %i.u, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.prol.loopexit, %.lr.ph
  %.sroa.4.013 = phi ptr [ %i.at, %.lr.ph ], [ %.sroa.4.013.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.v = phi ptr [ %i.as, %.lr.ph ], [ %.unr, %.lr.ph.prol.loopexit ] ; 9 uses
  %i.w = load i8, ptr %i.v, align 1, !range !6544, !noundef !12
  %i.x = getelementptr inbounds nuw i8, ptr %i.v, i64 1
  store i8 %i.w, ptr %.sroa.4.013, align 1
  %i.y = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 1
  %i.z = load i8, ptr %i.x, align 1, !range !6544, !noundef !12
  %i.aa = getelementptr inbounds nuw i8, ptr %i.v, i64 2
  store i8 %i.z, ptr %i.y, align 1
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 2
  %i.ac = load i8, ptr %i.aa, align 1, !range !6544, !noundef !12
  %i.ad = getelementptr inbounds nuw i8, ptr %i.v, i64 3
  store i8 %i.ac, ptr %i.ab, align 1
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 3
  %i.af = load i8, ptr %i.ad, align 1, !range !6544, !noundef !12
  %i.ag = getelementptr inbounds nuw i8, ptr %i.v, i64 4
  store i8 %i.af, ptr %i.ae, align 1
  %i.ah = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 4
  %i.ai = load i8, ptr %i.ag, align 1, !range !6544, !noundef !12
  %i.aj = getelementptr inbounds nuw i8, ptr %i.v, i64 5
  store i8 %i.ai, ptr %i.ah, align 1
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 5
  %i.al = load i8, ptr %i.aj, align 1, !range !6544, !noundef !12
  %i.am = getelementptr inbounds nuw i8, ptr %i.v, i64 6
  store i8 %i.al, ptr %i.ak, align 1
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 6
  %i.ao = load i8, ptr %i.am, align 1, !range !6544, !noundef !12
  %i.ap = getelementptr inbounds nuw i8, ptr %i.v, i64 7
  store i8 %i.ao, ptr %i.an, align 1
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 7
  %i.ar = load i8, ptr %i.ap, align 1, !range !6544, !noundef !12
  %i.as = getelementptr inbounds nuw i8, ptr %i.v, i64 8 ; 3 uses
  store i8 %i.ar, ptr %i.aq, align 1
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.4.013, i64 8 ; 2 uses
  %.not.7 = icmp eq ptr %i.as, %i.b
  br i1 %.not.7, label %._crit_edge, label %.lr.ph, !llvm.loop !6547

._crit_edge:                                      ; preds = %.lr.ph.prol.loopexit, %.lr.ph, %vec.epilog.middle.block, %middle.block
  %.lcssa17 = phi ptr [ %i.m, %vec.epilog.middle.block ], [ %i.h, %middle.block ], [ %.lcssa35.unr, %.lr.ph.prol.loopexit ], [ %i.as, %.lr.ph ]
  %.lcssa = phi ptr [ %i.l, %vec.epilog.middle.block ], [ %i.g, %middle.block ], [ %.lcssa34.unr, %.lr.ph.prol.loopexit ], [ %i.at, %.lr.ph ]
  store ptr %.lcssa17, ptr %i.c, align 8
  br label %bb.b

bb.b:                                             ; preds = %._crit_edge, %bb.a
  %.sroa.4.0.lcssa = phi ptr [ %.lcssa, %._crit_edge ], [ %2, %bb.a ]
  %i.au = insertvalue { ptr, ptr } poison, ptr %1, 0
  %i.av = insertvalue { ptr, ptr } %i.au, ptr %.sroa.4.0.lcssa, 1
  ret { ptr, ptr } %i.av
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB22_8adapters5chain5ChainINtNtNtB22_7sources4once4OnceBX_EBI_EE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
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
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !alias.scope !6548, !noalias !6553, !noundef !12
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted10 = load i64, ptr %i.h, align 8, !alias.scope !6548, !noalias !6553
  br label %bb.e

._crit_edge:                                      ; preds = %bb.e, %._crit_edge14
  %.val5 = phi i64 [ %.val5.pre, %._crit_edge14 ], [ %i.aa, %bb.e ]
  %.lcssa = phi ptr [ %.promoted, %._crit_edge14 ], [ %i.y, %bb.e ] ; 2 uses
  %.val4 = load ptr, ptr %1, align 8, !nonnull !12, !align !375, !noundef !12
  store i64 %.val5, ptr %.val4, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6556)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !6559)
  %i.i = ptrtoint ptr %i.d to i64
  %i.j = ptrtoint ptr %.lcssa to i64
  %i.k = sub nuw i64 %i.i, %i.j
  %i.l = udiv exact i64 %i.k, 416
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 %.lcssa, i64 noundef %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.b, !noalias !6562

bb.b:                                             ; preds = %._crit_edge
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6562
  %i.n = load ptr, ptr %0, align 8, !alias.scope !6562, !nonnull !12, !noundef !12
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !6562, !noundef !12
  store i64 %i.p, ptr %i.b, align 8, !noalias !6562
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.n, ptr %i.q, align 8, !noalias !6562
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b)
          to label %bb.d unwind label %bb.c, !noalias !6562

bb.c:                                             ; preds = %bb.b
  %i.r = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6562
  unreachable

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6562
  resume { ptr, i32 } %i.m

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6562
  %i.s = load ptr, ptr %0, align 8, !alias.scope !6562, !nonnull !12, !noundef !12
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.u = load i64, ptr %i.t, align 8, !alias.scope !6562, !noundef !12
  store i64 %i.u, ptr %i.a, align 8, !noalias !6562
  %i.v = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.s, ptr %i.v, align 8, !noalias !6562
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a), !noalias !6562
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6562
  ret void

bb.e:                                             ; preds = %.lr.ph, %bb.e
  %i.w = phi i64 [ %.promoted10, %.lr.ph ], [ %i.aa, %bb.e ] ; 2 uses
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %bb.e ] ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 416 ; 3 uses
  %i.z = getelementptr inbounds nuw [416 x i8], ptr %i.g, i64 %i.w
  tail call void @llvm.memmove.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.z, ptr noundef nonnull align 16 dereferenceable(416) %i.x, i64 416, i1 false)
  %i.aa = add i64 %i.w, 1                         ; 2 uses
  %.not = icmp eq ptr %i.y, %i.d
  br i1 %.not, label %._crit_edge, label %bb.e
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB11_4expr4ExprENCINvNtNtB22_8adapters10filter_map19filter_map_try_foldBX_B3A_B30_INtNtB24_6result6ResultB30_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3A_E0E0B4X_ECs7p2uQeJxui2_9deltalake(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias nofree noundef nonnull readnone captures(none) %3, ptr nofree noundef readnone captures(none) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [416 x i8], align 16              ; 8 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %.sroa.410 = alloca [416 x i8], align 16        ; 4 uses
  %i.c = alloca [416 x i8], align 16              ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.f = load ptr, ptr %i.d, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %i.g = load ptr, ptr %i.e, align 8, !nonnull !12, !noundef !12 ; 2 uses
  %.not13 = icmp eq ptr %i.g, %i.f
  br i1 %.not13, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.410.40..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.410, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 360
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs7p2uQeJxui2_9deltalake.exit
  %i.l = phi ptr [ %i.f, %.lr.ph ], [ %i.v, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %i.m = phi ptr [ %i.g, %.lr.ph ], [ %i.u, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs7p2uQeJxui2_9deltalake.exit ] ; 2 uses
  %.sroa.4.014 = phi ptr [ %2, %.lr.ph ], [ %.pn9.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map19filter_map_try_foldNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1i_4expr4ExprINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropB2c_EINtNtBa_6result6ResultB2u_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB45_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB2z_16in_place_collect24write_in_place_with_dropB2c_E0E0Cs7p2uQeJxui2_9deltalake.exit ] ; 6 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.c, ptr noundef nonnull align 16 dereferenceable(416) %i.m, i64 416, i1 false)
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 416 ; 3 uses
  store ptr %i.n, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.410)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %.sroa.410, ptr noundef nonnull align 16 dereferenceable(416) %i.c, i64 416, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !6563
  store ptr %.sroa.4.014, ptr %i.h, align 8, !noalias !6563
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !6563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.a, ptr noundef nonnull align 16 dereferenceable(416) %i.c, i64 416, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !6566)
  %i.o = load i64, ptr %i.a, align 16, !range !100, !alias.scope !6569, !noalias !6571, !noundef !12
  switch i64 %i.o, label %bb.c [
    i64 2, label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0Cs7p2uQeJxui2_9deltalake.exit.i
    i64 0, label %.invoke.i
  ]

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(56) %i.j)
          to label %.invoke.i unwind label %bb.d, !noalias !6571

bb.d:                                             ; preds = %bb.c
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(352) %i.k) #37
          to label %.body.i unwind label %bb.e, !noalias !6571

.invoke.i:                                        ; preds = %bb.c, %bb.b
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr15WildcardOptionsECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 dereferenceable(352) %i.k)
          to label %_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0Cs7p2uQeJxui2_9deltalake.exit.thread.i unwind label %bb.f, !noalias !6563

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #38, !noalias !6571
  unreachable
end_hunk_0
