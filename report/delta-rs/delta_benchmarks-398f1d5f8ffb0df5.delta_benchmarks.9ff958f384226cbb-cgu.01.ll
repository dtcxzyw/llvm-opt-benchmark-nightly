inline.NumInlined: 8088
inline.NumDeleted: 2392
begin_hunk_0_@_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flatten7FlattenINtNtB6_9into_iter8IntoIterAB13_j2_EEE9from_iterCsdJxlLsGgtXr_16delta_benchmarks:bb.a

bb.m:                                             ; preds = %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !13998
  %i.bv = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.g, ptr noundef nonnull align 16 dereferenceable(240) %i.bv, i64 240, i1 false)
  call void @llvm.experimental.noalias.scope.decl(metadata !13999)
  call void @llvm.experimental.noalias.scope.decl(metadata !14002)
  %i.bw = getelementptr inbounds nuw i8, ptr %i.g, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !14005
  store ptr %i.bw, ptr %i.d, align 8, !noalias !14005
  %i.bx = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  store i64 2, ptr %i.bx, align 8, !noalias !14005
  %i.by = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.by, align 8, !noalias !14005
  call void @llvm.experimental.noalias.scope.decl(metadata !14008)
  call void @llvm.experimental.noalias.scope.decl(metadata !14011)
  %i.bz = load i64, ptr %i.g, align 16, !alias.scope !14013, !noalias !14014, !noundef !3 ; 5 uses
  %i.ca = getelementptr inbounds nuw i8, ptr %i.g, i64 8 ; 3 uses
  %i.cb = load i64, ptr %i.ca, align 8, !alias.scope !14013, !noalias !14014, !noundef !3 ; 3 uses
  %i.cc = icmp ule i64 %i.bz, %i.cb
  call void @llvm.assume(i1 %i.cc)
  %.not2.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.bz, %i.cb
  br i1 %.not2.i.i.i.i.i.i.i.i.i, label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i:                         ; preds = %bb.m, %.noexc.i.i.i.i.i.i.i.i
  %i.cd = phi i64 [ %i.ce, %.noexc.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ] ; 3 uses
  %i.ce = add nuw i64 %i.cd, 1                    ; 3 uses
  store i64 %i.ce, ptr %i.g, align 16, !alias.scope !14013, !noalias !14014
  call void @llvm.experimental.noalias.scope.decl(metadata !14015)
  %i.cf = load ptr, ptr %i.d, align 8, !alias.scope !14018, !noalias !14019, !nonnull !3, !align !146, !noundef !3
  %i.cg = load i64, ptr %i.bx, align 8, !alias.scope !14018, !noalias !14019, !noundef !3
  %i.ch = icmp ult i64 %i.cd, %i.cg
  call void @llvm.assume(i1 %i.ch)
  %i.ci = getelementptr inbounds nuw [112 x i8], ptr %i.cf, i64 %i.cd
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !14020
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.c, ptr noundef nonnull align 16 dereferenceable(112) %i.ci, i64 112, i1 false), !noalias !14024
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2G_3VecB1O_E14extend_trustedINtNtNtB11_8adapters7flatten7FlattenINtNtB2G_9into_iter8IntoIterAB1O_j2_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.by, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.c)
          to label %.noexc.i.i.i.i.i.i.i.i unwind label %bb.n, !noalias !14025

.noexc.i.i.i.i.i.i.i.i:                           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !14020
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ce, %i.cb
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i

bb.n:                                             ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i
  %i.cj = landingpad { ptr, i32 }
          cleanup
  %i.ck = load i64, ptr %i.g, align 16, !alias.scope !14026, !noalias !14035, !noundef !3
  %i.cl = load i64, ptr %i.ca, align 8, !alias.scope !14026, !noalias !14035, !noundef !3
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.bw, i64 noundef %i.ck, i64 noundef %i.cl)
          to label %.thread31.i.i.i.i.i.i unwind label %bb.o, !noalias !14025

_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i.i.i.i.i.i.i: ; preds = %.noexc.i.i.i.i.i.i.i.i
  %.pre.i.i.i.i.i.i.i.i = load i64, ptr %i.g, align 16, !alias.scope !14036, !noalias !14035
  %.pre2.i.i.i.i.i.i.i.i = load i64, ptr %i.ca, align 8, !alias.scope !14036, !noalias !14035
  br label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i

bb.o:                                             ; preds = %bb.n
  %i.cm = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !14025
  unreachable

