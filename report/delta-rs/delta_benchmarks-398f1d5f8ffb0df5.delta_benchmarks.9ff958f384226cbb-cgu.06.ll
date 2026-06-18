inline.NumInlined: 3590
inline.NumDeleted: 1361
begin_hunk_0_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropIBY_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCINvNtNtB1Q_8adapters3map12map_try_foldBX_INtNtB1S_6result6ResultB3o_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2O_INtNtNtB1S_3ops12control_flow11ControlFlowIB4V_B2O_zEB2O_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6valuesINtNtB7r_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_values_to_plan0NCINvXB4k_INtB4k_12GenericShuntINtB4i_3MapBI_B7k_EIB4V_NtNtB1S_7convert10InfallibleB5l_EEB1K_8try_foldB2O_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3o_E0B74_E0E0B6o_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
bb.j:                                             ; preds = %bb.d, %bb.e
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !2308
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..8.val.sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i, i64 24, i1 false), !noalias !2297
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 32
  store i64 %.sroa.9.16.copyload.i, ptr %.sroa.611.0..8.val.sroa_idx12.i.i, align 8, !noalias !2308
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.022, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i, i64 24, i1 false), !noalias !2297
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.4.022, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2297
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.n, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropIBY_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCINvNtNtB1Q_8adapters3map12map_try_foldBX_INtNtB1S_6result6ResultB3o_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB2O_INtNtNtB1S_3ops12control_flow11ControlFlowIB4V_B2O_zEB2O_ENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB7t_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr0NCINvXB4k_INtB4k_12GenericShuntINtB4i_3MapBI_B7k_EIB4V_NtNtB1S_7convert10InfallibleB5l_EEB1K_8try_foldB2O_NCINvNtB8_16in_place_collect24write_in_place_with_dropB3o_E0B74_E0E0B6o_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 9 uses
  %i.c = alloca [40 x i8], align 8                ; 7 uses
  %i.d = alloca [16 x i8], align 8                ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.g, align 8        ; 2 uses
  %.not21 = icmp eq ptr %.promoted, %i.f
  br i1 %.not21, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 16
  %.val2 = load ptr, ptr %i.h, align 8, !nonnull !7, !align !13, !noundef !7 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %.val2, i64 16
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.6.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.6.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8 ; 3 uses
  %.sroa.9.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.k
  %.sroa.4.022 = phi ptr [ %3, %.lr.ph ], [ %i.ab, %bb.k ] ; 5 uses
  %i.m = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %bb.k ] ; 4 uses
  %.sroa.013.0.copyload = load i64, ptr %i.m, align 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 8
  %.sroa.2.0.copyload = load ptr, ptr %.sroa.2.0..sroa_idx, align 8, !nonnull !7, !noundef !7 ; 3 uses
  %.sroa.314.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %.sroa.314.0.copyload = load i64, ptr %.sroa.314.0..sroa_idx, align 8 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 24 ; 3 uses
  store ptr %i.n, ptr %i.g, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2316
  store ptr %2, ptr %i.d, align 8, !noalias !2316
  store ptr %.sroa.4.022, ptr %i.i, align 8, !noalias !2316
  call void @llvm.experimental.noalias.scope.decl(metadata !2320)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2316
  %i.o = icmp ult i64 %.sroa.314.0.copyload, 28120036697727976
  call void @llvm.assume(i1 %i.o)
  %i.p = getelementptr inbounds nuw [328 x i8], ptr %.sroa.2.0.copyload, i64 %.sroa.314.0.copyload
  %i.q = load ptr, ptr %i.j, align 8, !alias.scope !2320, !noalias !2323, !nonnull !7, !align !13, !noundef !7
  store ptr %.sroa.2.0.copyload, ptr %i.b, align 8, !noalias !2326
  store ptr %.sroa.2.0.copyload, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2326
  store i64 %.sroa.013.0.copyload, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2326
  store ptr %i.p, ptr %.sroa.6.0..sroa_idx.i.i, align 8, !noalias !2326
  %i.r = load <2 x ptr>, ptr %.val2, align 8, !alias.scope !2320, !noalias !2323
  store <2 x ptr> %i.r, ptr %i.k, align 8, !noalias !2326
  store ptr %i.q, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !2326
  invoke void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB2H_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE25sql_grouping_sets_to_expr00ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6u_IB6s_INtB1b_3VecB5I_EB7e_EINtNtNtB4_6traits7collect12FromIteratorIB6s_B5I_B7e_EE9from_iterBQ_E0B8v_ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %i.c, ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(56) %i.b)
          to label %bb.c unwind label %bb.h, !noalias !2316

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2316
  %.sroa.4.16.copyload.i = load i64, ptr %i.c, align 8, !noalias !2316 ; 3 uses
  %.sroa.9.16.copyload.i = load i64, ptr %.sroa.9.16..sroa_idx.i, align 8, !noalias !2316 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2316
  store ptr %2, ptr %i.a, align 8, !noalias !2327
  store ptr %.sroa.4.022, ptr %i.l, align 8, !noalias !2327
  %.not.i.i.i = icmp eq i64 %.sroa.4.16.copyload.i, 20
  br i1 %.not.i.i.i, label %bb.k, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = getelementptr inbounds nuw i8, ptr %4, i64 8
  %.val.le = load ptr, ptr %i.s, align 8, !nonnull !7, !noundef !7 ; 8 uses
  %i.t = load i64, ptr %.val.le, align 8, !range !2312, !alias.scope !2331, !noalias !2327, !noundef !7
  %i.u = icmp eq i64 %i.t, 20
  br i1 %i.u, label %bb.j, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %bb.j unwind label %bb.f, !noalias !2327

bb.f:                                             ; preds = %bb.e
  %i.v = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !2327
  %.sroa.5.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..8.val.sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i, i64 24, i1 false), !noalias !2316
  %.sroa.611.0..8.val.sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 32
  store i64 %.sroa.9.16.copyload.i, ptr %.sroa.611.0..8.val.sroa_idx.i.i, align 8, !noalias !2327
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtBL_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.a) #21
          to label %.body.i unwind label %bb.g, !noalias !2327

bb.g:                                             ; preds = %bb.f
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2327
  unreachable

.body.i:                                          ; preds = %bb.h, %bb.f
  %eh.lpad-body5.i = phi { ptr, i32 } [ %i.x, %bb.h ], [ %i.v, %bb.f ]
  resume { ptr, i32 } %eh.lpad-body5.i

bb.h:                                             ; preds = %bb.b
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop11InPlaceDropINtBL_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(16) %i.d) #21
          to label %.body.i unwind label %bb.i, !noalias !2316

bb.i:                                             ; preds = %bb.h
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2316
  unreachable

._crit_edge:                                      ; preds = %bb.k, %bb.a, %bb.j
  %.sroa.4.0.lcssa.sink = phi ptr [ %.sroa.4.022, %bb.j ], [ %3, %bb.a ], [ %i.ab, %bb.k ]
  %storemerge = phi i64 [ 1, %bb.j ], [ 0, %bb.a ], [ 0, %bb.k ]
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %2, ptr %i.z, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.4.0.lcssa.sink, ptr %i.aa, align 8
  store i64 %storemerge, ptr %0, align 8
  ret void

bb.j:                                             ; preds = %bb.d, %bb.e
  store i64 %.sroa.4.16.copyload.i, ptr %.val.le, align 8, !noalias !2327
  %.sroa.5.0..8.val.sroa_idx10.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..8.val.sroa_idx10.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i, i64 24, i1 false), !noalias !2316
  %.sroa.611.0..8.val.sroa_idx12.i.i = getelementptr inbounds nuw i8, ptr %.val.le, i64 32
  store i64 %.sroa.9.16.copyload.i, ptr %.sroa.611.0..8.val.sroa_idx12.i.i, align 8, !noalias !2327
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %._crit_edge

bb.k:                                             ; preds = %bb.c
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.4.022, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.6.16..sroa_idx.i, i64 24, i1 false), !noalias !2316
  %i.ab = getelementptr inbounds nuw i8, ptr %.sroa.4.022, i64 24 ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2316
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.n, %i.f
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldBX_INtNtB1S_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1S_3ops12control_flow11ControlFlowIB5D_B3T_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB6C_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB2W_INtB2W_12GenericShuntINtB2U_3MapBI_B6t_EIB3x_NtNtB1S_7convert10InfallibleB4C_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callB3T_B6i_NcNtB6i_5Break0E0B6i_E0E0B5C_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [112 x i8], align 16              ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.l, align 8        ; 2 uses
  %.not52 = icmp eq ptr %.promoted, %i.k
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.m, align 8, !nonnull !7, !align !13, !noundef !7 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2338)
  call void @llvm.experimental.noalias.scope.decl(metadata !2341)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2334
  %i.z = load i64, ptr %i.n, align 8, !alias.scope !2341, !noalias !2343, !noundef !7 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 28120036697727976
  call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2346
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 56, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit, !noalias !2345

.noexc.i.i:                                       ; preds = %bb.c
  %i.ac = load i64, ptr %i.a, align 8, !range !464, !noalias !2346, !noundef !7
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = load i64, ptr %i.o, align 8, !range !3, !noalias !2346, !noundef !7 ; 3 uses
  br i1 %i.ad, label %bb.d, label %bb.l, !prof !2359

bb.d:                                             ; preds = %.noexc.i.i
  %i.af = load i64, ptr %i.p, align 8, !noalias !2346
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.af) #27
          to label %.noexc21.i.i unwind label %.loopexit.split-lp, !noalias !2345

.noexc21.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %.val3, align 8, !alias.scope !2338, !noalias !2360, !nonnull !7, !align !13, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2345
  %i.ah = load ptr, ptr %i.u, align 8, !alias.scope !2341, !noalias !2343, !nonnull !7, !noundef !7
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah)
          to label %bb.g unwind label %.loopexit, !noalias !2345

