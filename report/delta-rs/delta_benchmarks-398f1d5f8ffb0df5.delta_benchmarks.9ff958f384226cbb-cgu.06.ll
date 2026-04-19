inline.NumInlined: 3590
inline.NumDeleted: 1361
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldNtB1B_4ExprNCINvNtNtB2B_8adapters7flatten15try_flatten_oneBX_B3k_INtNtB12_6result6ResultB3k_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_exprs_0E0B4n_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.z
  %.sroa.531.sroa.4.0.copyload105 = phi i64 [ %.sroa.632.0..sroa_idx.promoted, %.lr.ph ], [ %.sroa.13.sroa.0.3, %bb.z ] ; 2 uses
  %.sroa.13.sroa.0.0101 = phi i64 [ %.sroa.531.sroa.4.0..sroa.531.0..sroa_idx.sroa_idx.promoted, %.lr.ph ], [ %.sroa.12.sroa.8.2, %bb.z ] ; 2 uses
  %i.w = phi ptr [ %.promoted, %.lr.ph ], [ %i.z, %bb.z ] ; 3 uses
  %i.x = phi <2 x i64> [ %i.u, %.lr.ph ], [ %i.bt, %bb.z ] ; 2 uses
  %i.y = phi <2 x i64> [ %i.v, %.lr.ph ], [ %i.bu, %bb.z ] ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldNtB1B_4ExprNCINvNtNtB2B_8adapters7flatten15try_flatten_oneBX_B3k_INtNtB12_6result6ResultB3k_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_exprs_0E0B4n_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(48) %.sroa.6.112..sroa_idx.i, ptr noundef nonnull align 16 dereferenceable(48) %i.ac, i64 48, i1 false)
  store <2 x i64> %i.x, ptr %i.o, align 16, !noalias !2454
  store <2 x i64> %i.y, ptr %.sroa.6.0..sroa_idx23, align 16, !noalias !2454
  store i64 %.sroa.13.sroa.0.0101, ptr %.sroa.6.sroa.5.0..sroa.6.0..sroa_idx23.sroa_idx, align 16, !noalias !2454
  store i64 %.sroa.531.sroa.4.0.copyload105, ptr %.sroa.7.0..sroa_idx25, align 8, !noalias !2454
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.827.0..sroa_idx28, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.733.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2429
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.37.i.i.sroa.11)
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldNtB1B_4ExprNCINvNtNtB2B_8adapters7flatten15try_flatten_oneBX_B3k_INtNtB12_6result6ResultB3k_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_exprs_0E0B4n_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a

