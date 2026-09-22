Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/hir_ty-548eb6ecf0a49818.hir_ty.65d5e02866c8e496-cgu.11?download=true
inline.NumInlined: 6814
inline.NumDeleted: 2912
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RNvXs0_NvNtCs8K4cjrcxBsw_6hir_ty8variance1__NtB5_33variances_of_query_Configuration_NtNtCsd9Lm8bEdjjY_5salsa8function13Configuration7execute:bb.a
  call void @llvm.experimental.noalias.scope.decl(metadata !10319)
  %i.im = load i32, ptr %i.dy, align 8, !range !56, !alias.scope !10320, !noalias !10321, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.im, -1
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.br, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  call void @llvm.experimental.noalias.scope.decl(metadata !10322)
  call void @llvm.experimental.noalias.scope.decl(metadata !10323)
  %i.in = load ptr, ptr %i.du, align 8, !alias.scope !10324, !noalias !10325, !nonnull !9, !noundef !9 ; 4 uses
  %i.io = load ptr, ptr %i.dz, align 8, !alias.scope !10324, !noalias !10325, !nonnull !9, !noundef !9
  %i.ip = icmp eq ptr %i.in, %i.io
  br i1 %i.ip, label %bb.br, label %bb.bp

bb.bp:                                            ; preds = %bb.bo
  %i.iq = getelementptr inbounds nuw i8, ptr %i.in, i64 32
  store ptr %i.iq, ptr %i.du, align 8, !alias.scope !10324, !noalias !10325
  %i.ir = load i64, ptr %i.ea, align 8, !alias.scope !10326, !noalias !10325, !noundef !9 ; 2 uses
  %i.is = add i64 %i.ir, 1
  store i64 %i.is, ptr %i.ea, align 8, !alias.scope !10326, !noalias !10325
  %.sroa.6.0.copyload3.i.i.i.i.i.i.i.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i.i.i.i, align 4, !alias.scope !10327, !noalias !10328
  %i.it = trunc i64 %i.ir to i32
  %i.iu = load i64, ptr %i.in, align 8, !range !11, !noalias !10329, !noundef !9 ; 2 uses
  %i.iv = trunc nuw nsw i64 %i.iu to i32
  %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.in, i64 8
  %i.iw = ptrtoint ptr %.sink.i.i.i.i.i.i.i.i.i.i.i.i.i to i64
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i: ; preds = %bb.bp, %bb.bm
  %.sroa.18.0.i.i.i.i.i.i.i = phi i64 [ %i.iw, %bb.bp ], [ %.sroa.11.i.i.i.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.i.0..sroa.11.i.i.0..sroa.11.i.i.0..sroa.11.i.0..sroa.11.i.0..sroa.11.0..sroa.11.0..sroa.11.0.copyload.i.i.i.i.i.i.i.i.i, %bb.bm ]
  %.sroa.13.0.i.i.i.i.i.i.i = phi i64 [ %i.iu, %bb.bp ], [ %.sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.24..i.i.i.i.i.i.i.i.i, %bb.bm ]
  %.sroa.10.0.i.i.i.i.i.i.i = phi i32 [ %i.it, %bb.bp ], [ %.sroa.6.0.i.i.i.i.i.i.i.i.i, %bb.bm ]
  %.sroa.8.0.i.i.i.i.i.i.i = phi i64 [ %.sroa.6.0.copyload3.i.i.i.i.i.i.i.i.i.i.i.i, %bb.bp ], [ %.sroa.5.0.i.i.i.i.i.i.i.i.i, %bb.bm ]
  %.sroa.6.0.i.i.i.i.i.i.i = phi i32 [ %i.im, %bb.bp ], [ %.sroa.4.0.i.i.i.i.i.i.i.i.i, %bb.bm ]
  %.sroa.0.0.i.i.i.i.i.i.i = phi i32 [ %i.iv, %bb.bp ], [ %.sroa.0.0.i.i.i.i.i.i.i.i.i, %bb.bm ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i.i)
  br label %bb.bq

