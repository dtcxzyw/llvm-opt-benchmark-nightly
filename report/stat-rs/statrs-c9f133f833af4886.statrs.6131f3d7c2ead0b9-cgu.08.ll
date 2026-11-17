Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.08?download=true
inline.NumInlined: 297
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB4_2LUdNtNtNtB8_4base9dimension3DynBP_E3newCs8lmMd0ZksV9_6statrs:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !97
  store ptr %.val18.i.i35, ptr %i.d, align 8, !noalias !97
  store i64 %.val13.i.i32, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !97
  store i64 %.val15.i.i34, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !97
  %.not.i.i36 = icmp eq i64 %.val13.i.i32, 0
  br i1 %.not.i.i36, label %.invoke, label %bb.x, !prof !99

bb.x:                                             ; preds = %.noexc45
  %i.dv = icmp ult i64 %.sroa.0.0.lcssa.i, %.val13.i.i32
  br i1 %i.dv, label %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i, label %.invoke, !prof !85

.invoke:                                          ; preds = %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit, %bb.n, %bb.m, %bb.x, %.noexc45, %bb.r
  %i.dw = phi ptr [ @23, %.noexc45 ], [ @14, %bb.r ], [ @23, %bb.x ], [ @8, %bb.n ], [ @27, %bb.m ], [ @29, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.dx = phi ptr [ inttoptr (i64 83 to ptr), %.noexc45 ], [ inttoptr (i64 81 to ptr), %bb.r ], [ inttoptr (i64 83 to ptr), %bb.x ], [ inttoptr (i64 71 to ptr), %bb.n ], [ inttoptr (i64 59 to ptr), %bb.m ], [ inttoptr (i64 55 to ptr), %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  %i.dy = phi ptr [ @24, %.noexc45 ], [ @15, %bb.r ], [ @25, %bb.x ], [ @10, %bb.n ], [ @28, %bb.m ], [ @26, %_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs.exit ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.dw, ptr noundef nonnull %i.dx, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dy) #14
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.x
  %i.dz = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.sroa.0.0.lcssa.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.val18.i.i35, align 8, !noalias !100
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !100
  store i64 %i.ea, ptr %.val18.i.i35, align 8, !noalias !100
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.dz, align 8, !noalias !100
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !97
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc48:                                         ; preds = %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !101)
  %.val7.i8.i = load i64, ptr %i.ao, align 8, !alias.scope !101, !noalias !97, !noundef !4 ; 10 uses
  %.not.i9.i = icmp eq i64 %.val7.i8.i, 0
  br i1 %.not.i9.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.lr.ph.i.i37

.lr.ph.i.i37:                                     ; preds = %.noexc48
  %.val8.i.i38 = load ptr, ptr %i.c, align 8, !alias.scope !101, !noalias !97, !noundef !4 ; 2 uses
  %min.iters.check159 = icmp ult i64 %.val7.i8.i, 4
  br i1 %min.iters.check159, label %scalar.ph158.preheader, label %vector.ph160

vector.ph160:                                     ; preds = %.lr.ph.i.i37
  %n.vec161 = and i64 %.val7.i8.i, -4             ; 3 uses
  %broadcast.splatinsert162 = insertelement <2 x double> poison, double %i.ds, i64 0
  %broadcast.splat163 = shufflevector <2 x double> %broadcast.splatinsert162, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body164

vector.body164:                                   ; preds = %vector.body164, %vector.ph160
  %index165 = phi i64 [ 0, %vector.ph160 ], [ %index.next168, %vector.body164 ] ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %.val8.i.i38, i64 %index165 ; 3 uses
  %i.ec = getelementptr i8, ptr %i.eb, i64 16     ; 2 uses
  %wide.load166 = load <2 x double>, ptr %i.eb, align 8, !alias.scope !102, !noalias !101
  %wide.load167 = load <2 x double>, ptr %i.ec, align 8, !alias.scope !102, !noalias !101
  %i.ed = fmul <2 x double> %broadcast.splat163, %wide.load166
  %i.ee = fmul <2 x double> %broadcast.splat163, %wide.load167
  store <2 x double> %i.ed, ptr %i.eb, align 8, !alias.scope !102, !noalias !101
  store <2 x double> %i.ee, ptr %i.ec, align 8, !alias.scope !102, !noalias !101
  %index.next168 = add nuw i64 %index165, 4       ; 2 uses
  %i.ef = icmp eq i64 %index.next168, %n.vec161
  br i1 %i.ef, label %middle.block169, label %vector.body164, !llvm.loop !67

middle.block169:                                  ; preds = %vector.body164
  %cmp.n170 = icmp eq i64 %.val7.i8.i, %n.vec161
  br i1 %cmp.n170, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %scalar.ph158.preheader

scalar.ph158.preheader:                           ; preds = %.lr.ph.i.i37, %middle.block169
  %.sroa.05.010.i.i39.ph = phi i64 [ 0, %.lr.ph.i.i37 ], [ %n.vec161, %middle.block169 ]
  br label %scalar.ph158

scalar.ph158:                                     ; preds = %scalar.ph158.preheader, %scalar.ph158
  %.sroa.05.010.i.i39 = phi i64 [ %i.eg, %scalar.ph158 ], [ %.sroa.05.010.i.i39.ph, %scalar.ph158.preheader ] ; 2 uses
  %i.eg = add nuw i64 %.sroa.05.010.i.i39, 1      ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %.val8.i.i38, i64 %.sroa.05.010.i.i39 ; 2 uses
  %i.ei = load double, ptr %i.eh, align 8, !alias.scope !102, !noalias !101, !noundef !4
  %i.ej = fmul double %i.ds, %i.ei
  store double %i.ej, ptr %i.eh, align 8, !alias.scope !102, !noalias !101
  %exitcond.not.i.i40 = icmp eq i64 %i.eg, %.val7.i8.i
  br i1 %exitcond.not.i.i40, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %scalar.ph158, !llvm.loop !68

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41: ; preds = %scalar.ph158, %middle.block169, %.noexc48
  %i.ek = getelementptr i8, ptr %i.du, i64 8
  %.not.i42 = icmp eq i64 %i.dt, 0
  br i1 %.not.i42, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  %i.el = add i64 %.val13.i.i32, -1               ; 2 uses
  %.sroa.0.0.i9.i.i43 = load ptr, ptr %i.c, align 8, !noalias !97, !nonnull !4
  %i.em = icmp eq i64 %i.el, %.val7.i8.i
  br i1 %i.em, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc49
  %.sroa.04.049.us.i = phi i64 [ %i.ew, %.noexc49 ], [ 0, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.en = mul i64 %.sroa.04.049.us.i, %.val15.i.i34 ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.du, i64 %i.en ; 3 uses
  %i.ep = getelementptr [8 x i8], ptr %i.ek, i64 %i.en ; 3 uses
  %i.eq = getelementptr [8 x i8], ptr %i.ep, i64 %.sroa.0.0.lcssa.i
  %i.er = getelementptr i8, ptr %i.eq, i64 -8     ; 2 uses
  %i.es = load double, ptr %i.eo, align 8, !noundef !4
  %i.et = load i64, ptr %i.er, align 8
  store i64 %i.et, ptr %i.eo, align 8
  store double %i.es, ptr %i.er, align 8
  %i.eu = load double, ptr %i.eo, align 8, !alias.scope !103, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  %i.ev = fneg double %i.eu
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !104
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ep) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.ep, i64 noundef %.val7.i8.i, double noundef %i.ev, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.sroa.0.0.i9.i.i43, i64 noundef %.val7.i8.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i8.i)
          to label %.noexc49 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc49:                                         ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.ew = add nuw i64 %.sroa.04.049.us.i, 1       ; 2 uses
  %exitcond.not.i44 = icmp eq i64 %i.ew, %i.dt
  br i1 %exitcond.not.i44, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  %i.ex = getelementptr [8 x i8], ptr %i.du, i64 %.sroa.0.0.lcssa.i ; 2 uses
  %i.ey = load double, ptr %i.du, align 8, !noundef !4
  %i.ez = load i64, ptr %i.ex, align 8
  store i64 %i.ez, ptr %i.du, align 8
  store double %i.ey, ptr %i.ex, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !104
  store i64 %i.el, ptr %i.b, align 8, !noalias !104
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !104
  store i64 %.val7.i8.i, ptr %i.a, align 8, !noalias !104
  br label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i
  %i.fa = phi ptr [ %i.b, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.g, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ]
  %i.fb = phi ptr [ %i.a, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.f, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fa, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.fb, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.cont: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i.invoke
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc49, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !97
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !97
  br label %.backedge

bb.y:                                             ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.body
  %i.fc = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.z:                                             ; preds = %.body
  resume { ptr, i32 } %.pn.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable
define hidden noundef zeroext i1 @_RNvNtCs8lmMd0ZksV9_6statrs4prec11convergence(ptr noalias nofree noundef align 8 captures(none) dereferenceable(8) %0, double noundef %1) unnamed_addr #1 personality ptr @rust_eh_personality {
bb.a:
  %.val = load double, ptr %0, align 8, !noundef !4 ; 3 uses
  %i.a = fcmp oeq double %.val, %1
  br i1 %i.a, label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call double @llvm.fabs.f64(double %.val) ; 3 uses
  %i.c = fcmp oeq double %i.b, +inf
  %i.d = tail call double @llvm.fabs.f64(double %1) ; 3 uses
  %i.e = fcmp oeq double %i.d, +inf
  %or.cond.i = or i1 %i.e, %i.c
  br i1 %or.cond.i, label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = fsub double %.val, %1
  %i.g = tail call double @llvm.fabs.f64(double %i.f) ; 2 uses
  %i.h = fcmp ugt double %i.g, 1.000000e-09
  br i1 %i.h, label %bb.d, label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit

bb.d:                                             ; preds = %bb.c
  %i.i = fcmp ogt double %i.d, %i.b
  %spec.store.select.i = select i1 %i.i, double %i.d, double %i.b
  %i.j = fmul double %spec.store.select.i, f0x3D06849B86A12B9B
  %i.k = fcmp ole double %i.g, %i.j
  br label %_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit

_RNvXs4_NtCs3u8M9drud7n_6approx11relative_eqdNtB5_10RelativeEq11relative_eq.exit: ; preds = %bb.a, %bb.b, %bb.c, %bb.d
  %.sroa.0.0.i = phi i1 [ %i.k, %bb.d ], [ true, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  store double %1, ptr %0, align 8
  ret i1 %.sroa.0.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define internal fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %0, double noundef %1, double noundef nofpclass(nan inf zero sub) %2) unnamed_addr #2 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp ugt double %0, 5.000000e-01
  br i1 %i.a, label %bb.b, label %.lr.ph.i.i

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %1, 2.500000e-01
  br i1 %i.b, label %bb.c, label %.lr.ph.i.i9

.lr.ph.i.i:                                       ; preds = %bb.a
  %i.c = fmul double %0, 0.000000e+00             ; 2 uses
  %i.d = fadd double %i.c, f0x3F4D0A1F35042971
  %i.e = fmul double %0, %i.d
  %i.f = fadd double %i.e, f0xBF631E9F345A5407
  %i.g = fmul double %0, %i.f
  %i.h = fadd double %i.g, f0x3FB45BF89ED1435A
  %i.i = fmul double %0, %i.h
  %i.j = fadd double %i.i, f0xBFAB00B09AD5FCC2
  %i.k = fmul double %0, %i.j
  %i.l = fadd double %i.k, f0xBFE6CB12599BCF34
  %i.m = fmul double %0, %i.l
  %i.n = fadd double %i.m, f0x3FE531CC40A0CB9B
  %i.o = fmul double %0, %i.n
  %i.p = fadd double %i.o, f0x3FF8FED5C4A83891
  %i.q = fmul double %0, %i.p
  %i.r = fadd double %i.q, f0xBFF90D4B3D603AB0
  %i.s = fmul double %0, %i.r
  %i.t = fadd double %i.s, f0xBFEF0A48043E2A93
  %i.u = fmul double %0, %i.t
  %i.v = fadd double %i.u, 1.000000e+00
  %i.w = fadd double %i.c, f0xBF761171AA645978
  %i.x = fmul double %0, %i.w
  %i.y = fadd double %i.x, f0x3F80D940F95301EA
  %i.z = fmul double %0, %i.y
  %i.aa = fadd double %i.z, f0x3F9683FCD9C8B669
  %i.ab = fmul double %0, %i.aa
  %i.ac = fadd double %i.ab, f0xBFA2B87D71E0BB7B
  %i.ad = fmul double %0, %i.ac
  %i.ae = fadd double %i.ad, f0xBF89FE95EA93671F
  %i.af = fmul double %0, %i.ae
  %i.ag = fadd double %i.af, f0x3FA124609D52E43D
  %i.ah = fmul double %0, %i.ag
  %i.ai = fadd double %i.ah, f0xBF8123A25E87EB2F
  %i.aj = fmul double %0, %i.ai
  %i.ak = fadd double %i.aj, f0xBF40ABF8EAD36EF0
  %i.al = fadd nnan double %0, 1.000000e+01
  %i.am = fmul double %0, %i.al                   ; 2 uses
  %i.an = fdiv double %i.ak, %i.v
  %i.ao = fmul double %i.am, f0x3FB6D15200000000
  %i.ap = fmul double %i.am, %i.an
  %i.aq = fadd double %i.ao, %i.ap
  br label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.ar = tail call double @llvm.log.f64(double %1)
  %i.as = fneg double %i.ar
  %i.at = tail call double @llvm.sqrt.f64(double %i.as) ; 19 uses
  %i.au = fcmp olt double %i.at, 3.000000e+00
  br i1 %i.au, label %.lr.ph.i.i19, label %bb.d

.lr.ph.i.i9:                                      ; preds = %bb.b
  %i.av = fadd double %1, -2.500000e-01           ; 17 uses
  %i.aw = fmul double %i.av, 0.000000e+00         ; 2 uses
  %i.ax = fadd double %i.aw, f0x3FFB89D220507D2A
  %i.ay = fmul double %i.av, %i.ax
  %i.az = fadd double %i.ay, f0xC036A4C9163998B3
  %i.ba = fmul double %i.av, %i.az
  %i.bb = fadd double %i.ba, f0x4025A75B13A6A40E
  %i.bc = fmul double %i.av, %i.bb
  %i.bd = fadd double %i.bc, f0x404847CC44FEEAA8
  %i.be = fmul double %i.av, %i.bd
  %i.bf = fadd double %i.be, f0xC03424ACEA25FADD
  %i.bg = fmul double %i.av, %i.bf
  %i.bh = fadd double %i.bg, f0xC03CA92B5F294546
  %i.bi = fmul double %i.av, %i.bh
  %i.bj = fadd double %i.bi, f0x400FC54FE55111D6
  %i.bk = fmul double %i.av, %i.bj
  %i.bl = fadd double %i.bk, f0x4018F876F28C9A27
  %i.bm = fmul double %i.av, %i.bl
  %i.bn = fadd double %i.bm, 1.000000e+00
  %i.bo = fadd double %i.aw, f0xC00D6018EDA922CF
  %i.bp = fmul double %i.av, %i.bo
  %i.bq = fadd double %i.bp, f0x40352124A7690565
  %i.br = fmul double %i.av, %i.bq
  %i.bs = fadd double %i.br, f0x40317204D0E21FA4
  %i.bt = fmul double %i.av, %i.bs
  %i.bu = fadd double %i.bt, f0xC04651B199C97F30
  %i.bv = fmul double %i.av, %i.bu
  %i.bw = fadd double %i.bv, f0xC032D9DF6213FE8E
  %i.bx = fmul double %i.av, %i.bw
  %i.by = fadd double %i.bx, f0x4031A50D03CD26E5
  %i.bz = fmul double %i.av, %i.by
  %i.ca = fadd double %i.bz, f0x4020BDB29B3ACB95
  %i.cb = fmul double %i.av, %i.ca
  %i.cc = fadd double %i.cb, f0x3FBAF2A049071BEC
  %i.cd = fmul double %i.av, %i.cc
  %i.ce = fadd double %i.cd, f0xBFC9E95759006C20
  %i.cf = tail call nnan double @llvm.log.f64(double %1)
  %i.cg = fmul nnan double %i.cf, -2.000000e+00
  %i.ch = tail call double @llvm.sqrt.f64(double %i.cg)
  %i.ci = fdiv double %i.ce, %i.bn
  %i.cj = fadd double %i.ci, f0x4001FEF000000000
  %i.ck = fdiv double %i.ch, %i.cj
  br label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.cl = fcmp olt double %i.at, 6.000000e+00
  br i1 %i.cl, label %.lr.ph.i.i29, label %bb.e

.lr.ph.i.i19:                                     ; preds = %bb.c
  %i.cm = fadd double %i.at, -1.125000e+00        ; 18 uses
  %3 = fmul double %i.cm, 0.000000e+00            ; 2 uses
  %i.cn = fadd double %3, f0x3F86A63A5FC07442
  %i.co = fmul double %i.cm, %i.cn
  %i.cp = fadd double %i.co, f0x3FC37D65D8A9AAFB
  %i.cq = fmul double %i.cm, %i.cp
  %i.cr = fadd double %i.cq, f0x3FEB29D095870405
  %i.cs = fmul double %i.cm, %i.cr
  %i.ct = fadd double %i.cs, f0x4004BE80DBDD1285
  %i.cu = fmul double %i.cm, %i.ct
  %i.cv = fadd double %i.cu, f0x40131D262C304C04
  %i.cw = fmul double %i.cm, %i.cv
  %i.cx = fadd double %i.cw, f0x401586D807362921
  %i.cy = fmul double %i.cm, %i.cx
  %i.cz = fadd double %i.cy, f0x400BBAE36A458F85
  %i.da = fmul double %i.cm, %i.cz
  %i.db = fadd double %i.da, 1.000000e+00
  %i.dc = fadd double %3, f0xBE076775588F330D
  %i.dd = fmul double %i.cm, %i.dc
  %i.de = fadd double %i.dd, f0x3E5EA036D72C22E6
  %i.df = fmul double %i.cm, %i.de
  %i.dg = fadd double %i.df, f0xBEA6CC9099E64C30
  %i.dh = fmul double %i.cm, %i.dg
  %i.di = fadd double %i.dh, f0x3F6193A0D5D7A83A
  %i.dj = fmul double %i.cm, %i.di
  %i.dk = fadd double %i.dj, f0x3F9DB650C5A8D10C
  %i.dl = fmul double %i.cm, %i.dk
  %i.dm = fadd double %i.dl, f0x3FC2498C84F05B27
  %i.dn = fmul double %i.cm, %i.dm
  %i.do = fadd double %i.dn, f0x3FD59E473CAC176C
  %i.dp = fmul double %i.cm, %i.do
  %i.dq = fadd double %i.dp, f0x3FD8C5EA18F53827
  %i.dr = fmul double %i.cm, %i.dq
  %i.ds = fadd double %i.dr, f0x3FBDF5B03622778B
  %i.dt = fmul double %i.cm, %i.ds
  %i.du = fadd double %i.dt, f0xBFC4F7340DFCC581
  %i.dv = fmul double %i.cm, %i.du
  %i.dw = fadd double %i.dv, f0xBFC0C7F9D7DD7157
  %i.dx = fdiv double %i.dw, %i.db
  %i.dy = fmul nnan double %i.at, f0x3FE9D4C000000000
  %i.dz = fmul double %i.at, %i.dx
  %i.ea = fadd double %i.dy, %i.dz
  br label %bb.g

bb.e:                                             ; preds = %bb.d
  %i.eb = fcmp olt double %i.at, 1.800000e+01
  br i1 %i.eb, label %.lr.ph.i.i39, label %bb.f

.lr.ph.i.i29:                                     ; preds = %bb.d
  %i.ec = fadd double %i.at, -3.000000e+00        ; 15 uses
  %4 = fmul double %i.ec, 0.000000e+00            ; 2 uses
  %i.ed = fadd double %4, f0x3F140BA62624DB75
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = fadd double %i.ee, f0x3F659D949702D5D5
  %i.eg = fmul double %i.ec, %i.ef
  %i.eh = fadd double %i.eg, f0x3FA17D46F825A696
  %i.ei = fmul double %i.ec, %i.eh
  %i.ej = fadd double %i.ei, f0x3FCC2BF202B2DEAF
  %i.ek = fmul double %i.ec, %i.ej
  %i.el = fadd double %i.ek, f0x3FE862C9E6ABFF24
  %i.em = fmul double %i.ec, %i.el
  %i.en = fadd double %i.em, f0x3FF5D8697E6B966F
  %i.eo = fmul double %i.ec, %i.en
  %i.ep = fadd double %i.eo, 1.000000e+00
  %i.eq = fadd double %4, f0x3D876D6D1D358341
  %i.er = fmul double %i.ec, %i.eq
  %i.es = fadd double %i.er, f0xBDEFAAA5BC21B76F
  %i.et = fmul double %i.ec, %i.es
  %i.eu = fadd double %i.et, f0x3ED35041FF5208E2
  %i.ev = fmul double %i.ec, %i.eu
  %i.ew = fadd double %i.ev, f0x3F24A651F58128F3
  %i.ex = fmul double %i.ec, %i.ew
  %i.ey = fadd double %i.ex, f0x3F5EA8873476814E
  %i.ez = fmul double %i.ec, %i.ey
  %i.fa = fadd double %i.ez, f0x3F8378F477C427A3
  %i.fb = fmul double %i.ec, %i.fa
  %i.fc = fadd double %i.fb, f0x3F9300B160FEE50C
  %i.fd = fmul double %i.ec, %i.fc
  %i.fe = fadd double %i.fd, f0xBF62389F55FEBBF0
  %i.ff = fmul double %i.ec, %i.fe
  %i.fg = fadd double %i.ff, f0xBFA1F0283B98A708
  %i.fh = fdiv double %i.fg, %i.ep
  %i.fi = fmul nnan double %i.at, f0x3FEE141E00000000
  %i.fj = fmul double %i.at, %i.fh
  %i.fk = fadd double %i.fi, %i.fj
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.fl = fcmp olt double %i.at, 4.400000e+01
  br i1 %i.fl, label %.lr.ph.i.i59, label %.lr.ph.i.i49

.lr.ph.i.i39:                                     ; preds = %bb.e
  %i.fm = fadd double %i.at, -6.000000e+00        ; 15 uses
  %5 = fmul double %i.fm, 0.000000e+00            ; 2 uses
  %i.fn = fadd double %5, f0x3E92F0E699147481
  %i.fo = fmul double %i.fm, %i.fn
  %i.fp = fadd double %i.fo, f0x3EFCDEFAF9AB3AD9
  %i.fq = fmul double %i.fm, %i.fp
  %i.fr = fadd double %i.fq, f0x3F4F96B7978EC9C7
  %i.fs = fmul double %i.fm, %i.fr
  %i.ft = fadd double %i.fs, f0x3F9075DCBACF98AC
  %i.fu = fmul double %i.fm, %i.ft
  %i.fv = fadd double %i.fu, f0x3FC1AEF5D8A30873
  %i.fw = fmul double %i.fm, %i.fv
  %i.fx = fadd double %i.fw, f0x3FE2ECFD3BC5D1DD
  %i.fy = fmul double %i.fm, %i.fx
  %i.fz = fadd double %i.fy, 1.000000e+00
  %i.ga = fadd double %5, f0x3C9C8D057577CD10
  %i.gb = fmul double %i.fm, %i.ga
  %i.gc = fadd double %i.gb, f0xBD1FA6FBEF66EC88
  %i.gd = fmul double %i.fm, %i.gc
  %i.ge = fadd double %i.gd, f0x3E33DE4C718BDD46
  %i.gf = fmul double %i.fm, %i.ge
  %i.gg = fadd double %i.gf, f0x3E9E2DBB65E31483
  %i.gh = fmul double %i.fm, %i.gg
  %i.gi = fadd double %i.gh, f0x3EEF60EB5E8BE471
  %i.gj = fmul double %i.fm, %i.gi
  %i.gk = fadd double %i.gj, f0x3F2B71D6C58CB2A0
  %i.gl = fmul double %i.fm, %i.gk
  %i.gm = fadd double %i.gl, f0x3F514E654569DD76
  %i.gn = fmul double %i.fm, %i.gm
  %i.go = fadd double %i.gn, f0xBF528186D6AFDE45
  %i.gp = fmul double %i.fm, %i.go
  %i.gq = fadd double %i.gp, f0xBF91251A7474CAE2
  %i.gr = fdiv double %i.gq, %i.fz
  %i.gs = fmul nnan double %i.at, f0x3FEF79E200000000
  %i.gt = fmul double %i.at, %i.gr
  %i.gu = fadd double %i.gs, %i.gt
  br label %bb.g

.lr.ph.i.i49:                                     ; preds = %bb.f
  %i.gv = fadd double %i.at, -4.400000e+01        ; 14 uses
  %i.gw = fmul double %i.gv, 0.000000e+00         ; 2 uses
  %i.gx = fadd double %i.gw, f0x3D845E3C7ED85847
  %i.gy = fmul double %i.gv, %i.gx
  %i.gz = fadd double %i.gy, f0x3E1BCC72A7C64DCB
  %i.ha = fmul double %i.gv, %i.gz
  %i.hb = fadd double %i.ha, f0x3E9AD76970639719
  %i.hc = fmul double %i.gv, %i.hb
  %i.hd = fadd double %i.hc, f0x3F088D523A4DA9A0
  %i.he = fmul double %i.gv, %i.hd
  %i.hf = fadd double %i.he, f0x3F671BEB2E0694BC
  %i.hg = fmul double %i.gv, %i.hf
  %i.hh = fadd double %i.hg, f0x3FB5A6AEB99348F7
  %i.hi = fmul double %i.gv, %i.hh
  %i.hj = fadd double %i.hi, 1.000000e+00
  %i.hk = fadd double %i.gw, f0xBB7A5C858C9B788E
  %i.hl = fmul double %i.gv, %i.hk
  %i.hm = fadd double %i.hl, f0x3CD87A5D6E273734
  %i.hn = fmul double %i.gv, %i.hm
  %i.ho = fadd double %i.hn, f0x3D70ACB8C289F0DC
  %i.hp = fmul double %i.gv, %i.ho
  %i.hq = fadd double %i.hp, f0x3DEF003CE0C9615D
  %i.hr = fmul double %i.gv, %i.hq
  %i.hs = fadd double %i.hr, f0x3E58A03602881615
  %i.ht = fmul double %i.gv, %i.hs
  %i.hu = fadd double %i.ht, f0x3EAE2E58B4885FB7
  %i.hv = fmul double %i.gv, %i.hu
  %i.hw = fadd double %i.hv, f0xBE930EDEA12DBEAD
  %i.hx = fmul double %i.gv, %i.hw
  %i.hy = fadd double %i.hx, f0xBF41A9D1D64491D6
  %i.hz = fdiv double %i.hy, %i.hj
  %i.ia = fmul double %i.at, f0x3FEFFB3200000000
  %i.ib = fmul double %i.at, %i.hz
  %i.ic = fadd double %i.ia, %i.ib
  br label %bb.g

.lr.ph.i.i59:                                     ; preds = %bb.f
  %i.id = fadd double %i.at, -1.800000e+01        ; 14 uses
  %6 = fmul double %i.id, 0.000000e+00            ; 2 uses
  %i.ie = fadd double %6, f0x3E0183E85900FD17
  %i.if = fmul double %i.id, %i.ie
  %i.ig = fadd double %i.if, f0x3E8362D7F176E0F7
  %i.ih = fmul double %i.id, %i.ig
  %i.ii = fadd double %i.ih, f0x3EEE6905FA58ACA5
  %i.ij = fmul double %i.id, %i.ii
  %i.ik = fadd double %i.ij, f0x3F46A0A7A23CFB21
  %i.il = fmul double %i.id, %i.ik
  %i.im = fadd double %i.il, f0x3F915900E3BA1DC3
  %i.in = fmul double %i.id, %i.im
  %i.io = fadd double %i.in, f0x3FCA8302989A7495
  %i.ip = fmul double %i.id, %i.io
  %i.iq = fadd double %i.ip, 1.000000e+00
  %i.ir = fadd double %6, f0xBC358A126215D791
  %i.is = fmul double %i.id, %i.ir
  %i.it = fadd double %i.is, f0x3D799D12E644E353
  %i.iu = fmul double %i.id, %i.it
  %i.iv = fadd double %i.iu, f0x3DFC498577150DA8
  %i.iw = fmul double %i.id, %i.iv
  %i.ix = fadd double %i.iw, f0x3E654744F62A2FA7
  %i.iy = fmul double %i.id, %i.ix
  %i.iz = fadd double %i.iy, f0x3EBB3EEE71F415AB
  %i.ja = fmul double %i.id, %i.iz
  %i.jb = fadd double %i.ja, f0x3EFAB5AB62659961
  %i.jc = fmul double %i.id, %i.jb
  %i.jd = fadd double %i.jc, f0xBEE0573F91EF690B
  %i.je = fmul double %i.id, %i.jd
  %i.jf = fadd double %i.je, f0xBF64764F96926AAD
  %i.jg = fdiv double %i.jf, %i.iq
  %i.jh = fmul nnan double %i.at, f0x3FEFE89E00000000
  %i.ji = fmul double %i.at, %i.jg
  %i.jj = fadd double %i.jh, %i.ji
  br label %bb.g

bb.g:                                             ; preds = %.lr.ph.i.i9, %.lr.ph.i.i29, %.lr.ph.i.i49, %.lr.ph.i.i59, %.lr.ph.i.i39, %.lr.ph.i.i19, %.lr.ph.i.i
  %.sroa.0.0 = phi double [ %i.aq, %.lr.ph.i.i ], [ %i.ck, %.lr.ph.i.i9 ], [ %i.ea, %.lr.ph.i.i19 ], [ %i.fk, %.lr.ph.i.i29 ], [ %i.gu, %.lr.ph.i.i39 ], [ %i.jj, %.lr.ph.i.i59 ], [ %i.ic, %.lr.ph.i.i49 ]
  %i.jk = fmul double %2, %.sroa.0.0
  ret double %i.jk
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf3erf(double noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq double %0, +inf
  br i1 %i.b, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq double %0, -inf
  br i1 %i.c, label %bb.f, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = fcmp oeq double %0, 0.000000e+00
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %0, i1 noundef zeroext false)
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a, %bb.e
  %.sroa.0.0 = phi double [ %i.e, %bb.e ], [ +qnan, %bb.a ], [ 1.000000e+00, %bb.b ], [ -1.000000e+00, %bb.c ], [ 0.000000e+00, %bb.d ]
  ret double %.sroa.0.0
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf4erfc(double noundef %0) unnamed_addr #3 {
bb.a:
  %i.a = fcmp uno double %0, 0.000000e+00
  br i1 %i.a, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp oeq double %0, +inf
  br i1 %i.b, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp oeq double %0, -inf
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %0, i1 noundef zeroext true)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.d
  %.sroa.0.0 = phi double [ %i.d, %bb.d ], [ +qnan, %bb.a ], [ 0.000000e+00, %bb.b ], [ 2.000000e+00, %bb.c ]
  ret double %.sroa.0.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf7erf_inv(double noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = fcmp oeq double %0, 0.000000e+00
  br i1 %i.a, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %0, 1.000000e+00
  br i1 %i.b, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp ugt double %0, -1.000000e+00
  br i1 %i.c, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.d = fcmp olt double %0, 0.000000e+00
  br i1 %i.d, label %bb.f, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.e = fsub double 1.000000e+00, %0
  %i.f = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %0, double noundef %i.e, double noundef 1.000000e+00)
  br label %bb.g