.body27.i.i:                                      ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %.body.i.i
  %.pn16.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.aw, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #21
          to label %common.resume.i unwind label %bb.u, !noalias !2343

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i.i

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i.i

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.v, align 8, !alias.scope !2338, !noalias !2360, !nonnull !7, !align !13, !noundef !7
  %i.aj = load ptr, ptr %i.w, align 8, !alias.scope !2338, !noalias !2360, !nonnull !7, !align !13, !noundef !7
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %bb.h unwind label %.loopexit, !noalias !2334

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2345
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i, %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.j, !noalias !2343

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.k, !noalias !2343

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2343
  unreachable

common.resume.i:                                  ; preds = %bb.x, %bb.j, %.body27.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.ak, %bb.j ], [ %.pn16.i.i, %.body27.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %.noexc.i.i
  %i.am = load ptr, ptr %i.p, align 8, !noalias !2346, !nonnull !7, !noundef !7 ; 2 uses
  %i.an = icmp ugt i64 %i.ae, 55
  call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2346
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(56) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(56) @16, i64 range(i64 0, -9223372036854775808) 56, i1 false), !noalias !2361
  store i64 %i.ae, ptr %i.f, align 8, !noalias !2345
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx32.i.i, align 8, !noalias !2345
  store i64 56, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2345
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.m unwind label %.loopexit14, !noalias !2345

.body.i.i:                                        ; preds = %.loopexit14, %.loopexit.split-lp15, %bb.q, %bb.p
  %.pn.i.i = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.au, %bb.q ], [ %lpad.loopexit16, %.loopexit14 ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp15 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #21
          to label %.body27.i.i unwind label %bb.u, !noalias !2345

.loopexit14:                                      ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp15:                             ; preds = %bb.n
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr %i.b, align 8, !range !464, !noalias !2345, !noundef !7
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.q, align 8, !range !3, !noalias !2345, !noundef !7 ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.o, !prof !2359

bb.n:                                             ; preds = %bb.m
  %i.ar = load i64, ptr %i.r, align 8, !noalias !2345
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.ar) #27
          to label %bb.f unwind label %.loopexit.split-lp15, !noalias !2345

bb.o:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.r, align 8, !noalias !2345, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2345
  store i64 %i.aq, ptr %i.e, align 8, !noalias !2345
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2345
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !2345
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2345
  store ptr %i.f, ptr %i.d, align 8, !noalias !2345
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !2345
  store ptr %i.e, ptr %i.s, align 8, !noalias !2345
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !2345
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @1, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i unwind label %bb.p, !noalias !2345

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #21
          to label %.body.i.i unwind label %bb.u, !noalias !2345

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2345
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.q, !noalias !2345

bb.q:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.r, !noalias !2345

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2345
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %.loopexit14, !noalias !2345

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2345
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i unwind label %bb.s, !noalias !2345

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body27.i.i unwind label %bb.t, !noalias !2345

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2345
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i unwind label %.loopexit, !noalias !2345

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2345
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.a, align 8, !noalias !2334
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2334
  store i64 37, ptr %i.i, align 16, !noalias !2334
  br label %bb.i

bb.u:                                             ; preds = %bb.p, %.body.i.i, %.body27.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2343
  unreachable

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !2343
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2334
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 16, !noalias !2334 ; 3 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.az, label %bb.v, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit

bb.v:                                             ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.ba, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.bb = load i64, ptr %.val.le, align 8, !range !2312, !alias.scope !2362, !noalias !2365, !noundef !7
  %i.bc = icmp eq i64 %i.bb, 20
  br i1 %i.bc, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread unwind label %bb.x, !noalias !2365

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false), !noalias !2334
  br label %common.resume.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.v, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false), !noalias !2334
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit19

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.y, label %.loopexit19

._crit_edge:                                      ; preds = %bb.y, %bb.a, %.loopexit19
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit19 ], [ 38, %bb.a ], [ 38, %bb.y ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit19:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.y:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE16sql_cube_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9S_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.y, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtB8_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1Q_8adapters3map12map_try_foldBX_INtNtB1S_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1S_3ops12control_flow11ControlFlowIB5D_B3T_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB6C_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB2W_INtB2W_12GenericShuntINtB2U_3MapBI_B6t_EIB3x_NtNtB1S_7convert10InfallibleB4C_EEB1K_8try_folduNCINvNvB1K_12try_for_each4callB3T_B6i_NcNtB6i_5Break0E0B6i_E0E0B5C_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  %i.c = alloca [328 x i8], align 8               ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 10 uses
  %i.f = alloca [24 x i8], align 8                ; 10 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [24 x i8], align 8                ; 9 uses
  %i.i = alloca [112 x i8], align 16              ; 9 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.l, align 8        ; 2 uses
  %.not52 = icmp eq ptr %.promoted, %i.k
  br i1 %.not52, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.m, align 8, !nonnull !7, !align !13, !noundef !7 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx32.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.5.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.q = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  %.sroa.4.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %.sroa.53.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.47.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.sroa.2.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 4 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.v = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.y
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %bb.y ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.x, i64 24, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 24 ; 3 uses
  store ptr %i.y, ptr %i.l, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !2373)
  call void @llvm.experimental.noalias.scope.decl(metadata !2376)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2369
  %i.z = load i64, ptr %i.n, align 8, !alias.scope !2376, !noalias !2378, !noundef !7 ; 2 uses
  %i.aa = icmp ult i64 %i.z, 28120036697727976
  call void @llvm.assume(i1 %i.aa)
  %i.ab = icmp eq i64 %i.z, 1
  br i1 %i.ab, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2381
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef range(i64 0, -9223372036854775808) 58, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit, !noalias !2380

.noexc.i.i:                                       ; preds = %bb.c
  %i.ac = load i64, ptr %i.a, align 8, !range !464, !noalias !2381, !noundef !7
  %i.ad = trunc nuw i64 %i.ac to i1
  %i.ae = load i64, ptr %i.o, align 8, !range !3, !noalias !2381, !noundef !7 ; 3 uses
  br i1 %i.ad, label %bb.d, label %bb.l, !prof !2359

bb.d:                                             ; preds = %.noexc.i.i
  %i.af = load i64, ptr %i.p, align 8, !noalias !2381
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.ae, i64 %i.af) #27
          to label %.noexc21.i.i unwind label %.loopexit.split-lp, !noalias !2380

.noexc21.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ag = load ptr, ptr %.val3, align 8, !alias.scope !2373, !noalias !2394, !nonnull !7, !align !13, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2380
  %i.ah = load ptr, ptr %i.u, align 8, !alias.scope !2376, !noalias !2378, !nonnull !7, !noundef !7
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.c, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.ah)
          to label %bb.g unwind label %.loopexit, !noalias !2380

.body27.i.i:                                      ; preds = %.loopexit, %.loopexit.split-lp, %bb.s, %.body.i.i
  %.pn16.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.aw, %bb.s ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h) #21
          to label %common.resume.i unwind label %bb.u, !noalias !2378

.loopexit:                                        ; preds = %bb.c, %bb.e, %bb.g, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i.i

.loopexit.split-lp:                               ; preds = %bb.d
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body27.i.i

bb.f:                                             ; preds = %bb.n
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.ai = load ptr, ptr %i.v, align 8, !alias.scope !2373, !noalias !2394, !nonnull !7, !align !13, !noundef !7
  %i.aj = load ptr, ptr %i.w, align 8, !alias.scope !2373, !noalias !2394, !nonnull !7, !align !13, !noundef !7
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.ag, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ai, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.aj)
          to label %bb.h unwind label %.loopexit, !noalias !2369

bb.h:                                             ; preds = %bb.g
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2380
  br label %bb.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i, %bb.h
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.j, !noalias !2378

bb.j:                                             ; preds = %bb.i
  %i.ak = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume.i unwind label %bb.k, !noalias !2378

bb.k:                                             ; preds = %bb.j
  %i.al = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2378
  unreachable

common.resume.i:                                  ; preds = %bb.x, %bb.j, %.body27.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.bd, %bb.x ], [ %i.ak, %bb.j ], [ %.pn16.i.i, %.body27.i.i ]
  resume { ptr, i32 } %common.resume.op.i

bb.l:                                             ; preds = %.noexc.i.i
  %i.am = load ptr, ptr %i.p, align 8, !noalias !2381, !nonnull !7, !noundef !7 ; 2 uses
  %i.an = icmp ugt i64 %i.ae, 57
  call void @llvm.assume(i1 %i.an)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2381
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 1 dereferenceable(58) %i.am, ptr noundef nonnull readonly align 1 dereferenceable(58) @17, i64 range(i64 0, -9223372036854775808) 58, i1 false), !noalias !2395
  store i64 %i.ae, ptr %i.f, align 8, !noalias !2380
  store ptr %i.am, ptr %.sroa.4.0..sroa_idx32.i.i, align 8, !noalias !2380
  store i64 58, ptr %.sroa.5.0..sroa_idx.i.i, align 8, !noalias !2380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2380
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.b, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.m unwind label %.loopexit14, !noalias !2380

.body.i.i:                                        ; preds = %.loopexit14, %.loopexit.split-lp15, %bb.q, %bb.p
  %.pn.i.i = phi { ptr, i32 } [ %i.at, %bb.p ], [ %i.au, %bb.q ], [ %lpad.loopexit16, %.loopexit14 ], [ %lpad.loopexit.split-lp17, %.loopexit.split-lp15 ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #21
          to label %.body27.i.i unwind label %bb.u, !noalias !2380

.loopexit14:                                      ; preds = %bb.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %lpad.loopexit16 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp15:                             ; preds = %bb.n
  %lpad.loopexit.split-lp17 = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.m:                                             ; preds = %bb.l
  %i.ao = load i64, ptr %i.b, align 8, !range !464, !noalias !2380, !noundef !7
  %i.ap = trunc nuw i64 %i.ao to i1
  %i.aq = load i64, ptr %i.q, align 8, !range !3, !noalias !2380, !noundef !7 ; 2 uses
  br i1 %i.ap, label %bb.n, label %bb.o, !prof !2359

bb.n:                                             ; preds = %bb.m
  %i.ar = load i64, ptr %i.r, align 8, !noalias !2380
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.aq, i64 %i.ar) #27
          to label %bb.f unwind label %.loopexit.split-lp15, !noalias !2380

