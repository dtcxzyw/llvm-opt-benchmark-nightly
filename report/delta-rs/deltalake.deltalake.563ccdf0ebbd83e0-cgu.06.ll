Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake.deltalake.563ccdf0ebbd83e0-cgu.06?download=true
inline.NumInlined: 6907
inline.NumDeleted: 2175
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1u_EEB2e_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1u_ENCINvNtB7_3map8map_foldRB1u_B3m_B3m_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB4D_20find_aggregate_exprsBO_E0BO_E0NCINvNvMsg_NtB7_7flattenINtB60_13FlattenCompatppE9iter_fold7flattenB3m_B3m_NCINvNvXsi_B60_B6d_B2J_4fold7flattenINtNtB3p_9into_iter8IntoIterB1u_EB3m_NCB4A_s_0E0E0E0ECs7p2uQeJxui2_9deltalake:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.i, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !20845
  br i1 %i.q, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.r = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.s = ptrtoint ptr %.sroa.3.0.copyload to i64
  %i.t = sub nuw i64 %i.r, %i.s
  %i.u = udiv exact i64 %i.t, 112
  %i.v = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.d ], [ %i.x, %bb.e ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !20844
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !20843
  %i.w = getelementptr inbounds nuw [112 x i8], ptr %.sroa.3.0.copyload, i64 %.sroa.01.0.i.i ; 2 uses
  store ptr %i.w, ptr %i.v, align 8, !noalias !20844
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1v_EB2e_NCINvNtB1z_5utils19find_exprs_in_exprsNCINvB2Z_20find_aggregate_exprsINtNtBW_5chain5ChainIB42_INtNtNtBb_5slice4iter4IterB1v_EINtNtBb_6option4IterB1v_EEB4V_EE0B41_E0NCINvNvMsg_NtBW_7flattenINtB5J_13FlattenCompatppE9iter_fold7flattenB2e_B2e_NCINvNvXsi_B5J_B5W_NtNtNtBY_6traits8iterator8Iterator4fold7flattenINtNtB2h_9into_iter8IntoIterB1v_EB2e_NCB2W_s_0E0E0E0INtB7_5FnMutTB2e_B1u_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.i, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.j, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.h, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.w), !noalias !20846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !20844
  %i.x = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.y = icmp eq i64 %i.x, %i.u
  br i1 %i.y, label %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i, label %bb.e

_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %bb.e, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !20843
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.i, i64 24, i1 false), !noalias !20845
  br label %bb.f

bb.f:                                             ; preds = %_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i, %bb.b
  %i.z = trunc nuw i64 %i.p to i1
  br i1 %i.z, label %bb.g, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit

bb.g:                                             ; preds = %bb.f
  %i.aa = load ptr, ptr %i.k, align 8, !noalias !20843, !nonnull !13, !align !17, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !20843
  store ptr %i.aa, ptr %i.g, align 8, !noalias !20847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !20845
  %.not4.i.i = icmp eq ptr %.sroa.2.0.copyload, null
  br i1 %.not4.i.i, label %_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i, label %.lr.ph.split.us.i.i

.lr.ph.split.us.i.i:                              ; preds = %bb.g
  %i.ab = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !20847
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.e, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !20848
  store ptr %.sroa.2.0.copyload, ptr %i.ab, align 8, !noalias !20847
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1u_EB2d_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB2Y_20find_aggregate_exprsINtNtBV_5chain5ChainIB41_INtNtNtBb_5slice4iter4IterB1u_EINtNtBb_6option4IterB1u_EEB4U_EE0B40_E0NCINvNvMsg_NtBV_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB2d_B2d_NCINvNvXsi_B5I_B5V_NtNtNtBX_6traits8iterator8Iterator4fold7flattenINtNtB2g_9into_iter8IntoIterB1u_EB2d_NCB2V_s_0E0E0E0INtB7_5FnMutTB2d_B1t_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.g, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) dereferenceable_or_null(112) %.sroa.2.0.copyload), !noalias !20846
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !20847
  br label %_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i

_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i: ; preds = %.lr.ph.split.us.i.i, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !20843
  br label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.f, %_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i
  %.sink.i = phi ptr [ %i.f, %_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit.i ], [ %2, %bb.f ]
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.l, ptr noundef nonnull align 8 dereferenceable(24) %.sink.i, i64 24, i1 false), !noalias !20849
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  br label %bb.h

bb.h:                                             ; preds = %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit, %bb.a
  %i.ac = load i64, ptr %1, align 8, !range !18, !noundef !13
  %i.ad = trunc nuw i64 %i.ac to i1
  br i1 %i.ad, label %bb.i, label %bb.l

bb.i:                                             ; preds = %bb.h
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !align !29, !noundef !13 ; 2 uses
  %i.ag = load ptr, ptr %i.m, align 8, !nonnull !13, !noundef !13
  %i.ah = load ptr, ptr %i.n, align 8, !nonnull !13, !noundef !13
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !20850
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.d, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !20851
  %.not7.i = icmp eq ptr %i.af, null
  br i1 %.not7.i, label %_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !20852
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !20851
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20852
  invoke void @_RINvNtCs8VI8w5SIoU4_15datafusion_expr5utils18find_exprs_in_exprNCINvB2_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1u_INtNtNtB1C_5slice4iter4IterNtNtB4_4expr4ExprEINtNtB1C_6option4IterB2R_EEB39_EE0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) dereferenceable_or_null(112) %i.af, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.ah)
          to label %_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1x_INtNtNtB1F_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1F_6option4IterB2U_EEB3c_EE0B1w_E0Cs7p2uQeJxui2_9deltalake.exit.i.us.i unwind label %.split.i, !noalias !20853

_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1x_INtNtNtB1F_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1F_6option4IterB2U_EEB3c_EE0B1w_E0Cs7p2uQeJxui2_9deltalake.exit.i.us.i: ; preds = %.lr.ph.split.us.i
  %.sroa.6.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 24 ; 2 uses
  %.sroa.7.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20854
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %2, i64 24, i1 false), !noalias !20851
  %.sroa.4.24.copyload.i.us.i = load i64, ptr %i.b, align 8, !noalias !20852
  %.sroa.6.24.copyload.i.us.i = load ptr, ptr %.sroa.6.24..sroa_idx.i.i, align 8, !noalias !20852, !nonnull !13, !noundef !13 ; 3 uses
  %.sroa.7.24.copyload.i.us.i = load i64, ptr %.sroa.7.24..sroa_idx.i.i, align 8, !noalias !20852 ; 2 uses
  %i.aj = icmp ult i64 %.sroa.7.24.copyload.i.us.i, 82351536043346213
  call void @llvm.assume(i1 %i.aj)
  %i.ak = getelementptr inbounds nuw [112 x i8], ptr %.sroa.6.24.copyload.i.us.i, i64 %.sroa.7.24.copyload.i.us.i
  store ptr %.sroa.6.24.copyload.i.us.i, ptr %i.ai, align 8, !noalias !20854
  store ptr %.sroa.6.24.copyload.i.us.i, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !20854
  store i64 %.sroa.4.24.copyload.i.us.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !20854
  store ptr %i.ak, ptr %.sroa.6.0..sroa_idx.i.i.i, align 8, !noalias !20854
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4foldINtB8_3VecBX_EQNCINvNtB11_5utils19find_exprs_in_exprsNCINvB31_20find_aggregate_exprsINtNtNtB1N_8adapters5chain5ChainIB44_INtNtNtB1P_5slice4iter4IterBX_EINtNtB1P_6option4IterBX_EEB59_EE0B43_Es_0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.ai, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull %i.ag), !noalias !20855
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20854
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20852
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !20852
  br label %_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit

