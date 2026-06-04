inline.NumInlined: 12053
inline.NumDeleted: 5555
begin_hunk_0_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_3zip3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEB1d_ENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB34_18LogicalPlanBuilder13join_detailedB21_B21_Es_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4R_8for_each4callTNtNtB38_4expr4ExprB5V_ENCINvMsj_B1i_INtB1i_3VecB5U_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core:bb.a
_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEECs14kWLkQVSKO_14deltalake_core.exit1.i.i.i.i: ; preds = %bb.c
  resume { ptr, i32 } %i.v

_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.b, %.lr.ph.i.i.i
  %i.y = phi ptr [ %i.u, %bb.b ], [ %i.o, %.lr.ph.i.i.i ] ; 2 uses
  %i.z = phi ptr [ %i.u, %bb.b ], [ %i.q, %.lr.ph.i.i.i ]
  %.sroa.012.0.i.i.i = phi i64 [ %.sroa.012.0.copyload13.i.i.i, %bb.b ], [ 4, %.lr.ph.i.i.i ] ; 2 uses
  %i.aa = icmp ne i64 %.sroa.012.0.i.i.i, 4
  tail call void @llvm.assume(i1 %i.aa)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.614.i.i.i, i64 96, i1 false), !noalias !5385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.614.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.618.i.i.i)
  %i.ab = icmp eq ptr %i.p, %.val14.i.i.i.i
  br i1 %i.ab, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %i.p, i64 104 ; 2 uses
  %.sroa.016.0.copyload17.i.i.i = load i64, ptr %i.p, align 8, !noalias !5387
  %.sroa.618.0..sroa_idx19.i.i.i = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.618.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.618.0..sroa_idx19.i.i.i, i64 96, i1 false), !noalias !5387
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.ad = phi ptr [ %i.ac, %bb.e ], [ %i.n, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  %i.ae = phi ptr [ %i.ac, %bb.e ], [ %i.p, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ]
  %.sroa.016.0.i.i.i = phi i64 [ %.sroa.016.0.copyload17.i.i.i, %bb.e ], [ 4, %_RNvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4nextCs14kWLkQVSKO_14deltalake_core.exit.i.i.i ] ; 2 uses
  %i.af = icmp ne i64 %.sroa.016.0.i.i.i, 4
  tail call void @llvm.assume(i1 %i.af)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.625.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.625.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.618.i.i.i, i64 96, i1 false), !noalias !5385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.618.i.i.i)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.023.sroa.4.i.i.i)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.023.sroa.4.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.4.i.i.i, i64 96, i1 false), !noalias !5385
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.4.i.i.i)
  %i.ag = getelementptr inbounds nuw [224 x i8], ptr %.sroa.6.0.copyload, i64 %i.r ; 6 uses
  store i64 5, ptr %i.ag, align 16, !noalias !5390
  %.sroa.43.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  store i64 %.sroa.012.0.i.i.i, ptr %.sroa.43.0..sroa_idx.i.i.i.i, align 8, !noalias !5398
  %.sroa.023.sroa.4.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.023.sroa.4.0..sroa.43.0..sroa_idx.i.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.023.sroa.4.i.i.i, i64 96, i1 false), !noalias !5398
  %.sroa.54.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 112
  store i64 5, ptr %.sroa.54.0..sroa_idx.i.i.i.i, align 16, !noalias !5390
  %.sroa.65.0..sroa_idx.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 120
  store i64 %.sroa.016.0.i.i.i, ptr %.sroa.65.0..sroa_idx.i.i.i.i, align 8, !noalias !5399
  %.sroa.625.104..sroa.65.0..sroa_idx.i.sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.ag, i64 128
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %.sroa.625.104..sroa.65.0..sroa_idx.i.sroa_idx.i.i.i, ptr noundef nonnull align 8 dereferenceable(96) %.sroa.625.i.i.i, i64 96, i1 false), !noalias !5399
  %i.ah = add i64 %i.r, 1                         ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.023.sroa.4.i.i.i)
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.625.i.i.i)
  %exitcond.not.i.i.i = icmp eq i64 %i.s, %.sroa.0.0.i.i.i.i.i
  br i1 %exitcond.not.i.i.i, label %._crit_edge.i.i.i.loopexit, label %.lr.ph.i.i.i

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3zipINtB5_3ZipINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnEBW_ENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldTB1K_B1K_ETNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprB3Q_EuNCINvMs_NtNtB3U_12logical_plan7builderNtB4N_18LogicalPlanBuilder13join_detailedB1K_B1K_Es_0NCINvNvB2E_8for_each4callB3P_NCINvMsj_B11_INtB11_3VecB3P_E14extend_trustedINtB3n_3MapBM_B4F_EE0E0E0ECs14kWLkQVSKO_14deltalake_core.exit: ; preds = %._crit_edge.i.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  call void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.ai), !noalias !5386
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_4skip4SkipINtNtNtBc_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringEENCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats24apply_min_max_for_columns1_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3D_8for_each4callB1F_NCINvMsj_NtB1J_3vecINtB4T_3VecB1F_E14extend_trustedBN_E0E0EB2r_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %.sroa.0.0.copyload = load ptr, ptr %0, align 8 ; 3 uses
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  %.sroa.4.0.copyload = load ptr, ptr %.sroa.4.0..sroa_idx, align 8 ; 4 uses
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  %.sroa.6.0.copyload = load i64, ptr %.sroa.6.0..sroa_idx, align 8 ; 2 uses
  %.sroa.01.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.7.0.copyload = load ptr, ptr %.sroa.7.0..sroa_idx, align 8
  %.not.i = icmp eq i64 %.sroa.6.0.copyload, 0
  br i1 %.not.i, label %._crit_edge.i, label %bb.i

._crit_edge.i:                                    ; preds = %bb.a, %bb.i
  %i.b = phi ptr [ %i.ac, %bb.i ], [ %.sroa.0.0.copyload, %bb.a ] ; 3 uses
  %i.c = icmp eq ptr %i.b, %.sroa.4.0.copyload
  br i1 %i.c, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1o_B1o_uNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats24apply_min_max_for_columns1_0NCINvNvB22_8for_each4callB1o_NCINvMsj_NtB1s_3vecINtB58_3VecB1o_E14extend_trustedINtB2L_3MapBN_B3d_EE0E0E0EB3l_.exit, label %bb.b

bb.b:                                             ; preds = %._crit_edge.i
  %i.d = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.e = ptrtoint ptr %i.b to i64
  %i.f = sub nuw i64 %i.d, %i.e
  %i.g = udiv exact i64 %i.f, 24
  %i.h = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 16 ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.g, %bb.b
  %.val15.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.t, %bb.g ] ; 3 uses
  %.sroa.01.0.i.i = phi i64 [ 0, %bb.b ], [ %i.u, %bb.g ] ; 2 uses
  %i.j = getelementptr inbounds nuw [24 x i8], ptr %i.b, i64 %.sroa.01.0.i.i ; 2 uses
  %i.k = getelementptr i8, ptr %i.j, i64 8
  %.val16.i.i = load ptr, ptr %i.k, align 8, !noalias !5400, !nonnull !4, !noundef !4
  %i.l = getelementptr i8, ptr %i.j, i64 16
  %.val17.i.i = load i64, ptr %i.l, align 8, !noalias !5400, !noundef !4 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5406
  invoke void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, i64 noundef %.val17.i.i, i1 noundef zeroext false, i64 noundef 1, i64 noundef 1)
          to label %.noexc.i.i unwind label %.loopexit.i.i, !noalias !5400

.noexc.i.i:                                       ; preds = %bb.c
  %i.m = load i64, ptr %i.a, align 8, !range !18, !noalias !5406, !noundef !4
  %i.n = trunc nuw i64 %i.m to i1
  %i.o = load i64, ptr %i.h, align 8, !range !62, !noalias !5406, !noundef !4 ; 3 uses
  br i1 %i.n, label %bb.d, label %bb.e, !prof !1174

bb.d:                                             ; preds = %.noexc.i.i
  %i.p = load i64, ptr %i.i, align 8, !noalias !5406
  invoke void @_RNvNtCs6Po7BT7Nknu_5alloc7raw_vec12handle_error(i64 noundef %i.o, i64 %i.p) #47
          to label %.noexc18.i.i unwind label %.loopexit.split-lp.i.i, !noalias !5400

.noexc18.i.i:                                     ; preds = %bb.d
  unreachable

bb.e:                                             ; preds = %.noexc.i.i
  %i.q = load ptr, ptr %i.i, align 8, !noalias !5406, !nonnull !4, !noundef !4 ; 2 uses
  %i.r = icmp ule i64 %.val17.i.i, %i.o
  tail call void @llvm.assume(i1 %i.r)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5406
  %.not.i.i.i.i = icmp eq i64 %.val17.i.i, 0
  br i1 %.not.i.i.i.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  tail call void @llvm.memcpy.p0.p0.i64(ptr nonnull align 1 %i.q, ptr nonnull readonly align 1 %.val16.i.i, i64 %.val17.i.i, i1 false), !noalias !5406
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %i.s = getelementptr inbounds nuw [24 x i8], ptr %.sroa.7.0.copyload, i64 %.val15.i.i ; 3 uses
  store i64 %i.o, ptr %i.s, align 8, !noalias !5411
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 8
  store ptr %i.q, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !5411
  %.sroa.53.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  store i64 %.val17.i.i, ptr %.sroa.53.0..sroa_idx.i.i.i, align 8, !noalias !5411
  %i.t = add i64 %.val15.i.i, 1                   ; 2 uses
  %i.u = add nuw i64 %.sroa.01.0.i.i, 1           ; 2 uses
  %i.v = icmp eq i64 %i.u, %i.g
  br i1 %i.v, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1o_B1o_uNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats24apply_min_max_for_columns1_0NCINvNvB22_8for_each4callB1o_NCINvMsj_NtB1s_3vecINtB58_3VecB1o_E14extend_trustedINtB2L_3MapBN_B3d_EE0E0E0EB3l_.exit, label %bb.c

.loopexit.i.i:                                    ; preds = %bb.c
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

.loopexit.split-lp.i.i:                           ; preds = %bb.d
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.h

bb.h:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.val15.i.i, ptr %.sroa.01.0.copyload, align 8, !noalias !5400
  resume { ptr, i32 } %lpad.phi.i.i