bb.o:                                             ; preds = %bb.m
  %i.as = load ptr, ptr %i.r, align 8, !noalias !2380, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2380
  store i64 %i.aq, ptr %i.e, align 8, !noalias !2380
  store ptr %i.as, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !noalias !2380
  store i64 0, ptr %.sroa.53.0..sroa_idx.i.i, align 8, !noalias !2380
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2380
  store ptr %i.f, ptr %i.d, align 8, !noalias !2380
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.47.0..sroa_idx.i.i, align 8, !noalias !2380
  store ptr %i.e, ptr %i.s, align 8, !noalias !2380
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !2380
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @1, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i unwind label %bb.p, !noalias !2380

bb.p:                                             ; preds = %bb.o
  %i.at = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #21
          to label %.body.i.i unwind label %bb.u, !noalias !2380

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2380
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.q, !noalias !2380

bb.q:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i
  %i.au = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %.body.i.i unwind label %bb.r, !noalias !2380

bb.r:                                             ; preds = %bb.q
  %i.av = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2380
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit23.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %.loopexit14, !noalias !2380

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2380
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i unwind label %bb.s, !noalias !2380

bb.s:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body27.i.i unwind label %bb.t, !noalias !2380

bb.t:                                             ; preds = %bb.s
  %i.ax = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2380
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i unwind label %.loopexit, !noalias !2380

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit30.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i26.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2380
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.a, align 8, !noalias !2369
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.t, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2369
  store i64 37, ptr %i.i, align 16, !noalias !2369
  br label %bb.i

bb.u:                                             ; preds = %bb.p, %.body.i.i, %.body27.i.i
  %i.ay = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2378
  unreachable

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h), !noalias !2378
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2369
  %.sroa.0.0.copyload.i = load i64, ptr %i.i, align 16, !noalias !2369 ; 3 uses
  %i.az = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.az, label %bb.v, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit

bb.v:                                             ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.ba = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.ba, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.bb = load i64, ptr %.val.le, align 8, !range !2312, !alias.scope !2396, !noalias !2399, !noundef !7
  %i.bc = icmp eq i64 %i.bb, 20
  br i1 %i.bc, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %bb.w

bb.w:                                             ; preds = %bb.v
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread unwind label %bb.x, !noalias !2399

bb.x:                                             ; preds = %bb.w
  %i.bd = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false), !noalias !2369
  br label %common.resume.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.v, %bb.w
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false), !noalias !2369
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  br label %.loopexit19

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.y, label %.loopexit19

._crit_edge:                                      ; preds = %bb.y, %bb.a, %.loopexit19
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit19 ], [ 38, %bb.a ], [ 38, %bb.y ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit19:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.y:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4e_B2u_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr12grouping_setINtNtB5c_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE18sql_rollup_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtB12_9into_iter8IntoIterBZ_EB53_EIB29_NtNtBa_7convert10InfallibleB3d_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9U_12try_for_each4callB2u_B4S_NcNtB4S_5Break0E0B4S_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.y, %i.k
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtBa_5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduQNCINvNtNtB1Y_8adapters3map12map_try_foldBX_INtNtB20_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB20_3ops12control_flow11ControlFlowIB5M_B42_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB6J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXB35_INtB35_12GenericShuntINtB33_3MapINtNtB35_7flatten7FlatMapIBJ_NtB1h_8MapEntryEBI_NCB6E_0EB6C_EIB3G_NtNtB20_7convert10InfallibleB4L_EEB1S_8try_folduNCINvNvB1S_12try_for_each4callB42_B6r_NcNtB6r_5Break0E0B6r_E0E0B5L_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 2 uses
  store ptr %2, ptr %i.b, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not8 = icmp eq ptr %.promoted, %i.d
  br i1 %.not8, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.f = phi ptr [ %i.h, %bb.c ], [ %.promoted, %bb.a ] ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !nonnull !7, !align !13, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  store ptr %i.h, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNtNtNtBb_4iter8adapters3map12map_try_foldINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEINtNtBb_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtB9_12control_flow11ControlFlowIB4P_B35_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literals_0NCINvXBV_INtBV_12GenericShuntINtBT_3MapINtNtBV_7flatten7FlatMapINtNtNtB1D_3vec9into_iter8IntoIterNtB29_8MapEntryEIB9p_B1y_ENCB5A_0EB5y_EIB2K_NtNtBb_7convert10InfallibleB3O_EENtNtNtBX_6traits8iterator8Iterator8try_folduNCINvNvBbb_12try_for_each4callB35_B5n_NcNtB5n_5Break0E0B5n_E0E0INtB7_5FnMutTuB1y_EE8call_mutCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(address) dereferenceable(112) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 %i.g)
  %i.i = load i64, ptr %i.a, align 16, !range !2403, !alias.scope !2404, !noalias !2407, !noundef !7 ; 2 uses
  %.not.i = icmp eq i64 %i.i, 38
  br i1 %.not.i, label %bb.c, label %bb.b

._crit_edge:                                      ; preds = %bb.c, %bb.a, %bb.b
  %storemerge = phi i64 [ %i.i, %bb.b ], [ 38, %bb.a ], [ 38, %bb.c ]
  store i64 %storemerge, ptr %0, align 16
  ret void

bb.b:                                             ; preds = %.lr.ph
  %.sroa.7.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.7.0..sroa_idx4, i64 104, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %._crit_edge

bb.c:                                             ; preds = %.lr.ph
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.h, %i.d
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtBa_5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2n_8adapters3map8map_foldBX_B1f_uNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB46_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss0_0NCINvNvB2h_8for_each4callB1f_NCINvMsj_B8_INtB8_3VecB1f_E14extend_trustedINtB3n_3MapBI_B3Z_EE0E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [400 x i8], align 8               ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.d, align 8        ; 2 uses
  %.not6 = icmp eq ptr %.promoted, %i.c
  br i1 %.not6, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val5.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load ptr, ptr %i.e, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted7 = load i64, ptr %i.g, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.b
  %i.h = phi i64 [ %.promoted7, %.lr.ph ], [ %i.m, %bb.b ] ; 2 uses
  %i.i = phi ptr [ %.promoted, %.lr.ph ], [ %i.k, %bb.b ] ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !7, !align !13, !noundef !7 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 3 uses
  store ptr %i.k, ptr %i.d, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.a, ptr noundef nonnull align 8 dereferenceable(400) %i.j, i64 400, i1 false), !noalias !2409
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull align 8 %i.j, i64 noundef 400, i64 noundef 8) #23, !noalias !2412
  %i.l = getelementptr inbounds nuw [400 x i8], ptr %i.f, i64 %i.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(400) %i.l, ptr noundef nonnull readonly align 8 dereferenceable(400) %i.a, i64 400, i1 false), !noalias !2415
  %i.m = add i64 %i.h, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  %.not = icmp eq ptr %i.k, %i.c
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %bb.b, %.._crit_edge_crit_edge
  %.val5 = phi i64 [ %.val5.pre, %.._crit_edge_crit_edge ], [ %i.m, %bb.b ]
  %.val4 = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  store i64 %.val5, ptr %.val4, align 8
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtB9_5boxed3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query20ReplaceSelectElementEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull readonly align 8 dereferenceable(32) %0)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core3pin3PinINtNtBa_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB12_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB12_6marker4SendEL_EEENtNtNtNtB12_4iter6traits8iterator8Iterator4folduNCINvNvXs_NtNtB5K_8adapters9enumerateINtB6A_9EnumeratepEB5E_4fold9enumerateBX_uNCINvNvB5E_8for_each4callTjBX_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(16) %1, i64 noundef %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 16               ; 6 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not3 = icmp eq ptr %.promoted, %i.d
  br i1 %.not3, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.g = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtNtBf_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBf_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBf_6marker4SendEL_EEuNCINvNvB1e_8for_each4callTjB21_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.sroa.2.04 = phi i64 [ %2, %.lr.ph ], [ %i.l, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtNtBf_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBf_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBf_6marker4SendEL_EEuNCINvNvB1e_8for_each4callTjB21_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 2 uses
  %i.h = phi ptr [ %.promoted, %.lr.ph ], [ %i.i, %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtNtBf_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBf_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBf_6marker4SendEL_EEuNCINvNvB1e_8for_each4callTjB21_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16 ; 3 uses
  store ptr %i.i, ptr %i.e, align 8
  %i.j = load <2 x ptr>, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2421
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2421
  store <2 x ptr> %i.j, ptr %i.a, align 16, !noalias !2421
  store i64 %.sroa.2.04, ptr %i.f, align 16, !noalias !2421
  store i8 0, ptr %i.g, align 16, !noalias !2421
  %i.k = invoke noundef nonnull ptr @_RINvMs0_NtCs4Y5ccqZjUYD_25datafusion_common_runtime8join_setINtB6_7JoinSetTjINtNtCsbvkFyIu7lgC_4core6result6ResultINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE5spawnNCNCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned000ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(72) %i.a)
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  store ptr %i.k, ptr %i.b, align 8, !noalias !2421
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2421
  invoke void @_RNvXs4_NtNtNtCskQDtHcQtBkN_5tokio7runtime4task5abortNtB5_11AbortHandleNtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4drop(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b)
          to label %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtNtBf_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBf_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBf_6marker4SendEL_EEuNCINvNvB1e_8for_each4callTjB21_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.c

_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtNtBf_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBf_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBf_6marker4SendEL_EEuNCINvNvB1e_8for_each4callTjB21_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %.noexc
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2421
  %i.l = add i64 %.sroa.2.04, 1
  %.not = icmp eq ptr %i.i, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters9enumerateINtB9_9EnumeratepENtNtNtBd_6traits8iterator8Iterator4fold9enumerateINtNtBf_3pin3PinINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtBf_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtBf_6marker4SendEL_EEuNCINvNvB1e_8for_each4callTjB21_ENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned00E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %bb.a
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_3pin3PinINtNtBN_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0)
  ret void