bb.f:                                             ; preds = %bb.d
  %i.g = fneg double %0
  %i.h = fadd double %0, 1.000000e+00
  %i.i = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %i.g, double noundef %i.h, double noundef -1.000000e+00)
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.b, %bb.a, %bb.e, %bb.f
  %.sroa.0.0 = phi double [ %i.f, %bb.e ], [ 0.000000e+00, %bb.a ], [ +inf, %bb.b ], [ %i.i, %bb.f ], [ -inf, %bb.c ]
  ret double %.sroa.0.0
}

; Function Attrs: nofree nosync nounwind nonlazybind memory(none) uwtable
define internal fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %0, i1 noundef zeroext %1) unnamed_addr #3 personality ptr @rust_eh_personality {
bb.a:
  %i.a = fcmp olt double %0, 0.000000e+00
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp olt double %0, 5.000000e-01
  br i1 %i.b, label %bb.e, label %bb.d

bb.c:                                             ; preds = %bb.a
  br i1 %1, label %bb.y, label %bb.x

bb.d:                                             ; preds = %bb.b
  %i.c = fcmp olt double %0, 1.100000e+02
  br i1 %i.c, label %bb.f, label %bb.s

bb.e:                                             ; preds = %bb.b
  %i.d = fcmp olt double %0, 1.000000e-10
  br i1 %i.d, label %bb.t, label %.lr.ph.i.i129

