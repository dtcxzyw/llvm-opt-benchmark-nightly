Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/rust-analyzer-rs/original/ide_assists-698f35cb73900ae6.ide_assists.dc31bb520690ed66-cgu.12?download=true
inline.NumInlined: 3968
inline.NumDeleted: 1797
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@_RINvXs2J_NtNtCshzWfHUSfYae_4core5slice4iterINtB7_4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes12GenericParamENtNtNtNtBb_4iter6traits8iterator8Iterator4findNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0EB2M_:bb.a
  %i.af = load atomic i64, ptr %i.ae acquire, align 8, !noalias !601 ; 0 uses
  invoke void @_RNvMs3_NtCs9GitHPCrz2Q_5rowan3arcINtB5_3ArcINtB5_11HeaderSliceNtNtNtB7_5green5token14GreenTokenHeadShEE9drop_slowB7_(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.a) #33
          to label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i unwind label %bb.f

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i: ; preds = %bb.j, %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtCs9GitHPCrz2Q_5rowan5green5token10GreenTokenECsiU5vK8fN4ZC_11ide_assists.exit.i.i.i.i, %_RNvXs3_NtCsjJXvCMGntp8_6syntax10token_textNtB5_9TokenTextINtNtCshzWfHUSfYae_4core3cmp9PartialEqReE2eq.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 48 ; 2 uses
  %i.ah = load i32, ptr %i.ag, align 4, !noundef !5
  %i.ai = add i32 %i.ah, -1                       ; 2 uses
  store i32 %i.ai, ptr %i.ag, align 4
  %i.aj = icmp eq i32 %i.ai, 0
  br i1 %i.aj, label %bb.k, label %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit

bb.k:                                             ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i.i
  call void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %i.o) #33
  br label %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit

bb.l:                                             ; preds = %bb.e
  %i.ak = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30
  unreachable

_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes8LifetimeECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %bb.f, %bb.e
  resume { ptr, i32 } %i.p

_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit: ; preds = %_RINvNtCshzWfHUSfYae_4core3ptr9drop_glueNtNtCsjJXvCMGntp8_6syntax10token_text9TokenTextECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.k
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br i1 %.sroa.0.0.i.i.i, label %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit._crit_edge, label %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit._RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread_crit_edge

_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit._RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread_crit_edge: ; preds = %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit
  %.pre = load ptr, ptr %i.d, align 8
  br label %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread

_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread: ; preds = %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit._RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread_crit_edge, %bb.c, %bb.b
  %i.al = phi ptr [ %.pre, %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit._RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread_crit_edge ], [ %i.i, %bb.c ], [ %i.i, %bb.b ] ; 2 uses
  %i.am = icmp eq ptr %i.k, %i.al
  br i1 %i.am, label %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit._crit_edge, label %bb.b

