inline.NumInlined: 7791
inline.NumDeleted: 3011
begin_hunk_0_@_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode12map_childrenNCNCNCINvYBK_B11_7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000ECs14kWLkQVSKO_14deltalake_core:bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 2 dereferenceable(22) %.sroa.5587.0..sroa_idx, ptr noundef nonnull align 2 dereferenceable(22) %.sroa.10, i64 22, i1 false)
  %i.mw = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.mu, ptr %i.mw, align 8
  %.sroa.2584.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  store ptr %.sroa.0569.0.copyload, ptr %.sroa.2584.0..sroa_idx, align 16
  %.sroa.3585.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 24
  store i8 %.sroa.5570.0.copyload, ptr %.sroa.3585.0..sroa_idx, align 8
  %.sroa.4586.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 25
  store i8 %.sroa.6571.0.copyload, ptr %.sroa.4586.0..sroa_idx, align 1
  store i64 37, ptr %0, align 16
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.ao

bb.fg:                                            ; preds = %bb.fe
  call void @llvm.lifetime.end.p0(ptr nonnull %i.bj)
  %i.mx = and i8 %.sroa.6571.0.copyload, 1
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.10)
  br label %bb.az

bb.fh:                                            ; preds = %bb.ag
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %1)
  br label %bb.fd

bb.fi:                                            ; preds = %bb.ao
  call void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %1)
  br label %bb.fd

bb.fj:                                            ; preds = %bb.fk, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213, %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213
  resume { ptr, i32 } %.pn1187.pn

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213: ; preds = %bb.ds, %bb.dt, %bb.dk, %bb.di, %bb.dj, %bb.da, %bb.ee, %bb.al, %bb.ep, %bb.cz, %bb.cu, %bb.av
  %.pn1187.pn = phi { ptr, i32 } [ %.pn1187, %bb.al ], [ %i.hh, %bb.av ], [ %i.jz, %bb.cu ], [ %i.lg, %bb.ds ], [ %i.kf, %bb.cz ], [ %i.mk, %bb.ep ], [ %.pn1164, %bb.ee ], [ %i.kg, %bb.da ], [ %i.kq, %bb.di ], [ %i.kt, %bb.dk ], [ %i.kq, %bb.dj ], [ %i.lg, %bb.dt ]
  %i.my = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.mz = icmp ne i64 %i.my, 35
  call void @llvm.assume(i1 %i.mz)
  %i.na = add nsw i64 %i.my, -4
  %i.nb = icmp samesign ugt i64 %i.my, 3
  %i.nc = select i1 %i.nb, i64 %i.na, i64 31
  switch i64 %i.nc, label %bb.fk [
    i64 0, label %bb.fj
    i64 4, label %bb.fj
    i64 5, label %bb.fj
    i64 6, label %bb.fj
    i64 7, label %bb.fj
    i64 8, label %bb.fj
    i64 9, label %bb.fj
    i64 10, label %bb.fj
    i64 11, label %bb.fj
    i64 12, label %bb.fj
    i64 13, label %bb.fj
    i64 14, label %bb.fj
    i64 15, label %bb.fj
    i64 16, label %bb.fj
    i64 17, label %bb.fj
    i64 18, label %bb.fj
    i64 19, label %bb.fj
    i64 20, label %bb.fj
    i64 21, label %bb.fj
    i64 22, label %bb.fj
    i64 23, label %bb.fj
    i64 24, label %bb.fj
    i64 26, label %bb.fj
    i64 29, label %bb.fj
    i64 32, label %bb.fj
  ]

