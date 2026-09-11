Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/delta-rs/original/deltalake_core-1fa7f9344ca2d0c9.deltalake_core.c7669c1bd09fee8-cgu.15?download=true
inline.NumInlined: 12000
inline.NumDeleted: 3498
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 10
begin_hunk_0_@_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterTINtNtB6_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2H_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB4_3VecB2G_EINtB3Y_17TreeNodeContainerB2Z_E12map_elementsQNCNCNCINvYB2Z_NtB3Y_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier13CanonicalizerE000E0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtB40_5error15DataFusionErrorEEB2G_ECs14kWLkQVSKO_14deltalake_core:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterTINtNtB6_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2H_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB4_3VecB2G_EINtB3Y_17TreeNodeContainerB2Z_E12map_elementsQNCNCNCINvYB2Z_NtB3Y_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtB40_5error15DataFusionErrorEEB2G_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB23_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB1j_3VecB22_EINtB3l_17TreeNodeContainerB2m_E12map_elementsQNCNCNCINvYB2m_NtB3l_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB3n_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB22_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB22_E0IB7m_B9m_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1F_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2n_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB1D_3VecB2m_EINtB3F_17TreeNodeContainerB2G_E12map_elementsQNCNCNCINvYB2G_NtB3F_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB3H_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1R_EB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1F_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2n_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB1D_3VecB2m_EINtB3F_17TreeNodeContainerB2G_E12map_elementsQNCNCNCINvYB2G_NtB3F_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB3H_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB19_3map3MapINtNtB4_9into_iter8IntoIterTINtNtB6_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2H_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB4_3VecB2G_EINtB3Y_17TreeNodeContainerB2Z_E12map_elementsQNCNCNCINvYB2Z_NtB3Y_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0EINtNtB1d_6result6ResultNtNtB1d_7convert10InfallibleNtNtB40_5error15DataFusionErrorEEB2G_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(64) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtB3_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB23_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB1j_3VecB22_EINtB3l_17TreeNodeContainerB2m_E12map_elementsQNCNCNCINvYB2m_NtB3l_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0EINtNtB7_6result6ResultNtNtB7_7convert10InfallibleNtNtB3n_5error15DataFusionErrorEENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB1j_13in_place_drop11InPlaceDropB22_ENCINvNtB1j_16in_place_collect24write_in_place_with_dropB22_E0IB7x_B9x_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1F_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2n_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB1D_3VecB2m_EINtB3F_17TreeNodeContainerB2G_E12map_elementsQNCNCNCINvYB2G_NtB3F_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB3H_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1R_EB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(64) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtBJ_3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1F_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2n_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB1D_3VecB2m_EINtB3F_17TreeNodeContainerB2G_E12map_elementsQNCNCNCINvYB2G_NtB3F_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0EINtNtB4_6result6ResultNtNtB4_7convert10InfallibleNtNtB3H_5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtCsbvkFyIu7lgC_4core4iter8adapters12GenericShuntINtNtB4_9into_iter8IntoIterINtNtB1d_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2Q_5error15DataFusionErrorEEIB2q_NtNtB1d_7convert10InfallibleB3B_EEB2M_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXNtNtCsbvkFyIu7lgC_4core4iter8adaptersINtB3_12GenericShuntINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB7_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2c_5error15DataFusionErrorEEIB1N_NtNtB7_7convert10InfallibleB2X_EENtNtNtB5_6traits8iterator8Iterator8try_foldINtNtB13_13in_place_drop11InPlaceDropB28_ENCINvNtB13_16in_place_collect24write_in_place_with_dropB28_E0IB1N_B4N_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1C_5error15DataFusionErrorEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2w_5error15DataFusionErrorEEIB27_NtNtB4_7convert10InfallibleB3h_EEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 104                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1C_5error15DataFusionErrorEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2g_5error15DataFusionErrorEB2c_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtCsbvkFyIu7lgC_4core6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB1C_5error15DataFusionErrorEENtNtNtB11_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtB4_4iter8adapters12GenericShuntINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtB4_6result6ResultNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnNtNtB2w_5error15DataFusionErrorEEIB27_NtNtB4_7convert10InfallibleB3h_EEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtB4_9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3F_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_optionss_0ENtNtB2D_4expr4ExprEB4M_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = mul i64 %i.c, 416                        ; 7 uses
  %i.h = udiv i64 %i.g, 112                       ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.j = invoke { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropNtNtB11_4expr4ExprENCINvNtNtB22_8adapters10filter_map19filter_map_try_foldBX_B3A_B30_INtNtB24_6result6ResultB30_zENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5x_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_optionss_0NCINvNtB8_16in_place_collect24write_in_place_with_dropB3A_E0E0B4X_EB6E_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias noundef nonnull %i.i, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.k, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3m_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_optionss_0EEB4t_.exit unwind label %bb.l

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
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB1U_4expr4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.t = mul nuw i64 %i.h, 112                    ; 4 uses
  %i.u = icmp ne i64 %i.g, %i.t
  %or.cond = select i1 %.not.i, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 16 to ptr), %2 ], [ %i.z, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 16 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.x = icmp ult i64 %i.g, 112
  br i1 %i.x, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 16) #45
  br label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.y = icmp ule i64 %i.t, %i.g
  tail call void @llvm.assume(i1 %i.y)
  %i.z = tail call noundef align 16 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 16, i64 noundef range(i64 0, -15) %i.t) #45 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.j, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprNtNtB15_4expr4ExprECs14kWLkQVSKO_14deltalake_core.exit.thread, !prof !119

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 16, i64 noundef %i.t) #53
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.ab = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters10filter_map9FilterMapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr11select_expr10SelectExprENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3m_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE21plan_wildcard_optionss_0EEB4t_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB1b_10filter_map9FilterMapINtNtB1b_9enumerate9EnumerateINtNtB4_9into_iter8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB3q_5types10UInt64TypeEEENCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB5b_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0ENCB55_s_0EINtNtB1f_6result6ResultTjNtNtB3q_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEB5h_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(80) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.d = load i64, ptr %i.c, align 8, !noundef !35 ; 3 uses
  %i.e = load ptr, ptr %i.b, align 8, !nonnull !35, !noundef !35 ; 7 uses
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 64
  %i.g = load ptr, ptr %i.f, align 8, !noundef !35
  %i.h = mul i64 %i.d, 104                        ; 7 uses
  %i.i = udiv i64 %i.h, 56                        ; 2 uses
  %i.j = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_10filter_map9FilterMapINtNtB8_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB2O_5types10UInt64TypeEEENCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB4z_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0ENCB4t_s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB1Y_13in_place_drop11InPlaceDropINtNtBc_6result6ResultTjNtNtB2O_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEENCINvNtB1Y_16in_place_collect24write_in_place_with_dropB8n_E0IB8o_B7M_zEEB4F_(ptr noalias noundef nonnull align 8 dereferenceable(80) %1, ptr noundef nonnull %i.e, ptr noundef nonnull %i.e, ptr noundef %i.g)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.s, %bb.e ], [ %i.k, %bb.c ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_10filter_map9FilterMapINtNtBL_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB35_5types10UInt64TypeEEENCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB4Q_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0ENCB4K_s_0EEB4W_(ptr noalias noundef align 8 dereferenceable(80) %1) #50
          to label %common.resume unwind label %bb.n

bb.c:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.l = extractvalue { ptr, ptr } %i.j, 1
  %i.m = ptrtoint ptr %i.l to i64
  %i.n = ptrtoint ptr %i.e to i64
  %i.o = sub nuw i64 %i.m, %i.n
  %i.p = udiv exact i64 %i.o, 56                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.e, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.p, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.d, ptr %i.r, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB13_5types10UInt64TypeEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.b)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.l, %bb.d
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB1X_5types10UInt64TypeEINtNtB4_6result6ResultTjNtNtB1X_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.n

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.d, 0
  %i.t = mul nuw i64 %i.i, 56                     ; 4 uses
  %i.u = icmp ne i64 %i.h, %i.t
  %or.cond = select i1 %.not.i, i1 %i.u, i1 false
  br i1 %or.cond, label %bb.i, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB18_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core6result6ResultTjNtNtB18_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.thread