_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit._crit_edge: ; preds = %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread, %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit, %bb.a
  %.sroa.0.0 = phi ptr [ null, %bb.a ], [ %i.j, %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit ], [ null, %_RNCNvNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers18extract_type_alias21collect_used_generics13find_lifetime0B9_.exit.thread ]
  ret ptr %.sroa.0.0
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2a_8adapters10filter_map9FilterMapINtNtB3c_5chain5ChainIB38_INtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB4g_9generated5nodes12GenericParamENCNvMsO_NtB4g_8node_extNtB4W_16GenericParamList20type_or_const_params0EINtNtB3c_7flatten7FlatMapINtNtB2c_6option4IterTB5W_INtB7a_6OptionNtB4W_11WhereClauseEEEB48_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21convert_closure_to_fn27compute_closure_type_paramss1_0EENCB8d_s2_0EEB8j_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !605 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !606
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStruNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2c_8adapters3map3MapINtNtB3h_10filter_map9FilterMapINtNtB3h_5chain5ChainIB3F_INtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB4C_9generated5nodes12GenericParamENCNvMsO_NtB4C_8node_extNtB5i_16GenericParamList20type_or_const_params0EINtNtB3h_7flatten7FlatMapINtNtB2e_6option4IterTB6i_INtB7w_6OptionNtB5i_11WhereClauseEEEB4u_NCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21convert_closure_to_fn27compute_closure_type_paramss1_0EENCB8z_s2_0ENCINvXs8_NtB9_3setINtBav_7HashSetBP_B1n_EIB26_BP_E6extendB3E_E0EEB8F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2a_8adapters10filter_map9FilterMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtCs8Xq8PKFYOms_3hir12GenericParamENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21convert_closure_to_fn27compute_closure_type_params0EEB5m_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 !guid !610 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !611
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStruNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2c_8adapters3map3MapINtNtB3h_10filter_map9FilterMapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set4IterNtCs8Xq8PKFYOms_3hir12GenericParamENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers21convert_closure_to_fn27compute_closure_type_params0ENCINvXs8_NtB9_3setINtB7j_7HashSetBP_B1n_EIB26_BP_E6extendB3E_E0EEB5I_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs42xZ1oUXfIG_8smol_str7SmolStrNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2a_8adapters3map3MapINtNtB3c_7flatten7FlatMapINtNtB2c_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEINtNtB3c_10filter_map9FilterMapINtB4p_11AstChildrenNtB4l_12GenericParamENCNvMsO_NtB4p_8node_extB4j_15lifetime_params0ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24introduce_named_lifetime35generate_unique_lifetime_param_name0ENCB7l_s_0EEB7r_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %1) unnamed_addr #0 !guid !615 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(48) %1, i64 48, i1 false), !alias.scope !616
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs42xZ1oUXfIG_8smol_str7SmolStruNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2c_8adapters3map3MapIB3d_INtNtB3h_7flatten7FlatMapINtNtB2e_6option4IterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes16GenericParamListEINtNtB3h_10filter_map9FilterMapINtB4z_11AstChildrenNtB4v_12GenericParamENCNvMsO_NtB4z_8node_extB4t_15lifetime_params0ENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers24introduce_named_lifetime35generate_unique_lifetime_param_name0ENCB7v_s_0ENCINvXs8_NtB9_3setINtB9x_7HashSetBP_B1n_EIB26_BP_E6extendB3E_E0EEB7B_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(48) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs8Xq8PKFYOms_3hir12GenericParamNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2b_8adapters10filter_map9FilterMapINtNtB3d_3map3MapIB39_NtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B4c_NtB4c_10SyntaxNode11descendants0ENvYINtNtB4e_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB2d_7convert4FromB50_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function38compute_contained_params_in_where_pred0EEB7v_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1) unnamed_addr #0 !guid !620 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(40) %1, i64 40, i1 false), !alias.scope !621
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs8Xq8PKFYOms_3hir12GenericParamuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2d_8adapters3map3MapINtNtB3i_10filter_map9FilterMapIB3e_IB3G_NtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B4m_NtB4m_10SyntaxNode11descendants0ENvYINtNtB4o_3api10SyntaxNodeNtNtCsjJXvCMGntp8_6syntax11syntax_node12RustLanguageEINtNtB2f_7convert4FromB5a_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function38compute_contained_params_in_where_pred0ENCINvXs8_NtB9_3setINtB9n_7HashSetBP_B1o_EIB27_BP_E6extendB3F_E0EEB7F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs8Xq8PKFYOms_3hir12GenericParamNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2b_8adapters10filter_map9FilterMapINtNtB3d_7flatten7FlatMapIB3P_INtNtB2d_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEINtB4N_11AstChildrenNtB4J_9TypeBoundENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function41compute_contained_params_in_generic_param0EINtNtB3d_3map3MapIB39_NtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B8t_NtB8t_10SyntaxNode11descendants0ENvYINtNtB8v_3api10SyntaxNodeNtNtB4P_11syntax_node12RustLanguageEINtNtB2d_7convert4FromB9h_E4fromENCB6n_s_0ENCB6n_s0_0EEB6t_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #0 !guid !625 {
bb.a:
  %i.a = alloca [120 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(120) %1, i64 120, i1 false), !alias.scope !626
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs8Xq8PKFYOms_3hir12GenericParamuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2d_8adapters3map3MapINtNtB3i_10filter_map9FilterMapINtNtB3i_7flatten7FlatMapIB4b_INtNtB2f_6option8IntoIterNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes13TypeBoundListEINtB59_11AstChildrenNtB55_9TypeBoundENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function41compute_contained_params_in_generic_param0EIB3e_IB3G_NtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B8D_NtB8D_10SyntaxNode11descendants0ENvYINtNtB8F_3api10SyntaxNodeNtNtB5b_11syntax_node12RustLanguageEINtNtB2f_7convert4FromB9r_E4fromENCB6J_s_0ENCB6J_s0_0ENCINvXs8_NtB9_3setINtBc1_7HashSetBP_B1o_EIB27_BP_E6extendB3F_E0EEB6P_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(120) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs8Xq8PKFYOms_3hir12GenericParamNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2b_8adapters10filter_map9FilterMapINtNtB3d_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB4g_9generated5nodes9TypeBoundEINtNtB3d_3map3MapIB39_NtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B5T_NtB5T_10SyntaxNode11descendants0ENvYINtNtB5V_3api10SyntaxNodeNtNtB4i_11syntax_node12RustLanguageEINtNtB2d_7convert4FromB6H_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function38compute_contained_params_in_where_preds_0ENCB8P_s0_0EEB8V_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 !guid !630 {
bb.a:
  %i.a = alloca [88 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(88) %1, i64 88, i1 false), !alias.scope !631
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs8Xq8PKFYOms_3hir12GenericParamuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2d_8adapters3map3MapINtNtB3i_10filter_map9FilterMapINtNtB3i_7flatten7FlatMapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB4C_9generated5nodes9TypeBoundEIB3e_IB3G_NtNtCs9GitHPCrz2Q_5rowan6cursor8PreorderNCNvMs4_B63_NtB63_10SyntaxNode11descendants0ENvYINtNtB65_3api10SyntaxNodeNtNtB4E_11syntax_node12RustLanguageEINtNtB2f_7convert4FromB6R_E4fromENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function38compute_contained_params_in_where_preds_0ENCB8Z_s0_0ENCINvXs8_NtB9_3setINtBb0_7HashSetBP_B1o_EIB27_BP_E6extendB3F_E0EEB95_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(88) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtCs8Xq8PKFYOms_3hir12GenericParamNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set7HashSetBO_B1m_EECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 !guid !635 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  %i.b = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !636
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(32) %1, i64 32, i1 false), !noalias !637
  call void @_RNvXsE_NtCsfjX3T6UU9IB_9hashbrown3mapINtB5_7HashMapNtCs8Xq8PKFYOms_3hir12GenericParamuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherENtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect12IntoIterator9into_iterCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull sret([64 x i8]) align 8 captures(none) dereferenceable(64) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !636
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtCs8Xq8PKFYOms_3hir12GenericParamuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2d_8adapters3map3MapINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3set8IntoIterBP_ENCINvXs8_NtB9_3setINtB4O_7HashSetBP_B1o_EIB27_BP_E6extendINtB3I_7HashSetBP_B1o_EE0EECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2f_8adapters3map3MapINtNtB3h_6filter6FilterINtNtB3h_7flatten7FlatMapINtNtB3h_10filter_map9FilterMapINtNtNtB2f_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB5I_8node_extNtB5E_4Path8segments0ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait26remove_instantiated_params00EINtB5I_11AstChildrenNtB5E_10GenericArgENCB7n_s_0ENCB7n_s0_0ENCB7n_s1_0EEB7v_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !641 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !642
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2h_8adapters3map3MapIB3i_INtNtB3m_6filter6FilterINtNtB3m_7flatten7FlatMapINtNtB3m_10filter_map9FilterMapINtNtNtB2h_7sources10successors10SuccessorsNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes11PathSegmentNCNvMsf_NtB5S_8node_extNtB5O_4Path8segments0ENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait26remove_instantiated_params00EINtB5S_11AstChildrenNtB5O_10GenericArgENCB7x_s_0ENCB7x_s0_0ENCB7x_s1_0ENCINvXs8_NtB9_3setINtBar_7HashSetBP_B1s_EIB2b_BP_E6extendB3J_E0EEB7F_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2f_8adapters3map3MapINtNtB3h_6filter6FilterINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterRBO_lENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function21deduplicate_arg_names0ENCB55_s_0EEB5b_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(64) %1) unnamed_addr #0 !guid !646 {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(64) %1, i64 64, i1 false), !alias.scope !647
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2h_8adapters3map3MapIB3i_INtNtB3m_6filter6FilterINtNtNtNtCscAsMj0W7j8b_3std11collections4hash3map8IntoIterRBP_lENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers17generate_function21deduplicate_arg_names0ENCB5f_s_0ENCINvXs8_NtB9_3setINtB6W_7HashSetBP_B1s_EIB2b_BP_E6extendB3J_E0EEB5l_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2f_8adapters3map3MapINtNtB3h_7flatten7FlatMapIB3F_INtNtNtB2h_5array4iter8IntoIterRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeKj2_EINtNtB2h_6option6OptionNtB4G_14GenericArgListENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clauses0EINtB4K_11AstChildrenNtB4G_10GenericArgENCB6n_s_0ENCB6n_s0_0EEB6t_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %1) unnamed_addr #0 !guid !651 {
bb.a:
  %i.a = alloca [104 x i8], align 8               ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(104) %1, i64 104, i1 false), !alias.scope !652
  call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2h_8adapters3map3MapIB3i_INtNtB3m_7flatten7FlatMapIB3P_INtNtNtB2j_5array4iter8IntoIterRNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes4TypeKj2_EINtNtB2j_6option6OptionNtB4Q_14GenericArgListENCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait28remove_useless_where_clauses0EINtB4U_11AstChildrenNtB4Q_10GenericArgENCB6x_s_0ENCB6x_s0_0ENCINvXs8_NtB9_3setINtB9f_7HashSetBP_B1s_EIB2b_BP_E6extendB3J_E0EEB6D_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(104) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs8_NtCsfjX3T6UU9IB_9hashbrown3setINtB6_7HashSetNtNtCsbSS6DM8SDEO_5alloc6string6StringNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendBO_E6extendINtNtNtB2f_8adapters3map3MapINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3H_9generated5nodes10GenericArgENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13generate_impls2_00EEB58_(ptr noalias nofree noundef align 8 dereferenceable(32) %0, ptr noundef %1) unnamed_addr #0 !guid !653 {
