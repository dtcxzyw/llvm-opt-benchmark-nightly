Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB33_16DataTypeSelector12into_columnss0_0ENCINvXs8_B1o_INtB1o_8IndexSetB25_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB25_E6extendBX_E0ENtNtB5R_8iterator8Iterator4folduNCINvNvB6A_8for_each4callTB25_uENCINvXsb_NtB1q_3mapINtB7L_8IndexMapB25_uB4Z_EIB5N_B7v_E6extendBN_E0E0EB37_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB1p_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1p_5aexpr5AExprEEB2h_ENCNvNtB1r_5utils24aexpr_to_leaf_names_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB3c_6pl_str10PlSmallStrB5V_uNvYB5V_NtNtBc_5clone5Clone5cloneNCIB5G_B5V_TB5V_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7p_8IndexSetB5V_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB53_7collect6ExtendB5V_E6extendINtNtB8_6cloned6ClonedBN_EE0NCINvNvB4Z_8for_each4callB78_NCINvXsb_NtB7r_3mapINtBaD_8IndexMapB5V_uB8c_EIB90_B78_E6extendIBO_B9z_B7g_EE0E0E0E0EB1r_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !47427 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !47512
  %i.d = load ptr, ptr %i.c, align 8, !dbg !47512, !nonnull !2315, !align !2417, !noundef !2315 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8, !dbg !47513
  %.val = load ptr, ptr %i.e, align 8, !dbg !47513
  %i.f = getelementptr i8, ptr %i.d, i64 16, !dbg !47513
  %.val1 = load i64, ptr %i.f, align 8, !dbg !47513
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47505), !dbg !47513
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !47514
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !47514, !alias.scope !47505 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.3.0.copyload.i, null, !dbg !47515
  br i1 %.not.i.i, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB19_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB19_5aexpr5AExprEEB21_ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB2n_RNtNtB2W_6pl_str10PlSmallStruNCNvNtB1b_5utils24aexpr_to_leaf_names_iter0NCIB4I_B56_B57_uNvYB57_NtNtBc_5clone5Clone5cloneNCIB4I_B57_TB57_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7u_8IndexSetB57_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB45_7collect6ExtendB57_E6extendINtNtB8_6cloned6ClonedINtB4K_3MapBR_B5z_EEE0NCINvNvB41_8for_each4callB7d_NCINvXsb_NtB7w_3mapINtBaY_8IndexMapB57_uB8h_EIB95_B7d_E6extendIBa1_B9E_B7l_EE0E0E0E0E0EB1b_.exit, label %bb.b, !dbg !47516

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !47514
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !47517, !noalias !47506
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false), !dbg !47518, !noalias !47507
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i, !dbg !47519

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge, %bb.b
  %i.g = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !47520, !noalias !47508 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i, %bb.i, %bb.d, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i, %bb.h, %bb.f
  %lpad.loopexit.split-lp4 = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !47521
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit.i.i.i.i unwind label %bb.k, !dbg !47522, !noalias !47508

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i
  %i.i = extractvalue { i64, ptr } %i.g, 1, !dbg !47523 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null, !dbg !47523
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB11_5aexpr5AExprEEINtNtBc_6option6OptionNtNtB11_7expr_ir10ColumnNodeEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneB2Z_uNCINvB6_8map_foldB3l_RNtNtB1Z_6pl_str10PlSmallStruNCNvNtB13_5utils24aexpr_to_leaf_names_iter0NCIB56_B5o_B5p_uNvYB5p_NtNtBc_5clone5Clone5cloneNCIB56_B5p_TB5p_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7M_8IndexSetB5p_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3T_7collect6ExtendB5p_E6extendINtNtB8_6cloned6ClonedIBO_INtB4y_7FlatMapBX_B2Z_B1T_EB5R_EEE0NCINvNvB3P_8for_each4callB7v_NCINvXsb_NtB7O_3mapINtBbx_8IndexMapB5p_uB8z_EIB9n_B7v_E6extendIBO_B9W_B7D_EE0E0E0E0E0E0EB13_.exit.i.i, label %bb.d, !dbg !47524

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { i64, ptr } %i.g, 0, !dbg !47523
  %i.k = invoke { i64, i64 } %.sroa.3.0.copyload.i(i64 noundef %i.j, ptr noundef nonnull align 16 %i.i)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !47525, !noalias !47508, !inline_history !47455 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.l = extractvalue { i64, i64 } %i.k, 0, !dbg !47526
  %i.m = extractvalue { i64, i64 } %i.k, 1, !dbg !47526 ; 2 uses
  %i.n = trunc nuw i64 %i.l to i1, !dbg !47527
  br i1 %i.n, label %bb.e, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge, !dbg !47527

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.o = icmp ult i64 %i.m, %.val1, !dbg !47528
  br i1 %i.o, label %bb.g, label %bb.f, !dbg !47528, !prof !2318

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #45
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !47529, !noalias !47508

.noexc6.i.i.i.i:                                  ; preds = %bb.f
  unreachable, !dbg !47529

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %.val, i64 %i.m, !dbg !47530 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112, !dbg !47531
  %i.r = load i64, ptr %i.q, align 16, !dbg !47531, !range !2784, !noalias !47509, !noundef !2315 ; 2 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775791, !dbg !47531
  call void @llvm.assume(i1 %i.s), !dbg !47531
  %i.t = icmp eq i64 %i.r, -9223372036854775806, !dbg !47532
  br i1 %i.t, label %_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i, label %bb.h, !dbg !47532, !prof !2318

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #45
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !47533, !noalias !47508

.noexc7.i.i.i.i:                                  ; preds = %bb.h
  unreachable, !dbg !47533

_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !47534, !noalias !47510
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 23, !dbg !47534
  %i.v = load i8, ptr %i.u, align 1, !dbg !47534, !range !2517, !alias.scope !47511, !noalias !47509, !noundef !2315
  %i.w = icmp eq i8 %i.v, -40, !dbg !47535
  br i1 %i.w, label %bb.i, label %bb.j, !dbg !47535

bb.i:                                             ; preds = %_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #49
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !47536, !noalias !47508

bb.j:                                             ; preds = %_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !47537, !noalias !47509
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i, !dbg !47538

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.x = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !47539, !noalias !47508 ; 0 uses