.split.i:                                         ; preds = %.lr.ph.split.us.i
  %i.al = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #48
          to label %bb.k unwind label %bb.j, !noalias !20853

bb.j:                                             ; preds = %.split.i
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49, !noalias !20853
  unreachable

bb.k:                                             ; preds = %.split.i
  resume { ptr, i32 } %i.al

_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %_RNCINvNtCs8VI8w5SIoU4_15datafusion_expr5utils19find_exprs_in_exprsNCINvB4_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB1x_INtNtNtB1F_5slice4iter4IterNtNtB6_4expr4ExprEINtNtB1F_6option4IterB2U_EEB3c_EE0B1w_E0Cs7p2uQeJxui2_9deltalake.exit.i.us.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %i.d, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !20850
  br label %bb.l

bb.l:                                             ; preds = %bb.h, %_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake.exit
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2B_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0EINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtB1I_4ExprEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB6J_8for_each4callB6w_NCINvMsj_B5N_INtB5N_3VecB6w_E14extend_trustedBO_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20856 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !noundef !13 ; 2 uses
  %.not = icmp eq ptr %i.d, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.f = load ptr, ptr %i.e, align 8, !noundef !13
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB2i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB5p_8for_each4callNtB1p_4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6N_3VecB6t_E14extend_trustedINtNtB8_5chain5ChainBN_INtNtB6N_9into_iter8IntoIterB6t_EEE0E0ECs7p2uQeJxui2_9deltalake(ptr noundef nonnull %i.d, ptr noundef %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.g = load ptr, ptr %0, align 8, !noundef !13
  %.not4 = icmp eq ptr %i.g, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1H_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB1N_8adapters5chain5ChainINtNtB3V_3map3MapINtNtNtB1P_5slice4iter4IterNtBZ_4SortENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5q_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE37extract_and_prepend_within_group_args0EBI_EE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val7 = load ptr, ptr %1, align 8, !nonnull !13, !align !17, !noundef !13
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.h, align 8, !noundef !13
  store i64 %.val8, ptr %.val7, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  ret void

bb.g:                                             ; preds = %bb.b
  %i.i = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !13, !align !17, !noundef !13
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.j, align 8, !noundef !13
  store i64 %.val6, ptr %.val, align 8
  %i.k = load ptr, ptr %0, align 8, !noundef !13
  %.not16 = icmp eq ptr %i.k, null
  br i1 %.not16, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit, label %bb.i

bb.h:                                             ; preds = %bb.i
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.i, %bb.g
  resume { ptr, i32 } %i.i

bb.i:                                             ; preds = %bb.g
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %0)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB1s_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3l_8for_each4callB1s_NCINvMsj_B2w_INtB2w_3VecB1s_E14extend_trustedBO_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(448) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20864 {
bb.a:
  %i.a = alloca [416 x i8], align 16              ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 2 uses
  %i.e = alloca [416 x i8], align 16              ; 4 uses
  %i.f = load i64, ptr %0, align 16, !range !37, !noundef !13
  %.not = icmp eq i64 %i.f, 4
  br i1 %.not, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(416) %i.e, ptr noundef nonnull align 16 dereferenceable(416) %0, i64 416, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20865)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !20866
  %.sroa.0.0.copyload25.i = load i64, ptr %i.e, align 16, !alias.scope !20867 ; 2 uses
  store i64 3, ptr %i.e, align 16, !alias.scope !20868
  %.not6.i = icmp eq i64 %.sroa.0.0.copyload25.i, 3
  br i1 %.not6.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs7p2uQeJxui2_9deltalake.exit, label %.lr.ph.i

bb.c:                                             ; preds = %.lr.ph.i
  %i.g = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 16 dereferenceable(416) %i.e) #48
          to label %bb.i unwind label %bb.d

.lr.ph.i:                                         ; preds = %bb.b
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20866
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(408) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(408) %i.h, i64 408, i1 false)
  store i64 %.sroa.0.0.copyload25.i, ptr %i.a, align 16, !noalias !20866
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2V_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtB11_7sources4once4OnceB1O_EINtNtB2V_9into_iter8IntoIterB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(416) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit.loopexit.i unwind label %bb.c, !noalias !20865

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit.loopexit.i: ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20866
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs7p2uQeJxui2_9deltalake.exit

bb.d:                                             ; preds = %bb.c
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.b, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit.loopexit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs7p2uQeJxui2_9deltalake.exit, %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.k = load ptr, ptr %i.j, align 16, !noundef !13
  %.not4 = icmp eq ptr %i.k, null
  br i1 %.not4, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.d, ptr noundef nonnull align 16 dereferenceable(32) %i.j, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvB1W_8for_each4callBX_NCINvMsj_B8_INtB8_3VecBX_E14extend_trustedINtNtNtB22_8adapters5chain5ChainINtNtNtB22_7sources4once4OnceBX_EBI_EE0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %.val7 = load ptr, ptr %1, align 8, !nonnull !13, !align !17, !noundef !13
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val8 = load i64, ptr %i.l, align 8, !noundef !13
  store i64 %.val8, ptr %.val7, align 8
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f
  ret void

bb.i:                                             ; preds = %bb.c
  %.val = load ptr, ptr %1, align 8, !nonnull !13, !align !17, !noundef !13
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val6 = load i64, ptr %i.m, align 8, !noundef !13
  store i64 %.val6, ptr %.val, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 16, !noundef !13
  %.not17 = icmp eq ptr %i.o, null
  br i1 %.not17, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit, label %bb.k

bb.j:                                             ; preds = %bb.k
  %i.p = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit: ; preds = %bb.k, %bb.i
  resume { ptr, i32 } %i.g

