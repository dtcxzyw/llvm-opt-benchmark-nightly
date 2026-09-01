Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/pola-rs/original/polars_plan-a78d50bf479d2301.polars_plan.b121b8564f397b47-cgu.14?download=true
inline.NumInlined: 10276
inline.NumDeleted: 5308
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumRuntimeUnrolled: 68
loop-unroll.NumUnrolled: 70
begin_hunk_0_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNCNvNtNtB1V_9optimizer10sortedness13is_sorted_rec0sf_0ENCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB3O_8IndexSetNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtBa_6traits7collect6ExtendB4x_E6extendBX_E0ENtNtB6e_8iterator8Iterator4folduNCINvNvB6X_8for_each4callTB4x_uENCINvXsb_NtB3Q_3mapINtB88_8IndexMapB4x_uB5m_EIB6a_B7S_E6extendBN_E0E0EB1X_:bb.a
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNCNvNtNtB1f_9optimizer10sortedness13is_sorted_rec0sf_0NCINvNtB6_3map8map_foldB23_TB23_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4v_8IndexSetB23_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB23_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2T_EE0NCINvNvNtNtB6a_8iterator8Iterator8for_each4callB4e_NCINvXsb_NtB4x_3mapINtB8D_8IndexMapB23_uB5i_EIB66_B4e_E6extendINtB3S_3MapB6N_B4m_EE0E0E0E0B1h_.exit.i.i, label %bb.m, !dbg !44509

bb.m:                                             ; preds = %_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness13is_sorted_rec0sf_0Bb_.exit.i.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44510, !noalias !44518
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(23) %i.a, ptr noundef nonnull align 8 dereferenceable(23) %i.b, i64 23, i1 false), !dbg !44523, !noalias !44406
  store i8 %.sroa.4.0.copyload2.i.i.i, ptr %.sroa.45.0..sroa_idx.i.i.i, align 1, !dbg !44510, !noalias !44406
  %i.al = call { i64, i1 } @_RNvMs2_NtCse4dvU5uQ85g_8indexmap3mapINtB5_8IndexMapNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateE11insert_fullCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !44524, !noalias !44528 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44531, !noalias !44518
  br label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNCNvNtNtB1f_9optimizer10sortedness13is_sorted_rec0sf_0NCINvNtB6_3map8map_foldB23_TB23_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4v_8IndexSetB23_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB23_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2T_EE0NCINvNvNtNtB6a_8iterator8Iterator8for_each4callB4e_NCINvXsb_NtB4x_3mapINtB8D_8IndexMapB23_uB5i_EIB66_B4e_E6extendINtB3S_3MapB6N_B4m_EE0E0E0E0B1h_.exit.i.i, !dbg !44532

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNCNvNtNtB1f_9optimizer10sortedness13is_sorted_rec0sf_0NCINvNtB6_3map8map_foldB23_TB23_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4v_8IndexSetB23_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB23_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2T_EE0NCINvNvNtNtB6a_8iterator8Iterator8for_each4callB4e_NCINvXsb_NtB4x_3mapINtB8D_8IndexMapB23_uB5i_EIB66_B4e_E6extendINtB3S_3MapB6N_B4m_EE0E0E0E0B1h_.exit.i.i: ; preds = %bb.m, %_RNCNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9optimizer10sortedness13is_sorted_rec0sf_0Bb_.exit.i.i.i, %_RNvXsl_NtCs2mZqlW55729_12polars_utils6pl_strNtB5_10PlSmallStrNtNtCscgRAwXFJnXP_4core3cmp9PartialEq2eqCsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, %_RNvMs0_NtCs7VARH73bmU_11compact_str4reprNtB5_4Repr8as_slice.exit8.i.i.i.i, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44533, !noalias !44406
  %i.am = add nuw i64 %.sroa.01.0.i.i, 1, !dbg !44534 ; 2 uses
  %i.an = icmp eq i64 %i.am, %i.l, !dbg !44537
  br i1 %i.an, label %_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNCNvNtNtB1F_9optimizer10sortedness13is_sorted_rec0sf_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTB4q_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5w_8IndexSetB4q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3t_7collect6ExtendB4q_E6extendBV_E0NCINvNvB3p_8for_each4callB5f_NCINvXsb_NtB5y_3mapINtB8n_8IndexMapB4q_uB6j_EIB77_B5f_E6extendINtB48_3MapBV_B5n_EE0E0E0EB1H_.exit, label %bb.c, !dbg !44537

_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_mapINtB6_9FilterMapINtNtNtBc_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRENCNCNvNtNtB1F_9optimizer10sortedness13is_sorted_rec0sf_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNtB8_3map8map_foldNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrTB4q_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB5w_8IndexSetB4q_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtB3t_7collect6ExtendB4q_E6extendBV_E0NCINvNvB3p_8for_each4callB5f_NCINvXsb_NtB5y_3mapINtB8n_8IndexMapB4q_uB6j_EIB77_B5f_E6extendINtB48_3MapBV_B5n_EE0E0E0EB1H_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters10filter_map15filter_map_foldRNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStruNCNCNvNtNtB1f_9optimizer10sortedness13is_sorted_rec0sf_0NCINvNtB6_3map8map_foldB23_TB23_uEuNCINvXs8_NtCse4dvU5uQ85g_8indexmap3setINtB4v_8IndexSetB23_NtNtCsk79RHlfmHDk_8foldhash7quality11RandomStateEINtNtNtB8_6traits7collect6ExtendB23_E6extendINtB4_9FilterMapINtNtNtBa_5slice4iter4IterB1b_EB2T_EE0NCINvNvNtNtB6a_8iterator8Iterator8for_each4callB4e_NCINvXsb_NtB4x_3mapINtB8D_8IndexMapB23_uB5i_EIB66_B4e_E6extendINtB3S_3MapB6N_B4m_EE0E0E0E0B1h_.exit.i.i, %bb.a
  ret void, !dbg !44538
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEENCINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB2P_9ExtendVecINtNtNtBa_6traits7collect6ExtendB1Z_E6extendBX_E0ENtNtB49_8iterator8Iterator4folduNCINvNvB4S_8for_each4callTB1Z_jENCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB63_3VecB5N_E14extend_trustedBN_E0E0EB2V_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !44539 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = load ptr, ptr %0, align 8, !dbg !44540, !nonnull !11, !noundef !11
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !44540
  %i.d = load ptr, ptr %i.c, align 8, !dbg !44540, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44541
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !44542
  %i.f = load ptr, ptr %i.e, align 8, !dbg !44542, !nonnull !11, !align !409, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !44543
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !44543
  store ptr %i.f, ptr %i.g, align 8, !dbg !44543
  call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtB7_6cloned6ClonedINtNtNtBb_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1I_TB1I_jEuNCINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB3L_9ExtendVecINtNtB2w_7collect6ExtendB1I_E6extendBM_E0NCINvNvB2s_8for_each4callB3x_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6h_3VecB3x_E14extend_trustedINtB3b_3MapBM_B3F_EE0E0E0EB3R_(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !44545
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44546
  ret void, !dbg !44547
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENCINvMNtNtB1H_5aexpr8traverseNtB2F_5AExpr10inputs_revINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4G_8for_each4callB3V_NCINvMsj_B3r_B3o_14extend_trustedBN_E0E0EB1J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 !dbg !44548 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44549
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !44550
  call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNCINvMNtNtB1q_5aexpr8traverseNtB4c_5AExpr10inputs_revINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3m_EE0NCINvNvB2g_8for_each4callB3m_NCINvMsj_B4Y_B4V_14extend_trustedINtB2Z_3MapBM_B44_EE0E0E0EB1s_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !44552
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44553
  ret void, !dbg !44554
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENCINvMNtNtB1H_5aexpr8traverseNtB2F_5AExpr12children_revINtNtCsgZ49sUHp3tW_5alloc3vec3VecNtNtCs2mZqlW55729_12polars_utils5arena4NodeEE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4I_8for_each4callB3X_NCINvMsj_B3t_B3q_14extend_trustedBN_E0E0EB1J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 !dbg !44555 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44556
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !44557
  call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNCINvMNtNtB1q_5aexpr8traverseNtB4c_5AExpr12children_revINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3m_EE0NCINvNvB2g_8for_each4callB3m_NCINvMsj_B50_B4X_14extend_trustedINtB2Z_3MapBM_B44_EE0E0E0EB1s_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !44559
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44560
  ret void, !dbg !44561
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtBc_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENvMs4_B1F_B1D_4nodeENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callNtNtCs2mZqlW55729_12polars_utils5arena4NodeNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4K_3VecB3U_E14extend_trustedBN_E0E0EB1J_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 !dbg !44562 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44563
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false), !dbg !44564
  call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtNtBb_5slice4iter4IterNtNtNtCsfcROwRM8ZtH_11polars_plan5plans7expr_ir6ExprIREENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1m_NtNtCs2mZqlW55729_12polars_utils5arena4NodeuNvMs4_B1o_B1m_4nodeNCINvNvB2g_8for_each4callB3m_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB4Z_3VecB3m_E14extend_trustedINtB2Z_3MapBM_B44_EE0E0E0EB1s_(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !44566
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44567
  ret void, !dbg !44568
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3rev3RevINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENCINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB2Q_9ExtendVecINtNtNtBa_6traits7collect6ExtendB21_E6extendBX_E0ENtNtB4a_8iterator8Iterator4folduNCINvNvB4T_8for_each4callTB21_jENCINvMsj_B1i_INtB1i_3VecB5O_E14extend_trustedBN_E0E0EB2W_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 !dbg !44569 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44570
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !44571
  %i.c = load ptr, ptr %i.b, align 8, !dbg !44571, !nonnull !11, !align !409, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !dbg !44572
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24, !dbg !44572
  store ptr %i.c, ptr %i.d, align 8, !dbg !44572
  call void @_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3revINtB5_3RevINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtCs2mZqlW55729_12polars_utils5arena4NodeEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1K_TB1K_jEuNCINvXNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9stack_optNtB3M_9ExtendVecINtNtB2x_7collect6ExtendB1K_E6extendBM_E0NCINvNvB2t_8for_each4callB3y_NCINvMsj_B11_INtB11_3VecB3y_E14extend_trustedINtB3c_3MapBM_B3G_EE0E0E0EB3S_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !dbg !44574
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44575
  ret void, !dbg !44576
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEIB1e_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB3A_16IRStructFunction9get_fields_00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB5l_8for_each4callB1D_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6B_3VecB1D_E14extend_trustedBN_E0E0EB3I_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(48) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !44577 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [48 x i8], align 16               ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [80 x i8], align 16               ; 5 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !44578 ; 2 uses
  %.sroa.41.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !44578
  %.sroa.41.0.copyload = load ptr, ptr %.sroa.41.0..sroa_idx, align 8, !dbg !44578 ; 2 uses
  %.sroa.52.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !44578
  %.sroa.52.0.copyload = load i64, ptr %.sroa.52.0..sroa_idx, align 8, !dbg !44578 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40, !dbg !44578
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !44578 ; 2 uses
  %.sroa.03.0.copyload = load ptr, ptr %1, align 8, !dbg !44579 ; 4 uses
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !44579
  %.sroa.54.0.copyload = load i64, ptr %.sroa.54.0..sroa_idx, align 8, !dbg !44579 ; 2 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !44579
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !44579
  %i.e = sub i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !44582
  %.not.i.i = icmp eq i64 %.sroa.6.0.copyload, %.sroa.52.0.copyload, !dbg !44593
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEIBX_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2k_EB1m_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB4A_16IRStructFunction9get_fields_00NCINvNvB3b_8for_each4callB1m_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6W_3VecB1m_E14extend_trustedINtB3U_3MapBM_B4t_EE0E0E0EB4I_.exit, label %.lr.ph.i.i, !dbg !44603

.lr.ph.i.i:                                       ; preds = %bb.a
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.41.0.copyload) ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  br label %bb.c, !dbg !44603

.body.i.i:                                        ; preds = %bb.g, %bb.f, %bb.b
  %.pn.i.i = phi { ptr, i32 } [ %i.o, %bb.f ], [ %i.g, %bb.b ], [ %i.o, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val13.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !44604, !noalias !44613
  resume { ptr, i32 } %.pn.i.i, !dbg !44620

bb.b:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !44621

bb.c:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBW_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB2R_16IRStructFunction9get_fields_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5G_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB72_B1Q_EEB2K_EE0E0E0B2Z_.exit.i.i, %.lr.ph.i.i
  %.val13.i.i = phi i64 [ %.sroa.54.0.copyload, %.lr.ph.i.i ], [ %i.u, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBW_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB2R_16IRStructFunction9get_fields_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5G_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB72_B1Q_EEB2K_EE0E0E0B2Z_.exit.i.i ] ; 3 uses
  %.sroa.0.014.i.i = phi i64 [ 0, %.lr.ph.i.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBW_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB2R_16IRStructFunction9get_fields_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5G_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB72_B1Q_EEB2K_EE0E0E0B2Z_.exit.i.i ] ; 2 uses
  %i.h = add nuw i64 %.sroa.0.014.i.i, 1, !dbg !44623 ; 2 uses
  %i.i = add i64 %.sroa.0.014.i.i, %.sroa.52.0.copyload, !dbg !44629 ; 2 uses
  %i.j = getelementptr inbounds nuw [80 x i8], ptr %.sroa.0.0.copyload, i64 %i.i, !dbg !44632
  %i.k = getelementptr inbounds nuw [24 x i8], ptr %.sroa.41.0.copyload, i64 %i.i, !dbg !44638 ; 3 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44643), !dbg !44646
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !44647
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44650), !dbg !44647
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44653, !noalias !44663
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !44653, !noalias !44666
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 23, !dbg !44669
  %i.m = load i8, ptr %i.l, align 1, !dbg !44669, !range !1228, !alias.scope !44680, !noalias !44681, !noundef !11
  %i.n = icmp eq i8 %i.m, -40, !dbg !44682
  br i1 %i.n, label %bb.d, label %bb.e, !dbg !44682

bb.d:                                             ; preds = %bb.c
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.k) #49
          to label %.noexc.i.i unwind label %bb.b, !dbg !44683, !noalias !44613

bb.e:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.k, i64 24, i1 false), !dbg !44684, !noalias !44681
  br label %.noexc.i.i, !dbg !44687

.noexc.i.i:                                       ; preds = %bb.e, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !44688, !noalias !44666
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !44689, !noalias !44666
  invoke fastcc void @_RNvXsk_NtNtCs1LHh8CLbVkQ_11polars_core9datatypes5dtypeNtB5_8DataTypeNtNtCscgRAwXFJnXP_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(48) %i.b, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(80) %i.j)
          to label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBW_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB2R_16IRStructFunction9get_fields_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5G_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB72_B1Q_EEB2K_EE0E0E0B2Z_.exit.i.i unwind label %bb.f, !dbg !44690, !noalias !44691

bb.f:                                             ; preds = %.noexc.i.i
  %i.o = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 23, !dbg !44692
  %i.q = load i8, ptr %i.p, align 1, !dbg !44692, !range !1228, !alias.scope !44699, !noalias !44666, !noundef !11
  %i.r = icmp eq i8 %i.q, -40, !dbg !44708
  br i1 %i.r, label %bb.g, label %.body.i.i, !dbg !44708, !prof !135

bb.g:                                             ; preds = %bb.f
  invoke void @_RNvNvXs2_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtNtCscgRAwXFJnXP_4core3ops4drop4Drop4drop13outlined_drop(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.h, !dbg !44709, !noalias !44691

bb.h:                                             ; preds = %bb.g
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !44710, !noalias !44691
  unreachable, !dbg !44710

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBW_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB2R_16IRStructFunction9get_fields_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5G_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB72_B1Q_EEB2K_EE0E0E0B2Z_.exit.i.i: ; preds = %.noexc.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !44711, !noalias !44663
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.d, ptr noundef nonnull align 16 dereferenceable(48) %i.b, i64 48, i1 false), !dbg !44711, !noalias !44663
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44714, !noalias !44666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !44714, !noalias !44666
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44715, !noalias !44663
  %i.t = getelementptr inbounds nuw [80 x i8], ptr %.sroa.7.0.copyload, i64 %.val13.i.i, !dbg !44716
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.t, ptr noundef nonnull readonly align 16 dereferenceable(80) %i.d, i64 80, i1 false), !dbg !44723, !noalias !44726
  %i.u = add i64 %.val13.i.i, 1, !dbg !44727      ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !44730
  %exitcond.not.i.i = icmp eq i64 %i.h, %i.e, !dbg !44593
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEIBX_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2k_EB1m_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB4A_16IRStructFunction9get_fields_00NCINvNvB3b_8for_each4callB1m_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6W_3VecB1m_E14extend_trustedINtB3U_3MapBM_B4t_EE0E0E0EB4I_.exit, label %bb.c, !dbg !44603

_RINvXs_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3zipINtB5_3ZipINtNtNtBb_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEIBX_NtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTRB1m_RB2k_EB1m_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB4A_16IRStructFunction9get_fields_00NCINvNvB3b_8for_each4callB1m_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB6W_3VecB1m_E14extend_trustedINtB3U_3MapBM_B4t_EE0E0E0EB4I_.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBW_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB2R_16IRStructFunction9get_fields_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5G_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB72_B1Q_EEB2K_EE0E0E0B2Z_.exit.i.i, %bb.a
  %.val11.i.i = phi i64 [ %.sroa.54.0.copyload, %bb.a ], [ %i.u, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldTRNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEBW_uNCNCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr7struct_NtB2R_16IRStructFunction9get_fields_00NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5G_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_3zip3ZipINtNtNtBa_5slice4iter4IterBW_EIB72_B1Q_EEB2K_EE0E0E0B2Z_.exit.i.i ], !dbg !44731
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.03.0.copyload) ]
  store i64 %.val11.i.i, ptr %.sroa.03.0.copyload, align 8, !dbg !44732, !noalias !44613
  ret void, !dbg !44738
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIB1e_NtNtNtB1J_2io3ipc8IpcFieldEENCINvNtNtNtB2F_4read5array5union10read_unionINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB3Q_6cursor6CursorQRShEEEs_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4S_8try_folduNCINvNvB4S_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1J_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB8k_ENcNtB9i_5Break0E0B9i_E0IB9j_B9i_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(136) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !44739 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44740), !dbg !44743
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44744), !dbg !44743
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !44746 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !44746, !alias.scope !44755, !noalias !44740, !noundef !11 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !44760
  %i.f = load i64, ptr %i.e, align 8, !dbg !44760, !alias.scope !44755, !noalias !44740, !noundef !11
  %i.g = icmp ult i64 %i.d, %i.f, !dbg !44746
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBS_NtNtNtB1n_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2g_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1n_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB68_B4q_EENCINvNtNtNtB2i_4read5array5union10read_unionINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB7I_6cursor6CursorQRShEEEs_0NCINvXB8_INtB8_12GenericShuntINtB3v_3MapB3_B6X_EIB45_NtNtBc_7convert10InfallibleB5o_EEB2I_8try_folduNCINvNvB2I_12try_for_each4callB4q_B6M_NcNtB6M_5Break0E0B6M_E0E0B67_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !44746

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !44761
  %i.i = add nuw i64 %i.d, 1, !dbg !44762
  store i64 %i.i, ptr %i.c, align 8, !dbg !44762, !alias.scope !44755, !noalias !44740
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !44764, !alias.scope !44755, !noalias !44740, !nonnull !11, !noundef !11
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i, i64 %i.d, !dbg !44765
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !44770
  %.val2.i.i.i = load ptr, ptr %i.k, align 8, !dbg !44771, !alias.scope !44755, !noalias !44740, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %.val2.i.i.i, i64 %i.d, !dbg !44772
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !44777
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !44777
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44778), !dbg !44777
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44781
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44782), !dbg !44785
  %i.n = load ptr, ptr %i.h, align 8, !dbg !44788, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !44802
  %i.p = load ptr, ptr %i.o, align 8, !dbg !44802, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !44803
  %i.r = load ptr, ptr %i.q, align 8, !dbg !44803, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !44804
  %i.t = load ptr, ptr %i.s, align 8, !dbg !44804, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !44805
  %i.v = load ptr, ptr %i.u, align 8, !dbg !44805, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !44806
  %i.x = load ptr, ptr %i.w, align 8, !dbg !44806, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  %i.y = load i64, ptr %i.x, align 8, !dbg !44806, !noalias !44807, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !44808
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !44808, !alias.scope !44782, !noalias !44796, !nonnull !11, !noundef !11
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !44808, !range !980, !noalias !44807, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !44808
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44809, !noalias !44807
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !44809
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !44809, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !dbg !44809, !noalias !44807
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !44810
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !44810, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !44811, !noundef !11
  %i.ah = load i16, ptr %i.ag, align 2, !dbg !44810, !range !44812, !noalias !44807, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !44813
  %i.aj = load ptr, ptr %i.ai, align 8, !dbg !44813, !alias.scope !44782, !noalias !44796, !nonnull !11, !align !409, !noundef !11
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !44814
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !44814, !alias.scope !44782, !noalias !44796, !nonnull !11, !noundef !11
  %i.am = load i8, ptr %i.al, align 1, !dbg !44814, !range !980, !noalias !44807, !noundef !11
  %i.an = trunc nuw i8 %i.am to i1, !dbg !44814
  call void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read11deserialize4readINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB19_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, i64 noundef %i.y, i1 noundef zeroext %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 noundef 0, i64 undef, i16 noundef %i.ah, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.aj, i1 noundef zeroext %i.an), !dbg !44815, !noalias !44816
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44817, !noalias !44807
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !44818, !noalias !44819 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !44818
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !44818, !noalias !44819 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !44818
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !44818, !noalias !44819 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44820), !dbg !44818
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !44823
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !44828