bb.bq:                                            ; preds = %bb.br, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i
  %.sroa.0.024.i.i.i.i.i.i.i = phi i32 [ undef, %bb.br ], [ %.sroa.0.0.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i ]
  %.sroa.6.022.i.i.i.i.i.i.i = phi i32 [ undef, %bb.br ], [ %.sroa.6.0.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i ]
  %.sroa.8.020.i.i.i.i.i.i.i = phi i64 [ undef, %bb.br ], [ %.sroa.8.0.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i ]
  %.sroa.10.018.i.i.i.i.i.i.i = phi i32 [ undef, %bb.br ], [ %.sroa.10.0.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i ]
  %.sroa.13.014.i.i.i.i.i.i.i = phi i64 [ -1, %bb.br ], [ %.sroa.13.0.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i ]
  %.sroa.18.012.i.i.i.i.i.i.i = phi i64 [ undef, %bb.br ], [ %.sroa.18.0.i.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain5ChainIB6_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1s_3hir8generics19GenericParamDataRefEEINtNtBa_3map3MapIB2P_INtNtBa_6filter6FilterIB2P_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB26_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB51_5ArenaB4s_E4iter0ENCNvMs3_B26_NtB26_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6M_14SingleGenerics14iter_lifetimes0ENCNvB6L_4iter0EEIB2P_IB2P_IB2P_IB3B_IB43_NtB26_20TypeOrConstParamDataEENCNvMsm_B51_IB5p_B8B_E4iter0ENCNvB6L_19iter_type_or_consts0ENCNvB6L_30iter_type_or_consts_as_generic0EENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6O_.exit.i.i.i.i.i.i.i ]
  store i64 %.sroa.13.014.i.i.i.i.i.i.i, ptr %.sroa.8.i.i.i.i.i.i, align 8, !alias.scope !10294, !noalias !10330
  br label %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainIB15_INtNtB8_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEINtNtB4_3map3MapIB39_INtNtB4_6filter6FilterIB39_INtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5l_5ArenaB4M_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB76_14SingleGenerics14iter_lifetimes0ENCNvB75_4iter0EEIB39_IB39_IB39_IB3V_IB4n_NtB2q_20TypeOrConstParamDataEENCNvMsm_B5l_IB5J_B8V_E4iter0ENCNvB75_19iter_type_or_consts0ENCNvB75_30iter_type_or_consts_as_generic0EEB1J_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB78_.exit.i.i.i.i.i.i

bb.br:                                            ; preds = %bb.bo, %bb.bn
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i.i.i.i)
  store i64 3, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !10331, !noalias !10332
  br label %bb.bq

_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainIB15_INtNtB8_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEINtNtB4_3map3MapIB39_INtNtB4_6filter6FilterIB39_INtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5l_5ArenaB4M_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB76_14SingleGenerics14iter_lifetimes0ENCNvB75_4iter0EEIB39_IB39_IB39_IB3V_IB4n_NtB2q_20TypeOrConstParamDataEENCNvMsm_B5l_IB5J_B8V_E4iter0ENCNvB75_19iter_type_or_consts0ENCNvB75_30iter_type_or_consts_as_generic0EEB1J_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB78_.exit.i.i.i.i.i.i: ; preds = %bb.bq, %bb.bf
  %.sroa.6.0.i.i.i.i.i.i = phi i32 [ undef, %bb.bf ], [ %.sroa.10.018.i.i.i.i.i.i.i, %bb.bq ]
  %.sroa.5.0.i.i.i.i.i.i = phi i64 [ undef, %bb.bf ], [ %.sroa.8.020.i.i.i.i.i.i.i, %bb.bq ]
  %.sroa.4.0.i.i.i.i.i.i = phi i32 [ undef, %bb.bf ], [ %.sroa.6.022.i.i.i.i.i.i.i, %bb.bq ]
  %.sroa.0.0.i.i.i.i.i.i = phi i32 [ undef, %bb.bf ], [ %.sroa.0.024.i.i.i.i.i.i.i, %bb.bq ] ; 2 uses
  %.sink.i.sroa.phi.i.i.i.i.i.i = phi ptr [ %.sroa.8.i.i.i.i.i.i, %bb.bf ], [ %.sroa.11.i.i.i.i.i.i, %bb.bq ]
  %.sroa.18.012.sink.i.i.i.i.i.i.i = phi i64 [ -1, %bb.bf ], [ %.sroa.18.012.i.i.i.i.i.i.i, %bb.bq ]
  store i64 %.sroa.18.012.sink.i.i.i.i.i.i.i, ptr %.sink.i.sroa.phi.i.i.i.i.i.i, align 8, !alias.scope !10294, !noalias !10330
  call void @llvm.experimental.noalias.scope.decl(metadata !10333)
  call void @llvm.experimental.noalias.scope.decl(metadata !10334)
  %.sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.24..i.i.i.i.i.i = load i64, ptr %.sroa.8.i.i.i.i.i.i, align 8, !range !57, !alias.scope !10333, !noalias !10335, !noundef !9
  %.not.i1.i.i.i.i.i.i = icmp eq i64 %.sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.i.0..sroa.8.i.i.0..sroa.8.i.i.0..sroa.8.i.0..sroa.8.i.0..sroa.8.0..sroa.8.0..sroa.8.24..i.i.i.i.i.i, -1
  br i1 %.not.i1.i.i.i.i.i.i, label %bb.bs, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i