bb.f:                                             ; preds = %bb.d
  %i.e = fcmp olt double %0, 7.500000e-01
  br i1 %i.e, label %.lr.ph.i.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.f = fcmp olt double %0, 1.250000e+00
  br i1 %i.f, label %.lr.ph.i.i9, label %bb.h

.lr.ph.i.i:                                       ; preds = %bb.f
  %i.g = fadd double %0, -5.000000e-01            ; 11 uses
  %2 = fmul double %i.g, 0.000000e+00             ; 2 uses
  %i.h = fadd double %2, f0x3F874A6C0F3992A8
  %i.i = fmul double %i.g, %i.h
  %i.j = fadd double %i.i, f0x3FBFF39454A00BE6
  %i.k = fmul double %i.g, %i.j
  %i.l = fadd double %i.k, f0x3FE2A68630B18DA4
  %i.m = fmul double %i.g, %i.l
  %i.n = fadd double %i.m, f0x3FF6F8DD69971B95
  %i.o = fmul double %i.g, %i.n
  %i.p = fadd double %i.o, f0x3FFDAC08CF78FF03
  %i.q = fmul double %i.g, %i.p
  %i.r = fadd double %i.q, 1.000000e+00
  %i.s = fadd double %2, f0x3F648C7D3C5204C4
  %i.t = fmul double %i.g, %i.s
  %i.u = fadd double %i.t, f0x3F9C12490870F4E6
  %i.v = fmul double %i.g, %i.u
  %i.w = fadd double %i.v, f0x3FC013FECD8DFDFB
  %i.x = fmul double %i.g, %i.w
  %i.y = fadd double %i.x, f0x3FD2033A7404E7F0
  %i.z = fmul double %i.g, %i.y
  %i.aa = fadd double %i.z, f0x3FD2B4413E65C56D
  %i.ab = fmul double %i.g, %i.aa
  %i.ac = fadd double %i.ab, f0xBFA2860F1B3A786A
  %i.ad = fdiv double %i.ac, %i.r
  br label %bb.r