bb.u:                                             ; preds = %bb.e, %bb.h, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr7planner18RawFieldAccessExprECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %.sroa.12.sroa.8.0 = phi i64 [ %.sroa.12.sroa.8.0.copyload, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr7planner18RawFieldAccessExprECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %i.ax, %bb.e ], [ %.sroa.6.i.i.sroa.7.0.copyload, %bb.h ] ; 2 uses
  %.sroa.13.sroa.0.1 = phi i64 [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr7planner18RawFieldAccessExprECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %.sroa.6.i.i.sroa.7.0.copyload, %bb.e ], [ %.sroa.37.i.i.sroa.9.40.copyload, %bb.h ] ; 2 uses
  %i.bp = phi <2 x i64> [ <i64 37, i64 5>, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr7planner18RawFieldAccessExprECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %i.ay, %bb.e ], [ %i.av, %bb.h ] ; 2 uses
  %i.bq = phi <2 x i64> [ %i.bl, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr7planner18RawFieldAccessExprECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i ], [ %i.az, %bb.e ], [ %i.aw, %bb.h ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !2449
end_hunk_2
begin_hunk_3_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldNtB1B_4ExprNCINvNtNtB2B_8adapters7flatten15try_flatten_oneBX_B3k_INtNtB12_6result6ResultB3k_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_exprs_0E0B4n_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  resume { ptr, i32 } %eh.lpad-body.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten15try_flatten_oneINtNtBa_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessENtB1u_4ExprINtNtBa_6result6ResultB2n_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB44_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_exprs_0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.thread.i, %bb.u, %bb.v
  %.sroa.12.sroa.8.2 = phi i64 [ %.sroa.13.sroa.0.0101, %.thread.i ], [ %.sroa.12.sroa.8.0, %bb.u ], [ %.sroa.12.sroa.8.0, %bb.v ] ; 3 uses
  %.sroa.13.sroa.0.3 = phi i64 [ %.sroa.531.sroa.4.0.copyload105, %.thread.i ], [ %.sroa.13.sroa.0.1, %bb.u ], [ %.sroa.13.sroa.0.1, %bb.v ] ; 3 uses
  %i.bt = phi <2 x i64> [ %i.x, %.thread.i ], [ %i.bp, %bb.u ], [ %i.bp, %bb.v ] ; 4 uses
  %i.bu = phi <2 x i64> [ %i.y, %.thread.i ], [ %i.bq, %bb.u ], [ %i.bq, %bb.v ] ; 5 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !2429
end_hunk_3
begin_hunk_4_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultINtNtB1O_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB68_B3P_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB75_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_expr0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B6Y_EIB3t_NtNtB1O_7convert10InfallibleB57_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B6N_NcNtB6N_5Break0E0B6N_E0E0B67_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  unreachable

.body279.i.i:                                     ; preds = %bb.de, %.body273.i.i, %.thread328.i.i, %bb.cd, %bb.bt, %bb.bm, %bb.bf
  %.sroa.087.0.i.i = phi i8 [ 1, %.body273.i.i ], [ %.sroa.087.2333.i.i, %.thread328.i.i ], [ 0, %bb.bm ], [ %.sroa.087.1.i.i, %bb.bf ], [ 1, %bb.de ], [ 0, %bb.bt ], [ 0, %bb.cd ] ; 2 uses
  %.sroa.086.0.i.i = phi i1 [ true, %.body273.i.i ], [ %.sroa.086.2334.i.i, %.thread328.i.i ], [ %.not183.i.i, %bb.bm ], [ %.sroa.086.1.i.i, %bb.bf ], [ true, %bb.de ], [ %.not183.i.i, %bb.bt ], [ %.not183.i.i, %bb.cd ]
  %.pn190.i.i = phi { ptr, i32 } [ %.pn178.i.i, %.body273.i.i ], [ %.pn188335.i.i, %.thread328.i.i ], [ %.pn184.pn.pn341.i.i, %bb.bm ], [ %i.fs, %bb.bf ], [ %i.ij, %bb.de ], [ %.pn184.pn350.i.i, %bb.bt ], [ %.pn184.i.i, %bb.cd ] ; 2 uses
  %i.fq = load i64, ptr %i.ak, align 8, !range !109, !noalias !2529, !noundef !7
  %i.fr = icmp ne i64 %i.fq, 69
end_hunk_4
begin_hunk_5_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultINtNtB1O_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB68_B3P_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB75_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_expr0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B6Y_EIB3t_NtNtB1O_7convert10InfallibleB57_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B6N_NcNtB6N_5Break0E0B6N_E0E0B67_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br i1 %or.cond3.i.i, label %bb.dl, label %bb.dh

bb.bf:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i278.i.i, %bb.cb, %bb.bp, %bb.be, %bb.bd, %bb.bc
  %.sroa.087.1.i.i = phi i8 [ %.sroa.087.4.i.i, %bb.bp ], [ 0, %bb.cb ], [ 1, %bb.bc ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i278.i.i ], [ 1, %bb.be ], [ 1, %bb.bd ]
  %.sroa.086.1.i.i = phi i1 [ true, %bb.bp ], [ false, %bb.cb ], [ true, %bb.bc ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i278.i.i ], [ true, %bb.be ], [ true, %bb.bd ]
  %i.fs = landingpad { ptr, i32 }
          cleanup
  br label %.body279.i.i
end_hunk_5
begin_hunk_6_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultINtNtB1O_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB68_B3P_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB75_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_expr0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B6Y_EIB3t_NtNtB1O_7convert10InfallibleB57_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B6N_NcNtB6N_5Break0E0B6N_E0E0B67_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br i1 %.sroa.091.1340.i.i, label %.thread328.i.i, label %.body279.i.i

bb.bn:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i264.i.i, %bb.bv, %bb.bl, %bb.bk, %bb.bj
  %.sroa.087.3.i.i = phi i8 [ 0, %bb.bv ], [ 0, %bb.bj ], [ 1, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i264.i.i ], [ 1, %bb.bl ], [ 1, %bb.bk ]
  %.sroa.086.3.i.i = phi i1 [ false, %bb.bv ], [ true, %bb.bj ], [ true, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i264.i.i ], [ true, %bb.bl ], [ true, %bb.bk ]
  %i.ge = landingpad { ptr, i32 }
          cleanup
  br label %.thread328.i.i
end_hunk_6
begin_hunk_7_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10AccessExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultINtNtB1O_6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB68_B3P_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB75_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_expr0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B6Y_EIB3t_NtNtB1O_7convert10InfallibleB57_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B6N_NcNtB6N_5Break0E0B6N_E0E0B67_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a

.thread328.i.i:                                   ; preds = %bb.ct, %.body259.i.i, %bb.bn, %bb.bm
  %.pn188335.i.i = phi { ptr, i32 } [ %.pn184.pn.pn341.i.i, %bb.bm ], [ %.pn181.i.i, %.body259.i.i ], [ %i.ge, %bb.bn ], [ %i.hs, %bb.ct ]
  %.sroa.086.2334.i.i = phi i1 [ %.not183.i.i, %bb.bm ], [ true, %.body259.i.i ], [ %.sroa.086.3.i.i, %bb.bn ], [ true, %bb.ct ]
  %.sroa.087.2333.i.i = phi i8 [ 0, %bb.bm ], [ 1, %.body259.i.i ], [ %.sroa.087.3.i.i, %bb.bn ], [ 1, %bb.ct ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(112) %i.aj) #22
          to label %.body279.i.i unwind label %bb.t, !noalias !2529

end_hunk_7
begin_hunk_8_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB3T_5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB5c_B3P_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB6b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B62_EIB3t_NtNtB1O_7convert10InfallibleB4E_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B5R_NcNtB5R_5Break0E0B5R_E0E0B5b_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.aq
  %i.aj = phi ptr [ %.promoted, %.lr.ph ], [ %i.ak, %bb.aq ] ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %i.aj, i64 24 ; 3 uses
  store ptr %i.ak, ptr %i.v, align 8
end_hunk_8
begin_hunk_9_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB3T_5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB5c_B3P_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB6b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B62_EIB3t_NtNtB1O_7convert10InfallibleB4E_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B5R_NcNtB5R_5Break0E0B5R_E0E0B5b_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %bb.t

bb.t:                                             ; preds = %bb.u, %bb.s
  %.sroa.12.sroa.0.0.i = phi i64 [ %.sroa.12.sroa.0.0.copyload.i, %bb.s ], [ undef, %bb.u ] ; 2 uses
  %.sroa.9.0.i = phi ptr [ %.sroa.9.0.copyload.i, %bb.s ], [ %.sroa.44.8.copyload.i.i, %bb.u ] ; 2 uses
  %.sroa.6.0.i = phi i64 [ %.sroa.6.0.copyload.i, %bb.s ], [ 7, %bb.u ] ; 2 uses
  %.sroa.01.0.i = phi i64 [ %.sroa.01.0.copyload.i, %bb.s ], [ 4, %bb.u ] ; 3 uses
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(88) %i.k)
          to label %bb.v unwind label %bb.d, !noalias !2608