bb.k:                                             ; preds = %bb.i
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprEECs7p2uQeJxui2_9deltalake.exit unwind label %bb.j
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtB9_7sources8repeat_n7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterB1z_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB3O_8for_each4callB1z_NCINvMsj_B2Z_INtB2Z_3VecB1z_E14extend_trustedBO_E0E0ECs7p2uQeJxui2_9deltalake(ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !20899 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 9 uses
  %i.b = alloca [32 x i8], align 8                ; 5 uses
  %.sroa.8.i = alloca [24 x i8], align 8          ; 9 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 4 uses
  %i.e = alloca [32 x i8], align 8                ; 2 uses
  %i.f = alloca [40 x i8], align 8                ; 13 uses
  %i.g = load i64, ptr %0, align 8, !range !33, !noundef !13
  %.not = icmp eq i64 %i.g, -9223372036854775806
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %0, i64 40, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !20900)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %1, ptr %i.c, align 8, !noalias !20901
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20901
  %i.i = load i64, ptr %i.f, align 8, !range !25, !alias.scope !20900, !noundef !13 ; 2 uses
  %.not.i14.i = icmp eq i64 %i.i, -9223372036854775807
  br i1 %.not.i14.i, label %.thread12.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 32 ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.c

.thread12.i:                                      ; preds = %bb.o, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20901
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs7p2uQeJxui2_9deltalake.exit

bb.c:                                             ; preds = %bb.o, %.lr.ph.i
  %i.m = phi i64 [ %i.i, %.lr.ph.i ], [ %i.u, %bb.o ] ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !20902)
  call void @llvm.experimental.noalias.scope.decl(metadata !20903)
  %i.n = load i64, ptr %i.j, align 8, !range !20904, !alias.scope !20905, !noundef !13
  %i.o = add i64 %i.n, -1                         ; 3 uses
  %.not11.i.i = icmp eq i64 %i.o, 0
  br i1 %.not11.i.i, label %.thread5.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  %.not.i.i.i = icmp eq i64 %i.m, -9223372036854775808
  br i1 %.not.i.i.i, label %.thread9.i, label %bb.e

.thread9.i:                                       ; preds = %bb.d
  store i64 %i.o, ptr %i.j, align 8, !alias.scope !20905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !20906
  br label %.sink.split.i

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(32) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.f)
          to label %bb.g unwind label %bb.f

.thread5.i:                                       ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i, i64 24, i1 false), !alias.scope !20907, !noalias !20908
  store i64 -9223372036854775807, ptr %i.f, align 8, !alias.scope !20905
  br label %.sink.split.i

bb.f:                                             ; preds = %bb.h, %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f) #48
          to label %bb.u unwind label %bb.p

bb.g:                                             ; preds = %bb.e
  %i.q = load i8, ptr %i.k, align 8, !range !21, !alias.scope !20909, !noundef !13
  store i8 %i.q, ptr %i.l, align 8, !noalias !20910
  %.sroa.0.0.copyload13.i.i = load i64, ptr %i.a, align 8, !noalias !20910 ; 2 uses
  store i64 %i.o, ptr %i.j, align 8, !alias.scope !20905
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, ptr noundef nonnull align 8 dereferenceable(24) %i.h, i64 24, i1 false), !noalias !20906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20901
  %.not.i = icmp eq i64 %.sroa.0.0.copyload13.i.i, -9223372036854775807
  br i1 %.not.i, label %bb.i, label %bb.h

.sink.split.i:                                    ; preds = %.thread5.i, %.thread9.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !20901
  br label %bb.h

bb.h:                                             ; preds = %.sink.split.i, %bb.g
  %.sroa.0.08.i = phi i64 [ %.sroa.0.0.copyload13.i.i, %bb.g ], [ %i.m, %.sink.split.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !20901
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.8.i, i64 24, i1 false), !noalias !20901
  store i64 %.sroa.0.08.i, ptr %i.b, align 8, !noalias !20901
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameENCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3h_3VecB1O_E14extend_trustedINtNtNtB11_8adapters5chain5ChainINtNtNtB11_7sources8repeat_n7RepeatNB1O_EINtNtB3h_9into_iter8IntoIterB1O_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b)
          to label %bb.o unwind label %bb.f

bb.i:                                             ; preds = %bb.g
  %.pr.i = load i64, ptr %i.f, align 8, !alias.scope !20911
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  %switch.i.i.i = icmp slt i64 %.pr.i, -9223372036854775806
  br i1 %switch.i.i.i, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.j

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.f)
          to label %bb.m unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.r = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %.val2.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !20912 ; 2 uses
  %i.s = icmp eq i64 %.val2.i.i.i.i.i.i.i.i, 0
  br i1 %i.s, label %bb.u, label %bb.l

bb.l:                                             ; preds = %bb.k
  %.val3.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !20913, !nonnull !13, !noundef !13
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val3.i.i.i.i.i.i.i.i, i64 noundef %.val2.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !20914
  br label %bb.u

bb.m:                                             ; preds = %bb.j
  %.val.i.i.i.i.i.i.i.i = load i64, ptr %i.f, align 8, !alias.scope !20912 ; 2 uses
  %i.t = icmp eq i64 %.val.i.i.i.i.i.i.i.i, 0
  br i1 %i.t, label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs7p2uQeJxui2_9deltalake.exit, label %bb.n

bb.n:                                             ; preds = %bb.m
  %.val1.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !alias.scope !20913, !nonnull !13, !noundef !13
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %.val1.i.i.i.i.i.i.i.i, i64 noundef %.val.i.i.i.i.i.i.i.i, i64 noundef range(i64 1, -9223372036854775807) 1) #50, !noalias !20915
  br label %_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs7p2uQeJxui2_9deltalake.exit

bb.o:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !20901
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.8.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !20901
  %i.u = load i64, ptr %i.f, align 8, !range !25, !alias.scope !20900, !noundef !13 ; 2 uses
  %.not.i.i = icmp eq i64 %i.u, -9223372036854775807
  br i1 %.not.i.i, label %.thread12.i, label %bb.c

bb.p:                                             ; preds = %bb.f
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #49
  unreachable