bb.c:                                             ; preds = %bb.b
  %i.ao = load i64, ptr %3, align 8, !dbg !44829, !range !517, !alias.scope !44832, !noalias !44835, !noundef !11
  %i.ap = icmp eq i64 %i.ao, 18, !dbg !44829
  br i1 %i.ap, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.d, !dbg !44829

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.f, !dbg !44837, !noalias !44839

bb.e:                                             ; preds = %bb.b
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !44840
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !44840, !alias.scope !44846, !noalias !44847
  br label %bb.g, !dbg !44848

bb.f:                                             ; preds = %bb.d
  %i.aq = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !44849, !noalias !44835
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !44849
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !44849, !noalias !44835
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !44849
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !44849, !noalias !44835
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !44849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !44849, !noalias !44819
  resume { ptr, i32 } %i.aq, !dbg !44850

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !44849, !noalias !44835
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !44849
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !44849, !noalias !44835
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !44849
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !44849, !noalias !44835
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !44849
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !44849, !noalias !44819
  br label %bb.g, !dbg !44851

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !44852, !alias.scope !44846, !noalias !44847
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44853, !noalias !44781
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !44854, !alias.scope !44857, !noalias !44860, !noundef !11
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !44854
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !44854, !alias.scope !44857, !noalias !44860
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !44854
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !44862
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !44862
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !44863
  store ptr %5, ptr %i.ar, align 8, !dbg !44863, !alias.scope !44869, !noalias !44744
  %i.as = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !44863
  store ptr %6, ptr %i.as, align 8, !dbg !44863, !alias.scope !44869, !noalias !44744
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBS_NtNtNtB1n_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2g_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1n_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB68_B4q_EENCINvNtNtNtB2i_4read5array5union10read_unionINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB7I_6cursor6CursorQRShEEEs_0NCINvXB8_INtB8_12GenericShuntINtB3v_3MapB3_B6X_EIB45_NtNtBc_7convert10InfallibleB5o_EEB2I_8try_folduNCINvNvB2I_12try_for_each4callB4q_B6M_NcNtB6M_5Break0E0B6M_E0E0B67_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !44872

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBS_NtNtNtB1n_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2g_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1n_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB68_B4q_EENCINvNtNtNtB2i_4read5array5union10read_unionINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB7I_6cursor6CursorQRShEEEs_0NCINvXB8_INtB8_12GenericShuntINtB3v_3MapB3_B6X_EIB45_NtNtBc_7convert10InfallibleB5o_EEB2I_8try_folduNCINvNvB2I_12try_for_each4callB4q_B6M_NcNtB6M_5Break0E0B6M_E0E0B67_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !44873
  store i64 %storemerge.i, ptr %0, align 8, !dbg !44873, !alias.scope !44740, !noalias !44744
  ret void, !dbg !44874
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIB1e_NtNtNtB1J_2io3ipc8IpcFieldEENCINvNtNtNtB2F_4read5array7struct_11read_structINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB3T_6cursor6CursorQRShEEE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4T_8try_folduNCINvNvB4T_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1J_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB8l_ENcNtB9j_5Break0E0B9j_E0IB9k_B9j_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !44875 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44876), !dbg !44879
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44880), !dbg !44879
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !44882 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !dbg !44882, !alias.scope !44889, !noalias !44876, !noundef !11 ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 40, !dbg !44894
  %i.f = load i64, ptr %i.e, align 8, !dbg !44894, !alias.scope !44889, !noalias !44876, !noundef !11
  %i.g = icmp ult i64 %i.d, %i.f, !dbg !44882
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBS_NtNtNtB1n_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2g_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1n_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB68_B4q_EENCINvNtNtNtB2i_4read5array7struct_11read_structINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB7L_6cursor6CursorQRShEEE0NCINvXB8_INtB8_12GenericShuntINtB3v_3MapB3_B6X_EIB45_NtNtBc_7convert10InfallibleB5o_EEB2I_8try_folduNCINvNvB2I_12try_for_each4callB4q_B6M_NcNtB6M_5Break0E0B6M_E0E0B67_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !44882

bb.b:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !44895
  %i.i = add nuw i64 %i.d, 1, !dbg !44896
  store i64 %i.i, ptr %i.c, align 8, !dbg !44896, !alias.scope !44889, !noalias !44876
  %.val.i.i.i = load ptr, ptr %1, align 8, !dbg !44897, !alias.scope !44889, !noalias !44876, !nonnull !11, !noundef !11
  %i.j = getelementptr inbounds nuw [72 x i8], ptr %.val.i.i.i, i64 %i.d, !dbg !44898
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !44901
  %.val2.i.i.i = load ptr, ptr %i.k, align 8, !dbg !44902, !alias.scope !44889, !noalias !44876, !nonnull !11, !noundef !11
  %i.l = getelementptr inbounds nuw [40 x i8], ptr %.val2.i.i.i, i64 %i.d, !dbg !44903
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !44906
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !44906
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44907), !dbg !44906
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !44910
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44911), !dbg !44914
  %i.n = load ptr, ptr %i.h, align 8, !dbg !44917, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !44930
  %i.p = load ptr, ptr %i.o, align 8, !dbg !44930, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !44931
  %i.r = load ptr, ptr %i.q, align 8, !dbg !44931, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !44932
  %i.t = load ptr, ptr %i.s, align 8, !dbg !44932, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !44933
  %i.v = load ptr, ptr %i.u, align 8, !dbg !44933, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !44934
  %i.x = load ptr, ptr %i.w, align 8, !dbg !44934, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  %i.y = load i64, ptr %i.x, align 8, !dbg !44934, !noalias !44935, !noundef !11
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !44936
  %i.aa = load ptr, ptr %i.z, align 8, !dbg !44936, !alias.scope !44911, !noalias !44924, !nonnull !11, !noundef !11
  %i.ab = load i8, ptr %i.aa, align 1, !dbg !44936, !range !980, !noalias !44935, !noundef !11
  %i.ac = trunc nuw i8 %i.ab to i1, !dbg !44936
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !44937, !noalias !44935
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !44937
  %i.ae = load ptr, ptr %i.ad, align 8, !dbg !44937, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.a, ptr noundef nonnull align 8 dereferenceable(40) %i.ae, i64 40, i1 false), !dbg !44937, !noalias !44935
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !44938
  %i.ag = load ptr, ptr %i.af, align 8, !dbg !44938, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.ah = load i64, ptr %i.ag, align 8, !dbg !44938, !range !13, !noalias !44935, !noundef !11
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ag, i64 8, !dbg !44938
  %i.aj = load i64, ptr %i.ai, align 8, !dbg !44938, !noalias !44935
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !44939
  %i.al = load ptr, ptr %i.ak, align 8, !dbg !44939, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !44811, !noundef !11
  %i.am = load i16, ptr %i.al, align 2, !dbg !44939, !range !44812, !noalias !44935, !noundef !11
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !44940
  %i.ao = load ptr, ptr %i.an, align 8, !dbg !44940, !alias.scope !44911, !noalias !44924, !nonnull !11, !align !409, !noundef !11
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !44941
  %i.aq = load ptr, ptr %i.ap, align 8, !dbg !44941, !alias.scope !44911, !noalias !44924, !nonnull !11, !noundef !11
  %i.ar = load i8, ptr %i.aq, align 1, !dbg !44941, !range !980, !noalias !44935, !noundef !11
  %i.as = trunc nuw i8 %i.ar to i1, !dbg !44941
  call void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read11deserialize4readINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB19_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.p, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.l, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.r, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.v, i64 noundef %i.y, i1 noundef zeroext %i.ac, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a, i64 noundef %i.ah, i64 %i.aj, i16 noundef %i.am, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, i1 noundef zeroext %i.as), !dbg !44942, !noalias !44943
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !44944, !noalias !44935
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !44945, !noalias !44946 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !44945
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !44945, !noalias !44946 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !44945
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !44945, !noalias !44946 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !44947), !dbg !44945
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !44950
  br i1 %.not.i.i.i.i, label %bb.e, label %bb.c, !dbg !44954

bb.c:                                             ; preds = %bb.b
  %i.at = load i64, ptr %3, align 8, !dbg !44955, !range !517, !alias.scope !44958, !noalias !44961, !noundef !11
  %i.au = icmp eq i64 %i.at, 18, !dbg !44955
  br i1 %i.au, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.d, !dbg !44955

bb.d:                                             ; preds = %bb.c
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.f, !dbg !44963, !noalias !44965

bb.e:                                             ; preds = %bb.b
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !44966
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !44966, !alias.scope !44971, !noalias !44972
  br label %bb.g, !dbg !44973

bb.f:                                             ; preds = %bb.d
  %i.av = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !44974, !noalias !44961
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !44974
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !44974, !noalias !44961
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !44974
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !44974, !noalias !44961
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !44974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !44974, !noalias !44946
  resume { ptr, i32 } %i.av, !dbg !44975

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.d, %bb.c
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !44974, !noalias !44961
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !44974
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !44974, !noalias !44961
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !44974
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !44974, !noalias !44961
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !44974
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.m, i64 48, i1 false), !dbg !44974, !noalias !44946
  br label %bb.g, !dbg !44976

bb.g:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.e
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.e ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.e ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !44977, !alias.scope !44971, !noalias !44972
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !44978, !noalias !44910
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !44979, !alias.scope !44981, !noalias !44984, !noundef !11
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !44979
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !44979, !alias.scope !44981, !noalias !44984
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !44979
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !44986
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !44986
  %i.aw = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !44987
  store ptr %5, ptr %i.aw, align 8, !dbg !44987, !alias.scope !44991, !noalias !44880
  %i.ax = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !44987
  store ptr %6, ptr %i.ax, align 8, !dbg !44987, !alias.scope !44991, !noalias !44880
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBS_NtNtNtB1n_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2g_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1n_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB68_B4q_EENCINvNtNtNtB2i_4read5array7struct_11read_structINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB7L_6cursor6CursorQRShEEE0NCINvXB8_INtB8_12GenericShuntINtB3v_3MapB3_B6X_EIB45_NtNtBc_7convert10InfallibleB5o_EEB2I_8try_folduNCINvNvB2I_12try_for_each4callB4q_B6M_NcNtB6M_5Break0E0B6M_E0E0B67_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !44994

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtBc_5slice4iter4IterNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEIBS_NtNtNtB1n_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB1h_RB2g_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1n_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB68_B4q_EENCINvNtNtNtB2i_4read5array7struct_11read_structINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB7L_6cursor6CursorQRShEEE0NCINvXB8_INtB8_12GenericShuntINtB3v_3MapB3_B6X_EIB45_NtNtBc_7convert10InfallibleB5o_EEB2I_8try_folduNCINvNvB2I_12try_for_each4callB4q_B6M_NcNtB6M_5Break0E0B6M_E0E0B67_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.g
  %storemerge.i = phi i64 [ 1, %bb.g ], [ 0, %bb.a ], !dbg !44995
  store i64 %storemerge.i, ptr %0, align 8, !dbg !44995, !alias.scope !44876, !noalias !44880
  ret void, !dbg !44996
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtNtB2S_2io3ipc8IpcFieldEENCINvNtNtB49_4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5k_6cursor6CursorQRShEEEs6_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB6n_8try_folduNCINvNvB6n_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2S_5array5ArrayEL_EINtNtNtBc_3ops12control_flow11ControlFlowB9P_ENcNtBaN_5Break0E0BaN_E0IBaO_BaN_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(144) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !44997 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 5 uses
  %i.e = alloca [40 x i8], align 8                ; 5 uses
  %i.f = alloca [80 x i8], align 16               ; 7 uses
  %i.g = alloca [72 x i8], align 8                ; 11 uses
  %.sroa.6.i.i = alloca [48 x i8], align 8        ; 6 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 48, !dbg !44998
  tail call void @llvm.experimental.noalias.scope.decl(metadata !44999), !dbg !45002
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45003), !dbg !45002
  %i.i = load ptr, ptr %1, align 8, !dbg !45005, !alias.scope !45019, !noalias !44999, !nonnull !11, !noundef !11 ; 3 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !45026
  %i.k = load ptr, ptr %i.j, align 8, !dbg !45026, !alias.scope !45019, !noalias !44999, !nonnull !11, !noundef !11
  %i.l = icmp eq ptr %i.i, %i.k, !dbg !45028
  br i1 %i.l, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtNtB2w_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB2q_RB3L_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2w_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7D_B5V_EENCINvNtNtB3N_4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB9d_6cursor6CursorQRShEEEs6_0NCINvXB8_INtB8_12GenericShuntINtB50_3MapB3_B8s_EIB5A_NtNtBc_7convert10InfallibleB6T_EEB4d_8try_folduNCINvNvB4d_12try_for_each4callB5V_B8h_NcNtB8h_5Break0E0B8h_E0E0B7C_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !45032

bb.b:                                             ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %i.i, i64 104, !dbg !45033
  store ptr %i.m, ptr %1, align 8, !dbg !45036, !alias.scope !45019, !noalias !44999
  %i.n = getelementptr inbounds nuw i8, ptr %i.i, i64 32, !dbg !45037
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !45045 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !dbg !45047, !alias.scope !45050, !noalias !44999, !nonnull !11, !noundef !11 ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !45053
  %i.r = load ptr, ptr %i.q, align 8, !dbg !45053, !alias.scope !45050, !noalias !44999, !nonnull !11, !noundef !11
  %i.s = icmp eq ptr %i.p, %i.r, !dbg !45055
  br i1 %i.s, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtNtB2w_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB2q_RB3L_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2w_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7D_B5V_EENCINvNtNtB3N_4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB9d_6cursor6CursorQRShEEEs6_0NCINvXB8_INtB8_12GenericShuntINtB50_3MapB3_B8s_EIB5A_NtNtBc_7convert10InfallibleB6T_EEB4d_8try_folduNCINvNvB4d_12try_for_each4callB5V_B8h_NcNtB8h_5Break0E0B8h_E0E0B7C_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !45059

bb.c:                                             ; preds = %bb.b
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 40, !dbg !45060
  store ptr %i.t, ptr %i.o, align 8, !dbg !45063, !alias.scope !45050, !noalias !44999
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !45064
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !45064
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45065), !dbg !45064
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !45068
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !45071, !noalias !45072
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45075), !dbg !45071
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !45072
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !45072
  %i.u = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.v = load ptr, ptr %i.h, align 8, !dbg !45078, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 56, !dbg !45086
  %i.x = load ptr, ptr %i.w, align 8, !dbg !45086, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 64, !dbg !45087
  %i.z = load ptr, ptr %i.y, align 8, !dbg !45087, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !45088
  %i.ab = load ptr, ptr %i.aa, align 8, !dbg !45088, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !45089
  %i.ad = load ptr, ptr %i.ac, align 8, !dbg !45089, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 88, !dbg !45090
  %i.af = load ptr, ptr %i.ae, align 8, !dbg !45090, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.ag = load i64, ptr %i.af, align 8, !dbg !45090, !noalias !45091, !noundef !11
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 96, !dbg !45092
  %i.ai = load ptr, ptr %i.ah, align 8, !dbg !45092, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 24, !dbg !45092
  %i.ak = load i8, ptr %i.aj, align 8, !dbg !45092, !range !980, !noalias !45091, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !45093, !noalias !45091
  %i.al = getelementptr inbounds nuw i8, ptr %1, i64 104, !dbg !45093
  %i.am = load ptr, ptr %i.al, align 8, !dbg !45093, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  call void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf18BodyCompressionRefECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.am, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 11), !dbg !45094, !noalias !45091
  %i.an = load i8, ptr %i.f, align 16, !dbg !45097, !range !31357, !noalias !45091, !noundef !11
  %.not.i.i.i = icmp eq i8 %i.an, 9, !dbg !45097
  br i1 %.not.i.i.i, label %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i, !dbg !45100

_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i: ; preds = %bb.c
  %i.ao = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.ap = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !45101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !45101, !noalias !45106
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.ap, ptr noundef nonnull align 16 dereferenceable(80) %i.f, i64 80, i1 false), !dbg !45110, !noalias !45091
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !45101, !noalias !45091
  store i64 24, ptr %i.b, align 16, !dbg !45101, !noalias !45106
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !45111, !noalias !45106
  store ptr %i.b, ptr %i.a, align 8, !dbg !45111, !noalias !45106
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !45111
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !dbg !45111, !noalias !45106
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @73, ptr noundef nonnull %i.a), !dbg !45114, !noalias !45120
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !45123, !noalias !45106
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !45123, !noalias !45106
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.u, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @201), !dbg !45124, !noalias !45091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !45128, !noalias !45091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45129, !noalias !45091
  %.sroa.216.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !45130 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.216.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !dbg !45137, !noalias !45138
  %.sroa.317.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 48, !dbg !45130
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.317.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.ao, i64 24, i1 false), !dbg !45130, !noalias !45138
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !45139, !noalias !45072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45139, !noalias !45072
  %.sroa.4.0.copyload3.i.i = load ptr, ptr %.sroa.216.0..sroa_idx.i.i.i, align 8, !dbg !45068, !noalias !45072
  %.sroa.5.0..sroa_idx4.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !45068
  %.sroa.5.0.copyload5.i.i = load ptr, ptr %.sroa.5.0..sroa_idx4.i.i, align 8, !dbg !45068, !noalias !45072
  %.sroa.6.0..sroa_idx6.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !45068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx6.i.i, i64 48, i1 false), !dbg !45068, !noalias !45072
  br label %bb.d, !dbg !45140

_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %bb.c
  %i.aq = trunc nuw i8 %i.ak to i1, !dbg !45092
  %i.ar = getelementptr inbounds nuw i8, ptr %i.f, i64 8, !dbg !45144
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.u, ptr noundef nonnull align 8 dereferenceable(40) %i.ar, i64 40, i1 false), !dbg !45144, !noalias !45091
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45129, !noalias !45091
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.e, ptr noundef nonnull align 8 dereferenceable(40) %i.u, i64 40, i1 false), !dbg !45093, !noalias !45091
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 112, !dbg !45145
  %i.at = load ptr, ptr %i.as, align 8, !dbg !45145, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.au = load i64, ptr %i.at, align 8, !dbg !45145, !range !13, !noalias !45091, !noundef !11
  %i.av = getelementptr inbounds nuw i8, ptr %i.at, i64 8, !dbg !45145
  %i.aw = load i64, ptr %i.av, align 8, !dbg !45145, !noalias !45091
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 120, !dbg !45146
  %i.ay = load ptr, ptr %i.ax, align 8, !dbg !45146, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !44811, !noundef !11
  %i.az = load i16, ptr %i.ay, align 2, !dbg !45146, !range !44812, !noalias !45091, !noundef !11
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 128, !dbg !45147
  %i.bb = load ptr, ptr %i.ba, align 8, !dbg !45147, !alias.scope !45075, !noalias !45082, !nonnull !11, !align !409, !noundef !11
  %i.bc = getelementptr inbounds nuw i8, ptr %1, i64 136, !dbg !45148
  %i.bd = load ptr, ptr %i.bc, align 8, !dbg !45148, !alias.scope !45075, !noalias !45082, !nonnull !11, !noundef !11
  %i.be = load i8, ptr %i.bd, align 1, !dbg !45148, !range !980, !noalias !45091, !noundef !11
  %i.bf = trunc nuw i8 %i.be to i1, !dbg !45148
  call void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read11deserialize4readINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB19_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.v, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.x, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.n, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.p, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.z, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ab, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ad, i64 noundef %i.ag, i1 noundef zeroext %i.aq, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.e, i64 noundef %i.au, i64 %i.aw, i16 noundef %i.az, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.bb, i1 noundef zeroext %i.bf), !dbg !45149, !noalias !45150
  %.sroa.0.0.copyload.pr.i.i = load i64, ptr %i.g, align 8, !dbg !45068, !noalias !45072 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !45139, !noalias !45072
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45139, !noalias !45072
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8, !dbg !45068
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !45068, !noalias !45072 ; 2 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 16, !dbg !45068
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !45068, !noalias !45072 ; 2 uses
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 24, !dbg !45068
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.0..sroa_idx.i.i, i64 48, i1 false), !dbg !45068, !noalias !45072
  call void @llvm.experimental.noalias.scope.decl(metadata !45151), !dbg !45068
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.pr.i.i, 18, !dbg !45154
  br i1 %.not.i.i.i.i, label %bb.f, label %bb.d, !dbg !45140