bb.bs:                                            ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainIB15_INtNtB8_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEINtNtB4_3map3MapIB39_INtNtB4_6filter6FilterIB39_INtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5l_5ArenaB4M_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB76_14SingleGenerics14iter_lifetimes0ENCNvB75_4iter0EEIB39_IB39_IB39_IB3V_IB4n_NtB2q_20TypeOrConstParamDataEENCNvMsm_B5l_IB5J_B8V_E4iter0ENCNvB75_19iter_type_or_consts0ENCNvB75_30iter_type_or_consts_as_generic0EEB1J_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB78_.exit.i.i.i.i.i.i
  call void @llvm.experimental.noalias.scope.decl(metadata !10336)
  %i.ix = load i32, ptr %i.ds, align 8, !range !56, !alias.scope !10337, !noalias !10338, !noundef !9
  %.not.i.i.i.i.i.i.i.i = icmp eq i32 %i.ix, -1
  br i1 %.not.i.i.i.i.i.i.i.i, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread.i.i.i, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !10339
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB2X_5ArenaB1P_E4iter0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_6filter15filter_try_foldTINtB2X_3IdxB1P_ERB1P_EuINtNtNtBc_3ops12control_flow11ControlFlowTNtB1V_15LifetimeParamIdB5g_EENCNvMs3_B1R_NtB1R_13GenericParams18iter_late_bound_lt0NCINvNvB3J_8find_map5checkB4Z_B62_QNCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB82_14SingleGenerics25iter_late_bound_lifetimes0E0E0B5n_EB84_(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.eb, ptr noalias nofree noundef nonnull %i.du, ptr noalias nofree noundef nonnull align 8 dereferenceable(160) %i.ds)
          to label %.noexc97.i.i unwind label %.loopexit.i.i

.noexc97.i.i:                                     ; preds = %bb.bt
  %i.iy = load i32, ptr %i.e, align 8, !range !56, !noalias !10339, !noundef !9 ; 2 uses
  %.not.i.i.i.i.i2.i.i.i.i.i.i = icmp eq i32 %i.iy, -1
  br i1 %.not.i.i.i.i.i2.i.i.i.i.i.i, label %bb.bu, label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread17.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread17.i.i.i: ; preds = %.noexc97.i.i
  %.sroa.7.8.copyload.i.i.i.i.i = load i64, ptr %.sroa.6.0..sroa_idx2.i.i.i.i.i.i.i.i.i, align 4, !noalias !10340
  %.sroa.9.8.copyload.i.i.i.i.i = load i32, ptr %.sroa.9.8..sroa.6.0..sroa_idx2.i.i.i.i.sroa_idx.i.i.i.i.i, align 4, !noalias !10340
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10339
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i)
  br label %.noexc88.thread.i.i

bb.bu:                                            ; preds = %.noexc97.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !10339
  br label %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread.i.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread.i.i.i: ; preds = %bb.bu, %bb.bs
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i)
  br label %.noexc88.i.i

_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i: ; preds = %_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters5chain17and_then_or_clearINtB2_5ChainIB15_INtNtB8_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEINtNtB4_3map3MapIB39_INtNtB4_6filter6FilterIB39_INtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5l_5ArenaB4M_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB76_14SingleGenerics14iter_lifetimes0ENCNvB75_4iter0EEIB39_IB39_IB39_IB3V_IB4n_NtB2q_20TypeOrConstParamDataEENCNvMsm_B5l_IB5J_B8V_E4iter0ENCNvB75_19iter_type_or_consts0ENCNvB75_30iter_type_or_consts_as_generic0EEB1J_NvYB14_NtNtNtB6_6traits8iterator8Iterator4nextEB78_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.8.i.i.i.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i.i.i.i.i.i)
  %.not3.i.i.i = icmp eq i32 %.sroa.0.0.i.i.i.i.i.i, -1
  br i1 %.not3.i.i.i, label %.noexc88.i.i, label %.noexc88.thread.i.i

.noexc88.thread.i.i:                              ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread17.i.i.i
  %.sroa.0.015.i.ph.i.i = phi i32 [ 2, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread17.i.i.i ], [ %.sroa.0.0.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i ]
  %.sroa.7.013.i.ph.i.i = phi i32 [ %i.iy, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread17.i.i.i ], [ %.sroa.4.0.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i ]
  %.sroa.8.011.i.ph.i.i = phi i64 [ %.sroa.7.8.copyload.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread17.i.i.i ], [ %.sroa.5.0.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i ]
  %.sroa.9.09.i.ph.i.i = phi i32 [ %.sroa.9.8.copyload.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread17.i.i.i ], [ %.sroa.6.0.i.i.i.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i ]
  store i32 %.sroa.0.015.i.ph.i.i, ptr %i.g, align 4, !alias.scope !10288, !noalias !10341
  store i32 %.sroa.7.013.i.ph.i.i, ptr %.sroa.7.0..sroa_idx.i.i.i, align 4, !alias.scope !10288, !noalias !10341
  store i64 %.sroa.8.011.i.ph.i.i, ptr %.sroa.8.0..sroa_idx.i.i.i, align 4, !alias.scope !10288, !noalias !10341
  store i32 %.sroa.9.09.i.ph.i.i, ptr %.sroa.9.0..sroa_idx.i.i.i, align 4, !alias.scope !10288, !noalias !10341
  br label %._crit_edge.i.i.i.i.i