bb.i:                                             ; preds = %bb.a
  %i.w = add i64 %.sroa.6.0.copyload, -1          ; 2 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.4.0.copyload) ]
  %i.x = ptrtoint ptr %.sroa.4.0.copyload to i64
  %i.y = ptrtoint ptr %.sroa.0.0.copyload to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 24
  %.not.i.not.i = icmp ult i64 %i.w, %i.aa
  %i.ab = getelementptr inbounds nuw [24 x i8], ptr %.sroa.0.0.copyload, i64 %i.w
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 24
  br i1 %.not.i.not.i, label %._crit_edge.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1o_B1o_uNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats24apply_min_max_for_columns1_0NCINvNvB22_8for_each4callB1o_NCINvMsj_NtB1s_3vecINtB58_3VecB1o_E14extend_trustedINtB2L_3MapBN_B3d_EE0E0E0EB3l_.exit

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4skipINtB5_4SkipINtNtNtBb_5slice4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1o_B1o_uNCNvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats24apply_min_max_for_columns1_0NCINvNvB22_8for_each4callB1o_NCINvMsj_NtB1s_3vecINtB58_3VecB1o_E14extend_trustedINtB2L_3MapBN_B3d_EE0E0E0EB3l_.exit: ; preds = %bb.g, %bb.i, %._crit_edge.i
  %.sroa.5.0.copyload.sink = phi i64 [ %.sroa.5.0.copyload, %bb.i ], [ %.sroa.5.0.copyload, %._crit_edge.i ], [ %i.t, %bb.g ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.01.0.copyload) ]
  store i64 %.sroa.5.0.copyload.sink, ptr %.sroa.01.0.copyload, align 8, !noalias !5416
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_4take4TakeINtNtNtBc_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callB1G_NCINvMsj_NtB1K_3vecINtB5k_3VecB1G_E14extend_trustedBN_E0E0EB2y_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %0, i64 24, i1 false)
  %.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 4 uses
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.5.0.copyload = load i64, ptr %.sroa.5.0..sroa_idx, align 8 ; 3 uses
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.8.0.copyload = load ptr, ptr %.sroa.8.0..sroa_idx, align 8
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5417)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5420)
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !alias.scope !5423, !noalias !5424, !noundef !4
  %i.e = invoke noundef i64 @_RNvYINtNtNtCsbvkFyIu7lgC_4core5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringENtNtNtNtB9_4iter8adapters3zip27TrustedRandomAccessNoCoerce4sizeCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.b)
          to label %bb.b unwind label %.loopexit.split-lp.i.i, !noalias !5424

bb.b:                                             ; preds = %bb.a
  %.sroa.0.0.i.i.i = call noundef i64 @llvm.umin.i64(i64 %i.e, i64 %i.d) ; 2 uses
  %.not.i.i = icmp eq i64 %.sroa.0.0.i.i.i, 0
  br i1 %.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1o_B1p_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvB23_8for_each4callB1p_NCINvMsj_NtB1t_3vecINtB5z_3VecB1p_E14extend_trustedINtB2M_3MapBN_B3e_EE0E0E0EB3s_.exit, label %.lr.ph.i.i.preheader

.lr.ph.i.i.preheader:                             ; preds = %bb.b
  %.val10.i.i.pre = load ptr, ptr %i.b, align 8, !alias.scope !5423, !noalias !5424
  br label %.lr.ph.i.i

.loopexit.i.i:                                    ; preds = %.lr.ph.i.i
  %lpad.loopexit.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

.loopexit.split-lp.i.i:                           ; preds = %bb.a
  %lpad.loopexit.split-lp.i.i = landingpad { ptr, i32 }
          cleanup
  br label %bb.c

bb.c:                                             ; preds = %.loopexit.split-lp.i.i, %.loopexit.i.i
  %.val9.i.i = phi i64 [ %i.f, %.loopexit.i.i ], [ %.sroa.5.0.copyload, %.loopexit.split-lp.i.i ]
  %lpad.phi.i.i = phi { ptr, i32 } [ %lpad.loopexit.i.i, %.loopexit.i.i ], [ %lpad.loopexit.split-lp.i.i, %.loopexit.split-lp.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val9.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5424
  resume { ptr, i32 } %lpad.phi.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i
  %i.f = phi i64 [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i ], [ %.sroa.5.0.copyload, %.lr.ph.i.i.preheader ] ; 3 uses
  %.sroa.0.012.i.i = phi i64 [ %i.l, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i ], [ 0, %.lr.ph.i.i.preheader ] ; 2 uses
  %i.g = getelementptr inbounds nuw [8 x i8], ptr %.val10.i.i.pre, i64 %.sroa.0.012.i.i
  %.val11.i.i = load ptr, ptr %i.g, align 8, !noalias !5424, !nonnull !4, !align !8, !noundef !4 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !5427
  %i.h = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 8
  %i.i = load ptr, ptr %i.h, align 8, !noalias !5430, !nonnull !4, !noundef !4
  %i.j = getelementptr inbounds nuw i8, ptr %.val11.i.i, i64 16
  %i.k = load i64, ptr %i.j, align 8, !noalias !5430, !noundef !4
  invoke void @_RNvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next24redact_url_str_for_error(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.a, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.i, i64 noundef %i.k)
          to label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i unwind label %.loopexit.i.i, !noalias !5424

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i: ; preds = %.lr.ph.i.i
  %i.l = add nuw i64 %.sroa.0.012.i.i, 1          ; 2 uses
  %i.m = getelementptr inbounds nuw [24 x i8], ptr %.sroa.8.0.copyload, i64 %i.f
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.m, ptr noundef nonnull readonly align 8 dereferenceable(24) %i.a, i64 24, i1 false), !noalias !5433
  %i.n = add i64 %i.f, 1                          ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !5427
  %exitcond.not.i.i = icmp eq i64 %i.l, %.sroa.0.0.i.i.i
  br i1 %exitcond.not.i.i, label %_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1o_B1p_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvB23_8for_each4callB1p_NCINvMsj_NtB1t_3vecINtB5z_3VecB1p_E14extend_trustedINtB2M_3MapBN_B3e_EE0E0E0EB3s_.exit, label %.lr.ph.i.i