_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i: ; preds = %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i.i.i.i.i.i.i, %bb.m
  %i.cn = phi i64 [ %.pre2.i.i.i.i.i.i.i.i, %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ]
  %i.co = phi i64 [ %.pre.i.i.i.i.i.i.i.i, %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i.i.i.i.i.i.i ], [ %i.bz, %bb.m ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !14005
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.bw, i64 noundef %i.co, i64 noundef %i.cn)
          to label %_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i unwind label %bb.w, !noalias !14025

bb.p:                                             ; preds = %_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i, %_RNvMs_NtCs6Po7BT7Nknu_5alloc3vecINtB4_3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprE7reserveCsdJxlLsGgtXr_16delta_benchmarks.exit.i.i
  %i.cp = getelementptr inbounds nuw i8, ptr %i.i, i64 512
  %.sroa.0.0.copyload.i.i.i.i.i.i = load ptr, ptr %i.cp, align 16, !alias.scope !13996, !noalias !13997 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !13998
  %.not.i.i.i.i.i.i = icmp eq ptr %.sroa.0.0.copyload.i.i.i.i.i.i, null
  br i1 %.not.i.i.i.i.i.i, label %bb.r, label %bb.q

_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i: ; preds = %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !13998
  br label %bb.p

bb.q:                                             ; preds = %bb.p
  %.sroa.5.0..sroa_idx.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.i, i64 520
  store ptr %.sroa.0.0.copyload.i.i.i.i.i.i, ptr %i.e, align 8, !noalias !13998
  %.sroa.5.0..sroa_idx3.i.i.i.i.i.i = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx3.i.i.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(24) %.sroa.5.0..sroa_idx.i.i.i.i.i.i, i64 24, i1 false), !noalias !13997
  invoke void @_RINvXs4_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB6_8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ENtNtNtNtCsbvkFyIu7lgC_4core4iter6traits8iterator8Iterator4folduNCINvNvMsg_NtNtB1R_8adapters7flattenINtB2X_13FlattenCompatppE9iter_fold7flattenBX_uNCINvNvXsi_B2X_B3m_B1L_4fold7flattenINtNtNtB1T_5array4iter8IntoIterBY_KB1H_EuNCINvNvB1L_8for_each4callBY_NCINvMsj_B8_INtB8_3VecBY_E14extend_trustedINtB2X_7FlattenBI_EE0E0E0E0ECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 captures(address) dereferenceable(32) %i.e, ptr noalias noundef nonnull align 8 dereferenceable(24) %i.h)
          to label %bb.r unwind label %.thread45.i.i.i.i.i.i, !noalias !14025

bb.r:                                             ; preds = %bb.q, %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !13998
  %i.cq = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.cr = load i128, ptr %i.cq, align 16, !range !1482, !alias.scope !13996, !noalias !13997, !noundef !3
  %i.cs = trunc nuw i128 %i.cr to i1
  br i1 %i.cs, label %bb.s, label %bb.ac

bb.s:                                             ; preds = %bb.r
  %i.ct = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !13998
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(240) %i.f, ptr noundef nonnull align 16 dereferenceable(240) %i.ct, i64 240, i1 false), !noalias !13997
  call void @llvm.experimental.noalias.scope.decl(metadata !14045)
  call void @llvm.experimental.noalias.scope.decl(metadata !14048)
  %i.cu = getelementptr inbounds nuw i8, ptr %i.f, i64 16 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !14051
  store ptr %i.cu, ptr %i.b, align 8, !noalias !14051
  %i.cv = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 2 uses
  store i64 2, ptr %i.cv, align 8, !noalias !14051
  %i.cw = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  store ptr %i.h, ptr %i.cw, align 8, !noalias !14051
  call void @llvm.experimental.noalias.scope.decl(metadata !14054)
  call void @llvm.experimental.noalias.scope.decl(metadata !14057)
  %i.cx = load i64, ptr %i.f, align 16, !alias.scope !14059, !noalias !14060, !noundef !3 ; 5 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 3 uses
  %i.cz = load i64, ptr %i.cy, align 8, !alias.scope !14059, !noalias !14060, !noundef !3 ; 3 uses
  %i.da = icmp ule i64 %i.cx, %i.cz
  call void @llvm.assume(i1 %i.da)
  %.not2.i.i.i11.i.i.i.i.i.i = icmp eq i64 %i.cx, %i.cz
  br i1 %.not2.i.i.i11.i.i.i.i.i.i, label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i19.i.i.i.i.i.i, label %.lr.ph.i.i.i12.i.i.i.i.i.i

