Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_completion-492bb59092b05d84.ide_completion.b05e45e7b887cebc-cgu.04?download=true
inline.NumInlined: 1772
inline.NumDeleted: 1194
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBi5_4TypeEE0IBiM_NtBha_10GenericArgEE0E0E0ECsf8NQSppxkmK_14ide_completion:bb.a
bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1712
  call void @_RNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB2_14SingleGenerics4iter(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, i1 noundef zeroext %i.h), !noalias !1713
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0IBi7_NtBgv_10GenericArgEE0E0E0E0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !1714
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1712
  %i.o = add nuw i64 %.sroa.01.0.i.i.i.i.i, 1     ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option, label %bb.f

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option: ; preds = %bb.f, %bb.d, %bb.c
  %.not7.i.i.i = icmp eq i64 %.sroa.9.0.copyload.i, -4
  br i1 %.not7.i.i.i, label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2l_IB2l_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3f_3hir8generics19GenericParamDataRefEEINtNtB8_3map3MapIB4C_INtNtB8_6filter6FilterIB4C_INtNtB8_9enumerate9EnumerateIB16_NtB3T_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6t_5ArenaB5U_E4iter0ENCNvMs3_B3T_NtB3T_13GenericParams19iter_early_bound_lt0ENCNvMB1x_B1v_14iter_lifetimes0ENCNvB8d_4iter0EEIB4C_IB4C_IB4C_IB5o_IB16_NtB3T_20TypeOrConstParamDataEENCNvMsm_B6t_IB6R_B9j_E4iter0ENCNvB8d_19iter_type_or_consts0ENCNvB8d_30iter_type_or_consts_as_generic0EEIB4C_INtNtB8_10filter_map9FilterMapIB4X_B5i_NCNvB7j_18iter_late_bound_lt0ENCNvB8d_25iter_late_bound_lifetimes0EB8E_EENCNvMs_B1x_NtB1x_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB4E_8map_foldB3c_TB3d_INtB2R_6OptionRB5U_EEuNCNvMNtNtB1z_11next_solver8genericsNtBfo_8Generics4iter0QNCINvNvXs_B5q_I, label %bb.g

bb.g:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1708
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(144) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i, i64 144, i1 false), !noalias !1709
  %.sroa.9.184..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <2 x i64> %i.f, ptr %.sroa.9.184..sroa_idx.i, align 8, !noalias !1710
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0IBi7_NtBgv_10GenericArgEE0E0E0E0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !1711
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1708
  br label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2l_IB2l_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3f_3hir8generics19GenericParamDataRefEEINtNtB8_3map3MapIB4C_INtNtB8_6filter6FilterIB4C_INtNtB8_9enumerate9EnumerateIB16_NtB3T_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6t_5ArenaB5U_E4iter0ENCNvMs3_B3T_NtB3T_13GenericParams19iter_early_bound_lt0ENCNvMB1x_B1v_14iter_lifetimes0ENCNvB8d_4iter0EEIB4C_IB4C_IB4C_IB5o_IB16_NtB3T_20TypeOrConstParamDataEENCNvMsm_B6t_IB6R_B9j_E4iter0ENCNvB8d_19iter_type_or_consts0ENCNvB8d_30iter_type_or_consts_as_generic0EEIB4C_INtNtB8_10filter_map9FilterMapIB4X_B5i_NCNvB7j_18iter_late_bound_lt0ENCNvB8d_25iter_late_bound_lifetimes0EB8E_EENCNvMs_B1x_NtB1x_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB4E_8map_foldB3c_TB3d_INtB2R_6OptionRB5U_EEuNCNvMNtNtB1z_11next_solver8genericsNtBfo_8Generics4iter0QNCINvNvXs_B5q_I

_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2l_IB2l_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3f_3hir8generics19GenericParamDataRefEEINtNtB8_3map3MapIB4C_INtNtB8_6filter6FilterIB4C_INtNtB8_9enumerate9EnumerateIB16_NtB3T_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6t_5ArenaB5U_E4iter0ENCNvMs3_B3T_NtB3T_13GenericParams19iter_early_bound_lt0ENCNvMB1x_B1v_14iter_lifetimes0ENCNvB8d_4iter0EEIB4C_IB4C_IB4C_IB5o_IB16_NtB3T_20TypeOrConstParamDataEENCNvMsm_B6t_IB6R_B9j_E4iter0ENCNvB8d_19iter_type_or_consts0ENCNvB8d_30iter_type_or_consts_as_generic0EEIB4C_INtNtB8_10filter_map9FilterMapIB4X_B5i_NCNvB7j_18iter_late_bound_lt0ENCNvB8d_25iter_late_bound_lifetimes0EB8E_EENCNvMs_B1x_NtB1x_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB4E_8map_foldB3c_TB3d_INtB2R_6OptionRB5U_EEuNCNvMNtNtB1z_11next_solver8genericsNtBfo_8Generics4iter0QNCINvNvXs_B5q_I: ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1707
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBi5_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBha_10GenericArgKja_EE0E0E0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(344) %0, ptr noalias nofree noundef align 8 dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [160 x i8], align 8               ; 4 uses
  %i.b = alloca [160 x i8], align 8               ; 5 uses
  %i.c = alloca [160 x i8], align 8               ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1733)
  %.sroa.0.0.copyload.i = load ptr, ptr %0, align 8, !alias.scope !1733 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1733 ; 3 uses
  %.sroa.5.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload.i = load i8, ptr %.sroa.5.0..sroa_idx.i, align 8, !alias.scope !1733 ; 2 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.e = load <2 x i64>, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1733
  %.sroa.7.0.copyload.i = load i64, ptr %.sroa.7.0..sroa_idx.i, align 8, !alias.scope !1733
  %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 184
  %.sroa.9.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 328 ; 2 uses
  %i.f = load <2 x i64>, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1733
  %.sroa.9.0.copyload.i = load i64, ptr %.sroa.9.0..sroa_idx.i, align 8, !alias.scope !1733
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1734
  store ptr %1, ptr %i.d, align 8, !noalias !1735
  %.not.i.i.i = icmp eq i64 %.sroa.7.0.copyload.i, -4
  br i1 %.not.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1735
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.c, ptr noundef nonnull readonly align 8 dereferenceable(144) %i.g, i64 144, i1 false), !noalias !1736
  %.sroa.7.24..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 144
  store <2 x i64> %i.e, ptr %.sroa.7.24..sroa_idx.i, align 8, !noalias !1737
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !1735
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not6.i.i.i = icmp eq i8 %.sroa.5.0.copyload.i, 2
  br i1 %.not6.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.h = trunc nuw i8 %.sroa.5.0.copyload.i to i1
  %i.i = icmp eq ptr %.sroa.0.0.copyload.i, %.sroa.4.0.copyload.i
  br i1 %i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.k = ptrtoint ptr %.sroa.0.0.copyload.i to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 5
  br label %bb.f