.noexc9.i.i.i.i:                                  ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !47540, !noalias !47510
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge, !dbg !47541

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge: ; preds = %.noexc9.i.i.i.i, %.noexc.i.i.i.i
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i, !dbg !47520

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !47542, !noalias !47508
  unreachable, !dbg !47542

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp4, !dbg !47542

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB11_5aexpr5AExprEEINtNtBc_6option6OptionNtNtB11_7expr_ir10ColumnNodeEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneB2Z_uNCINvB6_8map_foldB3l_RNtNtB1Z_6pl_str10PlSmallStruNCNvNtB13_5utils24aexpr_to_leaf_names_iter0NCIB56_B5o_B5p_uNvYB5p_NtNtBc_5clone5Clone5cloneNCIB56_B5p_TB5p_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7M_8IndexSetB5p_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3T_7collect6ExtendB5p_E6extendINtNtB8_6cloned6ClonedIBO_INtB4y_7FlatMapBX_B2Z_B1T_EB5R_EEE0NCINvNvB3P_8for_each4callB7v_NCINvXsb_NtB7O_3mapINtBbx_8IndexMapB5p_uB8z_EIB9n_B7v_E6extendIBO_B9W_B7D_EE0E0E0E0E0E0EB13_.exit.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !47543
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z), !dbg !47544, !noalias !47508
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !47545, !noalias !47506
  br label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB19_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB19_5aexpr5AExprEEB21_ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB2n_RNtNtB2W_6pl_str10PlSmallStruNCNvNtB1b_5utils24aexpr_to_leaf_names_iter0NCIB4I_B56_B57_uNvYB57_NtNtBc_5clone5Clone5cloneNCIB4I_B57_TB57_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7u_8IndexSetB57_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB45_7collect6ExtendB57_E6extendINtNtB8_6cloned6ClonedINtB4K_3MapBR_B5z_EEE0NCINvNvB41_8for_each4callB7d_NCINvXsb_NtB7w_3mapINtBaY_8IndexMapB57_uB8h_EIB95_B7d_E6extendIBa1_B9E_B7l_EE0E0E0E0E0EB1b_.exit, !dbg !47546

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB19_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB19_5aexpr5AExprEEB21_ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB2n_RNtNtB2W_6pl_str10PlSmallStruNCNvNtB1b_5utils24aexpr_to_leaf_names_iter0NCIB4I_B56_B57_uNvYB57_NtNtBc_5clone5Clone5cloneNCIB4I_B57_TB57_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7u_8IndexSetB57_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB45_7collect6ExtendB57_E6extendINtNtB8_6cloned6ClonedINtB4K_3MapBR_B5z_EEE0NCINvNvB41_8for_each4callB7d_NCINvXsb_NtB7w_3mapINtBaY_8IndexMapB57_uB8h_EIB95_B7d_E6extendIBa1_B9E_B7l_EE0E0E0E0E0EB1b_.exit: ; preds = %bb.a, %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB11_5aexpr5AExprEEINtNtBc_6option6OptionNtNtB11_7expr_ir10ColumnNodeEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneB2Z_uNCINvB6_8map_foldB3l_RNtNtB1Z_6pl_str10PlSmallStruNCNvNtB13_5utils24aexpr_to_leaf_names_iter0NCIB56_B5o_B5p_uNvYB5p_NtNtBc_5clone5Clone5cloneNCIB56_B5p_TB5p_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7M_8IndexSetB5p_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3T_7collect6ExtendB5p_E6extendINtNtB8_6cloned6ClonedIBO_INtB4y_7FlatMapBX_B2Z_B1T_EB5R_EEE0NCINvNvB3P_8for_each4callB7v_NCINvXsb_NtB7O_3mapINtBbx_8IndexMapB5p_uB8z_EIB9n_B7v_E6extendIBO_B9W_B7D_EE0E0E0E0E0E0EB13_.exit.i.i
  ret void, !dbg !47547
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7step_by6StepByINtNtNtBc_3ops5range5RangelEENCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VeclE14extend_trustedBN_E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !47548 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !47553
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !47553
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !47553
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !47552
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !47554
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !47554
  %i.e = load <2 x ptr>, ptr %0, align 8, !dbg !47555
  store <2 x ptr> %i.e, ptr %i.d, align 8, !dbg !47554
  call void @_RINvXs5_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB6_6StepByINtNtNtBc_3ops5range5RangelEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_3map8map_foldlluNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeE0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VeclE14extend_trustedINtB2a_3MapBR_B2v_EE0E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !47556
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !47557
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !47557
  ret void, !dbg !47558
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7step_by6StepByINtNtNtBc_3ops5range5RangemEENCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3S_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecmE14extend_trustedBN_E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !47559 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !47649
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !47649 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !47649
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !47649 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !dbg !47650, !nonnull !2315, !align !3113, !noundef !2315 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !47650
  %i.c = load ptr, ptr %i.b, align 8, !dbg !47650, !nonnull !2315, !align !3113, !noundef !2315 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !dbg !47651 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !47651
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !47651 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !47651
  %.sroa.63.0.copyload = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !47651 ; 6 uses
  %i.d = icmp ne i64 %.sroa.5.0.copyload, -1, !dbg !47652
  tail call void @llvm.assume(i1 %i.d), !dbg !47652
  %i.e = icmp ugt i64 %.sroa.5.0.copyload, 4294967294, !dbg !47653
  %i.f = trunc nuw i64 %.sroa.5.0.copyload to i32, !dbg !47653
  %i.g = add i32 %i.f, 1, !dbg !47653
  %.sroa.0.0.i.i = select i1 %i.e, i32 -1, i32 %i.g, !dbg !47653 ; 5 uses
  %.not.i.i = icmp eq i32 %.sroa.4.0.copyload, 0, !dbg !47654
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i.preheader, !dbg !47655

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !47649
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 8, !dbg !47649 ; 4 uses
  %i.i = zext i32 %.sroa.4.0.copyload to i64, !dbg !47655 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.4.0.copyload, 16, !dbg !47655
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader21, label %vector.memcheck, !dbg !47655

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.j = shl i64 %.sroa.42.0.copyload, 2, !dbg !47655
  %i.k = getelementptr i8, ptr %.sroa.63.0.copyload, i64 %i.j, !dbg !47655 ; 2 uses
  %i.l = add i32 %.sroa.4.0.copyload, -1, !dbg !47655
  %i.m = zext i32 %i.l to i64, !dbg !47655
  %i.n = add i64 %.sroa.42.0.copyload, %i.m, !dbg !47655
  %i.o = shl i64 %i.n, 2, !dbg !47655
  %i.p = getelementptr i8, ptr %.sroa.63.0.copyload, i64 %i.o, !dbg !47655
  %i.q = getelementptr i8, ptr %i.p, i64 4, !dbg !47655 ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 4, !dbg !47655
  %i.s = getelementptr i8, ptr %i.c, i64 4, !dbg !47655
  %bound0 = icmp ult ptr %i.k, %i.r, !dbg !47655
  %bound1 = icmp ult ptr %i.a, %i.q, !dbg !47655
  %found.conflict = and i1 %bound0, %bound1, !dbg !47655
  %bound010 = icmp ult ptr %i.k, %i.s, !dbg !47655
  %bound111 = icmp ult ptr %i.c, %i.q, !dbg !47655
  %found.conflict12 = and i1 %bound010, %bound111, !dbg !47655
  %conflict.rdx = or i1 %found.conflict, %found.conflict12, !dbg !47655
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.0.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.t = add i64 %.sroa.42.0.copyload, %n.vec     ; 2 uses
  %i.u = trunc nuw i64 %n.vec to i32              ; 2 uses
  %i.v = mul i32 %.sroa.0.0.i.i, %i.u
  %i.w = add i32 %.sroa.0.0.copyload, %i.v
  %i.x = load i32, ptr %i.a, align 4, !dbg !47656, !alias.scope !47635, !noalias !47636
  %broadcast.splatinsert15 = insertelement <4 x i32> poison, i32 %i.x, i64 0, !dbg !47657
  %broadcast.splat16 = shufflevector <4 x i32> %broadcast.splatinsert15, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !47657 ; 2 uses
  %i.y = load i32, ptr %i.c, align 4, !dbg !47657, !alias.scope !47642, !noalias !47636
  %broadcast.splatinsert17 = insertelement <4 x i32> poison, i32 %i.y, i64 0
  %broadcast.splat18 = shufflevector <4 x i32> %broadcast.splatinsert17, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.z = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %broadcast.splatinsert13 = insertelement <4 x i32> poison, i32 %.sroa.0.0.copyload, i64 0
  %broadcast.splat14 = shufflevector <4 x i32> %broadcast.splatinsert13, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.aa = mul <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %induction = add <4 x i32> %broadcast.splat14, %i.aa
  %i.ab = getelementptr [4 x i8], ptr %.sroa.63.0.copyload, i64 %.sroa.42.0.copyload
  %invariant.op = add <4 x i32> %i.z, %i.z
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, %i.z
  %i.ac = sub <4 x i32> %broadcast.splat16, %vec.ind, !dbg !47658
  %i.ad = sub <4 x i32> %broadcast.splat16, %step.add, !dbg !47658
  %i.ae = add <4 x i32> %i.ac, %broadcast.splat18, !dbg !47659
  %i.af = add <4 x i32> %i.ad, %broadcast.splat18, !dbg !47659
  %i.ag = getelementptr [4 x i8], ptr %i.ab, i64 %index, !dbg !47660 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 16, !dbg !47661
  store <4 x i32> %i.ae, ptr %i.ag, align 4, !dbg !47661, !alias.scope !47644, !noalias !47645
  store <4 x i32> %i.af, ptr %i.ah, align 4, !dbg !47661, !alias.scope !47644, !noalias !47645
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.ai = icmp eq i64 %index.next, %n.vec, !dbg !47655
  br i1 %i.ai, label %middle.block, label %vector.body, !dbg !47655, !llvm.loop !47611

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i, !dbg !47655
  br i1 %cmp.n, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i.preheader21, !dbg !47655