end_hunk_9
begin_hunk_10_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB3T_5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB5c_B3P_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB6b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B62_EIB3t_NtNtB1O_7convert10InfallibleB4E_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B5R_NcNtB5R_5Break0E0B5R_E0E0B5b_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a

bb.am:                                            ; preds = %.loopexit41, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i
  %.val112 = phi ptr [ %.val.le126, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.val.le, %.loopexit41 ] ; 11 uses
  %.sroa.6.116.i = phi i64 [ 5, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.sroa.6.0.i, %.loopexit41 ] ; 2 uses
  %.sroa.9.115.i = phi ptr [ %.sroa.9.16.copyload.i, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.sroa.9.0.i, %.loopexit41 ] ; 2 uses
  %.sroa.12.sroa.0.115.i = phi i64 [ undef, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.sroa.12.sroa.0.0.i, %.loopexit41 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val112) ]
  %i.cg = load i64, ptr %.val112, align 8, !range !2312, !alias.scope !2644, !noalias !2647, !noundef !7
  %i.ch = icmp eq i64 %i.cg, 20
end_hunk_10
begin_hunk_11_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB3T_5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB5c_B3P_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB6b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B62_EIB3t_NtNtB1O_7convert10InfallibleB4E_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B5R_NcNtB5R_5Break0E0B5R_E0E0B5b_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.4.sroa.7.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val112, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.i, i64 16, i1 false), !noalias !2651
  %.sroa.4.sroa.8.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val112, i64 32
  store i64 %.sroa.12.sroa.0.115.i, ptr %.sroa.4.sroa.8.0..8.val.sroa_idx.i, align 8, !noalias !2651
  br label %common.resume.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.am, %bb.an