bb.c:                                             ; preds = %.noexc, %bb.b
  %i.m = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_3pin3PinINtNtBN_5boxed3BoxDNtNtCs4m0Tg8nAduX_20datafusion_execution6stream17RecordBatchStreamp4ItemINtNtB4_6result6ResultNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENtNtB4_6marker4SendEL_EEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(32) %0) #21
          to label %bb.e unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %bb.c
  resume { ptr, i32 } %i.m
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtCs8VI8w5SIoU4_15datafusion_expr4expr14GetFieldAccessEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldNtB1B_4ExprNCINvNtNtB2B_8adapters7flatten15try_flatten_oneBX_B3k_INtNtB12_6result6ResultB3k_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5U_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE33sql_compound_field_access_to_exprs_0E0B4n_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef align 16 captures(none) dead_on_return dereferenceable(112) %2, ptr noalias noundef readonly align 8 captures(none) dereferenceable(56) %3, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(56) %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.37.i.i.sroa.11 = alloca [64 x i8], align 16 ; 5 uses
  %.sroa.37.i.i.sroa.12 = alloca [48 x i8], align 16 ; 4 uses
  %i.h = alloca [176 x i8], align 16              ; 4 uses
  %i.i = alloca [176 x i8], align 16              ; 13 uses
  %i.j = alloca [176 x i8], align 16              ; 22 uses
  %i.k = alloca [64 x i8], align 16               ; 9 uses
  %.sroa.540 = alloca [64 x i8], align 16         ; 2 uses
  %.sroa.13.sroa.7 = alloca [64 x i8], align 8    ; 6 uses
  %i.l = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8        ; 2 uses
  %i.n = load ptr, ptr %i.l, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %.not99 = icmp eq ptr %.promoted, %i.n
  br i1 %.not99, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %.promoted97 = load i64, ptr %2, align 16
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
end_hunk_0
begin_hunk_1_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1M_8adapters3map12map_try_foldBX_INtNtB1O_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB3T_5error15DataFusionErrorEuINtNtNtB1O_3ops12control_flow11ControlFlowIB5c_B3P_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB6b_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB2S_INtB2S_12GenericShuntINtB2Q_3MapBI_B62_EIB3t_NtNtB1O_7convert10InfallibleB4E_EEB1G_8try_folduNCINvNvB1G_12try_for_each4callB3P_B5R_NcNtB5R_5Break0E0B5R_E0E0B5b_ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.sroa.419.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 8
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.419.0..sroa_idx.i.i, align 8, !noalias !2608
  %i.by = getelementptr inbounds nuw i8, ptr %i.l, i64 16
  store ptr %i.m, ptr %i.by, align 8, !noalias !2608
  %.sroa.423.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.423.0..sroa_idx.i.i, align 8, !noalias !2608
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.r, ptr noundef nonnull @1, ptr noundef nonnull %i.l)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit46.i.i unwind label %bb.ag, !noalias !2608

bb.ag:                                            ; preds = %bb.af
  %i.bz = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m) #21
          to label %.body47.i.i unwind label %bb.y, !noalias !2608

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit46.i.i: ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l), !noalias !2608
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.ah, !noalias !2608

bb.ah:                                            ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit46.i.i
  %i.ca = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %.body47.i.i unwind label %bb.ai, !noalias !2608

bb.ai:                                            ; preds = %bb.ah
  %i.cb = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2608
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit46.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.m)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.ac, !noalias !2608

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.m), !noalias !2608
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i unwind label %bb.aj, !noalias !2608

bb.aj:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q)
          to label %common.resume.i unwind label %bb.ak, !noalias !2608

bb.ak:                                            ; preds = %bb.aj
  %i.cd = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2608
  unreachable

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.q), !noalias !2608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.q), !noalias !2608
  %.sroa.9.16.copyload.i = load ptr, ptr %i.r, align 8, !noalias !2643
  %.sroa.11.16..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.r, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.16..sroa_idx.i, i64 16, i1 false), !noalias !2643
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, i64 16, i1 false), !noalias !2604
  br label %bb.am

bb.al:                                            ; preds = %bb.ae
  unreachable

.thread8.i.i:                                     ; preds = %.body.i.i, %bb.d
  %.pn3011.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i, %bb.d ], [ %eh.lpad-body.i.i, %.body.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.s) #21
          to label %common.resume.i unwind label %bb.y, !noalias !2608

_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.v
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.s), !noalias !2608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.s), !noalias !2608
  call void @llvm.lifetime.end.p0(ptr nonnull %i.r), !noalias !2604
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, i64 16, i1 false), !noalias !2604
  %i.ce = icmp eq i64 %.sroa.01.0.i, 4
  br i1 %i.ce, label %.loopexit41, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit

.loopexit41:                                      ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.cf = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.cf, align 8
  br label %bb.am

bb.am:                                            ; preds = %.loopexit41, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i
  %.val112 = phi ptr [ %.val.le126, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.val.le, %.loopexit41 ] ; 11 uses
  %.sroa.12.sroa.0.117.i = phi i64 [ undef, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.sroa.12.sroa.0.0.i, %.loopexit41 ] ; 2 uses
  %.sroa.6.116.i = phi i64 [ 5, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.sroa.6.0.i, %.loopexit41 ] ; 2 uses
  %.sroa.9.115.i = phi ptr [ %.sroa.9.16.copyload.i, %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread.i ], [ %.sroa.9.0.i, %.loopexit41 ] ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.val112) ]
  %i.cg = load i64, ptr %.val112, align 8, !range !2312, !alias.scope !2644, !noalias !2647, !noundef !7
  %i.ch = icmp eq i64 %i.cg, 20
  br i1 %i.ch, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %bb.an

bb.an:                                            ; preds = %bb.am
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val112)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread unwind label %bb.ao, !noalias !2647

bb.ao:                                            ; preds = %bb.an
  %i.ci = landingpad { ptr, i32 }
          cleanup
  store i64 %.sroa.6.116.i, ptr %.val112, align 8, !noalias !2651
  %.sroa.4.sroa.6.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val112, i64 8
  store ptr %.sroa.9.115.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx.i, align 8, !noalias !2651
  %.sroa.4.sroa.7.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val112, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..8.val.sroa_idx.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.i, i64 16, i1 false), !noalias !2651
  %.sroa.4.sroa.8.0..8.val.sroa_idx.i = getelementptr inbounds nuw i8, ptr %.val112, i64 32
  store i64 %.sroa.12.sroa.0.117.i, ptr %.sroa.4.sroa.8.0..8.val.sroa_idx.i, align 8, !noalias !2651
  br label %common.resume.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.am, %bb.an
  store i64 %.sroa.6.116.i, ptr %.val112, align 8, !noalias !2651
  %.sroa.4.sroa.6.0..8.val.sroa_idx5.i = getelementptr inbounds nuw i8, ptr %.val112, i64 8
  store ptr %.sroa.9.115.i, ptr %.sroa.4.sroa.6.0..8.val.sroa_idx5.i, align 8, !noalias !2651
  %.sroa.4.sroa.7.0..8.val.sroa_idx7.i = getelementptr inbounds nuw i8, ptr %.val112, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.0..8.val.sroa_idx7.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.sroa.7.i, i64 16, i1 false), !noalias !2651
  %.sroa.4.sroa.8.0..8.val.sroa_idx9.i = getelementptr inbounds nuw i8, ptr %.val112, i64 32
  store i64 %.sroa.12.sroa.0.117.i, ptr %.sroa.4.sroa.8.0..8.val.sroa_idx9.i, align 8, !noalias !2651
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.4.i)
  br label %.loopexit42

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.12.sroa.4.i, i64 56, i1 false), !noalias !2652
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.11.i, i64 16, i1 false), !noalias !2652
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.sroa.7.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.12.sroa.4.i)
  %.not.i = icmp eq i64 %.sroa.01.0.i, 5
  br i1 %.not.i, label %bb.aq, label %.loopexit42

._crit_edge:                                      ; preds = %bb.aq, %bb.a
  store i64 5, ptr %0, align 8, !alias.scope !2653
  br label %bb.ap

bb.ap:                                            ; preds = %._crit_edge, %.loopexit42
  ret void