bb.a:
  tail call void @_RINvXs1i_NtCsfjX3T6UU9IB_9hashbrown3mapINtB7_7HashMapNtNtCsbSS6DM8SDEO_5alloc6string6StringuNtCsh04pLiDBs3j_10rustc_hash13FxBuildHasherEINtNtNtNtCshzWfHUSfYae_4core4iter6traits7collect6ExtendTBP_uEE6extendINtNtNtB2h_8adapters3map3MapIB3i_INtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB3R_9generated5nodes10GenericArgENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers23generate_delegate_trait13generate_impls2_00ENCINvXs8_NtB9_3setINtB6L_7HashSetBP_B1s_EIB2b_BP_E6extendB3J_E0EEB5i_(ptr noalias nofree noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBhq_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !663 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !664)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !665
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !664, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !666
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !665
  store ptr %i.d, ptr %i.c, align 8, !noalias !667
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !667
  store ptr %i.c, ptr %i.b, align 8, !noalias !668
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !668
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !668
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB8b_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !669
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !668
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !667
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !667, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcb_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !665
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !664, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !665, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBbO_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcJ_4Typej1_E0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBhq_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBgv_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !679 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !680)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !681
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !680, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !682
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !682
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !681
  store ptr %i.d, ptr %i.c, align 8, !noalias !683
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !683
  store ptr %i.c, ptr %i.b, align 8, !noalias !684
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !684
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !684
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB8b_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !685
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !684
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !683
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtB89_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !683, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcb_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbg_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !681
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcT_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !680, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !681, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBbO_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBfu_4Typej1_E0INt, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysANtBcJ_4Typej1_E0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBi6_IB2W_IBiL_IB4a_NtNtBej_2ty2TyEENCBjN_s_0EINtNtNtB9_7sources5empty5EmptyBjY_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBjb_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !695 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !696)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !697
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !696, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !698
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !698
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !697
  store ptr %i.d, ptr %i.c, align 8, !noalias !699
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !699
  store ptr %i.c, ptr %i.b, align 8, !noalias !700
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !700
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !700
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB8R_IB9m_IBa0_IBam_NtNtB3V_2ty2TyEENCBbn_s_0EINtNtNtB10_7sources5empty5EmptyBby_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaL_Kja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !701
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !700
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !699
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBaM_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !699, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBcR_IBO_IBdU_IB1U_NtNtB94_2ty2TyEENCBeW_s_0EINtNtNtBa_7sources5empty5EmptyBf7_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBek_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !697
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !696, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !697, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBdX_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecBes_Kja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2W_IBaX_INtNtB7_6copied6CopiedIB4a_NtBgv_10GenericArgEENCNvBgr_5types0ENCNvMs1x_Bhq_NtBhq_4Type14type_arguments0EIBi6_IB2W_IBiL_IB4a_NtNtBej_2ty2TyEENCBjN_s_0EINtNtNtB9_7sources5empty5EmptyBjY_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBjb_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !711 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !712)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !713
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !712, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !714
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !714
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !713
  store ptr %i.d, ptr %i.c, align 8, !noalias !715
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !715
  store ptr %i.c, ptr %i.b, align 8, !noalias !716
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !716
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !716
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtBW_3MapINtNtBY_10filter_map9FilterMapINtNtBY_6copied6CopiedINtNtNtBb_5slice4iter4IterNtB7g_10GenericArgEENCNvB7c_5types0ENCNvMs1x_B8b_NtB8b_4Type14type_arguments0EIB8R_IB9m_IBa0_IBam_NtNtB3V_2ty2TyEENCBbn_s_0EINtNtNtB10_7sources5empty5EmptyBby_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaL_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !717
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !716
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !715
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherINtB2Z_3MapINtNtB31_10filter_map9FilterMapINtNtB31_6copied6CopiedINtNtNtB8_5slice4iter4IterNtB7e_10GenericArgEENCNvB7a_5types0ENCNvMs1x_B89_NtB89_4Type14type_arguments0EIB8P_IB9k_IBa0_IBan_NtNtB4n_2ty2TyEENCBbo_s_0EINtNtNtB2b_7sources5empty5EmptyBbz_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBaM_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !715, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1U_NtBbg_10GenericArgEENCNvBbc_5types0ENCNvMs1x_Bcb_NtBcb_4Type14type_arguments0EIBcR_IBO_IBdU_IB1U_NtNtB94_2ty2TyEENCBeW_s_0EINtNtNtBa_7sources5empty5EmptyBf7_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBek_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !713
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIB2O_INtNtB7_10filter_map9FilterMapINtNtB7_6copied6CopiedIB42_NtBbY_10GenericArgEENCNvBbU_5types0ENCNvMs1x_BcT_NtBcT_4Type14type_arguments0EIBdz_IB2O_, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !712, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !713, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_INtNtB8_10filter_map9FilterMapINtNtB8_6copied6CopiedIB1y_NtBaT_10GenericArgEENCNvBaP_5types0ENCNvMs1x_BbO_NtBbO_4Type14type_arguments0EIBcu_IBO_IBdx_IB1y_NtNtB8H_2ty2TyEENCBez_s_0EINtNtNtBa_7sources5empty5EmptyBeK_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBdX_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6ei, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtCs83ee1IJTiSq_6either6EitherIBO_IBY_INtNtB8_6copied6CopiedIB2k_NtBbO_10GenericArgEENCNvBbK_5types0ENCNvMs1x_BcJ_NtBcJ_4Type14type_arguments0EIBdp_IBO_IBe2_IB2k_NtNtB9C_2ty2TyEENCBf4_s_0EINtNtNtBa_7sources5empty5EmptyBff_EEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecBes_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB4a_NtBhq_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !727 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !728)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !729
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !728, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !730
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !730
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !729
  store ptr %i.d, ptr %i.c, align 8, !noalias !731
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !731
  store ptr %i.c, ptr %i.b, align 8, !noalias !732
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !732
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !732
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB8b_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !733
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !732
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !731
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !731, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1U_NtBcb_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !729
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !728, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !729, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1y_NtBbO_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB2k_NtBcJ_4TypeEEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB4a_NtBhq_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBgv_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !743 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !744)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !745
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !744, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !746
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !746
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !745
  store ptr %i.d, ptr %i.c, align 8, !noalias !747
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !747
  store ptr %i.c, ptr %i.b, align 8, !noalias !748
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !748
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !748
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtBY_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtB8b_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !749
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !748
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !747
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB31_6cloned6ClonedINtNtNtB8_5slice4iter4IterNtB89_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !747, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1U_NtBcb_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbg_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !745
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6ClonedIB42_NtBcT_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !744, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !745, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB1y_NtBbO_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBaT_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB7_6cloned6Clon, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysINtNtB8_6cloned6ClonedIB2k_NtBcJ_4TypeEEE0INtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0IBi7_NtBgv_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !759 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !760)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !761
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !760, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !762
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !761
  store ptr %i.d, ptr %i.c, align 8, !noalias !763
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !763
  store ptr %i.c, ptr %i.b, align 8, !noalias !764
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !764
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !764
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB8b_4TypeEE0IB8S_NtB7g_10GenericArgEE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !764
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !763
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0IB8Q_NtB7e_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !763, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcb_4TypeEE0IBcS_NtBbg_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !761
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0IBdA_NtBbY_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !760, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !761, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0IBcv_NtBaT_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0IBdq_NtBbO_10GenericArgEE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_IBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2W_INtNtB7_6filter6FilterIB2W_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB2d_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB58_5ArenaB4z_E4iter0ENCNvMs3_B2d_NtB2d_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6T_14SingleGenerics14iter_lifetimes0ENCNvB6S_4iter0EEIB2W_IB2W_IB2W_IB3I_IB4a_NtB2d_20TypeOrConstParamDataEENCNvMsm_B58_IB5w_B8I_E4iter0ENCNvB6S_19iter_type_or_consts0ENCNvB6S_30iter_type_or_consts_as_generic0EEIB2W_INtNtB7_10filter_map9FilterMapIB3h_B3C_NCNvB5Y_18iter_late_bound_lt0ENCNvB6S_25iter_late_bound_lifetimes0EB83_EENtNtNtB9_6traits8iterator8Iterator4folduQNCINvB2Y_8map_foldB1w_TB1x_INtB1b_6OptionRB4z_EEuNCNvMNtNtB6V_11next_solver8genericsNtBeh_8Generics4iter0QNCINvNvXs_B3K_IB3I_pEBcK_4fold9enumerateBdL_uNCINvNvBcK_8for_each4callTjBdL_ENCINvMss_NtBej_11generic_argNtBgv_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBhq_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBgv_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(160) %0, ptr noalias nofree noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !775 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 5 uses
  %i.d = alloca [8 x i8], align 8                 ; 5 uses
  %i.e = alloca [120 x i8], align 8               ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.f, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 144
  %i.h = load i64, ptr %i.g, align 8, !range !20, !noundef !5
  %.not = icmp eq i64 %i.h, 3
  br i1 %.not, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.e, ptr noundef nonnull align 8 dereferenceable(120) %i.i, i64 120, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !776)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.f, ptr %i.d, align 8, !noalias !777
  %i.j = getelementptr inbounds nuw i8, ptr %i.e, i64 104 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !range !21, !alias.scope !776, !noundef !5 ; 3 uses
  %.not.i = icmp eq i64 %i.k, -3
  br i1 %.not.i, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  %.sroa.3.0.copyload = load i32, ptr %.sroa.3.0..sroa_idx, align 8, !noalias !778
  %i.m = load <2 x i64>, ptr %i.j, align 8, !noalias !778
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !777
  store ptr %i.d, ptr %i.c, align 8, !noalias !779
  %.not.i.i = icmp eq i64 %i.k, -2
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !779
  store ptr %i.c, ptr %i.b, align 8, !noalias !780
  %.not7.i.i.i = icmp eq i64 %i.k, -1
  br i1 %.not7.i.i.i, label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, label %.lr.ph.split.us.i.i.i

