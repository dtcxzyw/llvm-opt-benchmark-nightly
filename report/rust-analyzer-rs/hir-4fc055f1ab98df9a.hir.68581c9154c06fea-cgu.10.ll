Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir-4fc055f1ab98df9a.hir.68581c9154c06fea-cgu.10?download=true
inline.NumInlined: 1122
inline.NumDeleted: 640
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEIBP_IBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3w_3hir8generics19GenericParamDataRefEEIB11_IB11_INtNtB7_6filter6FilterIB11_INtNtB7_9enumerate9EnumerateIB1F_NtB4a_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6z_5ArenaB60_E4iter0ENCNvMs3_B4a_NtB4a_13GenericParams19iter_early_bound_lt0ENCNvMB26_B24_14iter_lifetimes0ENCNvB8j_4iter0EEIB11_IB11_IB11_IB5u_IB1F_NtB4a_20TypeOrConstParamDataEENCNvMsm_B6z_IB6X_B9p_E4iter0ENCNvB8j_19iter_type_or_consts0ENCNvB8j_30iter_type_or_consts_as_generic0EEIB11_INtNtB7_10filter_map9FilterMapIB53_B5o_NCNvB7p_18iter_late_bound_lt0ENCNvB8j_25iter_late_bound_lifetimes0EB8K_EENCNvMs_B26_NtB26_8Generics4iter0ENCNvMNtNtB28_11next_solver8genericsNtBe3_8Generics4iter0EIB36_TB3u_INtB38_6OptionRB60_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_B5w_IB5u_pEBfq_4fold9enumerateBeY_uNCINvNvBfq_8for_each4callTjBeY_ENCINvMss_NtBe5_11generic_argNtBhs_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtBiu_4Type27instantiate_many_with_inferIBP_INtNtNtB9_7sources4once4OnceRBiM_EIB1F_BiM_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhs_10GenericArgEE0E0E0EBiu_:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(20) %.sroa.11.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(20) %.sroa.66.0..sroa_idx.i.i.i.i.i, i64 20, i1 false), !noalias !724
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !724
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !739
  store i32 %i.s, ptr %i.a, align 8, !noalias !743
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.16..sroa_idx.i.i.i.i.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.11.i.i.i.i.i, i64 16, i1 false), !noalias !743
  %i.v = call noundef nonnull ptr @_RNvMs3_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver5inferNtB5_9InferCtxt11var_for_def(ptr noundef nonnull align 8 %.val3.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(20) %i.i, i32 noundef 4, i32 undef), !noalias !744
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.t) ]
  store ptr %i.v, ptr %i.u, align 8, !noalias !739
  %i.w = call noundef nonnull ptr @_RNvMs6_NtCsfjX3T6UU9IB_9hashbrown3rawINtB5_8RawTableTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE14insert_no_growCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.t, i64 noundef %.sroa.44.0.copyload.i.i.i.i.i, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.a), !noalias !739
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !739
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB5Z_4Type27instantiate_many_with_inferINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceRB6h_EINtNtNtBf_5slice4iter4IterB6h_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B5Z_.exit.i

bb.f:                                             ; preds = %.lr.ph.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !724
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val3.i.i.i.i) ]
  br label %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB5Z_4Type27instantiate_many_with_inferINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceRB6h_EINtNtNtBf_5slice4iter4IterB6h_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B5Z_.exit.i

_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB5Z_4Type27instantiate_many_with_inferINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceRB6h_EINtNtNtBf_5slice4iter4IterB6h_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B5Z_.exit.i: ; preds = %bb.f, %bb.e
  %.pn.i.i.i.i.i.i = phi ptr [ %i.w, %bb.e ], [ %i.t, %bb.f ]
  %.sroa.0.0.i.i.i.i.i.i = getelementptr inbounds i8, ptr %.pn.i.i.i.i.i.i, i64 -8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i)
  %i.x = load ptr, ptr %.sroa.0.0.i.i.i.i.i.i, align 8, !noalias !724, !nonnull !8, !noundef !8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !738
  %i.y = load ptr, ptr %.sroa.45.0.copyload, align 8, !noalias !738, !nonnull !8, !align !222, !noundef !8
  call void @_RNvXsr_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5_10GenericArgENtB5_18GenericArgsBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.y, ptr noundef nonnull %i.x), !noalias !738
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB6w_4Type27instantiate_many_with_inferINtNtB3f_5chain5ChainINtNtNtB2o_7sources4once4OnceRB6O_EINtNtNtB8_5slice4iter4IterB6O_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB6w_.exit

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB6w_4Type27instantiate_many_with_inferINtNtB3f_5chain5ChainINtNtNtB2o_7sources4once4OnceRB6O_EINtNtNtB8_5slice4iter4IterB6O_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB6w_.exit: ; preds = %_RNCINvNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateTNtCsileJQcQObtj_7hir_def14GenericParamIdINtNtBf_6option6OptionRNtNtNtB24_3hir8generics17LifetimeParamDataEEuNCINvNvB1e_8for_each4callTjB21_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4r_11GenericArgs12fill_builderNCNCINvMs1x_Cs8Xq8PKFYOms_3hirNtB5Z_4Type27instantiate_many_with_inferINtNtBb_5chain5ChainINtNtNtBd_7sources4once4OnceRB6h_EINtNtNtBf_5slice4iter4IterB6h_EEE00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4r_10GenericArgEE0E0E0B5Z_.exit.i, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEIBP_IBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3w_3hir8generics19GenericParamDataRefEEIB11_IB11_INtNtB7_6filter6FilterIB11_INtNtB7_9enumerate9EnumerateIB1F_NtB4a_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6z_5ArenaB60_E4iter0ENCNvMs3_B4a_NtB4a_13GenericParams19iter_early_bound_lt0ENCNvMB26_B24_14iter_lifetimes0ENCNvB8j_4iter0EEIB11_IB11_IB11_IB5u_IB1F_NtB4a_20TypeOrConstParamDataEENCNvMsm_B6z_IB6X_B9p_E4iter0ENCNvB8j_19iter_type_or_consts0ENCNvB8j_30iter_type_or_consts_as_generic0EEIB11_INtNtB7_10filter_map9FilterMapIB53_B5o_NCNvB7p_18iter_late_bound_lt0ENCNvB8j_25iter_late_bound_lifetimes0EB8K_EENCNvMs_B26_NtB26_8Generics4iter0ENCNvMNtNtB28_11next_solver8genericsNtBe3_8Generics4iter0EIB36_TB3u_INtB38_6OptionRB60_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_B5w_IB5u_pEBfq_4fold9enumerateBeY_uNCINvNvBfq_8for_each4callTjBeY_ENCINvMss_NtBe5_11generic_argNtBhs_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBit_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBhs_10GenericArgKja_EE0E0E0EBit_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load i64, ptr %i.b, align 8, !range !545, !noundef !8
  %.not = icmp eq i64 %i.c, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBib_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBha_10GenericArgKja_EE0E0E0EBib_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr %0, align 8, !range !425, !noundef !8 ; 2 uses
  %switch = icmp ugt i32 %i.e, -3
  br i1 %switch, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6v_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4Y_10GenericArgKja_EE0E0E0EB6v_.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8
  %i.f = getelementptr i8, ptr %.sroa.04.0.copyload, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !745
  store i32 %i.e, ptr %i.j, align 8, !noalias !756
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  %i.k = trunc i64 %.sroa.56.0.copyload to i32
  %i.l = load ptr, ptr %.sroa.45.0.copyload, align 8, !noalias !745, !nonnull !8, !align !222, !noundef !8 ; 2 uses
  %i.m = load i32, ptr %i.l, align 8, !alias.scope !757, !noalias !745, !noundef !8
  %i.n = zext i32 %i.m to i64
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i32 %i.k, ptr %i.i, align 4, !noalias !745
  store ptr %.sroa.53.0.copyload, ptr %i.a, align 8, !noalias !745
  store ptr %i.o, ptr %i.h, align 8, !noalias !745
  store i64 %i.n, ptr %i.g, align 8, !noalias !745
  %.val.i.i.i.us.i = load ptr, ptr %.sroa.04.0.copyload, align 8, !noalias !745
  %.val1.i.i.i.us.i = load ptr, ptr %i.f, align 8, !noalias !745
  %i.p = call fastcc noundef nonnull ptr @_RNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBa_4Type12has_any_impl00Ba_(ptr %.val.i.i.i.us.i, ptr %.val1.i.i.i.us.i, ptr noalias nofree noundef align 4 captures(address) dereferenceable(20) %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !745
  %i.q = load ptr, ptr %.sroa.45.0.copyload, align 8, !noalias !745, !nonnull !8, !align !222, !noundef !8
  tail call void @_RNvXsq_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argINtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB5_10GenericArgKja_ENtB5_18GenericArgsBuilder4pushCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(88) %i.q, ptr noundef nonnull %i.p), !noalias !745
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6v_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4Y_10GenericArgKja_EE0E0E0EB6v_.exit

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6v_4Type12has_any_impl00INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB4Y_10GenericArgKja_EE0E0E0EB6v_.exit: ; preds = %bb.c, %.lr.ph.split.us.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtB7_7flatten7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEIBP_IBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3w_3hir8generics19GenericParamDataRefEEIB11_IB11_INtNtB7_6filter6FilterIB11_INtNtB7_9enumerate9EnumerateIB1F_NtB4a_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6z_5ArenaB60_E4iter0ENCNvMs3_B4a_NtB4a_13GenericParams19iter_early_bound_lt0ENCNvMB26_B24_14iter_lifetimes0ENCNvB8j_4iter0EEIB11_IB11_IB11_IB5u_IB1F_NtB4a_20TypeOrConstParamDataEENCNvMsm_B6z_IB6X_B9p_E4iter0ENCNvB8j_19iter_type_or_consts0ENCNvB8j_30iter_type_or_consts_as_generic0EEIB11_INtNtB7_10filter_map9FilterMapIB53_B5o_NCNvB7p_18iter_late_bound_lt0ENCNvB8j_25iter_late_bound_lifetimes0EB8K_EENCNvMs_B26_NtB26_8Generics4iter0ENCNvMNtNtB28_11next_solver8genericsNtBe3_8Generics4iter0EIB36_TB3u_INtB38_6OptionRB60_EEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvXs_B5w_IB5u_pEBfq_4fold9enumerateBeY_uNCINvNvBfq_8for_each4callTjBeY_ENCINvMss_NtBe5_11generic_argNtBhs_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBit_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhs_10GenericArgEE0E0E0EBit_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(376) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 8 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 360
  %i.c = load i64, ptr %i.b, align 8, !range !545, !noundef !8
  %.not = icmp eq i64 %i.c, 4
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapINtNtNtBc_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB8_5chain5ChainIB2B_IB2B_INtNtBc_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3v_3hir8generics19GenericParamDataRefEEIBO_IBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateIB1m_NtB49_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6v_5ArenaB5W_E4iter0ENCNvMs3_B49_NtB49_13GenericParams19iter_early_bound_lt0ENCNvMB1N_B1L_14iter_lifetimes0ENCNvB8f_4iter0EEIBO_IBO_IBO_IB5q_IB1m_NtB49_20TypeOrConstParamDataEENCNvMsm_B6v_IB6T_B9i_E4iter0ENCNvB8f_19iter_type_or_consts0ENCNvB8f_30iter_type_or_consts_as_generic0EEIBO_INtNtB8_10filter_map9FilterMapIB50_B5l_NCNvB7l_18iter_late_bound_lt0ENCNvB8f_25iter_late_bound_lifetimes0EB8G_EENCNvMs_B1N_NtB1N_8Generics4iter0ENCNvMNtNtB1P_11next_solver8genericsNtBdV_8Generics4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvXs_B5s_IB5q_pEBeL_4fold9enumerateTB3t_INtB37_6OptionRB5W_EEuNCINvNvBeL_8for_each4callTjBg4_ENCINvMss_NtBdX_11generic_argNtBha_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBib_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBha_10GenericArgEE0E0E0EBib_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(344) %i.d, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.e = load i32, ptr %0, align 8, !range !425, !noundef !8 ; 2 uses
  %switch = icmp ugt i32 %i.e, -3
  br i1 %switch, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6v_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB6v_.exit, label %.lr.ph.split.us.i

.lr.ph.split.us.i:                                ; preds = %bb.c
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  %.sroa.56.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.56.0.copyload = load i64, ptr %.sroa.56.0..sroa_idx, align 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.45.0.copyload = load ptr, ptr %.sroa.45.0..sroa_idx, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.04.0.copyload = load ptr, ptr %1, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.53.0.copyload = load ptr, ptr %.sroa.53.0..sroa_idx, align 8
  %i.f = getelementptr i8, ptr %.sroa.04.0.copyload, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 28
  %.sroa.45.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.a, i64 12
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !760
  store i32 %i.e, ptr %i.j, align 8, !noalias !771
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.45.0..sroa_idx.i, ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, i64 16, i1 false)
  %i.k = trunc i64 %.sroa.56.0.copyload to i32
  %i.l = load ptr, ptr %.sroa.45.0.copyload, align 8, !noalias !760, !nonnull !8, !align !222, !noundef !8 ; 2 uses
  %i.m = getelementptr i8, ptr %i.l, i64 8
  %.val.i.i.i.us.i = load ptr, ptr %i.m, align 8, !noalias !760, !nonnull !8, !noundef !8
  %i.n = getelementptr i8, ptr %i.l, i64 16
  %.val1.i.i.i.us.i = load i64, ptr %i.n, align 8, !noalias !760, !noundef !8
  store i32 %i.k, ptr %i.i, align 4, !noalias !760
  store ptr %.sroa.53.0.copyload, ptr %i.a, align 8, !noalias !760
  store ptr %.val.i.i.i.us.i, ptr %i.h, align 8, !noalias !760
  store i64 %.val1.i.i.i.us.i, ptr %i.g, align 8, !noalias !760
  %.val2.i.i.i.us.i = load ptr, ptr %.sroa.04.0.copyload, align 8, !noalias !760
  %.val3.i.i.i.us.i = load ptr, ptr %i.f, align 8, !noalias !760
  %i.o = call fastcc noundef nonnull ptr @_RNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtBa_4Type12has_any_impl00Ba_(ptr %.val2.i.i.i.us.i, ptr %.val3.i.i.i.us.i, ptr noalias nofree noundef align 4 captures(address) dereferenceable(20) %i.j) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !760
  %i.p = load ptr, ptr %.sroa.45.0.copyload, align 8, !noalias !760, !nonnull !8, !align !222, !noundef !8
  tail call void @_RNvXsr_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB5_10GenericArgENtB5_18GenericArgsBuilder4push(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.p, ptr noundef nonnull %i.o), !noalias !760
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6v_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB6v_.exit

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdINtB6_6OptionRNtNtNtBK_3hir8generics17LifetimeParamDataEEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB2o_8adapters9enumerateINtB3d_9EnumeratepEB2i_4fold9enumerateBH_uNCINvNvB2i_8for_each4callTjBH_ENCINvMss_NtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_argNtB4Y_11GenericArgs12fill_builderNCNCNvMs1x_Cs8Xq8PKFYOms_3hirNtB6v_4Type12has_any_impl00INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB4Y_10GenericArgEE0E0E0EB6v_.exit: ; preds = %bb.c, %.lr.ph.split.us.i
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3map3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir13LifetimeParamENcNtNtB26_12GenericParam13LifetimeParam0EIB11_IB11_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5w_5ArenaB4l_E4iter0ENCNvMs12_B26_NtB26_10GenericDef6params0EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNvB6X_8for_each4callB2I_NCINvMsk_B1l_INtB1l_3VecB80_E14extend_trustedBO_E0E0EB26_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(80) %0, ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = load ptr, ptr %0, align 8, !noundef !8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir13LifetimeParamENcNtNtB1N_12GenericParam13LifetimeParam0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvNvB30_8for_each4callB2p_NCINvMsk_B12_INtB12_3VecB44_E14extend_trustedINtNtB8_5chain5ChainBN_IBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB7p_5ArenaB6e_E4iter0ENCNvMs12_B1N_NtB1N_10GenericDef6params0EEE0E0EB1N_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.g

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.d = load ptr, ptr %i.c, align 8, !noundef !8
  %.not4 = icmp eq ptr %i.d, null
  br i1 %.not4, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB34_5ArenaB1T_E4iter0ENCNvMs12_Cs8Xq8PKFYOms_3hirNtB3Z_10GenericDef6params0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callNtB3Z_12GenericParamNCINvMsk_NtCsbSS6DM8SDEO_5alloc3vecINtB6e_3VecB5L_E14extend_trustedINtNtB8_5chain5ChainIBO_INtNtB6e_9into_iter8IntoIterNtB3Z_13LifetimeParamENcNtB5L_13LifetimeParam0EBN_EE0E0EB3Z_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %.val6 = load ptr, ptr %1, align 8, !nonnull !8, !align !222, !noundef !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val7 = load i64, ptr %i.e, align 8, !noundef !8
  store i64 %.val7, ptr %.val6, align 8
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  ret void