bb.f:                                             ; preds = %bb.f, %bb.e
  %.sroa.01.0.i.i.i.i.i = phi i64 [ 0, %bb.e ], [ %i.o, %bb.f ] ; 2 uses
  %i.n = getelementptr inbounds nuw [32 x i8], ptr %.sroa.0.0.copyload.i, i64 %.sroa.01.0.i.i.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !1739
  call void @_RNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB2_14SingleGenerics4iter(ptr noalias nofree noundef nonnull sret([160 x i8]) align 8 captures(address) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.n, i1 noundef zeroext %i.h), !noalias !1740
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.a, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !1741
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !1739
  %i.o = add nuw i64 %.sroa.01.0.i.i.i.i.i, 1     ; 2 uses
  %i.p = icmp eq i64 %i.o, %i.m
  br i1 %i.p, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option, label %bb.f

_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option: ; preds = %bb.f, %bb.d, %bb.c
  %.not7.i.i.i = icmp eq i64 %.sroa.9.0.copyload.i, -4
  br i1 %.not7.i.i.i, label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2l_IB2l_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3f_3hir8generics19GenericParamDataRefEEINtNtB8_3map3MapIB4C_INtNtB8_6filter6FilterIB4C_INtNtB8_9enumerate9EnumerateIB16_NtB3T_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6t_5ArenaB5U_E4iter0ENCNvMs3_B3T_NtB3T_13GenericParams19iter_early_bound_lt0ENCNvMB1x_B1v_14iter_lifetimes0ENCNvB8d_4iter0EEIB4C_IB4C_IB4C_IB5o_IB16_NtB3T_20TypeOrConstParamDataEENCNvMsm_B6t_IB6R_B9j_E4iter0ENCNvB8d_19iter_type_or_consts0ENCNvB8d_30iter_type_or_consts_as_generic0EEIB4C_INtNtB8_10filter_map9FilterMapIB4X_B5i_NCNvB7j_18iter_late_bound_lt0ENCNvB8d_25iter_late_bound_lifetimes0EB8E_EENCNvMs_B1x_NtB1x_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB4E_8map_foldB3c_TB3d_INtB2R_6OptionRB5U_EEuNCNvMNtNtB1z_11next_solver8genericsNtBfo_8Generics4iter0QNCINvNvXs_B5q_I, label %bb.g

bb.g:                                             ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1735
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(144) %.sroa.8.sroa.4.0..sroa.8.0..sroa_idx.sroa_idx.i, i64 144, i1 false), !noalias !1736
  %.sroa.9.184..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 144
  store <2 x i64> %i.f, ptr %.sroa.9.184..sroa_idx.i, align 8, !noalias !1737
  call void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(160) %i.b, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d), !noalias !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !1735
  br label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2l_IB2l_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3f_3hir8generics19GenericParamDataRefEEINtNtB8_3map3MapIB4C_INtNtB8_6filter6FilterIB4C_INtNtB8_9enumerate9EnumerateIB16_NtB3T_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6t_5ArenaB5U_E4iter0ENCNvMs3_B3T_NtB3T_13GenericParams19iter_early_bound_lt0ENCNvMB1x_B1v_14iter_lifetimes0ENCNvB8d_4iter0EEIB4C_IB4C_IB4C_IB5o_IB16_NtB3T_20TypeOrConstParamDataEENCNvMsm_B6t_IB6R_B9j_E4iter0ENCNvB8d_19iter_type_or_consts0ENCNvB8d_30iter_type_or_consts_as_generic0EEIB4C_INtNtB8_10filter_map9FilterMapIB4X_B5i_NCNvB7j_18iter_late_bound_lt0ENCNvB8d_25iter_late_bound_lifetimes0EB8E_EENCNvMs_B1x_NtB1x_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB4E_8map_foldB3c_TB3d_INtB2R_6OptionRB5U_EEuNCNvMNtNtB1z_11next_solver8genericsNtBfo_8Generics4iter0QNCINvNvXs_B5q_I