bb.d:                                             ; preds = %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.i.i, %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i
  %.sroa.5.0.copyload10.i.i = phi ptr [ %.sroa.5.0.copyload5.i.i, %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ], [ %.sroa.5.0.copyload.i.i, %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.i.i ] ; 2 uses
  %.sroa.4.0.copyload9.i.i = phi ptr [ %.sroa.4.0.copyload3.i.i, %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ], [ %.sroa.4.0.copyload.i.i, %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.i.i ] ; 2 uses
  %.sroa.0.0.copyload8.i.i = phi i64 [ 2, %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.thread.i.i ], [ %.sroa.0.0.copyload.pr.i.i, %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.i.i ] ; 2 uses
  %i.bg = load i64, ptr %3, align 8, !dbg !45155, !range !517, !alias.scope !45158, !noalias !45161, !noundef !11
  %i.bh = icmp eq i64 %i.bg, 18, !dbg !45155
  br i1 %i.bh, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.e, !dbg !45155

bb.e:                                             ; preds = %bb.d
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.g, !dbg !45163, !noalias !45165

bb.f:                                             ; preds = %_RNCINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB1j_6cursor6CursorQRShEEEs6_0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !45166
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !45166, !alias.scope !45171, !noalias !45172
  br label %bb.h, !dbg !45173

bb.g:                                             ; preds = %bb.e
  %i.bi = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !45174, !noalias !45161
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !45174
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !45174, !noalias !45161
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !45174
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !45174, !noalias !45161
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !45174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !45174, !noalias !45175
  resume { ptr, i32 } %i.bi, !dbg !45176

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.e, %bb.d
  store i64 %.sroa.0.0.copyload8.i.i, ptr %3, align 8, !dbg !45174, !noalias !45161
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !45174
  store ptr %.sroa.4.0.copyload9.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !45174, !noalias !45161
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !45174
  store ptr %.sroa.5.0.copyload10.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !45174, !noalias !45161
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !45174
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.6.i.i, i64 48, i1 false), !dbg !45174, !noalias !45175
  br label %bb.h, !dbg !45177

bb.h:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.f
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.f ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.f ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !45178, !alias.scope !45171, !noalias !45172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !45179, !noalias !45072
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i), !dbg !45179
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !45180, !alias.scope !45182, !noalias !45185, !noundef !11
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !45180
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !45180, !alias.scope !45182, !noalias !45185
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !45180
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !45187
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !45187
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !45188
  store ptr %5, ptr %i.bj, align 8, !dbg !45188, !alias.scope !45192, !noalias !45003
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !45188
  store ptr %6, ptr %i.bk, align 8, !dbg !45188, !alias.scope !45192, !noalias !45003
  br label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtNtB2w_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB2q_RB3L_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2w_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7D_B5V_EENCINvNtNtB3N_4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB9d_6cursor6CursorQRShEEEs6_0NCINvXB8_INtB8_12GenericShuntINtB50_3MapB3_B8s_EIB5A_NtNtBc_7convert10InfallibleB6T_EEB4d_8try_folduNCINvNvB4d_12try_for_each4callB5V_B8h_NcNtB8h_5Break0E0B8h_E0E0B7C_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !45195

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCs8774dFTUdNv_12polars_arrow9datatypes5field5FieldEINtNtNtBc_5slice4iter4IterNtNtNtB2w_2io3ipc8IpcFieldEENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_3map12map_try_foldTRB2q_RB3L_EINtNtBc_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB2w_5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtBc_3ops12control_flow11ControlFlowIB7D_B5V_EENCINvNtNtB3N_4read6common17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB9d_6cursor6CursorQRShEEEs6_0NCINvXB8_INtB8_12GenericShuntINtB50_3MapB3_B8s_EIB5A_NtNtBc_7convert10InfallibleB6T_EEB4d_8try_folduNCINvNvB4d_12try_for_each4callB5V_B8h_NcNtB8h_5Break0E0B8h_E0E0B7C_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.b, %bb.h
  %storemerge.i = phi i64 [ 1, %bb.h ], [ 0, %bb.b ], [ 0, %bb.a ], !dbg !45196
  store i64 %storemerge.i, ptr %0, align 8, !dbg !45196, !alias.scope !44999, !noalias !45003
  ret void, !dbg !45197
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENCNCNvNtNtNtB27_5plans10conversion9dsl_to_ir11to_alp_impl0sh_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1i_13in_place_drop11InPlaceDropB21_ENCINvNtB1i_16in_place_collect24write_in_place_with_dropB21_E0INtNtBc_6result6ResultB5M_zEEB27_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(64) %0, ptr noundef %1, ptr noundef %2, ptr nofree noundef readnone captures(none) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !45198 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 4 uses
  %i.c = alloca [144 x i8], align 16              ; 4 uses
  %i.d = alloca [144 x i8], align 16              ; 4 uses
  %i.e = alloca [16 x i8], align 8                ; 5 uses
  %i.f = alloca [144 x i8], align 16              ; 8 uses
  %i.g = alloca [176 x i8], align 16              ; 8 uses
  %i.h = alloca [16 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !45199), !dbg !45202
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !45203, !noalias !45199
  store ptr %1, ptr %i.h, align 8, !dbg !45206, !noalias !45199
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8, !dbg !45206 ; 2 uses
  store ptr %2, ptr %i.i, align 8, !dbg !45206, !noalias !45199
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !alias.scope !45207, !noalias !45214, !nonnull !11, !noundef !11 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted.i = load ptr, ptr %i.l, align 8, !alias.scope !45207, !noalias !45214 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !45218, !noalias !45225
  %i.m = icmp eq ptr %.promoted.i, %i.k, !dbg !45228
  br i1 %i.m, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB2R_EB1F_B4p_INtNtBc_6result6ResultB4p_zENCNCNvNtNtNtB1L_5plans10conversion9dsl_to_ir11to_alp_impl0sh_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5P_EB1L_.exit, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.lr.ph.i, !dbg !45233

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.lr.ph.i: ; preds = %bb.a
  %.sroa.517.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 120
  %.sroa.4.0..sroa_idx16.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 112
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !45199, !nonnull !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 128
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 136
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.g, i64 160
  %i.s = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.promoted24.i = load ptr, ptr %i.n, align 8, !alias.scope !45199
  br label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i, !dbg !45233

_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i: ; preds = %bb.l, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.lr.ph.i
  %i.t = phi ptr [ %.promoted24.i, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.lr.ph.i ], [ %i.y, %bb.l ] ; 6 uses
  %i.u = phi ptr [ %2, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.lr.ph.i ], [ %i.ag, %bb.l ] ; 6 uses
  %i.v = phi ptr [ %.promoted.i, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.lr.ph.i ], [ %i.w, %bb.l ] ; 5 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !45234), !dbg !45235
  call void @llvm.experimental.noalias.scope.decl(metadata !45236), !dbg !45237
  call void @llvm.experimental.noalias.scope.decl(metadata !45238), !dbg !45239
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 144, !dbg !45240 ; 3 uses
  store ptr %i.w, ptr %i.l, align 8, !dbg !45244, !alias.scope !45207, !noalias !45214
  %.sroa.5.0..sroa_idx7.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 112, !dbg !45245
  %.sroa.5.0.copyload8.i.i.i = load i64, ptr %.sroa.5.0..sroa_idx7.i.i.i, align 16, !dbg !45245, !noalias !45251 ; 3 uses
  %.not.i.i.i = icmp eq i64 %.sroa.5.0.copyload8.i.i.i, -9223372036854775780, !dbg !45252
  br i1 %.not.i.i.i, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB2R_EB1F_B4p_INtNtBc_6result6ResultB4p_zENCNCNvNtNtNtB1L_5plans10conversion9dsl_to_ir11to_alp_impl0sh_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5P_EB1L_.exit, label %bb.b, !dbg !45255

bb.b:                                             ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i
  %.sroa.7.0..sroa_idx9.i.i.i = getelementptr inbounds nuw i8, ptr %i.v, i64 120, !dbg !45245 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.f, ptr noundef nonnull align 16 dereferenceable(112) %i.v, i64 112, i1 false), !dbg !45256, !noalias !45257
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.517.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx9.i.i.i, i64 24, i1 false), !dbg !45256, !noalias !45257
  store i64 %.sroa.5.0.copyload8.i.i.i, ptr %.sroa.4.0..sroa_idx16.i.i.i, align 16, !dbg !45258, !noalias !45257
  %i.x = icmp eq ptr %i.t, %i.p, !dbg !45261
  br i1 %i.x, label %bb.c, label %bb.d, !dbg !45265

bb.c:                                             ; preds = %bb.b
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.f)
          to label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB2R_EB1F_B4p_INtNtBc_6result6ResultB4p_zENCNCNvNtNtNtB1L_5plans10conversion9dsl_to_ir11to_alp_impl0sh_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5P_EB1L_.exit unwind label %bb.m, !dbg !45266, !noalias !45199

bb.d:                                             ; preds = %bb.b
  %i.y = getelementptr inbounds nuw i8, ptr %i.t, i64 24, !dbg !45267 ; 2 uses
  store ptr %i.y, ptr %i.n, align 8, !dbg !45269, !alias.scope !45270, !noalias !45273
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !45274, !noalias !45199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.r, ptr noundef nonnull align 16 dereferenceable(112) %i.v, i64 112, i1 false), !dbg !45275, !noalias !45199
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.3.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.0..sroa_idx9.i.i.i, i64 24, i1 false), !dbg !45275, !noalias !45199
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45266, !noalias !45257
  store ptr %1, ptr %i.g, align 16, !dbg !45274, !noalias !45199
  store ptr %i.u, ptr %i.q, align 8, !dbg !45274, !noalias !45199
  store i64 %.sroa.5.0.copyload8.i.i.i, ptr %.sroa.2.0..sroa_idx.i, align 16, !dbg !45274, !noalias !45199
  store ptr %i.t, ptr %.sroa.4.0..sroa_idx.i, align 16, !dbg !45274, !noalias !45199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !45277, !noalias !45280
  store ptr %1, ptr %i.e, align 8, !dbg !45277, !noalias !45280
  store ptr %i.u, ptr %i.s, align 8, !dbg !45277, !noalias !45280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !45283, !noalias !45280
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !45284, !noalias !45290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.c, ptr noundef nonnull readonly align 16 dereferenceable(160) %i.r, i64 144, i1 false), !dbg !45284, !noalias !45294
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !45295, !noalias !45290
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !45296, !noalias !45290
  %i.z = getelementptr inbounds nuw i8, ptr %i.t, i64 23, !dbg !45301
  %i.aa = load i8, ptr %i.z, align 1, !dbg !45301, !range !1228, !noalias !45290, !noundef !11
  %i.ab = icmp eq i8 %i.aa, -40, !dbg !45308
  br i1 %i.ab, label %bb.e, label %bb.f, !dbg !45308

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvNvXs1_NtCs7VARH73bmU_11compact_str4reprNtB7_4ReprNtNtCscgRAwXFJnXP_4core5clone5Clone5clone10clone_heap(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.t)
          to label %bb.g unwind label %bb.h, !dbg !45309, !noalias !45290

bb.f:                                             ; preds = %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.t, i64 24, i1 false), !dbg !45310, !noalias !45290
  br label %bb.g, !dbg !45313

bb.g:                                             ; preds = %bb.f, %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 24, i1 false), !dbg !45314, !noalias !45290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !45315, !noalias !45290
  invoke void @_RINvMNtCsfcROwRM8ZtH_11polars_plan3dslNtNtB3_4expr4Expr5aliasNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEB5_(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.d, ptr noalias noundef nonnull readonly align 16 captures(none) dereferenceable(160) %i.r, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b)
          to label %bb.l unwind label %bb.j, !dbg !45316, !noalias !45199

bb.h:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEBM_(ptr noalias noundef align 16 dereferenceable(144) %i.c) #46
          to label %.body.i.i unwind label %bb.i, !dbg !45317, !noalias !45290

bb.i:                                             ; preds = %bb.h
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !45318, !noalias !45290
  unreachable, !dbg !45318

bb.j:                                             ; preds = %bb.g
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i, !dbg !45319

.body.i.i:                                        ; preds = %bb.j, %bb.h
  %eh.lpad-body.i.i = phi { ptr, i32 } [ %i.ae, %bb.j ], [ %i.ac, %bb.h ]
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1J_(ptr noalias noundef align 8 dereferenceable(16) %i.e) #46
          to label %.body.i unwind label %bb.k, !dbg !45319, !noalias !45280

bb.k:                                             ; preds = %.body.i.i
  %i.af = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !45320, !noalias !45280
  unreachable, !dbg !45320

bb.l:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !45317, !noalias !45290
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !45317, !noalias !45290
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(144) %i.u, ptr noundef nonnull align 16 dereferenceable(144) %i.d, i64 144, i1 false), !dbg !45321, !noalias !45280
  %i.ag = getelementptr inbounds nuw i8, ptr %i.u, i64 144, !dbg !45322 ; 3 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !45319, !noalias !45280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !45319, !noalias !45280
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !45330, !noalias !45199
  store ptr %1, ptr %i.h, align 8, !dbg !45331, !noalias !45199
  store ptr %i.ag, ptr %i.i, align 8, !dbg !45331, !noalias !45199
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !dbg !45218, !noalias !45332
  %i.ah = icmp eq ptr %i.w, %i.k, !dbg !45228
  br i1 %i.ah, label %_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB2R_EB1F_B4p_INtNtBc_6result6ResultB4p_zENCNCNvNtNtNtB1L_5plans10conversion9dsl_to_ir11to_alp_impl0sh_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5P_EB1L_.exit, label %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i, !dbg !45233

.body.i:                                          ; preds = %bb.m, %.body.i.i
  %eh.lpad-body15.i = phi { ptr, i32 } [ %i.ai, %bb.m ], [ %eh.lpad-body.i.i, %.body.i.i ]
  resume { ptr, i32 } %eh.lpad-body15.i, !dbg !45335

bb.m:                                             ; preds = %bb.c
  %i.ai = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtNtCsgZ49sUHp3tW_5alloc3vec13in_place_drop11InPlaceDropNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEEB1J_(ptr noalias noundef align 8 dereferenceable(16) %i.h) #46
          to label %.body.i unwind label %bb.n, !dbg !45336, !noalias !45199

bb.n:                                             ; preds = %bb.m
  %i.aj = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking16panic_in_cleanup() #47, !dbg !45335, !noalias !45199
  unreachable, !dbg !45335

_RINvYINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprEINtNtNtBc_5slice4iter4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtBW_13in_place_drop11InPlaceDropB1F_ENCINvNtB8_3map12map_try_foldTB1F_RB2R_EB1F_B4p_INtNtBc_6result6ResultB4p_zENCNCNvNtNtNtB1L_5plans10conversion9dsl_to_ir11to_alp_impl0sh_0NCINvNtBW_16in_place_collect24write_in_place_with_dropB1F_E0E0B5P_EB1L_.exit: ; preds = %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i, %bb.l, %bb.a, %bb.c
  %i.ak = phi ptr [ %i.u, %bb.c ], [ %2, %bb.a ], [ %i.u, %_RNvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl4expr4ExprENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextB12_.exit.i.i.i ], [ %i.ag, %bb.l ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !45266, !noalias !45257
  %i.al = insertvalue { ptr, ptr } poison, ptr %1, 0, !dbg !45337
  %i.am = insertvalue { ptr, ptr } %i.al, ptr %i.ak, 1, !dbg !45337
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !45336, !noalias !45199
  ret { ptr, ptr } %i.am, !dbg !45340
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldEENCNvMNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans5aexpr13function_expr6schemaNtB2H_14IRFunctionExpr9get_fieldsb_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4n_8for_each4callB1F_NCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5D_3VecB1F_E14extend_trustedBN_E0E0EB2N_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !45341 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 10 uses
  %i.b = alloca [48 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 7 uses
  %i.d = alloca [80 x i8], align 16               ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8, !dbg !45342 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !45342
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !45342 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !45342
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !45342 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !45343
  %i.f = load ptr, ptr %i.e, align 8, !dbg !45343, !nonnull !11, !align !45344, !noundef !11
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !45343
  %i.h = load i64, ptr %i.g, align 8, !dbg !45343, !noundef !11
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8, !dbg !45345 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !45345
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8, !dbg !45345 ; 5 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !45345
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8, !dbg !45345
  %.not.i = icmp eq i64 %.sroa.6.0.copyload, 0, !dbg !45348
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB6i_B50_EEB3S_E0E0ECsfcROwRM8ZtH_11polars_plan:bb.a
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !48394
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.split.us.i, !dbg !48402

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48407
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !48461, !noalias !48418
  %i.q = load ptr, ptr %i.b, align 8, !dbg !48419, !noalias !48433, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !48434, !noalias !48418
  %i.s = icmp slt i64 %i.r, 0, !dbg !48439
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !48439

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !48462
  unreachable, !dbg !48462

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.09.i, 1, !dbg !48441    ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !48444, !range !980, !noalias !48433, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48445, !noalias !48448
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !48451, !noalias !48407
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48453, !noalias !48407
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !48445, !noalias !48407
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !48445, !noalias !48407
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !48454, !noalias !48459
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48460, !noalias !48448
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !48394
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.split.i, !dbg !48402

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6m_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5G_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.us.i, %bb.a
  ret void, !dbg !48463
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2P_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3W_7StealerB4G_EENCINvNvNtB2T_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3T_EIB67_B50_EEB3S_E0E0ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48464 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 10 uses
  %i.b = alloca [32 x i8], align 8                ; 11 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48465
  %i.d = load i64, ptr %i.c, align 8, !dbg !48465, !noundef !11 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48465
  %i.f = load i64, ptr %i.e, align 8, !dbg !48465, !noundef !11 ; 3 uses
  %i.g = load ptr, ptr %0, align 8, !dbg !48466, !nonnull !11, !noundef !11
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48467), !dbg !48470
  %i.h = icmp ult i64 %i.d, %i.f, !dbg !48471
  br i1 %i.h, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !48479

.lr.ph.i:                                         ; preds = %bb.a
  %i.i = load i8, ptr %i.g, align 1, !range !980, !alias.scope !48467, !noalias !48480, !noundef !11
  %i.j = trunc nuw i8 %i.i to i1
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32 ; 2 uses
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40 ; 2 uses
  br i1 %i.j, label %.lr.ph.split.us.i, label %.lr.ph.split.i

.lr.ph.split.us.i:                                ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.us.i
  %.sroa.0.09.us.i = phi i64 [ %i.o, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.us.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48484
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !48485, !noalias !48489
  %i.l = load ptr, ptr %i.b, align 8, !dbg !48490, !noalias !48495, !nonnull !11, !noundef !11 ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8, !dbg !48496, !noalias !48489
  %i.n = icmp slt i64 %i.m, 0, !dbg !48499
  br i1 %i.n, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.us.i, !dbg !48499

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.us.i: ; preds = %.lr.ph.split.us.i
  %i.o = add i64 %.sroa.0.09.us.i, 1, !dbg !48500 ; 2 uses
  %i.p = load i8, ptr %i.k, align 8, !dbg !48503, !range !980, !noalias !48495, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48504, !noalias !48507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !48510, !noalias !48484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48511, !noalias !48484
  store ptr %i.l, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !48504, !noalias !48484
  store i8 %i.p, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !48504, !noalias !48484
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !48512, !noalias !48516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48517, !noalias !48507
  %exitcond12.not.i = icmp eq i64 %i.o, %i.f, !dbg !48471
  br i1 %exitcond12.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.split.us.i, !dbg !48479

.lr.ph.split.i:                                   ; preds = %.lr.ph.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i
  %.sroa.0.09.i = phi i64 [ %i.t, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ], [ %i.d, %.lr.ph.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48484
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_lifoCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !48518, !noalias !48489
  %i.q = load ptr, ptr %i.b, align 8, !dbg !48490, !noalias !48495, !nonnull !11, !noundef !11 ; 2 uses
  %i.r = atomicrmw add ptr %i.q, i64 1 monotonic, align 8, !dbg !48496, !noalias !48489
  %i.s = icmp slt i64 %i.r, 0, !dbg !48499
  br i1 %i.s, label %.split.us.i, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !48499

.split.us.i:                                      ; preds = %.lr.ph.split.i, %.lr.ph.split.us.i
  call void @llvm.trap(), !dbg !48519
  unreachable, !dbg !48519

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %.lr.ph.split.i
  %i.t = add i64 %.sroa.0.09.i, 1, !dbg !48500    ; 2 uses
  %i.u = load i8, ptr %i.k, align 8, !dbg !48503, !range !980, !noalias !48495, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48504, !noalias !48507
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !48510, !noalias !48484
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48511, !noalias !48484
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !48504, !noalias !48484
  store i8 %i.u, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !48504, !noalias !48484
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !48512, !noalias !48516
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48517, !noalias !48507
  %exitcond.not.i = icmp eq i64 %i.t, %i.f, !dbg !48471
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.split.i, !dbg !48479

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnE0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6b_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB3Y_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5v_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.us.i, %bb.a
  ret void, !dbg !48520
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB6k_B52_EEB3U_E0E0ECsfcROwRM8ZtH_11polars_plan(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48521 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !48522
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !48530

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !48530

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48531, !noalias !48536
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !48531, !noalias !48539
  %i.e = load ptr, ptr %i.b, align 8, !dbg !48542, !noalias !48552, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !48553, !noalias !48539
  %i.g = icmp slt i64 %i.f, 0, !dbg !48558
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !48558

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !48560
  unreachable, !dbg !48560

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !48561    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !48564, !range !980, !noalias !48552, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48565, !noalias !48567
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !48570, !noalias !48536
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48572, !noalias !48536
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !48565, !noalias !48536
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !48565, !noalias !48536
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE20extend_one_uncheckedCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !48573, !noalias !48575
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48576, !noalias !48567
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !48522
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !48530

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6o_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend18unchecked_extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5I_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.a
  ret void, !dbg !48577
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvMs4_NtCs4BcJZGCY6Ba_10rayon_core8registryNtB1y_8Registry3newNtB1y_12DefaultSpawnEs_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2R_8for_each4callTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtB1A_3job6JobRefEINtB3Y_7StealerB4I_EENCINvNvNtB2V_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB3V_EIB69_B52_EEB3U_E0E0ECsfcROwRM8ZtH_11polars_plan(i64 noundef %0, i64 noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48578 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 6 uses
  %i.c = icmp ult i64 %0, %1, !dbg !48579
  br i1 %i.c, label %.lr.ph.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !48587

.lr.ph.i:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  br label %bb.b, !dbg !48587

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %.lr.ph.i
  %.sroa.0.08.i = phi i64 [ %0, %.lr.ph.i ], [ %i.h, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !48588, !noalias !48592
  call void @_RNvMs4_NtCs8RCgFHiPUyX_15crossbeam_deque5dequeINtB5_6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefE8new_fifoCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([32 x i8]) align 8 captures(none) dereferenceable(32) %i.b), !dbg !48588, !noalias !48595
  %i.e = load ptr, ptr %i.b, align 8, !dbg !48598, !noalias !48603, !nonnull !11, !noundef !11 ; 2 uses
  %i.f = atomicrmw add ptr %i.e, i64 1 monotonic, align 8, !dbg !48604, !noalias !48595
  %i.g = icmp slt i64 %i.f, 0, !dbg !48607
  br i1 %i.g, label %bb.c, label %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, !dbg !48607

bb.c:                                             ; preds = %bb.b
  call void @llvm.trap(), !dbg !48608
  unreachable, !dbg !48608

_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i: ; preds = %bb.b
  %i.h = add i64 %.sroa.0.08.i, 1, !dbg !48609    ; 2 uses
  %i.i = load i8, ptr %i.d, align 8, !dbg !48612, !range !980, !noalias !48603, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48613, !noalias !48615
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %i.b, i64 32, i1 false), !dbg !48618, !noalias !48592
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48619, !noalias !48592
  store ptr %i.e, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !48613, !noalias !48592
  store i8 %i.i, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !48613, !noalias !48592
  call void @_RNvXs2_NtNtNtCscgRAwXFJnXP_4core4iter6traits7collectTINtNtCsgZ49sUHp3tW_5alloc3vec3VecINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEEIBQ_INtB1p_7StealerB29_EEEINtB5_6ExtendTB1m_B2U_EE10extend_oneCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a), !dbg !48620, !noalias !48622
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48623, !noalias !48615
  %exitcond.not.i = icmp eq i64 %i.h, %1, !dbg !48579
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !48587

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtB29_7StealerB2T_EEuNCINvMs4_NtB2X_8registryNtB44_8Registry3newNtB44_12DefaultSpawnEs_0NCINvNvBL_8for_each4callB25_NCINvNvNtBP_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecB26_EIB6d_B3z_EEB25_E0E0E0ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map8map_foldjTINtNtCs8RCgFHiPUyX_15crossbeam_deque5deque6WorkerNtNtCs4BcJZGCY6Ba_10rayon_core3job6JobRefEINtBZ_7StealerB1J_EEuNCINvMs4_NtB1N_8registryNtB2T_8Registry3newNtB2T_12DefaultSpawnEs_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvNvNtB40_7collect14default_extend8extenderTINtNtCsgZ49sUHp3tW_5alloc3vec3VecBW_EIB5x_B2p_EEBV_E0E0E0CsfcROwRM8ZtH_11polars_plan.exit.i, %bb.a
  ret void, !dbg !48624
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3G_8try_folduNCINvNvB3G_12try_for_each4callB2F_INtNtB12_12control_flow11ControlFlowB2F_ENcNtB7c_5Break0E0B7c_E0IB7d_B7c_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48625 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !48626 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48627), !dbg !48630
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48631), !dbg !48630
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !48633
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48640), !dbg !48643
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48644), !dbg !48643
  %i.e = load i64, ptr %i.c, align 8, !dbg !48646, !alias.scope !48648, !noalias !48653, !noundef !11 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !48654, !alias.scope !48655, !noalias !48656, !noundef !11
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !48646
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !48643

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !48657
  store i64 %i.h, ptr %i.c, align 8, !dbg !48660, !alias.scope !48661, !noalias !48627
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !48662
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !48662
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48663), !dbg !48662
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48666
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !48667, !noalias !48670, !nonnull !11, !align !409, !noundef !11 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !48667
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !48667, !noalias !48670, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !48671 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !48671, !noalias !48681
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !48684, !noalias !48681, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !48684
  %i.n = load i64, ptr %i.m, align 8, !dbg !48684, !noalias !48681, !noundef !11 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !48685
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !48685
  %i.p = icmp eq i64 %i.n, 0, !dbg !48696
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %.lr.ph.i.i.i, !dbg !48705

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !48705

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !48706 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !48709, !noalias !48681, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !48709
  %.sroa.03.0.val6.i.i.i = load ptr, ptr %i.s, align 8, !dbg !48709, !noalias !48681, !nonnull !11, !align !409, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val6.i.i.i, i64 32, !dbg !48711
  %i.u = load ptr, ptr %i.t, align 8, !dbg !48711, !invariant.load !11, !noalias !48681, !nonnull !11
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #51, !dbg !48712, !noalias !48681, !inline_history !48713 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !48712 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !48712
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48714, !noalias !48681
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !48720
  %i.z = load ptr, ptr %i.y, align 8, !dbg !48720, !invariant.load !11, !noalias !48681, !nonnull !11
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #51, !dbg !48724, !noalias !48681, !inline_history !48713
  %i.aa = load i128, ptr %i.a, align 16, !dbg !48725, !noalias !48681, !noundef !11
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !48737
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48714, !noalias !48681
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !48738, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #45, !dbg !48739, !noalias !48681
  unreachable, !dbg !48739

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !48742
  %.val7.i.i.i = load i64, ptr %i.ac, align 8, !dbg !48742, !noalias !48681, !noundef !11 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val7.i.i.i, !dbg !48744
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !48744

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !48742
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !48742, !noalias !48681, !nonnull !11, !noundef !11
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !48745
  %i.ag = load i64, ptr %i.k, align 8, !dbg !48746, !alias.scope !48751, !noalias !48754, !noundef !11 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !48756, !range !676, !alias.scope !48751, !noalias !48754, !noundef !11
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !48762
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !48762

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !48763, !noalias !48754
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !48763

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !48764, !alias.scope !48751, !noalias !48754, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !48773
  store ptr %i.af, ptr %i.ak, align 8, !dbg !48776, !noalias !48754
  %i.al = add i64 %i.ag, 1, !dbg !48780           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !48780, !alias.scope !48751, !noalias !48754
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !48696
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.c, !dbg !48705

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val7.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #45, !dbg !48744, !noalias !48681
  unreachable, !dbg !48744

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ], !dbg !48781
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !48786
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !48786, !noalias !48681, !nonnull !11, !noundef !11
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !48797, !noalias !48670
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !48798, !noalias !48670 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !48798
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !48798, !noalias !48670 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !48798
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !48798, !noalias !48670 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !48799), !dbg !48798
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !48802
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !48806

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !48807, !range !517, !alias.scope !48810, !noalias !48813, !noundef !11
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !48807
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.j, !dbg !48807

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.l, !dbg !48815, !noalias !48813

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !48817
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !48817, !alias.scope !48822, !noalias !48823
  br label %bb.m, !dbg !48824

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !48825, !noalias !48813
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !48825
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !48825, !noalias !48813
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !48825
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !48825, !noalias !48813
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !48825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !48825, !noalias !48670
  resume { ptr, i32 } %i.as, !dbg !48826

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !48825, !noalias !48813
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !48825
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !48825, !noalias !48813
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !48825
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !48825, !noalias !48813
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !48825
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !48825, !noalias !48670
  br label %bb.m, !dbg !48827

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !48828, !alias.scope !48822, !noalias !48823
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !48829, !noalias !48666
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !48830, !alias.scope !48832, !noalias !48835, !noundef !11
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !48830
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !48830, !alias.scope !48832, !noalias !48835
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !48830
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !48837
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !48837
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !48838
  store ptr %5, ptr %i.at, align 8, !dbg !48838, !alias.scope !48842, !noalias !48631
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !48838
  store ptr %6, ptr %i.au, align 8, !dbg !48838, !alias.scope !48842, !noalias !48631
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !48845

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !48846
  store i64 %storemerge.i, ptr %0, align 8, !dbg !48846, !alias.scope !48627, !noalias !48631
  ret void, !dbg !48847
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB1y_5array5ArrayEL_E0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB37_8try_folduNCINvNvB37_12try_for_each4callINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxB2G_EINtNtB12_12control_flow11ControlFlowB6z_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !48848 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !48849 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48850), !dbg !48853
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48854), !dbg !48853
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !48856
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48863), !dbg !48866
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48867), !dbg !48866
  %i.e = load i64, ptr %i.c, align 8, !dbg !48869, !alias.scope !48871, !noalias !48876, !noundef !11 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !48877, !alias.scope !48878, !noalias !48879, !noundef !11
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !48869
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !48866

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !48880
  store i64 %i.h, ptr %i.c, align 8, !dbg !48883, !alias.scope !48884, !noalias !48850
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !48885
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !48885
  tail call void @llvm.experimental.noalias.scope.decl(metadata !48886), !dbg !48885
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !48889
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !48890, !noalias !48893, !nonnull !11, !align !409, !noundef !11 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !48890
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !48890, !noalias !48893, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !48894 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !48894, !noalias !48900
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !48903, !noalias !48900, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !48903
  %i.n = load i64, ptr %i.m, align 8, !dbg !48903, !noalias !48900, !noundef !11 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 4, !dbg !48904
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !48904
  %i.p = icmp eq i64 %i.n, 0, !dbg !48915
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %.lr.ph.i.i.i, !dbg !48924

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !48924

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 16, !dbg !48925 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !48928, !noalias !48900, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !48928
  %.sroa.03.0.val7.i.i.i = load ptr, ptr %i.s, align 8, !dbg !48928, !noalias !48900, !nonnull !11, !align !409, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %.sroa.03.0.val7.i.i.i, i64 32, !dbg !48930
  %i.u = load ptr, ptr %i.t, align 8, !dbg !48930, !invariant.load !11, !noalias !48900, !nonnull !11
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.sroa.03.0.val.i.i.i) #51, !dbg !48931, !noalias !48900, !inline_history !48932 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !48931 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !48931
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !48933, !noalias !48900
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !48936
  %i.z = load ptr, ptr %i.y, align 8, !dbg !48936, !invariant.load !11, !noalias !48900, !nonnull !11
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #51, !dbg !48940, !noalias !48900, !inline_history !48932
  %i.aa = load i128, ptr %i.a, align 16, !dbg !48941, !noalias !48900, !noundef !11
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !48951
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !48933, !noalias !48900
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !48952, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #45, !dbg !48953, !noalias !48900
  unreachable, !dbg !48953

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !48956
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !48956, !noalias !48900, !noundef !11 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !48958
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !48958

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !48956
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !48956, !noalias !48900, !nonnull !11, !noundef !11
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !48959
  %i.ag = load i64, ptr %i.k, align 8, !dbg !48960, !alias.scope !48964, !noalias !48967, !noundef !11 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !48969, !range !676, !alias.scope !48964, !noalias !48967, !noundef !11
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !48972
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !48972

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !48973, !noalias !48967
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !48973

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !48974, !alias.scope !48964, !noalias !48967, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !48979
  store ptr %i.af, ptr %i.ak, align 8, !dbg !48981, !noalias !48967
  %i.al = add i64 %i.ag, 1, !dbg !48983           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !48983, !alias.scope !48964, !noalias !48967
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !48915
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.c, !dbg !48924

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #45, !dbg !48958, !noalias !48900
  unreachable, !dbg !48958

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ], !dbg !48984
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !48989
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !48989, !noalias !48900, !nonnull !11, !noundef !11
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !49000, !noalias !48893
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !49001, !noalias !48893 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !49001
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !49001, !noalias !48893 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !49001
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !49001, !noalias !48893 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49002), !dbg !49001
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !49005
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !49009

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !49010, !range !517, !alias.scope !49013, !noalias !49016, !noundef !11
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !49010
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.j, !dbg !49010

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.l, !dbg !49018, !noalias !49016

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRDNtNtB8_5array5ArrayEL_E0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !49020
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !49020, !alias.scope !49025, !noalias !49026
  br label %bb.m, !dbg !49027

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !49028, !noalias !49016
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49028
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !49028, !noalias !49016
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !49028
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !49028, !noalias !49016
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !49028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !49028, !noalias !48893
  resume { ptr, i32 } %i.as, !dbg !49029

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !49028, !noalias !49016
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49028
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !49028, !noalias !49016
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !49028
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !49028, !noalias !49016
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !49028
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !49028, !noalias !48893
  br label %bb.m, !dbg !49030

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !49031, !alias.scope !49025, !noalias !49026
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49032, !noalias !48889
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !49033, !alias.scope !49035, !noalias !49038, !noundef !11
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !49033
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !49033, !alias.scope !49035, !noalias !49038
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !49033
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !49040
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !49040
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49041
  store ptr %5, ptr %i.at, align 8, !dbg !49041, !alias.scope !49045, !noalias !48854
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !49041
  store ptr %6, ptr %i.au, align 8, !dbg !49041, !alias.scope !49045, !noalias !48854
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !49048

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB39_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !49049
  store i64 %storemerge.i, ptr %0, align 8, !dbg !49049, !alias.scope !48850, !noalias !48854
  ret void, !dbg !49050
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB1y_5array5ArrayEL_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3H_8try_folduNCINvNvB3H_12try_for_each4callB2G_INtNtB12_12control_flow11ControlFlowB2G_ENcNtB7d_5Break0E0B7d_E0IB7e_B7d_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !49051 {
bb.a:
  %i.a = alloca [16 x i8], align 16               ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.4.i = alloca i64, align 8                ; 5 uses
  %.sroa.73.i = alloca i64, align 8               ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !49052 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49053), !dbg !49056
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49057), !dbg !49056
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 24, !dbg !49059
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49066), !dbg !49069
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49070), !dbg !49069
  %i.e = load i64, ptr %i.c, align 8, !dbg !49072, !alias.scope !49074, !noalias !49079, !noundef !11 ; 5 uses
  %i.f = load i64, ptr %i.d, align 8, !dbg !49080, !alias.scope !49081, !noalias !49082, !noundef !11
  %i.g = icmp ult i64 %i.e, %i.f, !dbg !49072
  br i1 %i.g, label %bb.b, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !49069

bb.b:                                             ; preds = %bb.a
  %i.h = add nuw i64 %i.e, 1, !dbg !49083
  store i64 %i.h, ptr %i.c, align 8, !dbg !49086, !alias.scope !49087, !noalias !49053
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !49088
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.73.i), !dbg !49088
  tail call void @llvm.experimental.noalias.scope.decl(metadata !49089), !dbg !49088
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !49092
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24 ; 2 uses
  %.val.i.i = load ptr, ptr %1, align 8, !dbg !49093, !noalias !49096, !nonnull !11, !align !409, !noundef !11 ; 5 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !49093
  %.val2.i.i = load ptr, ptr %i.j, align 8, !dbg !49093, !noalias !49096, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 16, !dbg !49097 ; 3 uses
  store i64 0, ptr %i.k, align 8, !dbg !49097, !noalias !49103
  %i.l = load ptr, ptr %.val2.i.i, align 8, !dbg !49106, !noalias !49103, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 8, !dbg !49106
  %i.n = load i64, ptr %i.m, align 8, !dbg !49106, !noalias !49103, !noundef !11 ; 2 uses
  %.idx.i.i.i = shl nuw nsw i64 %i.n, 3, !dbg !49107
  %i.o = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i, !dbg !49107
  %i.p = icmp eq i64 %i.n, 0, !dbg !49118
  br i1 %i.p, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %.lr.ph.i.i.i, !dbg !49127

.lr.ph.i.i.i:                                     ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  br label %bb.c, !dbg !49127

bb.c:                                             ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %.lr.ph.i.i.i
  %.sroa.03.01.i.i.i = phi ptr [ %i.l, %.lr.ph.i.i.i ], [ %i.r, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ] ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.03.01.i.i.i, i64 8, !dbg !49128 ; 2 uses
  %.sroa.03.0.val.i.i.i = load ptr, ptr %.sroa.03.01.i.i.i, align 8, !dbg !49131, !noalias !49103, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %.val.i.i.i.i = load ptr, ptr %.sroa.03.0.val.i.i.i, align 8, !dbg !49133, !noalias !49103, !nonnull !11, !noundef !11
  %i.s = getelementptr i8, ptr %.sroa.03.0.val.i.i.i, i64 8, !dbg !49133
  %.val1.i.i.i.i = load ptr, ptr %i.s, align 8, !dbg !49133, !noalias !49103, !nonnull !11, !align !409, !noundef !11
  %i.t = getelementptr inbounds nuw i8, ptr %.val1.i.i.i.i, i64 32, !dbg !49137
  %i.u = load ptr, ptr %i.t, align 8, !dbg !49137, !invariant.load !11, !noalias !49103, !nonnull !11
  %i.v = call { ptr, ptr } %i.u(ptr noundef nonnull %.val.i.i.i.i) #51, !dbg !49138, !noalias !49103, !inline_history !49139 ; 2 uses
  %i.w = extractvalue { ptr, ptr } %i.v, 0, !dbg !49138 ; 4 uses
  %i.x = extractvalue { ptr, ptr } %i.v, 1, !dbg !49138
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !49140, !noalias !49103
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24, !dbg !49143
  %i.z = load ptr, ptr %i.y, align 8, !dbg !49143, !invariant.load !11, !noalias !49103, !nonnull !11
  call void %i.z(ptr noalias noundef nonnull sret([16 x i8]) align 8 captures(address) dereferenceable(16) %i.a, ptr noundef %i.w) #51, !dbg !49147, !noalias !49103, !inline_history !49139
  %i.aa = load i128, ptr %i.a, align 16, !dbg !49148, !noalias !49103, !noundef !11
  %i.ab = icmp eq i128 %i.aa, -45368836931846941537534090947142636873, !dbg !49158
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !49140, !noalias !49103
  br i1 %i.ab, label %bb.e, label %bb.d, !dbg !49159, !prof !15

bb.d:                                             ; preds = %bb.c
  call void @_RNvNtCscgRAwXFJnXP_4core6option13unwrap_failed(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @168) #45, !dbg !49160, !noalias !49103
  unreachable, !dbg !49160

bb.e:                                             ; preds = %bb.c
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.w) ]
  %i.ac = getelementptr i8, ptr %i.w, i64 16, !dbg !49163
  %.val6.i.i.i = load i64, ptr %i.ac, align 8, !dbg !49163, !noalias !49103, !noundef !11 ; 2 uses
  %i.ad = icmp ult i64 %i.e, %.val6.i.i.i, !dbg !49165
  br i1 %i.ad, label %bb.f, label %bb.h, !dbg !49165

