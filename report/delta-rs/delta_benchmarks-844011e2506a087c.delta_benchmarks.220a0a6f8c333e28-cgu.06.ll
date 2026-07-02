inline.NumInlined: 4054
inline.NumDeleted: 1735
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtBc_6option6OptionjEEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plans1_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5t_8try_folduNCINvNvB5t_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtNtBc_3ops12control_flow11ControlFlowB9c_ENcNtB9V_5Break0E0B9V_E0IB9W_B9V_EECs2VbMhdeEr66_16delta_benchmarks:bb.a
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionjEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1I_8adapters9enumerateINtB2C_9EnumeratepEB1C_8try_fold9enumerateBX_uINtNtNtB12_3ops12control_flow11ControlFlowIB3O_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCINvNtB2E_3map12map_try_foldTjBX_EINtNtB12_6result6ResultB4y_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3N_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7u_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plans1_0NCINvXB2E_INtB2E_12GenericShuntINtB5o_3MapIB34_BI_EB7n_EIB5T_NtNtB12_7convert10InfallibleB6j_EEB1C_8try_folduNCINvNvB1C_12try_for_each4callB4y_B4t_NcNtB4t_5Break0E0B4t_E0E0E0B3N_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2638
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2632
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB2X_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24create_named_struct_expr0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5I_8try_folduNCINvNvB5I_12try_for_each4callANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_INtNtNtBc_3ops12control_flow11ControlFlowB9r_ENcNtBae_5Break0E0Bae_E0IBaf_Bae_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([224 x i8]) align 16 captures(address) dereferenceable(224) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noalias noundef nonnull %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2639
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.a, align 8, !noalias !2644
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2644
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2644
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.d, align 8, !noalias !2639
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1F_8adapters9enumerateINtB2O_9EnumeratepEB1z_8try_fold9enumerateBX_uINtNtNtB1H_3ops12control_flow11ControlFlowIB40_ANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EENCINvNtB2Q_3map12map_try_foldTjBX_EINtNtB1H_6result6ResultB4K_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Z_NCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB7K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24create_named_struct_expr0NCINvXB2Q_INtB2Q_12GenericShuntINtB5E_3MapIB3g_BI_EB7D_EIB69_NtNtB1H_7convert10InfallibleB6z_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB4K_B4F_NcNtB4F_5Break0E0B4F_E0E0E0B3Z_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([224 x i8]) align 16 captures(address) dereferenceable(224) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2645
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2639
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2Y_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1u_13in_place_drop11InPlaceDropINtNtB1w_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5E_8try_foldB6l_NCINvNtB1u_16in_place_collect24write_in_place_with_dropB6W_E0IB8v_B6l_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbx_B6l_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(64) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4, ptr noalias noundef align 8 dereferenceable(40) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 7 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2646
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8, !noalias !2651
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %.sroa.4.0..sroa_idx, align 8, !noalias !2651
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %.sroa.5.0..sroa_idx, align 8, !noalias !2651
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.c, ptr %i.d, align 8, !noalias !2646
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNvXs_NtNtB1G_8adapters9enumerateINtB4p_9EnumeratepEB1A_8try_fold9enumerateBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCINvNtB4r_3map12map_try_foldTjBX_EIB6k_B3e_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2E_B5D_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB8N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0NCINvXB4r_INtB4r_12GenericShuntINtB6W_3MapIB4R_BI_EB8G_EIB6k_NtNtB1I_7convert10InfallibleB7z_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6j_E0E0E0B5D_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a), !noalias !2652
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2646
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENCNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once00ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB2s_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3F_3VeclE14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjluNCNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once00NCINvNvBL_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3H_3VeclE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0                       ; 3 uses
  %min.iters.check = icmp ult i64 %i.b, 8
  br i1 %min.iters.check, label %.lr.ph.i.preheader3, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.b, -8                       ; 4 uses
  %i.c = add i64 %.sroa.4.0.copyload, %n.vec      ; 2 uses
  %i.d = add i64 %0, %n.vec
  %i.e = trunc i64 %0 to i32
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.e, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat, <i32 0, i32 1, i32 2, i32 3>
  %i.f = getelementptr [4 x i8], ptr %.sroa.6.0.copyload, i64 %.sroa.4.0.copyload
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.g = getelementptr [4 x i8], ptr %i.f, i64 %index ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 16
  store <4 x i32> %vec.ind, ptr %i.g, align 4, !noalias !2653
  store <4 x i32> %step.add, ptr %i.h, align 4, !noalias !2653
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.i = icmp eq i64 %index.next, %n.vec
  br i1 %i.i, label %middle.block, label %vector.body, !llvm.loop !2662

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.b, %n.vec
  br i1 %cmp.n, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjluNCNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once00NCINvNvBL_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3H_3VeclE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.preheader3