.lr.ph.i.i.i12.i.i.i.i.i.i:                       ; preds = %bb.s, %.noexc.i.i14.i.i.i.i.i.i
  %i.db = phi i64 [ %i.dc, %.noexc.i.i14.i.i.i.i.i.i ], [ %i.cx, %bb.s ] ; 3 uses
  %i.dc = add nuw i64 %i.db, 1                    ; 3 uses
  store i64 %i.dc, ptr %i.f, align 16, !alias.scope !14059, !noalias !14060
  call void @llvm.experimental.noalias.scope.decl(metadata !14061)
  %i.dd = load ptr, ptr %i.b, align 8, !alias.scope !14064, !noalias !14065, !nonnull !3, !align !146, !noundef !3
  %i.de = load i64, ptr %i.cv, align 8, !alias.scope !14064, !noalias !14065, !noundef !3
  %i.df = icmp ult i64 %i.db, %i.de
  call void @llvm.assume(i1 %i.df)
  %i.dg = getelementptr inbounds nuw [112 x i8], ptr %i.dd, i64 %i.db
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !14066
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(112) %i.a, ptr noundef nonnull align 16 dereferenceable(112) %i.dg, i64 112, i1 false), !noalias !14070
  invoke void @_RNvXs1_NtNtNtCsbvkFyIu7lgC_4core3ops8function5implsQNCINvNvNtNtNtNtBb_4iter6traits8iterator8Iterator8for_each4callNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprNCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB2G_3VecB1O_E14extend_trustedINtNtNtB11_8adapters7flatten7FlattenINtNtB2G_9into_iter8IntoIterAB1O_j2_EEE0E0INtB7_5FnMutTuB1O_EE8call_mutCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(8) %i.cw, ptr noalias noundef nonnull align 16 captures(address) dereferenceable(112) %i.a)
          to label %.noexc.i.i14.i.i.i.i.i.i unwind label %bb.t, !noalias !14025

.noexc.i.i14.i.i.i.i.i.i:                         ; preds = %.lr.ph.i.i.i12.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !14066
  %.not.i.i.i15.i.i.i.i.i.i = icmp eq i64 %i.dc, %i.cz
  br i1 %.not.i.i.i15.i.i.i.i.i.i, label %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i16.i.i.i.i.i.i, label %.lr.ph.i.i.i12.i.i.i.i.i.i

bb.t:                                             ; preds = %.lr.ph.i.i.i12.i.i.i.i.i.i
  %i.dh = landingpad { ptr, i32 }
          cleanup
  %i.di = load i64, ptr %i.f, align 16, !alias.scope !14071, !noalias !14080, !noundef !3
  %i.dj = load i64, ptr %i.cy, align 8, !alias.scope !14071, !noalias !14080, !noundef !3
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.cu, i64 noundef %i.di, i64 noundef %i.dj)
          to label %.thread39.i.i.i.i.i.i unwind label %bb.u, !noalias !14025

.thread39.i.i.i.i.i.i:                            ; preds = %bb.t
  %.val943.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !13994, !noalias !14081, !nonnull !3, !align !1750, !noundef !3
  %.val1044.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !13994, !noalias !14081, !noundef !3
  store i64 %.val1044.i.i.i.i.i.i, ptr %.val943.i.i.i.i.i.i, align 8, !noalias !14025
  br label %.body

_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i16.i.i.i.i.i.i: ; preds = %.noexc.i.i14.i.i.i.i.i.i
  %.pre.i.i17.i.i.i.i.i.i = load i64, ptr %i.f, align 16, !alias.scope !14082, !noalias !14080
  %.pre2.i.i18.i.i.i.i.i.i = load i64, ptr %i.cy, align 8, !alias.scope !14082, !noalias !14080
  br label %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i19.i.i.i.i.i.i

bb.u:                                             ; preds = %bb.t
  %i.dk = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !14025
  unreachable

