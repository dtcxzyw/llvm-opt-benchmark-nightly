inline.NumInlined: 6795
inline.NumDeleted: 2943
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3R_5types3any5PyAnyENtNtB3R_3err5PyErrEiINtNtNtB1L_3ops12control_flow11ControlFlowIB3q_iB4Q_EiENCINvYBX_NtNtB3R_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2P_4takeINtB7E_4TakepEB1D_8try_fold5checkB3p_iB5Q_NCINvNtB4t_4list17try_new_from_iterQINtB2N_3MapBI_B63_EE0E0E0B5a_EB11_:bb.a
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
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3R_5types3any5PyAnyENtNtB3R_3err5PyErrEiINtNtNtB1L_3ops12control_flow11ControlFlowIB3q_iB4Q_EiENCINvYBX_NtNtB3R_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2P_4takeINtB7E_4TakepEB1D_8try_fold5checkB3p_iB5Q_NCINvNtB4t_4list17try_new_from_iterQINtB2N_3MapBI_B63_EE0E0E0B5a_EB11_:bb.a
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
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3R_5types3any5PyAnyENtNtB3R_3err5PyErrEiINtNtNtB1L_3ops12control_flow11ControlFlowIB3q_iB4Q_EiENCINvYBX_NtNtB3R_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2P_4takeINtB7E_4TakepEB1D_8try_fold5checkB3p_iB5Q_NCINvNtB4t_4list17try_new_from_iterQINtB2N_3MapBI_B63_EE0E0E0B5a_EB11_:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.q = load ptr, ptr %.val5, align 8, !noalias !6515, !noundef !12
  %i.r = call noundef i32 @PyList_SetItem(ptr noundef %i.q, i64 noundef %.sroa.0.029, ptr noundef nonnull %.sroa.4.8.copyload.i) #42, !noalias !6515 ; 0 uses
  %i.s = add i64 %.sroa.0.029, 1
  %.pre.i.i = load i64, ptr %.val, align 8, !noalias !6512
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i

_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0B2C_.exit.i.i: ; preds = %bb.d, %bb.c
  %4 = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.sink1.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.sink.i.i3.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %5 = icmp eq i64 %4, 0
  %6 = trunc nuw i64 %.sink.i.i3.i to i1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sink1.i.i.i, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.t, align 8, !alias.scope !6519
  store i64 2, ptr %0, align 8, !alias.scope !6519
end_hunk_2
begin_hunk_3_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs7p2uQeJxui2_9deltalake6schema5FieldENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1J_8adapters3map12map_try_foldBX_INtNtB1L_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3R_5types3any5PyAnyENtNtB3R_3err5PyErrEiINtNtNtB1L_3ops12control_flow11ControlFlowIB3q_iB4Q_EiENCINvYBX_NtNtB3R_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2P_4takeINtB7E_4TakepEB1D_8try_fold5checkB3p_iB5Q_NCINvNtB4t_4list17try_new_from_iterQINtB2N_3MapBI_B63_EE0E0E0B5a_EB11_:bb.a
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
end_hunk_3
begin_hunk_4_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1u_8adapters3map12map_try_foldBX_INtNtB1w_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3C_5types3any5PyAnyENtNtB3C_3err5PyErrEiINtNtNtB1w_3ops12control_flow11ControlFlowIB3b_iB4B_EiENCINvYBX_NtNtB3C_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2A_4takeINtB7p_4TakepEB1o_8try_fold5checkB3a_iB5B_NCINvNtB4e_4list17try_new_from_iterQINtB2y_3MapBI_B5O_EE0E0E0B4V_ECs7p2uQeJxui2_9deltalake:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5 = load ptr, ptr %i.f, align 8            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.029 = phi i64 [ %2, %.lr.ph ], [ %.sink1.i.i.i, %bb.g ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !6982
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.b, ptr noundef nonnull align 8 dereferenceable(48) %i.h, i64 48, i1 false)
end_hunk_4
begin_hunk_5_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1u_8adapters3map12map_try_foldBX_INtNtB1w_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3C_5types3any5PyAnyENtNtB3C_3err5PyErrEiINtNtNtB1w_3ops12control_flow11ControlFlowIB3b_iB4B_EiENCINvYBX_NtNtB3C_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2A_4takeINtB7p_4TakepEB1o_8try_fold5checkB3a_iB5B_NCINvNtB4e_4list17try_new_from_iterQINtB2y_3MapBI_B5O_EE0E0E0B4V_ECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.8..sroa_idx.i, i64 48, i1 false), !noalias !6982
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6986
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !6982
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = load i64, ptr %.val, align 8, !noalias !6995, !noundef !12
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !6995
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.n = ptrtoint ptr %.sroa.4.8.copyload.i to i64
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !6986
end_hunk_5
begin_hunk_6_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1u_8adapters3map12map_try_foldBX_INtNtB1w_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3C_5types3any5PyAnyENtNtB3C_3err5PyErrEiINtNtNtB1w_3ops12control_flow11ControlFlowIB3b_iB4B_EiENCINvYBX_NtNtB3C_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2A_4takeINtB7p_4TakepEB1o_8try_fold5checkB3a_iB5B_NCINvNtB4e_4list17try_new_from_iterQINtB2y_3MapBI_B5O_EE0E0E0B4V_ECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.q = load ptr, ptr %.val5, align 8, !noalias !7002, !noundef !12
  %i.r = call noundef i32 @PyList_SetItem(ptr noundef %i.q, i64 noundef %.sroa.0.029, ptr noundef nonnull %.sroa.4.8.copyload.i) #42, !noalias !7002 ; 0 uses
  %i.s = add i64 %.sroa.0.029, 1
  %.pre.i.i = load i64, ptr %.val, align 8, !noalias !6999
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.d, %bb.c
  %4 = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.sink1.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.sink.i.i3.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %5 = icmp eq i64 %4, 0
  %6 = trunc nuw i64 %.sink.i.i3.i to i1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sink1.i.i.i, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.t, align 8, !alias.scope !7006
  store i64 2, ptr %0, align 8, !alias.scope !7006