.lr.ph.i.preheader3:                              ; preds = %.lr.ph.i.preheader, %middle.block
  %.ph = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.c, %middle.block ]
  %.sroa.0.011.i.ph = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader3, %.lr.ph.i
  %i.j = phi i64 [ %i.n, %.lr.ph.i ], [ %.ph, %.lr.ph.i.preheader3 ] ; 2 uses
  %.sroa.0.011.i = phi i64 [ %i.k, %.lr.ph.i ], [ %.sroa.0.011.i.ph, %.lr.ph.i.preheader3 ] ; 2 uses
  %i.k = add nuw i64 %.sroa.0.011.i, 1            ; 2 uses
  %i.l = trunc i64 %.sroa.0.011.i to i32
  %i.m = getelementptr inbounds nuw [4 x i8], ptr %.sroa.6.0.copyload, i64 %i.j
  store i32 %i.l, ptr %i.m, align 4, !noalias !2653
  %i.n = add i64 %i.j, 1                          ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.k, %1
  br i1 %exitcond.not.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjluNCNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once00NCINvNvBL_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3H_3VeclE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i, !llvm.loop !2665

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjluNCNCNvNtCsdJxlLsGgtXr_16delta_benchmarks5smoke14run_smoke_once00NCINvNvBL_8for_each4calllNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3H_3VeclE14extend_trustedINtB1B_3MapB3_B27_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph.i, %middle.block, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %i.c, %middle.block ], [ %i.n, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2666
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(write, argmem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_3ops5range5RangejENcNtINtNtBc_6option6OptionjE4Some0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB1Y_8for_each4callB1t_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3e_3VecB31_E14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(i64 noundef %0, i64 noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load ptr, ptr %2, align 8 ; 2 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.sroa.6.0.copyload = load ptr, ptr %.sroa.6.0..sroa_idx, align 8 ; 5 uses
  %i.a = icmp ult i64 %0, %1
  br i1 %i.a, label %.lr.ph.i.preheader, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionjEuNcNtB25_4Some0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3j_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

.lr.ph.i.preheader:                               ; preds = %bb.a
  %i.b = sub nuw i64 %1, %0
  %xtraiter = and i64 %i.b, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %i.c = phi i64 [ %i.g, %.lr.ph.i.prol ], [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ] ; 2 uses
  %.sroa.0.011.i.prol = phi i64 [ %i.d, %.lr.ph.i.prol ], [ %0, %.lr.ph.i.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.d = add nuw i64 %.sroa.0.011.i.prol, 1       ; 2 uses
  %i.e = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload, i64 %i.c ; 2 uses
  store i64 1, ptr %i.e, align 8, !noalias !2667
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store i64 %.sroa.0.011.i.prol, ptr %i.f, align 8, !noalias !2667
  %i.g = add i64 %i.c, 1                          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !2676

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi i64 [ poison, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.unr = phi i64 [ %.sroa.4.0.copyload, %.lr.ph.i.preheader ], [ %i.g, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi i64 [ %0, %.lr.ph.i.preheader ], [ %i.d, %.lr.ph.i.prol ]
  %i.h = sub i64 %0, %1
  %i.i = icmp ugt i64 %i.h, -4
  br i1 %i.i, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionjEuNcNtB25_4Some0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3j_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %i.j = phi i64 [ %i.z, %.lr.ph.i ], [ %.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %.sroa.0.011.i = phi i64 [ %i.v, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ] ; 5 uses
  %i.k = add nuw i64 %.sroa.0.011.i, 1
  %i.l = getelementptr inbounds nuw [16 x i8], ptr %.sroa.6.0.copyload, i64 %i.j ; 2 uses
  store i64 1, ptr %i.l, align 8, !noalias !2667
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store i64 %.sroa.0.011.i, ptr %i.m, align 8, !noalias !2667
  %i.n = add nuw i64 %.sroa.0.011.i, 2
  %i.o = getelementptr [16 x i8], ptr %.sroa.6.0.copyload, i64 %i.j ; 2 uses
  %i.p = getelementptr i8, ptr %i.o, i64 16
  store i64 1, ptr %i.p, align 8, !noalias !2667
  %i.q = getelementptr i8, ptr %i.o, i64 24
  store i64 %i.k, ptr %i.q, align 8, !noalias !2667
  %i.r = add nuw i64 %.sroa.0.011.i, 3
  %i.s = getelementptr [16 x i8], ptr %.sroa.6.0.copyload, i64 %i.j ; 2 uses
  %i.t = getelementptr i8, ptr %i.s, i64 32
  store i64 1, ptr %i.t, align 8, !noalias !2667
  %i.u = getelementptr i8, ptr %i.s, i64 40
  store i64 %i.n, ptr %i.u, align 8, !noalias !2667
  %i.v = add nuw i64 %.sroa.0.011.i, 4            ; 2 uses
  %i.w = getelementptr [16 x i8], ptr %.sroa.6.0.copyload, i64 %i.j ; 2 uses
  %i.x = getelementptr i8, ptr %i.w, i64 48
  store i64 1, ptr %i.x, align 8, !noalias !2667
  %i.y = getelementptr i8, ptr %i.w, i64 56
  store i64 %i.r, ptr %i.y, align 8, !noalias !2667
  %i.z = add i64 %i.j, 4                          ; 2 uses
  %exitcond.not.i.3 = icmp eq i64 %i.v, %1
  br i1 %exitcond.not.i.3, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionjEuNcNtB25_4Some0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3j_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

_RINvYINtNtNtCsbvkFyIu7lgC_4core3ops5range5RangejENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtBR_8adapters3map8map_foldjINtNtBa_6option6OptionjEuNcNtB25_4Some0NCINvNvBL_8for_each4callB25_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3j_3VecB25_E14extend_trustedINtB1B_3MapB3_B2u_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.val5.i = phi i64 [ %.sroa.4.0.copyload, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.z, %.lr.ph.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val5.i, ptr %.sroa.0.0.copyload, align 8, !noalias !2678
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrKj1_ENCINvMs_NtB1v_3argNtB2s_3Arg11value_namesB1r_AB1r_B2g_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3f_8for_each4callB1r_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4v_3VecB1r_E14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2679)
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2679, !noalias !2682 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !2679, !noalias !2682 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.a)
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3l_3Arg11value_namesBT_ABT_B1I_E0NCINvNvB1M_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4F_3VecBT_E14extend_trustedINtB2C_3MapBE_B3d_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !2679, !noalias !2682
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %i.c, align 8, !noalias !2684
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.d, align 8, !noalias !2702
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1
  br label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3l_3Arg11value_namesBT_ABT_B1I_E0NCINvNvB1M_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4F_3VecBT_E14extend_trustedINtB2C_3MapBE_B3d_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder3str3StrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1S_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3l_3Arg11value_namesBT_ABT_B1I_E0NCINvNvB1M_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4F_3VecBT_E14extend_trustedINtB2C_3MapBE_B3d_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2703
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(write, argmem: readwrite, inaccessiblemem: readwrite, target_mem: none) uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5array4iter8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder6os_str5OsStrKj1_ENCINvMs_NtB1v_3argNtB2x_3Arg14default_valuesB1r_AB1r_B2l_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3n_8for_each4callB1r_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4D_3VecB1r_E14extend_trustedBN_E0E0ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.0.0.copyload = load i64, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load i64, ptr %.sroa.4.0..sroa_idx, align 8 ; 3 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.5.0.copyload = load ptr, ptr %.sroa.5.0..sroa_idx, align 8 ; 2 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2704)
  %.sroa.6.16.copyload.i = load ptr, ptr %1, align 8, !alias.scope !2704, !noalias !2707 ; 2 uses
  %.sroa.8.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.8.16.copyload.i = load i64, ptr %.sroa.8.16..sroa_idx.i, align 8, !alias.scope !2704, !noalias !2707 ; 3 uses
  %i.a = icmp ule i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  tail call void @llvm.assume(i1 %i.a)
  %.not6.i.i = icmp eq i64 %.sroa.0.0.copyload, %.sroa.4.0.copyload
  br i1 %.not6.i.i, label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i.preheader.i

.lr.ph.i.preheader.i:                             ; preds = %bb.a
  %.sroa.10.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.10.16.copyload.i = load ptr, ptr %.sroa.10.16..sroa_idx.i, align 8, !alias.scope !2704, !noalias !2707
  %.not.i.i = icmp eq i64 %.sroa.4.0.copyload, 1
  %i.b = icmp eq i64 %.sroa.0.0.copyload, 0
  tail call void @llvm.assume(i1 %i.b)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.5.0.copyload) ]
  %i.c = getelementptr inbounds nuw [16 x i8], ptr %.sroa.10.16.copyload.i, i64 %.sroa.8.16.copyload.i ; 2 uses
  store ptr %.sroa.5.0.copyload, ptr %i.c, align 8, !noalias !2709
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %.sroa.6.0.copyload, ptr %i.d, align 8, !noalias !2727
  tail call void @llvm.assume(i1 %.not.i.i)
  %i.e = add i64 %.sroa.8.16.copyload.i, 1
  br label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtNtCs4s1dLWtJWRF_12clap_builder7builder6os_str5OsStrKj1_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduNCINvNtNtB1X_8adapters3map8map_foldBT_BT_uNCINvMs_NtBX_3argNtB3q_3Arg14default_valuesBT_ABT_B1N_E0NCINvNvB1R_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4N_3VecBT_E14extend_trustedINtB2H_3MapBE_B3i_EE0E0E0ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.a, %.lr.ph.i.preheader.i
  %.val3.i.i = phi i64 [ %i.e, %.lr.ph.i.preheader.i ], [ %.sroa.8.16.copyload.i, %bb.a ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.6.16.copyload.i) ]
  store i64 %.val3.i.i, ptr %.sroa.6.16.copyload.i, align 8, !noalias !2728
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5A_8try_folduNCINvNvB5A_12try_for_each4callIB1o_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortEINtNtNtBc_3ops12control_flow11ControlFlowB9j_ENcNtBa8_5Break0E0Ba8_E0IBa9_Ba8_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(40) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 8 uses
  %i.b = alloca [40 x i8], align 8                ; 8 uses
  %.sroa.6.i.sroa.6.i.i = alloca [16 x i8], align 8 ; 6 uses
  %.sroa.7.i.i = alloca [16 x i8], align 8        ; 9 uses
  %.sroa.5.i = alloca [16 x i8], align 8          ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2729)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2732)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2734, !noalias !2729, !nonnull !17, !noundef !17 ; 2 uses
  %.promoted.i = load ptr, ptr %1, align 8, !alias.scope !2734, !noalias !2729 ; 2 uses
  %i.e = icmp eq ptr %.promoted.i, %i.d
  br i1 %i.e, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2f_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5R_B42_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB35_INtB35_12GenericShuntINtB33_3MapB3_B6G_EIB3H_NtNtBa_7convert10InfallibleB4Q_EEB29_8try_folduNCINvNvB29_12try_for_each4callB42_B6v_NcNtB6v_5Break0E0B6v_E0E0B5Q_ECs2VbMhdeEr66_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load <2 x ptr>, ptr %i.f, align 8, !alias.scope !2737, !noalias !2740
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.i = load ptr, ptr %i.h, align 8, !alias.scope !2737, !noalias !2740, !nonnull !17, !align !89, !noundef !17
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.sroa.5.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.6.i.sroa.6.0..sroa_idx11.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %.lr.ph.i
  %i.m = phi ptr [ %.promoted.i, %.lr.ph.i ], [ %i.n, %bb.g ] ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.n, ptr %1, align 8, !alias.scope !2734, !noalias !2729
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i)
  %i.o = getelementptr i8, ptr %i.m, i64 8
  %.val6.i = load ptr, ptr %i.o, align 8, !noalias !2744, !nonnull !17, !noundef !17 ; 2 uses
  %i.p = getelementptr i8, ptr %i.m, i64 16
  %.val7.i = load i64, ptr %i.p, align 8, !noalias !2744, !noundef !17
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2737)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2745
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6.i.sroa.6.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2746
  %i.q = getelementptr inbounds nuw [1320 x i8], ptr %.val6.i, i64 %.val7.i
  store ptr %.val6.i, ptr %i.a, align 8, !noalias !2746
  store ptr %i.q, ptr %i.j, align 8, !noalias !2746
  store <2 x ptr> %i.g, ptr %i.k, align 8, !noalias !2746
  store ptr %i.i, ptr %.sroa.5.0..sroa_idx.i.i.i, align 8, !noalias !2746
  call void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtB6_5slice4iter4IterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprENCNCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by00ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B60_IB5Y_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB5e_EB6K_EINtNtNtB4_6traits7collect12FromIteratorIB5Y_B5e_B6K_EE9from_iterBQ_E0B81_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.b, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(40) %i.a), !noalias !2746
  %i.r = load i64, ptr %i.b, align 8, !range !34, !noalias !2746, !noundef !17 ; 3 uses
  %.not.i.i.i = icmp eq i64 %i.r, 20
  %.sroa.6.i.sroa.0.0.copyload10.i.i = load i64, ptr %i.l, align 8, !noalias !2746 ; 5 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.6.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.6.0..sroa_idx11.i.i, i64 16, i1 false), !noalias !2746
  br i1 %.not.i.i.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %.sroa.612.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.612.0.copyload.i.i.i = load i64, ptr %.sroa.612.0..sroa_idx.i.i.i, align 8, !noalias !2746 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.6.i.i, i64 16, i1 false), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2745
  %i.s = load i64, ptr %3, align 8, !range !34, !alias.scope !2748, !noalias !2751, !noundef !17
  %i.t = icmp eq i64 %i.s, 20
  br i1 %i.t, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread10.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %3)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread10.i unwind label %bb.f, !noalias !2751