bb.h:                                             ; preds = %bb.g
  %i.ae = fcmp olt double %0, 2.250000e+00
  br i1 %i.ae, label %.lr.ph.i.i19, label %bb.i

.lr.ph.i.i9:                                      ; preds = %bb.g
  %i.af = fadd double %0, -7.500000e-01           ; 13 uses
  %3 = fmul double %i.af, 0.000000e+00            ; 2 uses
  %i.ag = fadd double %3, f0x3F617A8CBF6E1101
  %i.ah = fmul double %i.af, %i.ag
  %i.ai = fadd double %i.ah, f0x3FA05CA8B0FA60AC
  %i.aj = fmul double %i.af, %i.ai
  %i.ak = fadd double %i.aj, f0x3FCADA80CC42AEB5
  %i.al = fmul double %i.af, %i.ak
  %i.am = fadd double %i.al, f0x3FE895692195E879
  %i.an = fmul double %i.af, %i.am
  %i.ao = fadd double %i.an, f0x3FFA5CAA1D7D869B
  %i.ap = fmul double %i.af, %i.ao
  %i.aq = fadd double %i.ap, f0x3FFF48808F7EF16B
  %i.ar = fmul double %i.af, %i.aq
  %i.as = fadd double %i.ar, 1.000000e+00
  %i.at = fadd double %3, f0x3F3428CD8744A911
  %i.au = fmul double %i.af, %i.at
  %i.av = fadd double %i.au, f0x3F72E1409D3F718F
  %i.aw = fmul double %i.af, %i.av
  %i.ax = fadd double %i.aw, f0x3F9E592F7BC5D2C3
  %i.ay = fmul double %i.af, %i.ax
  %i.az = fadd double %i.ay, f0x3FBA4EB1968ADD3C
  %i.ba = fmul double %i.af, %i.az
  %i.bb = fadd double %i.ba, f0x3FC87B37A5508D5B
  %i.bc = fmul double %i.af, %i.bb
  %i.bd = fadd double %i.bc, f0x3FC39AEAED379B5C
  %i.be = fmul double %i.af, %i.bd
  %i.bf = fadd double %i.be, f0xBFA45F0D5051DD96
  %i.bg = fdiv double %i.bf, %i.as
  br label %bb.r

bb.i:                                             ; preds = %bb.h
  %i.bh = fcmp olt double %0, 3.500000e+00
  br i1 %i.bh, label %.lr.ph.i.i29, label %bb.j

.lr.ph.i.i19:                                     ; preds = %bb.h
  %i.bi = fadd double %0, -1.250000e+00           ; 14 uses
  %4 = fmul double %i.bi, 0.000000e+00            ; 2 uses
  %i.bj = fadd double %4, f0xBE46E69DF31023D9
  %i.bk = fmul double %i.bi, %i.bj
  %i.bl = fadd double %i.bk, f0x3F5127F5436FD1D0
  %i.bm = fmul double %i.bi, %i.bl
  %i.bn = fadd double %i.bm, f0x3F9261BCD623B4B3
  %i.bo = fmul double %i.bi, %i.bn
  %i.bp = fadd double %i.bo, f0x3FC1202181FF5892
  %i.bq = fmul double %i.bi, %i.bp
  %i.br = fadd double %i.bq, f0x3FE1AE5073838440
  %i.bs = fmul double %i.bi, %i.br
  %i.bt = fadd double %i.bs, f0x3FF542E93CF04690
  %i.bu = fmul double %i.bi, %i.bt
  %i.bv = fadd double %i.bu, f0x3FFC279CC25241D0
  %i.bw = fmul double %i.bi, %i.bv
  %i.bx = fadd double %i.bw, 1.000000e+00
  %i.by = fadd double %4, f0x3F1465A8515B0D60
  %i.bz = fmul double %i.bi, %i.by
  %i.ca = fadd double %i.bz, f0x3F55DD71D4C65F12
  %i.cb = fmul double %i.bi, %i.ca
  %i.cc = fadd double %i.cb, f0x3F83C16F25F8F804
  %i.cd = fmul double %i.bi, %i.cc
  %i.ce = fadd double %i.cd, f0x3FA2D294730CAE8F
  %i.cf = fmul double %i.bi, %i.ce
  %i.cg = fadd double %i.cf, f0x3FB2974CCA232437
  %i.ch = fmul double %i.bi, %i.cg
  %i.ci = fadd double %i.ch, f0x3FAB9342AC19980A
  %i.cj = fmul double %i.bi, %i.ci
  %i.ck = fadd double %i.cj, f0xBF9ECE4D6796BE78
  %i.cl = fdiv double %i.ck, %i.bx
  br label %bb.r

bb.j:                                             ; preds = %bb.i
  %i.cm = fcmp olt double %0, 5.250000e+00
  br i1 %i.cm, label %.lr.ph.i.i39, label %bb.k

.lr.ph.i.i29:                                     ; preds = %bb.i
  %i.cn = fadd double %0, -2.250000e+00           ; 13 uses
  %5 = fmul double %i.cn, 0.000000e+00            ; 2 uses
  %i.co = fadd double %5, f0x3F3857697BEF4DCE
  %i.cp = fmul double %i.cn, %i.co
  %i.cq = fadd double %i.cp, f0x3F7F952721B41D3F
  %i.cr = fmul double %i.cn, %i.cq
  %i.cs = fadd double %i.cr, f0x3FB1A848C940129C
  %i.ct = fmul double %i.cn, %i.cs
  %i.cu = fadd double %i.ct, f0x3FD5B685836455EC
  %i.cv = fmul double %i.cn, %i.cu
  %i.cw = fadd double %i.cv, f0x3FEEE489E5EC2082
  %i.cx = fmul double %i.cn, %i.cw
  %i.cy = fadd double %i.cx, f0x3FF80F6901D746E6
  %i.cz = fmul double %i.cn, %i.cy
  %i.da = fadd double %i.cz, 1.000000e+00
  %i.db = fadd double %5, f0x3EE9472B381F745E
  %i.dc = fmul double %i.cn, %i.db
  %i.dd = fadd double %i.dc, f0x3F3066291FEE5956
  %i.de = fmul double %i.cn, %i.dd
  %i.df = fadd double %i.de, f0x3F617A6FFACCBC16
  %i.dg = fmul double %i.cn, %i.df
  %i.dh = fadd double %i.dg, f0x3F830F61D8F35C37
  %i.di = fmul double %i.cn, %i.dh
  %i.dj = fadd double %i.di, f0x3F94B5745354CF6C
  %i.dk = fmul double %i.cn, %i.dj
  %i.dl = fadd double %i.dk, f0x3F8D3576F73365B0
  %i.dm = fmul double %i.cn, %i.dl
  %i.dn = fadd double %i.dm, f0xBF8825C09E26F4FF
  %i.do = fdiv double %i.dn, %i.da
  br label %bb.r

bb.k:                                             ; preds = %bb.j
  %i.dp = fcmp olt double %0, 8.000000e+00
  br i1 %i.dp, label %.lr.ph.i.i49, label %bb.l

.lr.ph.i.i39:                                     ; preds = %bb.j
  %i.dq = fadd double %0, -3.500000e+00           ; 14 uses
  %6 = fmul double %i.dq, 0.000000e+00            ; 2 uses
  %i.dr = fadd double %6, f0xBD9479638412F551
  %i.ds = fmul double %i.dq, %i.dr
  %i.dt = fadd double %i.ds, f0x3F1760D90924716F
  %i.du = fmul double %i.dq, %i.dt
  %i.dv = fadd double %i.du, f0x3F63B64ADD07D3AD
  %i.dw = fmul double %i.dq, %i.dv
  %i.dx = fadd double %i.dw, f0x3F9C519D1855EBE6
  %i.dy = fmul double %i.dq, %i.dx
  %i.dz = fadd double %i.dy, f0x3FC6261F905204D0
  %i.ea = fmul double %i.dq, %i.dz
  %i.eb = fadd double %i.ea, f0x3FE3DE887033BA66
  %i.ec = fmul double %i.dq, %i.eb
  %i.ed = fadd double %i.ec, f0x3FF35CF781918718
  %i.ee = fmul double %i.dq, %i.ed
  %i.ef = fadd double %i.ee, 1.000000e+00
  %i.eg = fadd double %6, f0x3EB6BB1331561EA9
  %i.eh = fmul double %i.dq, %i.eg
  %i.ei = fadd double %i.eh, f0x3F032A896A3258D6
  %i.ej = fmul double %i.dq, %i.ei
  %i.ek = fadd double %i.ej, f0x3F39E2BB6CB915CD
  %i.el = fmul double %i.dq, %i.ek
  %i.em = fadd double %i.el, f0x3F616AE3FEDB1F28
  %i.en = fmul double %i.dq, %i.em
  %i.eo = fadd double %i.en, f0x3F768353B788B85A
  %i.ep = fmul double %i.dq, %i.eo
  %i.eq = fadd double %i.ep, f0x3F708E3E048FECEE
  %i.er = fmul double %i.dq, %i.eq
  %i.es = fadd double %i.er, f0xBF76673C997A0745
  %i.et = fdiv double %i.es, %i.ef
  br label %bb.r