_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters4takeINtB5_4TakeINtNtNtBb_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldRB1o_B1p_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvB23_8for_each4callB1p_NCINvMsj_NtB1t_3vecINtB5z_3VecB1p_E14extend_trustedINtB2M_3MapBN_B3e_EE0E0E0EB3s_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i, %bb.b
  %.val7.i.i = phi i64 [ %.sroa.5.0.copyload, %bb.b ], [ %i.n, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldRRNtNtCs6Po7BT7Nknu_5alloc6string6StringBW_uNCNCNvNtNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider4next4scan12replay_files0s0_0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callBW_NCINvMsj_NtB10_3vecINtB4q_3VecBW_E14extend_trustedINtB4_3MapINtNtB6_4take4TakeINtNtNtBa_5slice4iter4IterBV_EEB1C_EE0E0E0B1Q_.exit.i.i ]
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.sroa.0.0.copyload) ]
  store i64 %.val7.i.i, ptr %.sroa.0.0.copyload, align 8, !noalias !5424
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_INtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBc_6option4IterB1L_EEB2v_ENCINvNtB1P_5utils19find_exprs_in_exprsNCINvB35_20find_aggregate_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1L_ENCINvNvMsg_NtB8_7flattenINtB5I_13FlattenCompatppE9iter_fold7flattenB4V_B4V_NCINvNvXsi_B5I_B5V_B4i_4fold7flattenINtNtB4Y_9into_iter8IntoIterB1L_EB4V_NCB32_s_0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.a, ptr noundef nonnull align 8 dereferenceable(48) %1, i64 48, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_INtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1u_EEB2e_ENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1u_ENCINvNtB7_3map8map_foldRB1u_B3m_B3m_NCINvNtB1y_5utils19find_exprs_in_exprsNCINvB4D_20find_aggregate_exprsBO_E0BO_E0NCINvNvMsg_NtB7_7flattenINtB60_13FlattenCompatppE9iter_fold7flattenB3m_B3m_NCINvNvXsi_B60_B6d_B2J_4fold7flattenINtNtB3p_9into_iter8IntoIterB1u_EB3m_NCB4A_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(48) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainIBY_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIBO_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB3o_DNtNtB1r_11engine_data10EngineDataEL_ENtNtB1r_5error5ErrorENtNtBc_6marker4SendEL_ENCNvMNtB1r_11log_segmentNtB6r_10LogSegment24create_checkpoint_streams_0EINtNtNtB2z_8adaptors3map14MapSpecialCaseIBY_INtNtNtBa_7sources4once4OnceB4B_EINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterB3n_EEEINtB7z_18MapSpecialCaseFnOkNCNCB6o_s_00EEB5E_ENCB6o_s0_0EEIBO_IB3o_IBO_IBO_IB3o_INtNtNtB3s_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcB_4Scan18scan_metadata_fromBaW_E0ENCBcu_s_0EENCINvMs6_NtB1r_4scanNtBes_4Scan18scan_metadata_fromBaE_E0EENCINvYNtNtBes_10log_replay22ScanLogReplayProcessorNtNtB1r_10log_replay18LogReplayProcessor20process_actions_iterBX_E0EB3X_8try_folduNCINvNvB3X_4find5checkIB4C_NtBes_12ScanMetadataB5E_EQNCBfi_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowBhK_EEBcH_(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef align 16 dereferenceable(704) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 544
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainIBP_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB7_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB2a_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB3k_DNtNtB1a_11engine_data10EngineDataEL_ENtNtB1a_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB1a_11log_segmentNtB6n_10LogSegment24create_checkpoint_streams_0EINtNtNtB2u_8adaptors3map14MapSpecialCaseIBP_INtNtNtB9_7sources4once4OnceB4x_EINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterB3j_EEEINtB7v_18MapSpecialCaseFnOkNCNCB6k_s_00EEB5A_ENCB6k_s0_0EEIB2a_IB3k_IB2a_IB2a_IB3k_INtNtNtB3o_3vec9into_iter8IntoIterNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEENCINvMs1_NtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot4scanNtBcA_4Scan18scan_metadata_fromBaV_E0ENCBct_s_0EENCINvMs6_NtB1a_4scanNtBer_4Scan18scan_metadata_fromBaB_E0EEB3T_8try_folduNCINvB2c_12map_try_foldIB4y_NtNtB1a_10log_replay12ActionsBatchB5A_EIB4y_NtBer_12ScanMetadataB5A_EuINtNtNtBb_3ops12control_flow11ControlFlowBgy_ENCINvYNtNtBer_10log_replay22ScanLogReplayProcessorNtBfX_18LogReplayProcessor20process_actions_iterBO_E0NCINvNvB3T_4find5checkBgy_QNCBhP_s_0E0E0Bh3_EBcG_(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 16 dereferenceable(544) %1, ptr noalias noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtB8_6copied6CopiedINtNtNtBc_5slice4iter4IterbEEINtNtNtBa_7sources8repeat_n7RepeatNbEENCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB2R_12BooleanArrayINtNtNtBa_6traits7collect12FromIteratorbE9from_iterBX_E0ENtNtB46_8iterator8Iterator4folduNCINvNvB4W_8for_each4callINtNtBc_6option6OptionbENCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6o_3VecB5R_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtB7_6copied6CopiedINtNtNtBb_5slice4iter4IterbEEINtNtNtB9_7sources8repeat_n7RepeatNbEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldbINtNtBb_6option6OptionbEuNCINvXsc_NtNtCs1N9T06jgEdt_11arrow_array5array13boolean_arrayNtB41_12BooleanArrayINtNtB2v_7collect12FromIteratorbE9from_iterBO_E0NCINvNvB2r_8for_each4callB3t_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6z_3VecB3t_E14extend_trustedINtB3a_3MapBO_B3S_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainINtNtNtBc_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBc_6option4IterB1H_EENCINvNtB1L_5utils19find_exprs_in_exprsNCINvB2W_17find_window_exprsBX_E0BX_E0ENtNtNtBa_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1H_ENCINvNvMsg_NtB8_7flattenINtB5w_13FlattenCompatppE9iter_fold7flattenB4J_B4J_NCINvNvXsi_B5w_B5J_B46_4fold7flattenINtNtB4M_9into_iter8IntoIterB1H_EB4J_NCB2T_s_0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %1, ptr noalias noundef align 8 captures(address) dead_on_return dereferenceable(24) %2, ptr noalias noundef nonnull %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 32, i1 false)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.c = load ptr, ptr %i.b, align 8, !nonnull !4, !noundef !4
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainINtNtNtBb_5slice4iter4IterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtNtBb_6option4IterB1q_EENtNtNtB9_6traits8iterator8Iterator4foldINtNtCs6Po7BT7Nknu_5alloc3vec3VecB1q_ENCINvNtB7_3map8map_foldRB1q_B3d_B3d_NCINvNtB1u_5utils19find_exprs_in_exprsNCINvB4u_17find_window_exprsBO_E0BO_E0NCINvNvMsg_NtB7_7flattenINtB5O_13FlattenCompatppE9iter_fold7flattenB3d_B3d_NCINvNvXsi_B5O_B61_B2A_4fold7flattenINtNtB3g_9into_iter8IntoIterB1q_EB3d_NCB4r_s_0E0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %2, ptr noalias noundef nonnull %3, ptr noalias noundef nonnull readonly captures(address, read_provenance) %i.c)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_5chain5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderIBO_INtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIBO_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtBa_6traits8iterator8Iteratorp4ItemINtNtBc_6result6ResultIB3k_DNtNtB1n_11engine_data10EngineDataEL_ENtNtB1n_5error5ErrorENtNtBc_6marker4SendEL_ENCNvMNtB1n_11log_segmentNtB6n_10LogSegment24create_checkpoint_streams_0EINtNtNtB2v_8adaptors3map14MapSpecialCaseIBY_INtNtNtBa_7sources4once4OnceB4x_EINtNtB8_7flatten7FlattenINtNtBc_6option8IntoIterB3j_EEEINtB7v_18MapSpecialCaseFnOkNCNCB6k_s_00EEB5A_ENCB6k_s0_0EENCINvYNtNtNtB1n_4scan10log_replay22ScanLogReplayProcessorNtNtB1n_10log_replay18LogReplayProcessor20process_actions_iterBX_E0EB3T_8try_folduNCINvNvB3T_4find5checkIB4y_NtBaG_12ScanMetadataB5A_EQNCBay_s_0E0INtNtNtBc_3ops12control_flow11ControlFlowBd7_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef align 16 dereferenceable(672) %1, ptr noalias noundef nonnull %2) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 512
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB5_5ChainNtNtNtCs8ulvy0Wg6Ot_12delta_kernel10log_reader6commit12CommitReaderINtNtB7_3map3MapINtNtCscVxtfYSVfE7_9itertools10flatten_ok9FlattenOkIB26_INtNtCs6Po7BT7Nknu_5alloc5boxed3BoxDNtNtNtB9_6traits8iterator8Iteratorp4ItemINtNtBb_6result6ResultIB3g_DNtNtB16_11engine_data10EngineDataEL_ENtNtB16_5error5ErrorENtNtBb_6marker4SendEL_ENCNvMNtB16_11log_segmentNtB6j_10LogSegment24create_checkpoint_streams_0EINtNtNtB2q_8adaptors3map14MapSpecialCaseIBP_INtNtNtB9_7sources4once4OnceB4t_EINtNtB7_7flatten7FlattenINtNtBb_6option8IntoIterB3f_EEEINtB7r_18MapSpecialCaseFnOkNCNCB6g_s_00EEB5w_ENCB6g_s0_0EEB3P_8try_folduNCINvB28_12map_try_foldIB4u_NtNtB16_10log_replay12ActionsBatchB5w_EIB4u_NtNtB16_4scan12ScanMetadataB5w_EuINtNtNtBb_3ops12control_flow11ControlFlowBbL_ENCINvYNtNtBbS_10log_replay22ScanLogReplayProcessorNtBba_18LogReplayProcessor20process_actions_iterBO_E0NCINvNvB3P_4find5checkBbL_QNCBd9_s_0E0E0Bcn_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([96 x i8]) align 16 captures(address) dereferenceable(96) %0, ptr noalias noundef nonnull align 16 dereferenceable(512) %1, ptr noalias noundef nonnull %2, ptr noalias noundef nonnull align 8 dereferenceable(152) %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtB8_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3C_18LogicalPlanBuilder15sort_with_limitNtNtB3G_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB5e_EE00EENCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB6m_8IndexSetB2C_EINtNtNtBa_6traits7collect6ExtendB2C_E6extendBX_E0ENtNtB7f_8iterator8Iterator4folduNCINvNvB7Y_8for_each4callTB2C_uENCINvXsb_NtB6o_3mapINtB99_8IndexMapB2C_uEIB7b_B8T_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(72) %0, ptr noalias noundef align 8 dereferenceable(72) %1) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtB7_6filter6FilterINtNtNtNtCs2pqxYH9ZEk8_3std11collections4hash3set8IntoIterRNtNtCsjhHCjzi9uUI_17datafusion_common6column6ColumnENCNCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB3l_18LogicalPlanBuilder15sort_with_limitNtNtB3p_4expr4SortINtNtCs6Po7BT7Nknu_5alloc3vec3VecB4X_EE00EENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB2l_TB2l_uEuNCINvXs8_NtCsbpG6u9KFjWn_8indexmap3setINtB7i_8IndexSetB2l_EINtNtB60_7collect6ExtendB2l_E6extendBP_E0NCINvNvB5W_8for_each4callB71_NCINvXsb_NtB7k_3mapINtB9n_8IndexMapB2l_uEIB87_B71_E6extendINtB6F_3MapBP_B79_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr noalias noundef nonnull align 8 dereferenceable(72) %1)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2U_7HashSetB1J_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1J_E6extendBX_E0ENtNtB4A_8iterator8Iterator4folduNCINvNvB5j_8for_each4callTB1J_uENCINvXs1i_NtB2W_3mapINtB6v_7HashMapB1J_uB3H_EIB4w_B6e_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCs8ulvy0Wg6Ot_12delta_kernel14table_features12TableFeatureEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3Q_7HashSetB1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2y_7collect6ExtendB1s_E6extendBP_E0NCINvNvB2u_8for_each4callB3z_NCINvXs1i_NtB3S_3mapINtB6J_7HashMapB1s_uB4D_EIB5s_B3z_E6extendINtB3d_3MapBP_B3H_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB2A_7HashSetB1J_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtNtBa_6traits7collect6ExtendB1J_E6extendBX_E0ENtNtB4g_8iterator8Iterator4folduNCINvNvB4Z_8for_each4callTB1J_uENCINvXs1i_NtB2C_3mapINtB6b_7HashMapB1J_uB3n_EIB4c_B5U_E6extendBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 {
bb.a:
  tail call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterNtNtCsjyY8HP3IvQ6_12object_store4path4PathEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_TB1s_uEuNCINvXs8_NtCs3gpiEk3WpjL_9hashbrown3setINtB3w_7HashSetB1s_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2e_7collect6ExtendB1s_E6extendBP_E0NCINvNvB2a_8for_each4callB3f_NCINvXs1i_NtB3y_3mapINtB6p_7HashMapB1s_uB4j_EIB58_B3f_E6extendINtB2T_3MapBP_B3n_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 dereferenceable(48) %2)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB2w_10ColumnNameINtNtNtBa_6traits7collect12FromIteratorB1J_E9from_iterBX_E0ENtNtB3Q_8iterator8Iterator4folduNCINvNvB4J_8for_each4callB1K_NCINvMsj_NtB1O_3vecINtB5R_3VecB1K_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %2) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %2, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterRNtNtCs6Po7BT7Nknu_5alloc6string6StringEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_B1t_uNCINvXs_NtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions12column_namesNtB3p_10ColumnNameINtNtB2b_7collect12FromIteratorB1s_E9from_iterBP_E0NCINvNvB27_8for_each4callB1t_NCINvMsj_NtB1x_3vecINtB65_3VecB1t_E14extend_trustedINtB2Q_3MapBP_B3h_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noundef nonnull %0, ptr noundef %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtBc_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20get_pushdown_filters0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB43_8for_each4callNtNtB1O_12table_source27TableProviderFilterPushDownNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB64_3VecB56_E14extend_trustedBN_E0E0EB2D_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x i8], align 8                ; 6 uses
  %i.b = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.f = load ptr, ptr %i.e, align 8, !nonnull !4, !align !8, !noundef !4
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load i64, ptr %i.g, align 8, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.i = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.f, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store i64 %i.h, ptr %i.j, align 8
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtBb_5slice4iter4IterRNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1s_NtNtB1x_12table_source27TableProviderFilterPushDownuNCNvNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion14table_provider20get_pushdown_filters0NCINvNvB2e_8for_each4callB3j_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6i_3VecB3j_E14extend_trustedINtB2X_3MapBP_B49_EE0E0E0EB4h_(ptr noundef nonnull %i.b, ptr noundef %i.d, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(40) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6cloned6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB39_13CreateBuilder12with_columnsB28_BX_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4J_8for_each4callB28_NCINvMsj_B1o_INtB1o_3VecB28_E14extend_trustedBN_E0E0EB3d_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6clonedINtB5_6ClonedINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterRNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEENtNtNtB9_6traits8iterator8Iterator4folduNCINvNtB7_3map8map_foldB1R_B1R_uNCINvMs1_NtNtCs14kWLkQVSKO_14deltalake_core10operations6createNtB42_13CreateBuilder12with_columnsB1R_BP_E0NCINvNvB2J_8for_each4callB1R_NCINvMsj_B17_INtB17_3VecB1R_E14extend_trustedINtB3s_3MapBP_B3T_EE0E0E0EB46_(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden noundef i64 @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtB8_6filter6FilterINtNtB8_10filter_map9FilterMapIB1k_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2G_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3A_s_0ENCB3A_s0_0ENCB3A_s1_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNvB5x_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0EB3I_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %0, i64 noundef %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [8 x i8], align 8                 ; 4 uses
  %i.b = alloca [8 x i8], align 8                 ; 4 uses
  %i.c = alloca [8 x i8], align 8                 ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 10 uses
  %i.e = alloca [40 x i8], align 8                ; 11 uses
  %i.f = alloca [48 x i8], align 8                ; 10 uses
  %i.g = alloca [8 x i8], align 8                 ; 4 uses
  %i.h = alloca [8 x i8], align 8                 ; 4 uses
  %i.i = alloca [72 x i8], align 8                ; 13 uses
  %i.j = alloca [8 x i8], align 8                 ; 5 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !5438)
  %i.k = load ptr, ptr %0, align 8, !alias.scope !5438, !nonnull !4, !noundef !4 ; 3 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !alias.scope !5438, !nonnull !4, !noundef !4 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.o = load ptr, ptr %i.n, align 8, !alias.scope !5438, !nonnull !4, !align !8, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.j), !noalias !5441
  store ptr %i.o, ptr %i.j, align 8, !noalias !5446
  %i.p = icmp eq ptr %i.k, %i.m
  br i1 %i.p, label %_RINvXs1_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters6filterINtB6_6FilterINtNtB8_10filter_map9FilterMapIB14_INtNtNtBc_5slice4iter4IterINtNtBc_6result6ResultNtCsjyY8HP3IvQ6_12object_store10ObjectMetaNtB2q_5ErrorEENCNCNvNtNtCs14kWLkQVSKO_14deltalake_core8protocol11checkpoints24cleanup_expired_logs_for00ENCB3k_s_0ENCB3k_s0_0ENtNtNtBa_6traits8iterator8Iterator4foldxNCINvNtB8_3map8map_foldTxxExxNCB3k_s1_0NCINvNvB56_6min_by4foldxNvYxNtNtBc_3cmp3Ord3cmpE0E0EB3s_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.q = ptrtoint ptr %i.m to i64
  %i.r = ptrtoint ptr %i.k to i64
  %i.s = sub nuw i64 %i.q, %i.r
  %i.t = udiv exact i64 %i.s, 96
  %.sroa.42.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %.sroa.53.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %.sroa.7.0..sroa_idx4.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %.sroa.9.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 32
  %.sroa.11.0..sroa_idx.i.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 40
  %i.u = getelementptr inbounds nuw i8, ptr %i.e, i64 24 ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %i.x = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 3 uses
  %.phi.trans.insert.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %i.e, i64 28
  %.sroa.6.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 16 ; 3 uses
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  %.sroa.76.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 56
  %.sroa.87.0..sroa_idx.i.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 64
  %i.aa = getelementptr inbounds nuw i8, ptr %i.i, i64 40
  %i.ab = getelementptr inbounds nuw i8, ptr %i.i, i64 44
  %i.ac = getelementptr inbounds nuw i8, ptr %i.i, i64 48
  %i.ad = getelementptr inbounds nuw i8, ptr %i.i, i64 24
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 32
  %i.af = getelementptr inbounds nuw i8, ptr %i.j, i64 8