bb.e:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2746
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.i.sroa.6.i.i, i64 16, i1 false), !noalias !2747
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.i.sroa.6.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2745
  %.not.i4.i.i.i = icmp eq i64 %.sroa.6.i.sroa.0.0.copyload10.i.i, -9223372036854775808
  br i1 %.not.i4.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i: ; preds = %bb.e
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          cleanup
  store i64 %i.r, ptr %3, align 8, !noalias !2751
  %.sroa.517.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload10.i.i, ptr %.sroa.517.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2751
  %.sroa.6.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..8.val.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !2745
  %.sroa.7.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.sroa.612.0.copyload.i.i.i, ptr %.sroa.7.0..8.val.sroa_idx.i.i.i, align 8, !noalias !2751
  resume { ptr, i32 } %i.u

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread10.i: ; preds = %bb.d, %bb.c
  store i64 %i.r, ptr %3, align 8, !noalias !2751
  %.sroa.517.0..8.val.sroa_idx18.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %.sroa.6.i.sroa.0.0.copyload10.i.i, ptr %.sroa.517.0..8.val.sroa_idx18.i.i.i, align 8, !noalias !2751
  %.sroa.6.0..8.val.sroa_idx20.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.0..8.val.sroa_idx20.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !2745
  %.sroa.7.0..8.val.sroa_idx21.i.i.i = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i64 %.sroa.612.0.copyload.i.i.i, ptr %.sroa.7.0..8.val.sroa_idx21.i.i.i, align 8, !noalias !2751
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  br label %.loopexit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i: ; preds = %bb.e
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.i.i, i64 16, i1 false), !noalias !2744
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i.i)
  %.not.i.i = icmp eq i64 %.sroa.6.i.sroa.0.0.copyload10.i.i, -9223372036854775807
  br i1 %.not.i.i, label %bb.g, label %.loopexit.i