end_hunk_0
begin_hunk_1_@llvm.umax.i64
!20661 = !{!20635, !20633, !20623}
!20662 = !{!20639}
!20663 = !{!20641}
!20664 = !{!20643, !20641, !20642, !20639}
!20665 = !{!20641, !20639}
!20666 = !{!20645, !20643, !20641, !20642, !20639}
!20667 = !{!20647, !20643, !20641, !20642, !20639}
!20668 = !{i64 -7236655412836339878}
!20669 = !{i64 400761390765454950}
!20670 = !{i64 -141414079807854963}
!20671 = !{i64 -7907892327064509581}
!20672 = !{i64 1033656952647894300}
!20673 = !{i64 3223059691141408677}
!20674 = !{i64 -3284194086789836748}
!20675 = !{i64 7218718403896372135}
!20676 = !{i64 -2057024253437221036}
!20677 = !{i64 4741881114950923550}
!20678 = !{i64 -8072769829520791064}
!20679 = distinct !{!20679, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13PyTransactionE15get_or_try_initB1n_"}
!20680 = distinct !{!20680, !20679, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13PyTransactionE15get_or_try_initB1n_: argument 0"}
!20681 = distinct !{!20681, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20682 = distinct !{!20682, !20681, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20683 = distinct !{!20683, !20681, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20684 = !{i64 6674870322051874010}
!20685 = !{!20680}
!20686 = !{!20683, !20682}
!20687 = !{!20683}
!20688 = distinct !{!20688, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_"}
!20689 = distinct !{!20689, !20688, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake13RawDeltaTableE15get_or_try_initB1n_: argument 0"}
!20690 = distinct !{!20690, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20691 = distinct !{!20691, !20690, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20692 = distinct !{!20692, !20690, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20693 = !{i64 -7437937002902665917}
!20694 = !{!20689}
!20695 = !{!20692, !20691}
!20696 = !{!20692}
!20697 = distinct !{!20697, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake21RawDeltaTableMetaDataE15get_or_try_initB1n_"}
!20698 = distinct !{!20698, !20697, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtCs7p2uQeJxui2_9deltalake21RawDeltaTableMetaDataE15get_or_try_initB1n_: argument 0"}
!20699 = distinct !{!20699, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20700 = distinct !{!20700, !20699, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20701 = distinct !{!20701, !20699, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20702 = !{i64 9055755209897340875}
!20703 = !{!20698}
!20704 = !{!20701, !20700}
!20705 = !{!20701}
!20706 = distinct !{!20706, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_"}
!20707 = distinct !{!20707, !20706, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem15ObjectInputFileE15get_or_try_initB1p_: argument 0"}
!20708 = distinct !{!20708, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20709 = distinct !{!20709, !20708, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20710 = distinct !{!20710, !20708, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20711 = !{i64 -4123454147168699073}
!20712 = !{!20707}
!20713 = !{!20710, !20709}
!20714 = !{!20710}
!20715 = distinct !{!20715, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamE15get_or_try_initB1p_"}
!20716 = distinct !{!20716, !20715, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem18ObjectOutputStreamE15get_or_try_initB1p_: argument 0"}
!20717 = distinct !{!20717, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20718 = distinct !{!20718, !20717, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20719 = distinct !{!20719, !20717, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20720 = !{i64 6473932895880613656}
!20721 = !{!20716}
!20722 = !{!20719, !20718}
!20723 = !{!20719}
!20724 = distinct !{!20724, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerE15get_or_try_initB1p_"}
!20725 = distinct !{!20725, !20724, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake10filesystem22DeltaFileSystemHandlerE15get_or_try_initB1p_: argument 0"}
!20726 = distinct !{!20726, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20727 = distinct !{!20727, !20726, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20728 = distinct !{!20728, !20726, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20729 = !{i64 8504822700257204533}
!20730 = !{!20725}
!20731 = !{!20728, !20727}
!20732 = !{!20728}
!20733 = distinct !{!20733, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_"}
!20734 = distinct !{!20734, !20733, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5merge14PyMergeBuilderE15get_or_try_initB1p_: argument 0"}
!20735 = distinct !{!20735, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20736 = distinct !{!20736, !20735, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20737 = distinct !{!20737, !20735, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20738 = !{i64 2514704564173244855}
!20739 = !{!20734}
!20740 = !{!20737, !20736}
!20741 = !{!20737}
!20742 = distinct !{!20742, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_"}
!20743 = distinct !{!20743, !20742, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake5query14PyQueryBuilderE15get_or_try_initB1p_: argument 0"}
!20744 = distinct !{!20744, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20745 = distinct !{!20745, !20744, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20746 = distinct !{!20746, !20744, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20747 = !{i64 -1584258193388783933}
!20748 = !{!20743}
!20749 = !{!20746, !20745}
!20750 = !{!20746}
!20751 = distinct !{!20751, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_"}
!20752 = distinct !{!20752, !20751, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema10StructTypeE15get_or_try_initB1p_: argument 0"}
!20753 = distinct !{!20753, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20754 = distinct !{!20754, !20753, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20755 = distinct !{!20755, !20753, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20756 = !{i64 5363299102923839461}
!20757 = !{!20752}
!20758 = !{!20755, !20754}
!20759 = !{!20755}
!20760 = distinct !{!20760, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema13PrimitiveTypeE15get_or_try_initB1p_"}
!20761 = distinct !{!20761, !20760, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema13PrimitiveTypeE15get_or_try_initB1p_: argument 0"}
!20762 = distinct !{!20762, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20763 = distinct !{!20763, !20762, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20764 = distinct !{!20764, !20762, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20765 = !{i64 -481100254843624270}
!20766 = !{!20761}
!20767 = !{!20764, !20763}
!20768 = !{!20764}
!20769 = distinct !{!20769, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema5FieldE15get_or_try_initB1p_"}
!20770 = distinct !{!20770, !20769, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema5FieldE15get_or_try_initB1p_: argument 0"}
!20771 = distinct !{!20771, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20772 = distinct !{!20772, !20771, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20773 = distinct !{!20773, !20771, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20774 = !{i64 3452319608764669186}
!20775 = !{!20770}
!20776 = !{!20773, !20772}
!20777 = !{!20773}
!20778 = distinct !{!20778, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema7MapTypeE15get_or_try_initB1p_"}
!20779 = distinct !{!20779, !20778, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema7MapTypeE15get_or_try_initB1p_: argument 0"}
!20780 = distinct !{!20780, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20781 = distinct !{!20781, !20780, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20782 = distinct !{!20782, !20780, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20783 = !{i64 7532662722805446799}
!20784 = !{!20779}
!20785 = !{!20782, !20781}
!20786 = !{!20782}
!20787 = distinct !{!20787, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_"}
!20788 = distinct !{!20788, !20787, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema8PySchemaE15get_or_try_initB1p_: argument 0"}
!20789 = distinct !{!20789, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20790 = distinct !{!20790, !20789, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20791 = distinct !{!20791, !20789, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20792 = !{i64 5507440619528821488}
!20793 = !{!20788}
!20794 = !{!20791, !20790}
!20795 = !{!20791}
!20796 = distinct !{!20796, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeE15get_or_try_initB1p_"}
!20797 = distinct !{!20797, !20796, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake6schema9ArrayTypeE15get_or_try_initB1p_: argument 0"}
!20798 = distinct !{!20798, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20799 = distinct !{!20799, !20798, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20800 = distinct !{!20800, !20798, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20801 = !{i64 -1382806337448464295}
!20802 = !{!20797}
!20803 = !{!20800, !20799}
!20804 = !{!20800}
!20805 = distinct !{!20805, i1 true, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesE15get_or_try_initB1p_"}
!20806 = distinct !{!20806, !20805, !"_RNvMs_NtNtNtCsgbCypRs12E4_4pyo35impl_7pyclass16lazy_type_objectINtB4_14LazyTypeObjectNtNtCs7p2uQeJxui2_9deltalake8features13TableFeaturesE15get_or_try_initB1p_: argument 0"}
!20807 = distinct !{!20807, i1 true, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake"}
!20808 = distinct !{!20808, !20807, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 1"}
!20809 = distinct !{!20809, !20807, !"_RINvXs_NtNtCsgbCypRs12E4_4pyo35types6moduleINtNtB9_8instance5BoundNtB5_8PyModuleENtB5_15PyModuleMethods3addReRIBG_NtNtB7_10typeobject6PyTypeEECs7p2uQeJxui2_9deltalake: argument 0"}
!20810 = !{i64 7537507463306064830}
!20811 = !{!20806}
!20812 = !{!20809, !20808}
!20813 = !{!20809}
!20814 = distinct !{!20814, i1 true, !"_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!20815 = distinct !{!20815, !20814, !"_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 3"}
!20816 = distinct !{!20816, !20814, !"_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 2"}
!20817 = distinct !{!20817, !20814, !"_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20818 = distinct !{!20818, !20814, !"_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_EQNCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4v_20find_aggregate_exprsIBP_BO_B2a_EE0B5x_E0NCINvNvMsg_NtB7_7flattenINtB62_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B62_B6f_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4s_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20819 = distinct !{!20819, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!20820 = distinct !{!20820, !20819, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 2"}
!20821 = distinct !{!20821, !20819, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20822 = distinct !{!20822, !20819, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3N_20find_aggregate_exprsINtNtB34_5chain5ChainIB4P_BF_INtNtBb_6option4IterBQ_EEB5h_EE0B4O_E0NCINvNvMsg_NtB34_7flattenINtB64_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B64_B6i_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3K_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20823 = distinct !{!20823, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!20824 = distinct !{!20824, !20823, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 3"}
!20825 = distinct !{!20825, !20823, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 2"}
!20826 = distinct !{!20826, !20823, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20827 = distinct !{!20827, !20823, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_EQNCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3z_20find_aggregate_exprsINtNtB2Q_5chain5ChainIB4B_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4A_E0NCINvNvMsg_NtB2Q_7flattenINtB5V_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5V_B69_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3w_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20828 = distinct !{!20828, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!20829 = distinct !{!20829, !20828, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 4"}
!20830 = distinct !{!20830, !20828, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 3"}
!20831 = distinct !{!20831, !20828, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 2"}
!20832 = distinct !{!20832, !20828, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20833 = distinct !{!20833, !20828, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_20find_aggregate_exprsINtNtB2P_5chain5ChainIB4A_INtNtNtB8_5slice4iter4IterBD_EB3_EB3_EE0B4z_E0NCINvNvMsg_NtB2P_7flattenINtB5U_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5U_B68_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20834 = distinct !{!20834, i1 true, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_20find_aggregate_exprsINtNtB6_5chain5ChainIB3q_INtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEB4i_EE0B3p_E0NCINvNvMsg_NtB6_7flattenINtB55_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B55_B5i_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!20835 = distinct !{!20835, !20834, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_20find_aggregate_exprsINtNtB6_5chain5ChainIB3q_INtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEB4i_EE0B3p_E0NCINvNvMsg_NtB6_7flattenINtB55_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B55_B5i_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 2"}
!20836 = distinct !{!20836, !20834, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_20find_aggregate_exprsINtNtB6_5chain5ChainIB3q_INtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEB4i_EE0B3p_E0NCINvNvMsg_NtB6_7flattenINtB55_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B55_B5i_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!20837 = distinct !{!20837, !20834, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_20find_aggregate_exprsINtNtB6_5chain5ChainIB3q_INtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEB4i_EE0B3p_E0NCINvNvMsg_NtB6_7flattenINtB55_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B55_B5i_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!20838 = distinct !{!20838, i1 true, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_20find_aggregate_exprsINtNtBc_5chain5ChainIB5H_INtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEB6A_EE0B5G_Es_0E0E0Cs7p2uQeJxui2_9deltalake"}
!20839 = distinct !{!20839, !20838, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_20find_aggregate_exprsINtNtBc_5chain5ChainIB5H_INtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEB6A_EE0B5G_Es_0E0E0Cs7p2uQeJxui2_9deltalake: argument 2"}
!20840 = distinct !{!20840, !20838, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_20find_aggregate_exprsINtNtBc_5chain5ChainIB5H_INtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEB6A_EE0B5G_Es_0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!20841 = distinct !{!20841, !20838, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_20find_aggregate_exprsINtNtBc_5chain5ChainIB5H_INtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEB6A_EE0B5G_Es_0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!20842 = !{i64 -4307062223938543105}
!20843 = !{!20818, !20817, !20816, !20815}
!20844 = !{!20822, !20821, !20820, !20818, !20817, !20816, !20815}
!20845 = !{!20818, !20817, !20815}
!20846 = !{!20818, !20817, !20816}
!20847 = !{!20827, !20826, !20825, !20824, !20818, !20817, !20816, !20815}
!20848 = !{!20827, !20826, !20824, !20818, !20817, !20815}
!20849 = !{!20817, !20815}
!20850 = !{!20833, !20832, !20831, !20830, !20829}
!20851 = !{!20833, !20832, !20830, !20829}
!20852 = !{!20837, !20836, !20835, !20833, !20832, !20831, !20830, !20829}
!20853 = !{!20837, !20836, !20833, !20831, !20830}
!20854 = !{!20841, !20840, !20839, !20837, !20836, !20835, !20833, !20832, !20831, !20830, !20829}
!20855 = !{!20833, !20831}
!20856 = !{i64 -8184821873730120235}
!20857 = distinct !{!20857, i1 true, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs7p2uQeJxui2_9deltalake"}
!20858 = distinct !{!20858, !20857, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20859 = distinct !{!20859, !20857, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources4once4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB1R_8for_each4callBS_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB37_3VecBS_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB37_9into_iter8IntoIterBS_EEE0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20860 = distinct !{!20860, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources4onceINtB2_4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtB6_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake"}
!20861 = distinct !{!20861, !20860, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources4onceINtB2_4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtB6_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 1"}
!20862 = distinct !{!20862, i1 true, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources4onceINtB2_4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtB6_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake"}
!20863 = distinct !{!20863, !20862, !"_RNvXNtNtNtCsbvkFyIu7lgC_4core4iter7sources4onceINtB2_4OnceNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtB6_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 0:pre.rot"}
!20864 = !{i64 6018997901606879989}
!20865 = !{!20858}
!20866 = !{!20858, !20859}
!20867 = !{!20863, !20861, !20858}
!20868 = !{!20861, !20858}
!20869 = distinct !{!20869, i1 true, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs7p2uQeJxui2_9deltalake"}
!20870 = distinct !{!20870, !20869, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20871 = distinct !{!20871, !20869, !"_RINvYINtNtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_n7RepeatNINtNtBc_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB2k_8for_each4callBZ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3A_3VecBZ_E14extend_trustedINtNtNtBa_8adapters5chain5ChainB3_INtNtB3A_9into_iter8IntoIterBZ_EEE0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20872 = distinct !{!20872, i1 true, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake"}
!20873 = distinct !{!20873, !20872, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 0"}
!20874 = distinct !{!20874, !20872, !"_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter7sources8repeat_nINtB5_7RepeatNINtNtBb_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEENtNtNtB9_6traits8iterator8Iterator4nextCs7p2uQeJxui2_9deltalake: argument 1"}
!20875 = distinct !{!20875, i1 true, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameENtNtB7_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake"}
!20876 = distinct !{!20876, !20875, !"_RNvXs4_NtCsbvkFyIu7lgC_4core6optionINtB5_6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameENtNtB7_5clone5Clone5cloneCs7p2uQeJxui2_9deltalake: argument 1"}
!20877 = distinct !{!20877, i1 true, !"_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr9argumentsNtB4_12ArgumentNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!20878 = distinct !{!20878, !20877, !"_RNvXs_NtCs8VI8w5SIoU4_15datafusion_expr9argumentsNtB4_12ArgumentNameNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!20879 = distinct !{!20879, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs7p2uQeJxui2_9deltalake"}
!20880 = distinct !{!20880, !20879, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n7RepeatNINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs7p2uQeJxui2_9deltalake: argument 0"}
!20881 = distinct !{!20881, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEEECs7p2uQeJxui2_9deltalake"}
!20882 = distinct !{!20882, !20881, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerIBH_NtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEEECs7p2uQeJxui2_9deltalake: argument 0"}
!20883 = distinct !{!20883, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs7p2uQeJxui2_9deltalake"}
!20884 = distinct !{!20884, !20883, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter7sources8repeat_n12RepeatNInnerINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEEECs7p2uQeJxui2_9deltalake: argument 0"}
!20885 = distinct !{!20885, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEECs7p2uQeJxui2_9deltalake"}
!20886 = distinct !{!20886, !20885, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameEECs7p2uQeJxui2_9deltalake: argument 0"}
!20887 = distinct !{!20887, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs7p2uQeJxui2_9deltalake"}
!20888 = distinct !{!20888, !20887, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr9arguments12ArgumentNameECs7p2uQeJxui2_9deltalake: argument 0"}
!20889 = distinct !{!20889, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake"}
!20890 = distinct !{!20890, !20889, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs7p2uQeJxui2_9deltalake: argument 0"}
!20891 = distinct !{!20891, i1 true, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake"}
!20892 = distinct !{!20892, !20891, !"_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs7p2uQeJxui2_9deltalake: argument 0"}
!20893 = distinct !{!20893, i1 true, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!20894 = distinct !{!20894, !20893, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!20895 = distinct !{!20895, i1 true, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!20896 = distinct !{!20896, !20895, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!20897 = distinct !{!20897, i1 true, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake"}
!20898 = distinct !{!20898, !20897, !"_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs7p2uQeJxui2_9deltalake: argument 0"}
!20899 = !{i64 -1337526098363420348}
!20900 = !{!20870}
!20901 = !{!20870, !20871}
!20902 = !{!20873}
!20903 = !{!20874}
!20904 = !{i64 1, i64 0}
!20905 = !{!20874, !20870}
!20906 = !{!20874, !20870, !20871}
!20907 = !{!20873, !20874}
!20908 = !{!20871}
!20909 = !{!20878, !20876, !20874, !20870}
!20910 = !{!20873, !20874, !20870, !20871}
!20911 = !{!20882, !20880, !20870}
!20912 = !{!20894, !20892, !20890, !20888, !20886, !20884, !20882, !20880, !20870}
!20913 = !{!20892, !20890, !20888, !20886, !20884, !20882, !20880, !20870}
!20914 = !{!20896}
!20915 = !{!20898}
!20916 = distinct !{!20916, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3M_17find_window_exprsINtNtB33_5chain5ChainBF_INtNtBb_6option4IterBQ_EEE0B4K_E0NCINvNvMsg_NtB33_7flattenINtB5Q_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B5Q_B64_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3J_s_0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!20917 = distinct !{!20917, !20916, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3M_17find_window_exprsINtNtB33_5chain5ChainBF_INtNtBb_6option4IterBQ_EEE0B4K_E0NCINvNvMsg_NtB33_7flattenINtB5Q_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B5Q_B64_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3J_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 2"}
!20918 = distinct !{!20918, !20916, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3M_17find_window_exprsINtNtB33_5chain5ChainBF_INtNtBb_6option4IterBQ_EEE0B4K_E0NCINvNvMsg_NtB33_7flattenINtB5Q_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B5Q_B64_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3J_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20919 = distinct !{!20919, !20916, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtBb_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBQ_EQNCINvNtNtB1G_8adapters3map8map_foldRBQ_B2k_B2k_NCINvNtBU_5utils19find_exprs_in_exprsNCINvB3M_17find_window_exprsINtNtB33_5chain5ChainBF_INtNtBb_6option4IterBQ_EEE0B4K_E0NCINvNvMsg_NtB33_7flattenINtB5Q_13FlattenCompatppE9iter_fold7flattenB2k_B2k_NCINvNvXsi_B5Q_B64_B1A_4fold7flattenINtNtB2n_9into_iter8IntoIterBQ_EB2k_NCB3J_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20920 = distinct !{!20920, i1 true, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_17find_window_exprsINtNtB2P_5chain5ChainINtNtNtB8_5slice4iter4IterBD_EB3_EE0B4w_E0NCINvNvMsg_NtB2P_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5I_B5W_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake"}
!20921 = distinct !{!20921, !20920, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_17find_window_exprsINtNtB2P_5chain5ChainINtNtNtB8_5slice4iter4IterBD_EB3_EE0B4w_E0NCINvNvMsg_NtB2P_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5I_B5W_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 4"}
!20922 = distinct !{!20922, !20920, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_17find_window_exprsINtNtB2P_5chain5ChainINtNtNtB8_5slice4iter4IterBD_EB3_EE0B4w_E0NCINvNvMsg_NtB2P_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5I_B5W_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 3"}
!20923 = distinct !{!20923, !20920, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_17find_window_exprsINtNtB2P_5chain5ChainINtNtNtB8_5slice4iter4IterBD_EB3_EE0B4w_E0NCINvNvMsg_NtB2P_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5I_B5W_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 2"}
!20924 = distinct !{!20924, !20920, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_17find_window_exprsINtNtB2P_5chain5ChainINtNtNtB8_5slice4iter4IterBD_EB3_EE0B4w_E0NCINvNvMsg_NtB2P_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5I_B5W_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 1"}
!20925 = distinct !{!20925, !20920, !"_RINvYINtNtCsbvkFyIu7lgC_4core6option4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtB8_4iter6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecBD_ENCINvNtNtB1t_8adapters3map8map_foldRBD_B27_B27_NCINvNtBH_5utils19find_exprs_in_exprsNCINvB3y_17find_window_exprsINtNtB2P_5chain5ChainINtNtNtB8_5slice4iter4IterBD_EB3_EE0B4w_E0NCINvNvMsg_NtB2P_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB27_B27_NCINvNvXsi_B5I_B5W_B1n_4fold7flattenINtNtB2a_9into_iter8IntoIterBD_EB27_NCB3v_s_0E0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20926 = distinct !{!20926, i1 true, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3m_E0NCINvNvMsg_NtB6_7flattenINtB4S_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4S_B55_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake"}
!20927 = distinct !{!20927, !20926, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3m_E0NCINvNvMsg_NtB6_7flattenINtB4S_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4S_B55_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 2"}
!20928 = distinct !{!20928, !20926, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3m_E0NCINvNvMsg_NtB6_7flattenINtB4S_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4S_B55_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!20929 = distinct !{!20929, !20926, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCs6Po7BT7Nknu_5alloc3vec3VecBV_EB1E_NCINvNtBZ_5utils19find_exprs_in_exprsNCINvB2o_17find_window_exprsINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EINtNtBa_6option4IterBV_EEE0B3m_E0NCINvNvMsg_NtB6_7flattenINtB4S_13FlattenCompatppE9iter_fold7flattenB1E_B1E_NCINvNvXsi_B4S_B55_NtNtNtB8_6traits8iterator8Iterator4fold7flattenINtNtB1H_9into_iter8IntoIterBV_EB1E_NCB2l_s_0E0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!20930 = distinct !{!20930, i1 true, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_17find_window_exprsINtNtBc_5chain5ChainINtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEE0B5D_Es_0E0E0Cs7p2uQeJxui2_9deltalake"}
!20931 = distinct !{!20931, !20930, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_17find_window_exprsINtNtBc_5chain5ChainINtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEE0B5D_Es_0E0E0Cs7p2uQeJxui2_9deltalake: argument 2"}
!20932 = distinct !{!20932, !20930, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_17find_window_exprsINtNtBc_5chain5ChainINtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEE0B5D_Es_0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!20933 = distinct !{!20933, !20930, !"_RNCINvNvMsg_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppE9iter_fold7flattenINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1B_NCINvNvXsi_Ba_BV_NtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtB1E_9into_iter8IntoIterB28_EB1B_NCINvNtB2c_5utils19find_exprs_in_exprsNCINvB4E_17find_window_exprsINtNtBc_5chain5ChainINtNtNtBg_5slice4iter4IterB28_EINtNtBg_6option4IterB28_EEE0B5D_Es_0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!20934 = !{i64 6744864353892942761}
!20935 = !{!20919, !20918, !20917}
!20936 = !{!20925, !20924, !20923, !20922, !20921}
!20937 = !{!20925, !20924, !20922, !20921}
!20938 = !{!20929, !20928, !20927, !20925, !20924, !20923, !20922, !20921}
!20939 = !{!20929, !20928, !20925, !20923, !20922}
!20940 = !{!20933, !20932, !20931, !20929, !20928, !20927, !20925, !20924, !20923, !20922, !20921}
!20941 = !{!20925, !20923}
!20942 = distinct !{!20942, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1M_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1G_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4f_3VecBQ_E14extend_trustedINtNtB2z_6cloned6ClonedINtNtB2z_5chain5ChainBF_BF_EEE0E0E0ECs7p2uQeJxui2_9deltalake"}
!20943 = distinct !{!20943, !20942, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduQNCINvNtNtB1M_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1G_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4f_3VecBQ_E14extend_trustedINtNtB2z_6cloned6ClonedINtNtB2z_5chain5ChainBF_BF_EEE0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20944 = distinct !{!20944, i1 true, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1G_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBQ_E14extend_trustedINtNtB2y_6cloned6ClonedINtNtB2y_5chain5ChainBF_BF_EEE0E0E0ECs7p2uQeJxui2_9deltalake"}
!20945 = distinct !{!20945, !20944, !"_RINvXs2J_NtNtCsbvkFyIu7lgC_4core5slice4iterINtB7_4IterNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueENtNtNtNtBb_4iter6traits8iterator8Iterator4folduNCINvNtNtB1M_8adapters3map8map_foldRBQ_BQ_uNvYBQ_NtNtBb_5clone5Clone5cloneNCINvNvB1G_8for_each4callBQ_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBQ_E14extend_trustedINtNtB2y_6cloned6ClonedINtNtB2y_5chain5ChainBF_BF_EEE0E0E0ECs7p2uQeJxui2_9deltalake: argument 0"}
!20946 = distinct !{!20946, i1 true, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4Z_EEE0E0E0Cs7p2uQeJxui2_9deltalake"}
!20947 = distinct !{!20947, !20946, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4Z_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 1"}
!20948 = distinct !{!20948, i1 true, !"_RNvYNvYNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneINtNtNtBY_3ops8function5FnMutTRB5_EE8call_mutCs7p2uQeJxui2_9deltalake"}
!20949 = distinct !{!20949, !20948, !"_RNvYNvYNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneINtNtNtBY_3ops8function5FnMutTRB5_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 1"}
!20950 = distinct !{!20950, i1 true, !"_RNvXsm_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_8KeyValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone"}
!20951 = distinct !{!20951, !20950, !"_RNvXsm_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_8KeyValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 1"}
!20952 = distinct !{!20952, !20946, !"_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueBV_uNvYBV_NtNtBa_5clone5Clone5cloneNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3o_3VecBV_E14extend_trustedINtNtB6_6cloned6ClonedINtNtB6_5chain5ChainINtNtNtBa_5slice4iter4IterBV_EB4Z_EEE0E0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!20953 = distinct !{!20953, !20948, !"_RNvYNvYNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneINtNtNtBY_3ops8function5FnMutTRB5_EE8call_mutCs7p2uQeJxui2_9deltalake: argument 0"}
!20954 = distinct !{!20954, !20950, !"_RNvXsm_NtNtCs4tdlwR1I4n2_7parquet4file8metadataNtB5_8KeyValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone: argument 0"}
!20955 = distinct !{!20955, i1 true, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2d_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtB3e_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB41_EEE0E0Cs7p2uQeJxui2_9deltalake"}
!20956 = distinct !{!20956, !20955, !"_RNCINvNvNtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8for_each4callNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2d_3VecB1f_E14extend_trustedINtNtNtBc_8adapters6cloned6ClonedINtNtB3e_5chain5ChainINtNtNtBe_5slice4iter4IterB1f_EB41_EEE0E0Cs7p2uQeJxui2_9deltalake: argument 0"}
!20957 = distinct !{!20957, i1 true, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1T_5chain5ChainINtNtNtB1X_5slice4iter4IterBI_EB33_EEE0Cs7p2uQeJxui2_9deltalake"}
!20958 = distinct !{!20958, !20957, !"_RNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB8_3VecNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata8KeyValueE14extend_trustedINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6cloned6ClonedINtNtB1T_5chain5ChainINtNtNtB1X_5slice4iter4IterBI_EB33_EEE0Cs7p2uQeJxui2_9deltalake: argument 0"}
!20959 = !{i64 -1784776519092024713}
!20960 = !{!20943}
!20961 = !{!20945}
!20962 = !{!20947}
!20963 = !{!20949}
!20964 = !{!20951}
!20965 = !{!20954, !20951, !20953, !20949, !20952, !20947, !20945}
!20966 = !{!20951, !20949, !20947}
!20967 = !{!20954, !20953, !20952, !20945}
!20968 = !{!20952, !20947, !20945}
!20969 = !{!20958, !20956, !20952, !20945}
!20970 = !{!20952, !20945}
!20971 = distinct !{!20971, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!20972 = distinct !{!20972, !20971, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20973 = distinct !{!20973, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!20974 = distinct !{!20974, !20973, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20975 = distinct !{!20975, i1 true, !"_RINvXsaf_NtCs4lawaffTVVK_9sqlparser3astNtB7_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!20976 = distinct !{!20976, !20975, !"_RINvXsaf_NtCs4lawaffTVVK_9sqlparser3astNtB7_18BeginEndStatementsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!20977 = distinct !{!20977, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!20978 = distinct !{!20978, !20977, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!20979 = distinct !{!20979, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!20980 = distinct !{!20980, !20979, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20981 = distinct !{!20981, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!20982 = distinct !{!20982, !20981, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!20983 = distinct !{!20983, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!20984 = distinct !{!20984, !20983, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20985 = !{i64 -1523687034263606138}
!20986 = !{!20974, !20972}
!20987 = !{!20980, !20978, !20976}
!20988 = !{!20984, !20982}
!20989 = distinct !{!20989, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!20990 = distinct !{!20990, !20989, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20991 = distinct !{!20991, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!20992 = distinct !{!20992, !20991, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20993 = distinct !{!20993, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!20994 = distinct !{!20994, !20993, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20995 = distinct !{!20995, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!20996 = distinct !{!20996, !20995, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!20997 = distinct !{!20997, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!20998 = distinct !{!20998, !20997, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!20999 = distinct !{!20999, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21000 = distinct !{!21000, !20999, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21001 = distinct !{!21001, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!21002 = distinct !{!21002, !21001, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!21003 = distinct !{!21003, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21004 = distinct !{!21004, !21003, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21005 = distinct !{!21005, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!21006 = distinct !{!21006, !21005, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!21007 = distinct !{!21007, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21008 = distinct !{!21008, !21007, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21009 = distinct !{!21009, i1 true, !"_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21010 = distinct !{!21010, !21009, !"_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21011 = distinct !{!21011, !21009, !"_RINvXsz6_NtCs4lawaffTVVK_9sqlparser3astNtB7_19SetSessionParamKindNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 1"}
!21012 = distinct !{!21012, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!21013 = distinct !{!21013, !21012, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21014 = distinct !{!21014, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21015 = distinct !{!21015, !21014, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21016 = distinct !{!21016, i1 true, !"_RINvXszg_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamGenericNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21017 = distinct !{!21017, !21016, !"_RINvXszg_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamGenericNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21018 = distinct !{!21018, !21016, !"_RINvXszg_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamGenericNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 1"}
!21019 = distinct !{!21019, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!21020 = distinct !{!21020, !21019, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!21021 = distinct !{!21021, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21022 = distinct !{!21022, !21021, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21023 = distinct !{!21023, i1 true, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str"}
!21024 = distinct !{!21024, !21023, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 1"}
!21025 = distinct !{!21025, !21023, !"_RNvXs2_NtNtCs2pqxYH9ZEk8_3std4hash6randomNtB5_13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher9write_str: argument 0"}
!21026 = distinct !{!21026, i1 true, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake"}
!21027 = distinct !{!21027, !21026, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 1"}
!21028 = distinct !{!21028, !21026, !"_RNvXs3_NtNtCsbvkFyIu7lgC_4core4hash3sipINtB5_6HasherNtB5_11Sip13RoundsENtB7_6Hasher9write_strCs7p2uQeJxui2_9deltalake: argument 0"}
!21029 = distinct !{!21029, i1 true, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21030 = distinct !{!21030, !21029, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21031 = distinct !{!21031, !21029, !"_RINvXszq_NtCs4lawaffTVVK_9sqlparser3astNtB7_29SetSessionParamIdentityInsertNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 1"}
!21032 = distinct !{!21032, i1 true, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21033 = distinct !{!21033, !21032, !"_RINvXs43_NtCs4lawaffTVVK_9sqlparser3astNtB7_10ObjectNameNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21034 = distinct !{!21034, i1 true, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21035 = distinct !{!21035, !21034, !"_RINvXsb_NtCs6Po7BT7Nknu_5alloc3vecINtB6_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21036 = distinct !{!21036, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!21037 = distinct !{!21037, !21036, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!21038 = distinct !{!21038, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21039 = distinct !{!21039, !21038, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21040 = distinct !{!21040, i1 true, !"_RINvXsA4_NtCs4lawaffTVVK_9sqlparser3astNtB7_17SessionParamValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21041 = distinct !{!21041, !21040, !"_RINvXsA4_NtCs4lawaffTVVK_9sqlparser3astNtB7_17SessionParamValueNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21042 = distinct !{!21042, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!21043 = distinct !{!21043, !21042, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21044 = distinct !{!21044, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21045 = distinct !{!21045, !21044, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21046 = distinct !{!21046, i1 true, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21047 = distinct !{!21047, !21046, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21048 = distinct !{!21048, !21046, !"_RINvXszA_NtCs4lawaffTVVK_9sqlparser3astNtB7_22SetSessionParamOffsetsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 1"}
!21049 = distinct !{!21049, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake"}
!21050 = distinct !{!21050, !21049, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher19write_length_prefixCs7p2uQeJxui2_9deltalake: argument 0"}
!21051 = distinct !{!21051, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21052 = distinct !{!21052, !21051, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21053 = distinct !{!21053, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!21054 = distinct !{!21054, !21053, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21055 = distinct !{!21055, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21056 = distinct !{!21056, !21055, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21057 = distinct !{!21057, i1 true, !"_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake"}
!21058 = distinct !{!21058, !21057, !"_RINvXszK_NtCs4lawaffTVVK_9sqlparser3astNtB7_25SetSessionParamStatisticsNtNtCsbvkFyIu7lgC_4core4hash4Hash4hashNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherECs7p2uQeJxui2_9deltalake: argument 0"}
!21059 = distinct !{!21059, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!21060 = distinct !{!21060, !21059, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21061 = distinct !{!21061, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21062 = distinct !{!21062, !21061, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21063 = distinct !{!21063, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!21064 = distinct !{!21064, !21063, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21065 = distinct !{!21065, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake"}
!21066 = distinct !{!21066, !21065, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_usizeCs7p2uQeJxui2_9deltalake: argument 0"}
!21067 = distinct !{!21067, i1 true, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake"}
!21068 = distinct !{!21068, !21067, !"_RNvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random13DefaultHasherNtNtCsbvkFyIu7lgC_4core4hash6Hasher11write_isizeCs7p2uQeJxui2_9deltalake: argument 0"}
end_hunk_1