end_hunk_11
begin_hunk_12_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB3T_5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB5c_B3P_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB6b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B62_EIB3t_NtNtB1O_7convert10InfallibleB4E_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B5R_NcNtB5R_5Break0E0B5R_E0E0B5b_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.4.sroa.7.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val112, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..8.val.sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.i, i64 16, i1 false), !noalias !2651
  %.sroa.4.sroa.8.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val112, i64 32
  store i64 %.sroa.12.sroa.0.115.i, ptr %.sroa.4.sroa.8.0..8.val.sroa_idx9.i, align 8, !noalias !2651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.4.i)
end_hunk_12
begin_hunk_13_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB3T_5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB5c_B3P_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB6b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B62_EIB3t_NtNtB1O_7convert10InfallibleB4E_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B5R_NcNtB5R_5Break0E0B5R_E0E0B5b_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a

.loopexit42:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread
  %.sroa.06.021 = phi i64 [ 4, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.01.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.6.120 = phi i64 [ undef, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.6.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.8.118 = phi ptr [ undef, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.9.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.10.116 = phi i64 [ undef, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.12.sroa.0.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
end_hunk_13
begin_hunk_14_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldBX_INtNtB1W_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1W_3ops12control_flow11ControlFlowIB6b_B3X_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB78_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB30_INtB30_12GenericShuntINtB2Y_3MapBI_B71_EIB3B_NtNtB1W_7convert10InfallibleB5a_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3X_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6a_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
          to label %bb.l unwind label %bb.k, !noalias !2726

bb.h:                                             ; preds = %bb.o, %bb.f
  %.sroa.5.0.copyload.i = phi ptr [ undef, %bb.f ], [ %.sroa.617.i.sroa.7.0.copyload14.i, %bb.o ] ; 2 uses
  %.sroa.4.0.copyload.i = phi i64 [ undef, %bb.f ], [ %.sroa.617.i.sroa.0.0.copyload11.i, %bb.o ] ; 2 uses
  %i.x = phi ptr [ %.sroa.529.0.copyload.i.i, %bb.f ], [ %.pre.i.i, %bb.o ]
  %.sroa.016.0.copyload.i = phi i64 [ 37, %bb.f ], [ %i.ae, %bb.o ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2723
end_hunk_14
begin_hunk_15_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1F_8adapters9enumerateINtB2O_9EnumeratepEB1z_8try_fold9enumerateBX_uINtNtNtB1H_3ops12control_flow11ControlFlowIB40_ANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EENCINvNtB2Q_3map12map_try_foldTjBX_EINtNtB1H_6result6ResultB4K_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Z_NCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB7K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24create_named_struct_expr0NCINvXB2Q_INtB2Q_12GenericShuntINtB5E_3MapIB3g_BI_EB7D_EIB69_NtNtB1H_7convert10InfallibleB6z_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB4K_B4F_NcNtB4F_5Break0E0B4F_E0E0E0B3Z_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %.body47.i.i.i, !noalias !3057

bb.e:                                             ; preds = %bb.h, %bb.f
  %.pn35.i.i.i = phi { ptr, i32 } [ %i.ag, %bb.f ], [ %i.ak, %bb.h ] ; 2 uses
  %.sroa.021.0.i.i.i = phi i1 [ %.sroa.021.1.i.i.i, %bb.f ], [ false, %bb.h ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.j) #22
          to label %bb.n unwind label %bb.u, !noalias !3057

end_hunk_15
begin_hunk_16_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNvXs_NtNtB1F_8adapters9enumerateINtB2O_9EnumeratepEB1z_8try_fold9enumerateBX_uINtNtNtB1H_3ops12control_flow11ControlFlowIB40_ANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EENCINvNtB2Q_3map12map_try_foldTjBX_EINtNtB1H_6result6ResultB4K_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuB3Z_NCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB7K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24create_named_struct_expr0NCINvXB2Q_INtB2Q_12GenericShuntINtB5E_3MapIB3g_BI_EB7D_EIB69_NtNtB1H_7convert10InfallibleB6z_EEB1z_8try_folduNCINvNvB1z_12try_for_each4callB4K_B4F_NcNtB4F_5Break0E0B4F_E0E0E0B3Z_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
          to label %bb.z unwind label %bb.y, !noalias !3057

bb.x:                                             ; preds = %bb.aa, %bb.y
  %.pn.i.i.i = phi { ptr, i32 } [ %i.az, %bb.y ], [ %i.bd, %bb.aa ] ; 2 uses
  %.sroa.020.2.i.i.i = phi i1 [ %.sroa.020.3.i.i.i, %bb.y ], [ false, %bb.aa ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #22
          to label %bb.w unwind label %bb.u, !noalias !3057

end_hunk_16
begin_hunk_17_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNvXs_NtNtB1G_8adapters9enumerateINtB4p_9EnumeratepEB1A_8try_fold9enumerateBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCINvNtB4r_3map12map_try_foldTjBX_EIB6k_B3e_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2E_B5D_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB8N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0NCINvXB4r_INtB4r_12GenericShuntINtB6W_3MapIB4R_BI_EB8G_EIB6k_NtNtB1I_7convert10InfallibleB7z_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6j_E0E0E0B5D_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.ag:                                            ; preds = %.loopexit14, %.thread19.i.i
  %.val.i39 = phi ptr [ %.val.i.le, %.thread19.i.i ], [ %.val.i.le49, %.loopexit14 ] ; 11 uses
  %i.cf = phi ptr [ %i.au, %.thread19.i.i ], [ %i.cd, %.loopexit14 ] ; 2 uses
  %.sroa.01.025.i.i = phi i64 [ 9, %.thread19.i.i ], [ %.sroa.05.0.copyload.i.i.i, %.loopexit14 ] ; 2 uses
  %.sroa.10.024.i.i = phi ptr [ %i.bg, %.thread19.i.i ], [ %.sroa.10.16.copyload.i.i, %.loopexit14 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val.i39) ]
  %i.cg = load i64, ptr %.val.i39, align 8, !range !2312, !alias.scope !3110, !noalias !3108, !noundef !7
  %i.ch = icmp eq i64 %i.cg, 20
end_hunk_17
begin_hunk_18_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNvXs_NtNtB1G_8adapters9enumerateINtB4p_9EnumeratepEB1A_8try_fold9enumerateBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCINvNtB4r_3map12map_try_foldTjBX_EIB6k_B3e_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2E_B5D_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB8N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0NCINvXB4r_INtB4r_12GenericShuntINtB6W_3MapIB4R_BI_EB8G_EIB6k_NtNtB1I_7convert10InfallibleB7z_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6j_E0E0E0B5D_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.ai:                                            ; preds = %bb.ah
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.01.025.i.i, ptr %.val.i39, align 8, !noalias !3108
  %.sroa.5.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  store ptr %i.cf, ptr %.sroa.5.0..8.val.sroa_idx.i.i.i, align 8, !noalias !3108
  %.sroa.610.0..8.val.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 16
  store ptr %.sroa.10.024.i.i, ptr %.sroa.610.0..8.val.sroa_idx.i.i.i, align 8, !noalias !3113
  %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx.i.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i, i64 16, i1 false), !noalias !3113
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtNtBN_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.a) #22
end_hunk_18
begin_hunk_19_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropINtNtBa_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvNvXs_NtNtB1G_8adapters9enumerateINtB4p_9EnumeratepEB1A_8try_fold9enumerateBX_B2E_INtNtNtB1I_3ops12control_flow11ControlFlowINtNtB1I_6result6ResultB2E_zEB2E_ENCINvNtB4r_3map12map_try_foldTjBX_EIB6k_B3e_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2E_B5D_NCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB8N_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14insert_to_plan0NCINvXB4r_INtB4r_12GenericShuntINtB6W_3MapIB4R_BI_EB8G_EIB6k_NtNtB1I_7convert10InfallibleB7z_EEB1A_8try_foldB2E_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3e_E0B6j_E0E0E0B5D_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  ret void

bb.am:                                            ; preds = %bb.ag, %bb.ah
  store i64 %.sroa.01.025.i.i, ptr %.val.i39, align 8, !noalias !3108
  %.sroa.5.0..8.val.sroa_idx8.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 8
  store ptr %i.cf, ptr %.sroa.5.0..8.val.sroa_idx8.i.i.i, align 8, !noalias !3108
  %.sroa.610.0..8.val.sroa_idx11.i.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 16
  store ptr %.sroa.10.024.i.i, ptr %.sroa.610.0..8.val.sroa_idx11.i.i.i, align 8, !noalias !3113
  %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx11.i.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.i39, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.0..sroa.610.0..8.val.sroa_idx11.i.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.sroa.5.i.i, i64 16, i1 false), !noalias !3113
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3086
end_hunk_19
begin_hunk_20_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB11_5IdentENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultB3t_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB4o_B2T_zEB2T_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0NCINvXB3N_INtB3N_12GenericShuntINtB3L_3MapBI_B6N_EIB4o_NtNtB1X_7convert10InfallibleB4O_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0B6x_E0E0B5R_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
          to label %bb.aj unwind label %bb.z, !noalias !3366

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %bb.d
  %.sroa.01.0.i.a = phi i64 [ %.sroa.8.sroa.0.0.copyload.i, %bb.d ], [ undef, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ] ; 3 uses
  %.sroa.5.0.i = phi i64 [ %.sroa.5.0.copyload.i, %bb.d ], [ 7, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ] ; 3 uses
  %.sroa.8.sroa.0.0.i = phi i64 [ %.sroa.01.0.copyload.i, %bb.d ], [ -9223372036854775808, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i ] ; 2 uses
  %i.ay = load i8, ptr %i.u, align 8, !range !155, !alias.scope !3375, !noalias !3366, !noundef !7
  %i.az = icmp eq i8 %i.ay, 116
  br i1 %i.az, label %bb.ae, label %bb.y
end_hunk_20
begin_hunk_21_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB11_5IdentENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultB3t_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB4o_B2T_zEB2T_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0NCINvXB3N_INtB3N_12GenericShuntINtB3L_3MapBI_B6N_EIB4o_NtNtB1X_7convert10InfallibleB4O_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0B6x_E0E0B5R_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3357
  store ptr %2, ptr %i.a, align 8, !noalias !3381
  store ptr %.sroa.4.067, ptr %i.v, align 8, !noalias !3381
  %i.be = icmp eq i64 %.sroa.8.sroa.0.0.i, -9223372036854775808
  br i1 %i.be, label %bb.af, label %bb.am

bb.af:                                            ; preds = %bb.ae
end_hunk_21
begin_hunk_22_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB11_5IdentENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultB3t_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB4o_B2T_zEB2T_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0NCINvXB3N_INtB3N_12GenericShuntINtB3L_3MapBI_B6N_EIB4o_NtNtB1X_7convert10InfallibleB4O_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0B6x_E0E0B5R_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.6.sroa.6.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !3357
  %.sroa.6.sroa.7.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 32
  store i64 %.sroa.01.0.i.a, ptr %.sroa.6.sroa.7.0..8.val.sroa_idx.i, align 8, !noalias !3388
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.a) #22
          to label %.body.i unwind label %bb.ai, !noalias !3381

end_hunk_22
begin_hunk_23_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB11_5IdentENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultB3t_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB4o_B2T_zEB2T_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0NCINvXB3N_INtB3N_12GenericShuntINtB3L_3MapBI_B6N_EIB4o_NtNtB1X_7convert10InfallibleB4O_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0B6x_E0E0B5R_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.6.sroa.6.0..8.val.sroa_idx4.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..8.val.sroa_idx4.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !3357
  %.sroa.6.sroa.7.0..8.val.sroa_idx6.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 32
  store i64 %.sroa.01.0.i.a, ptr %.sroa.6.sroa.7.0..8.val.sroa_idx6.i, align 8, !noalias !3388
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3357
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k), !noalias !3357
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.7.i)
end_hunk_23
begin_hunk_24_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtB11_5IdentENCINvNtNtB1V_8adapters3map12map_try_foldBX_INtNtB1X_6result6ResultB3t_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2T_INtNtNtB1X_3ops12control_flow11ControlFlowIB4o_B2T_zEB2T_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB6U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0NCINvXB3N_INtB3N_12GenericShuntINtB3L_3MapBI_B6N_EIB4o_NtNtB1X_7convert10InfallibleB4O_EEB1P_8try_foldB2T_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3t_E0B6x_E0E0B5R_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  br label %._crit_edge