bb.g:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %.val = load ptr, ptr %1, align 8, !nonnull !8, !align !222, !noundef !8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5 = load i64, ptr %i.g, align 8, !noundef !8
  store i64 %.val5, ptr %.val, align 8
  resume { ptr, i32 } %i.f
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtB7_3zip3ZipINtNtB7_10filter_map9FilterMapINtNtNtBb_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB3n_19GenericSubstitution5typess2_0EINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4I_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEEIB11_IB1h_B1K_NCB3g_s3_0EIB1h_INtNtB7_3map3MapINtNtB7_9enumerate9EnumerateIB1L_NtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB8Z_5ArenaB7O_E4iter0ENCB3g_s0_0EEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvNvB9Y_8find_map5checkTNtNtB2e_2ty2TyB5A_ETNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtB3n_4TypeEQNCB3g_s4_0E0INtNtNtBb_3ops12control_flow11ControlFlowBbq_EEB3n_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 dereferenceable(176) %1, ptr noalias nofree noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = alloca [8 x i8], align 8                 ; 5 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %.sroa.010.i.i.i.i.i = alloca i64, align 8      ; 11 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [32 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %2, ptr %i.g, align 8
  %i.h = load i64, ptr %1, align 8, !range !772, !noundef !8
  %.not = icmp eq i64 %i.h, -3
  br i1 %.not, label %bb.q, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !773)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.g, ptr %i.f, align 8, !noalias !776
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 12 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 4 uses
  %.sroa.7.0..sroa_idx12.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %.sroa.623.0..sroa_idx24.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 8 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  br label %bb.c

bb.c:                                             ; preds = %bb.p, %bb.b
  call void @llvm.experimental.noalias.scope.decl(metadata !779)
  call void @llvm.experimental.noalias.scope.decl(metadata !782)
  call void @llvm.experimental.noalias.scope.decl(metadata !785)
  call void @llvm.experimental.noalias.scope.decl(metadata !788)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !791
  store ptr %i.j, ptr %i.d, align 8, !noalias !792
  %i.s = load ptr, ptr %i.k, align 8, !alias.scope !794, !noalias !795, !nonnull !8, !noundef !8
  %.promoted.i.i.i.i.i = load ptr, ptr %i.i, align 8, !alias.scope !794, !noalias !795
  br label %bb.d

bb.d:                                             ; preds = %bb.e, %bb.c
  %i.t = phi ptr [ %i.v, %bb.e ], [ %.promoted.i.i.i.i.i, %bb.c ] ; 3 uses
  %i.u = icmp eq ptr %i.t, %i.s
  br i1 %i.u, label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.thread.i, label %bb.e

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.thread.i: ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !791
  br label %.loopexit45

bb.e:                                             ; preds = %bb.d
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 8 ; 2 uses
  store ptr %i.v, ptr %i.i, align 8, !alias.scope !794, !noalias !795
  %i.w = call noundef ptr @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCNvMs13_Cs8Xq8PKFYOms_3hirNtBX_19GenericSubstitution5typess2_0INtB7_5FnMutTRNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEE8call_mutBX_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.d, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.t), !noalias !796 ; 3 uses
  %.not.i.i.i.i.i = icmp eq ptr %i.w, null
  br i1 %.not.i.i.i.i.i, label %bb.d, label %bb.f

bb.f:                                             ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !791
  call void @llvm.experimental.noalias.scope.decl(metadata !797)
  call void @llvm.experimental.noalias.scope.decl(metadata !800)
  %.pre.i.i.i.i.i = load ptr, ptr %i.l, align 8, !alias.scope !803, !noalias !806
  %i.x = icmp eq ptr %.pre.i.i.i.i.i, null
  br i1 %i.x, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.y = load ptr, ptr %i.m, align 8, !alias.scope !807, !noalias !806, !nonnull !8, !noundef !8
  %i.z = load ptr, ptr %i.n, align 8, !alias.scope !807, !noalias !806, !nonnull !8, !noundef !8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, %i.y
  br i1 %i.aa, label %bb.h, label %.loopexit.i.i.i.i

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.peel.i.i.i.i unwind label %.loopexit.split-lp.i.i.i.i, !noalias !813

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.peel.i.i.i.i: ; preds = %bb.h
  store ptr null, ptr %i.l, align 8, !alias.scope !814, !noalias !806
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.peel.i.i.i.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !815)
  %i.ab = load i64, ptr %1, align 8, !range !818, !alias.scope !819, !noalias !821, !noundef !8 ; 2 uses
  %.not.i3.i.peel.i.i.i.i = icmp eq i64 %i.ab, -2
  br i1 %.not.i3.i.peel.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i, label %bb.i

bb.i:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i
  store i64 %i.ab, ptr %.sroa.010.i.i.i.i.i, align 8, !alias.scope !822, !noalias !826
  %.sroa.7.sroa.0.0.copyload.i.peel.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i.i.i.i, align 8, !alias.scope !827, !noalias !806
  %.sroa.7.sroa.5.0.copyload.i.peel.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i.i.i.i.i, align 8, !alias.scope !827, !noalias !806
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i: ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i
  %.sroa.7.sroa.5.0.i.peel.i.i.i.i = phi i64 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i ], [ %.sroa.7.sroa.5.0.copyload.i.peel.i.i.i.i, %bb.i ] ; 3 uses
  %.sroa.7.sroa.0.0.i.peel.i.i.i.i = phi ptr [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i ], [ %.sroa.7.sroa.0.0.copyload.i.peel.i.i.i.i, %bb.i ] ; 5 uses
  %.sink.i.i.peel.i.i.i.i = phi ptr [ %.sroa.010.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i ], [ %1, %bb.i ]
  store i64 -1, ptr %.sink.i.i.peel.i.i.i.i, align 8, !alias.scope !828, !noalias !806
  %.sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.0..sroa.010.i.i.0..sroa.010.i.0..sroa.010.i.0..sroa.010.0..sroa.010.0..sroa.010.0..i.peel.i.i.i.i = load i64, ptr %.sroa.010.i.i.i.i.i, align 8, !range !34, !noalias !826, !noundef !8 ; 2 uses
  %.not.i.peel.i.i.i.i = icmp eq i64 %.sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.0..sroa.010.i.i.0..sroa.010.i.0..sroa.010.i.0..sroa.010.0..sroa.010.0..sroa.010.0..i.peel.i.i.i.i, -1
  br i1 %.not.i.peel.i.i.i.i, label %.loopexit5.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.i.peel.i.i.i.i) ]
  %i.ac = icmp ult i64 %.sroa.7.sroa.5.0.i.peel.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ac)
  %.idx.i.i.i = shl nuw nsw i64 %.sroa.7.sroa.5.0.i.peel.i.i.i.i, 3
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.0.i.peel.i.i.i.i, i64 %.idx.i.i.i
  store ptr %.sroa.7.sroa.0.0.i.peel.i.i.i.i, ptr %i.l, align 8, !alias.scope !829, !noalias !806
  store ptr %.sroa.7.sroa.0.0.i.peel.i.i.i.i, ptr %i.n, align 8, !alias.scope !829, !noalias !806
  store i64 %.sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.0..sroa.010.i.i.0..sroa.010.i.0..sroa.010.i.0..sroa.010.0..sroa.010.0..sroa.010.0..i.peel.i.i.i.i, ptr %.sroa.623.0..sroa_idx24.i.i.i.i.i, align 8, !alias.scope !829, !noalias !806
  store ptr %i.ad, ptr %i.m, align 8, !alias.scope !829, !noalias !806
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i.i.i.i.i)
  %i.ae = icmp eq i64 %.sroa.7.sroa.5.0.i.peel.i.i.i.i, 0
  br i1 %i.ae, label %.lr.ph.i.i.i, label %.loopexit.i.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !830)
  call void @llvm.experimental.noalias.scope.decl(metadata !831)
  call void @llvm.experimental.noalias.scope.decl(metadata !833)
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i unwind label %.loopexit4.i.i.i.i, !noalias !813

common.resume:                                    ; preds = %bb.j, %bb.n, %.body
  %common.resume.op = phi { ptr, i32 } [ %eh.lpad-body, %.body ], [ %lpad.phi.i.i.i.i, %bb.j ], [ %i.ao, %bb.n ]
  resume { ptr, i32 } %common.resume.op

.loopexit4.i.i.i.i:                               ; preds = %.lr.ph.i.i.i
  %lpad.loopexit.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

.loopexit.split-lp.i.i.i.i:                       ; preds = %bb.h
  %lpad.loopexit.split-lp.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.j

bb.j:                                             ; preds = %.loopexit.split-lp.i.i.i.i, %.loopexit4.i.i.i.i
  %lpad.phi.i.i.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i.i.i, %.loopexit4.i.i.i.i ], [ %lpad.loopexit.split-lp.i.i.i.i, %.loopexit.split-lp.i.i.i.i ]
  store ptr null, ptr %i.l, align 8, !alias.scope !803, !noalias !806
  br label %common.resume

.loopexit.i.i.i.i:                                ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i, %bb.g
  %.lcssa.i.i.i.i = phi ptr [ %i.z, %bb.g ], [ %.sroa.7.sroa.0.0.i.peel.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i ], [ %.sroa.7.sroa.0.0.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i ] ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %.lcssa.i.i.i.i, i64 8
  store ptr %i.af, ptr %i.n, align 8, !alias.scope !835, !noalias !806
  %i.ag = load ptr, ptr %.lcssa.i.i.i.i, align 8, !noalias !836, !noundef !8
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i: ; preds = %.lr.ph.i.i.i
  store ptr null, ptr %i.l, align 8, !alias.scope !803, !noalias !806
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.010.i.i.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !837)
  %i.ah = load i64, ptr %1, align 8, !range !818, !alias.scope !819, !noalias !839, !noundef !8 ; 2 uses
  %.not.i3.i.i.i.i.i = icmp eq i64 %i.ah, -2
  br i1 %.not.i3.i.i.i.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.i, label %bb.k

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i
  store i64 %i.ah, ptr %.sroa.010.i.i.i.i.i, align 8, !alias.scope !840, !noalias !826
  %.sroa.7.sroa.0.0.copyload.i.i.i.i.i = load ptr, ptr %.sroa.7.0..sroa_idx12.i.i.i.i.i, align 8, !alias.scope !841, !noalias !806
  %.sroa.7.sroa.5.0.copyload.i.i.i.i.i = load i64, ptr %.sroa.7.sroa.5.0..sroa.7.0..sroa_idx12.sroa_idx.i.i.i.i.i, align 8, !alias.scope !841, !noalias !806
  br label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.i: ; preds = %bb.k, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i
  %.sroa.7.sroa.5.0.i.i.i.i.i = phi i64 [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i ], [ %.sroa.7.sroa.5.0.copyload.i.i.i.i.i, %bb.k ] ; 3 uses
  %.sroa.7.sroa.0.0.i.i.i.i.i = phi ptr [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i ], [ %.sroa.7.sroa.0.0.copyload.i.i.i.i.i, %bb.k ] ; 5 uses
  %.sink.i.i.i.i.i.i = phi ptr [ %.sroa.010.i.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i ], [ %1, %bb.k ]
  store i64 -1, ptr %.sink.i.i.i.i.i.i, align 8, !alias.scope !842, !noalias !806
  %.sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.0..sroa.010.i.i.0..sroa.010.i.0..sroa.010.i.0..sroa.010.0..sroa.010.0..sroa.010.0..i.i.i.i.i = load i64, ptr %.sroa.010.i.i.i.i.i, align 8, !range !34, !noalias !826, !noundef !8 ; 2 uses
  %.not.i.i9.i.i.i = icmp eq i64 %.sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.0..sroa.010.i.i.0..sroa.010.i.0..sroa.010.i.0..sroa.010.0..sroa.010.0..sroa.010.0..i.i.i.i.i, -1
  br i1 %.not.i.i9.i.i.i, label %.loopexit5.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i

.loopexit5.i.i.i.i:                               ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.i, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.peel.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !843)
  %i.ai = load ptr, ptr %i.o, align 8, !alias.scope !846, !noalias !806, !noundef !8
  %.not.i4.i.i.i.i.i = icmp eq ptr %i.ai, null
  br i1 %.not.i4.i.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit9.i.i.i.i.i, label %bb.l

bb.l:                                             ; preds = %.loopexit5.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !847)
  call void @llvm.experimental.noalias.scope.decl(metadata !850)
  %i.aj = load ptr, ptr %i.p, align 8, !alias.scope !853, !noalias !806, !nonnull !8, !noundef !8
  %i.ak = load ptr, ptr %i.q, align 8, !alias.scope !853, !noalias !806, !nonnull !8, !noundef !8 ; 3 uses
  %i.al = icmp eq ptr %i.ak, %i.aj
  br i1 %i.al, label %bb.m, label %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextINtNtNtBY_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i5.i.i.i.i.i

_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextINtNtNtBY_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i5.i.i.i.i.i: ; preds = %bb.l
  %i.am = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  store ptr %i.am, ptr %i.q, align 8, !alias.scope !853, !noalias !806
  %i.an = load ptr, ptr %i.ak, align 8, !noalias !854, !noundef !8
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit9.i.i.i.i.i

bb.m:                                             ; preds = %bb.l
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i8.i.i.i.i.i unwind label %bb.n, !noalias !813

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i8.i.i.i.i.i: ; preds = %bb.m
  store ptr null, ptr %i.o, align 8, !alias.scope !846, !noalias !806
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit9.i.i.i.i.i