_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i19.i.i.i.i.i.i: ; preds = %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i16.i.i.i.i.i.i, %bb.s
  %i.dl = phi i64 [ %.pre2.i.i18.i.i.i.i.i.i, %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i16.i.i.i.i.i.i ], [ %i.cx, %bb.s ]
  %i.dm = phi i64 [ %.pre.i.i17.i.i.i.i.i.i, %_RINvXs_NtNtCsbvkFyIu7lgC_4core3ops11index_rangeNtB5_10IndexRangeNtNtNtNtB9_4iter6traits8iterator8Iterator8try_folduNCINvMs6_NtNtNtB9_5array4iter10iter_innerINtB1Y_15PolymorphicIterSINtNtNtB9_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEE8try_folduNCINvMs0_NtB7_9try_traitINtB4C_17NeverShortCircuituE10wrap_mut_2uB3y_QNCINvNvB10_8for_each4callB3y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB6d_3VecB3y_E14extend_trustedINtNtNtB16_8adapters7flatten7FlattenINtNtB6d_9into_iter8IntoIterAB3y_j2_EEE0E0E0B4R_E0B4R_ECsdJxlLsGgtXr_16delta_benchmarks.exit.loopexit.i.i16.i.i.i.i.i.i ], [ %i.cx, %bb.s ]
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !14051
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.cu, i64 noundef %i.dm, i64 noundef %i.dl)
          to label %_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit24.i.i.i.i.i.i unwind label %.thread45.i.i.i.i.i.i, !noalias !14025

_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit24.i.i.i.i.i.i: ; preds = %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i19.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !13998
  br label %bb.ac

bb.v:                                             ; preds = %bb.y, %bb.x
  %i.dn = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22, !noalias !14091
  unreachable

.thread45.i.i.i.i.i.i:                            ; preds = %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i19.i.i.i.i.i.i, %bb.q
  %.sroa.04.0.ph.i.i.i.i.i.i = phi i1 [ true, %bb.q ], [ false, %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i19.i.i.i.i.i.i ]
  %lpad.thr_comm.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  %.val949.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !13994, !noalias !14081, !nonnull !3, !align !1750, !noundef !3
  %.val1050.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !13994, !noalias !14081, !noundef !3
  store i64 %.val1050.i.i.i.i.i.i, ptr %.val949.i.i.i.i.i.i, align 8, !noalias !14025
  br label %.thread.i.i.i.i.i.i

bb.w:                                             ; preds = %_RINvXs2_NtNtCsbvkFyIu7lgC_4core5array4iterINtB6_8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_ENtNtNtNtBa_4iter6traits8iterator8Iterator4folduQNCINvNvB1H_8for_each4callBT_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB34_3VecBT_E14extend_trustedINtNtNtB1N_8adapters7flatten7FlattenINtNtB34_9into_iter8IntoIterABT_B1D_EEE0E0ECsdJxlLsGgtXr_16delta_benchmarks.exit.i.i.i.i.i.i.i
  %lpad.thr_comm.split-lp.i.i.i.i.i.i = landingpad { ptr, i32 }
          cleanup
  br label %.thread31.i.i.i.i.i.i

.thread.i.i.i.i.i.i:                              ; preds = %bb.x, %.thread31.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i
  %.sroa.04.230.i.i.i.i.i.i = phi i1 [ %.sroa.04.0.ph.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i ], [ true, %bb.x ], [ true, %.thread31.i.i.i.i.i.i ]
  %.pn29.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.i.i.i.i.i.i, %.thread45.i.i.i.i.i.i ], [ %eh.lpad-body38.i.i.i.i.i.i, %bb.x ], [ %eh.lpad-body38.i.i.i.i.i.i, %.thread31.i.i.i.i.i.i ] ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.i, i64 256
  %i.dp = load i128, ptr %i.do, align 16, !range !1482, !alias.scope !13996, !noalias !13997, !noundef !3
  %2 = icmp ne i128 %i.dp, 0
  %or.cond.i.i.i.i.i.i = and i1 %.sroa.04.230.i.i.i.i.i.i, %2
  br i1 %or.cond.i.i.i.i.i.i, label %bb.y, label %.body

.thread31.i.i.i.i.i.i:                            ; preds = %bb.w, %bb.n
  %eh.lpad-body38.i.i.i.i.i.i = phi { ptr, i32 } [ %lpad.thr_comm.split-lp.i.i.i.i.i.i, %bb.w ], [ %i.cj, %bb.n ] ; 2 uses
  %.val9.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !13994, !noalias !14081, !nonnull !3, !align !1750, !noundef !3
  %.val10.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !13994, !noalias !14081, !noundef !3
  store i64 %.val10.i.i.i.i.i.i, ptr %.val9.i.i.i.i.i.i, align 8, !noalias !14025
  %i.dq = getelementptr inbounds nuw i8, ptr %i.i, i64 512 ; 2 uses
  %i.dr = load ptr, ptr %i.dq, align 16, !alias.scope !14092, !noalias !13997, !noundef !3
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.thread.i.i.i.i.i.i, label %bb.x