end_hunk_0
begin_hunk_1_@_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB12_3VecB1L_EINtB34_17TreeNodeContainerB25_E12map_elementsQNCNCINvNvNtB34_8TreeNode12transform_up17transform_up_implB25_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter20replace_placeholders0E00E0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB36_5error15DataFusionErrorEEB7j_8try_foldB80_NCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0IB9d_B80_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbM_B80_EEB5X_:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_INtNtB2d_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB39_INtNtNtB2d_3ops12control_flow11ControlFlowIB4v_B39_zEB39_ENCINvXs3_NtB4Y_9tree_nodeINtB8_3VecBX_EINtB72_17TreeNodeContainerB1g_E12map_elementsQNCNCINvNvNtB72_8TreeNode12transform_up17transform_up_implB1g_RNCNvNtNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge6filter20replace_placeholders0E00E0NCINvXB3U_INtB3U_12GenericShuntINtB3S_3MapBI_B6T_EIB4v_NtNtB2d_7convert10InfallibleB4U_EEB25_8try_foldB39_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6D_E0E0B5X_EB9q_(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB12_3VecB1L_EINtB34_17TreeNodeContainerB25_E12map_elementsQNCNCNCINvYB25_NtB34_8TreeNode7rewriteINtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier10SimplifierNtNtB29_8simplify15SimplifyContextEE000E0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB36_5error15DataFusionErrorEEB7A_8try_foldB8h_NCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0IB9u_B8h_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBc3_B8h_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4, ptr noalias noundef align 8 dereferenceable(40) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_INtNtB2d_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB39_INtNtNtB2d_3ops12control_flow11ControlFlowIB4v_B39_zEB39_ENCINvXs3_NtB4Y_9tree_nodeINtB8_3VecBX_EINtB72_17TreeNodeContainerB1g_E12map_elementsQNCNCNCINvYB1g_NtB72_8TreeNode7rewriteINtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier10SimplifierNtNtB1k_8simplify15SimplifyContextEE000E0NCINvXB3U_INtB3U_12GenericShuntINtB3S_3MapBI_B6T_EIB4v_NtNtB2d_7convert10InfallibleB4U_EEB25_8try_foldB39_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6D_E0E0B5X_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB12_3VecB1L_EINtB34_17TreeNodeContainerB25_E12map_elementsQNCNCNCINvYB25_NtB34_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier13CanonicalizerE000E0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB36_5error15DataFusionErrorEEB73_8try_foldB7K_NCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0IB8X_B7K_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbw_B7K_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4, ptr noalias noundef align 8 dereferenceable(40) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_INtNtB2d_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB39_INtNtNtB2d_3ops12control_flow11ControlFlowIB4v_B39_zEB39_ENCINvXs3_NtB4Y_9tree_nodeINtB8_3VecBX_EINtB72_17TreeNodeContainerB1g_E12map_elementsQNCNCNCINvYB1g_NtB72_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier13CanonicalizerE000E0NCINvXB3U_INtB3U_12GenericShuntINtB3S_3MapBI_B6T_EIB4v_NtNtB2d_7convert10InfallibleB4U_EEB25_8try_foldB39_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6D_E0E0B5X_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB12_3VecB1L_EINtB34_17TreeNodeContainerB25_E12map_elementsQNCNCNCINvYB25_NtB34_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB36_5error15DataFusionErrorEEB74_8try_foldB7L_NCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0IB8Y_B7L_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbx_B7L_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4, ptr noalias noundef align 8 dereferenceable(40) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_INtNtB2d_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB39_INtNtNtB2d_3ops12control_flow11ControlFlowIB4v_B39_zEB39_ENCINvXs3_NtB4Y_9tree_nodeINtB8_3VecBX_EINtB72_17TreeNodeContainerB1g_E12map_elementsQNCNCNCINvYB1g_NtB72_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifier14ConstEvaluatorE000E0NCINvXB3U_INtB3U_12GenericShuntINtB3S_3MapBI_B6T_EIB4v_NtNtB2d_7convert10InfallibleB4U_EEB25_8try_foldB39_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6D_E0E0B5X_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCINvXs3_NtCsjhHCjzi9uUI_17datafusion_common9tree_nodeINtB12_3VecB1L_EINtB34_17TreeNodeContainerB25_E12map_elementsQNCNCNCINvYB25_NtB34_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtNtB36_5error15DataFusionErrorEEB7f_8try_foldB7W_NCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0IB99_B7W_zEE0INtNtNtBc_3ops12control_flow11ControlFlowBbI_B7W_EECs14kWLkQVSKO_14deltalake_core(ptr dead_on_unwind noalias noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef align 8 dereferenceable(8) %4, ptr noalias noundef align 8 dereferenceable(40) %5) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %4, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %5, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_INtNtB2d_6result6ResultBX_NtNtCsjhHCjzi9uUI_17datafusion_common5error15DataFusionErrorEB39_INtNtNtB2d_3ops12control_flow11ControlFlowIB4v_B39_zEB39_ENCINvXs3_NtB4Y_9tree_nodeINtB8_3VecBX_EINtB72_17TreeNodeContainerB1g_E12map_elementsQNCNCNCINvYB1g_NtB72_8TreeNode7rewriteNtNtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions17inlist_simplifier23ShortenInListSimplifierE000E0NCINvXB3U_INtB3U_12GenericShuntINtB3S_3MapBI_B6T_EIB4v_NtNtB2d_7convert10InfallibleB4U_EEB25_8try_foldB39_NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0B6D_E0E0B5X_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noundef %2, ptr noundef %3, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB33_10SimplifierNtNtB29_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB76_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(48) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_BX_B39_INtNtB2d_6result6ResultB39_zENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB5c_10SimplifierNtNtB1k_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4B_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull align 8 dereferenceable(16) %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTINtNtB14_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEB1M_EENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB33_10SimplifierNtNtB29_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups8_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1L_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1L_E0INtNtBc_6result6ResultB76_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTINtNtBa_5boxed3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEBY_EENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBX_ENCINvNtNtB2b_8adapters3map12map_try_foldBX_BX_B39_INtNtB2d_6result6ResultB39_zENCNvXs4_NtNtCscYNcALI69lp_20datafusion_optimizer20simplify_expressions15expr_simplifierINtB5c_10SimplifierNtNtB1k_8simplify15SimplifyContextENtNtCsjhHCjzi9uUI_17datafusion_common9tree_node16TreeNodeRewriter4f_ups8_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBX_E0E0B4B_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtBc_6option6OptionINtNtNtBc_3ops5range5RangeyEEEENCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtB12_3VecB1L_EB1L_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4Q_8for_each4callTNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlB1L_ENCINvNtCscVxtfYSVfE7_9itertools9group_map14into_group_mapBN_B5U_B1L_E0E0EB3c_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef align 8 dereferenceable(48) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.a, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtCseo6ZV82fEK1_3url3UrlINtNtCsbvkFyIu7lgC_4core6option6OptionINtNtNtB1r_3ops5range5RangeyEEEENtNtNtNtB1r_4iter6traits8iterator8Iterator4folduNCINvNtNtB2A_8adapters3map8map_foldBX_TNtNtCs4m0Tg8nAduX_20datafusion_execution12object_store14ObjectStoreUrlBX_EuNCINvNtNtNtCs14kWLkQVSKO_14deltalake_core16delta_datafusion6engine7storage14group_by_storeINtB8_3VecBX_EBX_E0NCINvNvB2u_8for_each4callB3S_NCINvNtCscVxtfYSVfE7_9itertools9group_map14into_group_mapINtB3l_3MapBI_B56_EB3T_BX_E0E0E0EB5h_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtB14_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s5_0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB46_8for_each4callB28_NCINvMsj_B12_INtB12_3VecB28_E14extend_trustedBN_E0E0EB35_(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(32) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 4 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtBa_6string6StringNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2a_8adapters3map8map_foldBX_B1j_uNCNCNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations5merge7execute00s5_0NCINvNvB24_8for_each4callB1j_NCINvMsj_B8_INtB8_3VecB1j_E14extend_trustedINtB3a_3MapBI_B3M_EE0E0E0EB3Y_(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTNtNtCsjyY8HP3IvQ6_12object_store4path4PathjNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataEENCNCNvMs3_NtNtNtCs14kWLkQVSKO_14deltalake_core10operations5write6writerNtB3C_15PartitionWriter5close00ENtNtNtBa_6traits8iterator8Iterator8try_folduNCINvXB8_INtB8_12GenericShuntBN_INtNtBc_6result6ResultNtNtBc_7convert10InfallibleNtB3C_10WriteErrorEEB57_8try_folduNCINvNvB57_12try_for_each4callNtNtNtNtB3I_6kernel6models7actions3AddINtNtNtBc_3ops12control_flow11ControlFlowB8a_ENcNtB8M_5Break0E0B8M_E0IB8N_B8M_EEB3I_(ptr dead_on_unwind noalias noundef writable sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noalias noundef align 8 dereferenceable(56) %1, ptr noalias noundef nonnull %2, ptr noalias noundef align 8 dereferenceable(32) %3) unnamed_addr #0 {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %2, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  store ptr %3, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store ptr %i.b, ptr %i.d, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTNtNtCsjyY8HP3IvQ6_12object_store4path4PathjNtNtNtCs4tdlwR1I4n2_7parquet4file8metadata15ParquetMetaDataEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_folduNCINvNtNtB2K_8adapters3map12map_try_foldBX_INtNtB2M_6result6ResultNtNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel6models7actions3AddNtNtNtNtB4V_10operations5write6writer10WriteErrorEuINtNtNtB2M_3ops12control_flow11ControlFlowIB6F_B4N_EENCNCNvMs3_B5R_NtB5R_15PartitionWriter5close00NCINvXB3Q_INtB3Q_12GenericShuntINtB3O_3MapBI_B7v_EIB4r_NtNtB2M_7convert10InfallibleB5P_EEB2E_8try_folduNCINvNvB2E_12try_for_each4callB4N_B7k_NcNtB7k_5Break0E0B7k_E0E0B6E_EB4V_(ptr noalias noundef nonnull sret([272 x i8]) align 8 captures(address) dereferenceable(272) %0, ptr noalias noundef nonnull align 8 dereferenceable(32) %1, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden { ptr, ptr } @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterTjINtB12_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0ENtNtNtBa_6traits8iterator8Iterator8try_foldINtNtB12_13in_place_drop11InPlaceDropB1N_ENCINvNtB12_16in_place_collect24write_in_place_with_dropB1N_E0INtNtBc_6result6ResultB57_zEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noundef %3) unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = tail call { ptr, ptr } @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterTjINtB8_3VecNtNtCs1N9T06jgEdt_11arrow_array12record_batch11RecordBatchEEENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator8try_foldINtNtB8_13in_place_drop11InPlaceDropBZ_ENCINvNtNtB2e_8adapters3map12map_try_foldBX_BZ_B3c_INtNtB2g_6result6ResultB3c_zENCNCNvNtCs5wg436RVUAP_24datafusion_physical_plan14execution_plan19collect_partitioned0s0_0NCINvNtB8_16in_place_collect24write_in_place_with_dropBZ_E0E0B4E_ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(32) %0, ptr noundef %1, ptr noundef %2, ptr noalias noundef nonnull %i.a, ptr noundef %3)
  ret { ptr, ptr } %i.b
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterjENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB1V_18LogicalPlanBuilder23scan_with_filters_innerNtNtB14_6string6StringE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB44_8for_each4callNtNtB1Z_4expr4ExprNCINvMsj_B12_INtB12_3VecB57_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !69, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtB2E_12logical_plan7builderNtB3s_18LogicalPlanBuilder23scan_with_filters_innerNtNtBa_6string6StringE0NCINvNvBZ_8for_each4callB2A_NCINvMsj_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3k_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterjENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB1V_18LogicalPlanBuilder23scan_with_filters_innerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4Q_8for_each4callNtNtB1Z_4expr4ExprNCINvMsj_B12_INtB12_3VecB5T_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !69, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtB2E_12logical_plan7builderNtB3s_18LogicalPlanBuilder23scan_with_filters_innerNtNtCsjhHCjzi9uUI_17datafusion_common15table_reference14TableReferenceE0NCINvNvBZ_8for_each4callB2A_NCINvMsj_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3k_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterjENCINvMs_NtNtCs8VI8w5SIoU4_15datafusion_expr12logical_plan7builderNtB1V_18LogicalPlanBuilder23scan_with_filters_innerReE0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB3K_8for_each4callNtNtB1Z_4expr4ExprNCINvMsj_B12_INtB12_3VecB4N_E14extend_trustedBN_E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(40) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(24) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [32 x i8], align 8                ; 5 uses
  %i.b = alloca [32 x i8], align 8                ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.b, ptr noundef nonnull align 8 dereferenceable(32) %0, i64 32, i1 false)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !nonnull !4, !align !69, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.a, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false)
  %i.e = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store ptr %i.d, ptr %i.e, align 8
  call void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterjENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB15_8adapters3map8map_foldjNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExpruNCINvMs_NtNtB2E_12logical_plan7builderNtB3s_18LogicalPlanBuilder23scan_with_filters_innerReE0NCINvNvBZ_8for_each4callB2A_NCINvMsj_B8_INtB8_3VecB2A_E14extend_trustedINtB25_3MapBI_B3k_EE0E0E0ECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.b, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b)
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addB1F_E0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4r_8for_each4callTB1F_INtNtBc_6option6OptionB1F_EENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6b_7HashMapB1F_B5z_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4v_7collect6ExtendB5u_E6extendBN_E0E0EB3r_(ptr noundef nonnull captures(address, read_provenance) %0, ptr noundef readnone captures(address) %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldTRBL_RB1n_ETBL_INtNtB2w_6option6OptionBL_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBL_E0NCINvNvB2o_8for_each4callB49_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6q_7HashMapBL_B4d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendB49_E6extendINtB3u_3MapB3_B4G_EE0E0E0EB4P_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBW_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5k_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4o_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3f_.exit.i, %.lr.ph.i
  %.sroa.0.010.i = phi ptr [ %0, %.lr.ph.i ], [ %i.g, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBW_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5k_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4o_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3f_.exit.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !15768)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !15771)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15774
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !15780
  %i.i = load i64, ptr %.sroa.0.010.i, align 16, !range !3213, !alias.scope !15781, !noalias !15782, !noundef !4
  %i.j = icmp eq i64 %i.i, -9223372036854775795
  br i1 %i.j, label %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addNtNtCs6Po7BT7Nknu_5alloc6string6StringE0B8_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15774
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %.sroa.0.010.i)
          to label %bb.e unwind label %bb.d, !noalias !15783

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #43
          to label %common.resume.i.i unwind label %bb.f, !noalias !15783

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.d, align 8, !noalias !15774
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !15784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15774
  br label %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addNtNtCs6Po7BT7Nknu_5alloc6string6StringE0B8_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !15783
  unreachable