.noexc88.i.i:                                     ; preds = %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.i.i.i, %_RNvYNvYINtNtNtNtCshzWfHUSfYae_4core4iter8adapters3map3MapINtNtBa_5chain5ChainIBU_IBU_INtNtBe_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1M_3hir8generics19GenericParamDataRefEEIB6_IB6_INtNtBa_6filter6FilterIB6_INtNtBa_9enumerate9EnumerateINtNtNtBe_5slice4iter4IterNtB2q_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB57_5ArenaB4y_E4iter0ENCNvMs3_B2q_NtB2q_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6S_14SingleGenerics14iter_lifetimes0ENCNvB6R_4iter0EEIB6_IB6_IB6_IB3H_IB49_NtB2q_20TypeOrConstParamDataEENCNvMsm_B57_IB5v_B8E_E4iter0ENCNvB6R_19iter_type_or_consts0ENCNvB6R_30iter_type_or_consts_as_generic0EEIB6_INtNtBa_10filter_map9FilterMapIB3h_B3C_NCNvB5X_18iter_late_bound_lt0ENCNvB6R_25iter_late_bound_lifetimes0EB82_EENCNvB6R_7iter_id0ENtNtNtBc_6traits8iterator8Iterator4nextINtNtNtBe_3ops8function6FnOnceTQB5_EE9call_onceB6U_.exit.thread.i.i.i
  store i64 -4, ptr %.sroa.2.sroa.2.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !alias.scope !10289, !noalias !10290
  br label %.backedge.i.i

.backedge.i.i:                                    ; preds = %.noexc88.i.i, %bb.be
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !10280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !10280
  %i.iz = load i8, ptr %.sroa.2.sroa.0.sroa.3.0..sroa.2.0..sroa_idx.sroa_idx.i.i, align 8, !range !14, !alias.scope !10282, !noalias !10283, !noundef !9 ; 2 uses
  %.not.i.i.i.i85.i.i = icmp eq i8 %i.iz, 2
  br i1 %.not.i.i.i.i85.i.i, label %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1G_NtB1G_8Generics7iter_id0EEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i, label %.lr.ph.i.i

_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1G_NtB1G_8Generics7iter_id0EEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i: ; preds = %.backedge.i.i, %.noexc87.i.i, %.lr.ph.i.i, %.lr.ph.i.i.i.i.i
  invoke fastcc void @_RINvNtNtNtCshzWfHUSfYae_4core4iter8adapters7flatten17and_then_or_clearINtNtB4_3map3MapINtNtB4_5chain5ChainIB1n_IB1n_INtNtB8_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB2h_3hir8generics19GenericParamDataRefEEIB17_IB17_INtNtB4_6filter6FilterIB17_INtNtB4_9enumerate9EnumerateINtNtNtB8_5slice4iter4IterNtB2V_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB5F_5ArenaB56_E4iter0ENCNvMs3_B2V_NtB2V_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB7q_14SingleGenerics14iter_lifetimes0ENCNvB7p_4iter0EEIB17_IB17_IB17_IB4f_IB4H_NtB2V_20TypeOrConstParamDataEENCNvMsm_B5F_IB63_B9f_E4iter0ENCNvB7p_19iter_type_or_consts0ENCNvB7p_30iter_type_or_consts_as_generic0EEIB17_INtNtB4_10filter_map9FilterMapIB3O_B49_NCNvB6v_18iter_late_bound_lt0ENCNvB7p_25iter_late_bound_lifetimes0EB8A_EENCNvB7p_7iter_id0EB2f_NvYB16_NtNtNtB6_6traits8iterator8Iterator4nextEB7s_(ptr noalias nofree noundef nonnull align 4 captures(none) dereferenceable(20) %i.h, ptr noalias nofree noundef align 8 dereferenceable(160) %i.ec) #50
          to label %.noexc89.i.i unwind label %.loopexit.split-lp.loopexit.i.i