.lr.ph.split.us.i.i.i:                            ; preds = %bb.d
  %.sroa.4.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !780
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 120
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.n, i64 24, i1 false)
  store <2 x i64> %i.m, ptr %.sroa.4.0..sroa_idx.i.i.i, align 8, !noalias !780
  call void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQQQNCINvNtNtNtBb_4iter8adapters3map8map_foldTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1z_3hir8generics19GenericParamDataRefETB1x_INtNtBb_6option6OptionRNtB2d_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB3T_8Generics4iter0QNCINvNvXs_NtBY_9enumerateINtB5a_9EnumeratepENtNtNtB10_6traits8iterator8Iterator4fold9enumerateB2U_uNCINvNvB5I_8for_each4callTjB2U_ENCINvMss_NtB3V_11generic_argNtB7g_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB8b_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7g_10GenericArgKja_EE0E0E0E0INtB7_5FnMutTuB1w_EE8call_mutCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias nofree noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !noalias !781
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !780
  br label %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i

_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i: ; preds = %.lr.ph.split.us.i.i.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !779
  br label %bb.e

bb.e:                                             ; preds = %_RINvYINtNtCshzWfHUSfYae_4core6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtBK_3hir8generics19GenericParamDataRefEENtNtNtNtB8_4iter6traits8iterator8Iterator4folduQQQQNCINvNtNtB2b_8adapters3map8map_foldBH_TBI_INtB6_6OptionRNtB1o_17LifetimeParamDataEEuNCNvMNtNtCs8K4cjrcxBsw_6hir_ty11next_solver8genericsNtB4l_8Generics4iter0QNCINvNvXs_NtB31_9enumerateINtB5C_9EnumeratepEB25_4fold9enumerateB3w_uNCINvNvB25_8for_each4callTjB3w_ENCINvMss_NtB4n_11generic_argNtB7e_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtB89_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtB7e_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i.i, %bb.c
  %.not2.i.i = icmp eq i32 %.sroa.3.0.copyload, -1
  br i1 %.not2.i.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.o = load ptr, ptr %i.c, align 8, !noalias !779, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_INtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3r_5ArenaB2j_E4iter0ENCNvMs3_B2l_NtB2l_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5c_14SingleGenerics14iter_lifetimes0ENCNvB5b_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQQQNCINvB6_8map_foldTNtB2p_14GenericParamIdNtB2l_19GenericParamDataRefETB7A_INtNtBc_6option6OptionRB2j_EEuNCNvMNtNtB5e_11next_solver8genericsNtB92_8Generics4iter0QNCINvNvXs_B1u_IB1s_pEB6B_4fold9enumerateB8o_uNCINvNvB6B_8for_each4callTjB8o_ENCINvMss_NtB94_11generic_argNtBbg_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcb_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbg_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(80) %i.l, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.o)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i: ; preds = %bb.f, %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !777
  br label %bb.g