end_hunk_6
begin_hunk_7_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB1u_8adapters3map12map_try_foldBX_INtNtB1w_6result6ResultINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB3C_5types3any5PyAnyENtNtB3C_3err5PyErrEiINtNtNtB1w_3ops12control_flow11ControlFlowIB3b_iB4B_EiENCINvYBX_NtNtB3C_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB2A_4takeINtB7p_4TakepEB1o_8try_fold5checkB3a_iB5B_NCINvNtB4e_4list17try_new_from_iterQINtB2y_3MapBI_B5O_EE0E0E0B4V_ECs7p2uQeJxui2_9deltalake:bb.a
bb.e:                                             ; preds = %._crit_edge, %bb.f
  ret void

bb.f:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %.sink.i.i3.i, ptr %0, align 8, !alias.scope !7009
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7009
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringB2z_EENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
end_hunk_7
begin_hunk_8_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEENtNtNtNtB1o_4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB38_8adapters3map12map_try_foldBX_INtNtB1o_6result6ResultB1V_NtNtB20_3err5PyErrEiINtNtNtB1o_3ops12control_flow11ControlFlowIB4A_iB50_EiENCINvYBX_NtNtB20_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB3Z_4takeINtB7O_4TakepEB32_8try_fold5checkB4z_iB60_NCINvNtB2C_4list17try_new_from_iterQINtB3X_3MapBI_B6d_EE0E0E0B5k_ECs7p2uQeJxui2_9deltalake:bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %3, i64 8
  %.val5 = load ptr, ptr %i.f, align 8            ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.7.8..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.g
  %.sroa.0.029 = phi i64 [ %2, %.lr.ph ], [ %.sink1.i.i.i, %bb.g ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !7013
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.h, i64 32, i1 false)
end_hunk_8
begin_hunk_9_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEENtNtNtNtB1o_4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB38_8adapters3map12map_try_foldBX_INtNtB1o_6result6ResultB1V_NtNtB20_3err5PyErrEiINtNtNtB1o_3ops12control_flow11ControlFlowIB4A_iB50_EiENCINvYBX_NtNtB20_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB3Z_4takeINtB7O_4TakepEB32_8try_fold5checkB4z_iB60_NCINvNtB2C_4list17try_new_from_iterQINtB3X_3MapBI_B6d_EE0E0E0B5k_ECs7p2uQeJxui2_9deltalake:bb.a
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.8..sroa_idx.i, i64 48, i1 false), !noalias !7013
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7017
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !7013
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val) ]
  %i.l = load i64, ptr %.val, align 8, !noalias !7026, !noundef !12
  %i.m = add i64 %i.l, -1                         ; 2 uses
  store i64 %i.m, ptr %.val, align 8, !noalias !7026
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.n = ptrtoint ptr %.sroa.4.8.copyload.i to i64
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !7017
end_hunk_9
begin_hunk_10_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEENtNtNtNtB1o_4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB38_8adapters3map12map_try_foldBX_INtNtB1o_6result6ResultB1V_NtNtB20_3err5PyErrEiINtNtNtB1o_3ops12control_flow11ControlFlowIB4A_iB50_EiENCINvYBX_NtNtB20_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB3Z_4takeINtB7O_4TakepEB32_8try_fold5checkB4z_iB60_NCINvNtB2C_4list17try_new_from_iterQINtB3X_3MapBI_B6d_EE0E0E0B5k_ECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val5) ]
  %i.q = load ptr, ptr %.val5, align 8, !noalias !7033, !noundef !12
  %i.r = call noundef i32 @PyList_SetItem(ptr noundef %i.q, i64 noundef %.sroa.0.029, ptr noundef nonnull %.sroa.4.8.copyload.i) #42, !noalias !7033 ; 0 uses
  %i.s = add i64 %.sroa.0.029, 1
  %.pre.i.i = load i64, ptr %.val, align 8, !noalias !7030
  br label %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i