.noexc89.i.i:                                     ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1G_NtB1G_8Generics7iter_id0EEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !10280
  br label %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB7_3map3MapINtNtB7_5chain5ChainIB2A_IB2A_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3u_3hir8generics19GenericParamDataRefEEIB2k_IB2k_INtNtB7_6filter6FilterIB2k_INtNtB7_9enumerate9EnumerateIB15_NtB48_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6x_5ArenaB5Y_E4iter0ENCNvMs3_B48_NtB48_13GenericParams19iter_early_bound_lt0ENCNvMB1w_B1u_14iter_lifetimes0ENCNvB8h_4iter0EEIB2k_IB2k_IB2k_IB5s_IB15_NtB48_20TypeOrConstParamDataEENCNvMsm_B6x_IB6V_B9n_E4iter0ENCNvB8h_19iter_type_or_consts0ENCNvB8h_30iter_type_or_consts_as_generic0EEIB2k_INtNtB7_10filter_map9FilterMapIB51_B5m_NCNvB7n_18iter_late_bound_lt0ENCNvB8h_25iter_late_bound_lifetimes0EB8I_EENCNvB8h_7iter_id0ENCNvMs_B1w_NtB1w_8Generics7iter_id0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i

_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB7_3map3MapINtNtB7_5chain5ChainIB2A_IB2A_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3u_3hir8generics19GenericParamDataRefEEIB2k_IB2k_INtNtB7_6filter6FilterIB2k_INtNtB7_9enumerate9EnumerateIB15_NtB48_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6x_5ArenaB5Y_E4iter0ENCNvMs3_B48_NtB48_13GenericParams19iter_early_bound_lt0ENCNvMB1w_B1u_14iter_lifetimes0ENCNvB8h_4iter0EEIB2k_IB2k_IB2k_IB5s_IB15_NtB48_20TypeOrConstParamDataEENCNvMsm_B6x_IB6V_B9n_E4iter0ENCNvB8h_19iter_type_or_consts0ENCNvB8h_30iter_type_or_consts_as_generic0EEIB2k_INtNtB7_10filter_map9FilterMapIB51_B5m_NCNvB7n_18iter_late_bound_lt0ENCNvB8h_25iter_late_bound_lifetimes0EB8I_EENCNvB8h_7iter_id0ENCNvMs_B1w_NtB1w_8Generics7iter_id0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i: ; preds = %.noexc89.i.i, %._crit_edge.i.i.i.i.i
  %i.ja = load i32, ptr %i.h, align 4, !range !10281, !noalias !10277, !noundef !9 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.ja, -1
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !10277
  br i1 %.not.i.i.i, label %bb.bw, label %bb.bv

.loopexit.i.i:                                    ; preds = %bb.bt, %bb.bj, %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1G_NtB1G_8Generics7iter_id0EEINtB5_8FuseImplBY_E4nextB1I_.exit.i.i.i.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.i.i:                  ; preds = %_RNvXs9_NtNtNtCshzWfHUSfYae_4core4iter8adapters4fuseINtB5_4FuseINtNtB7_3map3MapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsENCNvMs_B1G_NtB1G_8Generics7iter_id0EEINtB5_8FuseImplBY_E4nextB1I_.exit.thread.i.i.i.i.i, %bb.bd
  %lpad.loopexit114.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.loopexit.split-lp.i.i:         ; preds = %bb.cb, %bb.bw
  %lpad.loopexit.split-lp115.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.loopexit.split-lp.i.i

.loopexit.split-lp.i.i:                           ; preds = %.loopexit.split-lp.loopexit.split-lp.i.i, %.loopexit.split-lp.loopexit.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit114.i.i, %.loopexit.split-lp.loopexit.i.i ], [ %lpad.loopexit.split-lp115.i.i, %.loopexit.split-lp.loopexit.split-lp.i.i ] ; 2 uses
  %i.jb = icmp eq i64 %i.dn, 0
  br i1 %i.jb, label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEECs8K4cjrcxBsw_6hir_ty.exit.i.i, label %_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i

_RNvXs_NtCsbSS6DM8SDEO_5alloc5allocNtB4_6GlobalNtNtCshzWfHUSfYae_4core5alloc9Allocator10deallocate.exit.i.i.i.i: ; preds = %.loopexit.split-lp.i.i
  call void @_RNvCsiZ68L5R9VjM_7___rustc14___rust_dealloc(ptr noundef nonnull %i.dm, i64 noundef %i.dn, i64 noundef 1) #52
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueINtNtCsbSS6DM8SDEO_5alloc5boxed3BoxSNtCs1nWGUjlayfI_19ra_ap_rustc_type_ir8VarianceEECs8K4cjrcxBsw_6hir_ty.exit.i.i