.loopexit42:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread
  %.sroa.06.021 = phi i64 [ 4, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.01.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.6.120 = phi i64 [ %.sroa.6.0131, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.6.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.8.118 = phi ptr [ %.sroa.8.0130, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.9.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.10.116 = phi i64 [ %.sroa.10.0129, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread ], [ %.sroa.12.sroa.0.0.i, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.4.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.9, i64 16, i1 false)
  %.sroa.69.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.69.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(56) %.sroa.11, i64 56, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  store i64 %.sroa.06.021, ptr %0, align 8, !alias.scope !2656
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.6.120, ptr %.sroa.2.0..sroa_idx, align 8, !alias.scope !2656
  %.sroa.3.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.8.118, ptr %.sroa.3.0..sroa_idx, align 8, !alias.scope !2656
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 40
  store i64 %.sroa.10.116, ptr %.sroa.5.0..sroa_idx, align 8, !alias.scope !2656
  br label %bb.ap

bb.aq:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameINtNtBa_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB27_5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3q_B23_EENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql8relation4joinINtNtB4o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE10parse_join0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4f_EIB1I_NtNtBa_7convert10InfallibleB2S_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9f_12try_for_each4callB23_B44_NcNtB44_5Break0E0B44_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.9)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.11)
  %.not = icmp eq ptr %i.ak, %i.u
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1P_3ops12control_flow11ControlFlowIB5A_B3Q_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB6z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB2T_INtB2T_12GenericShuntINtB2R_3MapBI_B6q_EIB3u_NtNtB1P_7convert10InfallibleB4z_EEB1H_8try_folduNCINvNvB1H_12try_for_each4callB3Q_B6f_NcNtB6f_5Break0E0B6f_E0E0B5z_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [32 x i8], align 8                ; 7 uses
  %i.c = alloca [24 x i8], align 8                ; 10 uses
  %i.d = alloca [16 x i8], align 8                ; 5 uses
  %i.e = alloca [24 x i8], align 8                ; 4 uses
  %i.f = alloca [24 x i8], align 8                ; 8 uses
  %i.g = alloca [24 x i8], align 8                ; 4 uses
  %i.h = alloca [328 x i8], align 8               ; 4 uses
  %i.i = alloca [664 x i8], align 8               ; 12 uses
  %i.j = alloca [112 x i8], align 16              ; 9 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.m, align 8        ; 2 uses
  %.not43 = icmp eq ptr %.promoted, %i.l
  br i1 %.not43, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.n, align 8, !nonnull !7, !align !13, !noundef !7 ; 3 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.i, i64 8 ; 9 uses
  %.sroa.43.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  %.sroa.46.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %.sroa.57.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %.sroa.411.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.415.0..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %.sroa.2.0..sroa_idx.i.i.a = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 4 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %i.t = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.v = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 6 uses
  %i.w = getelementptr inbounds nuw i8, ptr %i.i, i64 336 ; 4 uses
  %.sroa.7.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.j, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.an
  %i.x = phi ptr [ %.promoted, %.lr.ph ], [ %i.y, %bb.an ] ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.i, ptr noundef nonnull align 8 dereferenceable(664) %i.x, i64 664, i1 false)
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 664 ; 3 uses
  store ptr %i.y, ptr %i.m, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j)
  call void @llvm.experimental.noalias.scope.decl(metadata !2664)
  call void @llvm.experimental.noalias.scope.decl(metadata !2667)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !2660
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !2660
  %i.z = load i64, ptr %i.i, align 8, !range !231, !alias.scope !2667, !noalias !2669, !noundef !7 ; 3 uses
  %i.aa = icmp ne i64 %i.z, 70
  call void @llvm.assume(i1 %i.aa)
  %i.ab = add nsw i64 %i.z, -69
  %i.ac = icmp samesign ugt i64 %i.z, 68
  %i.ad = select i1 %i.ac, i64 %i.ab, i64 1
  switch i64 %i.ad, label %bb.c [
    i64 0, label %bb.d
    i64 2, label %bb.e
    i64 1, label %bb.f
  ]

bb.c:                                             ; preds = %bb.i, %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.ae = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2667, !noalias !2669, !noundef !7
  %i.af = icmp samesign ult i64 %i.ae, 69
  br i1 %i.af, label %bb.g, label %bb.f

bb.e:                                             ; preds = %bb.b
  %i.ag = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2667, !noalias !2669, !noundef !7
  %i.ah = icmp samesign ult i64 %i.ag, 69
  br i1 %i.ah, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !2671
  store ptr %i.i, ptr %i.d, align 8, !noalias !2671
  store ptr @_RNvXshI_NtCs4lawaffTVVK_9sqlparser3astNtB6_11FunctionArgNtNtCsbvkFyIu7lgC_4core3fmt5Debug3fmt, ptr %.sroa.43.0..sroa_idx.i.i, align 8, !noalias !2671
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noundef nonnull @19, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.h, !noalias !2669

bb.g:                                             ; preds = %bb.e, %bb.d
  %i.ai = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.h, ptr noundef nonnull align 8 dereferenceable(328) %i.ai, i64 328, i1 false)
  %i.aj = load ptr, ptr %.val3, align 8, !alias.scope !2664, !noalias !2672, !nonnull !7, !align !13, !noundef !7
  %i.ak = load ptr, ptr %i.t, align 8, !alias.scope !2664, !noalias !2672, !nonnull !7, !align !13, !noundef !7
  %i.al = load ptr, ptr %i.u, align 8, !alias.scope !2664, !noalias !2672, !nonnull !7, !align !13, !noundef !7
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE24sql_expr_to_logical_exprCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.j, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.aj, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.h, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.ak, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.al)
          to label %bb.i unwind label %bb.h, !noalias !2660

.body30.i.i:                                      ; preds = %bb.p, %.body.i.i, %bb.h
  %.pn20.i.i = phi { ptr, i32 } [ %.pn.i.i, %.body.i.i ], [ %i.ar, %bb.h ], [ %i.bf, %bb.p ] ; 4 uses
  %i.am = load i64, ptr %i.i, align 8, !range !231, !alias.scope !2667, !noalias !2669, !noundef !7 ; 3 uses
  %i.an = icmp ne i64 %i.am, 70
  call void @llvm.assume(i1 %i.an)
  %i.ao = add nsw i64 %i.am, -69
  %i.ap = icmp samesign ugt i64 %i.am, 68
  %i.aq = select i1 %i.ap, i64 %i.ao, i64 1
  switch i64 %i.aq, label %bb.ag [
    i64 0, label %bb.ah
    i64 2, label %bb.ai
  ]

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i29.i.i, %bb.g, %bb.f
  %i.ar = landingpad { ptr, i32 }
          cleanup
  br label %.body30.i.i

bb.i:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit32.i.i, %bb.g
  %i.as = load i64, ptr %i.i, align 8, !range !231, !alias.scope !2667, !noalias !2669, !noundef !7 ; 3 uses
  %i.at = icmp ne i64 %i.as, 70
  call void @llvm.assume(i1 %i.at)
  %i.au = add nsw i64 %i.as, -69
  %i.av = icmp samesign ugt i64 %i.as, 68
  %i.aw = select i1 %i.av, i64 %i.au, i64 1
  switch i64 %i.aw, label %bb.c [
    i64 0, label %bb.r
    i64 2, label %bb.u
    i64 1, label %bb.v
  ]

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !2671
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.f, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !2671
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2671
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef 0, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %bb.j unwind label %.loopexit, !noalias !2669

.body.i.i:                                        ; preds = %.loopexit, %.loopexit.split-lp, %bb.n, %bb.m
  %.pn.i.i = phi { ptr, i32 } [ %i.bc, %bb.m ], [ %i.bd, %bb.n ], [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f) #21
          to label %.body30.i.i unwind label %bb.ab, !noalias !2669

.loopexit:                                        ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

.loopexit.split-lp:                               ; preds = %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %.body.i.i

bb.j:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.ax = load i64, ptr %i.a, align 8, !range !464, !noalias !2671, !noundef !7
  %i.ay = trunc nuw i64 %i.ax to i1
  %i.az = load i64, ptr %i.p, align 8, !range !3, !noalias !2671, !noundef !7 ; 2 uses
  br i1 %i.ay, label %bb.k, label %bb.l, !prof !2359

bb.k:                                             ; preds = %bb.j
  %i.ba = load i64, ptr %i.q, align 8, !noalias !2671
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.az, i64 %i.ba) #27
          to label %bb.af unwind label %.loopexit.split-lp, !noalias !2669

bb.l:                                             ; preds = %bb.j
  %i.bb = load ptr, ptr %i.q, align 8, !noalias !2671, !nonnull !7, !noundef !7
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2671
  store i64 %i.az, ptr %i.c, align 8, !noalias !2671
  store ptr %i.bb, ptr %.sroa.46.0..sroa_idx.i.i, align 8, !noalias !2671
  store i64 0, ptr %.sroa.57.0..sroa_idx.i.i, align 8, !noalias !2671
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !2671
  store ptr %i.f, ptr %i.b, align 8, !noalias !2671
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.411.0..sroa_idx.i.i, align 8, !noalias !2671
  store ptr %i.c, ptr %i.r, align 8, !noalias !2671
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.415.0..sroa_idx.i.i, align 8, !noalias !2671
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @1, ptr noundef nonnull %i.b)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i unwind label %bb.m, !noalias !2669

bb.m:                                             ; preds = %bb.l
  %i.bc = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #21
          to label %.body.i.i unwind label %bb.ab, !noalias !2669

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i: ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !2671
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.n, !noalias !2669

bb.n:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i
  %i.bd = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %.body.i.i unwind label %bb.o, !noalias !2669

bb.o:                                             ; preds = %bb.n
  %i.be = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2669
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECsdJxlLsGgtXr_16delta_benchmarks.exit27.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %.loopexit, !noalias !2669

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !2671
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i29.i.i unwind label %bb.p, !noalias !2669

bb.p:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.bf = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %.body30.i.i unwind label %bb.q, !noalias !2669

bb.q:                                             ; preds = %bb.p
  %i.bg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2669
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i29.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.f)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit32.i.i unwind label %bb.h, !noalias !2669

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit32.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECsdJxlLsGgtXr_16delta_benchmarks.exit.i29.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !2671
  store i64 7, ptr %.sroa.2.0..sroa_idx.i.i.a, align 8, !noalias !2660
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.s, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !2660
  store i64 37, ptr %i.j, align 16, !noalias !2660
  br label %bb.i

bb.r:                                             ; preds = %bb.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.s, !noalias !2669

bb.s:                                             ; preds = %bb.r
  %i.bh = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %.body33.i.i unwind label %bb.t, !noalias !2669

bb.t:                                             ; preds = %bb.s
  %i.bi = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2669
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.r
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i unwind label %bb.w, !noalias !2669

bb.u:                                             ; preds = %bb.i
  %i.bj = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2667, !noalias !2669, !noundef !7
  %cond39.i.i = icmp eq i64 %i.bj, 69
  br i1 %cond39.i.i, label %bb.ac, label %_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.v:                                             ; preds = %bb.i
  call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.i), !noalias !2669
  br label %_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.w:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.bk = landingpad { ptr, i32 }
          cleanup
  br label %.body33.i.i

.body33.i.i:                                      ; preds = %bb.w, %bb.s
  %eh.lpad-body34.i.i = phi { ptr, i32 } [ %i.bk, %bb.w ], [ %i.bh, %bb.s ] ; 2 uses
  %i.bl = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2667, !noalias !2669, !noundef !7
  %i.bm = icmp samesign ult i64 %i.bl, 69
  br i1 %i.bm, label %common.resume.i, label %bb.aa

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i
  %i.bn = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2667, !noalias !2669, !noundef !7
  %cond.i.i = icmp eq i64 %i.bn, 69
  br i1 %cond.i.i, label %bb.x, label %_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.x:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i unwind label %bb.y, !noalias !2669