_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2l_IB2l_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3f_3hir8generics19GenericParamDataRefEEINtNtB8_3map3MapIB4C_INtNtB8_6filter6FilterIB4C_INtNtB8_9enumerate9EnumerateIB16_NtB3T_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6t_5ArenaB5U_E4iter0ENCNvMs3_B3T_NtB3T_13GenericParams19iter_early_bound_lt0ENCNvMB1x_B1v_14iter_lifetimes0ENCNvB8d_4iter0EEIB4C_IB4C_IB4C_IB5o_IB16_NtB3T_20TypeOrConstParamDataEENCNvMsm_B6t_IB6R_B9j_E4iter0ENCNvB8d_19iter_type_or_consts0ENCNvB8d_30iter_type_or_consts_as_generic0EEIB4C_INtNtB8_10filter_map9FilterMapIB4X_B5i_NCNvB7j_18iter_late_bound_lt0ENCNvB8d_25iter_late_bound_lifetimes0EB8E_EENCNvMs_B1x_NtB1x_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB4E_8map_foldB3c_TB3d_INtB2R_6OptionRB5U_EEuNCNvMNtNtB1z_11next_solver8genericsNtBfo_8Generics4iter0QNCINvNvXs_B5q_I: ; preds = %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1p_NtB1p_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvMsg_NtB8_7flattenINtB3y_13FlattenCompatppE9iter_fold7flattenINtNtB8_5chain5ChainIB4t_IB4t_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB5n_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIBY_NtB61_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8m_5ArenaB7N_E4iter0ENCNvMs3_B61_NtB61_13GenericParams19iter_early_bound_lt0ENCNvMB1p_B1n_14iter_lifetimes0ENCNvBa6_4iter0EEIBO_IBO_IBO_IB7i_IBY_NtB61_20TypeOrConstParamDataEENCNvMsm_B8m_IB8K_Bb8_E4iter0ENCNvBa6_19iter_type_or_consts0ENCNvBa6_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB6S_B7d_NCNvB9c_18iter_late_bound_lt0ENCNvBa6_25iter_late_bound_lifetimes0EBax_EEuNCINvNvXsi_B3y_B3L_B2J_4fold7flattenB4s_uNCINvB6_8map_foldB5k_TB5l_INtB4Z_6Option, %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1734
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterReEINtNtBc_6option6OptionjENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths2_0ENCB2e_s3_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB10_11flatten_oneIB1P_RNtB2g_14AttrCompletionEuNCINvNvB3Q_8for_each4callB4V_NCB2e_s1_0E0E0EB2k_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 6 uses
  %i.g = alloca [360 x i8], align 8               ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  %i.i = alloca [24 x i8], align 8                ; 4 uses
  %i.j = alloca [24 x i8], align 8                ; 5 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [360 x i8], align 8               ; 9 uses
  %i.m = alloca [32 x i8], align 8                ; 7 uses
  %i.n = alloca [24 x i8], align 8                ; 5 uses
  %i.o = alloca [8 x i8], align 8                 ; 7 uses
  %i.p = alloca [32 x i8], align 8                ; 7 uses
  %i.q = alloca [24 x i8], align 8                ; 5 uses
  %i.r = alloca [24 x i8], align 8                ; 9 uses
  %i.s = alloca [48 x i8], align 8                ; 7 uses
  %i.t = alloca [24 x i8], align 8                ; 10 uses
  %i.u = alloca [24 x i8], align 8                ; 13 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1815)
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !1815 ; 4 uses
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40
  %.sroa.4.0.copyload.i = load ptr, ptr %.sroa.4.0..sroa_idx.i, align 8, !alias.scope !1815 ; 3 uses
  %.not.i.i = icmp eq ptr %.sroa.3.0.copyload.i, null
  br i1 %.not.i.i, label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterReEINtNtBc_6option6OptionjENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldjIB1z_RNtB20_14AttrCompletionEuNCB1Y_s3_0NCINvB6_11flatten_oneB4r_uNCINvNvB3p_8for_each4callB4w_NCB1Y_s1_0E0E0E0EB24_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload.i) ]
  %i.v = icmp eq ptr %.sroa.3.0.copyload.i, %.sroa.4.0.copyload.i
  br i1 %i.v, label %_RINvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB6_7FlatMapINtNtNtBc_5slice4iter4IterReEINtNtBc_6option6OptionjENCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths2_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldjIB1z_RNtB20_14AttrCompletionEuNCB1Y_s3_0NCINvB6_11flatten_oneB4r_uNCINvNvB3p_8for_each4callB4w_NCB1Y_s1_0E0E0E0EB24_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.w = ptrtoint ptr %.sroa.4.0.copyload.i to i64
  %i.x = ptrtoint ptr %.sroa.3.0.copyload.i to i64
  %i.y = sub nuw i64 %i.w, %i.x
  %i.z = lshr exact i64 %i.y, 4
  %i.aa = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.sroa.479.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %.sroa.580.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.t, i64 16
  %i.ae = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 8
  %i.af = getelementptr inbounds nuw i8, ptr %.sroa.0.0.copyload, i64 16
  %.sroa.471.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %.sroa.572.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 32
  %.sroa.6.0..sroa_idx73.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 40
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.413.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.ai = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  %.sroa.417.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %.sroa.423.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.427.0..sroa_idx.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.m, i64 24
  %i.ak = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 630
  %i.al = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 408
  %i.am = getelementptr inbounds nuw i8, ptr %i.l, i64 352
  %i.an = getelementptr inbounds nuw i8, ptr %.sroa.4.0.copyload, i64 400
  br label %bb.d