.lr.ph.i.i.preheader21:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.42.0.copyload, %vector.memcheck ], [ %.sroa.42.0.copyload, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ] ; 3 uses
  %.sroa.02.015.i.i.ph = phi i32 [ %.sroa.0.0.copyload, %vector.memcheck ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.preheader ], [ %i.w, %middle.block ] ; 3 uses
  %.sroa.04.014.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.u, %middle.block ] ; 4 uses
  %i.aj = sub i32 %.sroa.4.0.copyload, %.sroa.04.014.i.i.ph, !dbg !47655
  %.neg = add i32 %.sroa.04.014.i.i.ph, 1, !dbg !47655
  %xtraiter = and i32 %i.aj, 1, !dbg !47655
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !47655
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !47655

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader21
  %i.ak = load i32, ptr %i.a, align 4, !dbg !47656, !noalias !47636, !noundef !2315
  %i.al = load i32, ptr %i.c, align 4, !dbg !47657, !noalias !47636, !noundef !2315
  %.neg.i.i.i.i.prol = sub i32 %i.ak, %.sroa.02.015.i.i.ph, !dbg !47658
  %i.am = add i32 %.neg.i.i.i.i.prol, %i.al, !dbg !47659
  %i.an = getelementptr inbounds nuw [4 x i8], ptr %.sroa.63.0.copyload, i64 %.ph, !dbg !47660
  store i32 %i.am, ptr %i.an, align 4, !dbg !47661, !noalias !47646
  %i.ao = add i64 %.ph, 1, !dbg !47662            ; 2 uses
  %i.ap = add nuw i32 %.sroa.04.014.i.i.ph, 1, !dbg !47663
  %i.aq = add i32 %.sroa.02.015.i.i.ph, %.sroa.0.0.i.i, !dbg !47664
  br label %.lr.ph.i.i.prol.loopexit, !dbg !47655

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader21
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader21 ], [ %i.ao, %.lr.ph.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.preheader21 ], [ %i.ao, %.lr.ph.i.i.prol ]
  %.sroa.02.015.i.i.unr = phi i32 [ %.sroa.02.015.i.i.ph, %.lr.ph.i.i.preheader21 ], [ %i.aq, %.lr.ph.i.i.prol ]
  %.sroa.04.014.i.i.unr = phi i32 [ %.sroa.04.014.i.i.ph, %.lr.ph.i.i.preheader21 ], [ %i.ap, %.lr.ph.i.i.prol ]
  %i.ar = icmp eq i32 %.sroa.4.0.copyload, %.neg, !dbg !47655
  br i1 %i.ar, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i, !dbg !47655

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.as = phi i64 [ %i.bd, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ], !dbg !47665 ; 3 uses
  %.sroa.02.015.i.i = phi i32 [ %i.bf, %.lr.ph.i.i ], [ %.sroa.02.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.04.014.i.i = phi i32 [ %i.be, %.lr.ph.i.i ], [ %.sroa.04.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.at = load i32, ptr %i.a, align 4, !dbg !47656, !noalias !47636, !noundef !2315
  %i.au = load i32, ptr %i.c, align 4, !dbg !47657, !noalias !47636, !noundef !2315
  %.neg.i.i.i.i = sub i32 %i.at, %.sroa.02.015.i.i, !dbg !47658
  %i.av = add i32 %.neg.i.i.i.i, %i.au, !dbg !47659
  %i.aw = getelementptr inbounds nuw [4 x i8], ptr %.sroa.63.0.copyload, i64 %i.as, !dbg !47660
  store i32 %i.av, ptr %i.aw, align 4, !dbg !47661, !noalias !47646
  %i.ax = add i32 %.sroa.02.015.i.i, %.sroa.0.0.i.i, !dbg !47664 ; 2 uses
  %i.ay = load i32, ptr %i.a, align 4, !dbg !47656, !noalias !47636, !noundef !2315
  %i.az = load i32, ptr %i.c, align 4, !dbg !47657, !noalias !47636, !noundef !2315
  %.neg.i.i.i.i.1 = sub i32 %i.ay, %i.ax, !dbg !47658
  %i.ba = add i32 %.neg.i.i.i.i.1, %i.az, !dbg !47659
  %i.bb = getelementptr [4 x i8], ptr %.sroa.63.0.copyload, i64 %i.as, !dbg !47660
  %i.bc = getelementptr i8, ptr %i.bb, i64 4, !dbg !47660
  store i32 %i.ba, ptr %i.bc, align 4, !dbg !47661, !noalias !47646
  %i.bd = add i64 %i.as, 2, !dbg !47662           ; 2 uses
  %i.be = add nuw i32 %.sroa.04.014.i.i, 2, !dbg !47663 ; 2 uses
  %i.bf = add i32 %i.ax, %.sroa.0.0.i.i, !dbg !47664
  %exitcond.not.i.i.1 = icmp eq i32 %i.be, %.sroa.4.0.copyload, !dbg !47654
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i, !dbg !47655, !llvm.loop !47621

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.a
  %.val13.i.i = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.t, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bd, %.lr.ph.i.i ], !dbg !47666
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.01.0.copyload, align 8, !dbg !47667, !noalias !47648
  ret void, !dbg !47668
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7step_by6StepByINtNtNtBc_3ops5range5RangexEENCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecxE14extend_trustedBN_E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !47669 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !47674
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !47674
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !47674
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !47673
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !47675
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !47675
  %i.e = load <2 x ptr>, ptr %0, align 8, !dbg !47676
  store <2 x ptr> %i.e, ptr %i.d, align 8, !dbg !47675
  call void @_RINvXs5_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB6_6StepByINtNtNtBc_3ops5range5RangexEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_3map8map_foldxxuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeE0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecxE14extend_trustedINtB2a_3MapBR_B2v_EE0E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !47677
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !47678
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !47678
  ret void, !dbg !47679
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENCNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB2G_11TreeFmtNode9node_data0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callB3z_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5k_3VecB3z_E14extend_trustedBN_E0E0EB2M_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !47680 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !47766
  %i.e = load ptr, ptr %i.d, align 8, !dbg !47766, !nonnull !2315, !align !2417, !noundef !2315
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !47767 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !47767
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !47767 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !47767
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !47767
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47759), !dbg !47768
  %i.f = load ptr, ptr %0, align 8, !dbg !47769, !alias.scope !47759, !nonnull !2315, !noundef !2315 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !47769
  %i.h = load ptr, ptr %i.g, align 8, !dbg !47769, !alias.scope !47759, !nonnull !2315, !noundef !2315 ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h, !dbg !47770
  br i1 %i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ENtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format11TreeFmtNodeuNCNvMs0_B3s_B3q_9node_data0NCINvNvB2h_8for_each4callB3q_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecB3q_E14extend_trustedINtB30_3MapBS_B4z_EE0E0E0EB3y_.exit, label %bb.b, !dbg !47771

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !47772
  %i.k = load i64, ptr %i.j, align 8, !dbg !47772, !alias.scope !47759, !noundef !2315
  %i.l = ptrtoint ptr %i.h to i64, !dbg !47773
  %i.m = ptrtoint ptr %i.f to i64, !dbg !47773
  %i.n = sub nuw i64 %i.l, %i.m, !dbg !47773
  %i.o = lshr exact i64 %i.n, 3, !dbg !47773
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c, !dbg !47774

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.x, %bb.d ] ; 3 uses
  %i.t = phi i64 [ %i.k, %bb.b ], [ %i.y, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.d ], !dbg !47775 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.01.0.i.i, !dbg !47776
  %.val16.i.i = load i64, ptr %i.u, align 8, !dbg !47777, !noalias !47760
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !47778, !noalias !47761
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !47779, !noalias !47762
  store i64 %i.t, ptr %i.b, align 8, !dbg !47779, !noalias !47762
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !47780, !noalias !47762
  store ptr %i.b, ptr %i.a, align 8, !dbg !47780, !noalias !47762
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !47780, !noalias !47762
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @251, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e, !dbg !47781, !noalias !47760

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !47782, !noalias !47762
  %i.v = inttoptr i64 %.val16.i.i to ptr, !dbg !47783
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !47784, !noalias !47765
  store i64 1, ptr %i.c, align 8, !dbg !47785, !noalias !47765
  store ptr %i.v, ptr %i.s, align 8, !dbg !47785, !noalias !47765
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !47786, !noalias !47762
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.sroa.5.0.copyload, i64 %.val15.i.i, !dbg !47787
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !47788, !noalias !47765
  %i.x = add i64 %.val15.i.i, 1, !dbg !47789      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !47790, !noalias !47761
  %i.y = add i64 %i.t, 1, !dbg !47791
  %i.z = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !47792 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.o, !dbg !47793
  br i1 %i.aa, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ENtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format11TreeFmtNodeuNCNvMs0_B3s_B3q_9node_data0NCINvNvB2h_8for_each4callB3q_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecB3q_E14extend_trustedINtB30_3MapBS_B4z_EE0E0E0EB3y_.exit, label %bb.c, !dbg !47793

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i.i, ptr %.sroa.0.0.copyload, align 8, !dbg !47794, !noalias !47760
  resume { ptr, i32 } %i.ab, !dbg !47795

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ENtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format11TreeFmtNodeuNCNvMs0_B3s_B3q_9node_data0NCINvNvB2h_8for_each4callB3q_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecB3q_E14extend_trustedINtB30_3MapBS_B4z_EE0E0E0EB3y_.exit: ; preds = %bb.d, %bb.a
  %storemerge.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.x, %bb.d ], !dbg !47796
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %storemerge.i, ptr %.sroa.0.0.copyload, align 8, !dbg !47796, !noalias !47760
  ret void, !dbg !47797
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENCNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB2G_11TreeFmtNode9node_datas7_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB47_8for_each4callB3z_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5n_3VecB3z_E14extend_trustedBN_E0E0EB2M_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !47798 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !47884
  %i.e = load ptr, ptr %i.d, align 8, !dbg !47884, !nonnull !2315, !align !2417, !noundef !2315
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !47885 ; 4 uses
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3H_8try_folduNCINvNvB3H_12try_for_each4callB2G_INtNtB12_12control_flow11ControlFlowB2G_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECsfcROwRM8ZtH_11polars_plan:bb.a
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !50228

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !50231
  store i64 %i.h, ptr %i.c, align 8, !dbg !50232, !alias.scope !50206
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !50233
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !50233
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50207), !dbg !50233
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50208
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !50234, !noalias !50209, !nonnull !2315, !align !2417, !noundef !2315 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50234
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !50234, !noalias !50209, !nonnull !2315, !align !2417, !noundef !2315 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !50235 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !50235, !noalias !50210
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !50236, !noalias !50210, !nonnull !2315, !align !2417, !noundef !2315 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !50236
  %i.n = load i64, ptr %i.m, align 8, !dbg !50236, !noalias !50210, !noundef !2315 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 3, !dbg !50237
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !50237
  %i.p = icmp eq i64 %i.n, 0, !dbg !50238
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %.lr.ph.i.i.i, !dbg !50239

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !50239

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !50240 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !50241, !noalias !50210, !nonnull !2315, !align !2417, !noundef !2315 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.03.0.val.i.i.i, align 8, !dbg !50242, !noalias !50210, !nonnull !2315, !noundef !2315
  %i.s = getelementptr i8, ptr %.sroa.03.0.val.i.i.i, i64 8, !dbg !50242
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !50242, !noalias !50210, !nonnull !2315, !align !2417, !noundef !2315
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32, !dbg !50243
  %i.u = load ptr, ptr %i.t, align 8, !dbg !50243, !invariant.load !2315, !noalias !50210, !nonnull !2315
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.val.i.i.i.i) #51, !dbg !50244, !noalias !50210, !inline_history !50136 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !50244 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !50244
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50245, !noalias !50210
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !50246
  %i.z = load ptr, ptr %i.y, align 8, !dbg !50246, !invariant.load !2315, !noalias !50210, !nonnull !2315
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #51, !dbg !50247, !noalias !50210, !inline_history !50136
  %i.aa = load i128, ptr %i.a, align 16, !dbg !50248, !noalias !50210, !noundef !2315
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !50249
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50245, !noalias !50210
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !50250, !prof !2318

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #45, !dbg !50251, !noalias !50210
  unreachable, !dbg !50251

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !50252
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !50252, !noalias !50210, !noundef !2315 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !50253
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !50253

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !50252
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !50252, !noalias !50210, !nonnull !2315, !noundef !2315
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !50254
  %i.ag = load i64, ptr %i.k, align 8, !dbg !50255, !alias.scope !50215, !noalias !50210, !noundef !2315 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !50256, !range !2468, !alias.scope !50215, !noalias !50210, !noundef !2315
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !50257
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !50257

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !50258, !noalias !50216
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !50258

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !50259, !alias.scope !50215, !noalias !50210, !nonnull !2315, !noundef !2315
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !50260
  store ptr %i.af, ptr %i.ak, align 8, !dbg !50261, !noalias !50216
  %i.al = add i64 %i.ag, 1, !dbg !50262           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !50262, !alias.scope !50215, !noalias !50210
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !50238
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.c, !dbg !50239

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #45, !dbg !50253, !noalias !50210
  unreachable, !dbg !50253

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ], !dbg !50263
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !50264
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !50264, !noalias !50210, !nonnull !2315, !noundef !2315
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !50265, !noalias !50209
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !50266, !noalias !50209 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !50266
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !50266, !noalias !50209 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !50266
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !50266, !noalias !50209 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50219), !dbg !50266
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !50267
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !50268

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !50269, !range !2437, !alias.scope !50220, !noalias !50221, !noundef !2315
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !50269
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.j, !dbg !50269

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.l, !dbg !50270, !noalias !50221

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !50271, !alias.scope !50222, !noalias !50208
  br label %bb.m, !dbg !50272

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !50273, !noalias !50221
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !50273
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !50273, !noalias !50221
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !50273
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !50273, !noalias !50221
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !50273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !50273, !noalias !50209
  resume { ptr, i32 } %i.as, !dbg !50274

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !50273, !noalias !50221
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !50273
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !50273, !noalias !50221
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !50273
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !50273, !noalias !50221
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !50273
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !50273, !noalias !50209
  br label %bb.m, !dbg !50275

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !50276, !alias.scope !50222, !noalias !50208
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50277, !noalias !50208
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !50278, !alias.scope !50223, !noalias !50208, !noundef !2315
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !50278, !alias.scope !50223, !noalias !50208
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !50279
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !50279
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50280
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !50280, !alias.scope !50224
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50280
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !50280, !alias.scope !50224
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !50281

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !50282
  store i64 %storemerge.i, ptr %0, align 8, !dbg !50282, !alias.scope !50200
  ret void, !dbg !50283
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs2_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50284 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50339
  %i.b = load i64, ptr %i.a, align 8, !dbg !50339, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50339
  %i.d = load i64, ptr %i.c, align 8, !dbg !50339, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50340, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50340
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50340, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50341 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50341
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50341 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50341
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50341 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50342
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50343

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50343      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50343
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50343

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50343
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50343 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50343
  %i.m = sub i64 %i.l, %i.b, !dbg !50343
  %i.n = shl i64 %i.m, 3, !dbg !50343
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50343 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50343
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50343
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50343
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50343
  %found.conflict = and i1 %bound0, %bound1, !dbg !50343
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50343
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50343
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50343
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50343
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50344, !alias.scope !50332, !noalias !50333
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50345
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50345 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50345, !alias.scope !50334, !noalias !50333
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50346 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50347
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50347, !alias.scope !50335, !noalias !50336
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50347, !alias.scope !50335, !noalias !50336
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50343
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50343, !llvm.loop !50317

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50343
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50343

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50343
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50343
  %xtraiter = and i64 %i.z, 1, !dbg !50343
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50343
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50343

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50348
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50344, !noalias !50333, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50345, !noalias !50333, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50344
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50344
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50346
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50347, !noalias !50337
  %i.ag = add i64 %.ph, 1, !dbg !50349            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50343

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50343
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50343

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50348 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50348
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50344, !noalias !50333, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50345, !noalias !50333, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50344
  %i.an = sub i64 %i.am, %i.al, !dbg !50344
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50346
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50347, !noalias !50337
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50348 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50344, !noalias !50333, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50345, !noalias !50333, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50344
  %i.at = sub i64 %i.as, %i.ar, !dbg !50344
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50346
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50346
  store i64 %i.at, ptr %i.av, align 8, !dbg !50347, !noalias !50337
  %i.aw = add i64 %i.ai, 2, !dbg !50349           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50342
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50343, !llvm.loop !50322

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50350
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50351, !noalias !50338
  ret void, !dbg !50352
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs3_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50353 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50408
  %i.b = load i64, ptr %i.a, align 8, !dbg !50408, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50408
  %i.d = load i64, ptr %i.c, align 8, !dbg !50408, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50409, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50409
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50409, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50410 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50410
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50410 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50410
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50410 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50411
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50412

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50412      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50412
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50412

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50412
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50412 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50412
  %i.m = sub i64 %i.l, %i.b, !dbg !50412
  %i.n = shl i64 %i.m, 3, !dbg !50412
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50412 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50412
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50412
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50412
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50412
  %found.conflict = and i1 %bound0, %bound1, !dbg !50412
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50412
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50412
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50412
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50412
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50413, !alias.scope !50401, !noalias !50402
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50414
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50414 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50414, !alias.scope !50403, !noalias !50402
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50415 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50416
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50416, !alias.scope !50404, !noalias !50405
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50416, !alias.scope !50404, !noalias !50405
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50412
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50412, !llvm.loop !50386

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50412
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50412

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50412
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50412
  %xtraiter = and i64 %i.z, 1, !dbg !50412
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50412
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50412

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50417
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50413, !noalias !50402, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50414, !noalias !50402, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50413
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50413
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50415
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50416, !noalias !50406
  %i.ag = add i64 %.ph, 1, !dbg !50418            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50412

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50412
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50412

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50417 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50417
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50413, !noalias !50402, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50414, !noalias !50402, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50413
  %i.an = sub i64 %i.am, %i.al, !dbg !50413
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50415
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50416, !noalias !50406
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50417 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50413, !noalias !50402, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50414, !noalias !50402, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50413
  %i.at = sub i64 %i.as, %i.ar, !dbg !50413
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50415
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50415
  store i64 %i.at, ptr %i.av, align 8, !dbg !50416, !noalias !50406
  %i.aw = add i64 %i.ai, 2, !dbg !50418           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50411
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50412, !llvm.loop !50391

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50419
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50420, !noalias !50407
  ret void, !dbg !50421
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50422 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50477
  %i.b = load i64, ptr %i.a, align 8, !dbg !50477, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50477
  %i.d = load i64, ptr %i.c, align 8, !dbg !50477, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50478, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50478
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50478, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50479 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50479
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50479 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50479
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50479 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50480
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50481

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50481      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50481
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50481

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50481
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50481 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50481
  %i.m = sub i64 %i.l, %i.b, !dbg !50481
  %i.n = shl i64 %i.m, 3, !dbg !50481
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50481 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50481
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50481
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50481
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50481
  %found.conflict = and i1 %bound0, %bound1, !dbg !50481
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50481
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50481
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50481
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50481
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50482, !alias.scope !50470, !noalias !50471
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50483
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50483 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50483, !alias.scope !50472, !noalias !50471
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50484 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50485
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50485, !alias.scope !50473, !noalias !50474
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50485, !alias.scope !50473, !noalias !50474
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50481
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50481, !llvm.loop !50455

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50481
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50481

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50481
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50481
  %xtraiter = and i64 %i.z, 1, !dbg !50481
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50481
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50481

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50486
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50482, !noalias !50471, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50483, !noalias !50471, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50482
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50482
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50484
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50485, !noalias !50475
  %i.ag = add i64 %.ph, 1, !dbg !50487            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50481

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50481
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50481

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50486 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50486
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50482, !noalias !50471, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50483, !noalias !50471, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50482
  %i.an = sub i64 %i.am, %i.al, !dbg !50482
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50484
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50485, !noalias !50475
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50486 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50482, !noalias !50471, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50483, !noalias !50471, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50482
  %i.at = sub i64 %i.as, %i.ar, !dbg !50482
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50484
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50484
  store i64 %i.at, ptr %i.av, align 8, !dbg !50485, !noalias !50475
  %i.aw = add i64 %i.ai, 2, !dbg !50487           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50480
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50481, !llvm.loop !50460

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50488
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50489, !noalias !50476
  ret void, !dbg !50490
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsk_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50491 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50546
  %i.b = load i64, ptr %i.a, align 8, !dbg !50546, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50546
  %i.d = load i64, ptr %i.c, align 8, !dbg !50546, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50547, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50547
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50547, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50548 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50548
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50548 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50548
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50548 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50549
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50550

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50550      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50550
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50550

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50550
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50550 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50550
  %i.m = sub i64 %i.l, %i.b, !dbg !50550
  %i.n = shl i64 %i.m, 3, !dbg !50550
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50550 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50550
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50550
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50550
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50550
  %found.conflict = and i1 %bound0, %bound1, !dbg !50550
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50550
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50550
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50550
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50550
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50551, !alias.scope !50539, !noalias !50540
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50552
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50552 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50552, !alias.scope !50541, !noalias !50540
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50553 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50554
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50554, !alias.scope !50542, !noalias !50543
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50554, !alias.scope !50542, !noalias !50543
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50550
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50550, !llvm.loop !50524

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50550
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50550

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50550
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50550
  %xtraiter = and i64 %i.z, 1, !dbg !50550
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50550
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50550

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50555
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50551, !noalias !50540, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50552, !noalias !50540, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50551
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50551
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50553
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50554, !noalias !50544
  %i.ag = add i64 %.ph, 1, !dbg !50556            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50550

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50550
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50550

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50555 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50555
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50551, !noalias !50540, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50552, !noalias !50540, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50551
  %i.an = sub i64 %i.am, %i.al, !dbg !50551
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50553
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50554, !noalias !50544
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50555 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50551, !noalias !50540, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50552, !noalias !50540, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50551
  %i.at = sub i64 %i.as, %i.ar, !dbg !50551
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50553
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50553
  store i64 %i.at, ptr %i.av, align 8, !dbg !50554, !noalias !50544
  %i.aw = add i64 %i.ai, 2, !dbg !50556           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50549
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50550, !llvm.loop !50529

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50557
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50558, !noalias !50545
  ret void, !dbg !50559
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsn_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50560 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50615
  %i.b = load i64, ptr %i.a, align 8, !dbg !50615, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50615
  %i.d = load i64, ptr %i.c, align 8, !dbg !50615, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50616, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50616
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50616, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50617 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50617
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50617 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50617
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50617 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50618
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50619

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50619      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50619
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50619

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50619
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50619 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50619
  %i.m = sub i64 %i.l, %i.b, !dbg !50619
  %i.n = shl i64 %i.m, 3, !dbg !50619
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50619 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50619
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50619
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50619
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50619
  %found.conflict = and i1 %bound0, %bound1, !dbg !50619
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50619
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50619
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50619
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50619
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50620, !alias.scope !50608, !noalias !50609
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50621
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50621 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50621, !alias.scope !50610, !noalias !50609
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50622 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50623
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50623, !alias.scope !50611, !noalias !50612
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50623, !alias.scope !50611, !noalias !50612
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50619
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50619, !llvm.loop !50593

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50619
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50619

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50619
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50619
  %xtraiter = and i64 %i.z, 1, !dbg !50619
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50619
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50619

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50624
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50620, !noalias !50609, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50621, !noalias !50609, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50620
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50620
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50622
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50623, !noalias !50613
  %i.ag = add i64 %.ph, 1, !dbg !50625            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50619

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50619
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50619

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50624 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50624
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50620, !noalias !50609, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50621, !noalias !50609, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50620
  %i.an = sub i64 %i.am, %i.al, !dbg !50620
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50622
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50623, !noalias !50613
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50624 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50620, !noalias !50609, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50621, !noalias !50609, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50620
  %i.at = sub i64 %i.as, %i.ar, !dbg !50620
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50622
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50622
  store i64 %i.at, ptr %i.av, align 8, !dbg !50623, !noalias !50613
  %i.aw = add i64 %i.ai, 2, !dbg !50625           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50618
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50619, !llvm.loop !50598

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50626
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50627, !noalias !50614
  ret void, !dbg !50628
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsp_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50629 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50684
  %i.b = load i64, ptr %i.a, align 8, !dbg !50684, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50684
  %i.d = load i64, ptr %i.c, align 8, !dbg !50684, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50685, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50685
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50685, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50686 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50686
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50686 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50686
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50686 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50687
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50688

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50688      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50688
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50688

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50688
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50688 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50688
  %i.m = sub i64 %i.l, %i.b, !dbg !50688
  %i.n = shl i64 %i.m, 3, !dbg !50688
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50688 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50688
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50688
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50688
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50688
  %found.conflict = and i1 %bound0, %bound1, !dbg !50688
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50688
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50688
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50688
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50688
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50689, !alias.scope !50677, !noalias !50678
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50690
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50690 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50690, !alias.scope !50679, !noalias !50678
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50691 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50692
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50692, !alias.scope !50680, !noalias !50681
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50692, !alias.scope !50680, !noalias !50681
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50688
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50688, !llvm.loop !50662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50688
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50688

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50688
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50688
  %xtraiter = and i64 %i.z, 1, !dbg !50688
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50688
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50688

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50693
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50689, !noalias !50678, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50690, !noalias !50678, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50689
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50689
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50691
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50692, !noalias !50682
  %i.ag = add i64 %.ph, 1, !dbg !50694            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50688

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50688
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50688

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50693 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50693
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50689, !noalias !50678, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50690, !noalias !50678, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50689
  %i.an = sub i64 %i.am, %i.al, !dbg !50689
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50691
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50692, !noalias !50682
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50693 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50689, !noalias !50678, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50690, !noalias !50678, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50689
  %i.at = sub i64 %i.as, %i.ar, !dbg !50689
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50691
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50691
  store i64 %i.at, ptr %i.av, align 8, !dbg !50692, !noalias !50682
  %i.aw = add i64 %i.ai, 2, !dbg !50694           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50687
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50688, !llvm.loop !50667

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50695
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50696, !noalias !50683
  ret void, !dbg !50697
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsq_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50698 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50753
  %i.b = load i64, ptr %i.a, align 8, !dbg !50753, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50753
  %i.d = load i64, ptr %i.c, align 8, !dbg !50753, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50754, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50754
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50754, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50755 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50755
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50755 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50755
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50755 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50756
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50757

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50757      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50757
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50757

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50757
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50757 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50757
  %i.m = sub i64 %i.l, %i.b, !dbg !50757
  %i.n = shl i64 %i.m, 3, !dbg !50757
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50757 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50757
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50757
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50757
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50757
  %found.conflict = and i1 %bound0, %bound1, !dbg !50757
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50757
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50757
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50757
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50757
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50758, !alias.scope !50746, !noalias !50747
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50759
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50759 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50759, !alias.scope !50748, !noalias !50747
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50760 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50761
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50761, !alias.scope !50749, !noalias !50750
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50761, !alias.scope !50749, !noalias !50750
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50757
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50757, !llvm.loop !50731

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50757
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50757

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50757
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50757
  %xtraiter = and i64 %i.z, 1, !dbg !50757
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50757
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50757

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50762
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50758, !noalias !50747, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50759, !noalias !50747, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50758
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50758
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50760
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50761, !noalias !50751
  %i.ag = add i64 %.ph, 1, !dbg !50763            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50757

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50757
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50757

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50762 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50762
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50758, !noalias !50747, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50759, !noalias !50747, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50758
  %i.an = sub i64 %i.am, %i.al, !dbg !50758
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50760
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50761, !noalias !50751
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50762 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50758, !noalias !50747, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50759, !noalias !50747, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50758
  %i.at = sub i64 %i.as, %i.ar, !dbg !50758
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50760
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50760
  store i64 %i.at, ptr %i.av, align 8, !dbg !50761, !noalias !50751
  %i.aw = add i64 %i.ai, 2, !dbg !50763           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50756
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50757, !llvm.loop !50736

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50764
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50765, !noalias !50752
  ret void, !dbg !50766
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsr_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50767 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50822
  %i.b = load i64, ptr %i.a, align 8, !dbg !50822, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50822
  %i.d = load i64, ptr %i.c, align 8, !dbg !50822, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50823, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50823
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50823, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50824 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50824
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50824 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50824
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50824 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50825
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50826

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50826      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50826
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50826

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50826
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50826 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50826
  %i.m = sub i64 %i.l, %i.b, !dbg !50826
  %i.n = shl i64 %i.m, 3, !dbg !50826
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50826 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50826
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50826
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50826
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50826
  %found.conflict = and i1 %bound0, %bound1, !dbg !50826
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50826
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50826
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50826
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50826
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50827, !alias.scope !50815, !noalias !50816
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50828
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50828 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50828, !alias.scope !50817, !noalias !50816
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50829 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50830
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50830, !alias.scope !50818, !noalias !50819
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50830, !alias.scope !50818, !noalias !50819
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50826
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50826, !llvm.loop !50800

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50826
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50826

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50826
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50826
  %xtraiter = and i64 %i.z, 1, !dbg !50826
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50826
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50826

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50831
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50827, !noalias !50816, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50828, !noalias !50816, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50827
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50827
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50829
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50830, !noalias !50820
  %i.ag = add i64 %.ph, 1, !dbg !50832            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50826

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50826
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50826

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50831 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50831
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50827, !noalias !50816, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50828, !noalias !50816, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50827
  %i.an = sub i64 %i.am, %i.al, !dbg !50827
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50829
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50830, !noalias !50820
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50831 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50827, !noalias !50816, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50828, !noalias !50816, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50827
  %i.at = sub i64 %i.as, %i.ar, !dbg !50827
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50829
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50829
  store i64 %i.at, ptr %i.av, align 8, !dbg !50830, !noalias !50820
  %i.aw = add i64 %i.ai, 2, !dbg !50832           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50825
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50826, !llvm.loop !50805

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50833
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50834, !noalias !50821
  ret void, !dbg !50835
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recss_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50836 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50891
  %i.b = load i64, ptr %i.a, align 8, !dbg !50891, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50891
  %i.d = load i64, ptr %i.c, align 8, !dbg !50891, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50892, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50892
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50892, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50893 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50893
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50893 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50893
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50893 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50894
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50895

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50895      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50895
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50895

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50895
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50895 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50895
  %i.m = sub i64 %i.l, %i.b, !dbg !50895
  %i.n = shl i64 %i.m, 3, !dbg !50895
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50895 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50895
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50895
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50895
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50895
  %found.conflict = and i1 %bound0, %bound1, !dbg !50895
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50895
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50895
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50895
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50895
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50896, !alias.scope !50884, !noalias !50885
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50897
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50897 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50897, !alias.scope !50886, !noalias !50885
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50898 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50899
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50899, !alias.scope !50887, !noalias !50888
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50899, !alias.scope !50887, !noalias !50888
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50895
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50895, !llvm.loop !50869

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50895
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50895

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50895
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50895
  %xtraiter = and i64 %i.z, 1, !dbg !50895
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50895
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50895

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50900
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50896, !noalias !50885, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50897, !noalias !50885, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50896
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50896
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50898
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50899, !noalias !50889
  %i.ag = add i64 %.ph, 1, !dbg !50901            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50895

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50895
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50895

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50900 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50900
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50896, !noalias !50885, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50897, !noalias !50885, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50896
  %i.an = sub i64 %i.am, %i.al, !dbg !50896
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50898
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50899, !noalias !50889
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50900 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50896, !noalias !50885, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50897, !noalias !50885, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50896
  %i.at = sub i64 %i.as, %i.ar, !dbg !50896
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50898
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50898
  store i64 %i.at, ptr %i.av, align 8, !dbg !50899, !noalias !50889
  %i.aw = add i64 %i.ai, 2, !dbg !50901           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50894
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50895, !llvm.loop !50874

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50902
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50903, !noalias !50890
  ret void, !dbg !50904
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsu_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50905 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50960
  %i.b = load i64, ptr %i.a, align 8, !dbg !50960, !noundef !2315 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50960
  %i.d = load i64, ptr %i.c, align 8, !dbg !50960, !noundef !2315 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50961, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50961
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50961, !nonnull !2315, !align !2417, !noundef !2315 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50962 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50962
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50962 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50962
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50962 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50963
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50964

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50964      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50964
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50964

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50964
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50964 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50964
  %i.m = sub i64 %i.l, %i.b, !dbg !50964
  %i.n = shl i64 %i.m, 3, !dbg !50964
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50964 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50964
  %i.q = getelementptr i8, ptr %i.g, i64 8, !dbg !50964
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50964
  %bound1 = icmp ult ptr %i.e, %i.o, !dbg !50964
  %found.conflict = and i1 %bound0, %bound1, !dbg !50964
  %bound08 = icmp ult ptr %i.k, %i.q, !dbg !50964
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50964
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50964
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50964
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.r = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.s = add i64 %i.b, %n.vec
  %i.t = load i64, ptr %i.e, align 8, !dbg !50965, !alias.scope !50953, !noalias !50954
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.t, i64 0, !dbg !50966
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50966 ; 2 uses
  %i.u = load i64, ptr %i.g, align 8, !dbg !50966, !alias.scope !50955, !noalias !50954
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.u, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.v = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.w = getelementptr [8 x i8], ptr %i.v, i64 %index, !dbg !50967 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.w, i64 16, !dbg !50968
  store <2 x i64> %.reass19, ptr %i.w, align 8, !dbg !50968, !alias.scope !50956, !noalias !50957
  store <2 x i64> %.reass21, ptr %i.x, align 8, !dbg !50968, !alias.scope !50956, !noalias !50957
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.y = icmp eq i64 %index.next, %n.vec, !dbg !50964
  br i1 %i.y, label %middle.block, label %vector.body, !dbg !50964, !llvm.loop !50938

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50964
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50964

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.s, %middle.block ] ; 5 uses
  %i.z = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50964
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50964
  %xtraiter = and i64 %i.z, 1, !dbg !50964
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50964
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50964

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.aa = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50969
  %i.ab = load i64, ptr %i.e, align 8, !dbg !50965, !noalias !50954, !noundef !2315
  %i.ac = load i64, ptr %i.g, align 8, !dbg !50966, !noalias !50954, !noundef !2315
  %i.ad = add i64 %i.ab, %.sroa.0.011.i.ph, !dbg !50965
  %i.ae = sub i64 %i.ad, %i.ac, !dbg !50965
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50967
  store i64 %i.ae, ptr %i.af, align 8, !dbg !50968, !noalias !50958
  %i.ag = add i64 %.ph, 1, !dbg !50970            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50964

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.ag, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.aa, %.lr.ph.i.prol ]
  %i.ah = icmp eq i64 %i.d, %.neg, !dbg !50964
  br i1 %i.ah, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50964

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ai = phi i64 [ %i.aw, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50969 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ap, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.aj = add nuw i64 %.sroa.0.011.i, 1, !dbg !50969
  %i.ak = load i64, ptr %i.e, align 8, !dbg !50965, !noalias !50954, !noundef !2315
  %i.al = load i64, ptr %i.g, align 8, !dbg !50966, !noalias !50954, !noundef !2315
  %i.am = add i64 %i.ak, %.sroa.0.011.i, !dbg !50965
  %i.an = sub i64 %i.am, %i.al, !dbg !50965
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50967
  store i64 %i.an, ptr %i.ao, align 8, !dbg !50968, !noalias !50958
  %i.ap = add nuw i64 %.sroa.0.011.i, 2, !dbg !50969 ; 2 uses
  %i.aq = load i64, ptr %i.e, align 8, !dbg !50965, !noalias !50954, !noundef !2315
  %i.ar = load i64, ptr %i.g, align 8, !dbg !50966, !noalias !50954, !noundef !2315
  %i.as = add i64 %i.aq, %i.aj, !dbg !50965
  %i.at = sub i64 %i.as, %i.ar, !dbg !50965
  %i.au = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ai, !dbg !50967
  %i.av = getelementptr i8, ptr %i.au, i64 8, !dbg !50967
  store i64 %i.at, ptr %i.av, align 8, !dbg !50968, !noalias !50958
  %i.aw = add i64 %i.ai, 2, !dbg !50970           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ap, %i.d, !dbg !50963
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50964, !llvm.loop !50943

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.r, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.aw, %.lr.ph.i ], !dbg !50971
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50972, !noalias !50959
  ret void, !dbg !50973
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1w_7EdgeKeyNtB1w_4EdgeEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3F_8for_each4callB3b_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4V_3VecB3b_E14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !50974 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51030
  %i.b = load i64, ptr %i.a, align 8, !dbg !51030, !noundef !2315 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51030
  %i.d = load i64, ptr %i.c, align 8, !dbg !51030, !noundef !2315 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51031, !nonnull !2315, !align !2417, !noundef !2315
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51032 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51032
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !51032 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51032
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !51032
  %i.f = icmp ult i64 %i.b, %i.d, !dbg !51033
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtB27_8ir_graph24build_ir_traversal_graphB25_NtB27_4EdgeEs_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecB25_E14extend_trustedINtB1B_3MapB3_B3m_EE0E0E0EB2d_.exit, !dbg !51034

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i
  %.val7.i = phi i64 [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i ], [ %i.b, %bb.a ]
  %i.g = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverEBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, i1 noundef zeroext false)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i unwind label %bb.b, !dbg !51035, !noalias !51023 ; 2 uses

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i: ; preds = %.lr.ph.i
  %i.h = add i64 %.sroa.0.011.i, 1, !dbg !51036   ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.g, 0, !dbg !51037
  %i.j = extractvalue { i32, i32 } %i.g, 1, !dbg !51037
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i, !dbg !51038 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !51039, !noalias !51029
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !51039
  store i32 %i.j, ptr %i.l, align 4, !dbg !51039, !noalias !51029
  %i.m = add i64 %.val7.i, 1, !dbg !51040         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.d, !dbg !51033
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtB27_8ir_graph24build_ir_traversal_graphB25_NtB27_4EdgeEs_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecB25_E14extend_trustedINtB1B_3MapB3_B3m_EE0E0E0EB2d_.exit, label %.lr.ph.i, !dbg !51034

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51041, !noalias !51023
  resume { ptr, i32 } %i.n, !dbg !51042

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtB27_8ir_graph24build_ir_traversal_graphB25_NtB27_4EdgeEs_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecB25_E14extend_trustedINtB1B_3MapB3_B3m_EE0E0E0EB2d_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i ], !dbg !51043
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51044, !noalias !51023
  ret void, !dbg !51045
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array7binview12read_binviewShINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB2P_6cursor6CursorQRB2K_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3T_8try_folduNCINvNvB3T_12try_for_each4callINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEINtNtB12_12control_flow11ControlFlowB7l_ENcNtB89_5Break0E0B89_E0IB8a_B89_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !51046 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !51106 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51095), !dbg !51107
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51096), !dbg !51107
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !51097, !noundef !2315 ; 2 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !51098 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i, %i.e, !dbg !51108
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB48_B2A_EENCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array7binview12read_binviewShINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB6h_6cursor6CursorQRB6c_EEEs_0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4R_EIB2f_NtNtBa_7convert10InfallibleB3o_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4G_NcNtB4G_5Break0E0B4G_E0E0B47_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !51109

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %1, align 8, !alias.scope !51099, !noalias !51100, !nonnull !2315, !align !2417, !noundef !2315
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !51099, !noalias !51100, !nonnull !2315, !align !2417, !noundef !2315
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !51099, !noalias !51100, !nonnull !2315, !align !2417, !noundef !2315
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !51099, !noalias !51100, !nonnull !2315, !noundef !2315
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !51099, !noalias !51100, !nonnull !2315, !align !2417, !noundef !2315
  %i.q = load ptr, ptr %i.k, align 8, !alias.scope !51099, !noalias !51100, !nonnull !2315, !align !2417, !noundef !2315
  br label %bb.b, !dbg !51109

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %i.r = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.s, %bb.i ]
  %i.s = add i64 %i.r, 1, !dbg !51110             ; 3 uses
  store i64 %i.s, ptr %i.c, align 8, !dbg !51111, !alias.scope !51098
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51101
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51099), !dbg !51112
  %i.t = load i64, ptr %i.n, align 8, !dbg !51113, !noalias !51102, !noundef !2315
  %i.u = load i8, ptr %i.o, align 1, !dbg !51114, !range !2472, !noalias !51102, !noundef !2315
  %i.v = trunc nuw i8 %i.u to i1, !dbg !51114
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51115, !noalias !51102
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !dbg !51115, !noalias !51102
  call void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic10read_bytesINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1f_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.t, i1 noundef zeroext %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !dbg !51116, !noalias !51100
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51117, !noalias !51102
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !51118, !noalias !51100 ; 3 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !51118, !noalias !51100 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !51119
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !51120

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.y = load i64, ptr %3, align 8, !dbg !51121, !range !2437, !alias.scope !51103, !noalias !51104, !noundef !2315
  %i.z = icmp eq i64 %i.y, 18, !dbg !51121
  br i1 %i.z, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.d, !dbg !51121

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.g, !dbg !51122, !noalias !51104

bb.e:                                             ; preds = %bb.b
  %.not.i4.i.i.i = icmp eq ptr %.sroa.4.0.copyload.i.i, null, !dbg !51123
  br i1 %.not.i4.i.i.i, label %bb.i, label %bb.f, !dbg !51124

bb.f:                                             ; preds = %bb.e
  %i.aa = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i, ptr noundef nonnull align 8 dereferenceable(16) %i.aa, i64 16, i1 false), !dbg !51125, !noalias !51101
end_hunk_1