bb.y:                                             ; preds = %bb.x
  %i.bo = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i unwind label %bb.z, !noalias !2669

bb.z:                                             ; preds = %bb.y
  %i.bp = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2669
  unreachable

common.resume.i:                                  ; preds = %bb.am, %.invoke.i.i, %bb.aj, %bb.ai, %bb.ag, %bb.ad, %bb.aa, %bb.y, %.body33.i.i
  %common.resume.op.i = phi { ptr, i32 } [ %i.cb, %bb.am ], [ %.pn20.i.i, %.invoke.i.i ], [ %i.bo, %bb.y ], [ %eh.lpad-body34.i.i, %.body33.i.i ], [ %eh.lpad-body34.i.i, %bb.aa ], [ %.pn20.i.i, %bb.ag ], [ %.pn20.i.i, %bb.aj ], [ %i.br, %bb.ad ], [ %.pn20.i.i, %bb.ai ]
  resume { ptr, i32 } %common.resume.op.i

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i: ; preds = %bb.x
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !2669
  br label %_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.aa:                                            ; preds = %.body33.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast15FunctionArgExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.o) #21
          to label %common.resume.i unwind label %bb.ab, !noalias !2669

bb.ab:                                            ; preds = %.invoke.i.i, %bb.ah, %bb.ag, %bb.aa, %bb.m, %.body.i.i
  %i.bq = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2669
  unreachable

bb.ac:                                            ; preds = %bb.u
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i36.i.i unwind label %bb.ad, !noalias !2669

bb.ad:                                            ; preds = %bb.ac
  %i.br = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v)
          to label %common.resume.i unwind label %bb.ae, !noalias !2669

bb.ae:                                            ; preds = %bb.ad
  %i.bs = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !2669
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i36.i.i: ; preds = %bb.ac
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast14ObjectNamePartENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.v), !noalias !2669
  br label %_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i

bb.af:                                            ; preds = %bb.k
  unreachable

bb.ag:                                            ; preds = %.body30.i.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(664) %i.i) #21
          to label %common.resume.i unwind label %bb.ab, !noalias !2669

bb.ah:                                            ; preds = %.body30.i.i
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.w) #21
          to label %bb.aj unwind label %bb.ab, !noalias !2669

bb.ai:                                            ; preds = %.body30.i.i
  %i.bt = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2667, !noalias !2669, !noundef !7
  %i.bu = icmp samesign ult i64 %i.bt, 69
  br i1 %i.bu, label %common.resume.i, label %.invoke.i.i

bb.aj:                                            ; preds = %bb.ah
  %i.bv = load i64, ptr %i.o, align 8, !range !11, !alias.scope !2667, !noalias !2669, !noundef !7
  %i.bw = icmp samesign ult i64 %i.bv, 69
  br i1 %i.bw, label %common.resume.i, label %.invoke.i.i

.invoke.i.i:                                      ; preds = %bb.aj, %bb.ai
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast15FunctionArgExprECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(328) %i.o) #21
          to label %common.resume.i unwind label %bb.ab, !noalias !2669

_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i36.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i, %bb.v, %bb.u
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !2660
  %.sroa.0.0.copyload.i = load i64, ptr %i.j, align 16, !noalias !2660 ; 3 uses
  %i.bx = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.bx, label %bb.ak, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit

bb.ak:                                            ; preds = %_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %i.by = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.by, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.bz = load i64, ptr %.val.le, align 8, !range !2312, !alias.scope !2673, !noalias !2676, !noundef !7
  %i.ca = icmp eq i64 %i.bz, 20
  br i1 %i.ca, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %bb.al

bb.al:                                            ; preds = %bb.ak
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread unwind label %bb.am, !noalias !2676

bb.am:                                            ; preds = %bb.al
  %i.cb = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false), !noalias !2660
  br label %common.resume.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.ak, %bb.al
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false), !noalias !2660
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  br label %.loopexit14

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.2.0..sroa_idx.i.i.a, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.7.0..sroa_idx.i, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.an, label %.loopexit14

._crit_edge:                                      ; preds = %bb.an, %bb.a, %.loopexit14
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit14 ], [ 38, %bb.a ], [ 38, %bb.an ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit14:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.an:                                            ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtCsjHlmExTLNuX_14datafusion_sql8relationINtNtB4M_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23create_default_relations0_0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9O_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.y, %i.l
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1P_3ops12control_flow11ControlFlowIB5A_B3Q_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB6B_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB2T_INtB2T_12GenericShuntINtB2R_3MapBI_B6q_EIB3u_NtNtB1P_7convert10InfallibleB4z_EEB1H_8try_folduNCINvNvB1H_12try_for_each4callB3Q_B6f_NcNtB6f_5Break0E0B6f_E0E0B5z_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [104 x i8], align 8       ; 3 uses
  %i.a = alloca [664 x i8], align 8               ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !7, !align !13, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2680
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(664) %i.k, i64 664, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 664 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %.val3, align 8, !alias.scope !2684, !noalias !2687, !nonnull !7, !align !13, !noundef !7
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !2684, !noalias !2687, !nonnull !7, !align !13, !noundef !7
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !2684, !noalias !2687, !nonnull !7, !align !13, !noundef !7
  call void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE26sql_fn_arg_to_logical_exprCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(664) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2680
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !2680 ; 3 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.r = load i64, ptr %.val.le, align 8, !range !2312, !alias.scope !2690, !noalias !2693, !noundef !7
  %i.s = icmp eq i64 %i.r, 20
  br i1 %i.s, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread unwind label %bb.e, !noalias !2693

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !2680
  resume { ptr, i32 } %i.t

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !2680
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(64) %i.j, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ 38, %bb.a ], [ 38, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(104) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(104) %.sroa.4.i.i, i64 104, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB3O_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB4O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21function_args_to_expr0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB4D_EIB1J_NtNtBa_7convert10InfallibleB2N_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvB9Q_12try_for_each4callB24_B4s_NcNtB4s_5Break0E0B4s_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1N_8adapters3map12map_try_foldBX_INtNtB1P_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB1P_6option6OptionNtNtB3V_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1P_3ops12control_flow11ControlFlowIB6w_B3Q_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB7x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB2T_INtB2T_12GenericShuntINtB2R_3MapBI_B7m_EIB3u_NtNtB1P_7convert10InfallibleB5v_EEB1H_8try_folduNCINvNvB1H_12try_for_each4callB3Q_B7b_NcNtB7b_5Break0E0B7b_E0E0B6v_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([144 x i8]) align 16 captures(none) dereferenceable(144) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %.sroa.4.i.i = alloca [136 x i8], align 8       ; 3 uses
  %i.a = alloca [664 x i8], align 8               ; 4 uses
  %i.b = alloca [144 x i8], align 16              ; 7 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %.promoted = load ptr, ptr %i.e, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.d
  br i1 %.not19, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16
  %.val3 = load ptr, ptr %i.f, align 8, !nonnull !7, !align !13, !noundef !7 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.val3, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %.val3, i64 16
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %.sroa.4.48..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %.sroa.4.i.i, i64 40
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.f
  %i.k = phi ptr [ %.promoted, %.lr.ph ], [ %i.l, %bb.f ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !2697
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(664) %i.a, ptr noundef nonnull align 8 dereferenceable(664) %i.k, i64 664, i1 false)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 664 ; 3 uses
  store ptr %i.l, ptr %i.e, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.m = load ptr, ptr %.val3, align 8, !alias.scope !2701, !noalias !2704, !nonnull !7, !align !13, !noundef !7
  %i.n = load ptr, ptr %i.h, align 8, !alias.scope !2701, !noalias !2704, !nonnull !7, !align !13, !noundef !7
  %i.o = load ptr, ptr %i.i, align 8, !alias.scope !2701, !noalias !2704, !nonnull !7, !align !13, !noundef !7
  call void @_RNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB8_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE36sql_fn_arg_to_logical_expr_with_nameCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([144 x i8]) align 16 captures(none) dereferenceable(144) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.m, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(664) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.n, ptr noalias noundef nonnull align 8 dereferenceable(80) %i.o), !noalias !2697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !2697
  %.sroa.0.0.copyload.i = load i64, ptr %i.b, align 16, !noalias !2697 ; 3 uses
  %i.p = icmp eq i64 %.sroa.0.0.copyload.i, 37
  br i1 %i.p, label %bb.c, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit

bb.c:                                             ; preds = %bb.b
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 8
  %.val.le = load ptr, ptr %i.q, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.r = load i64, ptr %.val.le, align 8, !range !2312, !alias.scope !2707, !noalias !2710, !noundef !7
  %i.s = icmp eq i64 %i.r, 20
  br i1 %i.s, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %.val.le)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread unwind label %bb.e, !noalias !2710

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !2697
  resume { ptr, i32 } %i.t

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread: ; preds = %bb.c, %bb.d
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.val.le, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false), !noalias !2697
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.4.i.i, ptr noundef nonnull align 8 dereferenceable(40) %i.g, i64 40, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.48..sroa_idx.i.i, ptr noundef nonnull align 16 dereferenceable(96) %i.j, i64 96, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  %.not.i = icmp eq i64 %.sroa.0.0.copyload.i, 38
  br i1 %.not.i, label %bb.f, label %.loopexit

._crit_edge:                                      ; preds = %bb.f, %bb.a, %.loopexit
  %storemerge = phi i64 [ %.sroa.0.0.copyload.i, %.loopexit ], [ 38, %bb.a ], [ 38, %bb.f ]
  store i64 %storemerge, ptr %0, align 16
  ret void

.loopexit:                                        ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.thread
  %.sroa.2.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(136) %.sroa.2.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(136) %.sroa.4.i.i, i64 136, i1 false)
  br label %._crit_edge