bb.g:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainINtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1r_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2O_INtNtB7_6filter6FilterIB2O_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB25_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB50_5ArenaB4r_E4iter0ENCNvMs3_B25_NtB25_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6L_14SingleGenerics14iter_lifetimes0ENCNvB6K_4iter0EENtNtNtB9_6traits8iterator8Iterator4folduQQQNCINvB2Q_8map_foldB1o_TB1p_INtB13_6OptionRB4r_EEuNCNvMNtNtB6N_11next_solver8genericsNtB9K_8Generics4iter0QNCINvNvXs_B3C_IB3A_pEB8b_4fold9enumerateB9e_uNCINvNvB8b_8for_each4callTjB9e_ENCINvMss_NtB9M_11generic_argNtBbY_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcT_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbY_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists.exit.i, %bb.b
  %i.p = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.q = load i32, ptr %i.p, align 8, !range !22, !alias.scope !776, !noundef !5
  %.not2.i = icmp eq i32 %i.q, -1
  br i1 %.not2.i, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.r = load ptr, ptr %i.d, align 8, !noalias !777, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapIBO_IBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics20TypeOrConstParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB38_5ArenaB1X_E4iter0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB3Z_14SingleGenerics19iter_type_or_consts0ENCNvB3Y_30iter_type_or_consts_as_generic0ENtNtNtBa_6traits8iterator8Iterator4folduQQNCINvB6_8map_foldTNtB23_14GenericParamIdNtB1Z_19GenericParamDataRefETB6S_INtNtBc_6option6OptionRNtB1Z_17LifetimeParamDataEEuNCNvMNtNtB41_11next_solver8genericsNtB8F_8Generics4iter0QNCINvNvXs_B18_IB16_pEB5U_4fold9enumerateB7G_uNCINvNvB5U_8for_each4callTjB7G_ENCINvMss_NtB8H_11generic_argNtBaT_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBbO_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBaT_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(120) %i.i, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.r)
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_: ; preds = %bb.g, %bb.h
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.i