bb.f:                                             ; preds = %bb.e
  %i.ae = getelementptr i8, ptr %i.w, i64 8, !dbg !49163
  %.val.i.i.i = load ptr, ptr %i.ae, align 8, !dbg !49163, !noalias !49103, !nonnull !11, !noundef !11
  %i.af = getelementptr inbounds nuw [16 x i8], ptr %.val.i.i.i, i64 %i.e, !dbg !49166
  %i.ag = load i64, ptr %i.k, align 8, !dbg !49167, !alias.scope !49171, !noalias !49174, !noundef !11 ; 3 uses
  %i.ah = load i64, ptr %.val.i.i, align 8, !dbg !49176, !range !676, !alias.scope !49171, !noalias !49174, !noundef !11
  %i.ai = icmp eq i64 %i.ag, %i.ah, !dbg !49179
  br i1 %i.ai, label %bb.g, label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !49179

bb.g:                                             ; preds = %bb.f
  call void @_RNvMs3_NtCsgZ49sUHp3tW_5alloc7raw_vecINtB5_6RawVecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8grow_oneB1a_(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i), !dbg !49180, !noalias !49174
  br label %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, !dbg !49180

_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.g, %bb.f
  %i.aj = load ptr, ptr %i.q, align 8, !dbg !49181, !alias.scope !49171, !noalias !49174, !nonnull !11, !noundef !11
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ag, !dbg !49186
  store ptr %i.af, ptr %i.ak, align 8, !dbg !49188, !noalias !49174
  %i.al = add i64 %i.ag, 1, !dbg !49190           ; 2 uses
  store i64 %i.al, ptr %i.k, align 8, !dbg !49190, !alias.scope !49171, !noalias !49174
  %i.am = icmp eq ptr %i.r, %i.o, !dbg !49118
  br i1 %i.am, label %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i, label %bb.c, !dbg !49127

bb.h:                                             ; preds = %bb.e
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking18panic_bounds_check(i64 noundef %i.e, i64 noundef %.val6.i.i.i, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @169) #45, !dbg !49165, !noalias !49103
  unreachable, !dbg !49165

_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i: ; preds = %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.b
  %i.an = phi i64 [ 0, %bb.b ], [ %i.al, %_RNvMsF_NtCsgZ49sUHp3tW_5alloc3vecINtB5_3VecRINtNtB7_5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_EE8push_mutCsfcROwRM8ZtH_11polars_plan.exit.i.i.i ], !dbg !49191
  %i.ao = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8, !dbg !49196
  %i.ap = load ptr, ptr %i.ao, align 8, !dbg !49196, !noalias !49103, !nonnull !11, !noundef !11
  call void @_RINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate21concatenate_uncheckedRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB6_5array5ArrayEL_EECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) %i.ap, i64 noundef %i.an), !dbg !49207, !noalias !49096
  %.sroa.0.0.copyload.i.i = load i64, ptr %i.b, align 8, !dbg !49208, !noalias !49096 ; 3 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8, !dbg !49208
  %.sroa.4.0.copyload.i.i = load ptr, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !dbg !49208, !noalias !49096 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !49208
  %.sroa.5.0.copyload.i.i = load ptr, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !dbg !49208, !noalias !49096 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !49209), !dbg !49208
  %.not.i.i.i.i = icmp eq i64 %.sroa.0.0.copyload.i.i, 18, !dbg !49212
  br i1 %.not.i.i.i.i, label %bb.k, label %bb.i, !dbg !49216

bb.i:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %i.aq = load i64, ptr %3, align 8, !dbg !49217, !range !517, !alias.scope !49220, !noalias !49223, !noundef !11
  %i.ar = icmp eq i64 %i.aq, 18, !dbg !49217
  br i1 %i.ar, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, label %bb.j, !dbg !49217

bb.j:                                             ; preds = %bb.i
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %3)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i unwind label %bb.l, !dbg !49225, !noalias !49223

bb.k:                                             ; preds = %_RNCINvNtNtCs8774dFTUdNv_12polars_arrow7compute11concatenate18concatenate_structRINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB8_5array5ArrayEL_EE0CsfcROwRM8ZtH_11polars_plan.exit.i.i
  %4 = ptrtoint ptr %.sroa.4.0.copyload.i.i to i64, !dbg !49227
  store i64 %4, ptr %.sroa.4.i, align 8, !dbg !49227, !alias.scope !49232, !noalias !49233
  br label %bb.m, !dbg !49234

bb.l:                                             ; preds = %bb.j
  %i.as = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !49235, !noalias !49223
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49235
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !dbg !49235, !noalias !49223
  %.sroa.612.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !49235
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i, align 8, !dbg !49235, !noalias !49223
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !49235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !49235, !noalias !49096
  resume { ptr, i32 } %i.as, !dbg !49236

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i: ; preds = %bb.j, %bb.i
  store i64 %.sroa.0.0.copyload.i.i, ptr %3, align 8, !dbg !49235, !noalias !49223
  %.sroa.5.0..8.val.sroa_idx10.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8, !dbg !49235
  store ptr %.sroa.4.0.copyload.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i, align 8, !dbg !49235, !noalias !49223
  %.sroa.612.0..8.val.sroa_idx13.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16, !dbg !49235
  store ptr %.sroa.5.0.copyload.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i, align 8, !dbg !49235, !noalias !49223
  %.sroa.7.0..8.val.sroa_idx15.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 24, !dbg !49235
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %i.i, i64 48, i1 false), !dbg !49235, !noalias !49096
  br label %bb.m, !dbg !49237

bb.m:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i, %bb.k
  %.sink23.i.i.sroa.phi.i = phi ptr [ %.sroa.73.i, %bb.k ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  %.sink.i.i.i = phi ptr [ %.sroa.5.0.copyload.i.i, %bb.k ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i ]
  store ptr %.sink.i.i.i, ptr %.sink23.i.i.sroa.phi.i, align 8, !dbg !49238, !alias.scope !49232, !noalias !49233
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !49239, !noalias !49092
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !49240, !alias.scope !49242, !noalias !49245, !noundef !11
  %5 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !49240
  %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i = load i64, ptr %.sroa.73.i, align 8, !dbg !49240, !alias.scope !49242, !noalias !49245
  %6 = inttoptr i64 %.sroa.73.i.0..sroa.73.i.0..sroa.73.i.0..sroa.73.0..sroa.73.0..sroa.73.16..i to ptr, !dbg !49240
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !49247
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.73.i), !dbg !49247
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49248
  store ptr %5, ptr %i.at, align 8, !dbg !49248, !alias.scope !49252, !noalias !49057
  %i.au = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !49248
  store ptr %6, ptr %i.au, align 8, !dbg !49248, !alias.scope !49252, !noalias !49057
  br label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !49255

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtBR_8adapters3map12map_try_foldjINtNtBa_6result6ResultINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtCs8774dFTUdNv_12polars_arrow5array5ArrayEL_ENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtB8_12control_flow11ControlFlowIB4G_B2A_EENCINvNtNtB3e_7compute11concatenate18concatenate_structRB2A_E0NCINvXB1H_INtB1H_12GenericShuntINtB1F_3MapB3_B5p_EIB2f_NtNtBa_7convert10InfallibleB3W_EEBL_8try_folduNCINvNvBL_12try_for_each4callB2A_B5e_NcNtB5e_5Break0E0B5e_E0E0B4F_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.a, %bb.m
  %storemerge.i = phi i64 [ 1, %bb.m ], [ 0, %bb.a ], !dbg !49256
  store i64 %storemerge.i, ptr %0, align 8, !dbg !49256, !alias.scope !49053, !noalias !49057
  ret void, !dbg !49257
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs2_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !49258 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !49259
  %i.b = load i64, ptr %i.a, align 8, !dbg !49259, !noundef !11 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !49259
  %i.d = load i64, ptr %i.c, align 8, !dbg !49259, !noundef !11 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !49260, !nonnull !11, !align !409, !noundef !11 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49260
  %i.g = load ptr, ptr %i.f, align 8, !dbg !49260, !nonnull !11, !align !409, !noundef !11 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !49261 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !49261
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !49261 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !49261
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !49261 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !49264
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !49272

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !49272      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !49272
  br i1 %min.iters.check, label %.lr.ph.i.preheader13, label %vector.memcheck, !dbg !49272

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !49272
  %scevgep = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !49272 ; 2 uses
  %i.k = add i64 %.sroa.4.0.copyload, %i.d, !dbg !49272
  %i.l = sub i64 %i.k, %i.b, !dbg !49272
  %i.m = shl i64 %i.l, 3, !dbg !49272
  %scevgep2 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.m, !dbg !49272 ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.e, i64 8, !dbg !49272
  %scevgep4 = getelementptr i8, ptr %i.g, i64 8, !dbg !49272
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !49272
  %bound1 = icmp ult ptr %i.e, %scevgep2, !dbg !49272
  %found.conflict = and i1 %bound0, %bound1, !dbg !49272
  %bound05 = icmp ult ptr %scevgep, %scevgep4, !dbg !49272
  %bound16 = icmp ult ptr %i.g, %scevgep2, !dbg !49272
  %found.conflict7 = and i1 %bound05, %bound16, !dbg !49272
  %conflict.rdx = or i1 %found.conflict, %found.conflict7, !dbg !49272
  br i1 %conflict.rdx, label %.lr.ph.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.n = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.o = add i64 %i.b, %n.vec
  %i.p = load i64, ptr %i.e, align 8, !dbg !49273, !alias.scope !49281, !noalias !49284, !noundef !11
  %broadcast.splatinsert8 = insertelement <2 x i64> poison, i64 %i.p, i64 0, !dbg !49289
  %broadcast.splat9 = shufflevector <2 x i64> %broadcast.splatinsert8, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !49289 ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !dbg !49289, !alias.scope !49290, !noalias !49284, !noundef !11
  %broadcast.splatinsert10 = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat11 = shufflevector <2 x i64> %broadcast.splatinsert10, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat9
  %invariant.op15 = sub <2 x i64> %broadcast.splat9, %broadcast.splat11
  %invariant.op17 = sub <2 x i64> %invariant.op, %broadcast.splat11
  %i.r = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <2 x i64> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %.reass16 = add <2 x i64> %vec.ind, %invariant.op15
  %.reass18 = add <2 x i64> %vec.ind, %invariant.op17
  %i.s = getelementptr [8 x i8], ptr %i.r, i64 %index, !dbg !49292 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16, !dbg !49299
  store <2 x i64> %.reass16, ptr %i.s, align 8, !dbg !49299, !alias.scope !49302, !noalias !49304
  store <2 x i64> %.reass18, ptr %i.t, align 8, !dbg !49299, !alias.scope !49302, !noalias !49304
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %vec.ind.next = add nuw <2 x i64> %vec.ind, splat (i64 4)
  %i.u = icmp eq i64 %index.next, %n.vec, !dbg !49272
  br i1 %i.u, label %middle.block, label %vector.body, !dbg !49272, !llvm.loop !49309

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.i, %n.vec, !dbg !49272
  br i1 %cmp.n, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i.preheader13, !dbg !49272

.lr.ph.i.preheader13:                             ; preds = %vector.memcheck, %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %vector.memcheck ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.n, %middle.block ] ; 3 uses
  %.sroa.0.011.i.ph = phi i64 [ %i.b, %vector.memcheck ], [ %i.b, %.lr.ph.i.preheader ], [ %i.o, %middle.block ] ; 5 uses
  %i.v = sub i64 %i.d, %.sroa.0.011.i.ph, !dbg !49272
  %.neg = add i64 %.sroa.0.011.i.ph, 1, !dbg !49272
  %xtraiter = and i64 %i.v, 1, !dbg !49272
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0, !dbg !49272
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !dbg !49272

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader13
  %i.w = add nuw i64 %.sroa.0.011.i.ph, 1, !dbg !49310
  %i.x = load i64, ptr %i.e, align 8, !dbg !49273, !noalias !49284, !noundef !11
  %i.y = load i64, ptr %i.g, align 8, !dbg !49289, !noalias !49284, !noundef !11
  %i.z = add i64 %i.x, %.sroa.0.011.i.ph, !dbg !49273
  %i.aa = sub i64 %i.z, %i.y, !dbg !49273
  %i.ab = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %.ph, !dbg !49292
  store i64 %i.aa, ptr %i.ab, align 8, !dbg !49299, !noalias !49313
  %i.ac = add i64 %.ph, 1, !dbg !49314            ; 2 uses
  br label %.lr.ph.i.prol.loopexit, !dbg !49272

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader13
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader13 ], [ %i.ac, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.ph, %.lr.ph.i.preheader13 ], [ %i.ac, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader13 ], [ %i.w, %.lr.ph.i.prol ]
  %i.ad = icmp eq i64 %i.d, %.neg, !dbg !49272
  br i1 %i.ad, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !49272

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.ae = phi i64 [ %i.as, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ], !dbg !49310 ; 3 uses
  %.sroa.0.011.i = phi i64 [ %i.al, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 3 uses
  %i.af = add nuw i64 %.sroa.0.011.i, 1, !dbg !49310
  %i.ag = load i64, ptr %i.e, align 8, !dbg !49273, !noalias !49284, !noundef !11
  %i.ah = load i64, ptr %i.g, align 8, !dbg !49289, !noalias !49284, !noundef !11
  %i.ai = add i64 %i.ag, %.sroa.0.011.i, !dbg !49273
  %i.aj = sub i64 %i.ai, %i.ah, !dbg !49273
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ae, !dbg !49292
  store i64 %i.aj, ptr %i.ak, align 8, !dbg !49299, !noalias !49313
  %i.al = add nuw i64 %.sroa.0.011.i, 2, !dbg !49310 ; 2 uses
  %i.am = load i64, ptr %i.e, align 8, !dbg !49273, !noalias !49284, !noundef !11
  %i.an = load i64, ptr %i.g, align 8, !dbg !49289, !noalias !49284, !noundef !11
  %i.ao = add i64 %i.am, %i.af, !dbg !49273
  %i.ap = sub i64 %i.ao, %i.an, !dbg !49273
  %i.aq = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %i.ae, !dbg !49292
  %i.ar = getelementptr i8, ptr %i.aq, i64 8, !dbg !49292
  store i64 %i.ap, ptr %i.ar, align 8, !dbg !49299, !noalias !49313
  %i.as = add i64 %i.ae, 2, !dbg !49314           ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.al, %i.d, !dbg !49264
  br i1 %exitcond.not.i.1, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, label %.lr.ph.i, !dbg !49272, !llvm.loop !49317

_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs2_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.n, %middle.block ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.as, %.lr.ph.i ], !dbg !49318
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !dbg !49319, !noalias !49328
  ret void, !dbg !49329
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB1u_21expand_expression_recs3_0E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3V_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB58_3VecjE14extend_trustedBN_E0E0EB1C_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #8 personality ptr @rust_eh_personality !dbg !49330 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !49331
  %i.b = load i64, ptr %i.a, align 8, !dbg !49331, !noundef !11 ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24, !dbg !49331
  %i.d = load i64, ptr %i.c, align 8, !dbg !49331, !noundef !11 ; 6 uses
  %i.e = load ptr, ptr %0, align 8, !dbg !49332, !nonnull !11, !align !409, !noundef !11 ; 6 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !49332
  %i.g = load ptr, ptr %i.f, align 8, !dbg !49332, !nonnull !11, !align !409, !noundef !11 ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8, !dbg !49333 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8, !dbg !49333
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8, !dbg !49333 ; 7 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16, !dbg !49333
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8, !dbg !49333 ; 6 uses
  %i.h = icmp ult i64 %i.b, %i.d, !dbg !49336
  br i1 %i.h, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCscgRAwXFJnXP_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjjuNCINvNtNtNtNtCsfcROwRM8ZtH_11polars_plan5plans10conversion9dsl_to_ir14expr_expansion32expand_expression_by_combinationNCNvB2c_21expand_expression_recs3_0E0NCINvNvBL_8for_each4calljNCINvMsj_NtCsgZ49sUHp3tW_5alloc3vecINtB5a_3VecjE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0EB2k_.exit, !dbg !49344

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.i = sub nuw i64 %i.d, %i.b, !dbg !49344      ; 3 uses
  %min.iters.check = icmp ult i64 %i.i, 16, !dbg !49344
  br i1 %min.iters.check, label %.lr.ph.i.preheader13, label %vector.memcheck, !dbg !49344