bb.f:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map12map_try_foldNtNtCs4lawaffTVVK_9sqlparser3ast11FunctionArgINtNtBa_6result6ResultTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtBa_6option6OptionNtNtB29_9arguments12ArgumentNameEENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtBa_3ops12control_flow11ControlFlowIB4J_B24_EENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB5J_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE32function_args_to_expr_with_names0NCINvXB6_INtB6_12GenericShuntINtB4_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterBZ_EB5y_EIB1J_NtNtBa_7convert10InfallibleB3I_EENtNtNtB8_6traits8iterator8Iterator8try_folduNCINvNvBaW_12try_for_each4callB24_B5n_NcNtB5n_5Break0E0B5n_E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.not = icmp eq ptr %i.l, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast18OperateFunctionArgENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB1U_8adapters3map12map_try_foldBX_INtNtB1W_6result6ResultNtNtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan3ddl18OperateFunctionArgNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEuINtNtNtB1W_3ops12control_flow11ControlFlowIB6b_B3X_EENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB78_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls9_0NCINvXB30_INtB30_12GenericShuntINtB2Y_3MapBI_B71_EIB3B_NtNtB1W_7convert10InfallibleB5a_EEB1O_8try_folduNCINvNvB1O_12try_for_each4callB3X_B6Q_NcNtB6Q_5Break0E0B6Q_E0E0B6a_ECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([208 x i8]) align 16 captures(none) dereferenceable(208) %0, ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) %1, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [112 x i8], align 16              ; 8 uses
  %i.c = alloca [64 x i8], align 8                ; 5 uses
  %.sroa.718.i = alloca [160 x i8], align 16      ; 6 uses
  %.sroa.222.i.sroa.5.i = alloca [24 x i8], align 8 ; 6 uses
  %.sroa.222.i.sroa.6.i = alloca [64 x i8], align 16 ; 6 uses
  %i.d = alloca [112 x i8], align 16              ; 9 uses
  %.sroa.617.i.sroa.8.i = alloca [24 x i8], align 8 ; 6 uses
  %i.e = alloca [328 x i8], align 8               ; 5 uses
  %i.f = alloca [40 x i8], align 8                ; 7 uses
  %i.g = alloca [8 x i8], align 8                 ; 11 uses
end_hunk_1
begin_hunk_2_@_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtB2E_12logical_plan7builderNtB3s_18LogicalPlanBuilder23scan_with_filters_innerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0NCINvNvBZ_8for_each4callB2A_NCINvMsj_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3k_EE0E0E0ECsdJxlLsGgtXr_16delta_benchmarks:bb.a
  %.val3 = load i64, ptr %i.am, align 8, !alias.scope !3500, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3522
  store i64 %.val3, ptr %i.a, align 8, !noalias !3522
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.an, align 8, !noalias !3522
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3522
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtB2E_12logical_plan7builderNtB3s_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvBZ_8for_each4callB2A_NCINvMsj_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3k_EE0E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [16 x i8], align 8                ; 5 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load ptr, ptr %i.d, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.promoted = load ptr, ptr %i.f, align 8        ; 2 uses
  %.not19 = icmp eq ptr %.promoted, %i.e
  br i1 %.not19, label %.._crit_edge_crit_edge, label %.lr.ph

.._crit_edge_crit_edge:                           ; preds = %bb.a
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.val9.pre = load i64, ptr %.phi.trans.insert, align 8
  br label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %.val.i = load ptr, ptr %i.g, align 8, !alias.scope !3525, !nonnull !7, !align !18, !noundef !7
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.promoted20 = load i64, ptr %i.k, align 8
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit
  %.val7 = phi i64 [ %.promoted20, %.lr.ph ], [ %i.aj, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 3 uses
  %i.l = phi ptr [ %.promoted, %.lr.ph ], [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ] ; 2 uses
  %i.m = load i64, ptr %i.l, align 8, !noundef !7 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %i.l, i64 8 ; 2 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3525)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  %i.o = invoke noundef nonnull align 8 ptr @_RNvMs0_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan4planNtB5_11LogicalPlan6schema(ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(320) %.val.i)
          to label %.noexc unwind label %.loopexit

.noexc:                                           ; preds = %bb.b
  %i.p = load ptr, ptr %i.o, align 8, !noalias !3528, !nonnull !7, !noundef !7 ; 3 uses
  call void @llvm.experimental.noalias.scope.decl(metadata !3531)
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 32
  %i.r = load i64, ptr %i.q, align 8, !alias.scope !3531, !noalias !3528, !noundef !7 ; 2 uses
  %i.s = icmp ult i64 %i.m, %i.r
  br i1 %i.s, label %bb.c, label %.invoke

bb.c:                                             ; preds = %.noexc
  %i.t = getelementptr inbounds nuw i8, ptr %i.p, i64 64
  %i.u = load ptr, ptr %i.t, align 8, !alias.scope !3531, !noalias !3528, !nonnull !7, !noundef !7 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load i64, ptr %i.v, align 8, !noalias !3534, !noundef !7 ; 2 uses
  %i.x = icmp ult i64 %i.m, %i.w
  br i1 %i.x, label %_RNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB7_18LogicalPlanBuilder23scan_with_filters_innerReE0CsdJxlLsGgtXr_16delta_benchmarks.exit.i, label %.invoke

.invoke:                                          ; preds = %bb.c, %.noexc
  %i.y = phi i64 [ %i.r, %.noexc ], [ %i.w, %bb.c ]
  %i.z = phi ptr [ @20, %.noexc ], [ @12, %bb.c ]
  invoke void @_RNvNtCsbvkFyIu7lgC_4core9panicking18panic_bounds_check(i64 noundef %i.m, i64 noundef %i.y, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.z) #28
          to label %.cont unwind label %.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB7_18LogicalPlanBuilder23scan_with_filters_innerReE0CsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.c
  %i.aa = getelementptr inbounds nuw i8, ptr %i.p, i64 24
  %i.ab = load ptr, ptr %i.aa, align 8, !alias.scope !3531, !noalias !3528, !nonnull !7, !noundef !7
  %i.ac = getelementptr inbounds nuw [56 x i8], ptr %i.ab, i64 %i.m ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8, !range !29, !noalias !3534, !noundef !7
  %.not.i.i.i = icmp eq i64 %i.ad, 3
  %..i.i.i = select i1 %.not.i.i.i, ptr null, ptr %i.ac
  %i.ae = getelementptr inbounds nuw i8, ptr %i.u, i64 16
  %i.af = load ptr, ptr %i.ae, align 8, !noalias !3534, !nonnull !7, !noundef !7
  %i.ag = getelementptr inbounds nuw i8, ptr %i.af, i64 16
  %i.ah = getelementptr inbounds nuw [8 x i8], ptr %i.ag, i64 %i.m
  invoke void @_RNvXs4_NtCsjhHCjzi9uUI_17datafusion_common6columnNtB5_6ColumnINtNtCsbvkFyIu7lgC_4core7convert4FromTINtNtB12_6option6OptionRNtNtB7_15table_reference14TableReferenceERINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEE4from(ptr noalias noundef nonnull sret([104 x i8]) align 8 captures(address) dereferenceable(104) %i.h, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable_or_null(56) %..i.i.i, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.ah)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %.loopexit

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB7_18LogicalPlanBuilder23scan_with_filters_innerReE0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  store i64 5, ptr %i.c, align 16, !noalias !3525
  %i.ai = getelementptr inbounds nuw [112 x i8], ptr %i.j, i64 %.val7
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.ai, ptr noundef nonnull readonly align 16 dereferenceable(112) %i.c, i64 112, i1 false), !noalias !3525
  %i.aj = add i64 %.val7, 1                       ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  %.not = icmp eq ptr %i.n, %i.e
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit, %.._crit_edge_crit_edge
  %.val9 = phi i64 [ %.val9.pre, %.._crit_edge_crit_edge ], [ %i.aj, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtBZ_12logical_plan7builderNtB1N_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBV_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB4e_3VecBV_E14extend_trustedINtB4_3MapINtNtB4e_9into_iter8IntoIterjEB1F_EE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit ]
  %.val8 = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  store i64 %.val9, ptr %.val8, align 8
  %.val4 = load ptr, ptr %0, align 8, !alias.scope !3500, !nonnull !7, !noundef !7
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val5 = load i64, ptr %i.ak, align 8, !alias.scope !3500, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !3535
  store i64 %.val5, ptr %i.b, align 8, !noalias !3535
  %i.al = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %.val4, ptr %i.al, align 8, !noalias !3535
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.b), !noalias !3535
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !3535
  ret void

.loopexit:                                        ; preds = %bb.b, %_RNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB7_18LogicalPlanBuilder23scan_with_filters_innerReE0CsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

.loopexit.split-lp:                               ; preds = %.invoke
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  br label %bb.d

