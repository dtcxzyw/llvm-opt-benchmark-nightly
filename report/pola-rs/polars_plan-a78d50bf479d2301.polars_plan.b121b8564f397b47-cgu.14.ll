Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB33_16DataTypeSelector12into_columnss0_0ENCINvXs8_B1o_INtB1o_8IndexSetB25_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB25_E6extendBX_E0ENtNtB5R_8iterator8Iterator4folduNCINvNvB6A_8for_each4callTB25_uENCINvXsb_NtB1q_3mapINtB7L_8IndexMapB25_uB4Z_EIB5N_B7v_E6extendBN_E0E0EB37_:bb.a
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !47905, !noalias !47856
  unreachable, !dbg !47905

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEECsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %.body.i.i
  resume { ptr, i32 } %eh.lpad-body.i.i, !dbg !47905

_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters6filter11filter_foldBP_uNCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB3y_16DataTypeSelector12into_columnss0_0NCINvNtB2N_3map8map_foldBP_TBP_uEuNCINvXs8_B8_INtB8_8IndexSetBP_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1J_7collect6ExtendBP_E6extendINtB2L_6FilterB3_B3q_EE0NCINvNvB1F_8for_each4callB5n_NCINvXsb_NtBa_3mapINtB8k_8IndexMapBP_uB5Y_EIB6M_B5n_E6extendINtB51_3MapB7k_B5u_EE0E0E0E0EB3C_.exit.loopexit.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters6filter11filter_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB1Z_16DataTypeSelector12into_columnss0_0NCINvNtB6_3map8map_foldB11_TB11_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB45_8IndexSetB11_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB11_E6extendINtB4_6FilterINtNtB45_4iter8IntoIterB11_EB1R_EE0NCINvNvNtNtB5K_8iterator8Iterator8for_each4callB3O_NCINvXsb_NtB47_3mapINtB87_8IndexMapB11_uB4S_EIB5G_B3O_E6extendINtB3s_3MapB6n_B3W_EE0E0E0E0B23_.exit.i.i, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan.exit.i.i.i
  store ptr %i.l, ptr %i.g, align 8, !dbg !47884, !alias.scope !47864, !noalias !47857
  br label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB6_6FilterINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB2N_16DataTypeSelector12into_columnss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB1P_TB1P_uEuNCINvXs8_B18_INtB18_8IndexSetB1P_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4g_7collect6ExtendB1P_E6extendBQ_E0NCINvNvB4c_8for_each4callB5h_NCINvXsb_NtB1a_3mapINtB80_8IndexMapB1P_uB5W_EIB6K_B5h_E6extendINtB4V_3MapBQ_B5p_EE0E0E0EB2R_.exit, !dbg !47906

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters6filterINtB6_6FilterINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB2N_16DataTypeSelector12into_columnss0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB1P_TB1P_uEuNCINvXs8_B18_INtB18_8IndexSetB1P_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB4g_7collect6ExtendB1P_E6extendBQ_E0NCINvNvB4c_8for_each4callB5h_NCINvXsb_NtB1a_3mapINtB80_8IndexMapB1P_uB5W_EIB6K_B5h_E6extendINtB4V_3MapBQ_B5p_EE0E0E0EB2R_.exit: ; preds = %bb.a, %_RINvYINtNtNtCse4dvU5uQ85g_8indexmap3set4iter8IntoIterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB1L_8adapters6filter11filter_foldBP_uNCNvMs1_NtNtCsfcROwRM8ZtH_11polars_plan3dsl8selectorNtB3y_16DataTypeSelector12into_columnss0_0NCINvNtB2N_3map8map_foldBP_TBP_uEuNCINvXs8_B8_INtB8_8IndexSetBP_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB1J_7collect6ExtendBP_E6extendINtB2L_6FilterB3_B3q_EE0NCINvNvB1F_8for_each4callB5n_NCINvXsb_NtBa_3mapINtB8k_8IndexMapBP_uB5Y_EIB6M_B5n_E6extendINtB51_3MapB7k_B5u_EE0E0E0E0EB3C_.exit.loopexit.i
  call void @_RNvXse_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterINtCse4dvU5uQ85g_8indexmap6BucketNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruEENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.c), !dbg !47906, !noalias !47856
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !47907, !noalias !47857
  ret void, !dbg !47908
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7flatten7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB1p_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB1p_5aexpr5AExprEEB2h_ENCNvNtB1r_5utils24aexpr_to_leaf_names_iter0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvB6_8map_foldRNtNtB3c_6pl_str10PlSmallStrB5V_uNvYB5V_NtNtBc_5clone5Clone5cloneNCIB5G_B5V_TB5V_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7p_8IndexSetB5V_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB53_7collect6ExtendB5V_E6extendINtNtB8_6cloned6ClonedBN_EE0NCINvNvB4Z_8for_each4callB78_NCINvXsb_NtB7r_3mapINtBaD_8IndexMapB5V_uB8c_EIB90_B78_E6extendIBO_B9z_B7g_EE0E0E0E0EB1r_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !47909 !guid !47987 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 64, !dbg !47995
  %i.d = load ptr, ptr %i.c, align 8, !dbg !47995, !nonnull !2317, !align !2419, !noundef !2317 ; 2 uses
  %i.e = getelementptr i8, ptr %i.d, i64 8, !dbg !47996
  %.val = load ptr, ptr %i.e, align 8, !dbg !47996
  %i.f = getelementptr i8, ptr %i.d, i64 16, !dbg !47996
  %.val1 = load i64, ptr %i.f, align 8, !dbg !47996
  tail call void @llvm.experimental.noalias.scope.decl(metadata !47988), !dbg !47996
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !47997
  %.sroa.3.0.copyload.i = load ptr, ptr %.sroa.3.0..sroa_idx.i, align 8, !dbg !47997, !alias.scope !47988 ; 2 uses
  %.not.i.i = icmp eq ptr %.sroa.3.0.copyload.i, null, !dbg !47998
  br i1 %.not.i.i, label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB19_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB19_5aexpr5AExprEEB21_ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB2n_RNtNtB2W_6pl_str10PlSmallStruNCNvNtB1b_5utils24aexpr_to_leaf_names_iter0NCIB4I_B56_B57_uNvYB57_NtNtBc_5clone5Clone5cloneNCIB4I_B57_TB57_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7u_8IndexSetB57_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB45_7collect6ExtendB57_E6extendINtNtB8_6cloned6ClonedINtB4K_3MapBR_B5z_EEE0NCINvNvB41_8for_each4callB7d_NCINvXsb_NtB7w_3mapINtBaY_8IndexMapB57_uB8h_EIB95_B7d_E6extendIBa1_B9E_B7l_EE0E0E0E0E0EB1b_.exit, label %bb.b, !dbg !47999

bb.b:                                             ; preds = %bb.a
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !47997
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48000, !noalias !47989
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull readonly align 8 dereferenceable(24) %.sroa.4.0..sroa_idx.i, i64 24, i1 false), !dbg !48001, !noalias !47990
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i, !dbg !48002

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge, %bb.b
  %i.g = invoke { i64, ptr } @_RNvXs2_NtNtCsfcROwRM8ZtH_11polars_plan5plans8iteratorNtB5_9AExprIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4next(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.c unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !48003, !noalias !47991 ; 2 uses

.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i, %bb.i, %bb.d, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i, %bb.h, %bb.f
  %lpad.loopexit.split-lp4 = landingpad { ptr, i32 }
          cleanup
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !48004
  invoke void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.h)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit.i.i.i.i unwind label %bb.k, !dbg !48005, !noalias !47991

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i
  %i.i = extractvalue { i64, ptr } %i.g, 1, !dbg !48006 ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.i, null, !dbg !48006
  br i1 %.not.i.i.i.i, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB11_5aexpr5AExprEEINtNtBc_6option6OptionNtNtB11_7expr_ir10ColumnNodeEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneB2Z_uNCINvB6_8map_foldB3l_RNtNtB1Z_6pl_str10PlSmallStruNCNvNtB13_5utils24aexpr_to_leaf_names_iter0NCIB56_B5o_B5p_uNvYB5p_NtNtBc_5clone5Clone5cloneNCIB56_B5p_TB5p_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7M_8IndexSetB5p_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3T_7collect6ExtendB5p_E6extendINtNtB8_6cloned6ClonedIBO_INtB4y_7FlatMapBX_B2Z_B1T_EB5R_EEE0NCINvNvB3P_8for_each4callB7v_NCINvXsb_NtB7O_3mapINtBbx_8IndexMapB5p_uB8z_EIB9n_B7v_E6extendIBO_B9W_B7D_EE0E0E0E0E0E0EB13_.exit.i.i, label %bb.d, !dbg !48007

bb.d:                                             ; preds = %bb.c
  %i.j = extractvalue { i64, ptr } %i.g, 0, !dbg !48006
  %i.k = invoke { i64, i64 } %.sroa.3.0.copyload.i(i64 noundef %i.j, ptr noundef nonnull align 16 %i.i)
          to label %.noexc.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !48008, !noalias !47991, !inline_history !47937 ; 2 uses

.noexc.i.i.i.i:                                   ; preds = %bb.d
  %i.l = extractvalue { i64, i64 } %i.k, 0, !dbg !48009
  %i.m = extractvalue { i64, i64 } %i.k, 1, !dbg !48009 ; 2 uses
  %i.n = trunc nuw i64 %i.l to i1, !dbg !48010
  br i1 %i.n, label %bb.e, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge, !dbg !48010

bb.e:                                             ; preds = %.noexc.i.i.i.i
  %i.o = icmp ult i64 %i.m, %.val1, !dbg !48011
  br i1 %i.o, label %bb.g, label %bb.f, !dbg !48011, !prof !2320