vector.memcheck:                                  ; preds = %.lr.ph.i.preheader
  %i.j = shl i64 %.sroa.4.0.copyload, 3, !dbg !49344
  %scevgep = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.j, !dbg !49344 ; 2 uses
  %i.k = add i64 %.sroa.4.0.copyload, %i.d, !dbg !49344
  %i.l = sub i64 %i.k, %i.b, !dbg !49344
  %i.m = shl i64 %i.l, 3, !dbg !49344
  %scevgep2 = getelementptr i8, ptr %.sroa.6.0.copyload, i64 %i.m, !dbg !49344 ; 2 uses
  %scevgep3 = getelementptr i8, ptr %i.e, i64 8, !dbg !49344
  %scevgep4 = getelementptr i8, ptr %i.g, i64 8, !dbg !49344
  %bound0 = icmp ult ptr %scevgep, %scevgep3, !dbg !49344
  %bound1 = icmp ult ptr %i.e, %scevgep2, !dbg !49344
  %found.conflict = and i1 %bound0, %bound1, !dbg !49344
  %bound05 = icmp ult ptr %scevgep, %scevgep4, !dbg !49344
  %bound16 = icmp ult ptr %i.g, %scevgep2, !dbg !49344
  %found.conflict7 = and i1 %bound05, %bound16, !dbg !49344
  %conflict.rdx = or i1 %found.conflict, %found.conflict7, !dbg !49344
  br i1 %conflict.rdx, label %.lr.ph.i.preheader13, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.i, -4                       ; 4 uses
  %i.n = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.o = add i64 %i.b, %n.vec
  %i.p = load i64, ptr %i.e, align 8, !dbg !49345, !alias.scope !49350, !noalias !49353, !noundef !11
  %broadcast.splatinsert8 = insertelement <2 x i64> poison, i64 %i.p, i64 0, !dbg !49358
  %broadcast.splat9 = shufflevector <2 x i64> %broadcast.splatinsert8, <2 x i64> poison, <2 x i32> zeroinitializer, !dbg !49358 ; 2 uses
  %i.q = load i64, ptr %i.g, align 8, !dbg !49358, !alias.scope !49359, !noalias !49353, !noundef !11
  %broadcast.splatinsert10 = insertelement <2 x i64> poison, i64 %i.q, i64 0
  %broadcast.splat11 = shufflevector <2 x i64> %broadcast.splatinsert10, <2 x i64> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert = insertelement <2 x i64> poison, i64 %i.b, i64 0
  %broadcast.splat = shufflevector <2 x i64> %broadcast.splatinsert, <2 x i64> poison, <2 x i32> zeroinitializer
  %induction = add nuw <2 x i64> %broadcast.splat, <i64 0, i64 1>
  %invariant.op = add <2 x i64> splat (i64 2), %broadcast.splat9
  %invariant.op15 = sub <2 x i64> %broadcast.splat9, %broadcast.splat11
  %invariant.op17 = sub <2 x i64> %invariant.op, %broadcast.splat11
  %i.r = getelementptr [8 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
end_hunk_1
begin_hunk_2_@_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterNtNtNtNtCslpwjCj2YNBy_9polars_io3csv4read7builder7BuilderENCNvNtNtCsfcROwRM8ZtH_11polars_plan5plans4hive26hive_partitions_from_pathss_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3X_8try_foldB4E_NCINvNtB12_16in_place_collect24write_in_place_with_dropB5f_E0IB6E_B4E_zEE0INtNtNtBc_3ops12control_flow11ControlFlowB9p_B4E_EEB2P_:bb.a
; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterReENCINvMNtNtCs1LHh8CLbVkQ_11polars_core5frame10projectionNtB1U_23AmortizedColumnSelector15select_multipleB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB3Q_8try_folduNCINvNvB3Q_12try_for_each4callNtNtB1W_6column6ColumnINtNtNtBc_3ops12control_flow11ControlFlowB7i_ENcNtB7E_5Break0E0B7E_E0IB7F_B7E_EECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias noundef writable sret([160 x i8]) align 16 captures(address) dereferenceable(160) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noalias noundef nonnull %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 !dbg !85381 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85382
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !85383
  store ptr %2, ptr %i.a, align 8, !dbg !85384
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !85384
  store ptr %3, ptr %i.c, align 8, !dbg !85384
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !85384
  store ptr %i.b, ptr %i.d, align 8, !dbg !85384
  call void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterReENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB16_8adapters3map12map_try_foldBX_INtNtB18_6result6ResultNtNtNtCs1LHh8CLbVkQ_11polars_core5frame6column6ColumnNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB18_3ops12control_flow11ControlFlowIB4K_B39_EENCINvMNtB3d_10projectionNtB5G_23AmortizedColumnSelector15select_multipleBX_INtB8_3VecBX_EE0NCINvXB2c_INtB2c_12GenericShuntINtB2a_3MapBI_B5A_EIB2N_NtNtB18_7convert10InfallibleB40_EEB10_8try_folduNCINvNvB10_12try_for_each4callB39_B5p_NcNtB5p_5Break0E0B5p_E0E0B4J_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(address) dereferenceable(160) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !85386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85387
  ret void, !dbg !85388
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTNtNtB14_6string6StringINtNtBc_6option6OptionB1M_EEENCINvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write18key_value_metadata25deserialize_vec_key_valueQINtNtCs721FSB8TeJg_9rmp_serde6decode12DeserializerINtB4d_10ReadReaderQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEEE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENCINvNtB12_16in_place_collect24write_in_place_with_dropB7p_E0INtNtBc_6result6ResultB6O_zEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 !dbg !85389 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !85390
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringINtNtCscgRAwXFJnXP_4core6option6OptionBY_EEENtNtNtNtB1o_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtCs1gC9x3uey1Y_21polars_parquet_format14parquet_format8KeyValueENCINvNtNtB27_8adapters3map12map_try_foldBX_B3q_B2Q_INtNtB1o_6result6ResultB2Q_zENCINvNtNtNtCslpwjCj2YNBy_9polars_io7parquet5write18key_value_metadata25deserialize_vec_key_valueQINtNtCs721FSB8TeJg_9rmp_serde6decode12DeserializerINtB7p_10ReadReaderQINtNtNtCsh8eZTKRCwoO_3std2io6cursor6CursorRShEEEE0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3q_E0E0B5k_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull %i.a, ptr noundef %3), !dbg !85391
  ret { ptr, ptr } %i.b, !dbg !85392
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1M_EENCNCNvMs2_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB2R_12CloudOptions9build_aws00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtB14_6string6StringEENCINvNtB8_10filter_map19filter_map_try_foldTB1M_B6q_EB5m_B4L_INtNtBc_6result6ResultB4L_zENCINvB2R_20parse_untyped_configB5n_BN_B1M_B6q_E0NCINvNtB12_16in_place_collect24write_in_place_with_dropB5m_E0E0B7N_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull %3, ptr noundef %4) unnamed_addr #0 !dbg !85393 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85394
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32, !dbg !85395
  store ptr %3, ptr %i.a, align 8, !dbg !85396
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !85396
  store ptr %4, ptr %i.c, align 8, !dbg !85396
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !85396
  store ptr %i.b, ptr %i.d, align 8, !dbg !85396
  %i.e = call { ptr, ptr } @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_EENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropTNtNtNtCs8RKTHBS4OBx_12object_store3aws7builder17AmazonS3ConfigKeyNtNtBa_6string6StringEENCINvNtNtB1Y_8adapters3map12map_try_foldBX_TBY_B4A_EB2W_INtNtB20_6result6ResultB2W_zENCNCNvMs2_NtNtCslpwjCj2YNBy_9polars_io5cloud7optionsNtB6u_12CloudOptions9build_aws00NCINvNtB54_10filter_map19filter_map_try_foldB5E_B3w_B2W_B5R_NCINvB6u_20parse_untyped_configB3x_INtB52_3MapBI_B6k_EBY_B4A_E0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3w_E0E0E0B5R_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !85398
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85399
  ret { ptr, ptr } %i.e, !dbg !85400
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtCsgZ49sUHp3tW_5alloc3vec9into_iter8IntoIterTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEENCNvNtNtNtNtB2H_5plans10conversion9dsl_to_ir9functions17convert_functionss4_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB4X_8try_foldB5E_NCINvNtB12_16in_place_collect24write_in_place_with_dropB6f_E0IB7G_B5E_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBar_B5E_EEB2H_(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4, ptr noalias noundef align 8 dereferenceable(72) %5) unnamed_addr #0 !dbg !85401 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85402
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32, !dbg !85403
  store ptr %4, ptr %i.a, align 8, !dbg !85404
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !85404
  store ptr %5, ptr %i.c, align 8, !dbg !85404
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16, !dbg !85404
  store ptr %i.b, ptr %i.d, align 8, !dbg !85404
  call void @_RINvXs4_NtNtCsgZ49sUHp3tW_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl13datatype_expr12DataTypeExprEENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtNtCs1LHh8CLbVkQ_11polars_core9datatypes5field5FieldENCINvNtNtB2Z_8adapters3map12map_try_foldBX_INtNtB31_6result6ResultB4x_NtCsgjwxzEoLG5s_12polars_error11PolarsErrorEB3X_INtNtNtB31_3ops12control_flow11ControlFlowIB69_B3X_zEB3X_ENCNvNtNtNtNtB1T_5plans10conversion9dsl_to_ir9functions17convert_functionss4_0NCINvXB5y_INtB5y_12GenericShuntINtB5w_3MapBI_B8h_EIB69_NtNtB31_7convert10InfallibleB6z_EEB2T_8try_foldB3X_NCINvNtB8_16in_place_collect24write_in_place_with_dropB4x_E0B81_E0E0B7l_EB1T_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a), !dbg !85406
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85407
  ret void, !dbg !85408
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1S_ENCINvXs_NtCs6ti0Crti64P_13serde_stacker3serINtB2U_10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerINtNtB16_3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRB1S_B5R_RINtB10_8BTreeMapB1S_B1S_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB6t_12try_for_each4callTINtB2U_14SerializeSizedB5R_EB7G_EINtNtBc_6result6ResultuNtB3Q_5ErrorENCINvYB3M_B4U_11collect_mapB7G_B7G_BN_E0E0B8d_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85409 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85410), !dbg !85413
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85414), !dbg !85413
  %i.d = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !dbg !85416, !noalias !85421 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !85423 ; 2 uses
  %.not14.i = icmp eq ptr %i.e, null, !dbg !85423
  br i1 %.not14.i, label %_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerINtNtBc_3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B71_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i, !dbg !85424

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !85425
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !85414, !noalias !85426, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.85.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !85424

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.h = phi ptr [ %i.e, %.lr.ph.i ], [ %i.o, %bb.d ]
  %i.i = phi { ptr, ptr } [ %i.d, %.lr.ph.i ], [ %i.n, %bb.d ]
  %i.j = extractvalue { ptr, ptr } %i.i, 1, !dbg !85423 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85432, !noalias !85433
  %i.k = load i64, ptr %.val.i.i, align 8, !dbg !85434, !noalias !85440, !noundef !11 ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !dbg !85434, !noalias !85440, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85445, !noalias !85450
  store ptr %i.h, ptr %i.b, align 8, !dbg !85445, !noalias !85457
  store i64 %i.k, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !85445, !noalias !85457
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !85445, !noalias !85457
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85458, !noalias !85450
  store ptr %i.j, ptr %i.a, align 8, !dbg !85458, !noalias !85457
  store i64 %i.k, ptr %.sroa.85.24..sroa_idx.i.i, align 8, !dbg !85458, !noalias !85457
  store i64 %i.l, ptr %.sroa.9.24..sroa_idx.i.i, align 8, !dbg !85458, !noalias !85457
  call void @_RINvYINtNtCs721FSB8TeJg_9rmp_serde6encode26MaybeUnknownLengthCompoundINtNtCsgZ49sUHp3tW_5alloc3vec3VechENtNtB8_6config13DefaultConfigENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap15serialize_entryINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEB3b_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !dbg !85459, !noalias !85461
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85462, !noalias !85450
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85462, !noalias !85450
  %i.m = load i64, ptr %i.c, align 8, !dbg !85463, !range !17120, !alias.scope !85465, !noalias !85468, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, -9223372036854775804, !dbg !85463
  br i1 %.not.i.i, label %bb.d, label %bb.c, !dbg !85470

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !85471
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85472
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.211.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx9.i, i64 16, i1 false), !dbg !85471, !noalias !85476
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85477, !noalias !85433
  br label %_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerINtNtBc_3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B71_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !85478

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85477, !noalias !85433
  %i.n = call { ptr, ptr } @_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !dbg !85416, !noalias !85479 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0, !dbg !85423 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null, !dbg !85423
  br i1 %.not.i, label %_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerINtNtBc_3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B71_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !85424

_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerINtNtBc_3vec3VechEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B71_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.d, %bb.a, %bb.c
  %storemerge.i = phi i64 [ %i.m, %bb.c ], [ -9223372036854775804, %bb.a ], [ -9223372036854775804, %bb.d ], !dbg !85480
  store i64 %storemerge.i, ptr %0, align 8, !dbg !85480, !alias.scope !85410, !noalias !85476
  ret void, !dbg !85481
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1S_ENCINvXs_NtCs6ti0Crti64P_13serde_stacker3serINtB2U_10SerializerQINtNtCs721FSB8TeJg_9rmp_serde6encode10SerializerQINtNtB16_3vec3VechEINtNtB3S_6config15StructMapConfigNtB4W_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapRB1S_B6L_RINtB10_8BTreeMapB1S_B1S_EE0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB7n_12try_for_each4callTINtB2U_14SerializeSizedB6L_EB8A_EINtNtBc_6result6ResultuNtB3Q_5ErrorENCINvYB3M_B5O_11collect_mapB8A_B8A_BN_E0E0B97_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(80) %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85482 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85483), !dbg !85486
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85487), !dbg !85486
  %i.d = tail call { ptr, ptr } @_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !dbg !85489, !noalias !85494 ; 2 uses
  %i.e = extractvalue { ptr, ptr } %i.d, 0, !dbg !85496 ; 2 uses
  %.not14.i = icmp eq ptr %i.e, null, !dbg !85496
  br i1 %.not14.i, label %_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerQINtNtBc_3vec3VechEINtNtB5g_6config15StructMapConfigNtB73_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B7V_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i, !dbg !85497

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 72, !dbg !85498
  %.val.i.i = load ptr, ptr %i.f, align 8, !alias.scope !85487, !noalias !85499, !nonnull !11, !align !409, !noundef !11 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.val.i.i, i64 8
  %.sroa.42.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.85.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.9.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b, !dbg !85497

bb.b:                                             ; preds = %bb.d, %.lr.ph.i
  %i.h = phi ptr [ %i.e, %.lr.ph.i ], [ %i.o, %bb.d ]
  %i.i = phi { ptr, ptr } [ %i.d, %.lr.ph.i ], [ %i.n, %bb.d ]
  %i.j = extractvalue { ptr, ptr } %i.i, 1, !dbg !85496 ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.j) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85505, !noalias !85506
  %i.k = load i64, ptr %.val.i.i, align 8, !dbg !85507, !noalias !85513, !noundef !11 ; 2 uses
  %i.l = load i64, ptr %i.g, align 8, !dbg !85507, !noalias !85513, !noundef !11 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85518, !noalias !85523
  store ptr %i.h, ptr %i.b, align 8, !dbg !85518, !noalias !85530
  store i64 %i.k, ptr %.sroa.42.0..sroa_idx.i.i, align 8, !dbg !85518, !noalias !85530
  store i64 %i.l, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !dbg !85518, !noalias !85530
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85531, !noalias !85523
  store ptr %i.j, ptr %i.a, align 8, !dbg !85531, !noalias !85530
  store i64 %i.k, ptr %.sroa.85.24..sroa_idx.i.i, align 8, !dbg !85531, !noalias !85530
  store i64 %i.l, ptr %.sroa.9.24..sroa_idx.i.i, align 8, !dbg !85531, !noalias !85530
  call void @_RINvYINtNtCs721FSB8TeJg_9rmp_serde6encode26MaybeUnknownLengthCompoundQINtNtCsgZ49sUHp3tW_5alloc3vec3VechEINtNtB8_6config15StructMapConfigNtB1I_13DefaultConfigEENtNtCs40veMcpUDl8_10serde_core3ser12SerializeMap15serialize_entryINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedRNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrEB3B_ECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.a), !dbg !85532, !noalias !85534
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85535, !noalias !85523
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85535, !noalias !85523
  %i.m = load i64, ptr %i.c, align 8, !dbg !85536, !range !17120, !alias.scope !85538, !noalias !85541, !noundef !11 ; 2 uses
  %.not.i.i = icmp eq i64 %i.m, -9223372036854775804, !dbg !85536
  br i1 %.not.i.i, label %bb.d, label %bb.c, !dbg !85543

bb.c:                                             ; preds = %bb.b
  %.sroa.7.0..sroa_idx9.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8, !dbg !85544
  %.sroa.211.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85545
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.211.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx9.i, i64 16, i1 false), !dbg !85544, !noalias !85549
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85550, !noalias !85506
  br label %_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerQINtNtBc_3vec3VechEINtNtB5g_6config15StructMapConfigNtB73_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B7V_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !85551

bb.d:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85550, !noalias !85506
  %i.n = call { ptr, ptr } @_RNvXsk_NtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3mapINtB5_4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB13_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator4nextCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %1), !dbg !85489, !noalias !85552 ; 2 uses
  %i.o = extractvalue { ptr, ptr } %i.n, 0, !dbg !85496 ; 2 uses
  %.not.i = icmp eq ptr %i.o, null, !dbg !85496
  br i1 %.not.i, label %_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerQINtNtBc_3vec3VechEINtNtB5g_6config15StructMapConfigNtB73_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B7V_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !85497

_RINvYINtNtNtNtCsgZ49sUHp3tW_5alloc11collections5btree3map4IterNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrBY_ENtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1X_8adapters3map12map_try_foldTRBY_B3B_ETINtNtCs6ti0Crti64P_13serde_stacker3ser14SerializeSizedB3B_EB3L_EuINtNtB1Z_6result6ResultuNtNtCs721FSB8TeJg_9rmp_serde6encode5ErrorENCINvXs_B3O_INtB3O_10SerializerQINtB5e_10SerializerQINtNtBc_3vec3VechEINtNtB5g_6config15StructMapConfigNtB73_13DefaultConfigEEENtNtCs40veMcpUDl8_10serde_core3ser10Serializer11collect_mapB3B_B3B_RINtB6_8BTreeMapBY_BY_EE0NCINvNvB1R_12try_for_each4callB3K_B4O_NCINvYB6n_B7V_11collect_mapB3L_B3L_INtB31_3MapB3_B5S_EE0E0E0B4O_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.d, %bb.a, %bb.c
  %storemerge.i = phi i64 [ %i.m, %bb.c ], [ -9223372036854775804, %bb.a ], [ -9223372036854775804, %bb.d ], !dbg !85553
  store i64 %storemerge.i, ptr %0, align 8, !dbg !85553, !alias.scope !85483, !noalias !85549
  ret void, !dbg !85554
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common14ProjectionIterTRNtNtNtB18_9datatypes5field5FieldRNtB14_8IpcFieldEINtNtB8_3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB2b_EINtNtNtBc_5slice4iter4IterB2I_EEENCINvB10_17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB5U_6cursor6CursorQRShEEEs4_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNtB8_10filter_map19filter_map_try_foldINtNtBc_6result6ResultINtNtBc_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtB18_5array5ArrayEL_EENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEIB8n_B94_Ba3_EuINtNtNtBc_3ops12control_flow11ControlFlowIBb1_B94_EENCB5r_s5_0NCINvXB8_INtB8_12GenericShuntINtB7K_9FilterMapBN_BbQ_EIB8n_NtNtBc_7convert10InfallibleBa3_EEB6X_8try_folduNCINvNvB6X_12try_for_each4callB94_BbF_NcNtBbF_5Break0E0BbF_E0E0Bb0_ECsfcROwRM8ZtH_11polars_plan(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(176) %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85555 {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [96 x i8], align 16               ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [72 x i8], align 8                ; 9 uses
  %i.e = alloca [72 x i8], align 8                ; 8 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [80 x i8], align 16               ; 7 uses
  %i.h = alloca [72 x i8], align 8                ; 9 uses
  %.sroa.16.i.i = alloca [48 x i8], align 8       ; 10 uses
  %.sroa.4.i = alloca i64, align 8                ; 7 uses
  %.sroa.75.i = alloca i64, align 8               ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 80, !dbg !85556 ; 2 uses
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16, !dbg !85557
  %.sroa.3.0.copyload = load ptr, ptr %.sroa.3.0..sroa_idx, align 8, !dbg !85557 ; 11 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85560), !dbg !85563
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85564), !dbg !85563
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !85566, !noalias !85575, !nonnull !11, !noundef !11 ; 2 uses
  %.promoted.i = load ptr, ptr %i.j, align 8, !alias.scope !85566, !noalias !85575 ; 2 uses
  %i.m = icmp eq ptr %.promoted.i, %i.l, !dbg !85577
  br i1 %i.m, label %_RINvYINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common14ProjectionIterTRNtNtNtBe_9datatypes5field5FieldRNtBa_8IpcFieldEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1h_EINtNtNtB2b_5slice4iter4IterB1N_EEENtNtNtB29_6traits8iterator8Iterator8try_folduNCINvNtB27_3map12map_try_foldINtB6_16ProjectionResultB1f_EINtNtB2b_6result6ResultINtNtB2b_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBe_5array5ArrayEL_EENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2b_3ops12control_flow11ControlFlowIB99_B7r_EENCINvB6_17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtBat_6cursor6CursorQRShEEEs4_0NCINvNtB27_10filter_map19filter_map_try_foldB6H_IB6I_B7r_B8p_EuB98_NCBa1_s5_0NCINvXB27_INtB27_12GenericShuntINtBbA_9FilterMapINtB5Q_3MapB3_B9Z_EBcA_EIB6I_NtNtB2b_7convert10InfallibleB8p_EEB52_8try_folduNCINvNvB52_12try_for_each4callB7r_B9O_NcNtB9O_5Break0E0B9O_E0E0E0B98_ECsfcROwRM8ZtH_11polars_plan.exit, label %.lr.ph.i, !dbg !85591

.lr.ph.i:                                         ; preds = %bb.a
  %.promoted28.i = load ptr, ptr %1, align 8, !alias.scope !85564, !noalias !85560
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.p = load ptr, ptr %i.o, align 8, !alias.scope !85592, !noalias !85575, !nonnull !11, !noundef !11
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 64 ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 72 ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 88 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 96 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 4 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.ab = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 144
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 152
  %i.ae = getelementptr inbounds nuw i8, ptr %1, i64 160
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.ag = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.ah = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %.promoted30.i = load ptr, ptr %i.n, align 8, !alias.scope !85592, !noalias !85575
  %.promoted31.i = load i64, ptr %i.q, align 8, !alias.scope !85564, !noalias !85560
  %.promoted32.i = load i64, ptr %i.r, align 8, !alias.scope !85564, !noalias !85560
  %.promoted33.i = load i64, ptr %i.u, align 8, !alias.scope !85564, !noalias !85560
  %i.ai = load ptr, ptr %i.i, align 8, !nonnull !11, !align !409
  %i.aj = load ptr, ptr %i.t, align 8, !nonnull !11, !align !409
  %i.ak = load ptr, ptr %i.s, align 8, !nonnull !11, !align !409
  %i.al = load ptr, ptr %i.i, align 8, !nonnull !11, !align !409
  %i.am = load ptr, ptr %i.s, align 8, !nonnull !11, !align !409
  %i.an = load ptr, ptr %i.t, align 8, !nonnull !11, !align !409
  %i.ao = load ptr, ptr %i.w, align 8, !nonnull !11, !align !409
  %i.ap = load ptr, ptr %i.x, align 8, !nonnull !11, !align !409
  %i.aq = load ptr, ptr %i.y, align 8, !nonnull !11, !align !409
  %i.ar = load ptr, ptr %i.z, align 8, !nonnull !11, !align !409
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24
  %i.at = load ptr, ptr %i.aa, align 8, !nonnull !11, !align !409
  %i.au = load ptr, ptr %i.ac, align 8, !nonnull !11, !align !409 ; 2 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.au, i64 8
  %i.aw = load ptr, ptr %i.ad, align 8, !nonnull !11, !align !44811
  %i.ax = load ptr, ptr %i.ae, align 8, !nonnull !11, !align !409
  %i.ay = load ptr, ptr %i.af, align 8, !nonnull !11
  br label %bb.b, !dbg !85591