bb.bv:                                            ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB7_3map3MapINtNtB7_5chain5ChainIB2A_IB2A_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3u_3hir8generics19GenericParamDataRefEEIB2k_IB2k_INtNtB7_6filter6FilterIB2k_INtNtB7_9enumerate9EnumerateIB15_NtB48_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6x_5ArenaB5Y_E4iter0ENCNvMs3_B48_NtB48_13GenericParams19iter_early_bound_lt0ENCNvMB1w_B1u_14iter_lifetimes0ENCNvB8h_4iter0EEIB2k_IB2k_IB2k_IB5s_IB15_NtB48_20TypeOrConstParamDataEENCNvMsm_B6x_IB6V_B9n_E4iter0ENCNvB8h_19iter_type_or_consts0ENCNvB8h_30iter_type_or_consts_as_generic0EEIB2k_INtNtB7_10filter_map9FilterMapIB51_B5m_NCNvB7n_18iter_late_bound_lt0ENCNvB8h_25iter_late_bound_lifetimes0EB8I_EENCNvB8h_7iter_id0ENCNvMs_B1w_NtB1w_8Generics7iter_id0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i
  %i.jc = load i64, ptr %i.r, align 8, !alias.scope !10276, !noalias !10342, !noundef !9 ; 4 uses
  %i.jd = add i64 %i.jc, 1
  store i64 %i.jd, ptr %i.r, align 8, !alias.scope !10276, !noalias !10342
  %i.je = icmp eq i32 %i.ja, 1
  br i1 %i.je, label %bb.bz, label %.backedge

bb.bw:                                            ; preds = %_RNvXs1_NtNtNtCshzWfHUSfYae_4core4iter8adapters7flattenINtB5_7FlatMapINtNtNtBb_5slice4iter4IterNtNtCs8K4cjrcxBsw_6hir_ty8generics14SingleGenericsEINtNtB7_3map3MapINtNtB7_5chain5ChainIB2A_IB2A_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB3u_3hir8generics19GenericParamDataRefEEIB2k_IB2k_INtNtB7_6filter6FilterIB2k_INtNtB7_9enumerate9EnumerateIB15_NtB48_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB6x_5ArenaB5Y_E4iter0ENCNvMs3_B48_NtB48_13GenericParams19iter_early_bound_lt0ENCNvMB1w_B1u_14iter_lifetimes0ENCNvB8h_4iter0EEIB2k_IB2k_IB2k_IB5s_IB15_NtB48_20TypeOrConstParamDataEENCNvMsm_B6x_IB6V_B9n_E4iter0ENCNvB8h_19iter_type_or_consts0ENCNvB8h_30iter_type_or_consts_as_generic0EEIB2k_INtNtB7_10filter_map9FilterMapIB51_B5m_NCNvB7n_18iter_late_bound_lt0ENCNvB8h_25iter_late_bound_lifetimes0EB8I_EENCNvB8h_7iter_id0ENCNvMs_B1w_NtB1w_8Generics7iter_id0ENtNtNtB9_6traits8iterator8Iterator4nextB1y_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !10241
  call void @llvm.lifetime.start.p0(ptr nonnull %i.q), !noalias !10241
  invoke void @_RNvMs_NtCs8K4cjrcxBsw_6hir_ty8genericsNtB4_8Generics3def(ptr noalias nofree noundef nonnull sret([12 x i8]) align 4 captures(none) dereferenceable(12) %i.q, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.cq)
          to label %bb.bx unwind label %.loopexit.split-lp.loopexit.split-lp.i.i

bb.bx:                                            ; preds = %bb.bw
  %i.jf = load i32, ptr %i.q, align 4, !range !75, !noalias !10241, !noundef !9
  %i.jg = icmp ne i32 %i.jf, 4
  %i.jh = icmp eq i64 %i.dn, 0                    ; 3 uses
  %or.cond.i.i = or i1 %i.jh, %i.jg
  br i1 %or.cond.i.i, label %.loopexit.i, label %iter.check

iter.check:                                       ; preds = %bb.bx
  %min.iters.check = icmp ult i64 %i.dn, 8
  br i1 %min.iters.check, label %.preheader.i.i.preheader, label %vector.main.loop.iter.check

vector.main.loop.iter.check:                      ; preds = %iter.check
  %min.iters.check72 = icmp ult i64 %i.dn, 32
  br i1 %min.iters.check72, label %vec.epilog.ph, label %vector.ph

vector.ph:                                        ; preds = %vector.main.loop.iter.check
  %i.ji = and i64 %i.dn, 24
  %n.vec = and i64 %i.dn, -32                     ; 4 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.ph, %pred.store.continue135
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %pred.store.continue135 ] ; 33 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index ; 3 uses
  %i.jk = getelementptr inbounds nuw i8, ptr %i.jj, i64 16
  %wide.load = load <16 x i8>, ptr %i.jj, align 1, !alias.scope !10343
  %wide.load73 = load <16 x i8>, ptr %i.jk, align 1, !alias.scope !10343
  %i.jl = icmp eq <16 x i8> %wide.load, splat (i8 3) ; 16 uses
  %i.jm = icmp eq <16 x i8> %wide.load73, splat (i8 3) ; 16 uses
  %i.jn = extractelement <16 x i1> %i.jl, i64 0
  br i1 %i.jn, label %pred.store.if, label %pred.store.continue