bb.fk:                                            ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc4sync3ArcNtNtCs8VI8w5SIoU4_15datafusion_expr3udf9ScalarUDFEECs14kWLkQVSKO_14deltalake_core.exit1213
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 16 dereferenceable(112) %1) #52
          to label %bb.fj unwind label %bb.as
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB3W_5slice4iter4IterNtNtB5_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5W_9DataFrame6selectBK_INtNtCs6Po7BT7Nknu_5alloc3vec3VecBK_EEs_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB52_5slice4iter4IterNtNtB1u_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB73_9DataFrame6selectB1q_INtNtBW_3vec3VecB1q_EEs_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB55_5slice4iter4IterNtNtB1u_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB76_9DataFrame6selectB1q_INtNtBW_3vec3VecB1q_EEs_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_17find_window_exprsINtNtNtNtBW_4iter8adapters10filter_map9FilterMapINtNtNtBW_5slice4iter4IterNtNtB26_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7S_9DataFrame6selectB22_IB2P_B22_EEs_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB4N_5slice4iter4IterNtNtB1q_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB6O_9DataFrame6selectB1m_BP_Es_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_17find_window_exprsINtNtNtNtB2e_4iter8adapters10filter_map9FilterMapINtNtNtB2e_5slice4iter4IterNtNtB1s_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB81_9DataFrame6selectB1o_BR_Es_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_17find_window_exprsINtNtNtNtB2y_4iter8adapters10filter_map9FilterMapINtNtNtB2y_5slice4iter4IterNtNtB1s_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB84_9DataFrame6selectB1o_BR_Es_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB5l_5slice4iter4IterNtNtB1u_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB7m_9DataFrame6selectB1q_B2b_Es_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB3b_5slice4iter4IterNtNtB1k_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB5c_9DataFrame6selectB1g_INtNtCs6Po7BT7Nknu_5alloc3vec3VecB1g_EEs_0EE0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB52_5slice4iter4IterNtNtB1u_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB73_9DataFrame6selectB1q_INtNtBW_3vec3VecB1q_EEs_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB4S_5slice4iter4IterNtNtB1u_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB6T_9DataFrame6selectB1q_B1m_Es_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters10filter_map9FilterMapINtNtNtB4N_5slice4iter4IterNtNtB1q_11select_expr10SelectExprENCINvMs0_NtCs8Hz2sPNgbCO_10datafusion9dataframeNtB6O_9DataFrame6selectB1m_BP_Es_0EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB3W_5slice4iter4IterBK_EINtNtB3W_6option4IterBK_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB52_5slice4iter4IterB1q_EINtNtB52_6option4IterB1q_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_17find_window_exprsINtNtNtNtBW_4iter8adapters5chain5ChainINtNtNtBW_5slice4iter4IterB22_EINtBU_4IterB22_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4N_5slice4iter4IterB1m_EINtNtB4N_6option4IterB1m_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_17find_window_exprsINtNtNtNtB2e_4iter8adapters5chain5ChainINtNtNtB2e_5slice4iter4IterB1o_EINtB2c_4IterB1o_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_17find_window_exprsINtNtNtNtB2y_4iter8adapters5chain5ChainINtNtNtB2y_5slice4iter4IterB1o_EINtB2w_4IterB1o_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB5l_5slice4iter4IterB1q_EINtNtB5l_6option4IterB1q_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB3b_5slice4iter4IterB1g_EINtNtB3b_6option4IterB1g_EEE0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB52_5slice4iter4IterB1q_EINtNtB52_6option4IterB1q_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4S_5slice4iter4IterB1q_EINtNtB4S_6option4IterB1q_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_17find_window_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainINtNtNtB4N_5slice4iter4IterB1m_EINtNtB4N_6option4IterB1m_EEE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3Z_5slice4iter4IterNtBM_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5n_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB6u_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB55_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6u_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7B_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB58_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6x_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7E_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_20find_aggregate_exprsINtNtNtNtBW_4iter8adapters3map3MapINtNtNtBW_5slice4iter4IterNtB24_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7j_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB8q_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4Q_5slice4iter4IterNtB1o_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6f_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7m_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_20find_aggregate_exprsINtNtNtNtB2e_4iter8adapters3map3MapINtNtNtB2e_5slice4iter4IterB3e_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7l_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB8s_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_20find_aggregate_exprsINtNtNtNtB2y_4iter8adapters3map3MapINtNtNtB2y_5slice4iter4IterB2g_ENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB7o_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB8v_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB5o_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6N_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7U_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB3e_5slice4iter4IterNtB1i_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4D_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0EB5K_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB55_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6u_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7B_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4V_5slice4iter4IterNtB1s_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6k_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7r_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map3MapINtNtNtB4Q_5slice4iter4IterNtB1o_4SortENCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB6f_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE14select_to_plans2_0EE0E0E000EB7m_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB3R_INtNtNtB3Z_5slice4iter4IterBK_EINtNtB3Z_6option4IterBK_EEB5i_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4X_INtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEB6p_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB50_INtNtNtB58_5slice4iter4IterB1q_EINtNtB58_6option4IterB1q_EEB6s_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_20find_aggregate_exprsINtNtNtNtBW_4iter8adapters5chain5ChainIB63_INtNtNtBW_5slice4iter4IterB22_EINtBU_4IterB22_EEB7e_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4I_INtNtNtB4Q_5slice4iter4IterB1m_EINtNtB4Q_6option4IterB1m_EEB6a_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_20find_aggregate_exprsINtNtNtNtB2e_4iter8adapters5chain5ChainIB6a_INtNtNtB2e_5slice4iter4IterB1o_EINtB2c_4IterB1o_EEB7n_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_20find_aggregate_exprsINtNtNtNtB2y_4iter8adapters5chain5ChainIB6d_INtNtNtB2y_5slice4iter4IterB1o_EINtB2w_4IterB1o_EEB7q_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB5g_INtNtNtB5o_5slice4iter4IterB1q_EINtNtB5o_6option4IterB1q_EEB6I_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB36_INtNtNtB3e_5slice4iter4IterB1g_EINtNtB3e_6option4IterB1g_EEB4y_EE0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4X_INtNtNtB55_5slice4iter4IterB1q_EINtNtB55_6option4IterB1q_EEB6p_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4N_INtNtNtB4V_5slice4iter4IterB1q_EINtNtB4V_6option4IterB1q_EEB6f_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsINtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB4I_INtNtNtB4Q_5slice4iter4IterB1m_EINtNtB4Q_6option4IterB1m_EEB6a_EE0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCINvNtB5_5utils18find_exprs_in_exprNCINvB2Q_20find_aggregate_exprsRSBK_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(16) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsRSB1q_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3Y_20find_aggregate_exprsRSB1q_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCINvNtB26_5utils18find_exprs_in_exprNCINvB51_20find_aggregate_exprsRSB22_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsRSB1m_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB58_20find_aggregate_exprsRSB1o_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCINvNtB1s_5utils18find_exprs_in_exprNCINvB5b_20find_aggregate_exprsRSB1o_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB4e_20find_aggregate_exprsRSB1q_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvNtB1k_5utils18find_exprs_in_exprNCINvB24_20find_aggregate_exprsRSB1g_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3V_20find_aggregate_exprsRSB1q_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCINvNtB1u_5utils18find_exprs_in_exprNCINvB3L_20find_aggregate_exprsRSB1q_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCINvNtB1q_5utils18find_exprs_in_exprNCINvB3G_20find_aggregate_exprsRSB1m_E0E0E000ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(16) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB2S_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB3Z_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(8) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3X_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB54_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB40_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB57_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB53_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB6a_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3I_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB4P_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5a_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB6h_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB5d_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB6k_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB4g_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB5n_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB26_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0EB3d_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3X_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB54_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3N_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB4U_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvMNtCsjHlmExTLNuX_14datafusion_sql6selectINtNtB3I_7planner8SqlToRelNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion4expr20DeltaContextProviderE27try_process_group_by_unnest0E000EB4P_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(8) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvNvB11_5apply10apply_implBK_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB2T_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 8 dereferenceable(24) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB3Y_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB41_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB22_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB54_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB3J_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB5b_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1o_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB5e_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB4h_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvNvNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5apply10apply_implNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0EB27_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB3Y_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1q_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB3O_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvNvNtB6_8TreeNode5apply10apply_implB1m_NCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider32expr_is_exact_predicate_for_cols0E000EB3J_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 8 dereferenceable(24) %2)
  br label %bb.p
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXNtCs8VI8w5SIoU4_15datafusion_expr9tree_nodeNtNtB5_4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode14apply_childrenNCNCNCINvYBK_B11_5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB2E_(ptr dead_on_unwind noalias noundef writable sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef readonly align 16 captures(address, read_provenance) dereferenceable(112) %1, ptr noalias noundef align 16 dereferenceable(128) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [16 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 6 uses
  %i.e = alloca [24 x i8], align 8                ; 6 uses
  %i.f = alloca [16 x i8], align 8                ; 5 uses
  %i.g = alloca [16 x i8], align 8                ; 5 uses
  %i.h = load i64, ptr %1, align 16, !range !4825, !noundef !16 ; 3 uses
  %i.i = icmp ne i64 %i.h, 35
  tail call void @llvm.assume(i1 %i.i)
  %i.j = add nsw i64 %i.h, -4
  %i.k = icmp samesign ugt i64 %i.h, 3
  %i.l = select i1 %i.k, i64 %i.j, i64 31
  switch i64 %i.l, label %bb.b [
    i64 0, label %bb.o
    i64 1, label %bb.c
    i64 2, label %bb.c
    i64 3, label %bb.c
    i64 4, label %bb.d
    i64 5, label %bb.q
    i64 6, label %bb.q
    i64 7, label %bb.e
    i64 8, label %bb.e
    i64 9, label %bb.e
    i64 10, label %bb.e
    i64 11, label %bb.e
    i64 12, label %bb.e
    i64 13, label %bb.e
    i64 14, label %bb.e
    i64 15, label %bb.e
    i64 16, label %bb.e
    i64 17, label %bb.f
    i64 18, label %bb.g
    i64 19, label %bb.h
    i64 20, label %bb.h
    i64 21, label %bb.i
    i64 22, label %bb.j
    i64 23, label %bb.k
    i64 24, label %bb.l
    i64 25, label %bb.c
    i64 26, label %bb.m
    i64 27, label %bb.c
    i64 28, label %bb.c
    i64 29, label %bb.n
    i64 30, label %bb.c
    i64 31, label %bb.c
    i64 32, label %bb.e
  ]

bb.b:                                             ; preds = %bb.a
  unreachable

bb.c:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 0, ptr %i.m, align 8
  store i64 20, ptr %0, align 8
  br label %bb.p

bb.d:                                             ; preds = %bb.a
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.o = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g)
  store ptr %i.n, ptr %i.g, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  store ptr %i.o, ptr %i.p, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvYB1q_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB3J_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.g, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g)
  br label %bb.p