bb.d:                                             ; preds = %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRReINtNtBa_6option6OptionjEuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths2_0NCINvNtB6_7flatten11flatten_oneBX_uNCIB2_jIBY_RNtB1q_14AttrCompletionEuNCB1o_s3_0NCIB2R_B3u_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3y_NCB1o_s1_0E0E0E0E0E0B1u_.exit.i.i.i.i, %bb.c
  %.sroa.01.0.i.i.i.i = phi i64 [ 0, %bb.c ], [ %i.gz, %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRReINtNtBa_6option6OptionjEuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths2_0NCINvNtB6_7flatten11flatten_oneBX_uNCIB2_jIBY_RNtB1q_14AttrCompletionEuNCB1o_s3_0NCIB2R_B3u_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3y_NCB1o_s1_0E0E0E0E0E0B1u_.exit.i.i.i.i ] ; 2 uses
  %i.ao = getelementptr inbounds nuw [16 x i8], ptr %.sroa.3.0.copyload.i, i64 %.sroa.01.0.i.i.i.i ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %i.ao, align 8, !alias.scope !1816, !noalias !1817, !nonnull !5, !noundef !5 ; 7 uses
  %i.ap = getelementptr i8, ptr %i.ao, i64 8
  %.val8.i.i.i.i = load i64, ptr %i.ap, align 8, !alias.scope !1816, !noalias !1817, !noundef !5 ; 14 uses
  %spec.store.select.i.i.i20.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.val8.i.i.i.i, i64 12)
  %i.aq = call i32 @memcmp(ptr nonnull readonly @78, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i20.i.i.i.i.i.i.i.i), !alias.scope !1818, !noalias !1819 ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp eq i32 %i.aq, 0
  %i.at = sub i64 12, %.val8.i.i.i.i
  %spec.select.i.i.i21.i.i.i.i.i.i.i.i = select i1 %i.as, i64 %i.at, i64 %i.ar
  %i.au = icmp sgt i64 %spec.select.i.i.i21.i.i.i.i.i.i.i.i, 0
  %i.av = select i1 %i.au, i64 0, i64 25, !unpredictable !5 ; 2 uses
  %i.aw = add nuw nsw i64 %i.av, 12               ; 2 uses
  %i.ax = getelementptr inbounds nuw [72 x i8], ptr @121, i64 %i.aw ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1820)
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 32
  %i.az = load ptr, ptr %i.ay, align 8, !alias.scope !1821, !noalias !1822, !noundef !5 ; 2 uses
  %i.ba = load ptr, ptr %i.ax, align 8, !alias.scope !1821, !noalias !1822, !nonnull !5, !noundef !5
  %.not.i.i13.1.i.i.i.i.i.i.i.i = icmp eq ptr %i.az, null ; 2 uses
  %spec.select.v.i.i14.1.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.1.i.i.i.i.i.i.i.i, i64 8, i64 40
  %spec.select.i.i15.1.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ax, i64 %spec.select.v.i.i14.1.i.i.i.i.i.i.i.i
  %spec.select4.i.i16.1.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.1.i.i.i.i.i.i.i.i, ptr %i.ba, ptr %i.az
  %.sroa.3.0.i.i17.1.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i15.1.i.i.i.i.i.i.i.i, align 8, !alias.scope !1821, !noalias !1822 ; 2 uses
  %spec.store.select.i.i.i20.1.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i17.1.i.i.i.i.i.i.i.i, i64 %.val8.i.i.i.i)
  %i.bb = call i32 @memcmp(ptr nonnull readonly %spec.select4.i.i16.1.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i20.1.i.i.i.i.i.i.i.i), !alias.scope !1818, !noalias !1823 ; 2 uses
  %i.bc = sext i32 %i.bb to i64
  %i.bd = icmp eq i32 %i.bb, 0
  %i.be = sub i64 %.sroa.3.0.i.i17.1.i.i.i.i.i.i.i.i, %.val8.i.i.i.i
  %spec.select.i.i.i21.1.i.i.i.i.i.i.i.i = select i1 %i.bd, i64 %i.be, i64 %i.bc
  %i.bf = icmp sgt i64 %spec.select.i.i.i21.1.i.i.i.i.i.i.i.i, 0
  %i.bg = select i1 %i.bf, i64 %i.av, i64 %i.aw, !unpredictable !5 ; 2 uses
  %i.bh = add nuw nsw i64 %i.bg, 6                ; 2 uses
  %i.bi = getelementptr inbounds nuw [72 x i8], ptr @121, i64 %i.bh ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1824)
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !alias.scope !1825, !noalias !1822, !noundef !5 ; 2 uses
  %i.bl = load ptr, ptr %i.bi, align 8, !alias.scope !1825, !noalias !1822, !nonnull !5, !noundef !5
  %.not.i.i13.2.i.i.i.i.i.i.i.i = icmp eq ptr %i.bk, null ; 2 uses
  %spec.select.v.i.i14.2.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.2.i.i.i.i.i.i.i.i, i64 8, i64 40
  %spec.select.i.i15.2.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bi, i64 %spec.select.v.i.i14.2.i.i.i.i.i.i.i.i
  %spec.select4.i.i16.2.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.2.i.i.i.i.i.i.i.i, ptr %i.bl, ptr %i.bk
  %.sroa.3.0.i.i17.2.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i15.2.i.i.i.i.i.i.i.i, align 8, !alias.scope !1825, !noalias !1822 ; 2 uses
  %spec.store.select.i.i.i20.2.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i17.2.i.i.i.i.i.i.i.i, i64 %.val8.i.i.i.i)
  %i.bm = call i32 @memcmp(ptr nonnull readonly %spec.select4.i.i16.2.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i20.2.i.i.i.i.i.i.i.i), !alias.scope !1818, !noalias !1826 ; 2 uses
  %i.bn = sext i32 %i.bm to i64
  %i.bo = icmp eq i32 %i.bm, 0
  %i.bp = sub i64 %.sroa.3.0.i.i17.2.i.i.i.i.i.i.i.i, %.val8.i.i.i.i
  %spec.select.i.i.i21.2.i.i.i.i.i.i.i.i = select i1 %i.bo, i64 %i.bp, i64 %i.bn
  %i.bq = icmp sgt i64 %spec.select.i.i.i21.2.i.i.i.i.i.i.i.i, 0
  %i.br = select i1 %i.bq, i64 %i.bg, i64 %i.bh, !unpredictable !5 ; 2 uses
  %i.bs = add nuw nsw i64 %i.br, 3                ; 2 uses
  %i.bt = getelementptr inbounds nuw [72 x i8], ptr @121, i64 %i.bs ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1827)
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !alias.scope !1828, !noalias !1822, !noundef !5 ; 2 uses
  %i.bw = load ptr, ptr %i.bt, align 8, !alias.scope !1828, !noalias !1822, !nonnull !5, !noundef !5
  %.not.i.i13.3.i.i.i.i.i.i.i.i = icmp eq ptr %i.bv, null ; 2 uses
  %spec.select.v.i.i14.3.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.3.i.i.i.i.i.i.i.i, i64 8, i64 40
  %spec.select.i.i15.3.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.bt, i64 %spec.select.v.i.i14.3.i.i.i.i.i.i.i.i
  %spec.select4.i.i16.3.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.3.i.i.i.i.i.i.i.i, ptr %i.bw, ptr %i.bv
  %.sroa.3.0.i.i17.3.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i15.3.i.i.i.i.i.i.i.i, align 8, !alias.scope !1828, !noalias !1822 ; 2 uses
  %spec.store.select.i.i.i20.3.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i17.3.i.i.i.i.i.i.i.i, i64 %.val8.i.i.i.i)
  %i.bx = call i32 @memcmp(ptr nonnull readonly %spec.select4.i.i16.3.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i20.3.i.i.i.i.i.i.i.i), !alias.scope !1818, !noalias !1829 ; 2 uses
  %i.by = sext i32 %i.bx to i64
  %i.bz = icmp eq i32 %i.bx, 0
  %i.ca = sub i64 %.sroa.3.0.i.i17.3.i.i.i.i.i.i.i.i, %.val8.i.i.i.i
  %spec.select.i.i.i21.3.i.i.i.i.i.i.i.i = select i1 %i.bz, i64 %i.ca, i64 %i.by
  %i.cb = icmp sgt i64 %spec.select.i.i.i21.3.i.i.i.i.i.i.i.i, 0
  %i.cc = select i1 %i.cb, i64 %i.br, i64 %i.bs, !unpredictable !5 ; 2 uses
  %i.cd = add nuw nsw i64 %i.cc, 2                ; 2 uses
  %i.ce = getelementptr inbounds nuw [72 x i8], ptr @121, i64 %i.cd ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1830)
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !alias.scope !1831, !noalias !1822, !noundef !5 ; 2 uses
  %i.ch = load ptr, ptr %i.ce, align 8, !alias.scope !1831, !noalias !1822, !nonnull !5, !noundef !5
  %.not.i.i13.4.i.i.i.i.i.i.i.i = icmp eq ptr %i.cg, null ; 2 uses
  %spec.select.v.i.i14.4.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.4.i.i.i.i.i.i.i.i, i64 8, i64 40
  %spec.select.i.i15.4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ce, i64 %spec.select.v.i.i14.4.i.i.i.i.i.i.i.i
  %spec.select4.i.i16.4.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.4.i.i.i.i.i.i.i.i, ptr %i.ch, ptr %i.cg
  %.sroa.3.0.i.i17.4.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i15.4.i.i.i.i.i.i.i.i, align 8, !alias.scope !1831, !noalias !1822 ; 2 uses
  %spec.store.select.i.i.i20.4.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i17.4.i.i.i.i.i.i.i.i, i64 %.val8.i.i.i.i)
  %i.ci = call i32 @memcmp(ptr nonnull readonly %spec.select4.i.i16.4.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i20.4.i.i.i.i.i.i.i.i), !alias.scope !1818, !noalias !1832 ; 2 uses
  %i.cj = sext i32 %i.ci to i64
  %i.ck = icmp eq i32 %i.ci, 0
  %i.cl = sub i64 %.sroa.3.0.i.i17.4.i.i.i.i.i.i.i.i, %.val8.i.i.i.i
  %spec.select.i.i.i21.4.i.i.i.i.i.i.i.i = select i1 %i.ck, i64 %i.cl, i64 %i.cj
  %i.cm = icmp sgt i64 %spec.select.i.i.i21.4.i.i.i.i.i.i.i.i, 0
  %i.cn = select i1 %i.cm, i64 %i.cc, i64 %i.cd, !unpredictable !5 ; 2 uses
  %i.co = add nuw nsw i64 %i.cn, 1                ; 2 uses
  %i.cp = getelementptr inbounds nuw [72 x i8], ptr @121, i64 %i.co ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1833)
  %i.cq = getelementptr inbounds nuw i8, ptr %i.cp, i64 32
  %i.cr = load ptr, ptr %i.cq, align 8, !alias.scope !1834, !noalias !1822, !noundef !5 ; 2 uses
  %i.cs = load ptr, ptr %i.cp, align 8, !alias.scope !1834, !noalias !1822, !nonnull !5, !noundef !5
  %.not.i.i13.5.i.i.i.i.i.i.i.i = icmp eq ptr %i.cr, null ; 2 uses
  %spec.select.v.i.i14.5.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.5.i.i.i.i.i.i.i.i, i64 8, i64 40
  %spec.select.i.i15.5.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cp, i64 %spec.select.v.i.i14.5.i.i.i.i.i.i.i.i
  %spec.select4.i.i16.5.i.i.i.i.i.i.i.i = select i1 %.not.i.i13.5.i.i.i.i.i.i.i.i, ptr %i.cs, ptr %i.cr
  %.sroa.3.0.i.i17.5.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i15.5.i.i.i.i.i.i.i.i, align 8, !alias.scope !1834, !noalias !1822 ; 2 uses
  %spec.store.select.i.i.i20.5.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i17.5.i.i.i.i.i.i.i.i, i64 %.val8.i.i.i.i)
  %i.ct = call i32 @memcmp(ptr nonnull readonly %spec.select4.i.i16.5.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i20.5.i.i.i.i.i.i.i.i), !alias.scope !1818, !noalias !1835 ; 2 uses
  %i.cu = sext i32 %i.ct to i64
  %i.cv = icmp eq i32 %i.ct, 0
  %i.cw = sub i64 %.sroa.3.0.i.i17.5.i.i.i.i.i.i.i.i, %.val8.i.i.i.i
  %spec.select.i.i.i21.5.i.i.i.i.i.i.i.i = select i1 %i.cv, i64 %i.cw, i64 %i.cu
  %i.cx = icmp sgt i64 %spec.select.i.i.i21.5.i.i.i.i.i.i.i.i, 0
  %i.cy = select i1 %i.cx, i64 %i.cn, i64 %i.co, !unpredictable !5 ; 2 uses
  %i.cz = getelementptr inbounds nuw [72 x i8], ptr @121, i64 %i.cy ; 10 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1836)
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 32
  %i.db = load ptr, ptr %i.da, align 8, !alias.scope !1837, !noalias !1822, !noundef !5 ; 2 uses
  %i.dc = load ptr, ptr %i.cz, align 8, !alias.scope !1837, !noalias !1822, !nonnull !5, !noundef !5 ; 2 uses
  %i.dd = shl nuw nsw i64 1, %i.cy                ; 2 uses
  %i.de = and i64 %i.dd, 167366122536978
  %.not.i.i.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.de, 0 ; 3 uses
  %spec.select.v.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.not.i.i.i.i.i.i.i.i, i64 40, i64 8
  %spec.select.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.cz, i64 %spec.select.v.i.i.i.i.i.i.i.i.i.i
  %spec.select4.i.i.i.i.i.i.i.i.i.i = select i1 %.not.i.i.not.i.i.i.i.i.i.i.i, ptr %i.db, ptr %i.dc
  %.sroa.3.0.i.i.i.i.i.i.i.i.i.i = load i64, ptr %spec.select.i.i.i.i.i.i.i.i.i.i, align 8, !alias.scope !1837, !noalias !1822 ; 2 uses
  %spec.store.select.i.i.i.i.i.i.i.i.i.i.i = call i64 @llvm.umin.i64(i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, i64 %.val8.i.i.i.i)
  %i.df = call i32 @memcmp(ptr nonnull readonly %spec.select4.i.i.i.i.i.i.i.i.i.i, ptr nonnull readonly %.val.i.i.i.i, i64 %spec.store.select.i.i.i.i.i.i.i.i.i.i.i), !alias.scope !1838, !noalias !1839 ; 2 uses
  %i.dg = sext i32 %i.df to i64
  %i.dh = icmp eq i32 %i.df, 0
  %i.di = sub i64 %.sroa.3.0.i.i.i.i.i.i.i.i.i.i, %.val8.i.i.i.i
  %spec.select.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.dh, i64 %i.di, i64 %i.dg
  %.not.i.i.i.i.i.i = icmp eq i64 %spec.select.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i.i.i.i, label %bb.e, label %_RNCINvNtNtNtCshzWfHUSfYae_4core4iter8adapters3map8map_foldRReINtNtBa_6option6OptionjEuNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths2_0NCINvNtB6_7flatten11flatten_oneBX_uNCIB2_jIBY_RNtB1q_14AttrCompletionEuNCB1o_s3_0NCIB2R_B3u_uNCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB3y_NCB1o_s1_0E0E0E0E0E0B1u_.exit.i.i.i.i

