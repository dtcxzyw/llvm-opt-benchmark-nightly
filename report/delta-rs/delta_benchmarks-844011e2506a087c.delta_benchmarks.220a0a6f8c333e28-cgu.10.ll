Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/delta_benchmarks-844011e2506a087c.delta_benchmarks.220a0a6f8c333e28-cgu.10?download=true
inline.NumInlined: 5210
inline.NumDeleted: 2104
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
begin_hunk_0_@_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENtB2K_5IdentECs2VbMhdeEr66_16delta_benchmarks:bb.a
  store i64 %i.w, ptr %0, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.x, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.r, ptr %i.y, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.z = and i64 %i.i, -64                        ; 3 uses
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8) #36
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.ab = call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.f, i64 noundef %i.i, i64 noundef 8, i64 noundef range(i64 0, -15) %i.z) #36 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.j, label %.thread, !prof !80

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.z) #37
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl13ViewColumnDefENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3l_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls0_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEINtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !14 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4401)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4402)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4401
  store ptr %i.h, ptr %i.b, align 8, !noalias !4403
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4403
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4403, !nonnull !14, !align !29, !noundef !14
  invoke void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2K_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropINtNtB14_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5S_8try_foldB6z_NCINvNtB12_16in_place_collect24write_in_place_with_dropB7a_E0IB8J_B6z_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbL_B6z_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.k, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3l_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !4403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4403
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4401
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = lshr exact i64 %i.p, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.s, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeINtNtBN_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.u = mul nuw i64 %i.e, 7
  store i64 %i.u, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.x = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast9data_type8DataTypeENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3l_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_impls1_0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB4_9into_iter8IntoIterINtNtB1d_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2Q_5error15DataFusionErrorEEIB2q_NtNtB1d_7convert10InfallibleB3B_EEB2M_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = load i64, ptr %i.d, align 8, !noundef !14 ; 2 uses
  %i.f = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 5 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !noundef !14
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4408)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !4409)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !4408
  store ptr %i.h, ptr %i.b, align 8, !noalias !4410
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4410
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !4410, !nonnull !14, !align !29, !noundef !14
  invoke void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1D_5error15DataFusionErrorEENtNtNtNtB12_4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropB1z_ENCINvXNtB31_8adaptersINtB4v_12GenericShuntBI_IBY_NtNtB12_7convert10InfallibleB2o_EEB2V_8try_foldB3K_NCINvNtB8_16in_place_collect24write_in_place_with_dropB1z_E0IBY_B3K_zEE0INtNtNtB12_3ops12control_flow11ControlFlowB6Z_B3K_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.f, ptr noundef nonnull %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(40) %i.j)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.t, %bb.e ], [ %i.k, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1C_5error15DataFusionErrorEENtNtNtB11_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2w_5error15DataFusionErrorEEIB27_NtNtB4_7convert10InfallibleB3h_EEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.m = load ptr, ptr %i.l, align 8, !noalias !4410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4410
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !4408
  %i.n = ptrtoint ptr %i.m to i64
  %i.o = ptrtoint ptr %i.f to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.f, ptr %i.c, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store i64 %i.q, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store i64 %i.e, ptr %i.s, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1C_5error15DataFusionErrorEE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2g_5error15DataFusionErrorEB2c_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.c) #38
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.e, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.f, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.q, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1C_5error15DataFusionErrorEENtNtNtB11_3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.w = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2w_5error15DataFusionErrorEEIB27_NtNtB4_7convert10InfallibleB3h_EEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3F_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0ENtNtB2D_4expr4ExprECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = mul i64 %i.c, 416                        ; 7 uses
  %i.h = udiv i64 %i.g, 112                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = invoke { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB11_4expr4ExprENCINvNtNtB22_8adapters10filter_map19filter_map_try_foldBX_B3A_B30_INtNtB24_6result6ResultB30_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3A_E0E0B4X_ECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias noundef nonnull %i.i, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.k, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.d to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 112                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.r, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1U_4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.t = mul nuw i64 %i.h, 112                    ; 4 uses
  %i.u = icmp ne i64 %i.g, %i.t
  %or.cond = select i1 %.not.i, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %i.z, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 16 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.g, 112
  br i1 %i.x, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 16) #36
  br label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.y = icmp ule i64 %i.t, %i.g
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 16, i64 noundef range(i64 0, -15) %i.t) #36 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.t) #37
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3m_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE21plan_wildcard_optionss_0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0ENtNtB6_6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB6W_E0INtNtBc_6result6ResultB6l_zEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtBN_6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #36 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !80

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #37
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs2_0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB37_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0ENtNtB6_6string6StringECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB6V_E0INtNtBc_6result6ResultB6k_zEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtBN_6string6StringEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #36 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !80

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #37
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE31sql_compound_identifier_to_exprs_0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB3i_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implsi_0ENtNtB2p_5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = mul i64 %i.c, 1384                       ; 7 uses
  %i.h = udiv i64 %i.g, 1320                      ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2I_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implsi_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB1P_5query11OrderByExprENCINvNtB12_16in_place_collect24write_in_place_with_dropB78_E0INtNtBc_6result6ResultB6x_zEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2Z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implsi_0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 1320                ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtNtB1U_5query11OrderByExprEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 1320                   ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtNtB15_5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread

_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtNtB15_5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 1320
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtNtB15_5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #36
  br label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtNtB15_5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #36 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnNtNtB15_5query11OrderByExprECs2VbMhdeEr66_16delta_benchmarks.exit.thread, !prof !13

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #37
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast3ddl11IndexColumnENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB2Z_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE39sql_statement_to_plan_with_context_implsi_0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB3t_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0ENtB2p_5IdentECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = mul i64 %i.c, 120                        ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2T_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1P_5IdentENCINvNtB12_16in_place_collect24write_in_place_with_dropB6K_E0INtNtBc_6result6ResultB69_zEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB3a_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.l

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = lshr exact i64 %i.m, 6                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefNtB1U_5IdentEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %i.r = and i64 %i.g, 56
  %.not = icmp eq i64 %i.r, 0
  br i1 %.not, label %.thread, label %bb.g

.thread:                                          ; preds = %bb.h, %bb.i, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.i ], [ inttoptr (i64 8 to ptr), %bb.h ]
  %i.s = lshr i64 %i.g, 6
  store i64 %i.s, ptr %0, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.u, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -64                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #36
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.v) #36 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !80

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #37
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB3a_8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE17apply_table_alias0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTdNtNtB6_6string6StringEENCINvNtNtNtCs4s1dLWtJWRF_12clap_builder6parser8features11suggestions12did_you_meanRB2n_INtNtNtB1f_5slice4iter4IterB2n_EEs0_0EB2n_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = shl i64 %i.c, 5                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTdNtNtB14_6string6StringEENCINvNtNtNtCs4s1dLWtJWRF_12clap_builder6parser8features11suggestions12did_you_meanRB1N_INtNtNtBc_5slice4iter4IterB1N_EEs0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB4S_zEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTdNtNtB1l_6string6StringEENCINvNtNtNtCs4s1dLWtJWRF_12clap_builder6parser8features11suggestions12did_you_meanRB24_INtNtNtB4_5slice4iter4IterB24_EEs0_0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTdNtNtBN_6string6StringEB1S_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTdNtNtB9_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #36 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !80

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #37
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTdNtNtB1l_6string6StringEENCINvNtNtNtCs4s1dLWtJWRF_12clap_builder6parser8features11suggestions12did_you_meanRB24_INtNtNtB4_5slice4iter4IterB24_EEs0_0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0EB2n_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !14 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !14, !noundef !14 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !14
  %i.g = shl i64 %i.c, 5                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTjINtB12_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB57_zEECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTjINtB1j_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0EECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.j

bb.c:                                             ; preds = %bb.a
  %i.j = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.k = extractvalue { ptr, ptr } %i.i, 1
  %i.l = ptrtoint ptr %i.k to i64
  %i.m = ptrtoint ptr %i.d to i64
  %i.n = sub nuw i64 %i.l, %i.m
  %i.o = udiv exact i64 %i.n, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.o, ptr %i.p, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.q, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEE32forget_allocation_drop_remainingCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjINtBL_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEB1S_EECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.a) #38
          to label %bb.b unwind label %bb.j

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %.sroa.0.0.i = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %.sroa.0.0.i, label %2, label %.thread