_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB18_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core6result6ResultTjNtNtB18_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.thread: ; preds = %2, %bb.j, %bb.f, %bb.k
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.ab, %bb.k ], [ %i.e, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.j ]
  store i64 %i.i, ptr %0, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.v, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.p, ptr %i.w, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB13_5types10UInt64TypeEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %i.b)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_10filter_map9FilterMapINtNtBL_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB35_5types10UInt64TypeEEENCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB4Q_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0ENCB4K_s_0EEB4W_.exit unwind label %bb.g

bb.g:                                             ; preds = %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB18_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core6result6ResultTjNtNtB18_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.thread
  %i.x = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
          to label %common.resume unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.y = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.b, %bb.g
  %common.resume.op = phi { ptr, i32 } [ %i.x, %bb.g ], [ %.pn, %bb.b ]
  resume { ptr, i32 } %common.resume.op

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtBL_10filter_map9FilterMapINtNtBL_9enumerate9EnumerateINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB35_5types10UInt64TypeEEENCNvXs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7barrierNtB4Q_18MergeBarrierStreamNtNtCs7cL0Iqqqcdm_12futures_core6stream6Stream9poll_next0ENCB4K_s_0EEB4W_.exit: ; preds = %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB18_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core6result6ResultTjNtNtB18_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.thread
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(80) %1)
  ret void