bb.f:                                             ; preds = %bb.e
  invoke void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @212) #45
          to label %.noexc6.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !48012, !noalias !47991

.noexc6.i.i.i.i:                                  ; preds = %bb.f
  unreachable, !dbg !48012

bb.g:                                             ; preds = %bb.e
  %i.p = getelementptr inbounds nuw [144 x i8], ptr %.val, i64 %i.m, !dbg !48013 ; 4 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 112, !dbg !48014
  %i.r = load i64, ptr %i.q, align 16, !dbg !48014, !range !2786, !noalias !47992, !noundef !2317 ; 2 uses
  %i.s = icmp ne i64 %i.r, -9223372036854775791, !dbg !48014
  call void @llvm.assume(i1 %i.s), !dbg !48014
  %i.t = icmp eq i64 %i.r, -9223372036854775806, !dbg !48015
  br i1 %i.t, label %_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i, label %bb.h, !dbg !48015, !prof !2320

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @268, i64 noundef 40, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @273) #45
          to label %.noexc7.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !48016, !noalias !47991

.noexc7.i.i.i.i:                                  ; preds = %bb.h
  unreachable, !dbg !48016

_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i: ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48017, !noalias !47993
  %i.u = getelementptr inbounds nuw i8, ptr %i.p, i64 23, !dbg !48017
  %i.v = load i8, ptr %i.u, align 1, !dbg !48017, !range !2519, !alias.scope !47994, !noalias !47992, !noundef !2317
  %i.w = icmp eq i8 %i.v, -40, !dbg !48018
  br i1 %i.w, label %bb.i, label %bb.j, !dbg !48018

bb.i:                                             ; preds = %_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.p) #49
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !48019, !noalias !47991

bb.j:                                             ; preds = %_RNCNvNtCsfcROwRM8ZtH_11polars_plan5utils24aexpr_to_leaf_names_iter0B5_.exit.i.i.i.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 16 dereferenceable(24) %i.p, i64 24, i1 false), !dbg !48020, !noalias !47992
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i, !dbg !48021

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i: ; preds = %bb.j, %bb.i
  %i.x = invoke { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
          to label %.noexc9.i.i.i.i unwind label %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !dbg !48022, !noalias !47991 ; 0 uses

.noexc9.i.i.i.i:                                  ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir10ColumnNodeRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNvNtB10_5utils24aexpr_to_leaf_names_iter0NCIB2_B1R_B1S_uNvYB1S_NtNtBa_5clone5Clone5cloneNCIB2_B1S_TB1S_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4B_8IndexSetB1S_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB1S_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtNtB6_7flatten7FlatMapNtNtBY_8iterator9AExprIterINtNtBa_6option6OptionBU_EFTNtNtB1W_5arena4NodeRNtNtBY_5aexpr5AExprEEB8d_EB2I_EEE0NCINvNvNtNtB6g_8iterator8Iterator8for_each4callB4k_NCINvXsb_NtB4D_3mapINtBav_8IndexMapB1S_uB5o_EIB6c_B4k_E6extendIB7g_B6T_B4s_EE0E0E0E0E0B10_.exit.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48023, !noalias !47993
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge, !dbg !48024

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i.backedge: ; preds = %.noexc9.i.i.i.i, %.noexc.i.i.i.i
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr5AExprEINtNtBa_6option6OptionNtNtB1H_7expr_ir10ColumnNodeEuFBU_EB2t_NCINvNtB6_7flatten11flatten_oneB2t_uNCIB2_B2P_RNtNtBZ_6pl_str10PlSmallStruNCNvNtB1J_5utils24aexpr_to_leaf_names_iter0NCIB2_B4c_B4d_uNvYB4d_NtNtBa_5clone5Clone5cloneNCIB2_B4d_TB4d_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB6x_8IndexSetB4d_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB4d_E6extendINtNtB6_6cloned6ClonedINtB4_3MapINtB3x_7FlatMapNtNtB1H_8iterator9AExprIterB2t_B3j_EB4E_EEE0NCINvNvNtNtB8c_8iterator8Iterator8for_each4callB6g_NCINvXsb_NtB6z_3mapINtBbg_8IndexMapB4d_uB7k_EIB88_B6g_E6extendIB9c_B8P_B6o_EE0E0E0E0E0E0E0B1J_.exit.i.i.i.i, !dbg !48003

bb.k:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !48025, !noalias !47991
  unreachable, !dbg !48025

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterEBM_.exit.i.i.i.i: ; preds = %.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.i.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  resume { ptr, i32 } %lpad.loopexit.split-lp4, !dbg !48025

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB11_5aexpr5AExprEEINtNtBc_6option6OptionNtNtB11_7expr_ir10ColumnNodeEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneB2Z_uNCINvB6_8map_foldB3l_RNtNtB1Z_6pl_str10PlSmallStruNCNvNtB13_5utils24aexpr_to_leaf_names_iter0NCIB56_B5o_B5p_uNvYB5p_NtNtBc_5clone5Clone5cloneNCIB56_B5p_TB5p_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7M_8IndexSetB5p_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3T_7collect6ExtendB5p_E6extendINtNtB8_6cloned6ClonedIBO_INtB4y_7FlatMapBX_B2Z_B1T_EB5R_EEE0NCINvNvB3P_8for_each4callB7v_NCINvXsb_NtB7O_3mapINtBbx_8IndexMapB5p_uB8z_EIB9n_B7v_E6extendIBO_B9W_B7D_EE0E0E0E0E0E0EB13_.exit.i.i: ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !48026
  call void @_RNvXs4_NtCs2mZqlW55729_12polars_utils7idx_vecINtB5_7UnitVecNtNtB7_5arena4NodeENtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4dropCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.z), !dbg !48027, !noalias !47991
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48028, !noalias !47989
  br label %_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB19_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB19_5aexpr5AExprEEB21_ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB2n_RNtNtB2W_6pl_str10PlSmallStruNCNvNtB1b_5utils24aexpr_to_leaf_names_iter0NCIB4I_B56_B57_uNvYB57_NtNtBc_5clone5Clone5cloneNCIB4I_B57_TB57_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7u_8IndexSetB57_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB45_7collect6ExtendB57_E6extendINtNtB8_6cloned6ClonedINtB4K_3MapBR_B5z_EEE0NCINvNvB41_8for_each4callB7d_NCINvXsb_NtB7w_3mapINtBaY_8IndexMapB57_uB8h_EIB95_B7d_E6extendIBa1_B9E_B7l_EE0E0E0E0E0EB1b_.exit, !dbg !48029