bb.am:                                            ; preds = %bb.ae
  store i64 %.sroa.8.sroa.0.0.i, ptr %.sroa.4.067, align 8, !noalias !3381
  %.sroa.67.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 8
  store i64 %.sroa.5.0.i, ptr %.sroa.67.16..sroa_idx.i.i, align 8, !noalias !3388
  %.sroa.6.sroa.6.0..sroa.67.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.sroa.6.0..sroa.67.16..sroa_idx.i.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.7.i, i64 24, i1 false), !noalias !3357
  %.sroa.6.sroa.7.0..sroa.67.16..sroa_idx.i.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 40
  store i64 %.sroa.01.0.i.a, ptr %.sroa.6.sroa.7.0..sroa.67.16..sroa_idx.i.sroa_idx.i, align 8, !noalias !3388
  %.sroa.7.16..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.16..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.8.sroa.4.i, i64 16, i1 false), !noalias !3357
  %i.bn = getelementptr inbounds nuw i8, ptr %.sroa.4.067, i64 64 ; 2 uses
end_hunk_24
begin_hunk_25_@_RNvXs1_NtNtCs4lawaffTVVK_9sqlparser3ast3dmlNtB5_6InsertNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  br label %.body41

_RNvXsdH_NtCs4lawaffTVVK_9sqlparser3astNtB6_8OnInsertNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc29, %.noexc28
  %.sroa.052.0.a = phi i64 [ undef, %.noexc29 ], [ %.sroa.065.0, %.noexc28 ]
  %.sroa.6.sroa.0.0 = phi i64 [ 3, %.noexc29 ], [ %.sroa.062.0.copyload, %.noexc28 ] ; 2 uses
  store i64 %.sroa.6.sroa.0.0, ptr %i.r, align 8
  %.sroa.554.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.554.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.554, i64 24, i1 false)
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 32
  store i64 %.sroa.052.0.a, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 40
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.sroa.4.0..sroa.6.0..sroa_idx.sroa_idx, ptr noundef nonnull align 8 dereferenceable(344) %.sroa.6.sroa.4, i64 344, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.554)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.6.sroa.4)
  %i.by = icmp eq i64 %.sroa.6.sroa.0.0, 4
  br label %bb.as