bb.i:                                             ; preds = %bb.f
  %i.z = icmp ult i64 %i.h, 56
  br i1 %i.z, label %2, label %bb.k

2:                                                ; preds = %bb.i
  %3 = icmp eq i64 %i.h, 0
  br i1 %3, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB18_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core6result6ResultTjNtNtB18_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.thread, label %bb.j

bb.j:                                             ; preds = %2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8) #45
  br label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB18_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core6result6ResultTjNtNtB18_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.thread

bb.k:                                             ; preds = %bb.i
  %i.aa = icmp ule i64 %i.t, %i.h
  tail call void @llvm.assume(i1 %i.aa)
  %i.ab = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.e, i64 noundef %i.h, i64 noundef 8, i64 noundef range(i64 0, -15) %i.t) #45 ; 2 uses
  %i.ac = icmp eq ptr %i.ab, null
  br i1 %i.ac, label %bb.l, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocINtNtNtCs1N9T06jgEdt_11arrow_array7builder17primitive_builder16PrimitiveBuilderNtNtB18_5types10UInt64TypeEINtNtCsbvkFyIu7lgC_4core6result6ResultTjNtNtB18_12record_batch11RecordBatchENtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEECs14kWLkQVSKO_14deltalake_core.exit.thread, !prof !119

bb.l:                                             ; preds = %bb.k
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.t) #53
          to label %bb.m unwind label %bb.e

bb.m:                                             ; preds = %bb.l
  unreachable

bb.n:                                             ; preds = %bb.e, %bb.b
  %i.ad = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtB4_3VecINtNtB1f_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2Y_8metadata6writerINtB4m_20ThriftMetadataWriterIB2m_hEE23finalize_column_indexess_00EIB2m_B2S_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB12_3VecINtNtBc_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2o_8metadata6writerINtB3M_20ThriftMetadataWriterIB1M_hEE23finalize_column_indexess_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropIB1M_B2i_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB6x_E0INtNtBc_6result6ResultB5W_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB1b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1j_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2F_8metadata6writerINtB43_20ThriftMetadataWriterIB23_hEE23finalize_column_indexess_00EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtBL_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEIB1R_B2m_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB1b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1j_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2F_8metadata6writerINtB43_20ThriftMetadataWriterIB23_hEE23finalize_column_indexess_00EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtB4_3VecINtNtB1f_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2Y_8metadata6writerINtB4m_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_column_indexess_00EIB2m_B2S_EEB5j_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB12_3VecINtNtBc_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2o_8metadata6writerINtB3M_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_column_indexess_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropIB1M_B2i_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB7u_E0INtNtBc_6result6ResultB6T_zEEB4J_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB1b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1j_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2F_8metadata6writerINtB43_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_column_indexess_00EEB50_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtBL_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEIB1R_B2m_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB1b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1j_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2F_8metadata6writerINtB43_20ThriftMetadataWriterNtNtNtCs14kWLkQVSKO_14deltalake_core6writer5utils15ShareableBufferE23finalize_column_indexess_00EEB50_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtB4_3VecINtNtB1f_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2Y_8metadata6writerINtB4m_20ThriftMetadataWriterQIB2m_hEE23finalize_column_indexess_00EIB2m_B2S_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB12_3VecINtNtBc_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2o_8metadata6writerINtB3M_20ThriftMetadataWriterQIB1M_hEE23finalize_column_indexess_00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropIB1M_B2i_EENCINvNtB12_16in_place_collect24write_in_place_with_dropB6y_E0INtNtBc_6result6ResultB5X_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENtNtNtB1b_3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterINtB1j_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEENCNCNvMNtNtB2F_8metadata6writerINtB43_20ThriftMetadataWriterQIB23_hEE23finalize_column_indexess_00EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterINtB7_3VecINtNtCsbvkFyIu7lgC_4core6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropINtBL_3VecINtNtB4_6option6OptionNtNtNtNtCs4tdlwR1I4n2_7parquet4file10page_index12column_index19ColumnIndexMetaDataEEIB1R_B2m_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