bb.e:                                             ; preds = %bb.d
  call void @llvm.experimental.noalias.scope.decl(metadata !1840)
  call void @llvm.experimental.noalias.scope.decl(metadata !1841)
  call void @llvm.experimental.noalias.scope.decl(metadata !1842)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n), !noalias !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !1843
  call void @llvm.lifetime.start.p0(ptr nonnull %i.u), !noalias !1844
  %i.dj = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.dk = load i64, ptr %i.dj, align 8, !alias.scope !1845, !noalias !1846, !noundef !5 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !1844
  call void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.f, i64 noundef %i.dk, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1), !noalias !1844
  %i.dl = load i64, ptr %i.f, align 8, !range !12, !noalias !1844, !noundef !5
  %i.dm = trunc nuw i64 %i.dl to i1
  %i.dn = load i64, ptr %i.aa, align 8, !range !1847, !noalias !1844, !noundef !5 ; 3 uses
  br i1 %i.dm, label %bb.f, label %bb.g, !prof !8

bb.f:                                             ; preds = %bb.e
  %i.do = load i64, ptr %i.ab, align 8, !noalias !1844
  call void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dn, i64 %i.do) #29, !noalias !1844
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.dp = load ptr, ptr %i.ab, align 8, !noalias !1844, !nonnull !5, !noundef !5 ; 2 uses
  %i.dq = icmp ule i64 %i.dk, %i.dn
  call void @llvm.assume(i1 %i.dq)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !1844
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.dp, ptr nonnull align 1 %i.dc, i64 %i.dk, i1 false), !noalias !1844
  store i64 %i.dn, ptr %i.u, align 8, !noalias !1844
  store ptr %i.dp, ptr %.sroa.4.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1844
  store i64 %i.dk, ptr %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1844
  call void @llvm.lifetime.start.p0(ptr nonnull %i.t), !noalias !1844
  %i.dr = getelementptr inbounds nuw i8, ptr %i.cz, i64 48
  %i.ds = load ptr, ptr %i.dr, align 8, !alias.scope !1845, !noalias !1846, !noundef !5
  %i.dt = and i64 %i.dd, 167366122537490
  %.not34.i.i.i.not.i.i.i.i.i.i.i = icmp eq i64 %i.dt, 0
  br i1 %.not34.i.i.i.not.i.i.i.i.i.i.i, label %bb.h, label %bb.j