bb.x:                                             ; preds = %.thread31.i.i.i.i.i.i
  invoke void @_RNvXse_NtNtCs6Po7BT7Nknu_5alloc3vec9into_iterINtB5_8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_ENtNtNtCsbvkFyIu7lgC_4core3ops4drop4Drop4dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 8 dereferenceable(32) %i.dq)
          to label %.thread.i.i.i.i.i.i unwind label %bb.v, !noalias !14091

bb.y:                                             ; preds = %.thread.i.i.i.i.i.i
  %i.dt = getelementptr inbounds nuw i8, ptr %i.i, i64 272
  %i.du = getelementptr inbounds nuw i8, ptr %i.i, i64 288
  %i.dv = load i64, ptr %i.dt, align 16, !alias.scope !14097, !noalias !13997, !noundef !3
  %i.dw = getelementptr inbounds nuw i8, ptr %i.i, i64 280
  %i.dx = load i64, ptr %i.dw, align 8, !alias.scope !14097, !noalias !13997, !noundef !3
  invoke void @_RNvXs_NtNtNtCsbvkFyIu7lgC_4core5array4iter10iter_innerAINtNtNtBa_3mem12maybe_uninit11MaybeUninitNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEj2_NtB4_11PartialDrop12partial_dropCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(224) %i.du, i64 noundef %i.dv, i64 noundef %i.dx)
          to label %.body unwind label %bb.v, !noalias !14091

bb.z:                                             ; preds = %bb.l
  unreachable

bb.aa:                                            ; preds = %bb.l, %bb.k
  %i.dy = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull align 16 dereferenceable(544) %i.k) #23
          to label %.body unwind label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.dz = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

.body:                                            ; preds = %.thread39.i.i.i.i.i.i, %.thread.i.i.i.i.i.i, %bb.y, %bb.aa
  %eh.lpad-body = phi { ptr, i32 } [ %i.dh, %.thread39.i.i.i.i.i.i ], [ %i.dy, %bb.aa ], [ %.pn29.i.i.i.i.i.i, %bb.y ], [ %.pn29.i.i.i.i.i.i, %.thread.i.i.i.i.i.i ]
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtCs6Po7BT7Nknu_5alloc3vec3VecNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 8 dereferenceable(24) %i.l) #23
          to label %bb.af unwind label %bb.ad

bb.ac:                                            ; preds = %_RNCINvNvXsi_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters7flattenINtBa_13FlattenCompatppENtNtNtBe_6traits8iterator8Iterator4fold7flattenINtNtNtBg_5array4iter8IntoIterNtNtCs8VI8w5SIoU4_15datafusion_expr4expr4ExprKj2_EuNCINvNvB1j_8for_each4callB2y_NCINvMsj_NtCs6Po7BT7Nknu_5alloc3vecINtB3Z_3VecB2y_E14extend_trustedINtBa_7FlattenINtNtB3Z_9into_iter8IntoIterAB2y_B3i_EEE0E0E0CsdJxlLsGgtXr_16delta_benchmarks.exit24.i.i.i.i.i.i, %bb.r
  %.val.i.i.i.i.i.i = load ptr, ptr %i.h, align 8, !alias.scope !13994, !noalias !14081, !nonnull !3, !align !1750, !noundef !3
  %.val8.i.i.i.i.i.i = load i64, ptr %.sroa.4.0..sroa_idx.i.i, align 8, !alias.scope !13994, !noalias !14081, !noundef !3
  store i64 %.val8.i.i.i.i.i.i, ptr %.val.i.i.i.i.i.i, align 8, !noalias !14025
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !13988
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !13978
  call void @llvm.lifetime.end.p0(ptr nonnull %i.k)
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %i.l, i64 24, i1 false)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.l)
  ret void

bb.ad:                                            ; preds = %bb.ag, %.body
  %i.ea = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCsbvkFyIu7lgC_4core9panicking16panic_in_cleanup() #22
  unreachable

bb.ae:                                            ; preds = %bb.f
  unreachable