_RINvXs1_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7flattenINtB6_7FlatMapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterINtNtBc_6option6OptionNtNtB19_7expr_ir10ColumnNodeEFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB19_5aexpr5AExprEEB21_ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldB2n_RNtNtB2W_6pl_str10PlSmallStruNCNvNtB1b_5utils24aexpr_to_leaf_names_iter0NCIB4I_B56_B57_uNvYB57_NtNtBc_5clone5Clone5cloneNCIB4I_B57_TB57_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7u_8IndexSetB57_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB45_7collect6ExtendB57_E6extendINtNtB8_6cloned6ClonedINtB4K_3MapBR_B5z_EEE0NCINvNvB41_8for_each4callB7d_NCINvXsb_NtB7w_3mapINtBaY_8IndexMapB57_uB8h_EIB95_B7d_E6extendIBa1_B9E_B7l_EE0E0E0E0E0EB1b_.exit: ; preds = %bb.a, %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapNtNtNtCsfcROwRM8ZtH_11polars_plan5plans8iterator9AExprIterFTNtNtCs2mZqlW55729_12polars_utils5arena4NodeRNtNtB11_5aexpr5AExprEEINtNtBc_6option6OptionNtNtB11_7expr_ir10ColumnNodeEENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_7flatten11flatten_oneB2Z_uNCINvB6_8map_foldB3l_RNtNtB1Z_6pl_str10PlSmallStruNCNvNtB13_5utils24aexpr_to_leaf_names_iter0NCIB56_B5o_B5p_uNvYB5p_NtNtBc_5clone5Clone5cloneNCIB56_B5p_TB5p_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB7M_8IndexSetB5p_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3T_7collect6ExtendB5p_E6extendINtNtB8_6cloned6ClonedIBO_INtB4y_7FlatMapBX_B2Z_B1T_EB5R_EEE0NCINvNvB3P_8for_each4callB7v_NCINvXsb_NtB7O_3mapINtBbx_8IndexMapB5p_uB8z_EIB9n_B7v_E6extendIBO_B9W_B7D_EE0E0E0E0E0E0EB13_.exit.i.i
  ret void, !dbg !48030
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7step_by6StepByINtNtNtBc_3ops5range5RangelEENCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VeclE14extend_trustedBN_E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !48031 !guid !48035 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48037
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48037
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !dbg !48037
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48036
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !48038
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !48038
  %i.e = load <2 x ptr>, ptr %0, align 8, !dbg !48039
  store <2 x ptr> %i.e, ptr %i.d, align 8, !dbg !48038
  call void @_RINvXs5_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB6_6StepByINtNtNtBc_3ops5range5RangelEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_3map8map_foldlluNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int32TypeE0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4calllNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VeclE14extend_trustedINtB2a_3MapBR_B2v_EE0E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !48040
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48041
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48041
  ret void, !dbg !48042
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7step_by6StepByINtNtNtBc_3ops5range5RangemEENCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3S_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB55_3VecmE14extend_trustedBN_E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !48043 !guid !48114 {
bb.a:
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 20, !dbg !48134
  %.sroa.4.0.copyload = load i32, ptr %.sroa.4.0..sroa_idx, align 4, !dbg !48134 ; 7 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !48134
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !48134 ; 3 uses
  %i.a = load ptr, ptr %0, align 8, !dbg !48135, !nonnull !2317, !align !3115, !noundef !2317 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48135
  %i.c = load ptr, ptr %i.b, align 8, !dbg !48135, !nonnull !2317, !align !3115, !noundef !2317 ; 6 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !dbg !48136 ; 2 uses
  %.sroa.42.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !48136
  %.sroa.42.0.copyload = load i64, ptr %.sroa.42.0..sroa_idx, align 8, !dbg !48136 ; 7 uses
  %.sroa.63.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !48136
  %.sroa.63.0.copyload = load ptr, ptr %.sroa.63.0..sroa_idx, align 8, !dbg !48136 ; 6 uses
  %i.d = icmp ne i64 %.sroa.5.0.copyload, -1, !dbg !48137
  tail call void @llvm.assume(i1 %i.d), !dbg !48137
  %i.e = icmp ugt i64 %.sroa.5.0.copyload, 4294967294, !dbg !48138
  %i.f = trunc nuw i64 %.sroa.5.0.copyload to i32, !dbg !48138
  %i.g = add i32 %i.f, 1, !dbg !48138
  %.sroa.0.0.i.i = select i1 %i.e, i32 -1, i32 %i.g, !dbg !48138 ; 5 uses
  %.not.i.i = icmp eq i32 %.sroa.4.0.copyload, 0, !dbg !48139
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i.preheader, !dbg !48140

.lr.ph.i.i.preheader:                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48134
  %.sroa.0.0.copyload = load i32, ptr %i.h, align 8, !dbg !48134 ; 4 uses
  %i.i = zext i32 %.sroa.4.0.copyload to i64, !dbg !48140 ; 2 uses
  %min.iters.check = icmp ult i32 %.sroa.4.0.copyload, 16, !dbg !48140
  br i1 %min.iters.check, label %.lr.ph.i.i.preheader21, label %vector.memcheck, !dbg !48140

vector.memcheck:                                  ; preds = %.lr.ph.i.i.preheader
  %i.j = shl i64 %.sroa.42.0.copyload, 2, !dbg !48140
  %i.k = getelementptr i8, ptr %.sroa.63.0.copyload, i64 %i.j, !dbg !48140 ; 2 uses
  %i.l = add i32 %.sroa.4.0.copyload, -1, !dbg !48140
  %i.m = zext i32 %i.l to i64, !dbg !48140
  %i.n = add i64 %.sroa.42.0.copyload, %i.m, !dbg !48140
  %i.o = shl i64 %i.n, 2, !dbg !48140
  %i.p = getelementptr i8, ptr %.sroa.63.0.copyload, i64 %i.o, !dbg !48140
  %i.q = getelementptr i8, ptr %i.p, i64 4, !dbg !48140 ; 2 uses
  %i.r = getelementptr i8, ptr %i.a, i64 4, !dbg !48140
  %bound0 = icmp ult ptr %i.k, %i.r, !dbg !48140
  %bound0.a = icmp ult ptr %i.a, %i.q, !dbg !48140
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !48140
  %2 = getelementptr i8, ptr %i.c, i64 4, !dbg !48140
  %bound010 = icmp ult ptr %i.k, %2, !dbg !48140
  %bound111 = icmp ult ptr %i.c, %i.q, !dbg !48140
  %found.conflict12 = and i1 %bound010, %bound111, !dbg !48140
  %conflict.rdx = or i1 %found.conflict, %found.conflict12, !dbg !48140
  br i1 %conflict.rdx, label %.lr.ph.i.i.preheader21, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, 4294967288               ; 4 uses
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %.sroa.0.0.i.i, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.s = add i64 %.sroa.42.0.copyload, %n.vec     ; 2 uses
  %i.t = trunc nuw i64 %n.vec to i32              ; 2 uses
  %i.u = mul i32 %.sroa.0.0.i.i, %i.t
  %i.v = add i32 %.sroa.0.0.copyload, %i.u
  %i.w = load i32, ptr %i.a, align 4, !dbg !48141, !alias.scope !48120, !noalias !48121
  %broadcast.splatinsert15 = insertelement <4 x i32> poison, i32 %i.w, i64 0, !dbg !48142
  %broadcast.splat16 = shufflevector <4 x i32> %broadcast.splatinsert15, <4 x i32> poison, <4 x i32> zeroinitializer, !dbg !48142 ; 2 uses
  %i.x = load i32, ptr %i.c, align 4, !dbg !48142, !alias.scope !48127, !noalias !48121
  %broadcast.splatinsert17 = insertelement <4 x i32> poison, i32 %i.x, i64 0
  %broadcast.splat18 = shufflevector <4 x i32> %broadcast.splatinsert17, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.y = shl <4 x i32> %broadcast.splat, splat (i32 2) ; 3 uses
  %broadcast.splatinsert13 = insertelement <4 x i32> poison, i32 %.sroa.0.0.copyload, i64 0
  %broadcast.splat14 = shufflevector <4 x i32> %broadcast.splatinsert13, <4 x i32> poison, <4 x i32> zeroinitializer
  %i.z = mul <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %induction = add <4 x i32> %broadcast.splat14, %i.z
  %i.aa = getelementptr [4 x i8], ptr %.sroa.63.0.copyload, i64 %.sroa.42.0.copyload
  %invariant.op = add <4 x i32> %i.y, %i.y
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next.reass, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, %i.y
  %i.ab = sub <4 x i32> %broadcast.splat16, %vec.ind, !dbg !48143
  %i.ac = sub <4 x i32> %broadcast.splat16, %step.add, !dbg !48143
  %i.ad = add <4 x i32> %i.ab, %broadcast.splat18, !dbg !48144
  %i.ae = add <4 x i32> %i.ac, %broadcast.splat18, !dbg !48144
  %i.af = getelementptr [4 x i8], ptr %i.aa, i64 %index, !dbg !48145 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16, !dbg !48146
  store <4 x i32> %i.ad, ptr %i.af, align 4, !dbg !48146, !alias.scope !48129, !noalias !48130
  store <4 x i32> %i.ae, ptr %i.ag, align 4, !dbg !48146, !alias.scope !48129, !noalias !48130
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next.reass = add <4 x i32> %vec.ind, %invariant.op
  %i.ah = icmp eq i64 %index.next, %n.vec, !dbg !48140
  br i1 %i.ah, label %middle.block, label %vector.body, !dbg !48140, !llvm.loop !48095

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.i, !dbg !48140
  br i1 %cmp.n, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i.preheader21, !dbg !48140

.lr.ph.i.i.preheader21:                           ; preds = %vector.memcheck, %.lr.ph.i.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.42.0.copyload, %vector.memcheck ], [ %.sroa.42.0.copyload, %.lr.ph.i.i.preheader ], [ %i.s, %middle.block ] ; 3 uses
  %.sroa.02.015.i.i.ph = phi i32 [ %.sroa.0.0.copyload, %vector.memcheck ], [ %.sroa.0.0.copyload, %.lr.ph.i.i.preheader ], [ %i.v, %middle.block ] ; 3 uses
  %.sroa.04.014.i.i.ph = phi i32 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.preheader ], [ %i.t, %middle.block ] ; 4 uses
  %i.ai = sub i32 %.sroa.4.0.copyload, %.sroa.04.014.i.i.ph, !dbg !48140
  %.neg = add i32 %.sroa.04.014.i.i.ph, 1, !dbg !48140
  %xtraiter = and i32 %i.ai, 1, !dbg !48140
  %lcmp.mod.not = icmp eq i32 %xtraiter, 0, !dbg !48140
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.prol.loopexit, label %.lr.ph.i.i.prol, !dbg !48140

.lr.ph.i.i.prol:                                  ; preds = %.lr.ph.i.i.preheader21
  %i.aj = load i32, ptr %i.a, align 4, !dbg !48141, !noalias !48121, !noundef !2317
  %i.ak = load i32, ptr %i.c, align 4, !dbg !48142, !noalias !48121, !noundef !2317
  %.neg.i.i.i.i.prol = sub i32 %i.aj, %.sroa.02.015.i.i.ph, !dbg !48143
  %i.al = add i32 %.neg.i.i.i.i.prol, %i.ak, !dbg !48144
  %i.am = getelementptr inbounds nuw [4 x i8], ptr %.sroa.63.0.copyload, i64 %.ph, !dbg !48145
  store i32 %i.al, ptr %i.am, align 4, !dbg !48146, !noalias !48131
  %i.an = add i64 %.ph, 1, !dbg !48147            ; 2 uses
  %i.ao = add nuw i32 %.sroa.04.014.i.i.ph, 1, !dbg !48148
  %i.ap = add i32 %.sroa.02.015.i.i.ph, %.sroa.0.0.i.i, !dbg !48149
  br label %.lr.ph.i.i.prol.loopexit, !dbg !48140