bb.l:                                             ; preds = %bb.k
  %i.eu = fcmp olt double %0, 1.150000e+01
  br i1 %i.eu, label %.lr.ph.i.i59, label %bb.m

.lr.ph.i.i49:                                     ; preds = %bb.k
  %i.ev = fadd double %0, -5.250000e+00           ; 12 uses
  %7 = fmul double %i.ev, 0.000000e+00            ; 2 uses
  %i.ew = fadd double %7, f0x3D91CDD0D57B5890
  %i.ex = fmul double %i.ev, %i.ew
  %i.ey = fadd double %i.ex, f0x3F213ED1FF3BF073
  %i.ez = fmul double %i.ev, %i.ey
  %i.fa = fadd double %i.ez, f0x3F6F4614960BAB24
  %i.fb = fmul double %i.ev, %i.fa
  %i.fc = fadd double %i.fb, f0x3FA708A172135BA7
  %i.fd = fmul double %i.ev, %i.fc
  %i.fe = fadd double %i.fd, f0x3FD135AF552C55A1
  %i.ff = fmul double %i.ev, %i.fe
  %i.fg = fadd double %i.ff, f0x3FEA1178D2DE2022
  %i.fh = fmul double %i.ev, %i.fg
  %i.fi = fadd double %i.fh, 1.000000e+00
  %i.fj = fadd double %7, f0x3EAEF8E28055E8B2
  %i.fk = fmul double %i.ev, %i.fj
  %i.fl = fadd double %i.fk, f0x3EFC15518F92221A
  %i.fm = fmul double %i.ev, %i.fl
  %i.fn = fadd double %i.fm, f0x3F324064101DFD17
  %i.fo = fmul double %i.ev, %i.fn
  %i.fp = fadd double %i.fo, f0x3F53A60EE73B1C5D
  %i.fq = fmul double %i.ev, %i.fp
  %i.fr = fadd double %i.fq, f0x3F559B43D73242E0
  %i.fs = fmul double %i.ev, %i.fr
  %i.ft = fadd double %i.fs, f0xBF662D768C29692F
  %i.fu = fdiv double %i.ft, %i.fi
  br label %bb.r

bb.m:                                             ; preds = %bb.l
  %i.fv = fcmp olt double %0, 1.700000e+01
  br i1 %i.fv, label %.lr.ph.i.i69, label %bb.n

.lr.ph.i.i59:                                     ; preds = %bb.l
  %i.fw = fadd double %0, -8.000000e+00           ; 11 uses
  %8 = fmul double %i.fw, 0.000000e+00            ; 2 uses
  %i.fx = fadd double %8, f0x3EF96EDBBE2826F3
  %i.fy = fmul double %i.fw, %i.fx
  %i.fz = fadd double %i.fy, f0x3F50634EAD574464
  %i.ga = fmul double %i.fw, %i.fz
  %i.gb = fadd double %i.ga, f0x3F9108394EFB8EF6
  %i.gc = fmul double %i.fw, %i.gb
  %i.gd = fadd double %i.gc, f0x3FC1D6A85B132706
  %i.ge = fmul double %i.fw, %i.gd
  %i.gf = fadd double %i.ge, f0x3FE2D251AC6E3C30
  %i.gg = fmul double %i.fw, %i.gf
  %i.gh = fadd double %i.gg, 1.000000e+00
  %i.gi = fadd double %8, f0x3E74E4573E216C45
  %i.gj = fmul double %i.fw, %i.gi
  %i.gk = fadd double %i.gj, f0x3ECAEC771C713182
  %i.gl = fmul double %i.fw, %i.gk
  %i.gm = fadd double %i.gl, f0x3F08651138ED1AFC
  %i.gn = fmul double %i.fw, %i.gm
  %i.go = fadd double %i.gn, f0x3F31FD56546EB587
  %i.gp = fmul double %i.fw, %i.go
  %i.gq = fadd double %i.gp, f0x3F3AA2AFFC20CB14
  %i.gr = fmul double %i.fw, %i.gq
  %i.gs = fadd double %i.gr, f0xBF52037FEC974D87
  %i.gt = fdiv double %i.gs, %i.gh
  br label %bb.r

bb.n:                                             ; preds = %bb.m
  %i.gu = fcmp olt double %0, 2.400000e+01
  br i1 %i.gu, label %.lr.ph.i.i79, label %bb.o

.lr.ph.i.i69:                                     ; preds = %bb.m
  %i.gv = fadd double %0, -1.150000e+01           ; 10 uses
  %9 = fmul double %i.gv, 0.000000e+00            ; 2 uses
  %i.gw = fadd double %9, f0xBD40890EB0F35562
  %i.gx = fmul double %i.gv, %i.gw
  %i.gy = fadd double %i.gx, f0x3F0C152605F42E73
  %i.gz = fmul double %i.gv, %i.gy
  %i.ha = fadd double %i.gz, f0x3F645C751531C134
  %i.hb = fmul double %i.gv, %i.ha
  %i.hc = fadd double %i.hb, f0x3FA6420C01BF3C7C
  %i.hd = fmul double %i.gv, %i.hc
  %i.he = fadd double %i.hd, f0x3FD5BC9DE05E45ED
  %i.hf = fmul double %i.gv, %i.he
  %i.hg = fadd double %i.hf, 1.000000e+00
  %i.hh = fadd double %9, f0x3E762549A2B5E6F0
  %i.hi = fmul double %i.gv, %i.hh
  %i.hj = fadd double %i.hi, f0x3ED00E7DB67CB7C0
  %i.hk = fmul double %i.gv, %i.hj
  %i.hl = fadd double %i.hk, f0x3F0B2ED17208AAE0
  %i.hm = fmul double %i.gv, %i.hl
  %i.hn = fadd double %i.hm, f0x3F26376D601063CC
  %i.ho = fmul double %i.gv, %i.hn
  %i.hp = fadd double %i.ho, f0xBF42A5C9DB639782
  %i.hq = fdiv double %i.hp, %i.hg
  br label %bb.r

bb.o:                                             ; preds = %bb.n
  %i.hr = fcmp olt double %0, 3.800000e+01
  br i1 %i.hr, label %.lr.ph.i.i89, label %bb.p

.lr.ph.i.i79:                                     ; preds = %bb.n
  %i.hs = fadd double %0, -1.700000e+01           ; 9 uses
  %10 = fmul double %i.hs, 0.000000e+00           ; 2 uses
  %i.ht = fadd double %10, f0x3EE88A6CC2C8FD80
  %i.hu = fmul double %i.hs, %i.ht
  %i.hv = fadd double %i.hu, f0x3F4A1F47247F210E
  %i.hw = fmul double %i.hs, %i.hv
  %i.hx = fadd double %i.hw, f0x3F94E8A35CC453C1
  %i.hy = fmul double %i.hs, %i.hx
  %i.hz = fadd double %i.hy, f0x3FCDD463EC42C5C4
  %i.ia = fmul double %i.hs, %i.hz
  %i.ib = fadd double %i.ia, 1.000000e+00
  %i.ic = fadd double %10, f0x3E4256C21E2E7745
  %i.id = fmul double %i.hs, %i.ic
  %i.ie = fadd double %i.id, f0x3EA3854C7676D755
  %i.if = fmul double %i.hs, %i.ie
  %i.ig = fadd double %i.if, f0x3EE853A59B5B06A2
  %i.ih = fmul double %i.hs, %i.ig
  %i.ii = fadd double %i.ih, f0x3F0E1B1DFDC170DF
  %i.ij = fmul double %i.hs, %i.ii
  %i.ik = fadd double %i.ij, f0xBF2FA1240925712B
  %i.il = fdiv double %i.ik, %i.ib
  br label %bb.r

bb.p:                                             ; preds = %bb.o
  %i.im = fcmp olt double %0, 6.000000e+01
  br i1 %i.im, label %.lr.ph.i.i99, label %bb.q

.lr.ph.i.i89:                                     ; preds = %bb.o
  %i.in = fadd double %0, -2.400000e+01           ; 9 uses
  %11 = fmul double %i.in, 0.000000e+00           ; 2 uses
  %i.io = fadd double %11, f0x3EC9081FFC03AAFF
  %i.ip = fmul double %i.in, %i.io
  %i.iq = fadd double %i.ip, f0x3F32C83BACF00562
  %i.ir = fmul double %i.in, %i.iq
  %i.is = fadd double %i.ir, f0x3F852B21788F8E0B
  %i.it = fmul double %i.in, %i.is
  %i.iu = fadd double %i.it, f0x3FC53C779B5FDF5F
  %i.iv = fmul double %i.in, %i.iu
  %i.iw = fadd double %i.iv, 1.000000e+00
  %i.ix = fadd double %11, f0x3E1185C5A48198A9
  %i.iy = fmul double %i.in, %i.ix
  %i.iz = fadd double %i.iy, f0x3E7A4BA73DABC969
  %i.ja = fmul double %i.in, %i.iz
  %i.jb = fadd double %i.ja, f0x3EC6933A38E86AF4
  %i.jc = fmul double %i.in, %i.jb
  %i.jd = fadd double %i.jc, f0x3EF10E8C08CBD9DB
  %i.je = fmul double %i.in, %i.jd
  %i.jf = fadd double %i.je, f0xBF23399612B68009
  %i.jg = fdiv double %i.jf, %i.iw
  br label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.jh = fcmp olt double %0, 8.500000e+01
  br i1 %i.jh, label %.lr.ph.i.i119, label %.lr.ph.i.i109