bb.af:                                            ; preds = %.body, %bb.ag
  %.pn6 = phi { ptr, i32 } [ %i.eb, %bb.ag ], [ %eh.lpad-body, %.body ]
  resume { ptr, i32 } %.pn6

bb.ag:                                            ; preds = %bb.e, %bb.d, %bb.f
  %i.eb = landingpad { ptr, i32 }
          cleanup
  invoke fastcc void @_RINvNtCsbvkFyIu7lgC_4core3ptr13drop_in_placeINtNtNtNtB4_4iter8adapters7flatten7FlattenINtNtNtCs6Po7BT7Nknu_5alloc3vec9into_iter8IntoIterANtNtCs8VI8w5SIoU4_15datafusion_expr4expr4Exprj2_EEECsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef align 16 dereferenceable(544) %1) #23
          to label %bb.af unwind label %bb.ad
}

; Function Attrs: nonlazybind uwtable
define hidden void @_RNvXs_NtNtCs6Po7BT7Nknu_5alloc3vec21spec_from_iter_nestedINtB6_3VecRNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEINtB4_18SpecFromIterNestedB13_INtNtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chain5ChainIB2v_INtNtNtB2D_5slice4iter4IterB14_EB3r_EB3r_EE9from_iterB18_(ptr dead_on_unwind noalias nofree noundef writable writeonly sret([24 x i8]) align 8 captures(none) dereferenceable(24) %0, ptr noalias noundef readonly align 8 captures(none) dead_on_return dereferenceable(56) %1) unnamed_addr #0 personality ptr @rust_eh_personality {
bb.a:
  %i.a = alloca [24 x i8], align 8                ; 6 uses
  %i.b = alloca [56 x i8], align 8                ; 10 uses
  %i.c = alloca [24 x i8], align 8                ; 6 uses
  %i.d = alloca [24 x i8], align 8                ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d)
  %i.e = load i64, ptr %1, align 8, !range !4, !alias.scope !14106, !noalias !14109, !noundef !3 ; 2 uses
  %i.f = trunc nuw i64 %i.e to i1                 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.h = load ptr, ptr %i.g, align 8, !alias.scope !14106, !noalias !14109, !noundef !3 ; 6 uses
  %.not7.i = icmp eq ptr %i.h, null               ; 4 uses
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !alias.scope !14106, !noalias !14109, !noundef !3 ; 3 uses
  %.not.i12.i = icmp eq ptr %i.j, null            ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !alias.scope !14106, !noalias !14109, !noundef !3 ; 5 uses
  %.not7.i13.i = icmp eq ptr %i.l, null           ; 4 uses
  br i1 %.not7.i, label %bb.j, label %bb.e

bb.c:                                             ; preds = %bb.a
  br i1 %.not7.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val11.i = load ptr, ptr %i.m, align 8, !alias.scope !14106, !noalias !14109, !nonnull !3, !noundef !3
  %i.n = ptrtoint ptr %.val11.i to i64
  %i.o = ptrtoint ptr %i.h to i64
  %i.p = sub nuw i64 %i.n, %i.o
  %i.q = udiv exact i64 %i.p, 40
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit

bb.e:                                             ; preds = %bb.b
  br i1 %.not.i12.i, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i.i = load ptr, ptr %i.r, align 8, !alias.scope !14111, !noalias !14114, !nonnull !3, !noundef !3
  %i.s = ptrtoint ptr %.val10.i.i to i64
  %i.t = ptrtoint ptr %i.j to i64
  %i.u = sub nuw i64 %i.s, %i.t
  %i.v = udiv exact i64 %i.u, 40                  ; 2 uses
  br i1 %.not7.i13.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1t_.exit.i, label %bb.i

bb.g:                                             ; preds = %bb.e
  br i1 %.not7.i13.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1t_.exit.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16.i.i = load ptr, ptr %i.w, align 8, !alias.scope !14111, !noalias !14114, !nonnull !3, !noundef !3
  %i.x = ptrtoint ptr %.val16.i.i to i64
  %i.y = ptrtoint ptr %i.l to i64
  %i.z = sub nuw i64 %i.x, %i.y
  %i.aa = udiv exact i64 %i.z, 40
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1t_.exit.i