bb.n:                                             ; preds = %bb.m
  %i.ao = landingpad { ptr, i32 }
          cleanup
  store ptr null, ptr %i.o, align 8, !alias.scope !846, !noalias !806
  br label %common.resume

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit9.i.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i8.i.i.i.i.i, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextINtNtNtBY_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i5.i.i.i.i.i, %.loopexit5.i.i.i.i
  %.sroa.3.0.i6.i.i.i.i.i = phi ptr [ undef, %.loopexit5.i.i.i.i ], [ %i.an, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextINtNtNtBY_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i5.i.i.i.i.i ], [ undef, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i8.i.i.i.i.i ]
  %.sroa.0.0.i7.i.i.i.i.i = phi ptr [ null, %.loopexit5.i.i.i.i ], [ %i.w, %_RNvYNvYINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtNtBY_4iter6traits8iterator8Iterator4nextINtNtNtBY_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i5.i.i.i.i.i ], [ null, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i8.i.i.i.i.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i.i.i.i.i)
  br label %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i: ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtBb_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB11_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEINtB5_8FuseImplBY_E4nextCs8Xq8PKFYOms_3hir.exit.i.i.i.i.i
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.7.sroa.0.0.i.i.i.i.i) ]
  %i.ap = icmp ult i64 %.sroa.7.sroa.5.0.i.i.i.i.i, 1152921504606846976
  call void @llvm.assume(i1 %i.ap)
  %.idx14.i.i.i = shl nuw nsw i64 %.sroa.7.sroa.5.0.i.i.i.i.i, 3
  %i.aq = getelementptr inbounds nuw i8, ptr %.sroa.7.sroa.0.0.i.i.i.i.i, i64 %.idx14.i.i.i
  store ptr %.sroa.7.sroa.0.0.i.i.i.i.i, ptr %i.l, align 8, !alias.scope !829, !noalias !806
  store ptr %.sroa.7.sroa.0.0.i.i.i.i.i, ptr %i.n, align 8, !alias.scope !829, !noalias !806
  store i64 %.sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.i.0..sroa.010.i.i.0..sroa.010.i.i.0..sroa.010.i.0..sroa.010.i.0..sroa.010.0..sroa.010.0..sroa.010.0..i.i.i.i.i, ptr %.sroa.623.0..sroa_idx24.i.i.i.i.i, align 8, !alias.scope !829, !noalias !806
  store ptr %i.aq, ptr %i.m, align 8, !alias.scope !829, !noalias !806
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.010.i.i.i.i.i)
  %i.ar = icmp eq i64 %.sroa.7.sroa.5.0.i.i.i.i.i, 0
  br i1 %i.ar, label %.lr.ph.i.i.i, label %.loopexit.i.i.i.i, !llvm.loop !855

_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit9.i.i.i.i.i, %.loopexit.i.i.i.i
  %.sroa.4.0.i.i.i = phi ptr [ %.sroa.3.0.i6.i.i.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit9.i.i.i.i.i ], [ %i.ag, %.loopexit.i.i.i.i ]
  %.sroa.0.0.i.i.i = phi ptr [ %.sroa.0.0.i7.i.i.i.i.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterINtNtB8_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEB1U_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit9.i.i.i.i.i ], [ %i.w, %.loopexit.i.i.i.i ] ; 2 uses
  %.not.i = icmp eq ptr %.sroa.0.0.i.i.i, null
  br i1 %.not.i, label %.loopexit45, label %bb.o

bb.o:                                             ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !776
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8find_map5checkTNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver2ty2TyINtNtBb_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEETNtNtCs39E2wp1vf7X_6intern6symbol6SymbolNtCs8Xq8PKFYOms_3hir4TypeEQNCNvMs13_B4i_NtB4i_19GenericSubstitution5typess4_0E0INtB7_5FnMutTuB1P_EE8call_mutB4i_(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull %.sroa.0.0.i.i.i, ptr noundef %.sroa.4.0.i.i.i), !noalias !813
  %i.as = load i32, ptr %i.r, align 8, !range !673, !alias.scope !856, !noalias !859, !noundef !8 ; 2 uses
  %.not.i.i = icmp eq i32 %i.as, -1
  br i1 %.not.i.i, label %bb.p, label %bb.r

bb.p:                                             ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !776
  br label %bb.c

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3zip3ZipINtNtB12_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB3D_19GenericSubstitution5typess2_0EINtNtB12_7flatten7FlattenINtBE_8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEEEEB3D_.exit, %bb.a
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 120 ; 3 uses
  %i.au = load ptr, ptr %i.at, align 8, !noundef !8 ; 2 uses
  %.not7 = icmp eq ptr %i.au, null
  br i1 %.not7, label %bb.ae, label %bb.af

bb.r:                                             ; preds = %bb.o
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef nonnull align 8 dereferenceable(16) %i.e, i64 16, i1 false)
  %.sroa.7.0..sroa_idx7.i = getelementptr inbounds nuw i8, ptr %i.e, i64 20
  %.sroa.523.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.sroa.523.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(12) %.sroa.7.0..sroa_idx7.i, i64 12, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !776
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.ae

.loopexit45:                                      ; preds = %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.i, %_RNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters3zipINtB4_3ZipINtNtB6_10filter_map9FilterMapINtNtNtBa_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB32_19GenericSubstitution5typess2_0EINtNtB6_7flatten7FlattenINtNtBa_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB4n_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEENtNtNtB8_6traits8iterator8Iterator4nextB32_.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  %i.av = load i64, ptr %1, align 8, !range !772, !alias.scope !861, !noundef !8 ; 2 uses
  %i.aw = icmp eq i64 %i.av, -3
  br i1 %i.aw, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3zip3ZipINtNtB12_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB3D_19GenericSubstitution5typess2_0EINtNtB12_7flatten7FlattenINtBE_8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEEEEB3D_.exit, label %bb.s

bb.s:                                             ; preds = %.loopexit45
  %switch.i.i.i.i.i.i = icmp ugt i64 %i.av, -3
  br i1 %switch.i.i.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB1e_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i, label %bb.t

bb.t:                                             ; preds = %bb.s
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VecINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtBK_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i.i unwind label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.ax = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtBR_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
          to label %.body.i.i.i.i unwind label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i.i: ; preds = %bb.t
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtBR_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(120) %1)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB1e_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i unwind label %bb.w

bb.w:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i.i
  %i.az = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i.i.i

.body.i.i.i.i:                                    ; preds = %bb.w, %bb.u
  %eh.lpad-body.i.i.i.i = phi { ptr, i32 } [ %i.az, %bb.w ], [ %i.ax, %bb.u ] ; 2 uses
  %i.ba = load ptr, ptr %i.l, align 8, !alias.scope !864, !noundef !8
  %i.bb = icmp eq ptr %i.ba, null
  br i1 %i.bb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.body.i.i.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i unwind label %bb.ac

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB1e_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtNtB4_6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i.i.i.i.i.i, %bb.s
  %i.bc = load ptr, ptr %i.l, align 8, !alias.scope !873, !noundef !8
  %i.bd = icmp eq ptr %i.bc, null
  br i1 %i.bd, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit4.i.i.i.i, label %bb.y

bb.y:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB1e_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.l)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit4.i.i.i.i unwind label %bb.aa

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i: ; preds = %bb.aa, %bb.x, %.body.i.i.i.i
  %.pn.i.i.i.i = phi { ptr, i32 } [ %i.bg, %bb.aa ], [ %eh.lpad-body.i.i.i.i, %bb.x ], [ %eh.lpad-body.i.i.i.i, %.body.i.i.i.i ] ; 2 uses
  %i.be = load ptr, ptr %i.o, align 8, !alias.scope !876, !noundef !8
  %i.bf = icmp eq ptr %i.be, null
  br i1 %i.bf, label %.body, label %bb.z

bb.z:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %.body unwind label %bb.ac

bb.aa:                                            ; preds = %bb.y
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit4.i.i.i.i: ; preds = %bb.y, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtNtB4_4iter8adapters4fuse4FuseINtNtB4_6option8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecINtB1e_6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i
  %i.bh = load ptr, ptr %i.o, align 8, !alias.scope !879, !noundef !8
  %i.bi = icmp eq ptr %i.bh, null
  br i1 %i.bi, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3zip3ZipINtNtB12_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB3D_19GenericSubstitution5typess2_0EINtNtB12_7flatten7FlattenINtBE_8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEEEEB3D_.exit, label %bb.ab

bb.ab:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit4.i.i.i.i
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterINtNtCshzWfHUSfYae_4core6option6OptionNtNtCs33K2ylI4knu_10hir_expand4name4NameEENtNtNtB11_3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.o)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3zip3ZipINtNtB12_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB3D_19GenericSubstitution5typess2_0EINtNtB12_7flatten7FlattenINtBE_8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEEEEB3D_.exit unwind label %bb.ad

bb.ac:                                            ; preds = %bb.z, %bb.x
  %i.bj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.ad:                                            ; preds = %bb.ab
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i, %bb.z, %bb.ad
  %eh.lpad-body = phi { ptr, i32 } [ %i.bk, %bb.ad ], [ %.pn.i.i.i.i, %bb.z ], [ %.pn.i.i.i.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit.i.i.i.i ]
  store i64 -3, ptr %1, align 8
  br label %common.resume

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters3zip3ZipINtNtB12_10filter_map9FilterMapINtNtNtB4_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgENCNvMs13_Cs8Xq8PKFYOms_3hirNtB3D_19GenericSubstitution5typess2_0EINtNtB12_7flatten7FlattenINtBE_8IntoIterINtNtCsbSS6DM8SDEO_5alloc3vec3VecIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEEEEEB3D_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtB4_6option6OptionINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterIBC_NtNtCs33K2ylI4knu_10hir_expand4name4NameEEEECs8Xq8PKFYOms_3hir.exit4.i.i.i.i, %.loopexit45, %bb.ab
  store i64 -3, ptr %1, align 8
  br label %bb.q

bb.ae:                                            ; preds = %bb.q, %bb.am, %.loopexit, %bb.r
  %.sink = phi i32 [ %i.as, %bb.r ], [ %i.ca, %bb.am ], [ -1, %.loopexit ], [ -1, %bb.q ]
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i32 %.sink, ptr %i.bl, align 8
  ret void

bb.af:                                            ; preds = %bb.q
  %i.bm = load ptr, ptr %i.g, align 8, !nonnull !8, !align !222, !noundef !8
  call void @llvm.experimental.noalias.scope.decl(metadata !882)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.bm, ptr %i.c, align 8, !noalias !885
  %i.bn = getelementptr inbounds nuw i8, ptr %1, i64 136 ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %1, i64 128
end_hunk_0
begin_hunk_1_@_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr15gen_source_code:bb.a
.body659:                                         ; preds = %bb.ie
  %.val426 = load ptr, ptr %i.bl, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir(ptr nonnull %.val426) #28
          to label %.body671 unwind label %bb.be

bb.ii:                                            ; preds = %bb.if
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bn, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !1743
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !1738
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !1738
  %.val = load ptr, ptr %i.bl, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.wx = ptrtoint ptr %.val to i64
  %i.wy = and i64 %i.wx, 1
  %.not.i.i.i.i662 = icmp eq i64 %i.wy, 0
  br i1 %.not.i.i.i.i662, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit666, label %bb.ij

bb.ij:                                            ; preds = %bb.ii
  %i.wz = getelementptr i8, ptr %.val, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.wz) ]
  %i.xa = invoke noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.wz)
          to label %.noexc663 unwind label %bb.il

.noexc663:                                        ; preds = %bb.ij
  %i.xb = sub nsw i64 0, %i.xa
  %i.xc = getelementptr inbounds i8, ptr %i.wz, i64 %i.xb ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.xc, ptr %i.c, align 8
  %i.xd = load atomic i64, ptr %i.xc acquire, align 8
  %i.xe = icmp eq i64 %i.xd, 2
  br i1 %i.xe, label %bb.ik, label %.noexc664, !prof !38

bb.ik:                                            ; preds = %.noexc663
  invoke void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.c)
          to label %.noexc664 unwind label %bb.il

.noexc664:                                        ; preds = %bb.ik, %.noexc663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.xc, ptr %i.b, align 8
  invoke void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %.noexc665 unwind label %bb.il

.noexc665:                                        ; preds = %.noexc664
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit666

bb.il:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit666, %.noexc664, %bb.ik, %bb.ij
  %i.xf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn) #28
          to label %.body671 unwind label %bb.be

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit666: ; preds = %.noexc665, %bb.ii
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bm)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bj)
  store ptr %i.bp, ptr %i.bj, align 8
  %.sroa.4373.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4373.0..sroa_idx, align 8
  %i.xg = getelementptr inbounds nuw i8, ptr %i.bj, i64 16
  store ptr %i.bn, ptr %i.xg, align 8
  %.sroa.4377.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4377.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bk, ptr noundef nonnull @46, ptr noundef nonnull %i.bj)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit668 unwind label %bb.il

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit668: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bk, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8Xq8PKFYOms_3hir.exit.i670 unwind label %bb.im

bb.im:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit668
  %i.xh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %.body671 unwind label %bb.in

bb.in:                                            ; preds = %bb.im
  %i.xi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8Xq8PKFYOms_3hir.exit.i670: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit668
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bn)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit674 unwind label %bb.ic

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit674: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc3vec3VechEECs8Xq8PKFYOms_3hir.exit.i670
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bn)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit677 unwind label %bb.io

bb.io:                                            ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit674
  %i.xj = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
          to label %common.resume unwind label %bb.ip

bb.ip:                                            ; preds = %bb.io
  %i.xk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit677: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit674
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bp)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bp)
  br label %bb.iv

_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit507.thread: ; preds = %tailrecurse.i501, %bb.al, %.split807, %_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bh)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bg)
  %.sroa.0394.0.copyload = load i32, ptr %i.fd, align 4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.av)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.av, ptr noundef nonnull align 4 dereferenceable(12) %6, i64 12, i1 false)
  call void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr15gen_source_code(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bg, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jw, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(88) %2, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %4, i32 noundef %.sroa.0394.0.copyload, ptr noalias nofree noundef nonnull readonly align 4 captures(address) dereferenceable(12) %i.av)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.av)
  %i.xl = load i64, ptr %i.bg, align 8, !range !34, !noundef !8 ; 2 uses
  %i.xm = icmp eq i64 %i.xl, -1
  %i.xn = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.xo = load i8, ptr %i.xn, align 8             ; 2 uses
  br i1 %i.xm, label %bb.iq, label %bb.ir

_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit507.thread805: ; preds = %tailrecurse.i501, %.split807, %_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit507
  call void @llvm.lifetime.start.p0(ptr nonnull %i.bi)
  call void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.bi, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.jw, ptr noundef nonnull %i.ff, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %i.fh)
  %i.xp = getelementptr inbounds nuw i8, ptr %4, i64 32
  %i.xq = load ptr, ptr %i.xp, align 8, !invariant.load !8, !nonnull !8
  call void %i.xq(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noundef nonnull %3, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bi) #31
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bi)
  br label %bb.iv

bb.iq:                                            ; preds = %_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit507.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  %i.xr = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 %i.xo, ptr %i.xr, align 8
  store i64 -1, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.iv

bb.ir:                                            ; preds = %_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit507.thread
  %.sroa.5382.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bg, i64 9
  %.sroa.5165.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 9
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5165.0..sroa_idx, ptr noundef nonnull align 1 dereferenceable(15) %.sroa.5382.0..sroa_idx, i64 15, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bg)
  store i64 %i.xl, ptr %i.bh, align 8
  %.sroa.4164.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  store i8 %i.xo, ptr %.sroa.4164.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.be)
  store ptr %i.bh, ptr %i.be, align 8
  %.sroa.4386.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.be, i64 8
  store ptr @_RNvXsq_NtCsbSS6DM8SDEO_5alloc6stringNtB5_6StringNtNtCshzWfHUSfYae_4core3fmt7Display3fmt, ptr %.sroa.4386.0..sroa_idx, align 8
  invoke void @_RNvNvNtCsbSS6DM8SDEO_5alloc3fmt6format12format_inner(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.bf, ptr noundef nonnull @39, ptr noundef nonnull %i.be)
          to label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit679 unwind label %bb.is