.lr.ph.i.i99:                                     ; preds = %bb.p
  %i.ji = fadd double %0, -3.800000e+01           ; 9 uses
  %12 = fmul double %i.ji, 0.000000e+00           ; 2 uses
  %i.jj = fadd double %12, f0x3EA0086DEE051D20
  %i.jk = fmul double %i.ji, %i.jj
  %i.jl = fadd double %i.jk, f0x3F130A607A930BB2
  %i.jm = fmul double %i.ji, %i.jl
  %i.jn = fadd double %i.jm, f0x3F70F806306A7911
  %i.jo = fmul double %i.ji, %i.jn
  %i.jp = fadd double %i.jo, f0x3FBAE654F83D0708
  %i.jq = fmul double %i.ji, %i.jp
  %i.jr = fadd double %i.jq, 1.000000e+00
  %i.js = fadd double %12, f0x3DD1F675D5233006
  %i.jt = fmul double %i.ji, %i.js
  %i.ju = fadd double %i.jt, f0x3E4555152B908C58
  %i.jv = fmul double %i.ji, %i.ju
  %i.jw = fadd double %i.jv, f0x3E9CFA1C8F541561
  %i.jx = fmul double %i.ji, %i.jw
  %i.jy = fadd double %i.jx, f0x3ED14D4BBF614388
  %i.jz = fmul double %i.ji, %i.jy
  %i.ka = fadd double %i.jz, f0xBF0E9D0D0B373EE1
  %i.kb = fdiv double %i.ka, %i.jr
  br label %bb.r

.lr.ph.i.i109:                                    ; preds = %bb.q
  %i.kc = fadd double %0, -8.500000e+01           ; 7 uses
  %13 = fmul double %i.kc, 0.000000e+00           ; 2 uses
  %i.kd = fadd double %13, f0x3EC042D55E53F73E
  %i.ke = fmul double %i.kc, %i.kd
  %i.kf = fadd double %i.ke, f0x3F3EAA631AAAEB2B
  %i.kg = fmul double %i.kc, %i.kf
  %i.kh = fadd double %i.kg, f0x3FA33782A011B308
  %i.ki = fmul double %i.kc, %i.kh
  %i.kj = fadd double %i.ki, 1.000000e+00
  %i.kk = fadd double %13, f0x3DD098452B9A172F
  %i.kl = fmul double %i.kc, %i.kk
  %i.km = fadd double %i.kl, f0x3E4F4B818AEB0BF7
  %i.kn = fmul double %i.kc, %i.km
  %i.ko = fadd double %i.kn, f0x3EA4DFB2F8E2F0ED
  %i.kp = fmul double %i.kc, %i.ko
  %i.kq = fadd double %i.kp, f0xBEE08D1E2C7700D9
  %i.kr = fdiv double %i.kq, %i.kj
  br label %bb.r

.lr.ph.i.i119:                                    ; preds = %bb.q
  %i.ks = fadd double %0, -6.000000e+01           ; 8 uses
  %14 = fmul double %i.ks, 0.000000e+00           ; 2 uses
  %i.kt = fadd double %14, f0x3CC3475E9F0DF0D7
  %i.ku = fmul double %i.ks, %i.kt
  %i.kv = fadd double %i.ku, f0x3ED6B111B37D0F96
  %i.kw = fmul double %i.ks, %i.kv
  %i.kx = fadd double %i.kw, f0x3F4E5F3333C513BB
  %i.ky = fmul double %i.ks, %i.kx
  %i.kz = fadd double %i.ky, f0x3FAB091FDDC6C88F
  %i.la = fmul double %i.ks, %i.kz
  %i.lb = fadd double %i.la, 1.000000e+00
  %i.lc = fadd double %14, f0x3DF5D108FF92D02C
  %i.ld = fmul double %i.ks, %i.lc
  %i.le = fadd double %i.ld, f0x3E6D3356D558BF09
  %i.lf = fmul double %i.ks, %i.le
  %i.lg = fadd double %i.lf, f0x3EBA6192D4306610
  %i.lh = fmul double %i.ks, %i.lg
  %i.li = fadd double %i.lh, f0xBEF4999FB48AB20A
  %i.lj = fdiv double %i.li, %i.lb
  br label %bb.r

bb.r:                                             ; preds = %.lr.ph.i.i9, %.lr.ph.i.i29, %.lr.ph.i.i49, %.lr.ph.i.i69, %.lr.ph.i.i89, %.lr.ph.i.i109, %.lr.ph.i.i119, %.lr.ph.i.i99, %.lr.ph.i.i79, %.lr.ph.i.i59, %.lr.ph.i.i39, %.lr.ph.i.i19, %.lr.ph.i.i
  %.sroa.03.0 = phi double [ f0x3FD6047E2008B773, %.lr.ph.i.i ], [ f0x3FDAE121A0053AF5, %.lr.ph.i.i9 ], [ f0x3FDF59E83FFA28EC, %.lr.ph.i.i19 ], [ f0x3FE103FD8005E540, %.lr.ph.i.i29 ], [ f0x3FE19162E001DA61, %.lr.ph.i.i39 ], [ f0x3FE1D45EC0040581, %.lr.ph.i.i49 ], [ f0x3FE1F38DFFFE14A8, %.lr.ph.i.i59 ], [ f0x3FE201393FFA8769, %.lr.ph.i.i69 ], [ f0x3FE207DCE000B652, %.lr.ph.i.i79 ], [ f0x3FE20B0A7FFC32C3, %.lr.ph.i.i89 ], [ f0x3FE20CB87FFF37DB, %.lr.ph.i.i99 ], [ f0x3FE20D5C400153BB, %.lr.ph.i.i119 ], [ f0x3FE20D95FFFB0541, %.lr.ph.i.i109 ]
  %.sroa.02.0 = phi double [ %i.ad, %.lr.ph.i.i ], [ %i.bg, %.lr.ph.i.i9 ], [ %i.cl, %.lr.ph.i.i19 ], [ %i.do, %.lr.ph.i.i29 ], [ %i.et, %.lr.ph.i.i39 ], [ %i.fu, %.lr.ph.i.i49 ], [ %i.gt, %.lr.ph.i.i59 ], [ %i.hq, %.lr.ph.i.i69 ], [ %i.il, %.lr.ph.i.i79 ], [ %i.jg, %.lr.ph.i.i89 ], [ %i.kb, %.lr.ph.i.i99 ], [ %i.lj, %.lr.ph.i.i119 ], [ %i.kr, %.lr.ph.i.i109 ]
  %i.lk = fneg double %0
  %i.ll = fmul nnan double %0, %i.lk
  %i.lm = tail call double @llvm.exp.f64(double %i.ll)
  %i.ln = fdiv double %i.lm, %0                   ; 2 uses
  %i.lo = fmul nnan double %i.ln, %.sroa.03.0
  %i.lp = fmul double %i.ln, %.sroa.02.0
  %i.lq = fadd double %i.lo, %i.lp
  br label %bb.s

bb.s:                                             ; preds = %bb.d, %.lr.ph.i.i129, %bb.t, %bb.r
  %.sroa.0.0 = phi double [ %i.na, %bb.t ], [ %i.mx, %.lr.ph.i.i129 ], [ %i.lq, %bb.r ], [ 0.000000e+00, %bb.d ] ; 3 uses
  %i.lr = fcmp ult double %0, 5.000000e-01        ; 2 uses
  br i1 %1, label %bb.v, label %bb.u

.lr.ph.i.i129:                                    ; preds = %bb.e
  %i.ls = fmul nnan double %0, f0xBF442E8CBA744654
  %i.lt = fadd nnan double %i.ls, f0x3F70B7ED144F85E0
  %i.lu = fmul nnan double %0, %i.lt
  %i.lv = fadd nnan double %i.lu, f0xBF88947BDCCF6D81
  %i.lw = fmul nnan double %0, %i.lv
  %i.lx = fadd nnan double %i.lw, f0x3FB0C6D4279A8C98
  %i.ly = fmul nnan double %0, %i.lx
  %i.lz = fadd nnan double %i.ly, f0xBFB58D6AF6B0D104
  %i.ma = fmul nnan double %0, %i.lz
  %i.mb = fadd nnan double %i.ma, f0x3FDA671AA40339A7
  %i.mc = fmul nnan double %0, %i.mb
  %i.md = fadd nnan double %i.mc, f0xBFCBEA50922A4F87
  %i.me = fmul nnan double %0, %i.md
  %i.mf = fadd double %i.me, 1.000000e+00
  %i.mg = fmul nnan double %0, f0x3F4C8FE6D17A0F95
  %i.mh = fadd nnan double %i.mg, f0xBF744768787A10DB
  %i.mi = fmul nnan double %0, %i.mh
  %i.mj = fadd nnan double %i.mi, f0x3F7CBD686C3F8617
  %i.mk = fmul nnan double %0, %i.mj
  %i.ml = fadd nnan double %i.mk, f0xBFA58F4D4B908133
  %i.mm = fmul nnan double %0, %i.ml
  %i.mn = fadd nnan double %i.mm, f0x3FB4ED30DA5E06CF
  %i.mo = fmul nnan double %0, %i.mn
  %i.mp = fadd nnan double %i.mo, f0xBFD7FB9D5776CC6F
  %i.mq = fmul nnan double %0, %i.mp
  %i.mr = fadd nnan double %i.mq, f0xBF48260A19370C5D
  %i.ms = fmul nnan double %0, %i.mr
  %i.mt = fadd nnan double %i.ms, f0x3F6BAEA08536DA23
  %i.mu = fmul nnan double %0, 1.125000e+00
  %i.mv = fmul nnan double %0, %i.mt
  %i.mw = fdiv double %i.mv, %i.mf
  %i.mx = fadd double %i.mu, %i.mw
  br label %bb.s

bb.t:                                             ; preds = %bb.e
  %i.my = fmul nnan double %0, 1.125000e+00
  %i.mz = fmul nnan double %0, f0x3F6BAEA08536DA23
  %i.na = fadd double %i.my, %i.mz
  br label %bb.s

bb.u:                                             ; preds = %bb.s
  br i1 %i.lr, label %common.ret193, label %bb.w

bb.v:                                             ; preds = %bb.s
  br i1 %i.lr, label %bb.w, label %common.ret193

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.nb = fsub double 1.000000e+00, %.sroa.0.0
  br label %common.ret193

common.ret193:                                    ; preds = %bb.u, %bb.w, %bb.v, %bb.aa, %bb.z, %bb.x
  %common.ret193.op = phi double [ %i.nk, %bb.aa ], [ %i.ne, %bb.x ], [ %i.ni, %bb.z ], [ %.sroa.0.0, %bb.v ], [ %.sroa.0.0, %bb.u ], [ %i.nb, %bb.w ]
  ret double %common.ret193.op

bb.x:                                             ; preds = %bb.c
  %i.nc = fneg double %0
  %i.nd = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %i.nc, i1 noundef zeroext false)
  %i.ne = fneg double %i.nd
  br label %common.ret193

bb.y:                                             ; preds = %bb.c
  %i.nf = fcmp olt double %0, -5.000000e-01
  %i.ng = fneg double %0                          ; 2 uses
  br i1 %i.nf, label %bb.aa, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.nh = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %i.ng, i1 noundef zeroext false)
  %i.ni = fadd double %i.nh, 1.000000e+00
  br label %common.ret193