.loopexit.i:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread10.i
  %storemerge.i.i13.i = phi i64 [ -9223372036854775808, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread10.i ], [ %.sroa.6.i.sroa.0.0.copyload10.i.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i ]
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.2.0..sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i, i64 16, i1 false), !noalias !2732
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2f_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5R_B42_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB35_INtB35_12GenericShuntINtB33_3MapB3_B6G_EIB3H_NtNtBa_7convert10InfallibleB4Q_EEB29_8try_folduNCINvNvB29_12try_for_each4callB42_B6v_NcNtB6v_5Break0E0B6v_E0E0B5Q_ECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEINtNtBa_6result6ResultIB11_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4B_B2L_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtBa_5slice4iter4IterB10_EB5q_EIB2q_NtNtBa_7convert10InfallibleB3A_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBa1_12try_for_each4callB2L_B5f_NcNtB5f_5Break0E0B5f_E0E0Cs2VbMhdeEr66_16delta_benchmarks.exit.thread.i
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i)
  %i.v = icmp eq ptr %i.n, %i.d
  br i1 %i.v, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2f_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5R_B42_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB35_INtB35_12GenericShuntINtB33_3MapB3_B6G_EIB3H_NtNtBa_7convert10InfallibleB4Q_EEB29_8try_folduNCINvNvB29_12try_for_each4callB42_B6v_NcNtB6v_5Break0E0B6v_E0E0B5Q_ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11OrderByExprEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2f_8adapters3map12map_try_foldRBJ_INtNtBa_6result6ResultIBK_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4SortENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB5R_B42_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14build_order_by0NCINvXB35_INtB35_12GenericShuntINtB33_3MapB3_B6G_EIB3H_NtNtBa_7convert10InfallibleB4Q_EEB29_8try_folduNCINvNvB29_12try_for_each4callB42_B6v_NcNtB6v_5Break0E0B6v_E0E0B5Q_ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.g, %bb.a, %.loopexit.i
  %storemerge.i = phi i64 [ %storemerge.i.i13.i, %.loopexit.i ], [ -9223372036854775807, %bb.a ], [ -9223372036854775807, %bb.g ]
  store i64 %storemerge.i, ptr %0, align 8, !alias.scope !2729, !noalias !2732
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef align 8 ptr @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvNvB5x_4find5checkRNtNtB1s_6string6StringQNCB2H_s1_0E0INtNtNtBc_3ops12control_flow11ControlFlowB6B_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %0, ptr noalias noundef align 8 dereferenceable(8) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2755)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store ptr %1, ptr %i.b, align 8, !noalias !2758
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.c, ptr %i.d, align 8, !noalias !2758
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.f = load ptr, ptr %i.e, align 8, !alias.scope !2761, !noalias !2764, !nonnull !17, !noundef !17
  %.promoted.i = load ptr, ptr %0, align 8, !alias.scope !2761, !noalias !2764
  br label %bb.b