end_hunk_0
begin_hunk_1_@_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterINtNtB1f_6option6OptionyEENCINvXs9_NtNtCs1N9T06jgEdt_11arrow_array5array15primitive_arrayINtB2U_14PrimitiveArrayNtNtB2Y_5types10UInt64TypeEINtNtNtB1d_6traits7collect12FromIteratorB2l_E9from_iterB1U_E0EyECs14kWLkQVSKO_14deltalake_core:bb.a
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB2n_6prefixINtB3e_11PrefixStoreINtNtB6_4sync3ArcDNtB2n_11ObjectStoreEL_EEB43_19list_with_delimiter00s_0EB2l_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB1N_6prefixINtB2E_11PrefixStoreINtNtB14_4sync3ArcDNtB1N_11ObjectStoreEL_EEB3u_19list_with_delimiter00s_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB54_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB24_6prefixINtB2V_11PrefixStoreINtNtB1l_4sync3ArcDNtB24_11ObjectStoreEL_EEB3L_19list_with_delimiter00s_0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 96                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtCsjyY8HP3IvQ6_12object_store10ObjectMetaB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtCsjyY8HP3IvQ6_12object_store10ObjectMetaENCNCNCNvXs2_NtB24_6prefixINtB2V_11PrefixStoreINtNtB1l_4sync3ArcDNtB24_11ObjectStoreEL_EEB3L_19list_with_delimiter00s_0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB2Q_13CreateBuilder22with_partition_columnsB2l_INtB4_3VecB2l_EE0EB2l_EB2U_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB2h_13CreateBuilder22with_partition_columnsB1L_INtB12_3VecB1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB4V_zEEB2l_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB2y_13CreateBuilder22with_partition_columnsB22_INtB1j_3VecB22_EE0EEB2C_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBN_6string6StringB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB2y_13CreateBuilder22with_partition_columnsB22_INtB1j_3VecB22_EE0EEB2C_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtB6_6string6StringENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataB2l_INtB4_3VecB2l_EB2l_B2l_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB2l_B2l_EE0EB2l_EB2S_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB14_6string6StringENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataB1L_INtB12_3VecB1L_EB1L_B1L_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB1L_B1L_EE0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB5D_zEEB2j_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataB22_INtB1j_3VecB22_EB22_B22_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB22_B22_EE0EEB2A_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtBN_6string6StringB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtB9_6string6StringENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtB1l_6string6StringENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions12new_metadataB22_INtB1j_3VecB22_EB22_B22_INtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3map7HashMapB22_B22_EE0EEB2A_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB37_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs2_0ENtNtB6_6string6StringEB4o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2x_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs2_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB6W_E0INtNtBc_6result6ResultB6l_zEEB3O_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs2_0EEB45_.exit unwind label %bb.j

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
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtBN_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
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
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #45 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !122

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #53
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs2_0EEB45_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB37_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs_0ENtNtB6_6string6StringEB4o_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = shl i64 %i.c, 6                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2x_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB6V_E0INtNtBc_6result6ResultB6k_zEEB3O_(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs_0EEB45_.exit unwind label %bb.j

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
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCs4lawaffTVVK_9sqlparser3ast5IdentNtNtBN_6string6StringEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
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
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #45 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !122

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #53
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCs4lawaffTVVK_9sqlparser3ast5IdentENCNvMNtNtCsjHlmExTLNuX_14datafusion_sql4expr10identifierINtNtB2O_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE31sql_compound_identifier_to_exprs_0EEB45_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENvMse_NtB6_4syncINtB3a_3ArcB2l_E3newEB3k_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENvMse_NtB14_4syncINtB2A_3ArcB1L_E3newENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB2L_E0INtNtBc_6result6ResultB3N_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENvMse_NtB1l_4syncINtB2R_3ArcB22_E3newEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 3                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldINtNtBN_4sync3ArcB1Q_EEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.q = mul nuw i64 %i.c, 14
  store i64 %i.q, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsfYVtenZkBsn_12arrow_schema5field5FieldENvMse_NtB1l_4syncINtB2R_3ArcB22_E3newEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNCNvXs2_NtB2p_6prefixINtB3e_11PrefixStoreINtNtB6_4sync3ArcDNtB2p_11ObjectStoreEL_EEB43_19list_with_delimiter000EB2l_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(40) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNCNvXs2_NtB1P_6prefixINtB2E_11PrefixStoreINtNtB14_4sync3ArcDNtB1P_11ObjectStoreEL_EEB3u_19list_with_delimiter000ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB52_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNCNvXs2_NtB26_6prefixINtB2V_11PrefixStoreINtNtB1l_4sync3ArcDNtB26_11ObjectStoreEL_EEB3L_19list_with_delimiter000EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 24                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtCsjyY8HP3IvQ6_12object_store4path4PathB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(40) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjyY8HP3IvQ6_12object_store4path4PathENCNCNCNvXs2_NtB26_6prefixINtB2V_11PrefixStoreINtNtB1l_4sync3ArcDNtB26_11ObjectStoreEL_EEB3L_19list_with_delimiter000EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNCNvNtNtNtB2r_10operations5write9execution24write_execution_plan_cdc00EB2l_EB2r_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNCNvNtNtNtB1R_10operations5write9execution24write_execution_plan_cdc00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB4z_zEEB1R_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNCNvNtNtNtB28_10operations5write9execution24write_execution_plan_cdc00EEB28_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 272                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionE32forget_allocation_drop_remainingB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionB1Q_EEB1W_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB12_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models6ActionENCNCNvNtNtNtB28_10operations5write9execution24write_execution_plan_cdc00EEB28_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB3t_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE17apply_table_alias0ENtB2p_5IdentEB4t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = mul i64 %i.c, 120                        ; 5 uses
  %i.h = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB2T_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE17apply_table_alias0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1P_5IdentENCINvNtB12_16in_place_collect24write_in_place_with_dropB6K_E0INtNtBc_6result6ResultB69_zEEB3T_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB3a_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE17apply_table_alias0EEB4a_.exit unwind label %bb.l

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
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefNtB1U_5IdentEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
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
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.v = and i64 %i.g, -64                        ; 3 uses
  %i.w = icmp eq i64 %i.v, 0
  br i1 %i.w, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #45
  br label %.thread

bb.i:                                             ; preds = %bb.g
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.v) #45 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.j, label %.thread, !prof !122

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.v) #53
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtCs4lawaffTVVK_9sqlparser3ast5query19TableAliasColumnDefENCNvMs8_NtCsjHlmExTLNuX_14datafusion_sql7plannerINtB3a_8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE17apply_table_alias0EEB4a_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtNtB2t_10operations5write9execution14write_cdc_plan0s5_0ENtB2p_6ActionEB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtNtB1T_10operations5write9execution14write_cdc_plan0s5_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtB1P_6ActionENCINvNtB12_16in_place_collect24write_in_place_with_dropB5a_E0INtNtBc_6result6ResultB4z_zEEB1T_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtNtB2a_10operations5write9execution14write_cdc_plan0s5_0EEB2a_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 272                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE32forget_allocation_drop_remainingB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtB1U_6ActionEEB1Y_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvNtNtNtB2a_10operations5write9execution14write_cdc_plan0s5_0EEB2a_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvXs1_NtNtB2t_10operations16filesystem_checkNtB3y_22FileSystemCheckBuilderNtNtNtB1f_6future11into_future10IntoFuture11into_future00ENtNtB6_6string6StringEB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 7 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = mul i64 %i.c, 272                        ; 7 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvXs1_NtNtB1T_10operations16filesystem_checkNtB2Y_22FileSystemCheckBuilderNtNtNtBc_6future11into_future10IntoFuture11into_future00ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropNtNtB14_6string6StringENCINvNtB12_16in_place_collect24write_in_place_with_dropB6h_E0INtNtBc_6result6ResultB5G_zEEB1T_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvXs1_NtNtB2a_10operations16filesystem_checkNtB3f_22FileSystemCheckBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future00EEB2a_.exit unwind label %bb.l

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
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE32forget_allocation_drop_remainingB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.j, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtBN_6string6StringEEB1Y_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.l