.lr.ph.i.i.prol.loopexit:                         ; preds = %.lr.ph.i.i.prol, %.lr.ph.i.i.preheader21
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.i.preheader21 ], [ %i.an, %.lr.ph.i.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.i.preheader21 ], [ %i.an, %.lr.ph.i.i.prol ]
  %.sroa.02.015.i.i.unr = phi i32 [ %.sroa.02.015.i.i.ph, %.lr.ph.i.i.preheader21 ], [ %i.ap, %.lr.ph.i.i.prol ]
  %.sroa.04.014.i.i.unr = phi i32 [ %.sroa.04.014.i.i.ph, %.lr.ph.i.i.preheader21 ], [ %i.ao, %.lr.ph.i.i.prol ]
  %i.aq = icmp eq i32 %.sroa.4.0.copyload, %.neg, !dbg !48140
  br i1 %i.aq, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i, !dbg !48140

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i
  %i.ar = phi i64 [ %i.bc, %.lr.ph.i.i ], [ %.unr, %.lr.ph.i.i.prol.loopexit ], !dbg !48150 ; 3 uses
  %.sroa.02.015.i.i = phi i32 [ %i.be, %.lr.ph.i.i ], [ %.sroa.02.015.i.i.unr, %.lr.ph.i.i.prol.loopexit ] ; 2 uses
  %.sroa.04.014.i.i = phi i32 [ %i.bd, %.lr.ph.i.i ], [ %.sroa.04.014.i.i.unr, %.lr.ph.i.i.prol.loopexit ]
  %i.as = load i32, ptr %i.a, align 4, !dbg !48141, !noalias !48121, !noundef !2317
  %i.at = load i32, ptr %i.c, align 4, !dbg !48142, !noalias !48121, !noundef !2317
  %.neg.i.i.i.i = sub i32 %i.as, %.sroa.02.015.i.i, !dbg !48143
  %i.au = add i32 %.neg.i.i.i.i, %i.at, !dbg !48144
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.63.0.copyload, i64 %i.ar, !dbg !48145
  store i32 %i.au, ptr %i.av, align 4, !dbg !48146, !noalias !48131
  %i.aw = add i32 %.sroa.02.015.i.i, %.sroa.0.0.i.i, !dbg !48149 ; 2 uses
  %i.ax = load i32, ptr %i.a, align 4, !dbg !48141, !noalias !48121, !noundef !2317
  %i.ay = load i32, ptr %i.c, align 4, !dbg !48142, !noalias !48121, !noundef !2317
  %.neg.i.i.i.i.1 = sub i32 %i.ax, %i.aw, !dbg !48143
  %i.az = add i32 %.neg.i.i.i.i.1, %i.ay, !dbg !48144
  %i.ba = getelementptr [4 x i8], ptr %.sroa.63.0.copyload, i64 %i.ar, !dbg !48145
  %i.bb = getelementptr i8, ptr %i.ba, i64 4, !dbg !48145
  store i32 %i.az, ptr %i.bb, align 4, !dbg !48146, !noalias !48131
  %i.bc = add i64 %i.ar, 2, !dbg !48147           ; 2 uses
  %i.bd = add nuw i32 %.sroa.04.014.i.i, 2, !dbg !48148 ; 2 uses
  %i.be = add i32 %i.aw, %.sroa.0.0.i.i, !dbg !48149
  %exitcond.not.i.i.1 = icmp eq i32 %i.bd, %.sroa.4.0.copyload, !dbg !48139
  br i1 %exitcond.not.i.i.1, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i.i, !dbg !48140, !llvm.loop !48105

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB5_6StepByINtNtNtBb_3ops5range5RangemEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldmmuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes10UInt32TypeE0NCINvNvB1w_8for_each4callmNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5d_3VecmE14extend_trustedINtB2f_3MapBQ_B2A_EE0E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %.lr.ph.i.i.prol.loopexit, %.lr.ph.i.i, %middle.block, %bb.a
  %.val13.i.i = phi i64 [ %.sroa.42.0.copyload, %bb.a ], [ %i.s, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.i.prol.loopexit ], [ %i.bc, %.lr.ph.i.i ], !dbg !48151
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.01.0.copyload, align 8, !dbg !48152, !noalias !48133
  ret void, !dbg !48153
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_7step_by6StepByINtNtNtBc_3ops5range5RangexEENCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3Q_8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB53_3VecxE14extend_trustedBN_E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !48154 !guid !48158 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48160
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48160
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %i.c, i64 32, i1 false), !dbg !48160
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48159
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !48161
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !48161
  %i.e = load <2 x ptr>, ptr %0, align 8, !dbg !48162
  store <2 x ptr> %i.e, ptr %i.d, align 8, !dbg !48161
  call void @_RINvXs5_NtNtNtCscgRAwXFJnXP_4core4iter8adapters7step_byINtB6_6StepByINtNtNtBc_3ops5range5RangexEEINtB6_10StepByImplB14_E9spec_folduNCINvNtB8_3map8map_foldxxuNCINvNtNtNtCsePnBjWcsLF5_10polars_ops6series3ops9int_range13new_int_rangeNtNtCs1LHh8CLbVkQ_11polars_core9datatypes9Int64TypeE0NCINvNvNtNtNtBa_6traits8iterator8Iterator8for_each4callxNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5A_3VecxE14extend_trustedINtB2a_3MapBR_B2v_EE0E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a), !dbg !48163
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48164
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48164
  ret void, !dbg !48165
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENCNvMs0_NtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_formatNtB2G_11TreeFmtNode9node_data0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callB3z_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5k_3VecB3z_E14extend_trustedBN_E0E0EB2M_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48166 !guid !48244 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [64 x i8], align 8                ; 7 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !48253
  %i.e = load ptr, ptr %i.d, align 8, !dbg !48253, !nonnull !2317, !align !2419, !noundef !2317
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !48254 ; 4 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !48254
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !48254 ; 2 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !48254
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !48254
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48246), !dbg !48255
  %i.f = load ptr, ptr %0, align 8, !dbg !48256, !alias.scope !48246, !nonnull !2317, !noundef !2317 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48256
  %i.h = load ptr, ptr %i.g, align 8, !dbg !48256, !alias.scope !48246, !nonnull !2317, !noundef !2317 ; 2 uses
  %i.i = icmp eq ptr %i.f, %i.h, !dbg !48257
  br i1 %i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ENtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format11TreeFmtNodeuNCNvMs0_B3s_B3q_9node_data0NCINvNvB2h_8for_each4callB3q_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecB3q_E14extend_trustedINtB30_3MapBS_B4z_EE0E0E0EB3y_.exit, label %bb.b, !dbg !48258

bb.b:                                             ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48259
  %i.k = load i64, ptr %i.j, align 8, !dbg !48259, !alias.scope !48246, !noundef !2317
  %i.l = ptrtoint ptr %i.h to i64, !dbg !48260
  %i.m = ptrtoint ptr %i.f to i64, !dbg !48260
  %i.n = sub nuw i64 %i.l, %i.m, !dbg !48260
  %i.o = lshr exact i64 %i.n, 3, !dbg !48260
  %.sroa.42.0..sroa_idx.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.e, i64 40
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  br label %bb.c, !dbg !48261

bb.c:                                             ; preds = %bb.d, %bb.b
  %.val15.i.i = phi i64 [ %.sroa.4.0.copyload, %bb.b ], [ %i.x, %bb.d ] ; 3 uses
  %i.t = phi i64 [ %i.k, %bb.b ], [ %i.y, %bb.d ] ; 2 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.z, %bb.d ], !dbg !48262 ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.f, i64 %.sroa.01.0.i.i, !dbg !48263
  %.val16.i.i = load i64, ptr %i.u, align 8, !dbg !48264, !noalias !48247
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !48265, !noalias !48248
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48266, !noalias !48249
  store i64 %i.t, ptr %i.b, align 8, !dbg !48266, !noalias !48249
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48267, !noalias !48249
  store ptr %i.b, ptr %i.a, align 8, !dbg !48267, !noalias !48249
  store ptr @_RNvXsi_NtNtNtCscgRAwXFJnXP_4core3fmt3num3impjNtB9_7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i.i, align 8, !dbg !48267, !noalias !48249
  invoke void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.p, ptr noundef nonnull @251, ptr noundef nonnull %i.a)
          to label %bb.d unwind label %bb.e, !dbg !48268, !noalias !48247

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48269, !noalias !48249
  %i.v = inttoptr i64 %.val16.i.i to ptr, !dbg !48270
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.r, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.q, i64 24, i1 false), !dbg !48271, !noalias !48252
  store i64 1, ptr %i.c, align 8, !dbg !48272, !noalias !48252
  store ptr %i.v, ptr %i.s, align 8, !dbg !48272, !noalias !48252
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48273, !noalias !48249
  %i.w = getelementptr inbounds nuw [64 x i8], ptr %.sroa.5.0.copyload, i64 %.val15.i.i, !dbg !48274
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.w, ptr noundef nonnull readonly align 8 dereferenceable(64) %i.c, i64 64, i1 false), !dbg !48275, !noalias !48252
  %i.x = add i64 %.val15.i.i, 1, !dbg !48276      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !48277, !noalias !48248
  %i.y = add i64 %i.t, 1, !dbg !48278
  %i.z = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !48279 ; 2 uses
  %i.aa = icmp eq i64 %i.z, %i.o, !dbg !48280
  br i1 %i.aa, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters9enumerateINtB5_9EnumerateINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTjRB1y_ENtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans2ir11tree_format11TreeFmtNodeuNCNvMs0_B3s_B3q_9node_data0NCINvNvB2h_8for_each4callB3q_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5C_3VecB3q_E14extend_trustedINtB30_3MapBS_B4z_EE0E0E0EB3y_.exit, label %bb.c, !dbg !48280