bb.h:                                             ; preds = %bb.g
  %i.du = getelementptr inbounds nuw i8, ptr %i.cz, i64 56
  %i.dv = load i64, ptr %i.du, align 8, !alias.scope !1845, !noalias !1846 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !1848
  invoke void @_RNvMs5_NtCsbSS6DM8SDEO_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.d, i64 noundef %i.dv, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1844

.noexc.i.i.i.i.i.i.i.i.i.i:                       ; preds = %bb.h
  %i.dw = load i64, ptr %i.d, align 8, !range !12, !noalias !1848, !noundef !5
  %i.dx = trunc nuw i64 %i.dw to i1
  %i.dy = load i64, ptr %i.ac, align 8, !range !1847, !noalias !1848, !noundef !5 ; 3 uses
  br i1 %i.dx, label %bb.i, label %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_00B9_.exit.i.i.i.i.i.i.i.i.i.i, !prof !8

bb.i:                                             ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.dz = load i64, ptr %i.ad, align 8, !noalias !1848
  invoke void @_RNvNtCsbSS6DM8SDEO_5alloc7raw_vec12handle_error(i64 noundef %i.dy, i64 %i.dz) #29
          to label %.noexc46.i.i.i.i.i.i.i.i.i.i unwind label %.thread.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1844

.noexc46.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.i
  unreachable