bb.is:                                            ; preds = %bb.ir
  %i.xs = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh) #28
          to label %common.resume unwind label %bb.be

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit679: ; preds = %bb.ir
  call void @llvm.lifetime.end.p0(ptr nonnull %i.be)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.bf, i64 24, i1 false)
  invoke void @_RNvXsp_NtCsbSS6DM8SDEO_5alloc3vecINtB5_3VechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit682 unwind label %bb.it

bb.it:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit679
  %i.xt = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
          to label %common.resume unwind label %bb.iu

bb.iu:                                            ; preds = %bb.it
  %i.xu = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit682: ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionReE11map_or_elseNtNtCsbSS6DM8SDEO_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs8Xq8PKFYOms_3hir.exit679
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVechENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.bh)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bh)
  br label %bb.iv

bb.iv:                                            ; preds = %bb.ap, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit513, %bb.aq, %bb.cu, %_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit.thread794, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit561, %bb.ga, %bb.hi, %bb.ht, %_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit507.thread805, %bb.iq, %bb.ia, %_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr28contains_many_in_illegal_pos.exit500.thread801, %bb.d, %bb.an, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit515, %bb.bp, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit521, %bb.ey, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit603, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit646, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit655, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit677, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsbSS6DM8SDEO_5alloc6string6StringECs8Xq8PKFYOms_3hir.exit682
  call void @llvm.lifetime.end.p0(ptr nonnull %i.fc)
  ret void
}

; Function Attrs: nonlazybind uwtable
define void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr2ty(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(72) %1, ptr noundef nonnull %2, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [12 x i8], align 4                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [12 x i8], align 4                ; 6 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.4 = alloca i64, align 8                  ; 5 uses
  %.sroa.7 = alloca i64, align 8                  ; 4 uses
  %i.i = alloca [48 x i8], align 8                ; 9 uses
  %i.j = alloca [12 x i8], align 4                ; 4 uses
  %i.k = alloca [24 x i8], align 8                ; 4 uses
  %i.l = alloca [12 x i8], align 4                ; 4 uses
  %i.m = alloca [24 x i8], align 8                ; 4 uses
  %i.n = alloca [16 x i8], align 4                ; 4 uses
  %i.o = alloca [32 x i8], align 4                ; 4 uses
  br label %tailrecurse

tailrecurse:                                      ; preds = %bb.t, %bb.a
  %.tr18 = phi ptr [ %1, %bb.a ], [ %i.cg, %bb.t ] ; 27 uses
  %i.p = load i64, ptr %.tr18, align 8, !range !1542, !noundef !8 ; 3 uses
  %i.q = icmp ne i64 %i.p, -9223372036854775802
  tail call void @llvm.assume(i1 %i.q)
  %i.r = xor i64 %i.p, -9223372036854775808
  %i.s = icmp slt i64 %i.p, 0
  %i.t = select i1 %i.s, i64 %i.r, i64 6
  switch i64 %i.t, label %bb.b [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
    i64 3, label %bb.f
    i64 4, label %bb.g
    i64 5, label %bb.h
    i64 6, label %bb.i
    i64 7, label %bb.m
    i64 8, label %bb.n
    i64 9, label %bb.o
    i64 10, label %bb.p
    i64 11, label %bb.t
    i64 12, label %bb.u
  ]

bb.b:                                             ; preds = %tailrecurse
  unreachable

bb.c:                                             ; preds = %tailrecurse
  %i.u = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  %i.v = load i32, ptr %i.u, align 8, !range !108, !noundef !8
  %i.w = getelementptr inbounds nuw i8, ptr %.tr18, i64 12
  %i.x = load i32, ptr %i.w, align 4, !noundef !8
  tail call void @_RNvMsy_Cs8Xq8PKFYOms_3hirNtB5_5Const2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %i.v, i32 noundef %i.x, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  br label %bb.v

bb.d:                                             ; preds = %tailrecurse
  %i.y = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  %i.z = load i32, ptr %i.y, align 8, !range !108, !noundef !8
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr18, i64 12
  %i.ab = load i32, ptr %i.aa, align 4, !noundef !8
  tail call void @_RNvMsB_Cs8Xq8PKFYOms_3hirNtB5_6Static2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, i32 noundef %i.z, i32 noundef %i.ab, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  br label %bb.v

bb.e:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.o)
  %i.ac = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(32) %i.o, ptr noundef nonnull align 8 dereferenceable(32) %i.ac, i64 32, i1 false)
  call void @_RNvMs15_Cs8Xq8PKFYOms_3hirNtB6_5Local2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(32) %i.o, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.o)
  br label %bb.v

bb.f:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.n, ptr noundef nonnull align 8 dereferenceable(16) %i.ad, i64 16, i1 false)
  call void @_RNvMs1h_Cs8Xq8PKFYOms_3hirNtB6_10ConstParam2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(16) %i.n, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  br label %bb.v

bb.g:                                             ; preds = %tailrecurse
  %i.ae = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1747)
  %i.af = getelementptr inbounds nuw i8, ptr %.tr18, i64 16
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.ag, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.af, i64 12, i1 false), !alias.scope !1749
  %i.ah = load ptr, ptr %i.ae, align 8, !alias.scope !1747, !noalias !1744, !nonnull !8, !noundef !8
  store ptr %i.ah, ptr %0, align 8, !alias.scope !1744, !noalias !1747
  br label %bb.v

bb.h:                                             ; preds = %tailrecurse
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.m)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.l)
  %i.aj = getelementptr inbounds nuw i8, ptr %.tr18, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.l, ptr noundef nonnull align 8 dereferenceable(12) %i.aj, i64 12, i1 false)
  call void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8ret_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.l, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  call void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateRINtNtCsbSS6DM8SDEO_5alloc3vec3VecBp_EEB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.m, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ai)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m)
  br label %bb.v

bb.i:                                             ; preds = %tailrecurse
  call void @llvm.lifetime.start.p0(ptr nonnull %i.k)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr18, i64 56
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.j, ptr noundef nonnull align 8 dereferenceable(12) %i.ak, i64 12, i1 false)
  call void @_RNvMsr_Cs8Xq8PKFYOms_3hirNtB5_8Function8ret_type(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.j, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  %i.al = getelementptr inbounds nuw i8, ptr %.tr18, i64 48
  %i.am = load ptr, ptr %i.al, align 8, !nonnull !8, !noundef !8
  call void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.h, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.am, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !1750)
  br label %bb.j

bb.j:                                             ; preds = %bb.j, %bb.i
  %.sroa.017.0.in.i = phi ptr [ %i.h, %bb.i ], [ %.sroa.515.0..sroa_idx.i, %bb.j ]
  %.sroa.017.0.i = load ptr, ptr %.sroa.017.0.in.i, align 8, !noalias !1750, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.013.0.copyload.i = load i32, ptr %.sroa.017.0.i, align 8, !noalias !1753 ; 4 uses
  %i.an = icmp ne i32 %.sroa.013.0.copyload.i, 27
  call void @llvm.assume(i1 %i.an)
  %i.ao = icmp eq i32 %.sroa.013.0.copyload.i, 14
  %.sroa.515.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 16
  br i1 %i.ao, label %bb.j, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.41.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i, i64 8
  %.sroa.41.0.copyload.i = load ptr, ptr %.sroa.41.0..sroa_idx.i, align 8, !noalias !1753 ; 3 uses
  %i.ap = add i32 %.sroa.013.0.copyload.i, -2
  %i.aq = icmp ugt i32 %.sroa.013.0.copyload.i, 1
  %narrow.i = select i1 %i.aq, i32 %i.ap, i32 25
  switch i32 %narrow.i, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit [
    i32 5, label %.sink.split.i
    i32 22, label %bb.l
  ]

bb.l:                                             ; preds = %bb.k
  br label %.sink.split.i

.sink.split.i:                                    ; preds = %bb.l, %bb.k
  %.sink.ph.i = phi i64 [ 1, %bb.l ], [ 0, %bb.k ]
  %i.ar = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !noalias !1753, !noundef !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i) ]
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i, i64 16 ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.as
  %4 = ptrtoint ptr %i.at to i64
  store i64 %4, ptr %.sroa.4, align 8, !alias.scope !1750, !noalias !1755
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit: ; preds = %bb.k, %.sink.split.i
  %.sroa.6.0 = phi ptr [ undef, %bb.k ], [ %i.au, %.sink.split.i ]
  %.sink20.i.sroa.phi = phi ptr [ %.sroa.4, %bb.k ], [ %.sroa.7, %.sink.split.i ]
  %.sink19.i = phi ptr [ null, %bb.k ], [ %i.h, %.sink.split.i ]
  %.sink.i = phi i64 [ 1, %bb.k ], [ %.sink.ph.i, %.sink.split.i ]
  store ptr %.sink19.i, ptr %.sink20.i.sroa.phi, align 8, !alias.scope !1750, !noalias !1755
  %i.av = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  %i.aw = load ptr, ptr %i.av, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr18, i64 16
  %i.ay = load i64, ptr %i.ax, align 8, !noundef !8
  %i.az = getelementptr inbounds nuw [24 x i8], ptr %i.aw, i64 %i.ay
  call void @llvm.experimental.noalias.scope.decl(metadata !1756)
  store i64 %.sink.i, ptr %i.i, align 8, !alias.scope !1759
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload = load i64, ptr %.sroa.4, align 8, !alias.scope !1759
  store i64 %.sroa.4.0..sroa.4.0..sroa.4.0..sroa.4.0.copyload, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !1759
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store ptr %.sroa.6.0, ptr %.sroa.6.0..sroa_idx, align 8, !alias.scope !1759
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload = load i64, ptr %.sroa.7, align 8, !alias.scope !1759
  store i64 %.sroa.7.0..sroa.7.0..sroa.7.0..sroa.7.0.copyload, ptr %.sroa.7.0..sroa_idx, align 8, !alias.scope !1759
  %i.ba = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  store ptr %i.aw, ptr %i.ba, align 8, !alias.scope !1761, !noalias !1756
  %i.bb = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  store ptr %i.az, ptr %i.bb, align 8, !alias.scope !1761, !noalias !1756
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7)
  call void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtCs83ee1IJTiSq_6either6EitherINtNtBR_3map3MapINtNtBR_10filter_map9FilterMapINtNtBR_6copied6CopiedINtNtNtBV_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B3H_NtB3H_11GenericArgs5types0ENCNvB2_14type_arguments0EIB1F_IB2a_IB2U_IB3g_NtNtB3J_2ty2TyEENCB5p_s_0EINtNtNtBT_7sources5empty5EmptyBp_EEEINtNtBR_6cloned6ClonedIB3g_Bp_EEEEB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(48) %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  br label %bb.v

bb.m:                                             ; preds = %tailrecurse
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  %i.bd = getelementptr inbounds nuw i8, ptr %.tr18, i64 56
  %i.be = load i32, ptr %i.bd, align 8, !range !108, !noundef !8
  %i.bf = getelementptr inbounds nuw i8, ptr %.tr18, i64 60
  %i.bg = load i32, ptr %i.bf, align 4, !noundef !8
  %i.bh = tail call { i32, i32 } @_RNvMsg_Cs8Xq8PKFYOms_3hirNtB5_11EnumVariant11parent_enum(i32 noundef %i.be, i32 noundef %i.bg, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3) ; 2 uses
  %i.bi = extractvalue { i32, i32 } %i.bh, 0
  %i.bj = extractvalue { i32, i32 } %i.bh, 1
  %i.bk = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  store i32 %i.bi, ptr %i.bk, align 4, !alias.scope !1762
  %i.bl = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store i32 %i.bj, ptr %i.bl, align 4, !alias.scope !1762
  store i32 2, ptr %i.f, align 4, !alias.scope !1762
  call void @_RNvMsi_Cs8Xq8PKFYOms_3hirNtB5_3Adt2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.f, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  call void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateRINtNtCsbSS6DM8SDEO_5alloc3vec3VecBp_EEB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bc)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.v

bb.n:                                             ; preds = %tailrecurse
  %i.bm = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.bn = getelementptr inbounds nuw i8, ptr %.tr18, i64 56
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 4
  %i.bp = load <2 x i32>, ptr %i.bn, align 8
  store <2 x i32> %i.bp, ptr %i.bo, align 4, !alias.scope !1765
  store i32 0, ptr %i.d, align 4, !alias.scope !1765
  call void @_RNvMsi_Cs8Xq8PKFYOms_3hirNtB5_3Adt2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.d, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateRINtNtCsbSS6DM8SDEO_5alloc3vec3VecBp_EEB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.bm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.v

bb.o:                                             ; preds = %tailrecurse
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr18, i64 32
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1768)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1771)
  %i.br = getelementptr inbounds nuw i8, ptr %.tr18, i64 40
  %i.bs = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.bs, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.br, i64 12, i1 false), !alias.scope !1773
  %i.bt = load ptr, ptr %i.bq, align 8, !alias.scope !1771, !noalias !1768, !nonnull !8, !noundef !8
  store ptr %i.bt, ptr %0, align 8, !alias.scope !1768, !noalias !1771
  br label %bb.v

bb.p:                                             ; preds = %tailrecurse
  %i.bu = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs8_Cs8Xq8PKFYOms_3hirNtB5_5Field2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 4 captures(address, read_provenance) dereferenceable(16) %i.bu, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.bv = getelementptr inbounds nuw i8, ptr %.tr18, i64 24
  %i.bw = load ptr, ptr %i.bv, align 8, !nonnull !8, !noundef !8
  call void @_RNvMNtNtCs8Xq8PKFYOms_3hir11term_search4exprNtB2_4Expr2ty(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bw, ptr noundef nonnull %2, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %3)
  call void @llvm.experimental.noalias.scope.decl(metadata !1774)
  br label %bb.q

bb.q:                                             ; preds = %bb.q, %bb.p
  %.sroa.017.0.in.i1 = phi ptr [ %i.a, %bb.p ], [ %.sroa.515.0..sroa_idx.i4, %bb.q ]
  %.sroa.017.0.i2 = load ptr, ptr %.sroa.017.0.in.i1, align 8, !noalias !1774, !nonnull !8, !noundef !8 ; 3 uses
  %.sroa.013.0.copyload.i3 = load i32, ptr %.sroa.017.0.i2, align 8, !noalias !1777 ; 4 uses
  %i.bx = icmp ne i32 %.sroa.013.0.copyload.i3, 27
  call void @llvm.assume(i1 %i.bx)
  %i.by = icmp eq i32 %.sroa.013.0.copyload.i3, 14
  %.sroa.515.0..sroa_idx.i4 = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i2, i64 16
  br i1 %i.by, label %bb.q, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sink20.i11.sroa.gep.le = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  %.sink20.i11.sroa.gep17.le = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.41.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %.sroa.017.0.i2, i64 8
  %.sroa.41.0.copyload.i6 = load ptr, ptr %.sroa.41.0..sroa_idx.i5, align 8, !noalias !1777 ; 3 uses
  %i.bz = add i32 %.sroa.013.0.copyload.i3, -2
  %i.ca = icmp ugt i32 %.sroa.013.0.copyload.i3, 1
  %narrow.i7 = select i1 %i.ca, i32 %i.bz, i32 25
  switch i32 %narrow.i7, label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit15 [
    i32 5, label %.sink.split.i8
    i32 22, label %bb.s
  ]

bb.s:                                             ; preds = %bb.r
  br label %.sink.split.i8