bb.d:                                             ; preds = %.loopexit.split-lp, %.loopexit
  %lpad.phi = phi { ptr, i32 } [ %lpad.loopexit, %.loopexit ], [ %lpad.loopexit.split-lp, %.loopexit.split-lp ]
  %.val6 = load ptr, ptr %1, align 8, !nonnull !7, !align !13, !noundef !7
  store i64 %.val7, ptr %.val6, align 8
  %.val = load ptr, ptr %0, align 8, !alias.scope !3500, !nonnull !7, !noundef !7
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val3 = load i64, ptr %i.am, align 8, !alias.scope !3500, !noundef !7
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !3538
  store i64 %.val3, ptr %i.a, align 8, !noalias !3538
  %i.an = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %.val, ptr %i.an, align 8, !noalias !3538
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecjENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.ao = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.f:                                             ; preds = %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !3538
  resume { ptr, i32 } %lpad.phi
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvYINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtBW_9arguments12ArgumentNameEEENtNtNtNtB1G_4iter6traits8iterator8Iterator5unzipBS_B1B_INtB8_3VecBS_EIB3F_B1B_EECsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([48 x i8]) align 8 captures(none) dereferenceable(48) %0, ptr noalias nofree noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  store i64 0, ptr %i.b, align 8, !alias.scope !3541
  %.sroa.4.0..sroa_idx2.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr inttoptr (i64 16 to ptr), ptr %.sroa.4.0..sroa_idx2.i, align 8, !alias.scope !3541
  %.sroa.5.0..sroa_idx3.i = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %.sroa.2.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx3.i, i8 0, i64 16, i1 false), !alias.scope !3541
  store ptr inttoptr (i64 8 to ptr), ptr %.sroa.2.0..sroa_idx.i, align 8, !alias.scope !3541
  %.sroa.3.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  store i64 0, ptr %.sroa.3.0..sroa_idx.i, align 8, !alias.scope !3541
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  invoke void @_RNvXs_NvNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect14default_extendTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIB17_INtNtBc_6option6OptionNtNtB1H_9arguments12ArgumentNameEEEINtB4_10SpecExtendINtNtB19_9into_iter8IntoIterTB1D_B2s_EEE6extendCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeTINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEIBI_INtNtB4_6option6OptionNtNtB1i_9arguments12ArgumentNameEEEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(48) %i.b) #21
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECsdJxlLsGgtXr_16delta_benchmarks.exit unwind label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(48) %i.b, i64 48, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void

bb.d:                                             ; preds = %bb.b
  %i.d = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB4_6option6OptionNtNtB1z_9arguments12ArgumentNameEEEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %i.c
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc void @_RNCNvMNtCsjHlmExTLNuX_14datafusion_sql5queryINtNtB6_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE23pipe_operator_aggregate0CsdJxlLsGgtXr_16delta_benchmarks(ptr dead_on_unwind noalias noundef nonnull writable align 16 captures(none) dereferenceable(112) %0, ptr nofree nonnull readonly captures(address, read_provenance) %.0.val, ptr nofree readonly captures(none) %.8.val, ptr noalias nofree noundef nonnull readonly align 8 captures(none) dead_on_return dereferenceable(400) %1, ptr noalias noundef nonnull align 8 dereferenceable(80) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 2 uses
  %i.b = alloca [328 x i8], align 8               ; 2 uses
  %.sroa.6 = alloca [40 x i8], align 8            ; 3 uses
  %i.c = alloca [112 x i8], align 16              ; 5 uses
  %3 = alloca [112 x i8], align 16                ; 7 uses
  %i.d = alloca [64 x i8], align 8                ; 10 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %1, i64 328, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 328 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(64) %i.d, ptr noundef nonnull align 8 dereferenceable(64) %i.e, i64 64, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.8.val) ]
  %i.f = load ptr, ptr %.8.val, align 8, !nonnull !7, !noundef !7
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  invoke void @_RNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB4_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE11sql_to_exprCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %3, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %.0.val, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(328) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(80) %2)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.i = load i64, ptr %i.d, align 8, !range !3, !noundef !7
  %.not3 = icmp eq i64 %i.i, -9223372036854775808
  br i1 %.not3, label %common.resume, label %bb.k

bb.c:                                             ; preds = %bb.a
  %i.j = load i64, ptr %3, align 16, !range !2505, !noundef !7 ; 2 uses
  %i.k = icmp eq i64 %i.j, 37
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, ptr noundef nonnull align 8 dereferenceable(40) %i.l, i64 40, i1 false)
  br i1 %i.k, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.m, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  store i64 37, ptr %0, align 16
  %i.n = load i64, ptr %i.d, align 8, !range !3, !alias.scope !3544, !noundef !7
  %i.o = icmp eq i64 %i.n, -9223372036854775808
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
          to label %common.resume unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.k, %bb.f
  %common.resume.op = phi { ptr, i32 } [ %i.p, %bb.f ], [ %i.h, %bb.b ], [ %i.h, %bb.k ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.e
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.h:                                             ; preds = %bb.c
  %.sroa.67.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.sroa.8.0..sroa_idx4 = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %.sroa.8.0..sroa_idx4, ptr noundef nonnull align 16 dereferenceable(64) %.sroa.67.0..sroa_idx, i64 64, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  store i64 %i.j, ptr %i.c, align 16
  %.sroa.6.0..sroa_idx3 = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6.0..sroa_idx3, ptr noundef nonnull align 8 dereferenceable(40) %.sroa.6, i64 40, i1 false)
  %i.r = load i64, ptr %i.d, align 8, !range !3, !noundef !7
  %.not = icmp eq i64 %i.r, -9223372036854775808
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false)
  call void @_RNvMsC_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4Expr16alias_if_changed(ptr noalias noundef nonnull sret([112 x i8]) align 16 captures(none) dereferenceable(112) %0, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit

bb.j:                                             ; preds = %bb.h
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %0, ptr noundef nonnull align 16 dereferenceable(112) %i.c, i64 112, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtCs4lawaffTVVK_9sqlparser3ast5IdentEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %bb.j, %bb.i, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret void

bb.k:                                             ; preds = %bb.b
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast5IdentECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(64) %i.d) #21
          to label %common.resume unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEE32forget_allocation_drop_remainingCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24                  ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtB7_3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.c
  %i.k = icmp eq i64 %i.m, %i.g
  br i1 %i.k, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.0.0.i14 = phi i64 [ %i.m, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.l = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.0.i14 ; 3 uses
  %i.m = add nuw nsw i64 %.sroa.0.0.i14, 1        ; 4 uses
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %bb.c unwind label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %.body.i unwind label %bb.d

bb.c:                                             ; preds = %.lr.ph
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.l)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.f

bb.d:                                             ; preds = %bb.b
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.e:                                             ; preds = %.lr.ph16
  %i.p = add i64 %.sroa.0.1.i15, 1                ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph16

bb.f:                                             ; preds = %bb.c
  %i.r = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.body.i:                                          ; preds = %bb.f, %bb.b
  %eh.lpad-body.i = phi { ptr, i32 } [ %i.r, %bb.f ], [ %i.n, %bb.b ]
  %i.s = icmp eq i64 %i.m, %i.g
  br i1 %i.s, label %._crit_edge, label %.lr.ph16

.lr.ph16:                                         ; preds = %.body.i, %bb.e
  %.sroa.0.1.i15 = phi i64 [ %i.p, %bb.e ], [ %i.m, %.body.i ] ; 2 uses
  %i.t = getelementptr inbounds nuw [24 x i8], ptr %.val, i64 %.sroa.0.1.i15
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.t) #21
          to label %bb.e unwind label %bb.g

._crit_edge:                                      ; preds = %bb.e, %.body.i
  resume { ptr, i32 } %eh.lpad-body.i

bb.g:                                             ; preds = %.lr.ph16
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1C_5error15DataFusionErrorEE32forget_allocation_drop_remainingCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %.val = load ptr, ptr %i.b, align 8, !nonnull !7, !noundef !7 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %.val1 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.d = ptrtoint ptr %.val1 to i64
  %i.e = ptrtoint ptr %.val to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 104                 ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 0, ptr %i.h, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 0, ptr %i.a, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.i, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %0, align 8
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1s_5error15DataFusionErrorEENtNtNtBR_3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 8 to ptr), ptr %i.b, align 8
  store ptr inttoptr (i64 8 to ptr), ptr %i.c, align 8
  %i.j = icmp eq ptr %.val1, %.val
  br i1 %i.j, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB17_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB16_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit.i
  %.sroa.0.08.i = phi i64 [ %i.l, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB16_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit.i ], [ 0, %bb.a ] ; 2 uses
  %i.k = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %.sroa.0.08.i ; 3 uses
  %i.l = add nuw i64 %.sroa.0.08.i, 1             ; 4 uses
  %i.m = load i64, ptr %i.k, align 8, !range !96, !alias.scope !3547, !noundef !7
  %.not.i.i = icmp eq i64 %i.m, 4
  br i1 %.not.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %.lr.ph.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(104) %i.k)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB16_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.e

bb.c:                                             ; preds = %.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(40) %i.n)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB16_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit.i unwind label %bb.e

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB16_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit.i: ; preds = %bb.c, %bb.b
  %i.o = icmp eq i64 %i.l, %i.g
  br i1 %i.o, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB17_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit, label %.lr.ph.i

bb.d:                                             ; preds = %.lr.ph
  %i.p = add i64 %.sroa.0.1.i6, 1                 ; 2 uses
  %i.q = icmp eq i64 %i.p, %i.g
  br i1 %i.q, label %._crit_edge, label %.lr.ph

bb.e:                                             ; preds = %bb.c, %bb.b
  %i.r = landingpad { ptr, i32 }
          cleanup
  %i.s = icmp eq i64 %i.l, %i.g
  br i1 %i.s, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.e, %bb.d
  %.sroa.0.1.i6 = phi i64 [ %i.p, %bb.d ], [ %i.l, %bb.e ] ; 2 uses
  %i.t = getelementptr inbounds nuw [104 x i8], ptr %.val, i64 %.sroa.0.1.i6
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB16_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(104) %i.t) #21
          to label %bb.d unwind label %bb.f

._crit_edge:                                      ; preds = %bb.d, %bb.e
  resume { ptr, i32 } %i.r

bb.f:                                             ; preds = %.lr.ph
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeSINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB17_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB16_5error15DataFusionErrorEECsdJxlLsGgtXr_16delta_benchmarks.exit.i, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: read) uwtable
define hidden { ptr, i64 } @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchE8as_sliceCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef readonly align 8 captures(none) dereferenceable(32) %0) unnamed_addr #3 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !nonnull !7, !noundef !7 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val3 = load ptr, ptr %i.c, align 8, !nonnull !7, !noundef !7
  %i.d = ptrtoint ptr %.val3 to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 40
  %i.h = insertvalue { ptr, i64 } poison, ptr %i.b, 0
  %i.i = insertvalue { ptr, i64 } %i.h, i64 %i.g, 1
  ret { ptr, i64 } %i.i
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias nofree noundef align 8 captures(none) dereferenceable(32) initializes((0, 8), (16, 24)) %0) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
end_hunk_2