bb.f:                                             ; preds = %bb.d
  %.not.i = icmp ne i64 %i.c, 0
  %i.s = mul nuw i64 %i.h, 24                     ; 4 uses
  %i.t = icmp ne i64 %i.g, %i.s
  %or.cond = select i1 %.not.i, i1 %i.t, i1 false
  br i1 %or.cond, label %bb.g, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtB6_6string6StringEB19_.exit.thread

_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtB6_6string6StringEB19_.exit.thread: ; preds = %2, %bb.h, %bb.f, %bb.i
  %.sroa.03.0 = phi ptr [ inttoptr (i64 8 to ptr), %2 ], [ %i.y, %bb.i ], [ %i.d, %bb.f ], [ inttoptr (i64 8 to ptr), %bb.h ]
  store i64 %i.h, ptr %0, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %.sroa.03.0, ptr %i.u, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.o, ptr %i.v, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.f
  %i.w = icmp ult i64 %i.g, 24
  br i1 %i.w, label %2, label %bb.i

2:                                                ; preds = %bb.g
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtB6_6string6StringEB19_.exit.thread, label %bb.h

bb.h:                                             ; preds = %2
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8) #45
  br label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtB6_6string6StringEB19_.exit.thread

bb.i:                                             ; preds = %bb.g
  %i.x = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.x)
  %i.y = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #45 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.j, label %_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect13needs_reallocNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtB6_6string6StringEB19_.exit.thread, !prof !119

bb.j:                                             ; preds = %bb.i
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #53
          to label %bb.k unwind label %bb.e

bb.k:                                             ; preds = %bb.j
  unreachable