.sink.split.i8:                                   ; preds = %bb.s, %bb.r
  %.sink.ph.i9 = phi i64 [ 1, %bb.s ], [ 0, %bb.r ]
  %i.cb = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i6, i64 8
  %i.cc = load i64, ptr %i.cb, align 8, !noalias !1777, !noundef !8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload.i6) ]
  %i.cd = getelementptr inbounds nuw i8, ptr %.sroa.41.0.copyload.i6, i64 16 ; 2 uses
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cc
  store ptr %i.cd, ptr %.sink20.i11.sroa.gep.le, align 8, !alias.scope !1774, !noalias !1779
  %.sroa.49.0..sroa_idx.i10 = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.ce, ptr %.sroa.49.0..sroa_idx.i10, align 8, !alias.scope !1774, !noalias !1779
  br label %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit15

_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit15: ; preds = %bb.r, %.sink.split.i8
  %.sink20.i11.sroa.phi = phi ptr [ %.sink20.i11.sroa.gep.le, %bb.r ], [ %.sink20.i11.sroa.gep17.le, %.sink.split.i8 ]
  %.sink19.i12 = phi ptr [ null, %bb.r ], [ %i.a, %.sink.split.i8 ]
  %.sink.i13 = phi i64 [ 1, %bb.r ], [ %.sink.ph.i9, %.sink.split.i8 ]
  store ptr %.sink19.i12, ptr %.sink20.i11.sroa.phi, align 8, !alias.scope !1774, !noalias !1779
  store i64 %.sink.i13, ptr %i.b, align 8, !alias.scope !1774, !noalias !1779
  call void @_RINvMs1x_Cs8Xq8PKFYOms_3hirNtB7_4Type11instantiateINtCs83ee1IJTiSq_6either6EitherINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtB1m_10filter_map9FilterMapINtNtB1m_6copied6CopiedINtNtNtB1q_5slice4iter4IterNtNtNtCs8K4cjrcxBsw_6hir_ty11next_solver11generic_arg10GenericArgEENCNvMss_B3q_NtB3q_11GenericArgs5types0ENCNvB2_14type_arguments0EIBN_IB1i_IB2B_IB2Y_NtNtB3s_2ty2TyEENCB58_s_0EINtNtNtB1o_7sources5empty5EmptyBp_EEEEB7_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.v

bb.t:                                             ; preds = %tailrecurse
  %i.cf = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  %i.cg = load ptr, ptr %i.cf, align 8, !nonnull !8, !noundef !8
  br label %tailrecurse

bb.u:                                             ; preds = %tailrecurse
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr18, i64 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1780)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1783)
  %i.ci = getelementptr inbounds nuw i8, ptr %.tr18, i64 16
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 8
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(12) %i.cj, ptr noundef nonnull readonly align 8 dereferenceable(12) %i.ci, i64 12, i1 false), !alias.scope !1785
  %i.ck = load ptr, ptr %i.ch, align 8, !alias.scope !1783, !noalias !1780, !nonnull !8, !noundef !8
  store ptr %i.ck, ptr %0, align 8, !alias.scope !1780, !noalias !1783
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit15, %bb.o, %bb.n, %bb.m, %_RNvMs1x_Cs8Xq8PKFYOms_3hirNtB6_4Type14type_arguments.exit, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE24with_capacity_and_hasherCs8Xq8PKFYOms_3hir(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = tail call noundef i64 @_RNvCs2WklPA5QxgX_7dashmap20default_shard_amount() ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !1786)
  %i.d = icmp ugt i64 %i.c, 1
  br i1 %i.d, label %bb.c, label %bb.b, !prof !24

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @47, i64 noundef 34, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @49) #26, !noalias !1786
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.e = tail call range(i64 1, 65) i64 @llvm.ctpop.i64(i64 %i.c)
  %i.f = icmp eq i64 %i.e, 1
  br i1 %i.f, label %_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs8Xq8PKFYOms_3hir.exit, label %bb.d, !prof !24

bb.d:                                             ; preds = %bb.c
  tail call void @_RNvNtCshzWfHUSfYae_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @50, i64 noundef 48, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @51) #26, !noalias !1786
  unreachable

_RNvMs1_Cs2WklPA5QxgX_7dashmapINtB5_7DashMapINtNtCs50pZefIA5Ye_8triomphe3arc3ArcNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathEuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherE41with_capacity_and_hasher_and_shard_amountCs8Xq8PKFYOms_3hir.exit: ; preds = %bb.c
  %i.g = icmp eq i64 %1, 0
  %i.h = add i64 %1, -1
  %i.i = add i64 %i.h, %i.c
  %i.j = sub i64 0, %i.c
  %i.k = and i64 %i.i, %i.j
  %.sroa.0.0.i = select i1 %i.g, i64 0, i64 %i.k
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !1786
  %i.l = tail call range(i64 0, 65) i64 @llvm.cttz.i64(i64 %i.c, i1 true) ; 2 uses
  %i.m = sub nuw nsw i64 64, %i.l
  %i.n = lshr i64 %.sroa.0.0.i, %i.l
  store i64 %i.n, ptr %i.b, align 8, !noalias !1786
end_hunk_1
begin_hunk_2_@_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs8Xq8PKFYOms_3hir:bb.a
  %.pre.i = load i64, ptr %.phi.trans.insert.i, align 8, !alias.scope !1905
  %.phi.trans.insert2.i = getelementptr inbounds nuw i8, ptr %0, i64 112
  %.pre3.i = load i64, ptr %.phi.trans.insert2.i, align 8, !alias.scope !1905
  br label %bb.ak

bb.aj:                                            ; preds = %bb.ai
  %i.go = getelementptr inbounds nuw i8, ptr %0, i64 112
  %i.gp = load i64, ptr %i.go, align 8, !alias.scope !1905, !noundef !8 ; 2 uses
  %i.gq = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.gr = load i64, ptr %i.gq, align 8, !alias.scope !1905, !noundef !8 ; 2 uses
  %.not.i = icmp eq i64 %i.gp, %i.gr
  br i1 %.not.i, label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs8Xq8PKFYOms_3hir.exit, label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %._crit_edge.i
  %i.gs = phi i64 [ %.pre3.i, %._crit_edge.i ], [ %i.gp, %bb.aj ]
  %i.gt = phi i64 [ %.pre.i, %._crit_edge.i ], [ %i.gr, %bb.aj ] ; 2 uses
  %i.gu = sub nuw i64 %i.gs, %i.gt
  %i.gv = getelementptr inbounds nuw i8, ptr %.val, i64 %i.gt
  br label %_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs8Xq8PKFYOms_3hir.exit

_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE7get_endCs8Xq8PKFYOms_3hir.exit: ; preds = %bb.ak, %bb.aj, %bb.ah, %bb.a
  %.sroa.4.1 = phi i64 [ undef, %bb.a ], [ %i.gj, %bb.ah ], [ %i.gu, %bb.ak ], [ undef, %bb.aj ]
  %.sroa.0.1 = phi ptr [ null, %bb.a ], [ %i.gk, %bb.ah ], [ %i.gv, %bb.ak ], [ null, %bb.aj ]
  %i.gw = insertvalue { ptr, i64 } poison, ptr %.sroa.0.1, 0
  %i.gx = insertvalue { ptr, i64 } %i.gw, i64 %.sroa.4.1, 1
  ret { ptr, i64 } %i.gx
}

; Function Attrs: nonlazybind uwtable
define internal fastcc void @_RNvNtCs8Xq8PKFYOms_3hir5attrs13resolve_field(ptr dead_on_unwind noalias nofree noundef nonnull writable writeonly align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dead_on_return dereferenceable(12) %3, ptr noundef nonnull %4, i8 noundef range(i8 -1, 3) %5) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [8 x i8], align 8                 ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 4                ; 5 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %i.h = alloca [32 x i8], align 8                ; 9 uses
  %i.i = alloca [8 x i8], align 8                 ; 4 uses
  store ptr %4, ptr %i.i, align 8
  switch i8 %5, label %default.unreachable [
    i8 -1, label %bb.b
    i8 0, label %bb.c
    i8 2, label %bb.c
    i8 1, label %bb.b
  ]

bb.b:                                             ; preds = %bb.a, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  invoke void @_RNvMsk_Cs8Xq8PKFYOms_3hirNtB5_7Variant6fields(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.g, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %3, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2)
          to label %bb.h unwind label %bb.g

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a
  store i32 -1, ptr %0, align 4
  %i.j = ptrtoint ptr %4 to i64
  %i.k = and i64 %i.j, 1
  %.not.i.i.i.i = icmp eq i64 %i.k, 0
  br i1 %.not.i.i.i.i, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr i8, ptr %4, i64 -1         ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.l) ]
  %i.m = tail call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.l)
  %i.n = sub nsw i64 0, %i.m
  %i.o = getelementptr inbounds i8, ptr %i.l, i64 %i.n ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.o, ptr %i.d, align 8
  %i.p = load atomic i64, ptr %i.o acquire, align 8
  %i.q = icmp eq i64 %i.p, 2
  br i1 %i.q, label %bb.e, label %bb.f, !prof !38

bb.e:                                             ; preds = %bb.d
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.d)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.o, ptr %i.c, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit: ; preds = %bb.o, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit10, %bb.f, %bb.c
  ret void

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit: ; preds = %bb.i, %bb.g
  %.pn = phi { ptr, i32 } [ %i.r, %bb.g ], [ %i.ac, %bb.i ]
  %.val8 = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8
  invoke fastcc void @_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir(ptr nonnull %.val8) #28
          to label %bb.q unwind label %bb.p

bb.g:                                             ; preds = %bb.l, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit

bb.h:                                             ; preds = %bb.b
  %i.s = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !nonnull !8, !noundef !8 ; 3 uses
  %i.u = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.v = load i64, ptr %i.u, align 8, !noundef !8 ; 2 uses
  %i.w = icmp ult i64 %i.v, 576460752303423488
  call void @llvm.assume(i1 %i.w)
  %i.x = getelementptr inbounds nuw [16 x i8], ptr %i.t, i64 %i.v
  %i.y = load i64, ptr %i.g, align 8, !range !1547, !noundef !8
  store ptr %i.t, ptr %i.h, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  store i64 %i.y, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  store ptr %i.t, ptr %i.aa, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.h, i64 24
  store ptr %i.x, ptr %i.ab, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %1, ptr %i.e, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %2, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.i, ptr %.sroa.6.0..sroa_idx, align 8
  invoke void @_RINvXs4_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB6_8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB1o_4find5checkBX_NCNvNtBZ_5attrs13resolve_field0E0INtNtNtB1w_3ops12control_flow11ControlFlowBX_EEBZ_(ptr noalias nofree noundef nonnull sret([16 x i8]) align 4 captures(address) dereferenceable(16) %i.f, ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(24) %i.e)
          to label %bb.j unwind label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit unwind label %bb.p

bb.j:                                             ; preds = %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  %i.ad = load i32, ptr %i.f, align 4, !range !717, !noundef !8
  %.not6 = icmp eq i32 %i.ad, -1
  br i1 %.not6, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 4 dereferenceable(16) %i.f, i64 16, i1 false)
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k
  %.sink = phi i32 [ 1, %bb.k ], [ -1, %bb.j ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i32 %.sink, ptr %0, align 4
  invoke void @_RNvXse_NtNtCsbSS6DM8SDEO_5alloc3vec9into_iterINtB5_8IntoIterNtCs8Xq8PKFYOms_3hir5FieldENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropBY_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %i.h)
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit10 unwind label %bb.g

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit10: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h)
  %.val = load ptr, ptr %i.i, align 8, !nonnull !8, !noundef !8 ; 2 uses
  %i.ae = ptrtoint ptr %.val to i64
  %i.af = and i64 %i.ae, 1
  %.not.i.i.i.i11 = icmp eq i64 %i.af, 0
  br i1 %.not.i.i.i.i11, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit, label %bb.m

bb.m:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit10
  %i.ag = getelementptr i8, ptr %.val, i64 -1     ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ag) ]
  %i.ah = call noundef i64 @_RNvMs0_NtCs50pZefIA5Ye_8triomphe3arcINtB5_8ArcInnerINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE14offset_of_dataCs8Xq8PKFYOms_3hir(ptr noundef nonnull %i.ag)
  %i.ai = sub nsw i64 0, %i.ah
  %i.aj = getelementptr inbounds i8, ptr %i.ag, i64 %i.ai ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %i.aj, ptr %i.b, align 8
  %i.ak = load atomic i64, ptr %i.aj acquire, align 8
  %i.al = icmp eq i64 %i.ak, 2
  br i1 %i.al, label %bb.n, label %bb.o, !prof !38

bb.n:                                             ; preds = %bb.m
  call void @_RNvMs2_NtCs39E2wp1vf7X_6intern6symbolNtB5_6Symbol9drop_slow(ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.b)
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.aj, ptr %i.a, align 8
  call void @_RNvMsd_NtCs50pZefIA5Ye_8triomphe3arcINtB5_3ArcINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxeEE10drop_innerCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand4name4NameECs8Xq8PKFYOms_3hir.exit

bb.p:                                             ; preds = %bb.i, %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit
  %i.am = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

bb.q:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtNtCsbSS6DM8SDEO_5alloc3vec9into_iter8IntoIterNtCs8Xq8PKFYOms_3hir5FieldEEB1r_.exit
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define void @_RNvNtCs8Xq8PKFYOms_3hir5attrs20resolve_doc_path_on_(ptr dead_on_unwind noalias nofree noundef writable sret([20 x i8]) align 4 captures(none) dereferenceable(20) %0, ptr noundef nonnull %1, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(560) %2, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef readonly align 4 captures(none) dead_on_return dereferenceable(20) %5, i8 noundef range(i8 -1, 3) %6, i1 noundef zeroext %7) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %.sroa.0.i.i = alloca i32, align 4              ; 4 uses
  %.sroa.4.i.i = alloca i32, align 4              ; 5 uses
  %.sroa.9.i.i = alloca i32, align 4              ; 4 uses
  %i.c = alloca [104 x i8], align 8               ; 7 uses
  %i.d = alloca [104 x i8], align 8               ; 7 uses
  %i.e = alloca [112 x i8], align 8               ; 11 uses
  %i.f = alloca [64 x i8], align 8                ; 12 uses
  %i.g = alloca [32 x i8], align 8                ; 4 uses
  %i.h = alloca [544 x i8], align 8               ; 8 uses
  %i.i = alloca [32 x i8], align 8                ; 5 uses
  %i.j = alloca [32 x i8], align 8                ; 8 uses
  %i.k = alloca [16 x i8], align 8                ; 7 uses
  %i.l = alloca [32 x i8], align 8                ; 7 uses
  %i.m = alloca [12 x i8], align 4                ; 6 uses
  %i.n = alloca [32 x i8], align 8                ; 7 uses
  %i.o = alloca [12 x i8], align 4                ; 6 uses
  %i.p = alloca [48 x i8], align 8                ; 12 uses
  %i.q = alloca [12 x i8], align 4                ; 4 uses
  %i.r = alloca [12 x i8], align 4                ; 6 uses
  %i.s = alloca [12 x i8], align 4                ; 6 uses
  %i.t = alloca [16 x i8], align 8                ; 5 uses
  %i.u = alloca [16 x i8], align 8                ; 5 uses
  %i.v = alloca [16 x i8], align 8                ; 5 uses
  %i.w = alloca [12 x i8], align 4                ; 4 uses
  %i.x = alloca [12 x i8], align 4                ; 4 uses
  %i.y = alloca [12 x i8], align 4                ; 4 uses
  %i.z = alloca [16 x i8], align 4                ; 7 uses
  %i.aa = alloca [12 x i8], align 4               ; 6 uses
  %i.ab = alloca [24 x i8], align 8               ; 13 uses
  %i.ac = alloca [24 x i8], align 8               ; 11 uses
  %i.ad = alloca [16 x i8], align 4               ; 8 uses
  %i.ae = alloca [24 x i8], align 8               ; 10 uses
  %i.af = alloca [8 x i8], align 8                ; 12 uses
  %.sroa.0.i = alloca i32, align 4                ; 7 uses
  %i.ag = alloca [152 x i8], align 8              ; 7 uses
  %i.ah = alloca [12 x i8], align 4               ; 10 uses
  %i.ai = alloca [128 x i8], align 8              ; 12 uses
  %i.aj = alloca [108 x i8], align 4              ; 38 uses
  %.sroa.0 = alloca i32, align 4                  ; 6 uses
  %i.ak = alloca [40 x i8], align 8               ; 4 uses
  %i.al = alloca [48 x i8], align 8               ; 9 uses
  %i.am = alloca [128 x i8], align 4              ; 28 uses
  %i.an = alloca [40 x i8], align 8               ; 6 uses
  %i.ao = alloca [40 x i8], align 8               ; 11 uses
  %i.ap = alloca [12 x i8], align 4               ; 4 uses
  %i.aq = alloca [48 x i8], align 8               ; 27 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aq)
  %i.ar = load i32, ptr %5, align 4, !range !1908, !noundef !8
  switch i32 %i.ar, label %default.unreachable460 [
    i32 0, label %bb.c
    i32 1, label %bb.d
    i32 2, label %bb.e
    i32 3, label %bb.e
    i32 4, label %bb.e
  ]