bb.e:                                             ; preds = %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a, %bb.a
  br label %bb.o

bb.f:                                             ; preds = %bb.a
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  store ptr %i.q, ptr %i.e, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  store ptr %i.r, ptr %i.t, align 8
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  store ptr %i.s, ptr %i.u, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_BQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvYB1q_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB3M_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.e, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.p

bb.g:                                             ; preds = %bb.a
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 40
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  store ptr %i.w, ptr %i.d, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  store ptr %i.v, ptr %i.y, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  store ptr %i.x, ptr %i.z, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEERINtNtB1y_3vec3VecTB1t_B1t_EEBQ_EINtB6_20TreeNodeRefContainerB22_E18apply_ref_elementsNCNCNCINvYB22_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB4P_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.d, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  br label %bb.p

bb.h:                                             ; preds = %bb.a, %bb.a
  br label %bb.o

bb.i:                                             ; preds = %bb.a
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 8
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvYB1m_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB3u_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aa, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  br label %bb.p

bb.j:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.ad = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  store ptr %i.ab, ptr %i.c, align 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store ptr %i.ac, ptr %i.ae, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr %i.ad, ptr %i.af, align 8
  call void @_RINvXsa_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EERIBS_NtB1q_4SortEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvYB1o_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB4W_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c)
  br label %bb.p