common.resume.i.i:                                ; preds = %bb.h, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addNtNtCs6Po7BT7Nknu_5alloc6string6StringE0B8_.exit.i.i: ; preds = %bb.e, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.e ], [ -9223372036854775808, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15785
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !15784
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15774
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15785
  store i64 %.sroa.0.0.i.i.i, ptr %i.b, align 8, !noalias !15784
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !15784
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15788
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBN_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !15791
  %i.m = load i64, ptr %i.a, align 8, !range !79, !alias.scope !15792, !noalias !15788, !noundef !4
  %switch.i.i.i.i.i = icmp slt i64 %i.m, -9223372036854775806
  br i1 %switch.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBW_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5k_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4o_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3f_.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addNtNtCs6Po7BT7Nknu_5alloc6string6StringE0B8_.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !15791

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.i, !noalias !15791

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !15791
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !15791
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBW_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5k_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4o_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3f_.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBW_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5k_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4o_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3f_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %_RNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addNtNtCs6Po7BT7Nknu_5alloc6string6StringE0B8_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15788
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15785
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15785
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.p = icmp eq ptr %i.g, %1
  br i1 %i.p, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldTRBL_RB1n_ETBL_INtNtB2w_6option6OptionBL_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBL_E0NCINvNvB2o_8for_each4callB49_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6q_7HashMapBL_B4d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendB49_E6extendINtB3u_3MapB3_B4G_EE0E0E0EB4P_.exit, label %bb.b

_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldTRBL_RB1n_ETBL_INtNtB2w_6option6OptionBL_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBL_E0NCINvNvB2o_8for_each4callB49_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6q_7HashMapBL_B4d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendB49_E6extendINtB3u_3MapB3_B4G_EE0E0E0EB4P_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCINvNtNtCs14kWLkQVSKO_14deltalake_core6writer5stats10create_addBW_E0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5k_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4o_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3f_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvNvB4w_8for_each4callTB1F_INtNtBc_6option6OptionB1F_EENCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6g_7HashMapB1F_B5E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4A_7collect6ExtendB5z_E6extendBN_E0E0EB3q_(ptr noundef nonnull captures(address, read_provenance) %0, ptr noundef readnone captures(address) %1, ptr noalias noundef align 8 dereferenceable(48) %2) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 7 uses
  %i.b = alloca [24 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [24 x i8], align 8                ; 5 uses
  %.sroa.5.i.i.i = alloca [16 x i8], align 8      ; 4 uses
  %i.e = alloca [24 x i8], align 8                ; 5 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.f = icmp eq ptr %0, %1
  br i1 %i.f, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldTRBL_RB1n_ETBL_INtNtB2w_6option6OptionBL_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvB2o_8for_each4callB49_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6w_7HashMapBL_B4d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendB49_E6extendINtB3u_3MapB3_B4G_EE0E0E0EB4O_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.5.0..sroa_idx2.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %.sroa.6.24..sroa_idx.i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5q_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4u_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3e_.exit.i, %.lr.ph.i
  %.sroa.0.010.i = phi ptr [ %0, %.lr.ph.i ], [ %i.g, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5q_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4u_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3e_.exit.i ] ; 4 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 128 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.0.010.i, i64 104
  call void @llvm.experimental.noalias.scope.decl(metadata !15795)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.5.i.i.i)
  call void @llvm.experimental.noalias.scope.decl(metadata !15798)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15801
  call void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.h), !noalias !15807
  %i.i = load i64, ptr %.sroa.0.010.i, align 16, !range !3213, !alias.scope !15808, !noalias !15809, !noundef !4
  %i.j = icmp eq i64 %i.i, -9223372036854775795
  br i1 %i.j, label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0B7_.exit.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15801
  invoke void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt9serialize(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.d, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %.sroa.0.010.i)
          to label %bb.e unwind label %bb.d, !noalias !15810