default.unreachable460:                           ; preds = %_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterTNtNtCs33K2ylI4knu_10hir_expand4name4NameNtCsileJQcQObtj_7hir_def11AssocItemIdEENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNCNvNtCs8Xq8PKFYOms_3hir5attrs22resolve_assoc_or_field00EB30_.exit.i.i, %bb.ao, %bb.c, %bb.a
  unreachable

bb.b:                                             ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.as = getelementptr inbounds nuw i8, ptr %5, i64 4
  %i.at = load i32, ptr %i.as, align 4, !range !1909, !noundef !8
  switch i32 %i.at, label %default.unreachable460 [
    i32 0, label %bb.f
    i32 1, label %bb.g
    i32 2, label %bb.h
    i32 3, label %bb.i
    i32 4, label %bb.j
    i32 5, label %bb.k
    i32 6, label %bb.l
    i32 7, label %bb.m
    i32 8, label %bb.n
    i32 9, label %bb.o
    i32 10, label %bb.p
    i32 11, label %bb.q
    i32 12, label %bb.r
  ]

bb.d:                                             ; preds = %bb.a
  %i.au = getelementptr inbounds nuw i8, ptr %5, i64 4
  call void @_RNvXsm_NtCsileJQcQObtj_7hir_def8resolverNtB7_9VariantIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.au, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a
  store i32 -1, ptr %0, align 4
  br label %bb.gh

bb.f:                                             ; preds = %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.aw = load i32, ptr %i.av, align 4, !range !108, !noundef !8 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ay = load i32, ptr %i.ax, align 4, !noundef !8 ; 3 uses
  br i1 %7, label %bb.t, label %bb.s

bb.g:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ap)
  %i.az = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %i.ap, ptr noundef nonnull align 4 dereferenceable(12) %i.az, i64 12, i1 false)
  call void @_RNvXs8_NtCsileJQcQObtj_7hir_def8resolverNtB7_5AdtIdNtB5_11HasResolver8resolverCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull align 4 captures(address) dereferenceable(12) %i.ap, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ap)
  br label %bb.w

bb.h:                                             ; preds = %bb.c
  %i.ba = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bb = load i32, ptr %i.ba, align 4, !range !108, !noundef !8
  %i.bc = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bd = load i32, ptr %i.bc, align 4, !noundef !8
  call void @_RNvXs9_NtCsileJQcQObtj_7hir_def8resolverNtB7_10FunctionIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.bb, i32 noundef %i.bd, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.i:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = load i32, ptr %i.be, align 4, !range !108, !noundef !8
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bh = load i32, ptr %i.bg, align 4, !noundef !8
  call void @_RNvXsl_NtCsileJQcQObtj_7hir_def8resolverNtB7_13EnumVariantIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.bf, i32 noundef %i.bh, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.j:                                             ; preds = %bb.c
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bj = load i32, ptr %i.bi, align 4, !range !108, !noundef !8
  %i.bk = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bl = load i32, ptr %i.bk, align 4, !noundef !8
  call void @_RNvXsb_NtCsileJQcQObtj_7hir_def8resolverNtB7_8StaticIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.bj, i32 noundef %i.bl, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.k:                                             ; preds = %bb.c
  %i.bm = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bn = load i32, ptr %i.bm, align 4, !range !108, !noundef !8
  %i.bo = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bp = load i32, ptr %i.bo, align 4, !noundef !8
  call void @_RNvXsa_NtCsileJQcQObtj_7hir_def8resolverNtB7_7ConstIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.bn, i32 noundef %i.bp, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.l:                                             ; preds = %bb.c
  %i.bq = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.br = load i32, ptr %i.bq, align 4, !range !108, !noundef !8
  %i.bs = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bt = load i32, ptr %i.bs, align 4, !noundef !8
  call void @_RNvXs7_NtCsileJQcQObtj_7hir_def8resolverNtB7_7TraitIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.br, i32 noundef %i.bt, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.m:                                             ; preds = %bb.c
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bv = load i32, ptr %i.bu, align 4, !range !108, !noundef !8
  %i.bw = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.bx = load i32, ptr %i.bw, align 4, !noundef !8
  call void @_RNvXsc_NtCsileJQcQObtj_7hir_def8resolverNtB7_11TypeAliasIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.bv, i32 noundef %i.bx, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.n:                                             ; preds = %bb.c
  %i.by = getelementptr inbounds nuw i8, ptr %5, i64 8
  call void @_RNvXsn_NtCsileJQcQObtj_7hir_def8resolverNtB7_7MacroIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(12) %i.by, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.o:                                             ; preds = %bb.c
  %i.bz = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ca = load i32, ptr %i.bz, align 4, !range !108, !noundef !8
  %i.cb = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cc = load i32, ptr %i.cb, align 4, !noundef !8
  call void @_RNvXsd_NtCsileJQcQObtj_7hir_def8resolverNtB7_6ImplIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.ca, i32 noundef %i.cc, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.p:                                             ; preds = %bb.c
  %i.cd = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ce = load i32, ptr %i.cd, align 4, !range !108, !noundef !8
  %i.cf = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.cg = load i32, ptr %i.cf, align 4, !noundef !8
  call void @_RNvXse_NtCsileJQcQObtj_7hir_def8resolverNtB7_13ExternBlockIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.ce, i32 noundef %i.cg, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.q:                                             ; preds = %bb.c
  %i.ch = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.ci = load i32, ptr %i.ch, align 4, !range !108, !noundef !8
  %i.cj = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.ck = load i32, ptr %i.cj, align 4, !noundef !8
  call void @_RNvXsf_NtCsileJQcQObtj_7hir_def8resolverNtB7_13ExternCrateIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.ci, i32 noundef %i.ck, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.r:                                             ; preds = %bb.c
  %i.cl = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.cm = load i32, ptr %i.cl, align 4, !range !108, !noundef !8
  %i.cn = getelementptr inbounds nuw i8, ptr %5, i64 12
  %i.co = load i32, ptr %i.cn, align 4, !noundef !8
  call void @_RNvXsg_NtCsileJQcQObtj_7hir_def8resolverNtB7_5UseIdNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(address) dereferenceable(48) %i.aq, i32 noundef %i.cm, i32 noundef %i.co, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.s:                                             ; preds = %bb.f
  %i.cp = tail call { i32, i32 } @_RNvMs4_Cs8Xq8PKFYOms_3hirNtB5_6Module6parent(i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(560) %2) ; 2 uses
  %i.cq = extractvalue { i32, i32 } %i.cp, 0      ; 2 uses
  %.not = icmp eq i32 %i.cq, 0
  br i1 %.not, label %bb.v, label %bb.u

bb.t:                                             ; preds = %bb.f
  call void @_RNvXs6_NtCsileJQcQObtj_7hir_def8resolverNtB7_10ModuleIdLtNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aq, i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.u:                                             ; preds = %bb.s
  %i.cr = extractvalue { i32, i32 } %i.cp, 1
  call void @_RNvXs6_NtCsileJQcQObtj_7hir_def8resolverNtB7_10ModuleIdLtNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aq, i32 noundef %i.cq, i32 noundef %i.cr, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.v:                                             ; preds = %bb.s
  call void @_RNvXs6_NtCsileJQcQObtj_7hir_def8resolverNtB7_10ModuleIdLtNtB5_11HasResolver8resolver(ptr noalias nofree noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.aq, i32 noundef %i.aw, i32 noundef %i.ay, ptr noundef nonnull %1, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(240) %2)
  br label %bb.w

bb.w:                                             ; preds = %bb.t, %bb.u, %bb.v, %bb.r, %bb.q, %bb.p, %bb.o, %bb.n, %bb.m, %bb.l, %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ao)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.an)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ah), !noalias !1910
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ai), !noalias !1914
  invoke void @_RNvMsu_NtNtCshzWfHUSfYae_4core3str7patternNtB5_11StrSearcher3new(ptr noalias nofree noundef nonnull sret([104 x i8]) align 8 captures(none) dereferenceable(104) %i.ai, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) %3, i64 noundef %4, ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @20, i64 noundef 2)
          to label %.noexc unwind label %.loopexit.split-lp

.noexc:                                           ; preds = %bb.w
  %.sroa.413.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 104
  store i64 0, ptr %.sroa.413.0..sroa_idx.i.i, align 8, !noalias !1914
  %.sroa.514.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 112
  store i64 %4, ptr %.sroa.514.0..sroa_idx.i.i, align 8, !noalias !1914
  %.sroa.615.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 120
  store i8 1, ptr %.sroa.615.0..sroa_idx.i.i, align 8, !noalias !1914
  %.sroa.716.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.ai, i64 121
  store i8 0, ptr %.sroa.716.0..sroa_idx.i.i, align 1, !noalias !1914
  %i.cs = invoke fastcc { ptr, i64 } @_RNvMsf_NtNtCshzWfHUSfYae_4core3str4iterINtB5_13SplitInternalReE4nextCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef align 8 dereferenceable(128) %i.ai) #31
          to label %.noexc88 unwind label %.loopexit.split-lp ; 2 uses

.noexc88:                                         ; preds = %.noexc
  %i.ct = extractvalue { ptr, i64 } %i.cs, 0      ; 7 uses
  %i.cu = extractvalue { ptr, i64 } %i.cs, 1      ; 2 uses
  %.not.i.i = icmp eq ptr %i.ct, null
  br i1 %.not.i.i, label %.thread, label %bb.x

bb.x:                                             ; preds = %.noexc88
  switch i64 %i.cu, label %bb.ae [
    i64 0, label %bb.y
    i64 5, label %bb.z
end_hunk_2
begin_hunk_3_@_RNvNtCs8Xq8PKFYOms_3hir5attrs20resolve_doc_path_on_:bb.a
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #29
  unreachable

common.resume:                                    ; preds = %bb.gk, %bb.fy, %bb.gb, %bb.gf, %bb.bp, %bb.al
  %common.resume.op = phi { ptr, i32 } [ %i.fb, %bb.bp ], [ %i.eo, %bb.al ], [ %.pn.ph, %bb.gk ], [ %.pn166.i, %bb.fy ], [ %i.kw, %bb.gb ], [ %.pn166.i, %bb.gf ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsileJQcQObtj_7hir_def8resolver8ResolverECs8Xq8PKFYOms_3hir.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCs33K2ylI4knu_10hir_expand8mod_path7ModPathECs8Xq8PKFYOms_3hir.exit
  call void @_RNvXs1_NtCsbSS6DM8SDEO_5alloc7raw_vecINtB5_6RawVecNtNtCsileJQcQObtj_7hir_def8resolver5ScopeENtNtNtCshzWfHUSfYae_4core3ops4drop4Drop4dropCs8Xq8PKFYOms_3hir(ptr noalias nofree noundef nonnull align 8 dereferenceable(48) %i.aq)
  br label %bb.gh

bb.an:                                            ; preds = %bb.aj
  %i.eq = getelementptr inbounds nuw i8, ptr %i.am, i64 84
  %i.er = load i32, ptr %i.eq, align 4, !range !425, !noundef !8
  %.not83 = icmp eq i32 %i.er, -2                 ; 2 uses
  %i.es = load i32, ptr %i.am, align 4
  %.not77 = icmp eq i32 %i.es, -1                 ; 2 uses
  %or.cond = select i1 %.not83, i1 %.not77, i1 false
  %i.et = getelementptr inbounds nuw i8, ptr %i.am, i64 44
  %i.eu = load i32, ptr %i.et, align 4            ; 3 uses
  %.not78 = icmp eq i32 %i.eu, -1                 ; 2 uses
  %or.cond87 = select i1 %or.cond, i1 %.not78, i1 false
  br i1 %or.cond87, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  switch i8 %6, label %default.unreachable460 [
    i8 -1, label %bb.aq
    i8 0, label %bb.bl
    i8 1, label %bb.bm
    i8 2, label %bb.bn
  ]

bb.ap:                                            ; preds = %bb.an
  %i.ev = invoke noundef ptr @_RNvMs_NtCs33K2ylI4knu_10hir_expand8mod_pathNtB4_7ModPath11pop_segment(ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %i.ao)
          to label %bb.br unwind label %bb.gi     ; 2 uses

bb.aq:                                            ; preds = %bb.ao
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.aj)
  invoke void @_RNvMNtCsileJQcQObtj_7hir_def6per_nsNtB2_5PerNs10iter_items(ptr noalias nofree noundef nonnull sret([108 x i8]) align 4 captures(address) dereferenceable(108) %i.aj, ptr noalias nofree noundef nonnull readonly align 4 captures(none) dereferenceable(128) %i.am)
          to label %bb.ar unwind label %bb.gi

bb.ar:                                            ; preds = %bb.aq
  %i.ew = getelementptr inbounds nuw i8, ptr %i.aj, i64 36
  call void @llvm.experimental.noalias.scope.decl(metadata !1919)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.0.i)
  %i.ex = load i32, ptr %i.ew, align 4, !range !1922, !alias.scope !1919, !noalias !1923, !noundef !8 ; 4 uses
  %.not.i = icmp eq i32 %i.ex, -3
  br i1 %.not.i, label %.thread388, label %bb.as

.thread388:                                       ; preds = %bb.ar
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %bb.aw