bb.au:                                            ; preds = %bb.as
end_hunk_25
begin_hunk_26_@_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  br label %.body39

bb.bt:                                            ; preds = %bb.bm, %bb.bk, %bb.bb
  %.sroa.865.sroa.7.sroa.0.0 = phi i64 [ %.sroa.865.sroa.7.0.extract.shift, %bb.bm ], [ 0, %bb.bk ], [ %i.ck, %bb.bb ]
  %.sroa.865.sroa.6.0 = phi i8 [ %.sroa.865.sroa.6.0.extract.trunc, %bb.bm ], [ %i.df, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.865.sroa.5.0 = phi i8 [ %.sroa.865.sroa.5.0.extract.trunc, %bb.bm ], [ %i.dd, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.865.sroa.0.0 = phi i8 [ %.sroa.865.sroa.0.0.extract.trunc, %bb.bm ], [ %i.cm, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.15.0 = phi i8 [ %i.dh, %bb.bm ], [ undef, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.14.0 = phi i8 [ %i.cz, %bb.bm ], [ undef, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.13.0 = phi i8 [ %i.cx, %bb.bm ], [ undef, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.660.0 = phi i64 [ %.sroa.660.0.copyload62, %bb.bm ], [ %.sroa.0.0.i34, %bb.bk ], [ undef, %bb.bb ]
  %.sroa.058.0 = phi i64 [ %i.cg, %bb.bm ], [ 5, %bb.bk ], [ 4, %bb.bb ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  store i64 %.sroa.058.0, ptr %i.w, align 8
  %.sroa.660.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.w, i64 8
end_hunk_26
begin_hunk_27_@_RNvXs1t_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_5QueryNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  br label %bb.ce

_RNvXseJ_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_12FormatClauseNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc42, %bb.ca
  %.sroa.569.0 = phi i32 [ %i.ds, %.noexc42 ], [ undef, %bb.ca ]
  %.sroa.066.0 = phi i64 [ %.sroa.066.0.copyload67, %.noexc42 ], [ -9223372036854775808, %bb.ca ]
  store i64 %.sroa.066.0, ptr %i.u, align 8
  %.sroa.568.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %.sroa.568.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(48) %.sroa.568, i64 48, i1 false)
end_hunk_27
begin_hunk_28_@_RNvXs8w_NtNtCs4lawaffTVVK_9sqlparser3ast3ddlNtB6_11CreateTableNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  br label %.body119

_RNvXsm5_NtCs4lawaffTVVK_9sqlparser3astNtB6_12HiveIOFormatNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.af, %bb.ac
  %.sroa.5138.0 = phi i8 [ %.val.i117, %bb.ac ], [ %.sroa.5138.0.copyload140, %bb.af ]
  %.sroa.0136.0 = phi i64 [ 69, %bb.ac ], [ %.sroa.0136.0.copyload137, %bb.af ]
  store i64 %.sroa.0136.0, ptr %i.u, align 8, !noalias !4311
  %.sroa.5138.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  store i8 %.sroa.5138.0, ptr %.sroa.5138.0..sroa_idx, align 8, !noalias !4311
end_hunk_28
begin_hunk_29_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  br label %_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit

_RNvXshT_NtCs4lawaffTVVK_9sqlparser3astNtB6_11CloseCursorNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %bb.u, %bb.v
  %.sroa.5516.0 = phi i32 [ %i.ny, %bb.v ], [ undef, %bb.u ]
  %.sroa.0513.0 = phi i64 [ %.sroa.0513.0.copyload514, %bb.v ], [ -9223372036854775808, %bb.u ]
  %i.oa = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0513.0, ptr %i.oa, align 8
  %.sroa.5515.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
end_hunk_29
begin_hunk_30_@_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  unreachable

.noexc14:                                         ; preds = %bb.ap, %bb.aq, %bb.ar, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i73, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit5.i70, %.noexc.i, %bb.ah
  %.sroa.5.i.sroa.6.0 = phi i8 [ undef, %bb.ah ], [ %.val3.i.i, %.noexc.i ], [ %.val3.i.i, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit5.i70 ], [ %.val3.i.i, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i73 ], [ %.val3.i.i, %bb.ar ], [ %.val3.i.i, %bb.aq ], [ %.val3.i.i, %bb.ap ]
  %.sroa.5.i.sroa.0.0.a = phi ptr [ undef, %bb.ah ], [ undef, %.noexc.i ], [ %i.cx, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit5.i70 ], [ %i.cv, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i73 ], [ null, %bb.ar ], [ null, %bb.aq ], [ undef, %bb.ap ]
  %.sroa.5.i.sroa.4.0 = phi i64 [ undef, %bb.ah ], [ 3, %.noexc.i ], [ 2, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit5.i70 ], [ 1, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i73 ], [ 2, %bb.ar ], [ 1, %bb.aq ], [ %i.cr, %bb.ap ]
  %.sroa.5.i.sroa.5.0 = phi ptr [ undef, %bb.ah ], [ %.sroa.4.0.i, %.noexc.i ], [ %.sroa.4.0.i, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit5.i70 ], [ %.sroa.4.0.i, %_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCsdJxlLsGgtXr_16delta_benchmarks.exit.i73 ], [ %.sroa.4.0.i, %bb.ar ], [ %.sroa.4.0.i, %bb.aq ], [ %.sroa.4.0.i, %bb.ap ]
  %.sroa.4.sroa.9.sroa.4.24..sroa_idx = getelementptr inbounds nuw i8, ptr %.sroa.4.sroa.9.sroa.4, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.sroa.9.sroa.4.24..sroa_idx, ptr noundef nonnull align 8 dereferenceable(64) %i.h, i64 64, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.sroa.9, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !7
end_hunk_30
begin_hunk_31_@_RNvXsin_NtCs4lawaffTVVK_9sqlparser3astNtB6_8FunctionNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
          to label %bb.be unwind label %bb.bc

_RNvXs7z_NtCs4lawaffTVVK_9sqlparser3astNtB6_10WindowTypeNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit: ; preds = %.noexc14, %.noexc13
  %.sroa.5.sroa.10.0 = phi i64 [ %.sroa.5.sroa.10.0.copyload57, %.noexc13 ], [ %.sroa.4.sroa.9.sroa.0.0.copyload, %.noexc14 ]
  %.sroa.5.sroa.7.0 = phi i8 [ %.sroa.5.sroa.7.0.copyload56, %.noexc13 ], [ %.sroa.5.i.sroa.6.0, %.noexc14 ]
  %.sroa.5.sroa.6.0 = phi ptr [ %.sroa.5.sroa.6.0.copyload55, %.noexc13 ], [ %.sroa.5.i.sroa.0.0.a, %.noexc14 ]
  %.sroa.5.sroa.5.0 = phi i64 [ %.sroa.5.sroa.5.0.copyload54, %.noexc13 ], [ %.sroa.5.i.sroa.4.0, %.noexc14 ]
  %.sroa.5.sroa.0.0 = phi ptr [ %.sroa.5.sroa.0.0.copyload53, %.noexc13 ], [ %.sroa.5.i.sroa.5.0, %.noexc14 ]
  store i64 %i.bl, ptr %i.r, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  store ptr %.sroa.5.sroa.0.0, ptr %.sroa.5.0..sroa_idx, align 8
end_hunk_31