bb.aa:                                            ; preds = %bb.y
  %i.nj = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erf_impl(double noundef %i.ng, i1 noundef zeroext true)
  %i.nk = fsub double 2.000000e+00, %i.nj
  br label %common.ret193
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf8erfc_inv(double noundef %0) unnamed_addr #2 {
bb.a:
  %i.a = fcmp ugt double %0, 0.000000e+00
  br i1 %i.a, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = fcmp ult double %0, 2.000000e+00
  br i1 %i.b, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = fcmp ogt double %0, 1.000000e+00
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = fsub double 1.000000e+00, %0
  %i.e = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %i.d, double noundef %0, double noundef 1.000000e+00)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.f = fadd double %0, -1.000000e+00
  %i.g = fsub double 2.000000e+00, %0
  %i.h = tail call fastcc noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function3erf12erf_inv_impl(double noundef %i.f, double noundef %i.g, double noundef -1.000000e+00)
  br label %bb.f

bb.f:                                             ; preds = %bb.b, %bb.a, %bb.e, %bb.d
  %.sroa.0.0 = phi double [ %i.e, %bb.d ], [ +inf, %bb.a ], [ %i.h, %bb.e ], [ -inf, %bb.b ]
  ret double %.sroa.0.0
}

; Function Attrs: nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable
define noundef double @_RNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial(double noundef %0, ptr noalias nofree noundef nonnull readonly align 8 captures(address) %1, i64 noundef range(i64 0, 1152921504606846976) %2) unnamed_addr #4 personality ptr @rust_eh_personality {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit, label %.lr.ph.i.preheader

.lr.ph.i.preheader:                               ; preds = %bb.a
  %.idx = shl nuw nsw i64 %2, 3                   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 %.idx ; 2 uses
  %i.c = add nsw i64 %.idx, -8                    ; 2 uses
  %i.d = lshr exact i64 %i.c, 3
  %i.e = add nuw nsw i64 %i.d, 1
  %xtraiter = and i64 %i.e, 7                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol

.lr.ph.i.prol:                                    ; preds = %.lr.ph.i.preheader, %.lr.ph.i.prol
  %.sroa.0.011.i.prol = phi double [ %i.h, %.lr.ph.i.prol ], [ 0.000000e+00, %.lr.ph.i.preheader ]
  %.sroa.2.010.i.prol = phi ptr [ %i.f, %.lr.ph.i.prol ], [ %i.b, %.lr.ph.i.preheader ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.prol ], [ 0, %.lr.ph.i.preheader ]
  %i.f = getelementptr inbounds i8, ptr %.sroa.2.010.i.prol, i64 -8 ; 3 uses
  %.val5.i.prol = load double, ptr %i.f, align 8, !noalias !108, !noundef !4
  %i.g = fmul double %0, %.sroa.0.011.i.prol
  %i.h = fadd double %i.g, %.val5.i.prol          ; 3 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.prol.loopexit, label %.lr.ph.i.prol, !llvm.loop !107

.lr.ph.i.prol.loopexit:                           ; preds = %.lr.ph.i.prol, %.lr.ph.i.preheader
  %.lcssa.unr = phi double [ poison, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %.sroa.0.011.i.unr = phi double [ 0.000000e+00, %.lr.ph.i.preheader ], [ %i.h, %.lr.ph.i.prol ]
  %.sroa.2.010.i.unr = phi ptr [ %i.b, %.lr.ph.i.preheader ], [ %i.f, %.lr.ph.i.prol ]
  %i.i = icmp ult i64 %i.c, 56
  br i1 %i.i, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i
  %.sroa.0.011.i = phi double [ %i.ag, %.lr.ph.i ], [ %.sroa.0.011.i.unr, %.lr.ph.i.prol.loopexit ]
  %.sroa.2.010.i = phi ptr [ %i.ae, %.lr.ph.i ], [ %.sroa.2.010.i.unr, %.lr.ph.i.prol.loopexit ] ; 8 uses
  %i.j = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -8
  %.val5.i = load double, ptr %i.j, align 8, !noalias !108, !noundef !4
  %i.k = fmul double %0, %.sroa.0.011.i
  %i.l = fadd double %i.k, %.val5.i
  %i.m = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -16
  %.val5.i.1 = load double, ptr %i.m, align 8, !noalias !108, !noundef !4
  %i.n = fmul double %0, %i.l
  %i.o = fadd double %i.n, %.val5.i.1
  %i.p = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -24
  %.val5.i.2 = load double, ptr %i.p, align 8, !noalias !108, !noundef !4
  %i.q = fmul double %0, %i.o
  %i.r = fadd double %i.q, %.val5.i.2
  %i.s = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -32
  %.val5.i.3 = load double, ptr %i.s, align 8, !noalias !108, !noundef !4
  %i.t = fmul double %0, %i.r
  %i.u = fadd double %i.t, %.val5.i.3
  %i.v = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -40
  %.val5.i.4 = load double, ptr %i.v, align 8, !noalias !108, !noundef !4
  %i.w = fmul double %0, %i.u
  %i.x = fadd double %i.w, %.val5.i.4
  %i.y = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -48
  %.val5.i.5 = load double, ptr %i.y, align 8, !noalias !108, !noundef !4
  %i.z = fmul double %0, %i.x
  %i.aa = fadd double %i.z, %.val5.i.5
  %i.ab = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -56
  %.val5.i.6 = load double, ptr %i.ab, align 8, !noalias !108, !noundef !4
  %i.ac = fmul double %0, %i.aa
  %i.ad = fadd double %i.ac, %.val5.i.6
  %i.ae = getelementptr inbounds i8, ptr %.sroa.2.010.i, i64 -64 ; 3 uses
  %.val5.i.7 = load double, ptr %i.ae, align 8, !noalias !108, !noundef !4
  %i.af = fmul double %0, %i.ad
  %i.ag = fadd double %i.af, %.val5.i.7           ; 2 uses
  %i.ah = icmp eq ptr %1, %i.ae
  br i1 %i.ah, label %_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit, label %.lr.ph.i

_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_.exit: ; preds = %.lr.ph.i.prol.loopexit, %.lr.ph.i, %bb.a
  %.sroa.0.0.lcssa.i = phi double [ 0.000000e+00, %bb.a ], [ %.lcssa.unr, %.lr.ph.i.prol.loopexit ], [ %i.ag, %.lr.ph.i ]
  ret double %.sroa.0.0.lcssa.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -2, 2) i8 @_RNvXs1_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp10PartialOrd11partial_cmpBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  tail call void @llvm.experimental.noalias.scope.decl(metadata !112)
  tail call void @llvm.experimental.noalias.scope.decl(metadata !113)
  %.val.i = load double, ptr %0, align 8, !alias.scope !112, !noundef !4 ; 3 uses
  %.val2.i = load double, ptr %1, align 8, !alias.scope !113, !noundef !4 ; 3 uses
  %.not.i = fcmp uno double %.val.i, %.val2.i
  br i1 %.not.i, label %bb.b, label %_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14, !noalias !114
  unreachable

_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_.exit: ; preds = %bb.a
  %i.a = fcmp ult double %.val.i, %.val2.i        ; 2 uses
  %i.b = fcmp ugt double %.val.i, %.val2.i
  %..i.i = select i1 %i.a, i8 -2, i8 1
  %.1.i.i = sext i1 %i.a to i8
  %.sroa.0.0.i.i = select i1 %i.b, i8 %..i.i, i8 %.1.i.i
  ret i8 %.sroa.0.0.i.i
}

; Function Attrs: nonlazybind uwtable
define hidden noundef range(i8 -1, 2) i8 @_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_(ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %0, ptr noalias nofree noundef readonly align 8 captures(none) dereferenceable(8) %1) unnamed_addr #0 {
bb.a:
  %.val = load double, ptr %0, align 8, !noundef !4 ; 3 uses
  %.val2 = load double, ptr %1, align 8, !noundef !4 ; 3 uses
  %.not = fcmp uno double %.val, %.val2
  br i1 %.not, label %bb.c, label %bb.b, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.a = fcmp ult double %.val, %.val2            ; 2 uses
  %i.b = fcmp ugt double %.val, %.val2
  %..i = select i1 %i.a, i8 -2, i8 1
  %.1.i = sext i1 %i.a to i8
  %.sroa.0.0.i = select i1 %i.b, i8 %..i, i8 %.1.i
  ret i8 %.sroa.0.0.i

bb.c:                                             ; preds = %bb.a
  tail call void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @31) #14
  unreachable
}

; Function Attrs: nounwind nonlazybind uwtable
declare noundef range(i32 0, 10) i32 @rust_eh_personality(i32 noundef, i32 noundef, i64 noundef, ptr noundef, ptr noundef) unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #7

; Function Attrs: cold minsize noinline noreturn nonlazybind optsize uwtable
declare void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef range(i8 0, 3), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), ptr noundef, ptr, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #6

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull, ptr noundef nonnull, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecTjjEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: cold minsize noinline noreturn nounwind nonlazybind optsize uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() unnamed_addr #10

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXsp_NtCs1xwejQucwHj_5alloc3vecINtB5_3VecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecTjjEENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXs1_NtCs1xwejQucwHj_5alloc7raw_vecINtB5_6RawVecdENtNtNtCs3oUPovFnLWP_4core3ops4drop4Drop4dropCs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef align 8 dereferenceable(16)) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #11

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8, i64 noundef range(i64 0, 1152921504606846976), double noundef, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance), i64 noundef range(i64 0, 1152921504606846976), double noundef, double noundef, i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 dereferenceable(24), i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvXNtNtCs1xwejQucwHj_5alloc3vec14spec_from_iterINtB4_3VecTjjEEINtB2_12SpecFromIterBU_INtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNBU_EE9from_iterCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(address) dereferenceable(24), ptr noalias nofree noundef align 8 captures(address) dead_on_return dereferenceable(24)) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution13inverse_gammaNtB5_12InverseGammaINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(16), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE3cdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs8_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_10ContinuousddE3pdf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare noundef double @_RNvXs3_NtNtCs8lmMd0ZksV9_6statrs12distribution3chiNtB5_3ChiINtB7_13ContinuousCDFddE2sf(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(8), double noundef) unnamed_addr #0

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance), i64 noundef, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nonlazybind uwtable
declare hidden void @_RNvMNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_nINtB2_12RepeatNInnerTjjEE3newCs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([24 x i8]) align 8 captures(none) dereferenceable(24), i64 noundef, i64 noundef, i64 noundef) unnamed_addr #0

; Function Attrs: nonlazybind uwtable
declare hidden void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullINtB2B_7RangeTojEECs8lmMd0ZksV9_6statrs(ptr dead_on_unwind noalias nofree noundef writable sret([32 x i8]) align 8 captures(address) dereferenceable(32), ptr noalias nofree noundef align 8 dereferenceable(40), i64 noundef) unnamed_addr #0

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.exp.f64(double) #11