bb.i:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtBb_6option8IntoIterTNtCsileJQcQObtj_7hir_def14GenericParamIdNtNtNtB1v_3hir8generics19GenericParamDataRefEEINtNtB7_3map3MapIB2S_INtNtB7_6filter6FilterIB2S_INtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtB29_17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB54_5ArenaB4v_E4iter0ENCNvMs3_B29_NtB29_13GenericParams19iter_early_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB6P_14SingleGenerics14iter_lifetimes0ENCNvB6O_4iter0EEIB2S_IB2S_IB2S_IB3E_IB46_NtB29_20TypeOrConstParamDataEENCNvMsm_B54_IB5s_B8E_E4iter0ENCNvB6O_19iter_type_or_consts0ENCNvB6O_30iter_type_or_consts_as_generic0EENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvB2U_8map_foldB1s_TB1t_INtB17_6OptionRB4v_EEuNCNvMNtNtB6R_11next_solver8genericsNtBcl_8Generics4iter0QNCINvNvXs_B3G_IB3E_pEBaN_4fold9enumerateBbP_uNCINvNvBaN_8for_each4callTjBbP_ENCINvMss_NtBcn_11generic_argNtBez_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_, %bb.a
  %i.s = load i32, ptr %0, align 8, !range !22, !noundef !5
  %.not2 = icmp eq i32 %i.s, -1
  br i1 %.not2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.t = load ptr, ptr %i.f, align 8, !nonnull !5, !align !10, !noundef !5
  call void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_6filter6FilterIBO_INtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtNtCsileJQcQObtj_7hir_def3hir8generics17LifetimeParamDataEENCNvMsm_Csbq3eHDLgq0Z_8la_arenaINtB3R_5ArenaB2J_E4iter0ENCNvMs3_B2L_NtB2L_13GenericParams18iter_late_bound_lt0ENCNvMNtCs8K4cjrcxBsw_6hir_ty8genericsNtB5B_14SingleGenerics25iter_late_bound_lifetimes0ENCNvB5A_4iter0ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldTNtB2P_14GenericParamIdNtB2L_19GenericParamDataRefETB88_INtNtBc_6option6OptionRB2J_EEuNCNvMNtNtB5D_11next_solver8genericsNtB9A_8Generics4iter0QNCINvNvXs_B1U_IB1S_pEB7b_4fold9enumerateB8W_uNCINvNvB7b_8for_each4callTjB8W_ENCINvMss_NtB9C_11generic_argNtBbO_11GenericArgs12fill_builderNCINvCs8Xq8PKFYOms_3hir21generic_args_from_tysRINtNtCsbSS6DM8SDEO_5alloc3vec3VecNtBcJ_4TypeEE0INtNtCs474hSbRjvii_8arrayvec8arrayvec8ArrayVecNtBbO_10GenericArgKja_EE0E0E0E0ECsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(40) %0, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.t)
  br label %bb.k

bb.k:                                             ; preds = %bb.i, %bb.j
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtB7_4take4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB1p_9generated5nodes3PatEEINtNtB7_3map3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipB1m_EENtNtNtB9_6traits8iterator8Iterator4folduNCINvB2C_8map_foldB23_TB23_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1r_11syntax_node12RustLanguageEEuNCINvNtNtB1p_14syntax_factory12constructors14iterator_inputB23_BO_E0NCINvNvB66_8for_each4callB76_NCINvNvNtB6a_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB23_EIBaN_B7b_EEB76_E0E0E0EB4i_(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(104) %0, ptr noalias nofree noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !guid !806 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 9 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = alloca [16 x i8], align 8                ; 7 uses
  %i.f = alloca [8 x i8], align 8                 ; 5 uses
  %i.g = alloca [80 x i8], align 8                ; 7 uses
  %i.h = alloca [8 x i8], align 8                 ; 3 uses
  store ptr %1, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !range !13, !noundef !5
  %.not = icmp eq i64 %i.j, 2
  br i1 %.not, label %bb.o, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(80) %i.g, ptr noundef nonnull align 8 dereferenceable(80) %i.i, i64 80, i1 false)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !807)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %i.h, ptr %i.f, align 8, !noalias !808
  %i.k = load i64, ptr %i.g, align 8, !range !8, !alias.scope !807, !noundef !5
  %i.l = trunc nuw i64 %i.k to i1
  br i1 %i.l, label %bb.c, label %bb.m