bb.k:                                             ; preds = %bb.a
  %i.ag = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !nonnull !16, !noundef !16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  %i.ai = getelementptr inbounds nuw i8, ptr %i.ah, <4 x i64> <i64 176, i64 200, i64 224, i64 248>
  store <4 x ptr> %i.ai, ptr %i.b, align 8
  call void @_RINvXsb_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_RIBS_NtB1q_4SortERINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtBW_5boxed3BoxB1o_EEEINtB6_20TreeNodeRefContainerB1o_E18apply_ref_elementsNCNCNCINvYB1o_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB4Z_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  br label %bb.p

bb.l:                                             ; preds = %bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ak = getelementptr inbounds nuw i8, ptr %1, i64 32
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr %i.ak, ptr %i.a, align 8
  %i.al = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %i.aj, ptr %i.al, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprERINtNtBW_3vec3VecB1q_EEINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvYB1q_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB42_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.a, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.p

bb.m:                                             ; preds = %bb.a
  br label %bb.o

bb.n:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.an = load i64, ptr %i.am, align 8, !range !5004, !noundef !16
  %i.ao = icmp eq i64 %i.an, 2
  %i.ap = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  br i1 %i.ao, label %bb.r, label %bb.s

bb.o:                                             ; preds = %bb.a, %bb.m, %bb.h, %bb.e
  %.sink = phi i64 [ 88, %bb.a ], [ 64, %bb.m ], [ 8, %bb.e ], [ 32, %bb.h ]
  %i.aq = getelementptr inbounds nuw i8, ptr %1, i64 %.sink
  %i.ar = load ptr, ptr %i.aq, align 8, !nonnull !16, !noundef !16
  tail call void @_RINvYNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNtNtCsjhHCjzi9uUI_17datafusion_common9tree_node8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesEB1S_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.ar, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  br label %bb.p