bb.b:                                             ; preds = %bb.c, %bb.a
  %i.g = phi ptr [ %i.i, %bb.c ], [ %.promoted.i, %bb.a ] ; 3 uses
  %i.h = icmp eq ptr %i.g, %i.f
  br i1 %i.h, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_RNtNtBO_6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB3y_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0NCINvNvB21_4find5checkB3y_QNCB4H_s1_0E0E0B3V_ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 2 uses
  store ptr %i.i, ptr %0, align 8, !alias.scope !2761, !noalias !2764
  %.val.i = load ptr, ptr %i.g, align 8, !noalias !2755, !nonnull !17, !noundef !17 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2765
  store ptr %i.j, ptr %i.a, align 8, !noalias !2768
  %i.k = call noundef zeroext i1 @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtBX_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins1_0INtB7_5FnMutTRRNtNtCs6Po7BT7Nknu_5alloc6string6StringEE8call_mutCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.a), !noalias !2755
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2765
  br i1 %i.k, label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_RNtNtBO_6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB3y_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0NCINvNvB21_4find5checkB3y_QNCB4H_s1_0E0E0B3V_ECs2VbMhdeEr66_16delta_benchmarks.exit.split.loop.exit3, label %bb.b

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_RNtNtBO_6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB3y_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0NCINvNvB21_4find5checkB3y_QNCB4H_s1_0E0E0B3V_ECs2VbMhdeEr66_16delta_benchmarks.exit.split.loop.exit3: ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %.val.i, i64 16
  br label %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_RNtNtBO_6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB3y_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0NCINvNvB21_4find5checkB3y_QNCB4H_s1_0E0E0B3V_ECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_RNtNtBO_6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB3y_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0NCINvNvB21_4find5checkB3y_QNCB4H_s1_0E0E0B3V_ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_RNtNtBO_6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB3y_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0NCINvNvB21_4find5checkB3y_QNCB4H_s1_0E0E0B3V_ECs2VbMhdeEr66_16delta_benchmarks.exit.split.loop.exit3
  %.sroa.0.0.i = phi ptr [ %i.l, %_RINvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENtNtNtNtBa_4iter6traits8iterator8Iterator8try_folduNCINvNtNtB27_8adapters3map12map_try_foldRBJ_RNtNtBO_6string6StringuINtNtNtBa_3ops12control_flow11ControlFlowB3y_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_joins0_0NCINvNvB21_4find5checkB3y_QNCB4H_s1_0E0E0B3V_ECs2VbMhdeEr66_16delta_benchmarks.exit.split.loop.exit3 ], [ null, %bb.b ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret ptr %.sroa.0.0.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtBc_5slice4iter4IterINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB35_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_options0ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5P_8try_folduNCINvNvB5P_12try_for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprINtNtNtBc_3ops12control_flow11ControlFlowB9y_ENcNtBaw_5Break0E0Baw_E0IBax_Baw_EECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([416 x i8]) align 16 captures(none) dereferenceable(416) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(48) %1, ptr noalias nofree noundef nonnull readnone captures(none) %2, ptr noalias noundef align 8 dereferenceable(40) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i.i = alloca [408 x i8], align 8     ; 5 uses
  %i.a = alloca [744 x i8], align 8               ; 5 uses
  %i.b = alloca [416 x i8], align 16              ; 7 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2772)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !2775)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !alias.scope !2777, !noalias !2772, !nonnull !17, !noundef !17 ; 2 uses
end_hunk_0
begin_hunk_1_@_RNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eqCs2VbMhdeEr66_16delta_benchmarks:bb.a
  %i.s = extractvalue { ptr, ptr } %i.q, 1        ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.s) ]
  %i.t = call noundef i64 @_RINvYNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateNtNtCsbvkFyIu7lgC_4core4hash11BuildHasher8hash_oneRNtNtCs6Po7BT7Nknu_5alloc6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.k, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r), !noalias !6754 ; 2 uses
  %i.u = lshr i64 %i.t, 57
  %i.v = trunc nuw nsw i64 %i.u to i8
  %i.w = insertelement <16 x i8> poison, i8 %i.v, i64 0
  %i.x = shufflevector <16 x i8> %i.w, <16 x i8> poison, <16 x i32> zeroinitializer
  br label %bb.d

bb.d:                                             ; preds = %bb.f, %bb.c
  %.sroa.9.0.i.i.i = phi i64 [ 0, %bb.c ], [ %i.ao, %bb.f ]
  %.pn.i.i.i = phi i64 [ %i.t, %bb.c ], [ %i.ap, %bb.f ]
  %.sroa.01.0.i.i.i = and i64 %.pn.i.i.i, %i.m    ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.n, i64 %.sroa.01.0.i.i.i
  %.sroa.0.0.copyload.i26.i.i = load <16 x i8>, ptr %i.y, align 1, !noalias !6761 ; 2 uses
  %i.z = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, %i.x
  %i.aa = bitcast <16 x i1> %i.z to i16           ; 2 uses
  %.not.i.not32.i.i = icmp eq i16 %i.aa, 0
  br i1 %.not.i.not32.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.e
  %.sroa.06.0.i33.i.i = phi i16 [ %i.an, %bb.e ], [ %i.aa, %bb.d ] ; 3 uses
  %i.ab = call range(i16 0, 17) i16 @llvm.cttz.i16(i16 %.sroa.06.0.i33.i.i, i1 true)
  %i.ac = zext nneg i16 %i.ab to i64
  %i.ad = add i64 %.sroa.01.0.i.i.i, %i.ac
  %i.ae = and i64 %i.ad, %i.m
  %i.af = sub nsw i64 0, %i.ae
  %i.ag = getelementptr inbounds [144 x i8], ptr %i.n, i64 %i.af ; 2 uses
  %i.ah = getelementptr inbounds i8, ptr %i.ag, i64 -144
  %i.ai = call noundef zeroext i1 @_RNvXCs3gpiEk3WpjL_9hashbrownNtNtCs6Po7BT7Nknu_5alloc6string6StringINtB2_10EquivalentBq_E10equivalentCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.r, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(144) %i.ah), !noalias !6771
  br i1 %i.ai, label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.e, !prof !1965

._crit_edge.i.i:                                  ; preds = %bb.e, %bb.d
  %i.aj = icmp eq <16 x i8> %.sroa.0.0.copyload.i26.i.i, splat (i8 -1)
  %i.ak = bitcast <16 x i1> %i.aj to i16
  %i.al = icmp eq i16 %i.ak, 0
  br i1 %i.al, label %bb.f, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs2VbMhdeEr66_16delta_benchmarks.exit, !prof !28

bb.e:                                             ; preds = %.lr.ph.i.i
  %i.am = add i16 %.sroa.06.0.i33.i.i, -1
  %i.an = and i16 %i.am, %.sroa.06.0.i33.i.i      ; 2 uses
  %.not.i.not.i.i = icmp eq i16 %i.an, 0
  br i1 %.not.i.not.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