bb.c:                                             ; preds = %bb.b
  %i.m = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.n = load ptr, ptr %i.m, align 8, !alias.scope !807, !noundef !5 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  %i.p = load i64, ptr %i.o, align 8, !alias.scope !807, !noundef !5 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !809
  store ptr %i.n, ptr %i.e, align 8, !noalias !810
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 8 ; 2 uses
  store i64 %i.p, ptr %i.q, align 8, !noalias !810
  %i.r = icmp eq i64 %i.p, 0
  br i1 %i.r, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB2Z_17NeverShortCircuituE10wrap_mut_2uB1F_QQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB6U_BN_INtB4a_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB4w_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBc3_B4B_EEB4w_E0E0E0E0B3k_EB8Z_.exit.i.i.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !811
  store ptr %i.q, ptr %i.d, align 8, !noalias !812
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store ptr %i.f, ptr %i.s, align 8, !noalias !812
  br label %bb.e

bb.e:                                             ; preds = %.noexc2.i.i.i, %bb.d
  %i.t = invoke { i64, ptr } @_RNvXs_NtCsjJXvCMGntp8_6syntax3astINtB4_11AstChildrenNtNtNtB4_9generated5nodes3PatENtNtNtNtCshzWfHUSfYae_4core4iter6traits8iterator8Iterator4nextCsiU5vK8fN4ZC_11ide_assists(ptr noalias nofree noundef nonnull align 8 dereferenceable(16) %i.e)
          to label %.noexc.i.i.i unwind label %bb.g, !noalias !807 ; 2 uses

.noexc.i.i.i:                                     ; preds = %bb.e
  %i.u = extractvalue { i64, ptr } %i.t, 0        ; 2 uses
  %.not.not.not.not.i.not.i.i.i.i = icmp eq i64 %i.u, -1
  br i1 %.not.not.not.not.i.not.i.i.i.i, label %.sink.split.i.i.i.i, label %bb.f

bb.f:                                             ; preds = %.noexc.i.i.i
  %i.v = extractvalue { i64, ptr } %i.t, 1
  call void @llvm.experimental.noalias.scope.decl(metadata !813)
  %i.w = load ptr, ptr %i.d, align 8, !alias.scope !813, !noalias !812, !nonnull !5, !align !10, !noundef !5 ; 2 uses
  %i.x = load i64, ptr %i.w, align 8, !noalias !814, !noundef !5
  %i.y = add i64 %i.x, -1
  store i64 %i.y, ptr %i.w, align 8, !noalias !814
  invoke void @_RNvXs1_NtNtNtCshzWfHUSfYae_4core3ops8function5implsQQNCINvNtNtNtBb_4iter8adapters3map8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatTB1u_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB1C_11syntax_node12RustLanguageEEuNCINvNtNtB1A_14syntax_factory12constructors14iterator_inputB1u_INtNtBW_5chain5ChainIB4J_INtNtBW_4take4TakeINtB1A_11AstChildrenB1u_EEINtBU_3MapINtNtBW_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtBW_4skip4SkipB5p_EEE0NCINvNvNtNtNtBY_6traits8iterator8Iterator8for_each4callB2l_NCINvNvNtB9t_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1u_EIBb1_B2q_EEB2l_E0E0E0INtB7_5FnMutTuB1u_EE8call_mutB7s_(ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.s, i64 noundef range(i64 0, 18) %i.u, ptr noundef %i.v)
          to label %.noexc2.i.i.i unwind label %bb.g, !noalias !807

.noexc2.i.i.i:                                    ; preds = %bb.f
  %i.z = load ptr, ptr %i.d, align 8, !alias.scope !813, !noalias !812, !nonnull !5, !align !10, !noundef !5
  %i.aa = load i64, ptr %i.z, align 8, !noalias !807, !noundef !5
  %i.ab = icmp eq i64 %i.aa, 0
  br i1 %i.ab, label %.sink.split.i.i.i.i, label %bb.e

.sink.split.i.i.i.i:                              ; preds = %.noexc2.i.i.i, %.noexc.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !811
  %.val.pre.i.i.i = load ptr, ptr %i.e, align 8, !noalias !810
  br label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB2Z_17NeverShortCircuituE10wrap_mut_2uB1F_QQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB6U_BN_INtB4a_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB4w_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBc3_B4B_EEB4w_E0E0E0E0B3k_EB8Z_.exit.i.i.i

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup                                 ; 3 uses
  %.val1.i.i.i = load ptr, ptr %i.e, align 8, !noalias !810, !noundef !5 ; 3 uses
  %i.ad = icmp eq ptr %.val1.i.i.i, null
  br i1 %i.ad, label %.body, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ae = getelementptr inbounds nuw i8, ptr %.val1.i.i.i, i64 48 ; 2 uses
  %i.af = load i32, ptr %i.ae, align 4, !noalias !807, !noundef !5
  %i.ag = add i32 %i.af, -1                       ; 2 uses
  store i32 %i.ag, ptr %i.ae, align 4, !noalias !807
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %bb.i, label %.body