_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i: ; preds = %bb.d, %bb.c
  %4 = phi i64 [ %i.m, %bb.c ], [ %.pre.i.i, %bb.d ]
  %.sink1.i.i.i = phi i64 [ %i.n, %bb.c ], [ %i.s, %bb.d ] ; 3 uses
  %.sink.i.i3.i = phi i64 [ 1, %bb.c ], [ 0, %bb.d ] ; 2 uses
  %5 = icmp eq i64 %4, 0
  %6 = trunc nuw i64 %.sink.i.i3.i to i1
  %or.cond = select i1 %5, i1 true, i1 %6
  br i1 %or.cond, label %bb.f, label %bb.g

._crit_edge:                                      ; preds = %bb.g, %bb.a
  %.sroa.0.0.lcssa = phi i64 [ %2, %bb.a ], [ %.sink1.i.i.i, %bb.g ]
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0.0.lcssa, ptr %i.t, align 8, !alias.scope !7037
  store i64 2, ptr %0, align 8, !alias.scope !7037
end_hunk_10
begin_hunk_11_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCsgbCypRs12E4_4pyo38instance5BoundNtNtNtB20_5types3any5PyAnyEEEENtNtNtNtB1o_4iter6traits8iterator8Iterator8try_foldiNCINvNtNtB38_8adapters3map12map_try_foldBX_INtNtB1o_6result6ResultB1V_NtNtB20_3err5PyErrEiINtNtNtB1o_3ops12control_flow11ControlFlowIB4A_iB50_EiENCINvYBX_NtNtB20_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB8_3VecBX_EE0NCINvNvXs_NtB3Z_4takeINtB7O_4TakepEB32_8try_fold5checkB4z_iB60_NCINvNtB2C_4list17try_new_from_iterQINtB3X_3MapBI_B6d_EE0E0E0B5k_ECs7p2uQeJxui2_9deltalake:bb.a
bb.e:                                             ; preds = %._crit_edge, %bb.f
  ret void

bb.f:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.i, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  store i64 %.sink.i.i3.i, ptr %0, align 8, !alias.scope !7040
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sink1.i.i.i, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !7040
  %.sroa.315.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.315.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.10, i64 48, i1 false)
  br label %bb.e

bb.g:                                             ; preds = %_RNCINvNtNtCsgbCypRs12E4_4pyo35types4list17try_new_from_iterQINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB1R_6string6StringINtNtB15_6option6OptionINtNtB8_8instance5BoundNtNtB6_3any5PyAnyEEEENCINvYB2y_NtNtB8_10conversion12IntoPyObject28owned_sequence_into_pyobjectINtB1P_3VecB2y_EE0EE0Cs7p2uQeJxui2_9deltalake.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
end_hunk_11
begin_hunk_12_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE20try_new_with_optionsCs7p2uQeJxui2_9deltalake:bb.a
  br label %bb.bw

bb.bw:                                            ; preds = %bb.bv, %bb.u
  %.sroa.020.6.a = phi i8 [ 0, %bb.bv ], [ 1, %bb.u ] ; 4 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s)
  %i.ek = getelementptr inbounds nuw i8, ptr %3, i64 248 ; 4 uses
  %i.el = load i64, ptr %i.ek, align 8, !range !13, !alias.scope !8066, !noundef !12
end_hunk_12
begin_hunk_13_@_RNvMs_NtNtCs4tdlwR1I4n2_7parquet5arrow12arrow_writerINtB4_11ArrowWriterINtNtCs6Po7BT7Nknu_5alloc3vec3VechEE20try_new_with_optionsCs7p2uQeJxui2_9deltalake:bb.a
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit75

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit72, %bb.cc
  %4 = trunc nuw i8 %.sroa.020.6.a to i1
  br i1 %4, label %bb.ce, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs6Po7BT7Nknu_5alloc6string6StringEECs7p2uQeJxui2_9deltalake.exit

bb.ce:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema6schema6SchemaEECs7p2uQeJxui2_9deltalake.exit
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
end_hunk_13