bb.d:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #43
          to label %common.resume.i.i unwind label %bb.f, !noalias !15810

bb.e:                                             ; preds = %bb.c
  %.sroa.0.0.copyload1.i.i.i = load i64, ptr %i.d, align 8, !noalias !15801
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.0..sroa_idx2.i.i.i, i64 16, i1 false), !noalias !15811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15801
  br label %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0B7_.exit.i.i

bb.f:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !15810
  unreachable

common.resume.i.i:                                ; preds = %bb.h, %bb.d
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.k, %bb.d ], [ %i.n, %bb.h ]
  resume { ptr, i32 } %common.resume.op.i.i

_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0B7_.exit.i.i: ; preds = %bb.e, %bb.b
  %.sroa.0.0.i.i.i = phi i64 [ %.sroa.0.0.copyload1.i.i.i, %bb.e ], [ -9223372036854775808, %bb.b ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15812
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %i.e, i64 24, i1 false), !noalias !15811
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15801
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15812
  store i64 %.sroa.0.0.i.i.i, ptr %i.b, align 8, !noalias !15811
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.6.24..sroa_idx.i.i, ptr noundef nonnull align 8 dereferenceable(16) %.sroa.5.i.i.i, i64 16, i1 false), !noalias !15811
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !15815
  call void @_RNvMs1_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5_7HashMapNtNtCs6Po7BT7Nknu_5alloc6string6StringINtNtCsbvkFyIu7lgC_4core6option6OptionBN_ENtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateE6insertCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.a, ptr noalias noundef nonnull align 8 dereferenceable(48) %2, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 captures(address) dereferenceable(24) %i.b), !noalias !15818
  %i.m = load i64, ptr %i.a, align 8, !range !79, !alias.scope !15819, !noalias !15815, !noundef !4
  %switch.i.i.i.i.i = icmp slt i64 %i.m, -9223372036854775806
  br i1 %switch.i.i.i.i.i, label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5q_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4u_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3e_.exit.i, label %bb.g

bb.g:                                             ; preds = %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0B7_.exit.i.i
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i unwind label %bb.h, !noalias !15818

bb.h:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a)
          to label %common.resume.i.i unwind label %bb.i, !noalias !15818

bb.i:                                             ; preds = %bb.h
  %i.o = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !15818
  unreachable

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i: ; preds = %bb.g
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.a), !noalias !15818
  br label %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5q_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4u_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3e_.exit.i

_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5q_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4u_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3e_.exit.i: ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core.exit.i.i.i.i.i.i, %_RNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0B7_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !15815
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !15812
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !15812
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5.i.i.i)
  %i.p = icmp eq ptr %i.g, %1
  br i1 %i.p, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldTRBL_RB1n_ETBL_INtNtB2w_6option6OptionBL_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvB2o_8for_each4callB49_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6w_7HashMapBL_B4d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendB49_E6extendINtB3u_3MapB3_B4G_EE0E0E0EB4O_.exit, label %bb.b

_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldTRBL_RB1n_ETBL_INtNtB2w_6option6OptionBL_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvB2o_8for_each4callB49_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB6w_7HashMapBL_B4d_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB2s_7collect6ExtendB49_E6extendINtB3u_3MapB3_B4G_EE0E0E0EB4O_.exit: ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarETBW_INtNtBa_6option6OptionBW_EEuNCNvNtNtCs14kWLkQVSKO_14deltalake_core10operations8optimize13create_remove0NCINvNvNtNtNtB8_6traits8iterator8Iterator8for_each4callB2A_NCINvXs1i_NtCs3gpiEk3WpjL_9hashbrown3mapINtB5q_7HashMapBW_B2E_NtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateEINtNtB4u_7collect6ExtendB2A_E6extendINtB4_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBW_B1z_EB36_EE0E0E0B3e_.exit.i, %bb.a
  ret void
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RINvXs0_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters3mapINtB6_3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtB12_8IndexMapB1F_B2h_ENtB3n_13PartitionsExt19hive_partition_path0ENtNtNtBa_6traits8iterator8Iterator4folduNCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB6g_15IntersperseWithBN_INtB6g_24IntersperseElementSimpleB1F_EEB5t_4folduNCINvNvB5t_8for_each4callB1F_NCINvXsk_B1H_B1F_INtNtB5x_7collect6ExtendB1F_E6extendB6T_E0E0Es_0EB3t_(ptr noundef nonnull %0, ptr noundef readnone captures(address) %1, ptr noalias noundef readonly align 8 captures(none) dereferenceable(8) %2, ptr noalias noundef align 8 dereferenceable(24) %3) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 9 uses
  %i.b = alloca [24 x i8], align 8                ; 9 uses
  %i.c = alloca [24 x i8], align 8                ; 4 uses
  %i.d = alloca [32 x i8], align 8                ; 7 uses
  %i.e = alloca [24 x i8], align 8                ; 8 uses
  %i.f = alloca [8 x i8], align 8                 ; 4 uses
  %i.g = alloca [24 x i8], align 8                ; 5 uses
  %i.h = alloca [24 x i8], align 8                ; 4 uses
  tail call void @llvm.experimental.noalias.scope.decl(metadata !15822)
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %1) ]
  %i.i = icmp eq ptr %0, %1
  br i1 %i.i, label %_RINvYINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNtNtB2u_8adapters3map8map_foldTRBL_RB1n_EBL_uNCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtB8_8IndexMapBL_B1n_ENtB4i_13PartitionsExt19hive_partition_path0NCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB6u_15IntersperseWithINtB3u_3MapB3_B4d_EINtB6u_24IntersperseElementSimpleBL_EEB2o_4folduNCINvNvB2o_8for_each4callBL_NCINvXsk_BN_BL_INtNtB2s_7collect6ExtendBL_E6extendB77_E0E0Es_0E0EB4o_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.a
  %.sroa.42.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %.sroa.46.0..sroa_idx.i.i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %.val4.i.i.i = load ptr, ptr %2, align 8, !alias.scope !15822, !noalias !15825, !nonnull !4, !align !8 ; 4 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.m = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 16 ; 6 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.val4.i.i.i, i64 8 ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  br label %bb.b

bb.b:                                             ; preds = %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEBW_uNCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBW_B1z_ENtB2J_13PartitionsExt19hive_partition_path0NCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB5l_15IntersperseWithINtB4_3MapINtNtB3L_4iter4IterBW_B1z_EB2E_EINtB5l_24IntersperseElementSimpleBW_EENtNtNtB8_6traits8iterator8Iterator4folduNCINvNvB7E_8for_each4callBW_NCINvXsk_BY_BW_INtNtB7I_7collect6ExtendBW_E6extendB5Y_E0E0Es_0E0B2P_.exit.i, %.lr.ph.i
  %.sroa.0.011.i = phi ptr [ %0, %.lr.ph.i ], [ %i.q, %_RNCINvNtNtNtCsbvkFyIu7lgC_4core4iter8adapters3map8map_foldTRNtNtCs6Po7BT7Nknu_5alloc6string6StringRNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarEBW_uNCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapBW_B1z_ENtB2J_13PartitionsExt19hive_partition_path0NCINvXs0_NtCscVxtfYSVfE7_9itertools11intersperseINtB5l_15IntersperseWithINtB4_3MapINtNtB3L_4iter4IterBW_B1z_EB2E_EINtB5l_24IntersperseElementSimpleBW_EENtNtNtB8_6traits8iterator8Iterator4folduNCINvNvB7E_8for_each4callBW_NCINvXsk_BY_BW_INtNtB7I_7collect6ExtendBW_E6extendB5Y_E0E0Es_0E0B2P_.exit.i ] ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 128 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.sroa.0.011.i, i64 104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !15827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !15827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !15831
  store ptr %i.r, ptr %i.f, align 8, !noalias !15831
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !15831
  call void @_RNvXNtNtCs14kWLkQVSKO_14deltalake_core6kernel7scalarsNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarNtB2_9ScalarExt17serialize_encoded(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.e, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(96) %.sroa.0.011.i), !noalias !15836
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !15831
  store ptr %i.f, ptr %i.d, align 8, !noalias !15831
  store ptr @_RNvXs1i_NtCsbvkFyIu7lgC_4core3fmtRNtNtCs6Po7BT7Nknu_5alloc6string6StringNtB6_7Display3fmtCs14kWLkQVSKO_14deltalake_core, ptr %.sroa.42.0..sroa_idx.i.i.i, align 8, !noalias !15831
  store ptr %i.e, ptr %i.j, align 8, !noalias !15831
  store ptr @_RNvXsq_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core3fmt7Display3fmt, ptr %.sroa.46.0..sroa_idx.i.i.i, align 8, !noalias !15831
  invoke void @_RNvNvNtCs6Po7BT7Nknu_5alloc3fmt6format12format_inner(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.g, ptr noundef nonnull @301, ptr noundef nonnull %i.d)
          to label %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i unwind label %bb.c, !noalias !15822

bb.c:                                             ; preds = %bb.b
  %i.s = landingpad { ptr, i32 }
          cleanup
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e) #43
          to label %common.resume.i.i unwind label %bb.f, !noalias !15836

_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i: ; preds = %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !15831
  invoke void @_RNvXso_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %_RNCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtB4_13PartitionsExt19hive_partition_path0Ba_.exit.i.i unwind label %bb.d, !noalias !15836

bb.d:                                             ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  %i.t = landingpad { ptr, i32 }
          cleanup
  invoke void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e)
          to label %common.resume.i.i unwind label %bb.e, !noalias !15836

bb.e:                                             ; preds = %bb.d
  %i.u = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !15836
  unreachable

common.resume.i.i:                                ; preds = %bb.v, %bb.s, %bb.p, %bb.d, %bb.c
  %common.resume.op.i.i = phi { ptr, i32 } [ %i.s, %bb.c ], [ %i.t, %bb.d ], [ %.pn.ph.i.i.i, %bb.v ], [ %i.al, %bb.p ], [ %i.as, %bb.s ]
  resume { ptr, i32 } %common.resume.op.i.i