bb.l:                                             ; preds = %bb.b, %bb.e
  %i.aa = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENCNCNvXs1_NtNtB2a_10operations16filesystem_checkNtB3f_22FileSystemCheckBuilderNtNtNtB4_6future11into_future10IntoFuture11into_future00EEB2a_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENcNtNtB2p_6Action3Add0EB3s_EB2t_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENcNtNtB1P_6Action3Add0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB2S_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB4t_E0INtNtBc_6result6ResultB3S_zEEB1T_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENcNtNtB26_6Action3Add0EEB2a_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 272                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddE32forget_allocation_drop_remainingB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtB1U_6ActionEEB1Y_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddENcNtNtB26_6Action3Add0EEB2a_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTINtNtB6_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB6_6string6StringEENvYB2l_INtNtB1f_7convert4IntoNtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprE4intoEB4Q_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB14_6string6StringEENvYB1L_INtNtBc_7convert4IntoNtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprE4intoENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB4h_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB4h_E0INtNtBc_6result6ResultB6f_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB9_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB1l_6string6StringEENvYB22_INtNtB4_7convert4IntoNtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprE4intoEECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = udiv exact i64 %i.l, 40                  ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB9_6string6StringEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTINtNtBN_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtBN_6string6StringENtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB9_6string6StringEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_4sync3ArcDNtNtCs3LxfdNfGUeX_31datafusion_physical_expr_common13physical_expr12PhysicalExprEL_ENtNtB1l_6string6StringEENvYB22_INtNtB4_7convert4IntoNtNtCshCk07IZuEAL_24datafusion_physical_expr10projection14ProjectionExprE4intoEECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTINtNtB6_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2m_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3C_10SimplifierNtNtB2I_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups0_0EB2l_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(48) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB33_10SimplifierNtNtB29_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB76_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB23_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3k_10SimplifierNtNtB2q_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups0_0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1R_EB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB23_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3k_10SimplifierNtNtB2q_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups0_0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTINtNtB6_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB2m_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3C_10SimplifierNtNtB2I_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups8_0EB2l_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB33_10SimplifierNtNtB29_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups8_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB76_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.p, %bb.e ], [ %i.h, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB23_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3k_10SimplifierNtNtB2q_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups8_0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.i = extractvalue { ptr, ptr } %i.g, 1
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = ptrtoint ptr %i.d to i64
  %i.l = sub nuw i64 %i.j, %i.k
  %i.m = lshr exact i64 %i.l, 4                   ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.m, ptr %i.n, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.o, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.p = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTINtNtBN_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1R_EB1Q_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.m, ptr %i.r, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTINtNtB9_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBX_EENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.s = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB1l_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB23_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB3k_10SimplifierNtNtB2q_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups8_0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtB4_9into_iter8IntoIterTjINtB4_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0EB2n_ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 3 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = shl i64 %i.c, 5                          ; 5 uses
  %i.h = udiv i64 %i.g, 24                        ; 2 uses
  %i.i = invoke { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTjINtB12_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB57_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.r, %bb.e ], [ %i.j, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTjINtB1j_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0EECs14kWLkQVSKO_14deltalake_core.exit unwind label %bb.j

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
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEE32forget_allocation_drop_remainingCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.h, %bb.d
  %i.r = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropTjINtBL_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEB1S_EECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
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
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterTjINtB7_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

2:                                                ; preds = %bb.f
  %3 = icmp eq i64 %i.g, 0
  br i1 %3, label %.thread, label %bb.g

bb.g:                                             ; preds = %2
  %i.w = icmp ule i64 %i.s, %i.g
  tail call void @llvm.assume(i1 %i.w)
  %i.x = tail call noundef align 8 ptr @_RNvCs8mYq7K4qqSA_7___rustc14___rust_realloc(ptr noundef nonnull %i.d, i64 noundef %i.g, i64 noundef 8, i64 noundef range(i64 0, -15) %i.s) #45 ; 2 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.h, label %.thread, !prof !122

bb.h:                                             ; preds = %bb.g
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc5alloc18handle_alloc_error(i64 noundef 8, i64 noundef %i.s) #53
          to label %bb.i unwind label %bb.e

bb.i:                                             ; preds = %bb.h
  unreachable

bb.j:                                             ; preds = %bb.b, %bb.e
  %i.z = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTjINtB1j_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0EECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs6Po7BT7Nknu_5alloc3vec16in_place_collect18from_iter_in_placeINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filter6FilterINtNtB4_9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENCNvMs0_NtNtB2x_11transaction16conflict_checkerNtB3F_15ConflictChecker54check_for_deleted_files_against_current_txn_read_filess_0EB2r_EB2z_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(32) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.c = load i64, ptr %i.b, align 8, !noundef !35 ; 2 uses
  %i.d = load ptr, ptr %1, align 8, !nonnull !35, !noundef !35 ; 5 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.f = load ptr, ptr %i.e, align 8, !noundef !35
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = invoke { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB29_8adapters6filter15filter_try_foldBX_B37_INtNtB2b_6result6ResultB37_zENCNvMs0_NtNtB13_11transaction16conflict_checkerNtB5d_15ConflictChecker54check_for_deleted_files_against_current_txn_read_filess_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4C_EB15_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull %i.d, ptr noundef nonnull %i.d, ptr noalias noundef nonnull %i.g, ptr noundef %i.f)
          to label %bb.d unwind label %bb.c

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn = phi { ptr, i32 } [ %i.q, %bb.e ], [ %i.i, %bb.c ]
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENCNvMs0_NtNtB2e_11transaction16conflict_checkerNtB3m_15ConflictChecker54check_for_deleted_files_against_current_txn_read_filess_0EEB2g_.exit unwind label %bb.g

bb.c:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %bb.a
  %i.j = extractvalue { ptr, ptr } %i.h, 1
  %i.k = ptrtoint ptr %i.j to i64
  %i.l = ptrtoint ptr %i.d to i64
  %i.m = sub nuw i64 %i.k, %i.l
  %i.n = udiv exact i64 %i.m, 240                 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.d, ptr %i.a, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store i64 %i.n, ptr %i.o, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store i64 %i.c, ptr %i.p, align 8
  invoke void @_RNvMs0_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveE32forget_allocation_drop_remainingB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
          to label %bb.f unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.q = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec13in_place_drop24InPlaceDstDataSrcBufDropNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveB1Q_EEB1Y_(ptr noalias noundef align 8 dereferenceable(24) %i.a) #50
          to label %bb.b unwind label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 %i.c, ptr %0, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.d, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i64 %i.n, ptr %i.s, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  tail call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropB14_(ptr noalias noundef nonnull align 8 dereferenceable(32) %1)
  ret void

bb.g:                                             ; preds = %bb.b, %bb.e
  %i.t = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters6filter6FilterINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions6RemoveENCNvMs0_NtNtB2e_11transaction16conflict_checkerNtB3m_15ConflictChecker54check_for_deleted_files_against_current_txn_read_filess_0EEB2g_.exit: ; preds = %bb.b
  resume { ptr, i32 } %.pn
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay16scan_action_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIB18_IB18_IB1W_INtNtNtB20_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB4o_4Scan18scan_metadata_fromB2J_E0ENCB4h_s_0EENCINvMs6_B4_NtB4_4Scan18scan_metadata_fromB1V_E0EEB4u_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([176 x i8]) align 16 captures(none) dereferenceable(176) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %3, ptr noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [176 x i8], align 16              ; 3 uses
  %i.b = alloca [160 x i8], align 16              ; 4 uses
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replayNtB2_22ScanLogReplayProcessor3new(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.b, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 16, !range !37, !noundef !35
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %i.f, ptr noundef nonnull align 16 dereferenceable(96) %i.e, i64 96, i1 false)
  store ptr null, ptr %0, align 16
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBH_IBH_IB1f_INtNtNtB1j_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3F_4Scan18scan_metadata_fromB20_E0ENCB3y_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5w_4Scan18scan_metadata_fromB1e_E0EEB3L_(ptr noalias noundef align 8 dereferenceable(24) %3)
  br label %bb.e

bb.d:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(152) %i.h, ptr noundef nonnull align 8 dereferenceable(152) %i.g, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %3, i64 24, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(176) %0, ptr noundef nonnull align 16 dereferenceable(176) %i.a, i64 176, i1 false)
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  ret void

bb.f:                                             ; preds = %bb.g
  resume { ptr, i32 } %i.i

bb.g:                                             ; preds = %bb.a
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBH_IBH_IB1f_INtNtNtB1j_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3F_4Scan18scan_metadata_fromB20_E0ENCB3y_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5w_4Scan18scan_metadata_fromB1e_E0EEB3L_(ptr noalias noundef align 8 dereferenceable(24) %3) #50
          to label %bb.f unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replay16scan_action_iterINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB18_NtNtNtB6_10log_reader6commit12CommitReaderINtNtB1c_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2L_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB1e_6traits8iterator8Iteratorp4ItemINtNtB1g_6result6ResultIB3W_DNtNtB6_11engine_data10EngineDataEL_ENtNtB6_5error5ErrorENtNtB1g_6marker4SendEL_ENCNvMNtB6_11log_segmentNtB70_10LogSegment24create_checkpoint_streams_0EINtNtNtB36_8adaptors3map14MapSpecialCaseIB18_INtNtNtB1e_7sources4once4OnceB5a_EINtNtB1c_7flatten7FlattenINtNtB1g_6option8IntoIterB3V_EEEINtB87_18MapSpecialCaseFnOkNCNCB6X_s_00EEB6d_ENCB6X_s0_0EEIB2L_IB3W_IB2L_IB2L_IB3W_INtNtNtB40_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBdg_4Scan18scan_metadata_fromBbB_E0ENCBd9_s_0EENCINvMs6_B4_NtB4_4Scan18scan_metadata_fromBbh_E0EEEBdm_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([704 x i8]) align 16 captures(none) dereferenceable(704) %0, ptr noundef nonnull %1, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noalias noundef align 16 captures(address) dead_on_return dereferenceable(544) %3, ptr noundef nonnull %4) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [704 x i8], align 16              ; 3 uses
  %i.b = alloca [160 x i8], align 16              ; 4 uses
  invoke void @_RNvMNtNtCs8ulvy0Wg6Ot_12delta_kernel4scan10log_replayNtB2_22ScanLogReplayProcessor3new(ptr noalias noundef nonnull sret([160 x i8]) align 16 captures(none) dereferenceable(160) %i.b, ptr noundef nonnull %1, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(104) %2, ptr noundef nonnull %4)
          to label %bb.b unwind label %bb.j

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %i.b, align 16, !range !37, !noundef !35
  %i.d = trunc nuw i64 %i.c to i1
  br i1 %i.d, label %bb.c, label %bb.i