bb.b:                                             ; preds = %bb.u, %.lr.ph.i
  %i.az = phi i64 [ %.promoted33.i, %.lr.ph.i ], [ %i.co, %bb.u ] ; 3 uses
  %i.ba = phi i64 [ %.promoted32.i, %.lr.ph.i ], [ %i.cp, %bb.u ] ; 4 uses
  %i.bb = phi i64 [ %.promoted31.i, %.lr.ph.i ], [ %i.cq, %bb.u ] ; 2 uses
  %i.bc = phi ptr [ %.promoted30.i, %.lr.ph.i ], [ %i.bi, %bb.u ] ; 3 uses
  %i.bd = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.bf, %bb.u ] ; 2 uses
  %i.be = phi ptr [ %.promoted28.i, %.lr.ph.i ], [ %i.cr, %bb.u ] ; 4 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85595), !dbg !85596
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 104, !dbg !85597 ; 3 uses
  store ptr %i.bf, ptr %i.j, align 8, !dbg !85599, !alias.scope !85566, !noalias !85575
  %i.bg = getelementptr inbounds nuw i8, ptr %i.bd, i64 32, !dbg !85600 ; 2 uses
  %i.bh = icmp eq ptr %i.bc, %i.p, !dbg !85604
  br i1 %i.bh, label %_RINvYINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common14ProjectionIterTRNtNtNtBe_9datatypes5field5FieldRNtBa_8IpcFieldEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1h_EINtNtNtB2b_5slice4iter4IterB1N_EEENtNtNtB29_6traits8iterator8Iterator8try_folduNCINvNtB27_3map12map_try_foldINtB6_16ProjectionResultB1f_EINtNtB2b_6result6ResultINtNtB2b_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBe_5array5ArrayEL_EENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2b_3ops12control_flow11ControlFlowIB99_B7r_EENCINvB6_17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtBat_6cursor6CursorQRShEEEs4_0NCINvNtB27_10filter_map19filter_map_try_foldB6H_IB6I_B7r_B8p_EuB98_NCBa1_s5_0NCINvXB27_INtB27_12GenericShuntINtBbA_9FilterMapINtB5Q_3MapB3_B9Z_EBcA_EIB6I_NtNtB2b_7convert10InfallibleB8p_EEB52_8try_folduNCINvNvB52_12try_for_each4callB7r_B9O_NcNtB9O_5Break0E0B9O_E0E0E0B98_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.c, !dbg !85607

bb.c:                                             ; preds = %bb.b
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bc, i64 40, !dbg !85608 ; 2 uses
  store ptr %i.bi, ptr %i.n, align 8, !dbg !85610, !alias.scope !85592, !noalias !85575
  %i.bj = icmp eq i64 %i.bb, %i.ba, !dbg !85611
  br i1 %i.bj, label %bb.d, label %bb.i, !dbg !85611

bb.d:                                             ; preds = %bb.c
  %i.bk = icmp eq i64 %i.az, 0, !dbg !85612
  br i1 %i.bk, label %bb.e, label %bb.f, !dbg !85612

bb.e:                                             ; preds = %bb.d
  store i64 0, ptr %i.r, align 8, !dbg !85613, !alias.scope !85614, !noalias !85575
  br label %bb.j, !dbg !85615

bb.f:                                             ; preds = %bb.d
  %i.bl = load i64, ptr %i.be, align 8, !dbg !85616, !noalias !85617, !noundef !11 ; 3 uses
  %i.bm = icmp ugt i64 %i.bl, %i.ba, !dbg !85616
  br i1 %i.bm, label %bb.h, label %bb.g, !dbg !85616, !prof !15

bb.g:                                             ; preds = %bb.f
  call void @_RNvNtCscgRAwXFJnXP_4core9panicking5panic(ptr noalias noundef nonnull readonly captures(address, read_provenance) @566, i64 noundef 62, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @567) #48, !dbg !85618, !noalias !85617
  unreachable

bb.h:                                             ; preds = %bb.f
  store i64 %i.bl, ptr %i.r, align 8, !dbg !85619, !alias.scope !85614, !noalias !85575
  %i.bn = add i64 %i.az, -1, !dbg !85620          ; 2 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.be, i64 8, !dbg !85625 ; 2 uses
  store ptr %i.bo, ptr %1, align 8, !dbg !85630, !alias.scope !85614, !noalias !85575
  store i64 %i.bn, ptr %i.u, align 8, !dbg !85630, !alias.scope !85614, !noalias !85575
  br label %bb.j, !dbg !85615

bb.i:                                             ; preds = %bb.c
  %i.bp = add i64 %i.bb, 1, !dbg !85631           ; 2 uses
  store i64 %i.bp, ptr %i.q, align 8, !dbg !85631, !alias.scope !85614, !noalias !85575
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !85633
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i), !dbg !85633
  call void @llvm.experimental.noalias.scope.decl(metadata !85634), !dbg !85633
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !85637), !dbg !85640
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !85643
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !dbg !85645, !noalias !85649
  call void @_RNvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read11deserialize4skip(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.bg, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.aj, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ak), !dbg !85645, !noalias !85649
  %i.bq = load i64, ptr %i.e, align 8, !dbg !85652, !range !517, !noalias !85649, !noundef !11 ; 2 uses
  %.not43.i.i.i = icmp eq i64 %i.bq, 18, !dbg !85652
  br i1 %.not43.i.i.i, label %.thread.i.i, label %bb.n, !dbg !85655

bb.j:                                             ; preds = %bb.h, %bb.e
  %i.br = phi i64 [ 0, %bb.e ], [ %i.bn, %bb.h ]
  %i.bs = phi i64 [ 0, %bb.e ], [ %i.bl, %bb.h ]
  %i.bt = phi ptr [ %i.be, %bb.e ], [ %i.bo, %bb.h ]
  %i.bu = add i64 %i.ba, 1, !dbg !85631           ; 2 uses
  store i64 %i.bu, ptr %i.q, align 8, !dbg !85631, !alias.scope !85614, !noalias !85575
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i), !dbg !85633
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.75.i), !dbg !85633
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.16.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !85656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !85656
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !dbg !85659, !noalias !85649
  %i.bv = load i64, ptr %i.aq, align 8, !dbg !85661, !noalias !85649, !noundef !11
  %i.bw = load i8, ptr %i.as, align 8, !dbg !85662, !range !980, !noalias !85649, !noundef !11
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !dbg !85663, !noalias !85649
  call void @_RINvMNtCsfyRUffk9zcp_6planus12table_readerNtB3_5Table6accessNtNtNtNtNtNtNtNtCsabmDd0H9iBj_19polars_arrow_format3ipc9generated4root3org6apache5arrow7flatbuf18BodyCompressionRefECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([80 x i8]) align 16 captures(none) dereferenceable(80) %i.g, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.at, i64 noundef 3, ptr noalias noundef nonnull readonly captures(address, read_provenance) @78, i64 noundef 11, ptr noalias noundef nonnull readonly captures(address, read_provenance) @181, i64 noundef 11), !dbg !85664, !noalias !85649
  %i.bx = load i8, ptr %i.g, align 16, !dbg !85667, !range !31357, !noalias !85649, !noundef !11
  %.not.i.i.i = icmp eq i8 %i.bx, 9, !dbg !85667
  br i1 %.not.i.i.i, label %bb.l, label %bb.k, !dbg !85670

bb.k:                                             ; preds = %bb.j
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bz = getelementptr inbounds nuw i8, ptr %i.b, i64 16, !dbg !85671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85671, !noalias !85676
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(80) %i.bz, ptr noundef nonnull align 16 dereferenceable(80) %i.g, i64 80, i1 false), !dbg !85680, !noalias !85649
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !dbg !85671, !noalias !85649
  store i64 24, ptr %i.b, align 16, !dbg !85671, !noalias !85676
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !dbg !85681, !noalias !85676
  store ptr %i.b, ptr %i.a, align 8, !dbg !85681, !noalias !85676
  %.sroa.42.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8, !dbg !85681
  store ptr @_RNvXNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read5errorNtB2_13OutOfSpecKindNtNtCscgRAwXFJnXP_4core3fmt7Display3fmt, ptr %.sroa.42.0..sroa_idx.i.i.i.i, align 8, !dbg !85681, !noalias !85676
  call void @_RNvNvNtCsgZ49sUHp3tW_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noundef nonnull @73, ptr noundef nonnull %i.a), !dbg !85684, !noalias !85690
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85693, !noalias !85676
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85693, !noalias !85676
  call void @_RNvXs_CsgjwxzEoLG5s_12polars_errorNtB4_9ErrStringINtNtCscgRAwXFJnXP_4core7convert4FromNtNtCsgZ49sUHp3tW_5alloc6string6StringE4fromCsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.v, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @200), !dbg !85694, !noalias !85649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85698, !noalias !85649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !85699, !noalias !85649
  %.sroa.8.8.copyload.i.i = load ptr, ptr %i.v, align 8, !dbg !85700, !noalias !85701
  %.sroa.13.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16, !dbg !85700
  %.sroa.13.8.copyload.i.i = load ptr, ptr %.sroa.13.8..sroa_idx.i.i, align 8, !dbg !85700, !noalias !85701
  %.sroa.16.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24, !dbg !85700
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.8..sroa_idx.i.i, i64 24, i1 false), !dbg !85700, !noalias !85643
  %.sroa.16.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.16.i.i, i64 24, !dbg !85702
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.16.48..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.by, i64 24, i1 false), !dbg !85702, !noalias !85643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !85709, !noalias !85649
  br label %bb.p, !dbg !85710

bb.l:                                             ; preds = %bb.j
  %i.ca = trunc nuw i8 %i.bw to i1, !dbg !85662
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.v, ptr noundef nonnull align 8 dereferenceable(40) %i.ab, i64 40, i1 false), !dbg !85712, !noalias !85649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !dbg !85699, !noalias !85649
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.v, i64 40, i1 false), !dbg !85663, !noalias !85649
  %i.cb = load i64, ptr %i.au, align 8, !dbg !85713, !range !13, !noalias !85649, !noundef !11
  %i.cc = load i64, ptr %i.av, align 8, !dbg !85713, !noalias !85649
  %i.cd = load i16, ptr %i.aw, align 2, !dbg !85714, !range !44812, !noalias !85649, !noundef !11
  %i.ce = load i8, ptr %i.ay, align 1, !dbg !85715, !range !980, !noalias !85649, !noundef !11
  %i.cf = trunc nuw i8 %i.ce to i1, !dbg !85715
  call void @_RINvNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read11deserialize4readINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtB19_6cursor6CursorQRShEEECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.h, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.al, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.am, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.bg, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.bc, ptr noalias noundef nonnull align 8 dereferenceable(32) %i.an, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ao, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(40) %i.ap, i64 noundef %i.bv, i1 noundef zeroext %i.ca, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.f, i64 noundef %i.cb, i64 %i.cc, i16 noundef %i.cd, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.ax, i1 noundef zeroext %i.cf), !dbg !85659, !noalias !85649
  %i.cg = load i64, ptr %i.h, align 8, !dbg !85716, !range !517, !noalias !85649, !noundef !11 ; 2 uses
  %.not42.i.i.i = icmp eq i64 %i.cg, 18, !dbg !85716
  %i.ch = load ptr, ptr %i.ag, align 8, !dbg !85719, !noalias !85649 ; 3 uses
  %i.ci = load ptr, ptr %i.ah, align 8, !dbg !85719, !noalias !85649 ; 3 uses
  br i1 %.not42.i.i.i, label %bb.o, label %bb.m, !dbg !85720

bb.m:                                             ; preds = %bb.l
  %.sroa.737.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 24, !dbg !85721
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.737.0..sroa_idx.i.i.i, i64 48, i1 false), !dbg !85721, !noalias !85643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !85709, !noalias !85649
  br label %bb.p, !dbg !85722

bb.n:                                             ; preds = %bb.i
  %.sroa.8.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8, !dbg !85723
  %.sroa.8.0.copyload.i.i = load ptr, ptr %.sroa.8.0..sroa_idx.i.i, align 8, !dbg !85723, !noalias !85701
  %.sroa.13.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16, !dbg !85723
  %.sroa.13.0.copyload.i.i = load ptr, ptr %.sroa.13.0..sroa_idx.i.i, align 8, !dbg !85723, !noalias !85701
  %.sroa.16.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 24, !dbg !85723
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.0..sroa_idx.i.i, i64 48, i1 false), !dbg !85723, !noalias !85643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !85724, !noalias !85649
  br label %bb.p, !dbg !85725

.thread.i.i:                                      ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !dbg !85724, !noalias !85649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !85727, !noalias !85643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !85727, !noalias !85643
  br label %bb.u, !dbg !85728

bb.o:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !dbg !85709, !noalias !85649
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !85727, !noalias !85643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !85727, !noalias !85643
  call void @llvm.experimental.noalias.scope.decl(metadata !85735), !dbg !85738
  %.not1.i.i.i.i = icmp eq ptr %i.ch, null, !dbg !85739
  br i1 %.not1.i.i.i.i, label %bb.u, label %bb.r, !dbg !85728

bb.p:                                             ; preds = %bb.n, %bb.m, %bb.k
  %.sroa.13.1.ph.i.i = phi ptr [ %.sroa.13.8.copyload.i.i, %bb.k ], [ %i.ci, %bb.m ], [ %.sroa.13.0.copyload.i.i, %bb.n ] ; 2 uses
  %.sroa.8.1.ph.i.i = phi ptr [ %.sroa.8.8.copyload.i.i, %bb.k ], [ %i.ch, %bb.m ], [ %.sroa.8.0.copyload.i.i, %bb.n ] ; 2 uses
  %.sroa.01.1.ph.i.i = phi i64 [ 2, %bb.k ], [ %i.cg, %bb.m ], [ %i.bq, %bb.n ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !dbg !85727, !noalias !85643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !dbg !85727, !noalias !85643
  call void @llvm.experimental.noalias.scope.decl(metadata !85740), !dbg !85743
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.3.0.copyload) ]
  %i.cj = load i64, ptr %.sroa.3.0.copyload, align 8, !dbg !85745, !range !517, !alias.scope !85750, !noalias !85753, !noundef !11
  %i.ck = icmp eq i64 %i.cj, 18, !dbg !85745
  br i1 %i.ck, label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, label %bb.q, !dbg !85745

bb.q:                                             ; preds = %bb.p
  invoke void @_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeNtCsgjwxzEoLG5s_12polars_error11PolarsErrorECsfcROwRM8ZtH_11polars_plan(ptr noalias noundef nonnull align 8 dereferenceable(72) %.sroa.3.0.copyload)
          to label %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i unwind label %bb.s, !dbg !85756, !noalias !85753

bb.r:                                             ; preds = %bb.o
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ci) ]
  %3 = ptrtoint ptr %i.ch to i64, !dbg !85758
  store i64 %3, ptr %.sroa.4.i, align 8, !dbg !85758, !alias.scope !85763, !noalias !85764
  br label %bb.t, !dbg !85765

bb.s:                                             ; preds = %bb.q
  %i.cl = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.1.ph.i.i, ptr %.sroa.3.0.copyload, align 8, !dbg !85766, !noalias !85753
  %.sroa.5.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8, !dbg !85766
  store ptr %.sroa.8.1.ph.i.i, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i.i, align 8, !dbg !85766, !noalias !85753
  %.sroa.612.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 16, !dbg !85766
  store ptr %.sroa.13.1.ph.i.i, ptr %.sroa.612.0..8.val.sroa_idx.i.i.i.i, align 8, !dbg !85766, !noalias !85753
  %.sroa.7.0..8.val.sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24, !dbg !85766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.i.i, i64 48, i1 false), !dbg !85766, !noalias !85643
  resume { ptr, i32 } %i.cl, !dbg !85767

_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  store i64 %.sroa.01.1.ph.i.i, ptr %.sroa.3.0.copyload, align 8, !dbg !85766, !noalias !85753
  %.sroa.5.0..8.val.sroa_idx10.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 8, !dbg !85766
  store ptr %.sroa.8.1.ph.i.i, ptr %.sroa.5.0..8.val.sroa_idx10.i.i.i.i, align 8, !dbg !85766, !noalias !85753
  %.sroa.612.0..8.val.sroa_idx13.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 16, !dbg !85766
  store ptr %.sroa.13.1.ph.i.i, ptr %.sroa.612.0..8.val.sroa_idx13.i.i.i.i, align 8, !dbg !85766, !noalias !85753
  %.sroa.7.0..8.val.sroa_idx15.i.i.i.i = getelementptr inbounds nuw i8, ptr %.sroa.3.0.copyload, i64 24, !dbg !85766
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.7.0..8.val.sroa_idx15.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.16.i.i, i64 48, i1 false), !dbg !85766, !noalias !85643
  br label %bb.t, !dbg !85768

bb.t:                                             ; preds = %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i, %bb.r
  %.sink23.i.i.i.sroa.phi.i = phi ptr [ %.sroa.75.i, %bb.r ], [ %.sroa.4.i, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i ]
  %.sink.i.i.i.i = phi ptr [ %i.ci, %bb.r ], [ null, %_RINvNtCscgRAwXFJnXP_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEECsfcROwRM8ZtH_11polars_plan.exit.i.i.i.i ]
  store ptr %.sink.i.i.i.i, ptr %.sink23.i.i.i.sroa.phi.i, align 8, !dbg !85769, !alias.scope !85763, !noalias !85764
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i), !dbg !85770
  %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i = load i64, ptr %.sroa.4.i, align 8, !dbg !85771, !alias.scope !85773, !noalias !85776, !noundef !11
  %4 = inttoptr i64 %.sroa.4.i.0..sroa.4.i.0..sroa.4.i.0..sroa.4.0..sroa.4.0..sroa.4.8..i to ptr, !dbg !85771
  %.sroa.75.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i = load i64, ptr %.sroa.75.i, align 8, !dbg !85771, !alias.scope !85773, !noalias !85776
  %5 = inttoptr i64 %.sroa.75.i.0..sroa.75.i.0..sroa.75.i.0..sroa.75.0..sroa.75.0..sroa.75.16..i to ptr, !dbg !85771
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !85778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i), !dbg !85778
  %i.cm = getelementptr inbounds nuw i8, ptr %0, i64 8, !dbg !85779
  store ptr %4, ptr %i.cm, align 8, !dbg !85779, !alias.scope !85783, !noalias !85564
  %i.cn = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !85779
  store ptr %5, ptr %i.cn, align 8, !dbg !85779, !alias.scope !85783, !noalias !85564
  br label %_RINvYINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common14ProjectionIterTRNtNtNtBe_9datatypes5field5FieldRNtBa_8IpcFieldEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1h_EINtNtNtB2b_5slice4iter4IterB1N_EEENtNtNtB29_6traits8iterator8Iterator8try_folduNCINvNtB27_3map12map_try_foldINtB6_16ProjectionResultB1f_EINtNtB2b_6result6ResultINtNtB2b_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBe_5array5ArrayEL_EENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2b_3ops12control_flow11ControlFlowIB99_B7r_EENCINvB6_17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtBat_6cursor6CursorQRShEEEs4_0NCINvNtB27_10filter_map19filter_map_try_foldB6H_IB6I_B7r_B8p_EuB98_NCBa1_s5_0NCINvXB27_INtB27_12GenericShuntINtBbA_9FilterMapINtB5Q_3MapB3_B9Z_EBcA_EIB6I_NtNtB2b_7convert10InfallibleB8p_EEB52_8try_folduNCINvNvB52_12try_for_each4callB7r_B9O_NcNtB9O_5Break0E0B9O_E0E0E0B98_ECsfcROwRM8ZtH_11polars_plan.exit, !dbg !85786

bb.u:                                             ; preds = %bb.o, %.thread.i.i
  %i.co = phi i64 [ %i.az, %.thread.i.i ], [ %i.br, %bb.o ]
  %i.cp = phi i64 [ %i.ba, %.thread.i.i ], [ %i.bs, %bb.o ]
  %i.cq = phi i64 [ %i.bp, %.thread.i.i ], [ %i.bu, %bb.o ]
  %i.cr = phi ptr [ %i.be, %.thread.i.i ], [ %i.bt, %bb.o ]
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.16.i.i), !dbg !85770
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i), !dbg !85778
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.75.i), !dbg !85778
  %i.cs = icmp eq ptr %i.bf, %i.l, !dbg !85577
  br i1 %i.cs, label %_RINvYINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common14ProjectionIterTRNtNtNtBe_9datatypes5field5FieldRNtBa_8IpcFieldEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1h_EINtNtNtB2b_5slice4iter4IterB1N_EEENtNtNtB29_6traits8iterator8Iterator8try_folduNCINvNtB27_3map12map_try_foldINtB6_16ProjectionResultB1f_EINtNtB2b_6result6ResultINtNtB2b_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBe_5array5ArrayEL_EENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2b_3ops12control_flow11ControlFlowIB99_B7r_EENCINvB6_17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtBat_6cursor6CursorQRShEEEs4_0NCINvNtB27_10filter_map19filter_map_try_foldB6H_IB6I_B7r_B8p_EuB98_NCBa1_s5_0NCINvXB27_INtB27_12GenericShuntINtBbA_9FilterMapINtB5Q_3MapB3_B9Z_EBcA_EIB6I_NtNtB2b_7convert10InfallibleB8p_EEB52_8try_folduNCINvNvB52_12try_for_each4callB7r_B9O_NcNtB9O_5Break0E0B9O_E0E0E0B98_ECsfcROwRM8ZtH_11polars_plan.exit, label %bb.b, !dbg !85591