bb.f:                                             ; preds = %bb.c
  %i.v = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !15836
  unreachable

_RNCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtB4_13PartitionsExt19hive_partition_path0Ba_.exit.i.i: ; preds = %_RINvMNtCsbvkFyIu7lgC_4core6optionINtB3_6OptionReE11map_or_elseNtNtCs6Po7BT7Nknu_5alloc6string6StringNCNvNtB12_3fmt6format0NvYeNtNtB12_6borrow7ToOwned8to_ownedECs14kWLkQVSKO_14deltalake_core.exit.i.i.i
  call void @_RNvXs1_NtCs6Po7BT7Nknu_5alloc7raw_vecINtB5_6RawVechENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.e), !noalias !15836
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !15831
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !15831
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.h, ptr noundef nonnull align 8 dereferenceable(24) %i.g, i64 24, i1 false), !noalias !15827
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !15837
  invoke void @_RNvXNtCscVxtfYSVfE7_9itertools11intersperseINtB2_24IntersperseElementSimpleNtNtCs6Po7BT7Nknu_5alloc6string6StringEINtB2_18IntersperseElementB1b_E8generateCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias noundef nonnull align 8 dereferenceable(24) %3)
          to label %bb.h unwind label %bb.g, !noalias !15840

bb.g:                                             ; preds = %_RNCINvXsk_NtCs6Po7BT7Nknu_5alloc6stringNtB8_6StringINtNtNtNtCsbvkFyIu7lgC_4core4iter6traits7collect6ExtendBB_E6extendINtNtCscVxtfYSVfE7_9itertools11intersperse15IntersperseWithINtNtNtBU_8adapters3map3MapINtNtNtCsbpG6u9KFjWn_8indexmap3map4iter4IterBB_NtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtB3k_8IndexMapBB_B40_ENtB56_13PartitionsExt19hive_partition_path0EINtB1U_24IntersperseElementSimpleBB_EEE0B5c_.exit.i.i.i.i, %_RNCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtB4_13PartitionsExt19hive_partition_path0Ba_.exit.i.i
  %i.w = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.h:                                             ; preds = %_RNCNvXNtNtNtCs14kWLkQVSKO_14deltalake_core6kernel8snapshot8log_dataINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtNtCs8ulvy0Wg6Ot_12delta_kernel11expressions7scalars6ScalarENtB4_13PartitionsExt19hive_partition_path0Ba_.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !15841
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !15837
  call void @llvm.experimental.noalias.scope.decl(metadata !15844)
end_hunk_1
begin_hunk_2_@_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone:bb.a
  %.not140 = icmp eq i64 %i.blj, 69
  br i1 %.not140, label %bb.aar, label %bb.aaq

bb.aan:                                           ; preds = %bb.aas, %bb.aao
  %.pn141 = phi { ptr, i32 } [ %i.blr, %bb.aas ], [ %i.blk, %bb.aao ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast10ObjectNameECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cs) #43
          to label %bb.aai unwind label %bb.ee

bb.aao:                                           ; preds = %bb.aak
  %i.blk = landingpad { ptr, i32 }
          cleanup
  br label %bb.aan

bb.aap:                                           ; preds = %bb.aak
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.cr, ptr noundef nonnull align 8 dereferenceable(24) %i.f, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f)
  br label %bb.aam

bb.aaq:                                           ; preds = %bb.aam
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e)
  invoke fastcc void @_RNvXslb_NtCs4lawaffTVVK_9sqlparser3astNtB6_18HiveLoadDataFormatNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(656) %i.e, ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(656) %i.bli)
          to label %bb.aat unwind label %bb.aas

bb.aar:                                           ; preds = %bb.aam, %bb.aat
  %.sroa.0132.0 = phi i64 [ %.sroa.0132.0.copyload133, %bb.aat ], [ 69, %bb.aam ]
  %i.bll = getelementptr inbounds nuw i8, ptr %0, i64 736
  store i8 %i.ahd, ptr %i.bll, align 8
  %i.blm = getelementptr inbounds nuw i8, ptr %0, i64 664
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.blm, ptr noundef nonnull align 8 dereferenceable(24) %i.ct, i64 24, i1 false)
  %i.bln = getelementptr inbounds nuw i8, ptr %0, i64 737
  store i8 %i.ahf, ptr %i.bln, align 1
  %i.blo = getelementptr inbounds nuw i8, ptr %0, i64 688
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.blo, ptr noundef nonnull align 8 dereferenceable(24) %i.cs, i64 24, i1 false)
  %i.blp = getelementptr inbounds nuw i8, ptr %0, i64 712
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.blp, ptr noundef nonnull align 8 dereferenceable(24) %i.cr, i64 24, i1 false)
  %i.blq = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %.sroa.0132.0, ptr %i.blq, align 8
  %.sroa.5134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134.0..sroa_idx, ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134, i64 648, i1 false)
  store i64 110, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %.sroa.5134)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cr)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cs)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ct)
  br label %bb.ed

bb.aas:                                           ; preds = %bb.aaq
  %i.blr = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.cr) #43
          to label %bb.aan unwind label %bb.ee

bb.aat:                                           ; preds = %bb.aaq
  %.sroa.0132.0.copyload133 = load i64, ptr %i.e, align 8
  %.sroa.5134.0..sroa_idx135 = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134, ptr noundef nonnull align 8 dereferenceable(648) %.sroa.5134.0..sroa_idx135, i64 648, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e)
  br label %bb.aar

bb.aau:                                           ; preds = %bb.aax, %bb.aav
  %.pn.pn.pn = phi { ptr, i32 } [ %.pn.pn, %bb.aax ], [ %i.bls, %bb.aav ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.cn) #43
          to label %bb.ef unwind label %bb.ee

bb.aav:                                           ; preds = %bb.do
  %i.bls = landingpad { ptr, i32 }
          cleanup
  br label %bb.aau

bb.aaw:                                           ; preds = %bb.do
  %i.blt = getelementptr inbounds nuw i8, ptr %1, i64 72
  store ptr %i.ahr, ptr %i.cm, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cl)
  %i.blu = invoke fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.blt)
          to label %bb.aaz unwind label %bb.aay   ; 2 uses

bb.aax:                                           ; preds = %bb.aba, %bb.aay
  %.pn.pn = phi { ptr, i32 } [ %.pn, %bb.aba ], [ %i.blv, %bb.aay ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.cm) #43
          to label %bb.aau unwind label %bb.ee

bb.aay:                                           ; preds = %bb.aaw
  %i.blv = landingpad { ptr, i32 }
          cleanup
  br label %bb.aax

bb.aaz:                                           ; preds = %bb.aaw
  store ptr %i.blu, ptr %i.cl, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.ck)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.ck, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.aho)
          to label %bb.abc unwind label %bb.abb

bb.aba:                                           ; preds = %bb.abd, %bb.abb
  %.pn = phi { ptr, i32 } [ %i.blx, %bb.abd ], [ %i.blw, %bb.abb ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc5boxed3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(8) %i.cl) #43
          to label %bb.aax unwind label %bb.ee

bb.abb:                                           ; preds = %bb.aaz
  %i.blw = landingpad { ptr, i32 }
          cleanup
  br label %bb.aba

bb.abc:                                           ; preds = %bb.aaz
  call void @llvm.lifetime.start.p0(ptr nonnull %i.cj)
  invoke void @_RNvXsa_NtCs6Po7BT7Nknu_5alloc3vecINtB5_3VecNtNtCs4lawaffTVVK_9sqlparser3ast15RaisErrorOptionENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.cj, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.ahp)
          to label %bb.abe unwind label %bb.abd

bb.abd:                                           ; preds = %bb.abc
  %i.blx = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs4lawaffTVVK_9sqlparser3ast4ExprEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(24) %i.ck) #43
          to label %bb.aba unwind label %bb.ee

bb.abe:                                           ; preds = %bb.abc
  %i.bly = getelementptr inbounds nuw i8, ptr %0, i64 56
  store ptr %i.ahq, ptr %i.bly, align 8
  %i.blz = getelementptr inbounds nuw i8, ptr %0, i64 64
  store ptr %i.ahr, ptr %i.blz, align 8
  %i.bma = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %i.blu, ptr %i.bma, align 8
  %i.bmb = getelementptr inbounds nuw i8, ptr %0, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmb, ptr noundef nonnull align 8 dereferenceable(24) %i.ck, i64 24, i1 false)
  %i.bmc = getelementptr inbounds nuw i8, ptr %0, i64 32
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %i.bmc, ptr noundef nonnull align 8 dereferenceable(24) %i.cj, i64 24, i1 false)
  store i64 114, ptr %0, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cj)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.ck)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cl)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cm)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.cn)
  br label %bb.ed
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23898
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(328) %i.c) #46
          to label %bb.b unwind label %bb.c, !inline_history !23901

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.b, ptr noundef nonnull align 8 dereferenceable(328) %i.a, i64 328, i1 false), !noalias !23898
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23898
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 328, i64 noundef 8) #42
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [2688 x i8], align 8              ; 4 uses
  %i.b = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs4lawaffTVVK_9sqlparser3ast9StatementE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23902
  invoke fastcc void @_RNvXsc5_NtCs4lawaffTVVK_9sqlparser3astNtB6_9StatementNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(2688) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(2688) %i.c) #46
          to label %bb.b unwind label %bb.c, !inline_history !23905

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(2688) %i.b, ptr noundef nonnull align 8 dereferenceable(2688) %i.a, i64 2688, i1 false), !noalias !23902
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23902
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 2688, i64 noundef 8) #42
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [112 x i8], align 16              ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23906
  invoke fastcc void @_RNvXsV_NtCs8VI8w5SIoU4_15datafusion_expr4exprNtB5_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(112) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(112) %i.c) #46
          to label %bb.b unwind label %bb.c, !inline_history !23909

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.b, ptr noundef nonnull align 16 dereferenceable(112) %i.a, i64 112, i1 false), !noalias !23906
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23906
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 112, i64 noundef 16) #42
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr captures(address, read_provenance) %.0.val) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [48 x i8], align 8                ; 4 uses
  %i.b = alloca [72 x i8], align 8                ; 5 uses
  %i.c = alloca [24 x i8], align 8                ; 5 uses
  %i.d = alloca [144 x i8], align 8               ; 6 uses
  %i.e = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema10StructTypeE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %.0.val) ]
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23910
  invoke void @_RNvXs4_NtCs6Po7BT7Nknu_5alloc6stringNtB5_6StringNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(144) %.0.val)
          to label %.noexc unwind label %bb.g