bb.c:                                             ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(96) %0, ptr noundef nonnull align 16 dereferenceable(96) %i.e, i64 96, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  store i64 6, ptr %i.f, align 16
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtNtNtB4_4iter8adapters5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB17_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2K_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB19_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3V_DNtNtB1K_11engine_data10EngineDataEL_ENtNtB1K_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1K_11log_segmentNtB6Z_10LogSegment24create_checkpoint_streams_0EINtNtNtB35_8adaptors3map14MapSpecialCaseIB13_INtNtNtB19_7sources4once4OnceB59_EINtNtB17_7flatten7FlattenINtBJ_8IntoIterB3U_EEEINtB87_18MapSpecialCaseFnOkNCNCB6W_s_00EEB6c_ENCB6W_s0_0EEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(544) %3)
          to label %bb.f unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 2 uses
  %i.i = load ptr, ptr %i.h, align 16, !alias.scope !5371, !noundef !35
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %common.resume, label %bb.e

bb.e:                                             ; preds = %bb.d
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBH_IBH_IB1f_INtNtNtB1j_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3F_4Scan18scan_metadata_fromB20_E0ENCB3y_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5w_4Scan18scan_metadata_fromB1e_E0EEB3L_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %common.resume unwind label %bb.h

bb.f:                                             ; preds = %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 512 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 16, !alias.scope !5372, !noundef !35
  %i.m = icmp eq ptr %i.l, null
  br i1 %i.m, label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  tail call fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters3map3MapINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxIBH_IBH_IB1f_INtNtNtB1j_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtB3F_4Scan18scan_metadata_fromB20_E0ENCB3y_s_0EENCINvMs6_NtCs8ulvy0Wg6Ot_12delta_kernel4scanNtB5w_4Scan18scan_metadata_fromB1e_E0EEB3L_(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.k)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_.exit