bb.f:                                             ; preds = %._crit_edge.i.i
  %i.ao = add i64 %.sroa.9.0.i.i.i, 16            ; 2 uses
  %i.ap = add i64 %.sroa.01.0.i.i.i, %i.ao
  br label %bb.d

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.lr.ph.i.i
  %i.aq = getelementptr inbounds i8, ptr %i.ag, i64 -112
  %i.ar = call fastcc noundef zeroext i1 @_RNvXsX_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.s, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) dereferenceable_or_null(112) %i.aq) #42, !noalias !6774, !inline_history !6775
  br i1 %i.ar, label %.split, label %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %.split, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs2VbMhdeEr66_16delta_benchmarks.exit, %._crit_edge.i.i, %.split.us
  %.not.i.not13 = phi i1 [ %.not.i.not.us, %.split.us ], [ false, %._crit_edge.i.i ], [ %.not.i.not, %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE6map_orbNCNCNvXs4_NtNtNtCs2pqxYH9ZEk8_3std11collections4hash3mapINtB1L_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringBJ_ENtNtB5_3cmp9PartialEq2eq00ECs2VbMhdeEr66_16delta_benchmarks.exit ], [ %.not.i.not, %.split ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.g

bb.g:                                             ; preds = %bb.a, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs2VbMhdeEr66_16delta_benchmarks.exit
  %.sroa.0.0 = phi i1 [ %.not.i.not13, %_RINvYINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvB2h_3all5checkTRBV_RB1x_ENCNvXs4_B6_INtB6_7HashMapBV_B1x_ENtNtB2p_3cmp9PartialEq2eq0E0INtNtNtB2p_3ops12control_flow11ControlFlowuEECs2VbMhdeEr66_16delta_benchmarks.exit ], [ false, %bb.a ]
  ret i1 %.sroa.0.0
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) unnamed_addr #5 {
bb.a:
  %i.a = load i8, ptr %0, align 8, !range !1051, !noundef !17 ; 2 uses
  %i.b = load i8, ptr %1, align 8, !range !1051, !noundef !17
  %i.c = icmp eq i8 %i.a, %i.b
  br i1 %i.c, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %tailrecurse, %.lr.ph, %bb.p, %bb.w, %bb.a, %bb.o, %bb.n, %bb.m, %bb.an, %bb.am, %bb.ak, %bb.u, %bb.t, %bb.s, %bb.r, %bb.q, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, %bb.l, %bb.k, %bb.ab, %bb.j, %bb.i, %bb.h, %bb.x, %bb.b, %bb.ao, %bb.al, %bb.aj, %bb.ai, %bb.ah, %bb.ag, %bb.af, %bb.ae, %bb.ad, %bb.ac, %bb.aa, %bb.z, %bb.y, %bb.g, %bb.f, %bb.e, %bb.d, %bb.c
  %.sroa.0.0.shrunk = phi i1 [ true, %bb.ak ], [ %i.ds, %bb.y ], [ %.mux, %bb.w ], [ false, %bb.b ], [ false, %bb.a ], [ %i.bo, %bb.n ], [ %i.n, %bb.c ], [ %i.s, %bb.d ], [ %i.x, %bb.e ], [ %i.ac, %bb.f ], [ %i.ah, %bb.g ], [ false, %bb.x ], [ %i.dv, %bb.z ], [ true, %bb.h ], [ %i.dy, %bb.aa ], [ false, %bb.j ], [ %i.eg, %bb.ac ], [ true, %bb.i ], [ true, %bb.ab ], [ %i.ej, %bb.ad ], [ true, %bb.k ], [ %i.em, %bb.ae ], [ true, %bb.an ], [ %i.er, %bb.af ], [ true, %bb.l ], [ false, %bb.o ], [ false, %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit ], [ %i.fd, %bb.ag ], [ false, %bb.m ], [ %i.fi, %bb.ah ], [ false, %bb.q ], [ %i.fn, %bb.ai ], [ false, %bb.r ], [ %i.fs, %bb.aj ], [ false, %bb.s ], [ false, %bb.u ], [ %i.ga, %bb.al ], [ false, %bb.t ], [ false, %bb.am ], [ %i.gl, %bb.ao ], [ false, %bb.p ], [ true, %.lr.ph ], [ false, %tailrecurse ]
  ret i1 %.sroa.0.0.shrunk

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %i.d = phi i8 [ %i.ew, %tailrecurse ], [ %i.a, %bb.a ]
  %.tr2969 = phi ptr [ %i.ev, %tailrecurse ], [ %1, %bb.a ] ; 33 uses
  %.tr68 = phi ptr [ %i.et, %tailrecurse ], [ %0, %bb.a ] ; 33 uses
  switch i8 %i.d, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit [
    i8 13, label %bb.b
    i8 16, label %bb.c
    i8 17, label %bb.d
    i8 18, label %bb.e
    i8 19, label %bb.f
    i8 21, label %bb.g
    i8 27, label %bb.h
    i8 28, label %bb.i
    i8 29, label %bb.j
    i8 30, label %bb.k
    i8 31, label %bb.l
    i8 32, label %bb.m
    i8 33, label %bb.o
    i8 34, label %bb.p
    i8 35, label %bb.q
    i8 36, label %bb.r
    i8 37, label %bb.s
    i8 38, label %bb.t
    i8 39, label %bb.u
    i8 40, label %bb.v
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.e = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.f = load i8, ptr %i.e, align 1, !range !3395, !noundef !17
  %i.g = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.h = load i8, ptr %i.g, align 1, !range !3395, !noundef !17
  %i.i = icmp eq i8 %i.f, %i.h
  br i1 %i.i, label %bb.w, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.c:                                             ; preds = %.lr.ph
  %i.j = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.k = load i8, ptr %i.j, align 1, !range !3395, !noundef !17
  %i.l = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.m = load i8, ptr %i.l, align 1, !range !3395, !noundef !17
  %i.n = icmp eq i8 %i.k, %i.m
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.d:                                             ; preds = %.lr.ph
  %i.o = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.p = load i8, ptr %i.o, align 1, !range !3395, !noundef !17
  %i.q = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.r = load i8, ptr %i.q, align 1, !range !3395, !noundef !17
  %i.s = icmp eq i8 %i.p, %i.r
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.e:                                             ; preds = %.lr.ph
  %i.t = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.u = load i8, ptr %i.t, align 1, !range !3395, !noundef !17
  %i.v = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.w = load i8, ptr %i.v, align 1, !range !3395, !noundef !17
  %i.x = icmp eq i8 %i.u, %i.w
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.f:                                             ; preds = %.lr.ph
  %i.y = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.z = load i8, ptr %i.y, align 1, !range !3393, !noundef !17
  %i.aa = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ab = load i8, ptr %i.aa, align 1, !range !3393, !noundef !17
  %i.ac = icmp eq i8 %i.z, %i.ab
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.g:                                             ; preds = %.lr.ph
  %i.ad = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.ae = load i32, ptr %i.ad, align 4, !noundef !17
  %i.af = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.ag = load i32, ptr %i.af, align 4, !noundef !17
  %i.ah = icmp eq i32 %i.ae, %i.ag
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.h:                                             ; preds = %.lr.ph
  %i.ai = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.aj = load ptr, ptr %i.ai, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.al = load ptr, ptr %i.ak, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.am = icmp eq ptr %i.aj, %i.al
  br i1 %i.am, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.z

bb.i:                                             ; preds = %.lr.ph
  %i.an = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.aq = load ptr, ptr %i.ap, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ar = icmp eq ptr %i.ao, %i.aq
  br i1 %i.ar, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.aa

bb.j:                                             ; preds = %.lr.ph
  %i.as = getelementptr inbounds nuw i8, ptr %.tr68, i64 4
  %i.at = load i32, ptr %i.as, align 4, !noundef !17
  %i.au = getelementptr inbounds nuw i8, ptr %.tr2969, i64 4
  %i.av = load i32, ptr %i.au, align 4, !noundef !17
  %i.aw = icmp eq i32 %i.at, %i.av
  br i1 %i.aw, label %bb.ab, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.k:                                             ; preds = %.lr.ph
  %i.ax = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ay = load ptr, ptr %i.ax, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ba = load ptr, ptr %i.az, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.bb = icmp eq ptr %i.ay, %i.ba
  br i1 %i.bb, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ad

bb.l:                                             ; preds = %.lr.ph
  %i.bc = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.bd = load ptr, ptr %i.bc, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.bf = load ptr, ptr %i.be, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.bg = icmp eq ptr %i.bd, %i.bf
  br i1 %i.bg, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ae

bb.m:                                             ; preds = %.lr.ph
  %i.bh = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val20 = load i64, ptr %i.bh, align 8, !noundef !17 ; 2 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val22 = load i64, ptr %i.bi, align 8, !noundef !17
  %i.bj = icmp eq i64 %.val20, %.val22
  br i1 %i.bj, label %bb.n, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val.a = load ptr, ptr %i.bk, align 8, !nonnull !17, !noundef !17
  %i.bl = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val21 = load ptr, ptr %i.bl, align 8, !nonnull !17, !noundef !17
  %i.bm = getelementptr inbounds nuw i8, ptr %.val.a, i64 16
  %i.bn = getelementptr inbounds nuw i8, ptr %.val21, i64 16
  %i.bo = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull readonly align 8 %i.bn, ptr noundef nonnull readonly align 8 %i.bm, i64 noundef range(i64 0, 1152921504606846976) %.val20)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.o:                                             ; preds = %.lr.ph
  %i.bp = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %.val24 = load i64, ptr %i.bp, align 8, !noundef !17 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %.val26 = load i64, ptr %i.bq, align 8, !noundef !17
  %i.br = icmp eq i64 %.val24, %.val26
  br i1 %i.br, label %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit: ; preds = %bb.o
  %i.bs = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %.val23.a = load ptr, ptr %i.bs, align 8, !nonnull !17, !noundef !17
  %i.bt = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %.val25 = load ptr, ptr %i.bt, align 8, !nonnull !17, !noundef !17
  %i.bu = getelementptr inbounds nuw i8, ptr %.val23.a, i64 16
  %i.bv = getelementptr inbounds nuw i8, ptr %.val25, i64 16
  %i.bw = tail call noundef zeroext i1 @_RNvXs2_NtNtCsbvkFyIu7lgC_4core5slice3cmpTaINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEINtB5_14SlicePartialEqBC_E17equal_same_lengthCs2VbMhdeEr66_16delta_benchmarks(ptr noundef nonnull readonly align 8 %i.bv, ptr noundef nonnull readonly align 8 %i.bu, i64 noundef range(i64 0, 576460752303423488) %.val24)
  br i1 %i.bw, label %bb.af, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.p:                                             ; preds = %.lr.ph
  %i.bx = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.by = load ptr, ptr %i.bx, align 8, !nonnull !17, !noundef !17
  %i.bz = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !nonnull !17, !noundef !17
  %i.cb = tail call fastcc noundef zeroext i1 @_RNvXs5_NtCsfYVtenZkBsn_12arrow_schema8datatypeNtB5_8DataTypeNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.by, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ca) #42
  br i1 %i.cb, label %tailrecurse, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.q:                                             ; preds = %.lr.ph
  %i.cc = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cd = load i8, ptr %i.cc, align 1, !noundef !17
  %i.ce = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cf = load i8, ptr %i.ce, align 1, !noundef !17
  %i.cg = icmp eq i8 %i.cd, %i.cf
  br i1 %i.cg, label %bb.ag, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.r:                                             ; preds = %.lr.ph
  %i.ch = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.ci = load i8, ptr %i.ch, align 1, !noundef !17
  %i.cj = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.ck = load i8, ptr %i.cj, align 1, !noundef !17
  %i.cl = icmp eq i8 %i.ci, %i.ck
  br i1 %i.cl, label %bb.ah, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.s:                                             ; preds = %.lr.ph
  %i.cm = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cn = load i8, ptr %i.cm, align 1, !noundef !17
  %i.co = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cp = load i8, ptr %i.co, align 1, !noundef !17
  %i.cq = icmp eq i8 %i.cn, %i.cp
  br i1 %i.cq, label %bb.ai, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.t:                                             ; preds = %.lr.ph
  %i.cr = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cs = load i8, ptr %i.cr, align 1, !noundef !17
  %i.ct = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cu = load i8, ptr %i.ct, align 1, !noundef !17
  %i.cv = icmp eq i8 %i.cs, %i.cu
  br i1 %i.cv, label %bb.aj, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.u:                                             ; preds = %.lr.ph
  %i.cw = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.cx = load i8, ptr %i.cw, align 1, !range !2603, !noundef !17
  %i.cy = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.cz = load i8, ptr %i.cy, align 1, !range !2603, !noundef !17
  %i.da = icmp eq i8 %i.cx, %i.cz
  br i1 %i.da, label %bb.ak, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.v:                                             ; preds = %.lr.ph
  %i.db = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dc = load ptr, ptr %i.db, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.de = load ptr, ptr %i.dd, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.df = icmp eq ptr %i.dc, %i.de
  br i1 %i.df, label %bb.an, label %bb.am