.noexc:                                           ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !23910
  %i.f = getelementptr inbounds nuw i8, ptr %.0.val, i64 24
  invoke void @_RNvXNtCsbpG6u9KFjWn_8indexmap3mapINtB2_8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([72 x i8]) align 8 captures(none) dereferenceable(72) %i.b, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(72) %i.f)
          to label %bb.d unwind label %bb.c, !noalias !23916

bb.b:                                             ; preds = %bb.e, %bb.c
  %.pn.i.i = phi { ptr, i32 } [ %i.i, %bb.e ], [ %i.g, %bb.c ]
  invoke void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs6Po7BT7Nknu_5alloc6string6StringECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(24) %i.c) #43
          to label %bb.i unwind label %bb.f, !noalias !23916

bb.c:                                             ; preds = %.noexc
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.b

bb.d:                                             ; preds = %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23910
  %i.h = getelementptr inbounds nuw i8, ptr %.0.val, i64 96
  invoke void @_RNvXNtCs3gpiEk3WpjL_9hashbrown3mapINtB2_7HashMapNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema18MetadataColumnSpecjNtNtNtCs2pqxYH9ZEk8_3std4hash6random11RandomStateENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull sret([48 x i8]) align 8 captures(none) dereferenceable(48) %i.a, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(48) %i.h)
          to label %bb.h unwind label %bb.e, !noalias !23916

bb.e:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCsbpG6u9KFjWn_8indexmap3map8IndexMapNtNtCs6Po7BT7Nknu_5alloc6string6StringNtNtCs8ulvy0Wg6Ot_12delta_kernel6schema11StructFieldEECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef align 8 dereferenceable(72) %i.b) #43
          to label %bb.b unwind label %bb.f, !noalias !23916

bb.f:                                             ; preds = %bb.e, %bb.b
  %i.j = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #40, !noalias !23916
  unreachable

bb.g:                                             ; preds = %bb.a
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(48) %i.l, ptr noundef nonnull align 8 dereferenceable(48) %i.a, i64 48, i1 false), !noalias !23917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.d, ptr noundef nonnull align 8 dereferenceable(24) %i.c, i64 24, i1 false), !noalias !23917
  %i.m = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(72) %i.m, ptr noundef nonnull align 8 dereferenceable(72) %i.b, i64 72, i1 false), !noalias !23917
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !23910
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !23910
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull align 8 dereferenceable(144) %i.d, i64 144, i1 false), !noalias !23918
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d)
  ret ptr %i.e

bb.i:                                             ; preds = %bb.g, %bb.b
  %eh.lpad-body = phi { ptr, i32 } [ %i.k, %bb.g ], [ %.pn.i.i, %bb.b ]
  call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.e, i64 noundef 144, i64 noundef 8) #42
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 16 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [64 x i8], align 16               ; 4 uses
  %i.b = tail call noundef nonnull align 16 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtCsjhHCjzi9uUI_17datafusion_common6scalar11ScalarValueE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 3 uses
  %i.c = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !23919
  invoke fastcc void @_RNvXso_NtCsjhHCjzi9uUI_17datafusion_common6scalarNtB5_11ScalarValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 16 captures(none) dereferenceable(64) %i.a, ptr noalias noundef nonnull readonly align 16 captures(address, read_provenance) dereferenceable(64) %i.c) #46
          to label %bb.b unwind label %bb.c, !inline_history !23922

bb.b:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(64) %i.b, ptr noundef nonnull align 16 dereferenceable(64) %i.a, i64 64, i1 false), !noalias !23919
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !23919
  ret ptr %i.b

bb.c:                                             ; preds = %bb.a
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @_RNvCs8mYq7K4qqSA_7___rustc14___rust_dealloc(ptr noundef nonnull %i.b, i64 noundef 64, i64 noundef 16) #42
  resume { ptr, i32 } %i.d
}

; Function Attrs: inlinehint nonlazybind uwtable
define internal fastcc noundef nonnull align 8 ptr @_RNvXsd_NtCs6Po7BT7Nknu_5alloc5boxedINtB5_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleENtNtCsbvkFyIu7lgC_4core5clone5Clone5cloneCs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [328 x i8], align 8               ; 5 uses
  %.sroa.5.i.i = alloca [320 x i8], align 8       ; 2 uses
  %i.b = alloca [48 x i8], align 8                ; 5 uses
  %i.c = alloca [48 x i8], align 8                ; 5 uses
  %i.d = alloca [328 x i8], align 8               ; 4 uses
  %i.e = alloca [328 x i8], align 8               ; 5 uses
  %i.f = alloca [56 x i8], align 8                ; 5 uses
  %.sroa.5.i = alloca [320 x i8], align 8         ; 2 uses
  %i.g = alloca [424 x i8], align 8               ; 9 uses
  %i.h = alloca [56 x i8], align 8                ; 7 uses
  %i.i = alloca [336 x i8], align 8               ; 9 uses
  %.sroa.01 = alloca [336 x i8], align 8          ; 4 uses
  %.sroa.6 = alloca [424 x i8], align 8           ; 4 uses
  %.sroa.7 = alloca [56 x i8], align 8            ; 4 uses
  %i.j = tail call noundef nonnull align 8 ptr @_RNvMs_NtCs6Po7BT7Nknu_5alloc5boxedINtB4_3BoxNtNtNtCs4lawaffTVVK_9sqlparser3ast5query11TableSampleE13new_uninit_inCs14kWLkQVSKO_14deltalake_core() ; 9 uses
  %i.k = load ptr, ptr %0, align 8, !nonnull !4, !noundef !4 ; 12 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.01)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.6)
  call void @llvm.lifetime.start.p0(ptr nonnull %.sroa.7)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23923)
  %i.l = getelementptr inbounds nuw i8, ptr %i.k, i64 1144
  %.val.i = load i8, ptr %i.l, align 1, !range !3, !alias.scope !23923, !noalias !23926, !noundef !4
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 1145
  %i.n = load i8, ptr %i.m, align 1, !range !2279, !alias.scope !23923, !noalias !23926, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.i), !noalias !23928
  %i.o = load i64, ptr %i.k, align 8, !range !168, !alias.scope !23923, !noalias !23926, !noundef !4
  %.not5.i = icmp eq i64 %i.o, 69
  br i1 %.not5.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23929)
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 328
  %i.q = load i8, ptr %i.p, align 8, !range !3, !alias.scope !23932, !noalias !23933, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !23935
  invoke fastcc void @_RNvXs6H_NtCs4lawaffTVVK_9sqlparser3astNtB6_4ExprNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef align 8 captures(none) dereferenceable(328) %i.d, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(1152) %i.k) #46
          to label %.noexc unwind label %bb.z, !inline_history !23936

.noexc:                                           ; preds = %bb.b
  %i.r = getelementptr inbounds nuw i8, ptr %i.k, i64 329
  %i.s = load i8, ptr %i.r, align 1, !range !5003, !alias.scope !23932, !noalias !23933, !noundef !4
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(328) %i.i, ptr noundef nonnull align 8 dereferenceable(328) %i.d, i64 328, i1 false), !noalias !23928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !23935
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 328
  store i8 %i.q, ptr %.sroa.43.0..sroa_idx, align 8, !noalias !23928
  %.sroa.54.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.i, i64 329
  store i8 %i.s, ptr %.sroa.54.0..sroa_idx, align 1, !noalias !23928
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  store i64 69, ptr %i.i, align 8, !noalias !23928
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %.noexc
  call void @llvm.lifetime.start.p0(ptr nonnull %i.h), !noalias !23928
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 1088 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !range !1450, !alias.scope !23923, !noalias !23926, !noundef !4
  %.not6.i = icmp eq i64 %i.u, -9223372036854775787
  br i1 %.not6.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !23928
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23937)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23940)
  %i.v = getelementptr inbounds nuw i8, ptr %i.k, i64 1136
  %i.w = load i8, ptr %i.v, align 8, !range !3, !alias.scope !23942, !noalias !23943, !noundef !4
  invoke fastcc void @_RNvXsl_NtNtCs4lawaffTVVK_9sqlparser3ast5valueNtB5_5ValueNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone(ptr noalias noundef nonnull align 8 captures(none) dereferenceable(56) %i.f, ptr noalias noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(56) %i.t) #46
          to label %_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i unwind label %bb.i, !noalias !23926, !inline_history !23936

_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i: ; preds = %bb.e
  %i.x = getelementptr inbounds nuw i8, ptr %i.f, i64 48
  store i8 %i.w, ptr %i.x, align 8, !alias.scope !23937, !noalias !23944
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.h, ptr noundef nonnull align 8 dereferenceable(56) %i.f, i64 56, i1 false), !noalias !23928
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !23928
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  store i64 -9223372036854775787, ptr %i.h, align 8, !noalias !23928
  br label %bb.g

bb.g:                                             ; preds = %_RNvXs7Z_NtNtCs4lawaffTVVK_9sqlparser3ast5queryNtB6_15TableSampleSeedNtNtCsbvkFyIu7lgC_4core5clone5Clone5clone.exit.i, %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !23928
  %i.y = getelementptr inbounds nuw i8, ptr %i.k, i64 664 ; 3 uses
  %i.z = load i64, ptr %i.y, align 8, !range !60, !alias.scope !23923, !noalias !23926, !noundef !4
  %.not7.i = icmp eq i64 %i.z, 70
  br i1 %.not7.i, label %bb.r, label %bb.j

_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs14kWLkQVSKO_14deltalake_core.exit.i: ; preds = %.body.i, %bb.t, %bb.i
  %.pn.pn.i = phi { ptr, i32 } [ %i.ac, %bb.i ], [ %.pn.i, %bb.t ], [ %.pn.i, %.body.i ] ; 2 uses
  %i.aa = load i64, ptr %i.i, align 8, !range !168, !alias.scope !23945, !noalias !23928, !noundef !4
  %i.ab = icmp eq i64 %i.aa, 69
  br i1 %i.ab, label %bb.ab, label %bb.h

bb.h:                                             ; preds = %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs14kWLkQVSKO_14deltalake_core.exit.i
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeNtNtCs4lawaffTVVK_9sqlparser3ast4ExprECs14kWLkQVSKO_14deltalake_core(ptr noalias noundef nonnull align 8 dereferenceable(336) %i.i)
          to label %bb.ab unwind label %bb.y, !noalias !23926, !inline_history !23948

bb.i:                                             ; preds = %bb.e
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtB4_6option6OptionNtNtNtCs4lawaffTVVK_9sqlparser3ast5query15TableSampleSeedEECs14kWLkQVSKO_14deltalake_core.exit.i

bb.j:                                             ; preds = %bb.g
  tail call void @llvm.experimental.noalias.scope.decl(metadata !23949)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !23952
  %i.ad = getelementptr inbounds nuw i8, ptr %i.k, i64 992
end_hunk_2