bb.i:                                             ; preds = %bb.h
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val1.i.i.i) #33
          to label %.body unwind label %bb.l, !noalias !807

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB2Z_17NeverShortCircuituE10wrap_mut_2uB1F_QQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB6U_BN_INtB4a_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB4w_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBc3_B4B_EEB4w_E0E0E0E0B3k_EB8Z_.exit.i.i.i: ; preds = %.sink.split.i.i.i.i, %bb.c
  %.val.i.i.i = phi ptr [ %.val.pre.i.i.i, %.sink.split.i.i.i.i ], [ %i.n, %bb.c ] ; 3 uses
  %i.ai = icmp eq ptr %.val.i.i.i, null
  br i1 %i.ai, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB5G_BN_INtB2W_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB3i_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBaP_B3n_EEB3i_E0E0E0EB7L_.exit.i, label %bb.j

bb.j:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB2Z_17NeverShortCircuituE10wrap_mut_2uB1F_QQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB6U_BN_INtB4a_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB4w_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBc3_B4B_EEB4w_E0E0E0E0B3k_EB8Z_.exit.i.i.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.val.i.i.i, i64 48 ; 2 uses
  %i.ak = load i32, ptr %i.aj, align 4, !noalias !807, !noundef !5
  %i.al = add i32 %i.ak, -1                       ; 2 uses
  store i32 %i.al, ptr %i.aj, align 4, !noalias !807
  %i.am = icmp eq i32 %i.al, 0
  br i1 %i.am, label %bb.k, label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB5G_BN_INtB2W_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB3i_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBaP_B3n_EEB3i_E0E0E0EB7L_.exit.i

bb.k:                                             ; preds = %bb.j
  invoke void @_RNvNtCs9GitHPCrz2Q_5rowan6cursor4free(ptr noundef nonnull %.val.i.i.i) #33
          to label %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB5G_BN_INtB2W_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB3i_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBaP_B3n_EEB3i_E0E0E0EB7L_.exit.i unwind label %bb.p

bb.l:                                             ; preds = %bb.i
  %i.an = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCshzWfHUSfYae_4core9panicking16panic_in_cleanup() #30, !noalias !807
  unreachable

_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB5G_BN_INtB2W_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB3i_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBaP_B3n_EEB3i_E0E0E0EB7L_.exit.i: ; preds = %bb.k, %bb.j, %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator8try_folduNCINvMNtNtBb_3ops9try_traitINtB2Z_17NeverShortCircuituE10wrap_mut_2uB1F_QQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB6U_BN_INtB4a_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB4w_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBc3_B4B_EEB4w_E0E0E0E0B3k_EB8Z_.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !809
  br label %bb.m

bb.m:                                             ; preds = %_RINvXs_NtNtNtCshzWfHUSfYae_4core4iter8adapters4takeINtB5_4TakeINtNtCsjJXvCMGntp8_6syntax3ast11AstChildrenNtNtNtB11_9generated5nodes3PatEENtNtNtB9_6traits8iterator8Iterator4folduQQNCINvNtB7_3map8map_foldB1F_TB1F_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB13_11syntax_node12RustLanguageEEuNCINvNtNtB11_14syntax_factory12constructors14iterator_inputB1F_INtNtB7_5chain5ChainIB5G_BN_INtB2W_3MapINtNtB7_9enumerate9EnumerateINtNtNtBb_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00EEINtNtB7_4skip4SkipBY_EEE0NCINvNvB2b_8for_each4callB3i_NCINvNvNtB2f_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB1F_EIBaP_B3n_EEB3i_E0E0E0EB7L_.exit.i, %bb.b
  %i.ao = getelementptr inbounds nuw i8, ptr %i.g, i64 24 ; 2 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !alias.scope !807, !noundef !5
  %.not.i = icmp eq ptr %i.ap, null
  br i1 %.not.i, label %bb.q, label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.aq = load ptr, ptr %i.f, align 8, !noalias !808, !nonnull !5, !align !10, !noundef !5
  invoke void @_RINvXs0_NtNtNtCshzWfHUSfYae_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtCs8Xq8PKFYOms_3hir4TypeEENCNCNvNtNtCsiU5vK8fN4ZC_11ide_assists8handlers19expand_rest_pattern25expand_tuple_rest_pattern00ENtNtNtBa_6traits8iterator8Iterator4folduQNCINvB6_8map_foldNtNtNtNtCsjJXvCMGntp8_6syntax3ast9generated5nodes3PatTB4L_INtNtCs9GitHPCrz2Q_5rowan3api10SyntaxNodeNtNtB4T_11syntax_node12RustLanguageEEuNCINvNtNtB4R_14syntax_factory12constructors14iterator_inputB4L_INtNtB8_5chain5ChainIB80_INtNtB8_4take4TakeINtB4R_11AstChildrenB4L_EEBN_EINtNtB8_4skip4SkipB8G_EEE0NCINvNvB3P_8for_each4callB5C_NCINvNvNtB3T_7collect14default_extend8extenderTINtNtCsbSS6DM8SDEO_5alloc3vec3VecB4L_EIBaP_B5H_EEB5C_E0E0E0EB2q_(ptr noalias nofree noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.ao, ptr noalias nofree noundef nonnull align 8 dereferenceable(8) %i.aq)
          to label %bb.q unwind label %bb.p
end_hunk_0