bb.e:                                             ; preds = %bb.c
  %i.ab = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val15.i.i, ptr %.sroa.0.0.copyload, align 8, !dbg !48281, !noalias !48247
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3H_8try_folduNCINvNvB3H_12try_for_each4callB2G_INtNtB12_12control_flow11ControlFlowB2G_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECsfcROwRM8ZtH_11polars_plan:bb.a
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca ptr, align 8                ; 5 uses
  %.sroa.73.i = alloca ptr, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50737 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50712), !dbg !50738
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50713), !dbg !50738
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !50739
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50714), !dbg !50740
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50715), !dbg !50740
  %i.e = load i64, ptr %i.c, align 8, !dbg !50741, !alias.scope !50716, !noundef !2317 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !50742, !alias.scope !50717, !noundef !2317
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !50741
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !50740

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !50743
  store i64 %i.h, ptr %i.c, align 8, !dbg !50744, !alias.scope !50718
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !50745
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !50745
  tail call void @llvm.experimental.noalias.scope.decl(metadata !50719), !dbg !50745
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !50720
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !50746, !noalias !50721, !nonnull !2317, !align !2419, !noundef !2317 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50746
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !50746, !noalias !50721, !nonnull !2317, !align !2419, !noundef !2317 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !50747 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !50747, !noalias !50722
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !50748, !noalias !50722, !nonnull !2317, !align !2419, !noundef !2317 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !50748
  %i.n = load i64, ptr %i.m, align 8, !dbg !50748, !noalias !50722, !noundef !2317 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 3, !dbg !50749
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !50749
  %i.p = icmp eq i64 %i.n, 0, !dbg !50750
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %.lr.ph.i.i.i, !dbg !50751

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !50751

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !50752 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !50753, !noalias !50722, !nonnull !2317, !align !2419, !noundef !2317 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.03.0.val.i.i.i, align 8, !dbg !50754, !noalias !50722, !nonnull !2317, !noundef !2317
  %i.s = getelementptr i8, ptr %.sroa.03.0.val.i.i.i, i64 8, !dbg !50754
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !50754, !noalias !50722, !nonnull !2317, !align !2419, !noundef !2317
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32, !dbg !50755
  %i.u = load ptr, ptr %i.t, align 8, !dbg !50755, !invariant.load !2317, !noalias !50722, !nonnull !2317
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.val.i.i.i.i) #51, !dbg !50756, !noalias !50722, !inline_history !50647 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !50756 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !50756
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !50757, !noalias !50722
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !50758
  %i.z = load ptr, ptr %i.y, align 8, !dbg !50758, !invariant.load !2317, !noalias !50722, !nonnull !2317
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #51, !dbg !50759, !noalias !50722, !inline_history !50647
  %i.aa = load i128, ptr %i.a, align 16, !dbg !50760, !noalias !50722, !noundef !2317
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !50761
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !50757, !noalias !50722
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !50762, !prof !2320

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #45, !dbg !50763, !noalias !50722
  unreachable, !dbg !50763

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !50764
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !50764, !noalias !50722, !noundef !2317 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !50765
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !50765

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !50764
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !50764, !noalias !50722, !nonnull !2317, !noundef !2317
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !50766
  %i.ag = load i64, ptr %i.k, align 8, !dbg !50767, !alias.scope !50727, !noalias !50722, !noundef !2317 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !50768, !range !2470, !alias.scope !50727, !noalias !50722, !noundef !2317
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !50769
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !50769

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !50770, !noalias !50728
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !50770

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !50771, !alias.scope !50727, !noalias !50722, !nonnull !2317, !noundef !2317
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !50772
  store ptr %i.af, ptr %i.ak, align 8, !dbg !50773, !noalias !50728
  %i.al = add i64 %i.ag, 1, !dbg !50774           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !50774, !alias.scope !50727, !noalias !50722
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !50750
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.c, !dbg !50751

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #45, !dbg !50765, !noalias !50722
  unreachable, !dbg !50765

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ], !dbg !50775
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !50776
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !50776, !noalias !50722, !nonnull !2317, !noundef !2317
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !50777, !noalias !50721
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !50778, !noalias !50721 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !50778
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !50778, !noalias !50721 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !50778
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !50778, !noalias !50721 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !50731), !dbg !50778
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !50779
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !50780

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !50781, !range !2439, !alias.scope !50732, !noalias !50733, !noundef !2317
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !50781
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.j, !dbg !50781

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.l, !dbg !50782, !noalias !50733

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.4.i, align 8, !dbg !50783, !alias.scope !50734, !noalias !50720
  br label %bb.m, !dbg !50784

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !50785, !noalias !50733
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !50785
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !50785, !noalias !50733
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !50785
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !50785, !noalias !50733
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !50785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !50785, !noalias !50721
  resume { ptr, i32 } %i.as, !dbg !50786

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !50785, !noalias !50733
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !50785
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !50785, !noalias !50733
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !50785
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !50785, !noalias !50733
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !50785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !50785, !noalias !50721
  br label %bb.m, !dbg !50787

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !50788, !alias.scope !50734, !noalias !50720
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !50789, !noalias !50720
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load ptr, ptr %.sroa.4.i, align 8, !dbg !50790, !alias.scope !50735, !noalias !50720, !noundef !2317
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load ptr, ptr %.sroa.73.i, align 8, !dbg !50790, !alias.scope !50735, !noalias !50720
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !50791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !50791
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50792
  store ptr %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i, ptr %i.at, align 8, !dbg !50792, !alias.scope !50736
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50792
  store ptr %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i, ptr %i.au, align 8, !dbg !50792, !alias.scope !50736
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !50793

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !50794
  store i64 %storemerge.i, ptr %0, align 8, !dbg !50794, !alias.scope !50712
  ret void, !dbg !50795
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs2_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50796 !guid !50843 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50852
  %i.b = load i64, ptr %i.a, align 8, !dbg !50852, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50852
  %i.d = load i64, ptr %i.c, align 8, !dbg !50852, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50853, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50853
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50853, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50854 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50854
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50854 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50854
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50854 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50855
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50856

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50856      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50856
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50856

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50856
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50856 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50856
  %i.m = sub i64 %i.l, %i.b, !dbg !50856
  %i.n = shl i64 %i.m, 3, !dbg !50856
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50856 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50856
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50856
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !50856
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !50856
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !50856
  %bound08 = icmp ult ptr %i.k, %2, !dbg !50856
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50856
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50856
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50856
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !50857, !alias.scope !50845, !noalias !50846
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !50858
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50858 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !50858, !alias.scope !50847, !noalias !50846
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !50859 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !50860
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !50860, !alias.scope !50848, !noalias !50849
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !50860, !alias.scope !50848, !noalias !50849
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !50856
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !50856, !llvm.loop !50829

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50856
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50856

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50856
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50856
  %xtraiter = and i64 %i.y, 1, !dbg !50856
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50856
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50856

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50861
  %i.aa = load i64, ptr %i.e, align 8, !dbg !50857, !noalias !50846, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !50858, !noalias !50846, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !50857
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !50857
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50859
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !50860, !noalias !50850
  %i.af = add i64 %.ph, 1, !dbg !50862            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50856

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !50856
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50856

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50861 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !50861
  %i.aj = load i64, ptr %i.e, align 8, !dbg !50857, !noalias !50846, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !50858, !noalias !50846, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !50857
  %i.am = sub i64 %i.al, %i.ak, !dbg !50857
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !50859
  store i64 %i.am, ptr %i.an, align 8, !dbg !50860, !noalias !50850
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !50861 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !50857, !noalias !50846, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !50858, !noalias !50846, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !50857
  %i.as = sub i64 %i.ar, %i.aq, !dbg !50857
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !50859
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !50859
  store i64 %i.as, ptr %i.au, align 8, !dbg !50860, !noalias !50850
  %i.av = add i64 %i.ah, 2, !dbg !50862           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !50855
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50856, !llvm.loop !50834

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !50863
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50864, !noalias !50851
  ret void, !dbg !50865
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs3_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50866 !guid !50913 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50922
  %i.b = load i64, ptr %i.a, align 8, !dbg !50922, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50922
  %i.d = load i64, ptr %i.c, align 8, !dbg !50922, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50923, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50923
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50923, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50924 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50924
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50924 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50924
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50924 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50925
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50926

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50926      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50926
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50926

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50926
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50926 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50926
  %i.m = sub i64 %i.l, %i.b, !dbg !50926
  %i.n = shl i64 %i.m, 3, !dbg !50926
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50926 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50926
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50926
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !50926
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !50926
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !50926
  %bound08 = icmp ult ptr %i.k, %2, !dbg !50926
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50926
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50926
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50926
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !50927, !alias.scope !50915, !noalias !50916
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !50928
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50928 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !50928, !alias.scope !50917, !noalias !50916
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !50929 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !50930
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !50930, !alias.scope !50918, !noalias !50919
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !50930, !alias.scope !50918, !noalias !50919
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !50926
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !50926, !llvm.loop !50899

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50926
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50926

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50926
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50926
  %xtraiter = and i64 %i.y, 1, !dbg !50926
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50926
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50926

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !50931
  %i.aa = load i64, ptr %i.e, align 8, !dbg !50927, !noalias !50916, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !50928, !noalias !50916, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !50927
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !50927
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50929
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !50930, !noalias !50920
  %i.af = add i64 %.ph, 1, !dbg !50932            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50926

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !50926
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50926

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !50931 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !50931
  %i.aj = load i64, ptr %i.e, align 8, !dbg !50927, !noalias !50916, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !50928, !noalias !50916, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !50927
  %i.am = sub i64 %i.al, %i.ak, !dbg !50927
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !50929
  store i64 %i.am, ptr %i.an, align 8, !dbg !50930, !noalias !50920
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !50931 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !50927, !noalias !50916, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !50928, !noalias !50916, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !50927
  %i.as = sub i64 %i.ar, %i.aq, !dbg !50927
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !50929
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !50929
  store i64 %i.as, ptr %i.au, align 8, !dbg !50930, !noalias !50920
  %i.av = add i64 %i.ah, 2, !dbg !50932           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !50925
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50926, !llvm.loop !50904

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !50933
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !50934, !noalias !50921
  ret void, !dbg !50935
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3U_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB57_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !50936 !guid !50983 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !50992
  %i.b = load i64, ptr %i.a, align 8, !dbg !50992, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !50992
  %i.d = load i64, ptr %i.c, align 8, !dbg !50992, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !50993, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !50993
  %i.g = load ptr, ptr %i.f, align 8, !dbg !50993, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !50994 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !50994
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !50994 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !50994
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !50994 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !50995
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !50996

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !50996      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !50996
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !50996

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !50996
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !50996 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !50996
  %i.m = sub i64 %i.l, %i.b, !dbg !50996
  %i.n = shl i64 %i.m, 3, !dbg !50996
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !50996 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !50996
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !50996
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !50996
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !50996
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !50996
  %bound08 = icmp ult ptr %i.k, %2, !dbg !50996
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !50996
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !50996
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !50996
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !50997, !alias.scope !50985, !noalias !50986
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !50998
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !50998 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !50998, !alias.scope !50987, !noalias !50986
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !50999 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51000
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51000, !alias.scope !50988, !noalias !50989
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51000, !alias.scope !50988, !noalias !50989
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !50996
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !50996, !llvm.loop !50969

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !50996
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !50996

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !50996
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !50996
  %xtraiter = and i64 %i.y, 1, !dbg !50996
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !50996
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !50996

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51001
  %i.aa = load i64, ptr %i.e, align 8, !dbg !50997, !noalias !50986, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !50998, !noalias !50986, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !50997
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !50997
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !50999
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51000, !noalias !50990
  %i.af = add i64 %.ph, 1, !dbg !51002            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !50996

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !50996
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50996

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51001 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51001
  %i.aj = load i64, ptr %i.e, align 8, !dbg !50997, !noalias !50986, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !50998, !noalias !50986, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !50997
  %i.am = sub i64 %i.al, %i.ak, !dbg !50997
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !50999
  store i64 %i.am, ptr %i.an, align 8, !dbg !51000, !noalias !50990
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51001 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !50997, !noalias !50986, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !50998, !noalias !50986, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !50997
  %i.as = sub i64 %i.ar, %i.aq, !dbg !50997
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !50999
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !50999
  store i64 %i.as, ptr %i.au, align 8, !dbg !51000, !noalias !50990
  %i.av = add i64 %i.ah, 2, !dbg !51002           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !50995
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !50996, !llvm.loop !50974

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB59_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51003
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51004, !noalias !50991
  ret void, !dbg !51005
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsk_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !51006 !guid !51053 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51062
  %i.b = load i64, ptr %i.a, align 8, !dbg !51062, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51062
  %i.d = load i64, ptr %i.c, align 8, !dbg !51062, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51063, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51063
  %i.g = load ptr, ptr %i.f, align 8, !dbg !51063, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51064 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51064
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !51064 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51064
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !51064 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !51065
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !51066

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !51066      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !51066
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !51066

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !51066
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !51066 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !51066
  %i.m = sub i64 %i.l, %i.b, !dbg !51066
  %i.n = shl i64 %i.m, 3, !dbg !51066
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !51066 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !51066
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !51066
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !51066
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !51066
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !51066
  %bound08 = icmp ult ptr %i.k, %2, !dbg !51066
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !51066
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !51066
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !51066
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !51067, !alias.scope !51055, !noalias !51056
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !51068
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !51068 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !51068, !alias.scope !51057, !noalias !51056
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !51069 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51070
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51070, !alias.scope !51058, !noalias !51059
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51070, !alias.scope !51058, !noalias !51059
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !51066
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !51066, !llvm.loop !51039

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !51066
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !51066

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !51066
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !51066
  %xtraiter = and i64 %i.y, 1, !dbg !51066
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51066
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !51066

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51071
  %i.aa = load i64, ptr %i.e, align 8, !dbg !51067, !noalias !51056, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !51068, !noalias !51056, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !51067
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !51067
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !51069
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51070, !noalias !51060
  %i.af = add i64 %.ph, 1, !dbg !51072            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !51066

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !51066
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51066

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51071 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51071
  %i.aj = load i64, ptr %i.e, align 8, !dbg !51067, !noalias !51056, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !51068, !noalias !51056, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !51067
  %i.am = sub i64 %i.al, %i.ak, !dbg !51067
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51069
  store i64 %i.am, ptr %i.an, align 8, !dbg !51070, !noalias !51060
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51071 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !51067, !noalias !51056, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !51068, !noalias !51056, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !51067
  %i.as = sub i64 %i.ar, %i.aq, !dbg !51067
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51069
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !51069
  store i64 %i.as, ptr %i.au, align 8, !dbg !51070, !noalias !51060
  %i.av = add i64 %i.ah, 2, !dbg !51072           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !51065
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51066, !llvm.loop !51044

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsk_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51073
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51074, !noalias !51061
  ret void, !dbg !51075
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsn_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !51076 !guid !51123 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51132
  %i.b = load i64, ptr %i.a, align 8, !dbg !51132, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51132
  %i.d = load i64, ptr %i.c, align 8, !dbg !51132, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51133, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51133
  %i.g = load ptr, ptr %i.f, align 8, !dbg !51133, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51134 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51134
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !51134 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51134
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !51134 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !51135
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !51136

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !51136      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !51136
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !51136

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !51136
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !51136 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !51136
  %i.m = sub i64 %i.l, %i.b, !dbg !51136
  %i.n = shl i64 %i.m, 3, !dbg !51136
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !51136 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !51136
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !51136
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !51136
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !51136
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !51136
  %bound08 = icmp ult ptr %i.k, %2, !dbg !51136
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !51136
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !51136
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !51136
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !51137, !alias.scope !51125, !noalias !51126
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !51138
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !51138 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !51138, !alias.scope !51127, !noalias !51126
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !51139 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51140
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51140, !alias.scope !51128, !noalias !51129
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51140, !alias.scope !51128, !noalias !51129
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !51136
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !51136, !llvm.loop !51109

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !51136
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !51136

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !51136
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !51136
  %xtraiter = and i64 %i.y, 1, !dbg !51136
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51136
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !51136

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51141
  %i.aa = load i64, ptr %i.e, align 8, !dbg !51137, !noalias !51126, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !51138, !noalias !51126, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !51137
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !51137
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !51139
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51140, !noalias !51130
  %i.af = add i64 %.ph, 1, !dbg !51142            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !51136

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !51136
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51136

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51141 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51141
  %i.aj = load i64, ptr %i.e, align 8, !dbg !51137, !noalias !51126, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !51138, !noalias !51126, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !51137
  %i.am = sub i64 %i.al, %i.ak, !dbg !51137
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51139
  store i64 %i.am, ptr %i.an, align 8, !dbg !51140, !noalias !51130
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51141 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !51137, !noalias !51126, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !51138, !noalias !51126, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !51137
  %i.as = sub i64 %i.ar, %i.aq, !dbg !51137
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51139
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !51139
  store i64 %i.as, ptr %i.au, align 8, !dbg !51140, !noalias !51130
  %i.av = add i64 %i.ah, 2, !dbg !51142           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !51135
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51136, !llvm.loop !51114

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsn_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51143
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51144, !noalias !51131
  ret void, !dbg !51145
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsp_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !51146 !guid !51193 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51202
  %i.b = load i64, ptr %i.a, align 8, !dbg !51202, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51202
  %i.d = load i64, ptr %i.c, align 8, !dbg !51202, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51203, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51203
  %i.g = load ptr, ptr %i.f, align 8, !dbg !51203, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51204 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51204
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !51204 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51204
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !51204 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !51205
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !51206

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !51206      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !51206
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !51206

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !51206
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !51206 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !51206
  %i.m = sub i64 %i.l, %i.b, !dbg !51206
  %i.n = shl i64 %i.m, 3, !dbg !51206
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !51206 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !51206
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !51206
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !51206
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !51206
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !51206
  %bound08 = icmp ult ptr %i.k, %2, !dbg !51206
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !51206
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !51206
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !51206
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !51207, !alias.scope !51195, !noalias !51196
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !51208
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !51208 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !51208, !alias.scope !51197, !noalias !51196
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !51209 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51210
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51210, !alias.scope !51198, !noalias !51199
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51210, !alias.scope !51198, !noalias !51199
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !51206
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !51206, !llvm.loop !51179

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !51206
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !51206

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !51206
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !51206
  %xtraiter = and i64 %i.y, 1, !dbg !51206
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51206
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !51206

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51211
  %i.aa = load i64, ptr %i.e, align 8, !dbg !51207, !noalias !51196, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !51208, !noalias !51196, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !51207
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !51207
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !51209
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51210, !noalias !51200
  %i.af = add i64 %.ph, 1, !dbg !51212            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !51206

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !51206
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51206

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51211 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51211
  %i.aj = load i64, ptr %i.e, align 8, !dbg !51207, !noalias !51196, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !51208, !noalias !51196, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !51207
  %i.am = sub i64 %i.al, %i.ak, !dbg !51207
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51209
  store i64 %i.am, ptr %i.an, align 8, !dbg !51210, !noalias !51200
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51211 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !51207, !noalias !51196, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !51208, !noalias !51196, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !51207
  %i.as = sub i64 %i.ar, %i.aq, !dbg !51207
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51209
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !51209
  store i64 %i.as, ptr %i.au, align 8, !dbg !51210, !noalias !51200
  %i.av = add i64 %i.ah, 2, !dbg !51212           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !51205
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51206, !llvm.loop !51184

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsp_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51213
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51214, !noalias !51201
  ret void, !dbg !51215
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsq_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !51216 !guid !51263 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51272
  %i.b = load i64, ptr %i.a, align 8, !dbg !51272, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51272
  %i.d = load i64, ptr %i.c, align 8, !dbg !51272, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51273, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51273
  %i.g = load ptr, ptr %i.f, align 8, !dbg !51273, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51274 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51274
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !51274 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51274
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !51274 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !51275
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !51276

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !51276      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !51276
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !51276

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !51276
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !51276 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !51276
  %i.m = sub i64 %i.l, %i.b, !dbg !51276
  %i.n = shl i64 %i.m, 3, !dbg !51276
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !51276 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !51276
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !51276
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !51276
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !51276
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !51276
  %bound08 = icmp ult ptr %i.k, %2, !dbg !51276
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !51276
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !51276
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !51276
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !51277, !alias.scope !51265, !noalias !51266
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !51278
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !51278 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !51278, !alias.scope !51267, !noalias !51266
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !51279 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51280
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51280, !alias.scope !51268, !noalias !51269
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51280, !alias.scope !51268, !noalias !51269
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !51276
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !51276, !llvm.loop !51249

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !51276
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !51276

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !51276
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !51276
  %xtraiter = and i64 %i.y, 1, !dbg !51276
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51276
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !51276

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51281
  %i.aa = load i64, ptr %i.e, align 8, !dbg !51277, !noalias !51266, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !51278, !noalias !51266, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !51277
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !51277
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !51279
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51280, !noalias !51270
  %i.af = add i64 %.ph, 1, !dbg !51282            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !51276

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !51276
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51276

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51281 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51281
  %i.aj = load i64, ptr %i.e, align 8, !dbg !51277, !noalias !51266, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !51278, !noalias !51266, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !51277
  %i.am = sub i64 %i.al, %i.ak, !dbg !51277
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51279
  store i64 %i.am, ptr %i.an, align 8, !dbg !51280, !noalias !51270
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51281 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !51277, !noalias !51266, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !51278, !noalias !51266, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !51277
  %i.as = sub i64 %i.ar, %i.aq, !dbg !51277
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51279
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !51279
  store i64 %i.as, ptr %i.au, align 8, !dbg !51280, !noalias !51270
  %i.av = add i64 %i.ah, 2, !dbg !51282           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !51275
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51276, !llvm.loop !51254

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsq_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51283
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51284, !noalias !51271
  ret void, !dbg !51285
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsr_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !51286 !guid !51333 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51342
  %i.b = load i64, ptr %i.a, align 8, !dbg !51342, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51342
  %i.d = load i64, ptr %i.c, align 8, !dbg !51342, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51343, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51343
  %i.g = load ptr, ptr %i.f, align 8, !dbg !51343, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51344 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51344
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !51344 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51344
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !51344 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !51345
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !51346

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !51346      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !51346
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !51346

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !51346
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !51346 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !51346
  %i.m = sub i64 %i.l, %i.b, !dbg !51346
  %i.n = shl i64 %i.m, 3, !dbg !51346
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !51346 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !51346
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !51346
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !51346
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !51346
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !51346
  %bound08 = icmp ult ptr %i.k, %2, !dbg !51346
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !51346
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !51346
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !51346
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !51347, !alias.scope !51335, !noalias !51336
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !51348
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !51348 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !51348, !alias.scope !51337, !noalias !51336
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !51349 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51350
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51350, !alias.scope !51338, !noalias !51339
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51350, !alias.scope !51338, !noalias !51339
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !51346
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !51346, !llvm.loop !51319

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !51346
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !51346

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !51346
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !51346
  %xtraiter = and i64 %i.y, 1, !dbg !51346
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51346
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !51346

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51351
  %i.aa = load i64, ptr %i.e, align 8, !dbg !51347, !noalias !51336, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !51348, !noalias !51336, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !51347
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !51347
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !51349
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51350, !noalias !51340
  %i.af = add i64 %.ph, 1, !dbg !51352            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !51346

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !51346
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51346

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51351 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51351
  %i.aj = load i64, ptr %i.e, align 8, !dbg !51347, !noalias !51336, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !51348, !noalias !51336, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !51347
  %i.am = sub i64 %i.al, %i.ak, !dbg !51347
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51349
  store i64 %i.am, ptr %i.an, align 8, !dbg !51350, !noalias !51340
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51351 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !51347, !noalias !51336, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !51348, !noalias !51336, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !51347
  %i.as = sub i64 %i.ar, %i.aq, !dbg !51347
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51349
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !51349
  store i64 %i.as, ptr %i.au, align 8, !dbg !51350, !noalias !51340
  %i.av = add i64 %i.ah, 2, !dbg !51352           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !51345
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51346, !llvm.loop !51324

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsr_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51353
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51354, !noalias !51341
  ret void, !dbg !51355
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recss_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !51356 !guid !51403 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51412
  %i.b = load i64, ptr %i.a, align 8, !dbg !51412, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51412
  %i.d = load i64, ptr %i.c, align 8, !dbg !51412, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51413, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51413
  %i.g = load ptr, ptr %i.f, align 8, !dbg !51413, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51414 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51414
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !51414 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51414
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !51414 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !51415
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !51416

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !51416      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !51416
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !51416

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !51416
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !51416 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !51416
  %i.m = sub i64 %i.l, %i.b, !dbg !51416
  %i.n = shl i64 %i.m, 3, !dbg !51416
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !51416 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !51416
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !51416
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !51416
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !51416
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !51416
  %bound08 = icmp ult ptr %i.k, %2, !dbg !51416
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !51416
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !51416
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !51416
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !51417, !alias.scope !51405, !noalias !51406
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !51418
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !51418 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !51418, !alias.scope !51407, !noalias !51406
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !51419 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51420
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51420, !alias.scope !51408, !noalias !51409
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51420, !alias.scope !51408, !noalias !51409
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !51416
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !51416, !llvm.loop !51389

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !51416
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !51416

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !51416
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !51416
  %xtraiter = and i64 %i.y, 1, !dbg !51416
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51416
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !51416

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51421
  %i.aa = load i64, ptr %i.e, align 8, !dbg !51417, !noalias !51406, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !51418, !noalias !51406, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !51417
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !51417
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !51419
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51420, !noalias !51410
  %i.af = add i64 %.ph, 1, !dbg !51422            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !51416

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !51416
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51416

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51421 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51421
  %i.aj = load i64, ptr %i.e, align 8, !dbg !51417, !noalias !51406, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !51418, !noalias !51406, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !51417
  %i.am = sub i64 %i.al, %i.ak, !dbg !51417
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51419
  store i64 %i.am, ptr %i.an, align 8, !dbg !51420, !noalias !51410
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51421 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !51417, !noalias !51406, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !51418, !noalias !51406, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !51417
  %i.as = sub i64 %i.ar, %i.aq, !dbg !51417
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51419
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !51419
  store i64 %i.as, ptr %i.au, align 8, !dbg !51420, !noalias !51410
  %i.av = add i64 %i.ah, 2, !dbg !51422           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !51415
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51416, !llvm.loop !51394

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recss_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51423
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51424, !noalias !51411
  ret void, !dbg !51425
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recsu_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !51426 !guid !51473 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51482
  %i.b = load i64, ptr %i.a, align 8, !dbg !51482, !noundef !2317 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !51482
  %i.d = load i64, ptr %i.c, align 8, !dbg !51482, !noundef !2317 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51483, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51483
  %i.g = load ptr, ptr %i.f, align 8, !dbg !51483, !nonnull !2317, !align !2419, !noundef !2317 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51484 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51484
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !51484 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51484
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !51484 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !51485
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !51486

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !51486      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !51486
  br i1 %min.iters.check, label %.lr.ph.i.preheader16, label %vector.memcheck, !dbg !51486

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !51486
  %i.k = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !51486 ; 2 uses
  %i.l = add i64 %.sroa.4.0.copyload, %i.d, !dbg !51486
  %i.m = sub i64 %i.l, %i.b, !dbg !51486
  %i.n = shl i64 %i.m, 3, !dbg !51486
  %i.o = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.n, !dbg !51486 ; 2 uses
  %i.p = getelementptr i8, ptr %i.e, i64 8, !dbg !51486
  %bound0 = icmp ult ptr %i.k, %i.p, !dbg !51486
  %bound0.a = icmp ult ptr %i.e, %i.o, !dbg !51486
  %found.conflict = and i1 %bound0, %bound0.a, !dbg !51486
  %2 = getelementptr i8, ptr %i.g, i64 8, !dbg !51486
  %bound08 = icmp ult ptr %i.k, %2, !dbg !51486
  %bound19 = icmp ult ptr %i.g, %i.o, !dbg !51486
  %found.conflict10 = and i1 %bound08, %bound19, !dbg !51486
  %conflict.rdx = or i1 %found.conflict, %found.conflict10, !dbg !51486
  br i1 %conflict.rdx, label %.lr.ph.i.preheader16, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.q = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.r = add i64 %i.b, %n.vec
  %i.s = load i64, ptr %i.e, align 8, !dbg !51487, !alias.scope !51475, !noalias !51476
  %broadcast.splatinsert11 = insertelement <2 x i64> poison, i64 %i.s, i64 0, !dbg !51488
  %broadcast.splat12 = shufflevector <2 x i64> %broadcast.splatinsert11, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !51488 ; 2 uses
  %i.t = load i64, ptr %i.g, align 8, !dbg !51488, !alias.scope !51477, !noalias !51476
  %broadcast.splatinsert13 = insertelement <2 x i64> poison, i64 %i.t, i64 0
  %broadcast.splat14 = shufflevector <2 x i64> %broadcast.splatinsert13, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat12
  %invariant.op18 = sub <2 x i64> %broadcast.splat12, %broadcast.splat14
  %invariant.op20 = sub <2 x i64> %invariant.op, %broadcast.splat14
  %i.u = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass19 = add <2 x i64> %vec.ind, %invariant.op18
  %.reass21 = add <2 x i64> %vec.ind, %invariant.op20
  %i.v = getelementptr [8 x i8], ptr %i.u, i64 %index, !dbg !51489 ; 2 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 16, !dbg !51490
  store <2 x i64> %.reass19, ptr %i.v, align 8, !dbg !51490, !alias.scope !51478, !noalias !51479
  store <2 x i64> %.reass21, ptr %i.w, align 8, !dbg !51490, !alias.scope !51478, !noalias !51479
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.x = icmp eq i64 %index.next, %n.vec, !dbg !51486
  br i1 %i.x, label %middle.block, label %vector.body, !dbg !51486, !llvm.loop !51459

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !51486
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader16, !dbg !51486