bb.w:                                             ; preds = %bb.b
  %i.dg = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !noundef !17 ; 2 uses
  %.not = icmp eq ptr %i.dh, null                 ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.dj = load ptr, ptr %i.di, align 8, !noundef !17 ; 2 uses
  %i.dk = icmp eq ptr %i.dj, null                 ; 2 uses
  %brmerge = or i1 %.not, %i.dk
  %.mux = and i1 %.not, %i.dk
  br i1 %brmerge, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.dl = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.dm = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.dn = load i64, ptr %i.dl, align 8, !noundef !17 ; 2 uses
  %i.do = load i64, ptr %i.dm, align 8, !noundef !17
  %i.dp = icmp eq i64 %i.dn, %i.do
  br i1 %i.dp, label %bb.y, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.y:                                             ; preds = %bb.x
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dj, i64 16
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.dr, ptr nonnull %i.dq, i64 %i.dn)
  %i.ds = icmp eq i32 %bcmp, 0
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.z:                                             ; preds = %bb.h
  %i.dt = getelementptr inbounds nuw i8, ptr %i.aj, i64 16
  %i.du = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.dv = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dt, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.du)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aa:                                            ; preds = %bb.i
  %i.dw = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
  %i.dx = getelementptr inbounds nuw i8, ptr %i.aq, i64 16
  %i.dy = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dw, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.dx)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ab:                                            ; preds = %bb.j
  %i.dz = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ed = icmp eq ptr %i.ea, %i.ec
  br i1 %i.ed, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ee = getelementptr inbounds nuw i8, ptr %i.ea, i64 16
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ec, i64 16
  %i.eg = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ee, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ef)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ad:                                            ; preds = %bb.k
  %i.eh = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  %i.ei = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %i.ej = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.eh, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ei)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ae:                                            ; preds = %bb.l
  %i.ek = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.el = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.em = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.ek, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.el)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.af:                                            ; preds = %_RNvXsn_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_11UnionFieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit
  %i.en = getelementptr inbounds nuw i8, ptr %.tr68, i64 1
  %i.eo = load i8, ptr %i.en, align 1, !range !2603, !noundef !17
  %i.ep = getelementptr inbounds nuw i8, ptr %.tr2969, i64 1
  %i.eq = load i8, ptr %i.ep, align 1, !range !2603, !noundef !17
  %i.er = icmp eq i8 %i.eo, %i.eq
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