.thread:                                          ; preds = %2, %bb.g, %bb.f
  %.sroa.03.0 = phi ptr [ %i.d, %bb.f ], [ %i.x, %bb.g ], [ inttoptr (i64 8 to ptr), %2 ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #36 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !80

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #37
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTjINtB1j_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0EECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapIBR_INtNtB2_3zip3ZipINtNtNtB6_5slice4iter4IterINtNtB6_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB1r_INtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB2g_8dfschemaNtB4P_8DFSchema4iter0ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB5x_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtB2g_5error15DataFusionErrorENCINvXso_B91_IB8Z_INtNtB3w_3vec3VecB8f_EB9L_EINtNtNtB4_6traits7collect12FromIteratorIB8Z_B8f_B9L_EE9from_iterBQ_E0Baz_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(88) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [96 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4423
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(88) %i.a, ptr noundef nonnull align 8 dereferenceable(88) %1, i64 88, i1 false), !alias.scope !4424, !noalias !4425
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 88
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4424, !noalias !4425
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB24_3map3MapIB2U_INtNtB24_3zip3ZipINtNtNtB28_5slice4iter4IterINtNtB28_6option6OptionNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceEEIB3x_INtNtB6_4sync3ArcNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldEEENCNvMNtB4o_8dfschemaNtB6G_8DFSchema4iter0ENCNvMNtCsjHlmExTLNuX_14datafusion_sql9statementINtNtB7o_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE14update_to_plans_0EINtNtB28_6result6ResultNtNtB28_7convert10InfallibleNtNtB4o_5error15DataFusionErrorEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(96) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !27, !noundef !14
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4423
  %i.f = load i64, ptr %i.c, align 8, !range !27, !noundef !14
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4426, !noalias !4427
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB33_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0ENCB2U_s2_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B6T_IB6R_INtB1x_3VecB67_EB7D_EINtNtNtB4_6traits7collect12FromIteratorIB6R_B67_B7D_EE9from_iterBQ_E0B8U_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 8                ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4440
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.a, ptr noundef nonnull align 8 dereferenceable(56) %1, i64 56, i1 false), !alias.scope !4441, !noalias !4442
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4441, !noalias !4442
  invoke void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collectINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtB6_14spec_from_iter12SpecFromIterBY_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB2q_3map3MapINtNtB2q_6filter6FilterINtNtB6_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENCNvMs_NtNtCsjHlmExTLNuX_14datafusion_sql4expr8functionINtNtB57_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20sql_function_to_exprs1_0ENCB4Y_s2_0EINtNtB2u_6result6ResultNtNtB2u_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(64) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !27, !noundef !14
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4440
  %i.f = load i64, ptr %i.c, align 8, !range !27, !noundef !14
  %.not.not = icmp eq i64 %i.f, 20
  br i1 %.not.not, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.g, ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 24, i1 false)
  store i64 20, ptr %0, align 8, !alias.scope !4443, !noalias !4444
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.f, %bb.c
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  ret void

bb.d:                                             ; preds = %bb.b
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %i.c, i64 40, i1 false)
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.b)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECs2VbMhdeEr66_16delta_benchmarks.exit

bb.g:                                             ; preds = %bb.e
  %i.i = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

bb.h:                                             ; preds = %bb.i
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #39
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit: ; preds = %bb.e, %bb.i, %.body
  %.pn9 = phi { ptr, i32 } [ %i.d, %.body ], [ %i.d, %bb.i ], [ %i.h, %bb.e ]
  resume { ptr, i32 } %.pn9

bb.i:                                             ; preds = %.body
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorECs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.c)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit unwind label %bb.h
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCsbvkFyIu7lgC_4core4iter8adapters11try_processINtNtB2_3map3MapINtNtB2_7flatten7FlatMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB1v_INtNtB1B_5boxed3BoxNtB2k_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB3G_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0ENCB3B_s_0ENtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprINtNtB6_6result6ResultNtNtB6_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorENCINvXso_B7j_IB7h_INtB1z_3VecB6x_EB83_EINtNtNtB4_6traits7collect12FromIteratorIB7h_B6x_B83_EE9from_iterBQ_E0B9k_ECs2VbMhdeEr66_16delta_benchmarks(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(120) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [128 x i8], align 8               ; 5 uses
  %i.b = alloca [24 x i8], align 8                ; 7 uses
  %i.c = alloca [40 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store i64 20, ptr %i.c, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !4457
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef nonnull align 8 dereferenceable(120) %1, i64 120, i1 false), !alias.scope !4458, !noalias !4459
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store ptr %i.c, ptr %.sroa.4.0..sroa_idx, align 8, !alias.scope !4458, !noalias !4459
  invoke void @_RNvXNtNtCs6Po7BT7Nknu_5alloc3vec14spec_from_iterINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB2_12SpecFromIterBU_INtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB24_3map3MapINtNtB24_7flatten7FlatMapINtNtB4_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast8MapEntryEIB3A_INtNtB6_5boxed3BoxNtB42_4ExprEENCNvMNtCsjHlmExTLNuX_14datafusion_sql4exprINtNtB5n_7planner8SqlToRelNtNtNtCs8Hz2sPNgbCO_10datafusion9execution13session_state22SessionContextProviderE20try_plan_map_literal0ENCB5i_s_0EINtNtB28_6result6ResultNtNtB28_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEE9from_iterCs2VbMhdeEr66_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(128) %i.a)
          to label %bb.b unwind label %.body

.body:                                            ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.e = load i64, ptr %i.c, align 8, !range !27, !noundef !14
  %.not = icmp eq i64 %i.e, 20
  br i1 %.not, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs2VbMhdeEr66_16delta_benchmarks.exit, label %bb.i

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !4457
end_hunk_0