bb.i:                                             ; preds = %bb.f
  %i.ab = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val12.i.i = load ptr, ptr %i.ab, align 8, !alias.scope !14111, !noalias !14114, !nonnull !3, !noundef !3
  %i.ac = ptrtoint ptr %.val12.i.i to i64
  %i.ad = ptrtoint ptr %i.l to i64
  %i.ae = sub nuw i64 %i.ac, %i.ad
  %i.af = udiv exact i64 %i.ae, 40
  %i.ag = add nuw nsw i64 %i.af, %i.v
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1t_.exit.i

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1t_.exit.i: ; preds = %bb.i, %bb.h, %bb.g, %bb.f
  %.sink24.i.i = phi i64 [ %i.ag, %bb.i ], [ %i.aa, %bb.h ], [ %i.v, %bb.f ], [ 0, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 48
  %.val9.i = load ptr, ptr %i.ah, align 8, !alias.scope !14106, !noalias !14109, !nonnull !3, !noundef !3
  %i.ai = ptrtoint ptr %.val9.i to i64
  %i.aj = ptrtoint ptr %i.h to i64
  %i.ak = sub nuw i64 %i.ai, %i.aj
  %i.al = udiv exact i64 %i.ak, 40
  %i.am = add nuw nsw i64 %i.al, %.sink24.i.i
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit

bb.j:                                             ; preds = %bb.b
  br i1 %.not.i12.i, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.val10.i14.i = load ptr, ptr %i.an, align 8, !alias.scope !14116, !noalias !14119, !nonnull !3, !noundef !3
  %i.ao = ptrtoint ptr %.val10.i14.i to i64
  %i.ap = ptrtoint ptr %i.j to i64
  %i.aq = sub nuw i64 %i.ao, %i.ap
  %i.ar = udiv exact i64 %i.aq, 40                ; 2 uses
  br i1 %.not7.i13.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit, label %bb.n

bb.l:                                             ; preds = %bb.j
  br i1 %.not7.i13.i, label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit, label %bb.m

bb.m:                                             ; preds = %bb.l
  %i.as = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val16.i17.i = load ptr, ptr %i.as, align 8, !alias.scope !14116, !noalias !14119, !nonnull !3, !noundef !3
  %i.at = ptrtoint ptr %.val16.i17.i to i64
  %i.au = ptrtoint ptr %i.l to i64
  %i.av = sub nuw i64 %i.at, %i.au
  %i.aw = udiv exact i64 %i.av, 40
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit

bb.n:                                             ; preds = %bb.k
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 32
  %.val12.i15.i = load ptr, ptr %i.ax, align 8, !alias.scope !14116, !noalias !14119, !nonnull !3, !noundef !3
  %i.ay = ptrtoint ptr %.val12.i15.i to i64
  %i.az = ptrtoint ptr %i.l to i64
  %i.ba = sub nuw i64 %i.ay, %i.az
  %i.bb = udiv exact i64 %i.ba, 40
  %i.bc = add nuw nsw i64 %i.bb, %i.ar
  br label %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit

_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainIBO_INtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEB13_EB13_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1x_.exit: ; preds = %bb.n, %bb.m, %bb.l, %bb.k, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1t_.exit.i, %bb.d, %bb.c
  %.sink30.i = phi i64 [ %i.am, %_RNvXs_NtNtNtCsbvkFyIu7lgC_4core4iter8adapters5chainINtB4_5ChainINtNtNtBa_5slice4iter4IterNtNtCsdJxlLsGgtXr_16delta_benchmarks5merge13MergeTestCaseEBZ_ENtNtNtB8_6traits8iterator8Iterator9size_hintB1t_.exit.i ], [ %i.q, %bb.d ], [ 0, %bb.l ], [ %i.bc, %bb.n ], [ %i.aw, %bb.m ], [ %i.ar, %bb.k ], [ 0, %bb.c ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c)
  call void @_RNvMs4_NtCs6Po7BT7Nknu_5alloc7raw_vecNtB5_11RawVecInner15try_allocate_inCsdJxlLsGgtXr_16delta_benchmarks(ptr noalias noundef nonnull sret([24 x i8]) align 8 captures(none) dereferenceable(24) %i.c, i64 noundef %.sink30.i, i1 noundef zeroext false, i64 noundef 8, i64 noundef 8)
  %i.bd = load i64, ptr %i.c, align 8, !range !4, !noundef !3
  %i.be = trunc nuw i64 %i.bd to i1
  %i.bf = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !range !43, !noundef !3 ; 4 uses
end_hunk_0