bb.h:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  tail call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #51
  unreachable

common.resume:                                    ; preds = %bb.j, %bb.d, %bb.e
  %common.resume.op = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.g, %bb.e ], [ %i.q, %bb.j ]
  resume { ptr, i32 } %common.resume.op

bb.i:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 544
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(152) %i.p, ptr noundef nonnull align 8 dereferenceable(152) %i.o, i64 152, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(544) %i.a, ptr noundef nonnull align 16 dereferenceable(544) %3, i64 544, i1 false)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(704) %0, ptr noundef nonnull align 16 dereferenceable(704) %i.a, i64 704, i1 false)
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_.exit

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters5chain5ChainIBH_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtBL_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2s_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBN_6traits8iterator8Iteratorp4ItemINtNtB4_6result6ResultIB3C_DNtNtB1s_11engine_data10EngineDataEL_ENtNtB1s_5error5ErrorENtNtB4_6marker4SendEL_ENCNvMNtB1s_11log_segmentNtB6F_10LogSegment24create_checkpoint_streams_0EINtNtNtB2M_8adaptors3map14MapSpecialCaseIBH_INtNtNtBN_7sources4once4OnceB4P_EINtNtBL_7flatten7FlattenINtNtB4_6option8IntoIterB3B_EEEINtB7N_18MapSpecialCaseFnOkNCNCB6C_s_00EEB5S_ENCB6C_s0_0EEIB2s_IB3C_IB2s_IB2s_IB3C_INtNtNtB3G_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcS_4Scan18scan_metadata_fromBbd_E0ENCBcL_s_0EENCINvMs6_NtB1s_4scanNtBeJ_4Scan18scan_metadata_fromBaT_E0EEEBcY_.exit: ; preds = %bb.g, %bb.f, %bb.i
  ret void

bb.j:                                             ; preds = %bb.a
end_hunk_1