_RINvYINtNtNtNtNtCs8774dFTUdNv_12polars_arrow2io3ipc4read6common14ProjectionIterTRNtNtNtBe_9datatypes5field5FieldRNtBa_8IpcFieldEINtNtNtNtCscgRAwXFJnXP_4core4iter8adapters3zip3ZipINtNtNtCse4dvU5uQ85g_8indexmap3map4iter6ValuesNtNtCs2mZqlW55729_12polars_utils6pl_str10PlSmallStrB1h_EINtNtNtB2b_5slice4iter4IterB1N_EEENtNtNtB29_6traits8iterator8Iterator8try_folduNCINvNtB27_3map12map_try_foldINtB6_16ProjectionResultB1f_EINtNtB2b_6result6ResultINtNtB2b_6option6OptionINtNtCsgZ49sUHp3tW_5alloc5boxed3BoxDNtNtBe_5array5ArrayEL_EENtCsgjwxzEoLG5s_12polars_error11PolarsErrorEuINtNtNtB2b_3ops12control_flow11ControlFlowIB99_B7r_EENCINvB6_17read_record_batchINtNtCsh8eZTKRCwoO_3std2io4TakeQQINtNtBat_6cursor6CursorQRShEEEs4_0NCINvNtB27_10filter_map19filter_map_try_foldB6H_IB6I_B7r_B8p_EuB98_NCBa1_s5_0NCINvXB27_INtB27_12GenericShuntINtBbA_9FilterMapINtB5Q_3MapB3_B9Z_EBcA_EIB6I_NtNtB2b_7convert10InfallibleB8p_EEB52_8try_folduNCINvNvB52_12try_for_each4callB7r_B9O_NcNtB9O_5Break0E0B9O_E0E0E0B98_ECsfcROwRM8ZtH_11polars_plan.exit: ; preds = %bb.b, %bb.u, %bb.a, %bb.t
  %storemerge.i = phi i64 [ 1, %bb.t ], [ 0, %bb.a ], [ 0, %bb.u ], [ 0, %bb.b ], !dbg !85787
  store i64 %storemerge.i, ptr %0, align 8, !dbg !85787, !alias.scope !85560, !noalias !85564
  ret void, !dbg !85788
}

; Function Attrs: nonlazybind uwtable
define hidden { i64, i64 } @_RINvXs0_NtNtNtCscgRAwXFJnXP_4core4iter8adapters3mapINtB6_3MapNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources14ScanSourceIterNCNvNtNtNtB13_5plans9functions5count18count_all_rows_csv0ENtNtNtBa_6traits8iterator8Iterator8try_foldjNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEEB2Y_8try_foldjNCINvMs0_NtNtBc_3ops9try_traitINtB65_17NeverShortCircuitjE10wrap_mut_2jjNCINvXsK_NtB32_5accumjNtB7f_3Sum3sumB3P_E0E0B6q_E0INtNtB67_12control_flow11ControlFlowB6q_jEEB13_(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %0, i64 noundef %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(72) %3) unnamed_addr #0 personality ptr @rust_eh_personality !dbg !85789 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [72 x i8], align 8                ; 7 uses
  %.sroa.6.i.i.i = alloca [24 x i8], align 8      ; 6 uses
  %i.c = alloca [16 x i8], align 8                ; 8 uses
  %i.d = alloca [72 x i8], align 8                ; 10 uses
  %.sroa.6.i.i = alloca [56 x i8], align 8        ; 8 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16, !dbg !85790
  tail call void @llvm.experimental.noalias.scope.decl(metadata !85791), !dbg !85794
  %i.f = load ptr, ptr %0, align 8, !alias.scope !85795, !nonnull !11, !align !409, !noundef !11 ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %.promoted.i = load i64, ptr %i.g, align 8, !alias.scope !85795
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.sroa.6.8..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %.val.i.i = load ptr, ptr %i.e, align 8         ; 2 uses
  %.val2.i.i = load ptr, ptr %i.k, align 8        ; 7 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 250 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 232 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 224 ; 2 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 240 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.val2.i.i, i64 251 ; 2 uses
  br label %bb.b, !dbg !85798

bb.b:                                             ; preds = %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources13ScanSourceRefINtNtBa_6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3e_9try_trait17NeverShortCircuitjEjENCNvNtNtNtB15_5plans9functions5count18count_all_rows_csv0NCINvXB6_INtB6_12GenericShuntINtB4_3MapNtB11_14ScanSourceIterB4u_EIB24_NtNtBa_7convert10InfallibleB2q_EENtNtNtB8_6traits8iterator8Iterator8try_foldjNCINvMs0_B3R_B3O_10wrap_mut_2jjNCINvXsK_NtB79_5accumjNtB8r_3Sum3sumB5y_E0E0B3O_E0E0B15_.exit.i, %bb.a
  %i.s = phi i64 [ %.promoted.i, %bb.a ], [ %i.ca, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources13ScanSourceRefINtNtBa_6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3e_9try_trait17NeverShortCircuitjEjENCNvNtNtNtB15_5plans9functions5count18count_all_rows_csv0NCINvXB6_INtB6_12GenericShuntINtB4_3MapNtB11_14ScanSourceIterB4u_EIB24_NtNtBa_7convert10InfallibleB2q_EENtNtNtB8_6traits8iterator8Iterator8try_foldjNCINvMs0_B3R_B3O_10wrap_mut_2jjNCINvXsK_NtB79_5accumjNtB8r_3Sum3sumB5y_E0E0B3O_E0E0B15_.exit.i ] ; 8 uses
  %.sroa.01.0.i = phi i64 [ %1, %bb.a ], [ %i.ce, %_RNCINvNtNtNtCscgRAwXFJnXP_4core4iter8adapters3map12map_try_foldNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources13ScanSourceRefINtNtBa_6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEjINtNtNtBa_3ops12control_flow11ControlFlowINtNtB3e_9try_trait17NeverShortCircuitjEjENCNvNtNtNtB15_5plans9functions5count18count_all_rows_csv0NCINvXB6_INtB6_12GenericShuntINtB4_3MapNtB11_14ScanSourceIterB4u_EIB24_NtNtBa_7convert10InfallibleB2q_EENtNtNtB8_6traits8iterator8Iterator8try_foldjNCINvMs0_B3R_B3O_10wrap_mut_2jjNCINvXsK_NtB79_5accumjNtB8r_3Sum3sumB5y_E0E0B3O_E0E0B15_.exit.i ], !dbg !85802 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !85803), !dbg !85804
  %i.t = load i64, ptr %i.f, align 8, !dbg !85806, !range !16774, !noalias !85795, !noundef !11 ; 3 uses
  switch i64 %i.t, label %default.unreachable [
    i64 0, label %bb.c
    i64 1, label %bb.d
    i64 2, label %bb.e
  ], !dbg !85812

default.unreachable:                              ; preds = %bb.b
  unreachable

bb.c:                                             ; preds = %bb.b
  %i.u = load i64, ptr %i.j, align 8, !dbg !85813, !noalias !85795, !noundef !11
  %i.v = icmp ult i64 %i.s, %i.u, !dbg !85819
  br i1 %i.v, label %bb.h, label %_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources14ScanSourceIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1e_8adapters3map12map_try_foldNtB5_13ScanSourceRefINtNtB1g_6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEjINtNtNtB1g_3ops12control_flow11ControlFlowINtNtB4n_9try_trait17NeverShortCircuitjEjENCNvNtNtNtB9_5plans9functions5count18count_all_rows_csv0NCINvXB2k_INtB2k_12GenericShuntINtB2i_3MapB3_B5E_EIB3c_NtNtB1g_7convert10InfallibleB3z_EEB18_8try_foldjNCINvMs0_B51_B4Y_10wrap_mut_2jjNCINvXsK_NtB1c_5accumjNtB8R_3Sum3sumB6I_E0E0B4Y_E0E0B4i_EB9_.exit, !dbg !85819

bb.d:                                             ; preds = %bb.b
  %i.w = load i64, ptr %i.h, align 8, !dbg !85824, !noalias !85795, !noundef !11
  %i.x = icmp ult i64 %i.s, %i.w, !dbg !85834
  br i1 %i.x, label %bb.f, label %_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources14ScanSourceIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1e_8adapters3map12map_try_foldNtB5_13ScanSourceRefINtNtB1g_6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEjINtNtNtB1g_3ops12control_flow11ControlFlowINtNtB4n_9try_trait17NeverShortCircuitjEjENCNvNtNtNtB9_5plans9functions5count18count_all_rows_csv0NCINvXB2k_INtB2k_12GenericShuntINtB2i_3MapB3_B5E_EIB3c_NtNtB1g_7convert10InfallibleB3z_EEB18_8try_foldjNCINvMs0_B51_B4Y_10wrap_mut_2jjNCINvXsK_NtB1c_5accumjNtB8R_3Sum3sumB6I_E0E0B4Y_E0E0B4i_EB9_.exit, !dbg !85834

bb.e:                                             ; preds = %bb.b
  %i.y = load i64, ptr %i.h, align 8, !dbg !85840, !noalias !85795, !noundef !11
  %i.z = icmp ult i64 %i.s, %i.y, !dbg !85848
  br i1 %i.z, label %bb.g, label %_RINvYNtNtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sources14ScanSourceIterNtNtNtNtCscgRAwXFJnXP_4core4iter6traits8iterator8Iterator8try_foldjNCINvNtNtB1e_8adapters3map12map_try_foldNtB5_13ScanSourceRefINtNtB1g_6result6ResultjNtCsgjwxzEoLG5s_12polars_error11PolarsErrorEjINtNtNtB1g_3ops12control_flow11ControlFlowINtNtB4n_9try_trait17NeverShortCircuitjEjENCNvNtNtNtB9_5plans9functions5count18count_all_rows_csv0NCINvXB2k_INtB2k_12GenericShuntINtB2i_3MapB3_B5E_EIB3c_NtNtB1g_7convert10InfallibleB3z_EEB18_8try_foldjNCINvMs0_B51_B4Y_10wrap_mut_2jjNCINvXsK_NtB1c_5accumjNtB8R_3Sum3sumB6I_E0E0B4Y_E0E0B4i_EB9_.exit, !dbg !85848

bb.f:                                             ; preds = %bb.d
  %i.aa = load ptr, ptr %i.i, align 8, !dbg !85824, !noalias !85795, !nonnull !11, !noundef !11
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16, !dbg !85854
  %i.ac = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %i.s, !dbg !85854
  br label %bb.i, !dbg !85855

bb.g:                                             ; preds = %bb.e
  %i.ad = load ptr, ptr %i.i, align 8, !dbg !85840, !noalias !85795, !nonnull !11, !noundef !11
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16, !dbg !85856
  %i.af = getelementptr inbounds nuw [24 x i8], ptr %i.ae, i64 %i.s, !dbg !85856
  br label %bb.i, !dbg !85857

bb.h:                                             ; preds = %bb.c
  %i.ag = load ptr, ptr %i.h, align 8, !dbg !85858, !noalias !85795, !nonnull !11, !noundef !11
  %i.ah = getelementptr inbounds nuw [16 x i8], ptr %i.ag, i64 %i.s, !dbg !85859 ; 3 uses
  %i.ai = add nuw i64 %i.s, 1, !dbg !85860        ; 2 uses
  store i64 %i.ai, ptr %i.g, align 8, !dbg !85860, !alias.scope !85795
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !85862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !85865, !noalias !85791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85791
  store i64 %i.t, ptr %i.c, align 8, !noalias !85866
  store ptr %i.ah, ptr %i.l, align 8, !noalias !85866
  %i.aj = load ptr, ptr %i.ah, align 8, !dbg !85869, !noalias !85866, !nonnull !11, !noundef !11 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ah, i64 8, !dbg !85869
  %i.al = load i64, ptr %i.ak, align 8, !dbg !85869, !noalias !85866, !noundef !11
  %i.am = atomicrmw add ptr %i.aj, i64 1 monotonic, align 8, !dbg !85890, !noalias !85866
  %i.an = icmp slt i64 %i.am, 0, !dbg !85895
  br i1 %i.an, label %bb.k, label %bb.j, !dbg !85895

bb.i:                                             ; preds = %bb.g, %bb.f
  %.sroa.4.0.i.i.ph = phi ptr [ %i.af, %bb.g ], [ %i.ac, %bb.f ]
  %i.ao = add nuw i64 %i.s, 1, !dbg !85860        ; 2 uses
  store i64 %i.ao, ptr %i.g, align 8, !dbg !85860, !alias.scope !85795
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i), !dbg !85862
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !dbg !85865, !noalias !85791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !85791
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !85791
  store i64 %i.t, ptr %i.c, align 8, !noalias !85866
  store ptr %.sroa.4.0.i.i.ph, ptr %i.l, align 8, !noalias !85866
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !85897
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !dbg !85897, !noalias !85866
  call void @_RNvMs5_NtNtCsfcROwRM8ZtH_11polars_plan3dsl12scan_sourcesNtB5_13ScanSourceRef11to_memslice(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.c), !dbg !85898, !noalias !85866
  %i.ap = load i64, ptr %i.b, align 8, !dbg !85899, !range !517, !noalias !85866, !noundef !11 ; 2 uses
  %.not.i.i.i = icmp eq i64 %i.ap, 18, !dbg !85899
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %i.m, i64 24, i1 false), !dbg !85902, !noalias !85866
  br i1 %.not.i.i.i, label %bb.l, label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csv0B9_.exit.thread.i.i, !dbg !85903

bb.j:                                             ; preds = %bb.h
  %i.aq = load ptr, ptr %.val.i.i, align 8, !dbg !85904, !noalias !85866, !nonnull !11, !noundef !11 ; 5 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 72, !dbg !85912
  %i.as = load i8, ptr %i.ar, align 8, !dbg !85912, !range !980, !noalias !85866, !noundef !11
  %i.at = trunc nuw i8 %i.as to i1, !dbg !85912
  %i.au = getelementptr inbounds nuw i8, ptr %i.aq, i64 73, !dbg !85912
  %i.av = load i8, ptr %i.au, align 1, !dbg !85912, !noalias !85866
  %i.aw = getelementptr inbounds nuw i8, ptr %i.aq, i64 71, !dbg !85913
  %i.ax = load i8, ptr %i.aw, align 1, !dbg !85913, !range !85916, !noalias !85866, !noundef !11
  %.not16.i.i.i = icmp eq i8 %i.ax, -37, !dbg !85913
  %i.ay = getelementptr inbounds nuw i8, ptr %i.aq, i64 48, !dbg !85917
  %.sroa.0.0.i.i.i = select i1 %.not16.i.i.i, ptr null, ptr %i.ay, !dbg !85917
  %i.az = getelementptr inbounds nuw i8, ptr %i.aq, i64 80, !dbg !85918
  %i.ba = load i8, ptr %i.az, align 8, !dbg !85918, !noalias !85866, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bb = load i8, ptr %i.n, align 2, !dbg !85919, !range !980, !noalias !85866, !noundef !11
  %i.bc = trunc nuw i8 %i.bb to i1, !dbg !85919
  %i.bd = load i64, ptr %i.o, align 8, !dbg !85920, !noalias !85866, !noundef !11
  %i.be = load i64, ptr %i.p, align 8, !dbg !85921, !noalias !85866, !noundef !11
  %i.bf = load i64, ptr %i.q, align 8, !dbg !85922, !noalias !85866, !noundef !11
  %i.bg = load i8, ptr %i.r, align 1, !dbg !85923, !range !980, !noalias !85866, !noundef !11
  %i.bh = trunc nuw i8 %i.bg to i1, !dbg !85923
  call void @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser10count_rows(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noundef nonnull %i.aj, i64 noundef %i.al, i1 noundef zeroext %i.at, i8 %i.av, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.0.0.i.i.i, i8 noundef %i.ba, i1 noundef zeroext %i.bc, i64 noundef %i.bd, i64 noundef %i.be, i64 noundef %i.bf, i1 noundef zeroext %i.bh), !dbg !85924, !noalias !85791
  br label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csv0B9_.exit.i.i, !dbg !85925

bb.k:                                             ; preds = %bb.h
  call void @llvm.trap(), !dbg !85926
  unreachable, !dbg !85926

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csv0B9_.exit.thread.i.i: ; preds = %bb.i
  %.sroa.610.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32, !dbg !85927
  %.sroa.313.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 32, !dbg !85928
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.313.0..sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.610.0..sroa_idx.i.i.i, i64 40, i1 false), !dbg !85927, !noalias !85791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85935, !noalias !85866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.8..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !dbg !85935, !noalias !85791
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !85936
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !dbg !85937, !noalias !85791
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !dbg !85937, !noalias !85791
  %.sroa.5.8.copyload3.i.i = load i64, ptr %.sroa.5.8..sroa_idx.i.i, align 8, !dbg !85862, !noalias !85791
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.6.8..sroa_idx.i.i, i64 56, i1 false), !dbg !85862, !noalias !85791
  br label %.loopexit8.i, !dbg !85938

bb.l:                                             ; preds = %bb.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !dbg !85935, !noalias !85866
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.i.i.i, i64 24, i1 false), !dbg !85897, !noalias !85866
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.i.i), !dbg !85936
  %i.bi = load ptr, ptr %.val.i.i, align 8, !dbg !85943, !noalias !85866, !nonnull !11, !noundef !11 ; 5 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 72, !dbg !85950
  %i.bk = load i8, ptr %i.bj, align 8, !dbg !85950, !range !980, !noalias !85866, !noundef !11
  %i.bl = trunc nuw i8 %i.bk to i1, !dbg !85950
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 73, !dbg !85950
  %i.bn = load i8, ptr %i.bm, align 1, !dbg !85950, !noalias !85866
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bi, i64 71, !dbg !85951
  %i.bp = load i8, ptr %i.bo, align 1, !dbg !85951, !range !85916, !noalias !85866, !noundef !11
  %.not15.i.i.i = icmp eq i8 %i.bp, -37, !dbg !85951
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bi, i64 48, !dbg !85953
  %.sroa.06.0.i.i.i = select i1 %.not15.i.i.i, ptr null, ptr %i.bq, !dbg !85953
  %i.br = getelementptr inbounds nuw i8, ptr %i.bi, i64 80, !dbg !85954
  %i.bs = load i8, ptr %i.br, align 8, !dbg !85954, !noalias !85866, !noundef !11
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val2.i.i) ]
  %i.bt = load i8, ptr %i.n, align 2, !dbg !85955, !range !980, !noalias !85866, !noundef !11
  %i.bu = trunc nuw i8 %i.bt to i1, !dbg !85955
  %i.bv = load i64, ptr %i.o, align 8, !dbg !85956, !noalias !85866, !noundef !11
  %i.bw = load i64, ptr %i.p, align 8, !dbg !85957, !noalias !85866, !noundef !11
  %i.bx = load i64, ptr %i.q, align 8, !dbg !85958, !noalias !85866, !noundef !11
  %i.by = load i8, ptr %i.r, align 1, !dbg !85959, !range !980, !noalias !85866, !noundef !11
  %i.bz = trunc nuw i8 %i.by to i1, !dbg !85959
  call void @_RNvNtNtNtCslpwjCj2YNBy_9polars_io3csv4read6parser25count_rows_from_slice_par(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(address) dereferenceable(72) %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a, i1 noundef zeroext %i.bl, i8 %i.bn, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(24) %.sroa.06.0.i.i.i, i8 noundef %i.bs, i1 noundef zeroext %i.bu, i64 noundef %i.bv, i64 noundef %i.bw, i64 noundef %i.bx, i1 noundef zeroext %i.bz), !dbg !85960, !noalias !85791
  br label %_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csv0B9_.exit.i.i, !dbg !85961

_RNCNvNtNtNtCsfcROwRM8ZtH_11polars_plan5plans9functions5count18count_all_rows_csv0B9_.exit.i.i: ; preds = %bb.l, %bb.j
  %i.ca = phi i64 [ %i.ao, %bb.l ], [ %i.ai, %bb.j ]
  %.sroa.3.8.copyload.pr.i.i = load i64, ptr %i.d, align 8, !dbg !85862, !noalias !85791 ; 2 uses
end_hunk_2