tailrecurse:                                      ; preds = %bb.p
  %i.es = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.et = load ptr, ptr %i.es, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.eu = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.ev = load ptr, ptr %i.eu, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.ew = load i8, ptr %i.et, align 8, !range !1051, !noundef !17 ; 2 uses
  %i.ex = load i8, ptr %i.ev, align 8, !range !1051, !noundef !17
  %i.ey = icmp eq i8 %i.ew, %i.ex
  br i1 %i.ey, label %.lr.ph, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ag:                                            ; preds = %bb.q
  %i.ez = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fa = load i8, ptr %i.ez, align 2, !noundef !17
  %i.fb = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fc = load i8, ptr %i.fb, align 2, !noundef !17
  %i.fd = icmp eq i8 %i.fa, %i.fc
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ah:                                            ; preds = %bb.r
  %i.fe = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.ff = load i8, ptr %i.fe, align 2, !noundef !17
  %i.fg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fh = load i8, ptr %i.fg, align 2, !noundef !17
  %i.fi = icmp eq i8 %i.ff, %i.fh
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ai:                                            ; preds = %bb.s
  %i.fj = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fk = load i8, ptr %i.fj, align 2, !noundef !17
  %i.fl = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fm = load i8, ptr %i.fl, align 2, !noundef !17
  %i.fn = icmp eq i8 %i.fk, %i.fm
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.aj:                                            ; preds = %bb.t
  %i.fo = getelementptr inbounds nuw i8, ptr %.tr68, i64 2
  %i.fp = load i8, ptr %i.fo, align 2, !noundef !17
  %i.fq = getelementptr inbounds nuw i8, ptr %.tr2969, i64 2
  %i.fr = load i8, ptr %i.fq, align 2, !noundef !17
  %i.fs = icmp eq i8 %i.fp, %i.fr
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.ak:                                            ; preds = %bb.u
  %i.ft = getelementptr inbounds nuw i8, ptr %.tr68, i64 8
  %i.fu = load ptr, ptr %i.ft, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.fv = getelementptr inbounds nuw i8, ptr %.tr2969, i64 8
  %i.fw = load ptr, ptr %i.fv, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.fx = icmp eq ptr %i.fu, %i.fw
  br i1 %i.fx, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.al

bb.al:                                            ; preds = %bb.ak
  %i.fy = getelementptr inbounds nuw i8, ptr %i.fu, i64 16
  %i.fz = getelementptr inbounds nuw i8, ptr %i.fw, i64 16
  %i.ga = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fy, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.fz)
  br label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.am:                                            ; preds = %bb.v
  %i.gb = getelementptr inbounds nuw i8, ptr %i.dc, i64 16
  %i.gc = getelementptr inbounds nuw i8, ptr %i.de, i64 16
  %i.gd = tail call noundef zeroext i1 @_RNvXs_NtCsfYVtenZkBsn_12arrow_schema5fieldNtB4_5FieldNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gb, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(112) %i.gc)
  br i1 %i.gd, label %bb.an, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit

bb.an:                                            ; preds = %bb.v, %bb.am
  %i.ge = getelementptr inbounds nuw i8, ptr %.tr68, i64 16
  %i.gf = load ptr, ptr %i.ge, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.gg = getelementptr inbounds nuw i8, ptr %.tr2969, i64 16
  %i.gh = load ptr, ptr %i.gg, align 8, !nonnull !17, !noundef !17 ; 2 uses
  %i.gi = icmp eq ptr %i.gf, %i.gh
  br i1 %i.gi, label %_RNvXsg_NtCsfYVtenZkBsn_12arrow_schema6fieldsNtB5_6FieldsNtNtCsbvkFyIu7lgC_4core3cmp9PartialEq2eq.exit, label %bb.ao
end_hunk_1