_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_00B9_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i.i.i
  %i.ea = load ptr, ptr %i.ad, align 8, !noalias !1848, !nonnull !5, !noundef !5 ; 2 uses
  %i.eb = icmp ule i64 %i.dv, %i.dy
  call void @llvm.assume(i1 %i.eb)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1848
  call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.ea, ptr nonnull readonly align 1 %i.ds, i64 %i.dv, i1 false), !noalias !1849
  store i64 %i.dy, ptr %i.t, align 8, !noalias !1844
  store ptr %i.ea, ptr %.sroa.479.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1844
  store i64 %i.dv, ptr %.sroa.580.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1844
  br label %bb.k

bb.j:                                             ; preds = %bb.g
  store i64 -1, ptr %i.t, align 8, !noalias !1844
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %_RNCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_00B9_.exit.i.i.i.i.i.i.i.i.i.i
  %i.ec = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  %i.ed = load ptr, ptr %i.ec, align 8, !alias.scope !1845, !noalias !1846, !nonnull !5, !align !11, !noundef !5 ; 3 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %i.cz, i64 24
  %i.ef = load i64, ptr %i.ee, align 8, !alias.scope !1845, !noalias !1846, !noundef !5 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.s), !noalias !1844
  %i.eg = load ptr, ptr %i.ae, align 8, !noalias !1844, !nonnull !5, !noundef !5 ; 2 uses
  %i.eh = load i64, ptr %i.af, align 8, !noalias !1844, !noundef !5
  %i.ei = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %i.eh
  %i.ej = getelementptr inbounds nuw [16 x i8], ptr %i.ed, i64 %i.ef
  invoke void @_RNvXs3_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIBX_ReEEINtB5_7ZipImplBW_B2n_E3newCsf8NQSppxkmK_14ide_completion(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.s, ptr noundef nonnull %i.eg, ptr noundef nonnull %i.ei, ptr noundef nonnull readonly align 8 %i.ed, ptr noundef nonnull readonly %i.ej)
          to label %bb.n unwind label %.body.thread95.loopexit.split-lp.i.i.i.i.i.i.loopexit.i.i.i.i, !noalias !1844

bb.l:                                             ; preds = %.thread85.i.i.i.i.i.i.i.i.i.i
  br i1 %.sroa.08.190.i.i.i.i.i.i.i.i.i.i, label %.thread.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i, label %.thread108.i.i.i.i.i.i.i.i.i.i

.thread.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.h, %bb.i
  %lpad.loopexit.split-lp157 = landingpad { ptr, i32 }
          cleanup
  br label %.thread.i.i.i.i.i.i.loopexit.split-lp.i.i.i.i

bb.m:                                             ; preds = %bb.az
  br i1 %.sroa.07.2.ph.i.i.i.i.i.i.i.i.i.i, label %.thread85.i.i.i.i.i.i.i.i.i.i, label %.thread108.i.i.i.i.i.i.i.i.i.i

.body.thread95.loopexit.split-lp.i.i.i.i.i.i.loopexit.i.i.i.i: ; preds = %bb.ap, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsf8NQSppxkmK_14ide_completion.exit.i57.i.i.i.i.i.i.i.i.i.i, %bb.aa, %bb.y, %bb.k
  %.sroa.08.2.ph.ph.i.i.i.i.i.i.ph.i.i.i.i = phi i1 [ false, %bb.ap ], [ true, %bb.k ], [ true, %bb.aa ], [ true, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECsf8NQSppxkmK_14ide_completion.exit.i57.i.i.i.i.i.i.i.i.i.i ], [ true, %bb.y ]
  %lpad.loopexit9.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread85.i.i.i.i.i.i.i.i.i.i