bb.p:                                             ; preds = %bb.i, %bb.o, %bb.r, %bb.s, %bb.l, %bb.k, %bb.j, %bb.g, %bb.f, %bb.q, %bb.d, %bb.c
  ret void

bb.q:                                             ; preds = %bb.a, %bb.a
  %.sroa.02.0 = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.03.0 = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f)
  store ptr %.sroa.02.0, ptr %i.f, align 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  store ptr %.sroa.03.0, ptr %i.as, align 8
  call void @_RINvXs9_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeTRINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBQ_EINtB6_20TreeNodeRefContainerB1q_E18apply_ref_elementsNCNCNCINvYB1q_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB3J_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(address) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.p

bb.r:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecIBQ_NtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEEINtB6_17TreeNodeContainerB1q_E14apply_elementsNCNCNCINvYB1q_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB3z_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  br label %bb.p

bb.s:                                             ; preds = %bb.n
  tail call void @_RINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB6_17TreeNodeContainerB1m_E14apply_elementsNCNCNCINvYB1m_NtB6_8TreeNode5visitNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion10find_files23FindFilesExprPropertiesE000EB3u_(ptr noalias noundef nonnull sret([40 x i8]) align 8 captures(none) dereferenceable(40) %0, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ap, ptr noalias noundef nonnull align 16 dereferenceable(128) %2)
  br label %bb.p
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [72 x i8], align 8                ; 15 uses
  %i.b = load i8, ptr %0, align 8, !range !5095, !noundef !16
  switch i8 %i.b, label %default.unreachable [
    i8 0, label %bb.b
    i8 1, label %bb.c
    i8 2, label %bb.d
    i8 3, label %bb.e
    i8 4, label %bb.f
    i8 5, label %bb.g
  ]

default.unreachable:                              ; preds = %bb.a
  unreachable

bb.b:                                             ; preds = %bb.a
  %.val = load ptr, ptr %1, align 8, !nonnull !16, !align !134, !noundef !16
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val, ptr noalias noundef nonnull readonly captures(address, read_provenance) @96, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit

bb.c:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1
  %i.d = load i8, ptr %i.c, align 1, !range !6561, !noundef !16
  %i.e = trunc nuw i8 %i.d to i1
  %.val42 = load ptr, ptr %1, align 8, !nonnull !16, !noundef !16 ; 2 uses
  br i1 %i.e, label %.split.i.i, label %.split2.i.i

.split2.i.i:                                      ; preds = %bb.c
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @94, i64 noundef range(i64 0, -9223372036854775808) 5)
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit

.split.i.i:                                       ; preds = %bb.c
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val42, ptr noalias noundef nonnull readonly captures(address, read_provenance) @95, i64 noundef range(i64 0, -9223372036854775808) 4)
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit

bb.d:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = tail call noundef align 8 ptr @_RINvXs4_NtCseqDwI8vvjGQ_10serde_json6numberNtB6_6NumberNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB8_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(16) %i.f, ptr noalias noundef nonnull align 8 dereferenceable(8) %1)
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit

bb.e:                                             ; preds = %bb.a
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !nonnull !16, !noundef !16
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load i64, ptr %i.j, align 8, !noundef !16
  %i.l = tail call noundef ptr @_RINvNtCseqDwI8vvjGQ_10serde_json3ser18format_escaped_strQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB2_16CompactFormatterECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 dereferenceable(8) %1, ptr noalias nonnull readonly poison, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k) ; 0 uses
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit

bb.f:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7744)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7747)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.val.i53 = load ptr, ptr %i.m, align 8, !alias.scope !7747, !noalias !7744, !nonnull !16, !noundef !16 ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.val10.i = load i64, ptr %i.n, align 8, !alias.scope !7747, !noalias !7744, !noundef !16 ; 3 uses
  %.idx.i = shl nuw nsw i64 %.val10.i, 5
  %i.o = getelementptr inbounds nuw i8, ptr %.val.i53, i64 %.idx.i
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7749)
  %.val.i.i = load ptr, ptr %1, align 8, !alias.scope !7752, !noalias !7753, !nonnull !16, !align !134, !noundef !16 ; 2 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @97, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7755, !inline_history !7756
  %.not.i = icmp eq i64 %.val10.i, 0
  br i1 %.not.i, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeSeq3endCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i, label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.peel.i

_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.peel.i: ; preds = %bb.f
  %i.p = tail call fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.val.i53, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) #54, !noalias !7757, !inline_history !7766 ; 2 uses
  %.not.i.i.peel.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.peel.i, label %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i.preheader, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit

_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i.preheader: ; preds = %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.peel.i
  %i.q = icmp eq i64 %.val10.i, 1
  %.val.i13.i79 = load ptr, ptr %1, align 8, !alias.scope !7744, !noalias !7747, !nonnull !16, !noundef !16 ; 2 uses
  br i1 %i.q, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeSeq3endCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i, label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.lr.ph

_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.lr.ph: ; preds = %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i.preheader
  %.sroa.0.028.i78 = getelementptr inbounds nuw i8, ptr %.val.i53, i64 32
  br label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i

_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i
  %.sroa.0.028.i = getelementptr inbounds nuw i8, ptr %.sroa.0.028.i80, i64 32 ; 2 uses
  %i.r = icmp eq ptr %.sroa.0.028.i, %i.o
  %.val.i13.i = load ptr, ptr %1, align 8, !alias.scope !7744, !noalias !7747, !nonnull !16, !noundef !16 ; 2 uses
  br i1 %i.r, label %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeSeq3endCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i, label %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, !llvm.loop !7767

_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i: ; preds = %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.lr.ph, %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i
  %.val.i13.i81 = phi ptr [ %.val.i13.i79, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.lr.ph ], [ %.val.i13.i, %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i ]
  %.sroa.0.028.i80 = phi ptr [ %.sroa.0.028.i78, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i.lr.ph ], [ %.sroa.0.028.i, %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i ] ; 2 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i13.i81, ptr noalias noundef nonnull readonly captures(address, read_provenance) @99, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7769, !inline_history !7771
  %i.s = tail call fastcc noundef align 8 ptr @_RINvXNtNtCseqDwI8vvjGQ_10serde_json5value3serNtB5_5ValueNtNtCs1gOyXocuPRE_10serde_core3ser9Serialize9serializeQINtNtB7_3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(32) %.sroa.0.028.i80, ptr noalias noundef nonnull align 8 dereferenceable(8) %1) #54, !noalias !7757, !inline_history !7766 ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.s, null
  br i1 %.not.i.i.i, label %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit, !llvm.loop !7767

_RNvXs2_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeSeq3endCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i: ; preds = %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i, %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i.preheader, %bb.f
  %.val.i.sink.i = phi ptr [ %.val.i.i, %bb.f ], [ %.val.i13.i79, %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i.preheader ], [ %.val.i13.i, %_RNCINvYQINtNtCseqDwI8vvjGQ_10serde_json3ser10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer11collect_seqRIBT_NtNtBb_5value5ValueEE0Cs14kWLkQVSKO_14deltalake_core.exit.i ]
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i.sink.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @101, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7747, !inline_history !7756
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit

bb.g:                                             ; preds = %bb.a
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.u = load i64, ptr %i.t, align 8, !noundef !16 ; 2 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !7772)
  %.val.i = load ptr, ptr %1, align 8, !alias.scope !7772, !noalias !7775, !nonnull !16, !align !134, !noundef !16 ; 2 uses
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @98, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7777
  %.not72 = icmp eq i64 %i.u, 0                   ; 3 uses
  br i1 %.not72, label %bb.h, label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs14kWLkQVSKO_14deltalake_core.exit

bb.h:                                             ; preds = %bb.g
  tail call void @_RNvMs1_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechE17extend_from_sliceCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %.val.i, ptr noalias noundef nonnull readonly captures(address, read_provenance) @92, i64 noundef range(i64 0, -9223372036854775808) 1), !noalias !7777
  br label %_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs14kWLkQVSKO_14deltalake_core.exit

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer14serialize_boolCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i, %bb.k, %.loopexit, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeSeq3endCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.peel.i, %.split.i.i, %.split2.i.i, %.loopexit66, %bb.e, %bb.d, %bb.b
  %.sroa.0.0 = phi ptr [ null, %bb.b ], [ null, %_RNvXs2_NtCseqDwI8vvjGQ_10serde_json3serINtB5_8CompoundQINtNtCs6Po7BT7Nknu_5alloc3vec3VechENtB5_16CompactFormatterENtNtCs1gOyXocuPRE_10serde_core3ser12SerializeSeq3endCs14kWLkQVSKO_14deltalake_core.exit.sink.split.i ], [ %i.g, %bb.d ], [ null, %bb.e ], [ null, %.split.i.i ], [ %.lcssa64, %.loopexit66 ], [ null, %.split2.i.i ], [ %i.p, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.peel.i ], [ null, %bb.k ], [ null, %.loopexit ], [ %i.s, %_RINvYNtNtCseqDwI8vvjGQ_10serde_json3ser16CompactFormatterNtB5_9Formatter17begin_array_valueQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEECs14kWLkQVSKO_14deltalake_core.exit.i.i ]
  ret ptr %.sroa.0.0

_RNvXs1_NtCseqDwI8vvjGQ_10serde_json3serQINtB5_10SerializerQINtNtCs6Po7BT7Nknu_5alloc3vec3VechEENtNtCs1gOyXocuPRE_10serde_core3ser10Serializer13serialize_mapCs14kWLkQVSKO_14deltalake_core.exit: ; preds = %bb.h, %bb.g
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !noundef !16 ; 3 uses
  %.not = icmp ne ptr %i.w, null                  ; 3 uses
  %i.x = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.y = load i64, ptr %i.x, align 8
  %.sroa.07.sroa.6.0 = zext i1 %.not to i64       ; 2 uses
  %.sroa.5.0 = select i1 %.not, i64 %i.u, i64 0
  %.sroa.07.sroa.5.sroa.6.0 = select i1 %.not, i64 %i.y, i64 undef ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store i64 %.sroa.07.sroa.6.0, ptr %i.a, align 8
  %.sroa.08.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr null, ptr %.sroa.08.sroa.5.0..sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.w, ptr %.sroa.08.sroa.5.sroa.5.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.5.sroa.6.0..sroa.08.sroa.5.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %.sroa.07.sroa.6.0, ptr %.sroa.08.sroa.6.0..sroa_idx, align 8
  %.sroa.08.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 40
  store ptr null, ptr %.sroa.08.sroa.7.0..sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  store ptr %i.w, ptr %.sroa.08.sroa.7.sroa.5.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 56
  store i64 %.sroa.07.sroa.5.sroa.6.0, ptr %.sroa.08.sroa.7.sroa.6.0..sroa.08.sroa.7.0..sroa_idx.sroa_idx, align 8
  %.sroa.59.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.a, i64 64
  store i64 %.sroa.5.0, ptr %.sroa.59.0..sroa_idx, align 8
  %i.z = call { ptr, ptr } @_RNvXsk_NtNtNtCs6Po7BT7Nknu_5alloc11collections5btree3mapINtB5_4IterNtNtBb_6string6StringNtNtCseqDwI8vvjGQ_10serde_json5value5ValueENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(72) %i.a) ; 2 uses
  %i.aa = extractvalue { ptr, ptr } %i.z, 0       ; 3 uses
end_hunk_0