bb.as:                                            ; preds = %bb.ar
  call void @llvm.experimental.noalias.scope.decl(metadata !1925)
  call void @llvm.experimental.noalias.scope.decl(metadata !1928)
  %.not.i.i.i.i = icmp eq i32 %i.ex, -2
  br i1 %.not.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i.i.i

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i.i.i: ; preds = %bb.as
  %.not3.i.i.i.i = icmp eq i32 %i.ex, -1
  call void @llvm.experimental.noalias.scope.decl(metadata !1931)
  br i1 %.not3.i.i.i.i, label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i.i.i
  %.sroa.6.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 40
  %.sroa.8.i.sroa.0.0.copyload = load i8, ptr %.sroa.6.0..sroa_idx5.i.i.i.i, align 4, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.5.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 41
  %.sroa.8.i.sroa.5.0.copyload = load i8, ptr %.sroa.8.i.sroa.5.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 1, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.6.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 42
  %.sroa.8.i.sroa.6.0.copyload = load i8, ptr %.sroa.8.i.sroa.6.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 2, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.7.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 43
  %.sroa.8.i.sroa.7.0.copyload = load i8, ptr %.sroa.8.i.sroa.7.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 1, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.8.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 44
  %.sroa.8.i.sroa.8.0.copyload = load i8, ptr %.sroa.8.i.sroa.8.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 4, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.9.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 45
  %.sroa.8.i.sroa.9.0.copyload = load i24, ptr %.sroa.8.i.sroa.9.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 1, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.10.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 48
  %.sroa.8.i.sroa.10.0.copyload = load i8, ptr %.sroa.8.i.sroa.10.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 4, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.11.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 49
  %.sroa.8.i.sroa.11.0.copyload = load i24, ptr %.sroa.8.i.sroa.11.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 1, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.12.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 52
  %.sroa.8.i.sroa.12.0.copyload = load i8, ptr %.sroa.8.i.sroa.12.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 4, !alias.scope !1934, !noalias !1923
  %.sroa.8.i.sroa.13.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 53
  %.sroa.8.i.sroa.13.0.copyload = load i24, ptr %.sroa.8.i.sroa.13.0..sroa.6.0..sroa_idx5.i.i.i.i.sroa_idx, align 1, !alias.scope !1934, !noalias !1923
  br label %bb.av

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.i.i.i, %bb.as
  %i.ey = getelementptr inbounds nuw i8, ptr %i.aj, i64 72 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !1937)
  %i.ez = load i32, ptr %i.ey, align 4, !range !425, !alias.scope !1940, !noalias !1943, !noundef !8 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.ez, -2
  br i1 %.not.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i, label %bb.at

bb.at:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i
  store i32 %i.ez, ptr %.sroa.0.i, align 4, !alias.scope !1945, !noalias !1949
  %.sroa.8.0..sroa_idx5.i = getelementptr inbounds nuw i8, ptr %i.aj, i64 76
  %.sroa.8.i.sroa.0.0.copyload367 = load i8, ptr %.sroa.8.0..sroa_idx5.i, align 4, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 77
  %.sroa.8.i.sroa.5.0.copyload368 = load i8, ptr %.sroa.8.i.sroa.5.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 1, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 78
  %.sroa.8.i.sroa.6.0.copyload369 = load i8, ptr %.sroa.8.i.sroa.6.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 2, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 79
  %.sroa.8.i.sroa.7.0.copyload370 = load i8, ptr %.sroa.8.i.sroa.7.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 1, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 80
  %.sroa.8.i.sroa.8.0.copyload371 = load i8, ptr %.sroa.8.i.sroa.8.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 4, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.9.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 81
  %.sroa.8.i.sroa.9.0.copyload372 = load i24, ptr %.sroa.8.i.sroa.9.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 1, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 84
  %.sroa.8.i.sroa.10.0.copyload373 = load i8, ptr %.sroa.8.i.sroa.10.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 4, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 85
  %.sroa.8.i.sroa.11.0.copyload374 = load i24, ptr %.sroa.8.i.sroa.11.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 1, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.12.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 88
  %.sroa.8.i.sroa.12.0.copyload375 = load i8, ptr %.sroa.8.i.sroa.12.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 4, !alias.scope !1945, !noalias !1950
  %.sroa.8.i.sroa.13.0..sroa.8.0..sroa_idx5.i.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 89
  %.sroa.8.i.sroa.13.0.copyload376 = load i24, ptr %.sroa.8.i.sroa.13.0..sroa.8.0..sroa_idx5.i.sroa_idx, align 1, !alias.scope !1945, !noalias !1950
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.at, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i
  %.sroa.8.i.sroa.0.1 = phi i8 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.0.0.copyload367, %bb.at ]
  %.sroa.8.i.sroa.5.1 = phi i8 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.5.0.copyload368, %bb.at ]
  %.sroa.8.i.sroa.6.1 = phi i8 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.6.0.copyload369, %bb.at ]
  %.sroa.8.i.sroa.7.1 = phi i8 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.7.0.copyload370, %bb.at ]
  %.sroa.8.i.sroa.8.1 = phi i8 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.8.0.copyload371, %bb.at ]
  %.sroa.8.i.sroa.9.1 = phi i24 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.9.0.copyload372, %bb.at ]
  %.sroa.8.i.sroa.10.1 = phi i8 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.10.0.copyload373, %bb.at ]
  %.sroa.8.i.sroa.11.1 = phi i24 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.11.0.copyload374, %bb.at ]
  %.sroa.8.i.sroa.12.1 = phi i8 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.12.0.copyload375, %bb.at ]
  %.sroa.8.i.sroa.13.1 = phi i24 [ undef, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %.sroa.8.i.sroa.13.0.copyload376, %bb.at ]
  %.sink.i.i.i.i.i = phi ptr [ %.sroa.0.i, %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtNtB8_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB17_6OptionNtB1v_19ImportOrExternCrateEEEB1s_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextECs8Xq8PKFYOms_3hir.exit.thread.i.i.i ], [ %i.ey, %bb.at ]
  store i32 -1, ptr %.sink.i.i.i.i.i, align 4, !alias.scope !1951, !noalias !1950
  %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i = load i32, ptr %.sroa.0.i, align 4, !noalias !1952 ; 2 uses
  %.not3.i = icmp eq i32 %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, -1
  br i1 %.not3.i, label %bb.au, label %bb.av

bb.au:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !1953)
  br label %bb.aw