pred.store.if:                                    ; preds = %vector.body
  store i8 1, ptr %i.jj, align 1, !alias.scope !10344
  br label %pred.store.continue

pred.store.continue:                              ; preds = %pred.store.if, %vector.body
  %i.jo = extractelement <16 x i1> %i.jl, i64 1
  br i1 %i.jo, label %pred.store.if74, label %pred.store.continue75

pred.store.if74:                                  ; preds = %pred.store.continue
  %i.jp = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 1
  store i8 1, ptr %i.jq, align 1, !alias.scope !10344
  br label %pred.store.continue75

pred.store.continue75:                            ; preds = %pred.store.if74, %pred.store.continue
  %i.jr = extractelement <16 x i1> %i.jl, i64 2
  br i1 %i.jr, label %pred.store.if76, label %pred.store.continue77

pred.store.if76:                                  ; preds = %pred.store.continue75
  %i.js = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 2
  store i8 1, ptr %i.jt, align 1, !alias.scope !10344
  br label %pred.store.continue77

pred.store.continue77:                            ; preds = %pred.store.if76, %pred.store.continue75
  %i.ju = extractelement <16 x i1> %i.jl, i64 3
  br i1 %i.ju, label %pred.store.if78, label %pred.store.continue79

pred.store.if78:                                  ; preds = %pred.store.continue77
  %i.jv = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jv, i64 3
  store i8 1, ptr %i.jw, align 1, !alias.scope !10344
  br label %pred.store.continue79

pred.store.continue79:                            ; preds = %pred.store.if78, %pred.store.continue77
  %i.jx = extractelement <16 x i1> %i.jl, i64 4
  br i1 %i.jx, label %pred.store.if80, label %pred.store.continue81

pred.store.if80:                                  ; preds = %pred.store.continue79
  %i.jy = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.jz = getelementptr inbounds nuw i8, ptr %i.jy, i64 4
  store i8 1, ptr %i.jz, align 1, !alias.scope !10344
  br label %pred.store.continue81

pred.store.continue81:                            ; preds = %pred.store.if80, %pred.store.continue79
  %i.ka = extractelement <16 x i1> %i.jl, i64 5
  br i1 %i.ka, label %pred.store.if82, label %pred.store.continue83

pred.store.if82:                                  ; preds = %pred.store.continue81
  %i.kb = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 5
  store i8 1, ptr %i.kc, align 1, !alias.scope !10344
  br label %pred.store.continue83

pred.store.continue83:                            ; preds = %pred.store.if82, %pred.store.continue81
  %i.kd = extractelement <16 x i1> %i.jl, i64 6
  br i1 %i.kd, label %pred.store.if84, label %pred.store.continue85

pred.store.if84:                                  ; preds = %pred.store.continue83
  %i.ke = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.kf = getelementptr inbounds nuw i8, ptr %i.ke, i64 6
  store i8 1, ptr %i.kf, align 1, !alias.scope !10344
  br label %pred.store.continue85

pred.store.continue85:                            ; preds = %pred.store.if84, %pred.store.continue83
  %i.kg = extractelement <16 x i1> %i.jl, i64 7
  br i1 %i.kg, label %pred.store.if86, label %pred.store.continue87

pred.store.if86:                                  ; preds = %pred.store.continue85
  %i.kh = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.ki = getelementptr inbounds nuw i8, ptr %i.kh, i64 7
  store i8 1, ptr %i.ki, align 1, !alias.scope !10344
  br label %pred.store.continue87

pred.store.continue87:                            ; preds = %pred.store.if86, %pred.store.continue85
  %i.kj = extractelement <16 x i1> %i.jl, i64 8
  br i1 %i.kj, label %pred.store.if88, label %pred.store.continue89

pred.store.if88:                                  ; preds = %pred.store.continue87
  %i.kk = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.kl = getelementptr inbounds nuw i8, ptr %i.kk, i64 8
  store i8 1, ptr %i.kl, align 1, !alias.scope !10344
  br label %pred.store.continue89

pred.store.continue89:                            ; preds = %pred.store.if88, %pred.store.continue87
  %i.km = extractelement <16 x i1> %i.jl, i64 9
  br i1 %i.km, label %pred.store.if90, label %pred.store.continue91

pred.store.if90:                                  ; preds = %pred.store.continue89
  %i.kn = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.ko = getelementptr inbounds nuw i8, ptr %i.kn, i64 9
  store i8 1, ptr %i.ko, align 1, !alias.scope !10344
  br label %pred.store.continue91