.lr.ph.i.preheader16:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.q, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.r, %middle.block ] ; 5 uses
  %i.y = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !51486
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !51486
  %xtraiter = and i64 %i.y, 1, !dbg !51486
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !51486
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !51486

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader16
  %i.z = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !51491
  %i.aa = load i64, ptr %i.e, align 8, !dbg !51487, !noalias !51476, !noundef !2317
  %i.ab = load i64, ptr %i.g, align 8, !dbg !51488, !noalias !51476, !noundef !2317
  %i.ac = add i64 %i.aa, %.sroa.0.011.i.ph, !dbg !51487
  %i.ad = sub i64 %i.ac, %i.ab, !dbg !51487
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !51489
  store i64 %i.ad, ptr %i.ae, align 8, !dbg !51490, !noalias !51480
  %i.af = add i64 %.ph, 1, !dbg !51492            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !51486

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader16
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader16 ], [ %i.af, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader16 ], [ %i.z, %.lr.ph.i.prol ]
  %i.ag = icmp eq i64 %i.d, %.neg, !dbg !51486
  br i1 %i.ag, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51486

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ah = phi i64 [ %i.av, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !51491 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.ao, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.ai = add nuw i64 %.sroa.0.011.i, 1, !dbg !51491
  %i.aj = load i64, ptr %i.e, align 8, !dbg !51487, !noalias !51476, !noundef !2317
  %i.ak = load i64, ptr %i.g, align 8, !dbg !51488, !noalias !51476, !noundef !2317
  %i.al = add i64 %i.aj, %.sroa.0.011.i, !dbg !51487
  %i.am = sub i64 %i.al, %i.ak, !dbg !51487
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51489
  store i64 %i.am, ptr %i.an, align 8, !dbg !51490, !noalias !51480
  %i.ao = add nuw i64 %.sroa.0.011.i, 2, !dbg !51491 ; 2 uses
  %i.ap = load i64, ptr %i.e, align 8, !dbg !51487, !noalias !51476, !noundef !2317
  %i.aq = load i64, ptr %i.g, align 8, !dbg !51488, !noalias !51476, !noundef !2317
  %i.ar = add i64 %i.ap, %i.ai, !dbg !51487
  %i.as = sub i64 %i.ar, %i.aq, !dbg !51487
  %i.at = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ah, !dbg !51489
  %i.au = getelementptr i8, ptr %i.at, i64 8, !dbg !51489
  store i64 %i.as, ptr %i.au, align 8, !dbg !51490, !noalias !51480
  %i.av = add i64 %i.ah, 2, !dbg !51492           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.ao, %i.d, !dbg !51485
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !51486, !llvm.loop !51464

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recsu_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.q, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.av, %.lr.ph.i ], !dbg !51493
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51494, !noalias !51481
  ret void, !dbg !51495
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering8ir_graph24build_ir_traversal_graphNtB1w_7EdgeKeyNtB1w_4EdgeEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3F_8for_each4callB3b_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4V_3VecB3b_E14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !51496 !guid !51544 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !51553
  %i.b = load i64, ptr %i.a, align 8, !dbg !51553, !noundef !2317 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !51553
  %i.d = load i64, ptr %i.c, align 8, !dbg !51553, !noundef !2317 ; 2 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !51554, !nonnull !2317, !align !2419, !noundef !2317
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !51555 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !51555
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !51555 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !51555
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !51555
  %i.f = icmp ult i64 %i.b, %i.d, !dbg !51556
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtB27_8ir_graph24build_ir_traversal_graphB25_NtB27_4EdgeEs_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecB25_E14extend_trustedINtB1B_3MapB3_B3m_EE0E0E0EB2d_.exit, !dbg !51557