bb.av:                                            ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i
  %.sroa.8.i.sroa.0.0.ph = phi i8 [ %.sroa.8.i.sroa.0.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.0.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.5.0.ph = phi i8 [ %.sroa.8.i.sroa.5.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.5.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.6.0.ph = phi i8 [ %.sroa.8.i.sroa.6.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.6.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.7.0.ph = phi i8 [ %.sroa.8.i.sroa.7.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.7.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.8.0.ph = phi i8 [ %.sroa.8.i.sroa.8.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.8.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.9.0.ph = phi i24 [ %.sroa.8.i.sroa.9.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.9.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.10.0.ph = phi i8 [ %.sroa.8.i.sroa.10.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.10.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.11.0.ph = phi i24 [ %.sroa.8.i.sroa.11.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.11.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.12.0.ph = phi i8 [ %.sroa.8.i.sroa.12.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.12.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.8.i.sroa.13.0.ph = phi i24 [ %.sroa.8.i.sroa.13.0.copyload, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.8.i.sroa.13.1, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  %.sroa.0.0..sroa.0.0.8.i.ph = phi i32 [ %i.ex, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.thread.i ], [ %.sroa.0.i.0..sroa.0.i.0..sroa.0.i.0..sroa.0.0..sroa.0.0..sroa.0.0..pr.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainINtNtBe_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB10_6OptionNtB1o_19ImportOrExternCrateEEEBX_ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceCs8Xq8PKFYOms_3hir.exit.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0.i)
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit

bb.aw:                                            ; preds = %bb.au, %.thread388
  call void @llvm.experimental.noalias.scope.decl(metadata !1956)
  %i.fa = load i32, ptr %i.aj, align 4, !range !425, !alias.scope !1959, !noalias !1962, !noundef !8 ; 2 uses
  %.not.i.i93 = icmp eq i32 %i.fa, -2
  br i1 %.not.i.i93, label %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i, label %bb.ax

bb.ax:                                            ; preds = %bb.aw
  store i32 %i.fa, ptr %.sroa.0, align 4, !alias.scope !1964, !noalias !1968
  %.sroa.8.0..sroa_idx108 = getelementptr inbounds nuw i8, ptr %i.aj, i64 4
  %.sroa.8.0.copyload109 = load i8, ptr %.sroa.8.0..sroa_idx108, align 4, !alias.scope !1964, !noalias !1968
  %.sroa.9.0..sroa_idx110 = getelementptr inbounds nuw i8, ptr %i.aj, i64 5
  %.sroa.9.sroa.0.0.copyload = load i8, ptr %.sroa.9.0..sroa_idx110, align 1, !alias.scope !1964, !noalias !1968
  %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx110.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 6
  %.sroa.9.sroa.6.0.copyload = load i8, ptr %.sroa.9.sroa.6.0..sroa.9.0..sroa_idx110.sroa_idx, align 2, !alias.scope !1964, !noalias !1968
  %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx110.sroa_idx = getelementptr inbounds nuw i8, ptr %i.aj, i64 7
  %.sroa.9.sroa.7.0.copyload = load i8, ptr %.sroa.9.sroa.7.0..sroa.9.0..sroa_idx110.sroa_idx, align 1, !alias.scope !1964, !noalias !1968
  %.sroa.10.0..sroa_idx111 = getelementptr inbounds nuw i8, ptr %i.aj, i64 8
  %.sroa.10.0.copyload112 = load i8, ptr %.sroa.10.0..sroa_idx111, align 4, !alias.scope !1964, !noalias !1968
  %.sroa.11.0..sroa_idx113 = getelementptr inbounds nuw i8, ptr %i.aj, i64 9
  %.sroa.11.sroa.0.0.copyload = load i24, ptr %.sroa.11.0..sroa_idx113, align 1, !alias.scope !1964, !noalias !1968
  %.sroa.12.0..sroa_idx114 = getelementptr inbounds nuw i8, ptr %i.aj, i64 12
  %.sroa.12.0.copyload115 = load i8, ptr %.sroa.12.0..sroa_idx114, align 4, !alias.scope !1964, !noalias !1968
  %.sroa.13.0..sroa_idx116 = getelementptr inbounds nuw i8, ptr %i.aj, i64 13
  %.sroa.13.sroa.0.0.copyload = load i24, ptr %.sroa.13.0..sroa_idx116, align 1, !alias.scope !1964, !noalias !1968
  %.sroa.14.0..sroa_idx117 = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %.sroa.14.0.copyload118 = load i8, ptr %.sroa.14.0..sroa_idx117, align 4, !alias.scope !1964, !noalias !1968
  %.sroa.15.0..sroa_idx119 = getelementptr inbounds nuw i8, ptr %i.aj, i64 17
  %.sroa.15.sroa.0.0.copyload = load i24, ptr %.sroa.15.0..sroa_idx119, align 1, !alias.scope !1964, !noalias !1968
  br label %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i

_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i: ; preds = %bb.ax, %bb.aw
  %.sroa.15.sroa.0.0 = phi i24 [ undef, %bb.aw ], [ %.sroa.15.sroa.0.0.copyload, %bb.ax ]
  %.sroa.13.sroa.0.0 = phi i24 [ undef, %bb.aw ], [ %.sroa.13.sroa.0.0.copyload, %bb.ax ]
  %.sroa.11.sroa.0.0 = phi i24 [ undef, %bb.aw ], [ %.sroa.11.sroa.0.0.copyload, %bb.ax ]
  %.sroa.9.sroa.0.0 = phi i8 [ undef, %bb.aw ], [ %.sroa.9.sroa.0.0.copyload, %bb.ax ]
  %.sroa.9.sroa.6.0 = phi i8 [ undef, %bb.aw ], [ %.sroa.9.sroa.6.0.copyload, %bb.ax ]
  %.sroa.9.sroa.7.0377 = phi i8 [ undef, %bb.aw ], [ %.sroa.9.sroa.7.0.copyload, %bb.ax ]
  %.sroa.14.0 = phi i8 [ undef, %bb.aw ], [ %.sroa.14.0.copyload118, %bb.ax ]
  %.sroa.12.0 = phi i8 [ undef, %bb.aw ], [ %.sroa.12.0.copyload115, %bb.ax ]
  %.sroa.10.0 = phi i8 [ undef, %bb.aw ], [ %.sroa.10.0.copyload112, %bb.ax ]
  %.sroa.8.0 = phi i8 [ undef, %bb.aw ], [ %.sroa.8.0.copyload109, %bb.ax ]
  %.sink.i.i = phi ptr [ %.sroa.0, %bb.aw ], [ %i.aj, %bb.ax ]
  store i32 -1, ptr %.sink.i.i, align 4, !alias.scope !1969, !noalias !1968
  %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre = load i32, ptr %.sroa.0, align 4, !range !717
  br label %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit

_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit: ; preds = %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i, %bb.av
  %.sroa.0.0..sroa.0.0..sroa.0.0. = phi i32 [ %.sroa.0.0..sroa.0.0..sroa.0.0..sroa.0.0..pre, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.0.0..sroa.0.0.8.i.ph, %bb.av ]
  %.sroa.15.sroa.0.1 = phi i24 [ %.sroa.15.sroa.0.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.13.0.ph, %bb.av ] ; 2 uses
  %.sroa.13.sroa.0.1 = phi i24 [ %.sroa.13.sroa.0.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.11.0.ph, %bb.av ] ; 3 uses
  %.sroa.11.sroa.0.1 = phi i24 [ %.sroa.11.sroa.0.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.9.0.ph, %bb.av ] ; 3 uses
  %.sroa.9.sroa.0.1 = phi i8 [ %.sroa.9.sroa.0.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.5.0.ph, %bb.av ] ; 3 uses
  %.sroa.9.sroa.6.1 = phi i8 [ %.sroa.9.sroa.6.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.6.0.ph, %bb.av ] ; 3 uses
  %.sroa.9.sroa.7.1 = phi i8 [ %.sroa.9.sroa.7.0377, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.7.0.ph, %bb.av ]
  %.sroa.14.1 = phi i8 [ %.sroa.14.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.12.0.ph, %bb.av ] ; 2 uses
  %.sroa.12.1 = phi i8 [ %.sroa.12.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.10.0.ph, %bb.av ] ; 3 uses
  %.sroa.10.1 = phi i8 [ %.sroa.10.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.8.0.ph, %bb.av ] ; 3 uses
  %.sroa.8.1 = phi i8 [ %.sroa.8.0, %_RNCNvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB6_5ChainIBQ_INtNtBc_6option8IntoIterTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsINtB18_6OptionNtB1w_19ImportOrExternCrateEEEB15_EB15_ENtNtNtBa_6traits8iterator8Iterator4next0Cs8Xq8PKFYOms_3hir.exit.i ], [ %.sroa.8.i.sroa.0.0.ph, %bb.av ] ; 3 uses
  switch i32 %.sroa.0.0..sroa.0.0..sroa.0.0., label %bb.b [
    i32 -1, label %bb.ay
    i32 0, label %bb.ba
    i32 1, label %bb.ba
    i32 2, label %bb.az
  ]

bb.ay:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bo

bb.az:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit
  %.sroa.7.sroa.0.sroa.8.0.insert.ext = zext i8 %.sroa.9.sroa.7.1 to i24
  %.sroa.7.sroa.0.sroa.8.0.insert.shift = shl nuw i24 %.sroa.7.sroa.0.sroa.8.0.insert.ext, 16
  %.sroa.7.sroa.0.sroa.6.0.insert.ext = zext i8 %.sroa.9.sroa.6.1 to i24
  %.sroa.7.sroa.0.sroa.6.0.insert.shift = shl nuw nsw i24 %.sroa.7.sroa.0.sroa.6.0.insert.ext, 8
  %.sroa.7.sroa.0.sroa.6.0.insert.insert = or disjoint i24 %.sroa.7.sroa.0.sroa.8.0.insert.shift, %.sroa.7.sroa.0.sroa.6.0.insert.shift
  %.sroa.7.sroa.0.sroa.0.0.insert.ext = zext i8 %.sroa.9.sroa.0.1 to i24
  %.sroa.7.sroa.0.sroa.0.0.insert.insert = or disjoint i24 %.sroa.7.sroa.0.sroa.6.0.insert.insert, %.sroa.7.sroa.0.sroa.0.0.insert.ext
  br label %bb.ba

bb.ba:                                            ; preds = %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit, %bb.az
  %.sroa.627.sroa.0.sroa.5.0 = phi i8 [ undef, %bb.az ], [ %.sroa.9.sroa.6.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.9.sroa.6.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.627.sroa.0.sroa.0.0 = phi i8 [ undef, %bb.az ], [ %.sroa.9.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.9.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.627.sroa.6.sroa.0.sroa.0.0 = phi i24 [ %.sroa.7.sroa.0.sroa.0.0.insert.insert, %bb.az ], [ %.sroa.11.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.11.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.627.sroa.6.sroa.7.sroa.0.sroa.0.0 = phi i24 [ %.sroa.11.sroa.0.1, %bb.az ], [ %.sroa.13.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.13.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.627.sroa.6.sroa.7.sroa.7.sroa.0.0 = phi i24 [ %.sroa.13.sroa.0.1, %bb.az ], [ %.sroa.15.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.15.sroa.0.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.627.sroa.6.sroa.7.sroa.6.0 = phi i8 [ %.sroa.12.1, %bb.az ], [ %.sroa.14.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.14.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.627.sroa.6.sroa.6.0 = phi i8 [ %.sroa.10.1, %bb.az ], [ %.sroa.12.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.12.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.627.sroa.5.0 = phi i8 [ %.sroa.8.1, %bb.az ], [ %.sroa.10.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.10.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  %.sroa.025.0 = phi i8 [ 9, %bb.az ], [ %.sroa.8.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ], [ %.sroa.8.1, %_RINvMNtCshzWfHUSfYae_4core6optionINtB3_6OptionTNtNtCsileJQcQObtj_7hir_def10item_scope8ItemInNsIBw_NtBL_19ImportOrExternCrateEEE7or_elseNCNvXs_NtNtNtB5_4iter8adapters5chainINtB2g_5ChainIB2K_INtB3_8IntoIterBI_EB31_EB31_ENtNtNtB2k_6traits8iterator8Iterator4next0ECs8Xq8PKFYOms_3hir.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.0)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.aj)
  br label %bb.bb

bb.bb:                                            ; preds = %bb.bm, %bb.bl, %bb.ba
  %.sroa.9.sroa.0.sroa.5.0 = phi i8 [ %.sroa.627.sroa.0.sroa.5.0, %bb.ba ], [ %.sroa.5.sroa.0.sroa.5.0.copyload, %bb.bl ], [ %.sroa.638.sroa.0.sroa.5.0.copyload, %bb.bm ]
  %.sroa.9.sroa.0.sroa.0.0 = phi i8 [ %.sroa.627.sroa.0.sroa.0.0, %bb.ba ], [ %.sroa.5.sroa.0.sroa.0.0.copyload, %bb.bl ], [ %.sroa.638.sroa.0.sroa.0.0.copyload, %bb.bm ]
  %.sroa.9.sroa.6.sroa.0.0 = phi i24 [ %.sroa.627.sroa.6.sroa.0.sroa.0.0, %bb.ba ], [ %.sroa.5.sroa.6.sroa.0.0.copyload, %bb.bl ], [ %.sroa.638.sroa.6.sroa.0.0.copyload, %bb.bm ] ; 9 uses
  %.sroa.9.sroa.8.sroa.0.0 = phi i24 [ %.sroa.627.sroa.6.sroa.7.sroa.0.sroa.0.0, %bb.ba ], [ %.sroa.5.sroa.8.sroa.0.0.copyload, %bb.bl ], [ %.sroa.638.sroa.8.sroa.0.0.copyload, %bb.bm ] ; 9 uses
  %.sroa.9.sroa.10.sroa.0.0 = phi i24 [ %.sroa.627.sroa.6.sroa.7.sroa.7.sroa.0.0, %bb.ba ], [ %.sroa.5.sroa.10.sroa.0.0.copyload, %bb.bl ], [ %.sroa.638.sroa.10.sroa.0.0.copyload, %bb.bm ] ; 2 uses
  %.sroa.9.sroa.9.0 = phi i8 [ %.sroa.627.sroa.6.sroa.7.sroa.6.0, %bb.ba ], [ %.sroa.5.sroa.9.0.copyload, %bb.bl ], [ %.sroa.638.sroa.9.0.copyload, %bb.bm ] ; 2 uses
  %.sroa.9.sroa.7.0 = phi i8 [ %.sroa.627.sroa.6.sroa.6.0, %bb.ba ], [ %.sroa.5.sroa.7.0.copyload, %bb.bl ], [ %.sroa.638.sroa.7.0.copyload, %bb.bm ] ; 9 uses
  %.sroa.9.sroa.5.0 = phi i8 [ %.sroa.627.sroa.5.0, %bb.ba ], [ %.sroa.5.sroa.5.0.copyload, %bb.bl ], [ %.sroa.638.sroa.5.0.copyload, %bb.bm ] ; 9 uses
  %.sroa.09.0 = phi i8 [ %.sroa.025.0, %bb.ba ], [ %.sroa.434.0.copyload, %bb.bl ], [ %.sroa.537.0.copyload, %bb.bm ] ; 2 uses
  switch i8 %.sroa.09.0, label %default.unreachable13.i [
    i8 0, label %bb.bc
    i8 1, label %bb.bd
    i8 2, label %bb.be
    i8 3, label %bb.bf
    i8 4, label %bb.bg
    i8 5, label %bb.bh
    i8 6, label %bb.bi
    i8 7, label %bb.bj
    i8 8, label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit
    i8 9, label %bb.bk
  ]

default.unreachable13.i:                          ; preds = %bb.bb
  unreachable

bb.bc:                                            ; preds = %bb.bb
  %.sroa.26248.8.insert.ext283 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift284 = shl nuw i32 %.sroa.26248.8.insert.ext283, 8
  %.sroa.16217.8.insert.ext245 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert247 = or disjoint i32 %.sroa.26248.8.insert.shift284, %.sroa.16217.8.insert.ext245
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bd:                                            ; preds = %bb.bb
  %.sroa.15178.4.insert.ext208 = zext i24 %.sroa.9.sroa.6.sroa.0.0 to i32
  %.sroa.15178.4.insert.shift209 = shl nuw i32 %.sroa.15178.4.insert.ext208, 8
  %.sroa.5147.4.insert.ext171 = zext i8 %.sroa.9.sroa.5.0 to i32
  %.sroa.5147.4.insert.insert173 = or disjoint i32 %.sroa.15178.4.insert.shift209, %.sroa.5147.4.insert.ext171
  %.sroa.26248.8.insert.ext278 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift279 = shl nuw i32 %.sroa.26248.8.insert.ext278, 8
  %.sroa.16217.8.insert.ext241 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert243 = or disjoint i32 %.sroa.26248.8.insert.shift279, %.sroa.16217.8.insert.ext241
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.be:                                            ; preds = %bb.bb
  %.sroa.26248.8.insert.ext273 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift274 = shl nuw i32 %.sroa.26248.8.insert.ext273, 8
  %.sroa.16217.8.insert.ext237 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert239 = or disjoint i32 %.sroa.26248.8.insert.shift274, %.sroa.16217.8.insert.ext237
  %.sroa.30.12.insert.ext290 = zext i24 %.sroa.9.sroa.10.sroa.0.0 to i32
  %.sroa.30.12.insert.shift291 = shl nuw i32 %.sroa.30.12.insert.ext290, 8
  %.sroa.27.12.insert.ext287 = zext i8 %.sroa.9.sroa.9.0 to i32
  %.sroa.27.12.insert.insert289 = or disjoint i32 %.sroa.30.12.insert.shift291, %.sroa.27.12.insert.ext287
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bf:                                            ; preds = %bb.bb
  %.sroa.26248.8.insert.ext269 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift270 = shl nuw i32 %.sroa.26248.8.insert.ext269, 8
  %.sroa.16217.8.insert.ext234 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert236 = or disjoint i32 %.sroa.26248.8.insert.shift270, %.sroa.16217.8.insert.ext234
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bg:                                            ; preds = %bb.bb
  %.sroa.26248.8.insert.ext264 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift265 = shl nuw i32 %.sroa.26248.8.insert.ext264, 8
  %.sroa.16217.8.insert.ext230 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert232 = or disjoint i32 %.sroa.26248.8.insert.shift265, %.sroa.16217.8.insert.ext230
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bh:                                            ; preds = %bb.bb
  %.sroa.26248.8.insert.ext259 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift260 = shl nuw i32 %.sroa.26248.8.insert.ext259, 8
  %.sroa.16217.8.insert.ext226 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert228 = or disjoint i32 %.sroa.26248.8.insert.shift260, %.sroa.16217.8.insert.ext226
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bi:                                            ; preds = %bb.bb
  %.sroa.26248.8.insert.ext254 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift255 = shl nuw i32 %.sroa.26248.8.insert.ext254, 8
  %.sroa.16217.8.insert.ext222 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert224 = or disjoint i32 %.sroa.26248.8.insert.shift255, %.sroa.16217.8.insert.ext222
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bj:                                            ; preds = %bb.bb
  %.sroa.26248.8.insert.ext249 = zext i24 %.sroa.9.sroa.8.sroa.0.0 to i32
  %.sroa.26248.8.insert.shift250 = shl nuw i32 %.sroa.26248.8.insert.ext249, 8
  %.sroa.16217.8.insert.ext218 = zext i8 %.sroa.9.sroa.7.0 to i32
  %.sroa.16217.8.insert.insert220 = or disjoint i32 %.sroa.26248.8.insert.shift250, %.sroa.16217.8.insert.ext218
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bk:                                            ; preds = %.thread426, %bb.bb
  %.sroa.9.sroa.5.0441 = phi i8 [ %.sroa.5315.4.extract.trunc, %.thread426 ], [ %.sroa.9.sroa.5.0, %bb.bb ]
  %.sroa.9.sroa.7.0440 = phi i8 [ %.sroa.8316.8.extract.trunc, %.thread426 ], [ %.sroa.9.sroa.7.0, %bb.bb ]
  %.sroa.9.sroa.9.0439 = phi i8 [ %.sroa.8316.12.extract.trunc, %.thread426 ], [ %.sroa.9.sroa.9.0, %bb.bb ]
  %.sroa.9.sroa.10.sroa.0.0438 = phi i24 [ %.sroa.8316.13.extract.trunc, %.thread426 ], [ %.sroa.9.sroa.10.sroa.0.0, %bb.bb ]
  %.sroa.9.sroa.8.sroa.0.0437 = phi i24 [ %.sroa.8316.9.extract.trunc, %.thread426 ], [ %.sroa.9.sroa.8.sroa.0.0, %bb.bb ]
  %.sroa.9.sroa.6.sroa.0.0436 = phi i24 [ %.sroa.5315.5.extract.trunc, %.thread426 ], [ %.sroa.9.sroa.6.sroa.0.0, %bb.bb ]
  %.sroa.26248.8.insert.ext = zext i24 %.sroa.9.sroa.8.sroa.0.0437 to i32
  %.sroa.26248.8.insert.shift = shl nuw i32 %.sroa.26248.8.insert.ext, 8
  %.sroa.16217.8.insert.ext = zext i8 %.sroa.9.sroa.7.0440 to i32
  %.sroa.16217.8.insert.insert = or disjoint i32 %.sroa.26248.8.insert.shift, %.sroa.16217.8.insert.ext
  %.sroa.30.12.insert.ext = zext i24 %.sroa.9.sroa.10.sroa.0.0438 to i32
  %.sroa.30.12.insert.shift = shl nuw i32 %.sroa.30.12.insert.ext, 8
  %.sroa.27.12.insert.ext = zext i8 %.sroa.9.sroa.9.0439 to i32
  %.sroa.27.12.insert.insert = or disjoint i32 %.sroa.30.12.insert.shift, %.sroa.27.12.insert.ext
  br label %_RNvXsX_NtCs8Xq8PKFYOms_3hir7from_idNtB7_9ModuleDefINtNtCshzWfHUSfYae_4core7convert4FromNtCsileJQcQObtj_7hir_def11ModuleDefIdE4from.exit

bb.bl:                                            ; preds = %bb.ao
  %.sroa.434.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 112
  %.sroa.434.0.copyload = load i8, ptr %.sroa.434.0..sroa_idx, align 4
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 113
  %.sroa.5.sroa.0.sroa.0.0.copyload = load i8, ptr %.sroa.5.0..sroa_idx, align 1
  %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 114
  %.sroa.5.sroa.0.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.0.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 2
  %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 116
  %.sroa.5.sroa.5.0.copyload = load i8, ptr %.sroa.5.sroa.5.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 117
  %.sroa.5.sroa.6.sroa.0.0.copyload = load i24, ptr %.sroa.5.sroa.6.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 120
  %.sroa.5.sroa.7.0.copyload = load i8, ptr %.sroa.5.sroa.7.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 121
  %.sroa.5.sroa.8.sroa.0.0.copyload = load i24, ptr %.sroa.5.sroa.8.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 124
  %.sroa.5.sroa.9.0.copyload = load i8, ptr %.sroa.5.sroa.9.0..sroa.5.0..sroa_idx.sroa_idx, align 4
  %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 125
  %.sroa.5.sroa.10.sroa.0.0.copyload = load i24, ptr %.sroa.5.sroa.10.0..sroa.5.0..sroa_idx.sroa_idx, align 1
  br i1 %.not83, label %bb.bo, label %bb.bb

bb.bm:                                            ; preds = %bb.ao
  %.sroa.537.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 28
  %.sroa.537.0.copyload = load i8, ptr %.sroa.537.0..sroa_idx, align 4
  %.sroa.638.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 29
  %.sroa.638.sroa.0.sroa.0.0.copyload = load i8, ptr %.sroa.638.0..sroa_idx, align 1
  %.sroa.638.sroa.0.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 30
  %.sroa.638.sroa.0.sroa.5.0.copyload = load i8, ptr %.sroa.638.sroa.0.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx, align 2
  %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.638.sroa.5.0.copyload = load i8, ptr %.sroa.638.sroa.5.0..sroa.638.0..sroa_idx.sroa_idx, align 4
  %.sroa.638.sroa.6.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 33
  %.sroa.638.sroa.6.sroa.0.0.copyload = load i24, ptr %.sroa.638.sroa.6.0..sroa.638.0..sroa_idx.sroa_idx, align 1
  %.sroa.638.sroa.7.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 36
  %.sroa.638.sroa.7.0.copyload = load i8, ptr %.sroa.638.sroa.7.0..sroa.638.0..sroa_idx.sroa_idx, align 4
  %.sroa.638.sroa.8.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 37
  %.sroa.638.sroa.8.sroa.0.0.copyload = load i24, ptr %.sroa.638.sroa.8.0..sroa.638.0..sroa_idx.sroa_idx, align 1
  %.sroa.638.sroa.9.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 40
  %.sroa.638.sroa.9.0.copyload = load i8, ptr %.sroa.638.sroa.9.0..sroa.638.0..sroa_idx.sroa_idx, align 4
  %.sroa.638.sroa.10.0..sroa.638.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 41
  %.sroa.638.sroa.10.sroa.0.0.copyload = load i24, ptr %.sroa.638.sroa.10.0..sroa.638.0..sroa_idx.sroa_idx, align 1
  br i1 %.not77, label %bb.bo, label %bb.bb

bb.bn:                                            ; preds = %bb.ao
end_hunk_3