.body.thread95.loopexit.split-lp.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.w, %bb.o, %bb.ab
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.thread85.i.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %bb.k
  %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.s, align 8, !noalias !1844 ; 2 uses
  %.sroa.471.0.copyload.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %.sroa.471.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1844 ; 2 uses
  %.sroa.572.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.572.0..sroa_idx.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1844 ; 3 uses
  %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx73.i.i.i.i.i.i.i.i.i.i, align 8, !noalias !1844 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !1844
  %i.ek = icmp ult i64 %.sroa.572.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i
  br i1 %i.ek, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIB1s_ReEENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_0s_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4z_5count0EB3b_.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %bb.n
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.471.0.copyload.i.i.i.i.i.i.i.i.i.i) ]
  %i.el = sub nuw i64 %.sroa.6.0.copyload.i.i.i.i.i.i.i.i.i.i, %.sroa.572.0.copyload.i.i.i.i.i.i.i.i.i.i ; 2 uses
  br label %bb.o

bb.o:                                             ; preds = %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentRReEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_0s_0NCINvMB3f_B3c_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EIB6o_B38_EEB3V_EB1i_5count0E0E0B45_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.sroa.01.023.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.fo, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentRReEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_0s_0NCINvMB3f_B3c_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EIB6o_B38_EEB3V_EB1i_5count0E0E0B45_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.em = phi i64 [ %.sroa.572.0.copyload.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.en, %_RNCINvNvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtBa_9TakeWhileppENtNtNtBe_6traits8iterator8Iterator8try_fold5checkTRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentRReEjINtNtNtBg_3ops9try_trait17NeverShortCircuitjENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_0s_0NCINvMB3f_B3c_10wrap_mut_2jB25_NCNvYIB10_INtNtBc_3zip3ZipINtNtNtBg_5slice4iter4IterB27_EIB6o_B38_EEB3V_EB1i_5count0E0E0B45_.exit.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.en = add nuw i64 %i.em, 1
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %.sroa.0.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.em
  call void @llvm.experimental.noalias.scope.decl(metadata !1850)
  call void @llvm.experimental.noalias.scope.decl(metadata !1851)
  %.val.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eo, align 8, !alias.scope !1850, !noalias !1852, !nonnull !5, !noundef !5
  %i.ep = invoke fastcc noundef ptr @_RINvNtNtCsjJXvCMGntp8_6syntax3ast7support5childNtNtNtB4_9generated5nodes7NameRefECsf8NQSppxkmK_14ide_completion(ptr nonnull %.val.i.i11.i.i.i.i.i.i.i.i.i.i.i.i.i) #31
          to label %.noexc48.i.i.i.i.i.i.i.i.i.i unwind label %.body.thread95.loopexit.split-lp.i.i.i.i.i.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !noalias !1844 ; 6 uses

.noexc48.i.i.i.i.i.i.i.i.i.i:                     ; preds = %bb.o
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.ep, null
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters10take_whileINtB6_9TakeWhileINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentEIB1s_ReEENCNCNvNtNtCsf8NQSppxkmK_14ide_completion11completions9attribute23complete_attribute_paths1_0s_0ENtNtNtBa_6traits8iterator8Iterator4foldjNCNvYBV_B4z_5count0EB3b_.exit.i.i.i.i.i.i.i.i.i.i, label %bb.p

bb.p:                                             ; preds = %.noexc48.i.i.i.i.i.i.i.i.i.i
  %i.eq = getelementptr inbounds nuw [16 x i8], ptr %.sroa.471.0.copyload.i.i.i.i.i.i.i.i.i.i, i64 %i.em ; 2 uses
  %.val3.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load ptr, ptr %i.eq, align 8, !alias.scope !1851, !noalias !1852 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %.val4.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %i.er, align 8, !alias.scope !1851, !noalias !1852 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !1853
  store ptr %i.ep, ptr %i.c, align 8, !noalias !1853
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1853
  invoke void @_RNvMs0_NtNtCsjJXvCMGntp8_6syntax3ast8node_extNtNtNtB7_9generated5nodes7NameRef4text(ptr noalias nofree noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.b, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %bb.s unwind label %bb.r, !noalias !1853

bb.q:                                             ; preds = %bb.r
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.ep) #26
          to label %.thread85.i.i.i.i.i.i.i.i.i.i unwind label %bb.x, !noalias !1853

bb.r:                                             ; preds = %bb.v, %bb.p
  %i.es = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.ep, i64 48 ; 2 uses
  %i.eu = load i32, ptr %i.et, align 4, !noalias !1853, !noundef !5
  %i.ev = add i32 %i.eu, -1                       ; 2 uses
  store i32 %i.ev, ptr %i.et, align 4, !noalias !1853
  %i.ew = icmp eq i32 %i.ev, 0
  br i1 %i.ew, label %bb.q, label %.thread85.i.i.i.i.i.i.i.i.i.i

bb.s:                                             ; preds = %bb.p
  call void @llvm.experimental.noalias.scope.decl(metadata !1854)
  %i.ex = load ptr, ptr %i.b, align 8, !alias.scope !1854, !noalias !1853, !noundef !5 ; 2 uses
  %i.ey = icmp eq ptr %i.ex, null                 ; 3 uses
  %i.ez = load ptr, ptr %i.ag, align 8, !alias.scope !1854, !noalias !1853 ; 5 uses
  %i.fa = getelementptr inbounds nuw i8, ptr %i.ez, i64 16 ; 2 uses
  %.sroa.3.0.in.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = select i1 %i.ey, ptr %i.fa, ptr %i.ag
end_hunk_0