.lr.ph.i:                                         ; preds = %bb.a, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i
  %.val7.i = phi i64 [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i ], [ %.sroa.5.0.copyload, %bb.a ] ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i ], [ %i.b, %bb.a ]
  %i.g = invoke { i32, i32 } @_RINvMs3_NtCs5ERpa6sqwDS_7slotmap5basicINtB6_7SlotMapNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyNtBQ_4EdgeE19try_insert_with_keyNCNvB2_6insert0NtNtB8_4util5NeverEBW_(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.e, i1 noundef zeroext false)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i unwind label %bb.b, !dbg !51558, !noalias !51546 ; 2 uses

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i: ; preds = %.lr.ph.i
  %i.h = add nuw i64 %.sroa.0.011.i, 1, !dbg !51559 ; 2 uses
  %i.i = extractvalue { i32, i32 } %i.g, 0, !dbg !51560
  %i.j = extractvalue { i32, i32 } %i.g, 1, !dbg !51560
  %i.k = getelementptr inbounds nuw [8 x i8], ptr %.sroa.7.0.copyload, i64 %.val7.i, !dbg !51561 ; 2 uses
  store i32 %i.i, ptr %i.k, align 4, !dbg !51562, !noalias !51552
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 4, !dbg !51562
  store i32 %i.j, ptr %i.l, align 4, !dbg !51562, !noalias !51552
  %i.m = add i64 %.val7.i, 1, !dbg !51563         ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.h, %i.d, !dbg !51556
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtB27_8ir_graph24build_ir_traversal_graphB25_NtB27_4EdgeEs_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecB25_E14extend_trustedINtB1B_3MapB3_B3m_EE0E0E0EB2d_.exit, label %.lr.ph.i, !dbg !51557