; Function Attrs: cold noinline noreturn nonlazybind uwtable
declare void @_RNvNtCs3oUPovFnLWP_4core6option13unwrap_failed(ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24)) unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #11

attributes #0 = { nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(argmem: readwrite) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind nonlazybind willreturn memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #3 = { nofree nosync nounwind nonlazybind memory(none) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #4 = { nofree norecurse nosync nounwind nonlazybind memory(argmem: read) uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #5 = { nounwind nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #8 = { cold minsize noinline noreturn nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #9 = { cold noinline noreturn nonlazybind uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #10 = { cold minsize noinline noreturn nounwind nonlazybind optsize uwtable "probe-stack"="inline-asm" "target-cpu"="x86-64" }
attributes #11 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #13 = { cold noreturn nounwind }
attributes #14 = { noinline noreturn }
attributes #15 = { cold }
attributes #16 = { noreturn }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 2, !"RtLibUseGOT", i32 1}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"rustc version 1.100.0-nightly (787af2b8c 2026-08-25)"}
!4 = !{}
!5 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!6 = !{!"llvm.loop.unroll.disable"}
!7 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!8 = distinct !{!8, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!9 = distinct !{!9, !8, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!10 = distinct !{!10, !6}
!11 = !{!9}
!12 = distinct !{!12, i1 true, !"_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixTjjENtNtB6_9dimension3DynINtB1g_5ConstKj1_EINtNtB6_11vec_storage10VecStorageB1a_B1e_B1z_EE14repeat_genericCs8lmMd0ZksV9_6statrs"}
!13 = distinct !{!13, !12, !"_RNvMs_NtNtCsbADZB03g5jP_8nalgebra4base12constructionINtNtB6_6matrix6MatrixTjjENtNtB6_9dimension3DynINtB1g_5ConstKj1_EINtNtB6_11vec_storage10VecStorageB1a_B1e_B1z_EE14repeat_genericCs8lmMd0ZksV9_6statrs: argument 0"}
!14 = distinct !{!14, i1 true, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratorTjjEINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB2t_EECs8lmMd0ZksV9_6statrs"}
!15 = distinct !{!15, !14, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratorTjjEINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB2t_EECs8lmMd0ZksV9_6statrs: argument 1"}
!16 = distinct !{!16, !14, !"_RINvXs_NtNtCsbADZB03g5jP_8nalgebra4base17default_allocatorNtB5_16DefaultAllocatorINtNtB7_9allocator9AllocatorNtNtB7_9dimension3DynE22allocate_from_iteratorTjjEINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNB2t_EECs8lmMd0ZksV9_6statrs: argument 0"}
!17 = distinct !{!17, i1 true, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNTjjEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8lmMd0ZksV9_6statrs"}
!18 = distinct !{!18, !17, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNTjjEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8lmMd0ZksV9_6statrs: argument 1"}
!19 = distinct !{!19, !17, !"_RINvYINtNtNtNtCs3oUPovFnLWP_4core4iter7sources8repeat_n7RepeatNTjjEENtNtNtBa_6traits8iterator8Iterator7collectINtNtCs1xwejQucwHj_5alloc3vec3VecBZ_EECs8lmMd0ZksV9_6statrs: argument 0"}
!20 = distinct !{!20, i1 true, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTjjEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtBS_7sources8repeat_n7RepeatNBG_EECs8lmMd0ZksV9_6statrs"}
!21 = distinct !{!21, !20, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTjjEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtBS_7sources8repeat_n7RepeatNBG_EECs8lmMd0ZksV9_6statrs: argument 1"}
!22 = distinct !{!22, !20, !"_RINvXsf_NtCs1xwejQucwHj_5alloc3vecINtB6_3VecTjjEEINtNtNtNtCs3oUPovFnLWP_4core4iter6traits7collect12FromIteratorBG_E9from_iterINtNtNtBS_7sources8repeat_n7RepeatNBG_EECs8lmMd0ZksV9_6statrs: argument 0"}
!23 = distinct !{!23, i1 true, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageTjjENtNtB7_9dimension3DynINtB1c_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs"}
!24 = distinct !{!24, !23, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageTjjENtNtB7_9dimension3DynINtB1c_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs: argument 1"}
!25 = distinct !{!25, !23, !"_RNvMs2_NtNtCsbADZB03g5jP_8nalgebra4base11vec_storageINtB5_10VecStorageTjjENtNtB7_9dimension3DynINtB1c_5ConstKj1_EE3newCs8lmMd0ZksV9_6statrs: argument 0"}
!26 = distinct !{!26, i1 true, !"_RINvMsk_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE10view_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs"}
!27 = distinct !{!27, !26, !"_RINvMsk_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE10view_rangeINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEjECs8lmMd0ZksV9_6statrs: argument 1"}
!28 = distinct !{!28, i1 true, !"_RINvMsb_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE12generic_viewB1c_INtB1e_5ConstKj1_EECs8lmMd0ZksV9_6statrs"}
!29 = distinct !{!29, !28, !"_RINvMsb_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE12generic_viewB1c_INtB1e_5ConstKj1_EECs8lmMd0ZksV9_6statrs: argument 1"}
!30 = distinct !{!30, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!31 = distinct !{!31, !30, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!32 = distinct !{!32, i1 true, !"_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs"}
!33 = distinct !{!33, !32, !"_RNvMs0_NtNtCsbADZB03g5jP_8nalgebra4base7min_maxINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB18_5ConstKj1_EINtNtB7_11matrix_view11ViewStoragedB16_B1r_B1r_B16_EE6icamaxCs8lmMd0ZksV9_6statrs: argument 0"}
!34 = distinct !{!34, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!35 = distinct !{!35, !34, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!36 = distinct !{!36, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!37 = distinct !{!37, !36, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!38 = distinct !{!38, i1 true, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs"}
!39 = distinct !{!39, !38, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs: argument 0"}
!40 = distinct !{!40, i1 true, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs"}
!41 = distinct !{!41, !40, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs: argument 1"}
!42 = distinct !{!42, i1 true, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs"}
!43 = distinct !{!43, !42, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs: argument 0"}
!44 = distinct !{!44, i1 true, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign"}
!45 = distinct !{!45, !44, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign: argument 0"}
!46 = distinct !{!46, !91, !92}
!47 = distinct !{!47, !92, !91}
!48 = distinct !{!48, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!49 = distinct !{!49, !48, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!50 = distinct !{!50, i1 true, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs"}
!51 = distinct !{!51, !50, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 1"}
!52 = distinct !{!52, !50, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 0"}
!53 = distinct !{!53, i1 true, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequenceINtB5_19PermutationSequenceNtNtNtB9_4base9dimension3DynE18append_permutationCs8lmMd0ZksV9_6statrs"}
!54 = distinct !{!54, !53, !"_RNvMs1_NtNtCsbADZB03g5jP_8nalgebra6linalg20permutation_sequenceINtB5_19PermutationSequenceNtNtNtB9_4base9dimension3DynE18append_permutationCs8lmMd0ZksV9_6statrs: argument 0"}
!55 = distinct !{!55, i1 true, !"_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs"}
!56 = distinct !{!56, !55, !"_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs: argument 0"}
!57 = distinct !{!57, i1 true, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs"}
!58 = distinct !{!58, !57, !"_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs: argument 0"}
!59 = distinct !{!59, i1 true, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs"}
!60 = distinct !{!60, !59, !"_RINvMsc_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtB6_14ViewStorageMutdB1c_B1c_INtB1e_5ConstKj1_EB1c_EE22columns_range_pair_mutjINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEECs8lmMd0ZksV9_6statrs: argument 1"}
!61 = distinct !{!61, i1 true, !"_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs"}
!62 = distinct !{!62, !61, !"_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs: argument 0"}
!63 = distinct !{!63, i1 true, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs"}
!64 = distinct !{!64, !63, !"_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs: argument 0"}
!65 = distinct !{!65, i1 true, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign"}
!66 = distinct !{!66, !65, !"_RNvXs6I_NtNtCs3oUPovFnLWP_4core3ops5arithdNtB6_9MulAssign10mul_assign: argument 0"}
!67 = distinct !{!67, !91, !92}
!68 = distinct !{!68, !92, !91}
!69 = distinct !{!69, i1 true, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone"}
!70 = distinct !{!70, !69, !"_RNvXsA_NtNtCs3oUPovFnLWP_4core5clone5implsdNtB7_5Clone5clone: argument 0"}
!71 = distinct !{!71, i1 true, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs"}
!72 = distinct !{!72, !71, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 1"}
!73 = distinct !{!73, !71, !"_RINvMs_NtNtCsbADZB03g5jP_8nalgebra4base4blasINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB15_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB13_B1o_B1o_B13_EE4axpyB13_B1G_ECs8lmMd0ZksV9_6statrs: argument 0"}
!74 = !{!22, !21, !19, !18, !16, !15, !13}
!75 = !{!16, !15, !13}
!76 = !{!24}
!77 = !{!25, !16, !15, !13}
!78 = !{!25, !24, !16, !15, !13}
!79 = !{!27}
!80 = !{!29, !27}
!81 = !{!"branch_weights", i32 2000, i32 2, i32 2000}
!82 = !{!31}
!83 = !{!33}
!84 = !{!35}
!85 = !{!"branch_weights", i32 4000000, i32 4001}
!86 = !{!37}
!87 = !{!39}
!88 = !{!41}
!89 = !{!43}
!90 = !{!45}
!91 = !{!"llvm.loop.isvectorized", i32 1}
!92 = !{!"llvm.loop.unroll.runtime.disable"}
!93 = !{!49}
!94 = !{!52, !51, !39}
!95 = !{!54}
!96 = !{!56}
!97 = !{!58}
!98 = !{!60}
!99 = !{!"branch_weights", i32 4001, i32 4000000}
!100 = !{!62}
!101 = !{!64}
!102 = !{!66}
!103 = !{!70}
!104 = !{!73, !72, !58}
!105 = distinct !{!105, i1 true, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_"}
!106 = distinct !{!106, !105, !"_RINvYINtNtNtCs3oUPovFnLWP_4core5slice4iter4IterdENtNtNtNtBa_4iter6traits12double_ended19DoubleEndedIterator5rfolddNCNvNtNtCs8lmMd0ZksV9_6statrs8function8evaluate10polynomial0EB1W_: argument 0"}
!107 = distinct !{!107, !6}
!108 = !{!106}
!109 = distinct !{!109, i1 true, !"_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_"}
!110 = distinct !{!110, !109, !"_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_: argument 0"}
!111 = distinct !{!111, !109, !"_RNvXs2_NtNtNtCs8lmMd0ZksV9_6statrs12distribution9empirical7non_nanINtB5_6NonNandENtNtCs3oUPovFnLWP_4core3cmp3Ord3cmpBb_: argument 1"}
!112 = !{!110}
!113 = !{!111}
!114 = !{!110, !111}
end_hunk_0