pred.store.continue91:                            ; preds = %pred.store.if90, %pred.store.continue89
  %i.kp = extractelement <16 x i1> %i.jl, i64 10
  br i1 %i.kp, label %pred.store.if92, label %pred.store.continue93

pred.store.if92:                                  ; preds = %pred.store.continue91
  %i.kq = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.kr = getelementptr inbounds nuw i8, ptr %i.kq, i64 10
  store i8 1, ptr %i.kr, align 1, !alias.scope !10344
  br label %pred.store.continue93

pred.store.continue93:                            ; preds = %pred.store.if92, %pred.store.continue91
  %i.ks = extractelement <16 x i1> %i.jl, i64 11
  br i1 %i.ks, label %pred.store.if94, label %pred.store.continue95

pred.store.if94:                                  ; preds = %pred.store.continue93
  %i.kt = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kt, i64 11
  store i8 1, ptr %i.ku, align 1, !alias.scope !10344
  br label %pred.store.continue95

pred.store.continue95:                            ; preds = %pred.store.if94, %pred.store.continue93
  %i.kv = extractelement <16 x i1> %i.jl, i64 12
  br i1 %i.kv, label %pred.store.if96, label %pred.store.continue97

pred.store.if96:                                  ; preds = %pred.store.continue95
  %i.kw = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.kx = getelementptr inbounds nuw i8, ptr %i.kw, i64 12
  store i8 1, ptr %i.kx, align 1, !alias.scope !10344
  br label %pred.store.continue97

pred.store.continue97:                            ; preds = %pred.store.if96, %pred.store.continue95
  %i.ky = extractelement <16 x i1> %i.jl, i64 13
  br i1 %i.ky, label %pred.store.if98, label %pred.store.continue99

pred.store.if98:                                  ; preds = %pred.store.continue97
  %i.kz = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.la = getelementptr inbounds nuw i8, ptr %i.kz, i64 13
  store i8 1, ptr %i.la, align 1, !alias.scope !10344
  br label %pred.store.continue99

pred.store.continue99:                            ; preds = %pred.store.if98, %pred.store.continue97
  %i.lb = extractelement <16 x i1> %i.jl, i64 14
  br i1 %i.lb, label %pred.store.if100, label %pred.store.continue101

pred.store.if100:                                 ; preds = %pred.store.continue99
  %i.lc = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.ld = getelementptr inbounds nuw i8, ptr %i.lc, i64 14
  store i8 1, ptr %i.ld, align 1, !alias.scope !10344
  br label %pred.store.continue101

pred.store.continue101:                           ; preds = %pred.store.if100, %pred.store.continue99
  %i.le = extractelement <16 x i1> %i.jl, i64 15
  br i1 %i.le, label %pred.store.if102, label %pred.store.continue103

pred.store.if102:                                 ; preds = %pred.store.continue101
  %i.lf = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.lg = getelementptr inbounds nuw i8, ptr %i.lf, i64 15
  store i8 1, ptr %i.lg, align 1, !alias.scope !10344
  br label %pred.store.continue103

pred.store.continue103:                           ; preds = %pred.store.if102, %pred.store.continue101
  %i.lh = extractelement <16 x i1> %i.jm, i64 0
  br i1 %i.lh, label %pred.store.if104, label %pred.store.continue105

pred.store.if104:                                 ; preds = %pred.store.continue103
  %i.li = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.lj = getelementptr inbounds nuw i8, ptr %i.li, i64 16
  store i8 1, ptr %i.lj, align 1, !alias.scope !10344
  br label %pred.store.continue105

pred.store.continue105:                           ; preds = %pred.store.if104, %pred.store.continue103
  %i.lk = extractelement <16 x i1> %i.jm, i64 1
  br i1 %i.lk, label %pred.store.if106, label %pred.store.continue107

pred.store.if106:                                 ; preds = %pred.store.continue105
  %i.ll = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ll, i64 17
  store i8 1, ptr %i.lm, align 1, !alias.scope !10344
  br label %pred.store.continue107

pred.store.continue107:                           ; preds = %pred.store.if106, %pred.store.continue105
  %i.ln = extractelement <16 x i1> %i.jm, i64 2
  br i1 %i.ln, label %pred.store.if108, label %pred.store.continue109

pred.store.if108:                                 ; preds = %pred.store.continue107
  %i.lo = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lo, i64 18
  store i8 1, ptr %i.lp, align 1, !alias.scope !10344
  br label %pred.store.continue109

pred.store.continue109:                           ; preds = %pred.store.if108, %pred.store.continue107
  %i.lq = extractelement <16 x i1> %i.jm, i64 3
  br i1 %i.lq, label %pred.store.if110, label %pred.store.continue111

pred.store.if110:                                 ; preds = %pred.store.continue109
  %i.lr = getelementptr inbounds nuw i8, ptr %i.dm, i64 %index
end_hunk_0