bb.b:                                             ; preds = %.lr.ph.i
  %i.n = landingpad { ptr, i32 }
          cleanup
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51564, !noalias !51546
  resume { ptr, i32 } %i.n, !dbg !51565

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtB27_8ir_graph24build_ir_traversal_graphB25_NtB27_4EdgeEs_0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB50_3VecB25_E14extend_trustedINtB1B_3MapB3_B3m_EE0E0E0EB2d_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.5.0.copyload, %bb.a ], [ %i.m, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer17simplify_ordering7EdgeKeyuNCINvNtBX_8ir_graph24build_ir_traversal_graphBV_NtBX_4EdgeEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4h_3VecBV_E14extend_trustedINtB4_3MapINtNtNtBa_3ops5range5RangejEB2c_EE0E0E0B13_.exit.i ], !dbg !51566
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !51567, !noalias !51546
  ret void, !dbg !51568
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array7binview12read_binviewShINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB2P_6cursor6CursorQRB2K_EEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3T_8try_folduNCINvNvB3T_12try_for_each4callINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhEINtNtB12_12control_flow11ControlFlowB7l_ENcNtB89_5Break0E0B89_E0IB8a_B89_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([32 x i8]) align 8 captures(none) dereferenceable(32) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !51569 !guid !51618 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.6.i = alloca [16 x i8], align 8          ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !51630 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51619), !dbg !51631
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51620), !dbg !51631
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i)
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.e = load i64, ptr %i.d, align 8, !alias.scope !51621, !noundef !2317 ; 2 uses
  %.promoted.i = load i64, ptr %i.c, align 8, !alias.scope !51622 ; 2 uses
  %i.f = icmp ult i64 %.promoted.i, %i.e, !dbg !51632
  br i1 %i.f, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsknLZRuU4977_13polars_buffer6buffer6BufferhENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB48_B2A_EENCINvNtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5array7binview12read_binviewShINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB6h_6cursor6CursorQRB6c_EEEs_0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B4R_EIB2f_NtNtBa_7convert10InfallibleB3o_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B4G_NcNtB4G_5Break0E0B4G_E0E0B47_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !51633

.lr.ph.i:                                         ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 40
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = load ptr, ptr %1, align 8, !alias.scope !51623, !noalias !51624, !nonnull !2317, !align !2419, !noundef !2317
  %i.m = load ptr, ptr %i.g, align 8, !alias.scope !51623, !noalias !51624, !nonnull !2317, !align !2419, !noundef !2317
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !51623, !noalias !51624, !nonnull !2317, !align !2419, !noundef !2317
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !51623, !noalias !51624, !nonnull !2317, !noundef !2317
  %i.p = load ptr, ptr %i.j, align 8, !alias.scope !51623, !noalias !51624, !nonnull !2317, !align !2419, !noundef !2317
  %i.q = load ptr, ptr %i.k, align 8, !alias.scope !51623, !noalias !51624, !nonnull !2317, !align !2419, !noundef !2317
  br label %bb.b, !dbg !51633

bb.b:                                             ; preds = %bb.i, %.lr.ph.i
  %i.r = phi i64 [ %.promoted.i, %.lr.ph.i ], [ %i.s, %bb.i ]
  %i.s = add nuw i64 %i.r, 1, !dbg !51634         ; 3 uses
  store i64 %i.s, ptr %i.c, align 8, !dbg !51635, !alias.scope !51622
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !51625
  tail call void @llvm.experimental.noalias.scope.decl(metadata !51623), !dbg !51636
  %i.t = load i64, ptr %i.n, align 8, !dbg !51637, !noalias !51626, !noundef !2317
  %i.u = load i8, ptr %i.o, align 1, !dbg !51638, !range !2474, !noalias !51626, !noundef !2317
  %i.v = trunc nuw i8 %i.u to i1, !dbg !51638
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !51639, !noalias !51626
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.p, i64 40, i1 false), !dbg !51639, !noalias !51626
  call void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read10read_basic10read_bytesINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1f_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m, i64 noundef %i.t, i1 noundef zeroext %i.v, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !dbg !51640, !noalias !51624
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !51641, !noalias !51626
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !51642, !noalias !51624 ; 3 uses
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !51642, !noalias !51624 ; 4 uses
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !51643
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !51644

bb.c:                                             ; preds = %bb.b
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 32 ; 2 uses
  %i.y = load i64, ptr %3, align 8, !dbg !51645, !range !2439, !alias.scope !51627, !noalias !51628, !noundef !2317
end_hunk_1
