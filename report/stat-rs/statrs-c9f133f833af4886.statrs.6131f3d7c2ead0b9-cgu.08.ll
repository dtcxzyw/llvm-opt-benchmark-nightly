Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/stat-rs/original/statrs-c9f133f833af4886.statrs.6131f3d7c2ead0b9-cgu.08?download=true
inline.NumInlined: 297
inline.NumDeleted: 118
loop-unroll.NumCompletelyUnrolled: 42
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 46
begin_hunk_0_@_RNvMs_NtNtCsbADZB03g5jP_8nalgebra6linalg2luINtB4_2LUdNtNtNtB8_4base9dimension3DynBP_E3newCs8lmMd0ZksV9_6statrs:bb.a
  %wide.load = load <2 x double>, ptr %i.cf, align 8, !alias.scope !97, !noalias !96
  %wide.load148 = load <2 x double>, ptr %i.cg, align 8, !alias.scope !97, !noalias !96
  %i.ch = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ci = fmul <2 x double> %broadcast.splat, %wide.load148
  store <2 x double> %i.ch, ptr %i.cf, align 8, !alias.scope !97, !noalias !96
  store <2 x double> %i.ci, ptr %i.cg, align 8, !alias.scope !97, !noalias !96
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.cj = icmp eq i64 %index.next, %n.vec
  br i1 %i.cj, label %middle.block, label %vector.body, !llvm.loop !49

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.val7.i.i, %n.vec
  br i1 %cmp.n, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i.preheader163

.preheader.i.i.preheader163:                      ; preds = %.preheader.i.i.preheader, %middle.block
  %.sroa.05.010.i.i.ph = phi i64 [ 0, %.preheader.i.i.preheader ], [ %n.vec, %middle.block ]
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader163, %.preheader.i.i
  %.sroa.05.010.i.i = phi i64 [ %i.ck, %.preheader.i.i ], [ %.sroa.05.010.i.i.ph, %.preheader.i.i.preheader163 ] ; 2 uses
  %i.ck = add nuw i64 %.sroa.05.010.i.i, 1        ; 2 uses
  %i.cl = getelementptr [8 x i8], ptr %.val8.i.i, i64 %.sroa.05.010.i.i ; 2 uses
  %i.cm = load double, ptr %i.cl, align 8, !alias.scope !97, !noalias !96, !noundef !4
  %i.cn = fmul double %i.cc, %i.cm
  store double %i.cn, ptr %i.cl, align 8, !alias.scope !97, !noalias !96
  %exitcond.not.i.i = icmp eq i64 %i.ck, %.val7.i.i
  br i1 %exitcond.not.i.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i, label %.preheader.i.i, !llvm.loop !50

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %.preheader.i.i, %middle.block, %.noexc19
  %i.co = getelementptr i8, ptr %i.ce, i64 8
  %.not.i16 = icmp eq i64 %i.cd, 0
  br i1 %.not.i16, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  %i.cp = add i64 %.val13.i.i, -1                 ; 2 uses
  %i.cq = icmp eq i64 %i.cp, %.val7.i.i
  br i1 %i.cq, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc20
  %.sroa.04.037.us.i = phi i64 [ %i.cw, %.noexc20 ], [ 0, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.cr = mul i64 %.sroa.04.037.us.i, %.val15.i.i ; 2 uses
  %i.cs = getelementptr [8 x i8], ptr %i.ce, i64 %i.cr
  %i.ct = load double, ptr %i.cs, align 8, !alias.scope !100, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !101
  %i.cu = fneg double %i.ct
  %i.cv = getelementptr [8 x i8], ptr %i.co, i64 %i.cr ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %i.f), !noalias !101
  call void @llvm.lifetime.end.p0(ptr nonnull %i.g), !noalias !101
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.cv) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.cv, i64 noundef %.val7.i.i, double noundef %i.cu, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i.i, i64 noundef %.val7.i.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i.i)
          to label %.noexc20 unwind label %.loopexit

.noexc20:                                         ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.cw = add nuw i64 %.sroa.04.037.us.i, 1       ; 2 uses
  %exitcond.not.i17 = icmp eq i64 %i.cw, %i.cd
  br i1 %exitcond.not.i17, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  call void @llvm.lifetime.start.p0(ptr nonnull %i.g), !noalias !101
  store i64 %i.cp, ptr %i.g, align 8, !noalias !101
  call void @llvm.lifetime.start.p0(ptr nonnull %i.f), !noalias !101
  store i64 %.val7.i.i, ptr %i.f, align 8, !noalias !101
  br label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i
  %i.cx = phi ptr [ %i.g, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.b, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ]
  %i.cy = phi ptr [ %i.f, %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i ], [ %i.a, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i ]
  invoke void @_RINvNtCs3oUPovFnLWP_4core9panicking13assert_failedjjEB4_(i8 noundef 0, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cx, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) dereferenceable(8) %i.cy, ptr noundef nonnull @0, ptr nonnull inttoptr (i64 63 to ptr), ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @2) #14
          to label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.cont: ; preds = %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke
  unreachable

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc20, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %i.h), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.i), !noalias !93
  call void @llvm.lifetime.end.p0(ptr nonnull %i.j), !noalias !93
  br label %.backedge

bb.s:                                             ; preds = %bb.q
  call void @llvm.experimental.noalias.scope.decl(metadata !102)
  %i.cz = icmp ult i64 %i.av, %..i.i
  br i1 %i.cz, label %bb.t, label %.invoke132, !prof !5

.invoke132:                                       ; preds = %bb.y, %.noexc44, %bb.s
  %i.da = phi ptr [ @23, %.noexc44 ], [ @14, %bb.s ], [ @23, %bb.y ]
  %i.db = phi ptr [ inttoptr (i64 83 to ptr), %.noexc44 ], [ inttoptr (i64 81 to ptr), %bb.s ], [ inttoptr (i64 83 to ptr), %bb.y ]
  %i.dc = phi ptr [ @24, %.noexc44 ], [ @15, %bb.s ], [ @25, %bb.y ]
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking9panic_fmt(ptr noundef nonnull %i.da, ptr noundef nonnull %i.db, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) %i.dc) #14
          to label %.cont133 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont133:                                         ; preds = %.invoke132
  unreachable

.backedge:                                        ; preds = %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, %bb.p
  %i.dd = phi i64 [ %i.av, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu10gauss_stepdNtNtNtB6_4base9dimension3DynBQ_INtNtBU_11vec_storage10VecStoragedBQ_BQ_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.dg, %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit ], [ %i.av, %bb.p ]
  %exitcond.not = icmp eq i64 %i.ax, %..i.i
  br i1 %exitcond.not, label %.loopexit165, label %bb.n

bb.t:                                             ; preds = %bb.s
  %.val3.i24 = load ptr, ptr %i.ai, align 8, !alias.scope !102, !nonnull !4, !noundef !4
  %.sroa.0.0.i.i = select i1 %.not5.i, i64 0, i64 %i.av
  %i.de = getelementptr [16 x i8], ptr %.val3.i24, i64 %.sroa.0.0.i.i ; 2 uses
  store i64 %.sroa.02.084, ptr %i.de, align 8, !noalias !102
  %i.df = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  store i64 %i.bu, ptr %i.df, align 8, !noalias !102
  %i.dg = add nuw nsw i64 %i.av, 1                ; 2 uses
  store i64 %i.dg, ptr %i.af, align 8, !alias.scope !102
  call void @llvm.lifetime.start.p0(ptr nonnull %i.n)
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutNtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFullINtB2B_7RangeTojEECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.n, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084)
          to label %bb.u unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

bb.u:                                             ; preds = %bb.t
  call void @llvm.experimental.noalias.scope.decl(metadata !103)
  %.val7.i = load i64, ptr %i.n, align 8, !alias.scope !103, !noundef !4 ; 2 uses
  %.val8.i = load i64, ptr %i.aj, align 8, !alias.scope !103, !noundef !4 ; 5 uses
  %i.dh = icmp ult i64 %.sroa.02.084, %.val7.i
  %i.di = icmp ult i64 %i.bu, %.val7.i
  %or.cond.i26 = and i1 %i.dh, %i.di
  br i1 %or.cond.i26, label %bb.w, label %bb.v, !prof !91

bb.v:                                             ; preds = %bb.u
  invoke void @_RNvNtCs3oUPovFnLWP_4core9panicking5panic(ptr noalias nofree noundef nonnull readonly captures(address, read_provenance) @19, i64 noundef 62, ptr noalias nofree noundef readonly align 8 captures(address, read_provenance) dereferenceable(24) @21) #14
          to label %.noexc31 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.noexc31:                                         ; preds = %bb.v
  unreachable

bb.w:                                             ; preds = %bb.u
  %.not56 = icmp eq i64 %.val8.i, 0
  br i1 %.not56, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.lr.ph.i28

.lr.ph.i28:                                       ; preds = %bb.w
  %.val9.i29 = load ptr, ptr %i.ak, align 8, !alias.scope !103, !noundef !4 ; 3 uses
  %.val10.i = load i64, ptr %i.al, align 8, !alias.scope !103, !noundef !4 ; 3 uses
  %xtraiter182 = and i64 %.val8.i, 1
  %i.dj = icmp eq i64 %.val8.i, 1
  br i1 %i.dj, label %.epil.preheader, label %.lr.ph.i28.new

.lr.ph.i28.new:                                   ; preds = %.lr.ph.i28
  %unroll_iter185 = and i64 %.val8.i, -2
  br label %bb.x

bb.x:                                             ; preds = %bb.x, %.lr.ph.i28.new
  %.sroa.01.011.i = phi i64 [ 0, %.lr.ph.i28.new ], [ %i.dq, %bb.x ] ; 3 uses
  %niter186 = phi i64 [ 0, %.lr.ph.i28.new ], [ %niter186.next.1, %bb.x ]
  %i.dk = or disjoint i64 %.sroa.01.011.i, 1
  %i.dl = mul i64 %.sroa.01.011.i, %.val10.i
  %i.dm = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dl ; 2 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %.sroa.02.084 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %i.dm, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i.i = load i64, ptr %i.dn, align 8, !noalias !103
  %i.dp = load i64, ptr %i.do, align 8, !noalias !103
  store i64 %i.dp, ptr %i.dn, align 8, !noalias !103
  store i64 %.sroa.0.0.copyload.i.i.i, ptr %i.do, align 8, !noalias !103
  %i.dq = add nuw i64 %.sroa.01.011.i, 2          ; 2 uses
  %i.dr = mul i64 %i.dk, %.val10.i
  %i.ds = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dr ; 2 uses
  %i.dt = getelementptr [8 x i8], ptr %i.ds, i64 %.sroa.02.084 ; 2 uses
  %i.du = getelementptr [8 x i8], ptr %i.ds, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i.i.1 = load i64, ptr %i.dt, align 8, !noalias !103
  %i.dv = load i64, ptr %i.du, align 8, !noalias !103
  store i64 %i.dv, ptr %i.dt, align 8, !noalias !103
  store i64 %.sroa.0.0.copyload.i.i.i.1, ptr %i.du, align 8, !noalias !103
  %niter186.next.1 = add nuw i64 %niter186, 2     ; 2 uses
  %niter186.ncmp.1 = icmp eq i64 %niter186.next.1, %unroll_iter185
  br i1 %niter186.ncmp.1, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, label %bb.x

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa: ; preds = %bb.x
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %.lr.ph.i28
  %.sroa.01.011.i.epil.init = phi i64 [ 0, %.lr.ph.i28 ], [ %i.dq, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa ]
  %lcmp.mod184 = trunc i64 %.val8.i to i1
  call void @llvm.assume(i1 %lcmp.mod184)
  %i.dw = mul i64 %.sroa.01.011.i.epil.init, %.val10.i
  %i.dx = getelementptr [8 x i8], ptr %.val9.i29, i64 %i.dw ; 2 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dx, i64 %.sroa.02.084 ; 2 uses
  %i.dz = getelementptr [8 x i8], ptr %i.dx, i64 %i.bu ; 2 uses
  %.sroa.0.0.copyload.i.i.i.epil = load i64, ptr %i.dy, align 8, !noalias !103
  %i.ea = load i64, ptr %i.dz, align 8, !noalias !103
  store i64 %i.ea, ptr %i.dy, align 8, !noalias !103
  store i64 %.sroa.0.0.copyload.i.i.i.epil, ptr %i.dz, align 8, !noalias !103
  br label %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit

_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit: ; preds = %.epil.preheader, %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit.loopexit.unr-lcssa, %bb.w
  call void @llvm.lifetime.end.p0(ptr nonnull %i.n)
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e), !noalias !104
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynB1c_INtNtB8_11vec_storage10VecStoragedB1c_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjEB2z_ECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([32 x i8]) align 8 captures(address) dereferenceable(32) %i.e, ptr noalias nofree noundef nonnull align 8 dereferenceable(40) %1, i64 noundef %.sroa.02.084, i64 noundef %.sroa.02.084)
          to label %.noexc44 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc44:                                         ; preds = %_RNvMs3_NtNtCsbADZB03g5jP_8nalgebra4base7editionINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynB16_INtNtB7_11matrix_view14ViewStorageMutdB16_B16_INtB18_5ConstKj1_EB16_EE9swap_rowsCs8lmMd0ZksV9_6statrs.exit
  %i.eb = fdiv double 1.000000e+00, %i.ca         ; 2 uses
  %.val13.i.i32 = load i64, ptr %i.e, align 8, !alias.scope !105, !noalias !106, !noundef !4 ; 4 uses
  %.val14.i.i33 = load i64, ptr %i.am, align 8, !alias.scope !105, !noalias !106, !noundef !4
  %.val15.i.i34 = load i64, ptr %i.an, align 8, !alias.scope !105, !noalias !106, !noundef !4 ; 3 uses
  %i.ec = add i64 %.val14.i.i33, -1               ; 2 uses
  %.val18.i.i35 = load ptr, ptr %i.ao, align 8, !alias.scope !105, !noalias !106, !noundef !4 ; 5 uses
  %i.ed = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.val15.i.i34 ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.d), !noalias !104
  store ptr %.val18.i.i35, ptr %i.d, align 8, !noalias !104
  store i64 %.val13.i.i32, ptr %.sroa.430.0..sroa_idx.i, align 8, !noalias !104
  store i64 %.val15.i.i34, ptr %.sroa.531.0..sroa_idx.i, align 8, !noalias !104
  %.not.i.i36 = icmp eq i64 %.val13.i.i32, 0
  br i1 %.not.i.i36, label %.invoke132, label %bb.y, !prof !107

bb.y:                                             ; preds = %.noexc44
  %i.ee = icmp ult i64 %.sroa.0.0.lcssa.i, %.val13.i.i32
  br i1 %i.ee, label %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i, label %.invoke132, !prof !91

_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %bb.y
  %i.ef = getelementptr [8 x i8], ptr %.val18.i.i35, i64 %.sroa.0.0.lcssa.i ; 2 uses
  %.sroa.0.0.copyload.i.i.i.i = load i64, ptr %.val18.i.i35, align 8, !noalias !108
  %i.eg = load i64, ptr %i.ef, align 8, !noalias !108
  store i64 %i.eg, ptr %.val18.i.i35, align 8, !noalias !108
  store i64 %.sroa.0.0.copyload.i.i.i.i, ptr %i.ef, align 8, !noalias !108
  call void @llvm.lifetime.start.p0(ptr nonnull %i.c), !noalias !104
  invoke void @_RINvMsl_NtNtCsbADZB03g5jP_8nalgebra4base11matrix_viewINtNtB8_6matrix6MatrixdNtNtB8_9dimension3DynINtB1e_5ConstKj1_EINtB6_14ViewStorageMutdB1c_B1x_B1x_B1c_EE14view_range_mutINtNtNtCs3oUPovFnLWP_4core3ops5range9RangeFromjENtB2N_9RangeFullECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull sret([24 x i8]) align 8 captures(address) dereferenceable(24) %i.c, ptr noalias nofree noundef nonnull align 8 dereferenceable(24) %i.d, i64 noundef 1)
          to label %.noexc47 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit

.noexc47:                                         ; preds = %_RNvMs9_NtNtCsbADZB03g5jP_8nalgebra4base6matrixINtB5_6MatrixdNtNtB7_9dimension3DynINtBY_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdBW_B1h_B1h_BW_EE4swapCs8lmMd0ZksV9_6statrs.exit.i
  call void @llvm.experimental.noalias.scope.decl(metadata !109)
  %.val7.i8.i = load i64, ptr %i.ap, align 8, !alias.scope !109, !noalias !104, !noundef !4 ; 10 uses
  %.not.i9.i = icmp eq i64 %.val7.i8.i, 0
  %.val8.i.i37 = load ptr, ptr %i.c, align 8, !alias.scope !109, !noalias !104 ; 3 uses
  br i1 %.not.i9.i, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38.preheader

.preheader.i.i38.preheader:                       ; preds = %.noexc47
  %min.iters.check150 = icmp ult i64 %.val7.i8.i, 4
  br i1 %min.iters.check150, label %.preheader.i.i38.preheader164, label %vector.ph151

vector.ph151:                                     ; preds = %.preheader.i.i38.preheader
  %n.vec152 = and i64 %.val7.i8.i, -4             ; 3 uses
  %broadcast.splatinsert153 = insertelement <2 x double> poison, double %i.eb, i64 0
  %broadcast.splat154 = shufflevector <2 x double> %broadcast.splatinsert153, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body155

vector.body155:                                   ; preds = %vector.body155, %vector.ph151
  %index156 = phi i64 [ 0, %vector.ph151 ], [ %index.next159, %vector.body155 ] ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %.val8.i.i37, i64 %index156 ; 3 uses
  %i.ei = getelementptr i8, ptr %i.eh, i64 16     ; 2 uses
  %wide.load157 = load <2 x double>, ptr %i.eh, align 8, !alias.scope !110, !noalias !109
  %wide.load158 = load <2 x double>, ptr %i.ei, align 8, !alias.scope !110, !noalias !109
  %i.ej = fmul <2 x double> %broadcast.splat154, %wide.load157
  %i.ek = fmul <2 x double> %broadcast.splat154, %wide.load158
  store <2 x double> %i.ej, ptr %i.eh, align 8, !alias.scope !110, !noalias !109
  store <2 x double> %i.ek, ptr %i.ei, align 8, !alias.scope !110, !noalias !109
  %index.next159 = add nuw i64 %index156, 4       ; 2 uses
  %i.el = icmp eq i64 %index.next159, %n.vec152
  br i1 %i.el, label %middle.block160, label %vector.body155, !llvm.loop !71

middle.block160:                                  ; preds = %vector.body155
  %cmp.n161 = icmp eq i64 %.val7.i8.i, %n.vec152
  br i1 %cmp.n161, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38.preheader164

.preheader.i.i38.preheader164:                    ; preds = %.preheader.i.i38.preheader, %middle.block160
  %.sroa.05.010.i.i39.ph = phi i64 [ 0, %.preheader.i.i38.preheader ], [ %n.vec152, %middle.block160 ]
  br label %.preheader.i.i38

.preheader.i.i38:                                 ; preds = %.preheader.i.i38.preheader164, %.preheader.i.i38
  %.sroa.05.010.i.i39 = phi i64 [ %i.em, %.preheader.i.i38 ], [ %.sroa.05.010.i.i39.ph, %.preheader.i.i38.preheader164 ] ; 2 uses
  %i.em = add nuw i64 %.sroa.05.010.i.i39, 1      ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %.val8.i.i37, i64 %.sroa.05.010.i.i39 ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !alias.scope !110, !noalias !109, !noundef !4
  %i.ep = fmul double %i.eb, %i.eo
  store double %i.ep, ptr %i.en, align 8, !alias.scope !110, !noalias !109
  %exitcond.not.i.i40 = icmp eq i64 %i.em, %.val7.i8.i
  br i1 %exitcond.not.i.i40, label %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41, label %.preheader.i.i38, !llvm.loop !72

_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41: ; preds = %.preheader.i.i38, %middle.block160, %.noexc47
  %i.eq = getelementptr i8, ptr %i.ed, i64 8      ; 2 uses
  %.not.i42 = icmp eq i64 %i.ec, 0
  br i1 %.not.i42, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i: ; preds = %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  %i.er = add i64 %.val13.i.i32, -1               ; 2 uses
  %i.es = icmp eq i64 %i.er, %.val7.i8.i
  br i1 %i.es, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i, !prof !5

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i, %.noexc48
  %.sroa.04.049.us.i = phi i64 [ %i.fc, %.noexc48 ], [ 0, %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i ] ; 2 uses
  %i.et = mul i64 %.sroa.04.049.us.i, %.val15.i.i34 ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %i.ed, i64 %i.et ; 3 uses
  %i.ev = getelementptr [8 x i8], ptr %i.eq, i64 %i.et ; 3 uses
  %i.ew = getelementptr [8 x i8], ptr %i.ev, i64 %.sroa.0.0.lcssa.i
  %i.ex = getelementptr i8, ptr %i.ew, i64 -8     ; 2 uses
  %i.ey = load double, ptr %i.eu, align 8, !noundef !4
  %i.ez = load i64, ptr %i.ex, align 8
  store i64 %i.ez, ptr %i.eu, align 8
  store double %i.ey, ptr %i.ex, align 8
  %i.fa = load double, ptr %i.eu, align 8, !alias.scope !111, !noundef !4
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  %i.fb = fneg double %i.fa
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a), !noalias !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b), !noalias !112
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %i.ev) ]
  invoke void @_RINvNtNtCsbADZB03g5jP_8nalgebra4base11blas_uninit11array_axcpyNtNtB4_6uninit4InitdECs8lmMd0ZksV9_6statrs(ptr noalias nofree noundef nonnull align 8 %i.ev, i64 noundef %.val7.i8.i, double noundef %i.fb, ptr noalias nofree noundef nonnull readonly align 8 captures(address, read_provenance) %.val8.i.i37, i64 noundef %.val7.i8.i, double noundef 1.000000e+00, double noundef 1.000000e+00, i64 noundef 1, i64 noundef 1, i64 noundef %.val7.i8.i)
          to label %.noexc48 unwind label %.loopexit.split-lp.loopexit

.noexc48:                                         ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i
  %i.fc = add nuw i64 %.sroa.04.049.us.i, 1       ; 2 uses
  %exitcond.not.i43 = icmp eq i64 %i.fc, %i.ec
  br i1 %exitcond.not.i43, label %_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit, label %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.us.i

_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.i: ; preds = %_RNvXs1_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdINtNtB7_9dimension5ConstKj1_ENtB15_3DynINtNtB7_11matrix_view14ViewStorageMutdB12_B1v_B12_B1v_EEINtNtNtCs3oUPovFnLWP_4core3ops5index8IndexMutTjjEE9index_mutCs8lmMd0ZksV9_6statrs.exit.lr.ph.i
  %i.fd = getelementptr [8 x i8], ptr %i.eq, i64 %.sroa.0.0.lcssa.i
  %2 = getelementptr i8, ptr %i.fd, i64 -8        ; 2 uses
  %i.fe = load double, ptr %i.ed, align 8, !noundef !4
  %i.ff = load i64, ptr %2, align 8
  store i64 %i.ff, ptr %i.ed, align 8
  store double %i.fe, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b), !noalias !112
  store i64 %i.er, ptr %i.b, align 8, !noalias !112
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a), !noalias !112
  store i64 %.val7.i8.i, ptr %i.a, align 8, !noalias !112
  br label %_RNvXs_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB6_6matrix6MatrixdINtNtB6_9dimension5ConstKj1_ENtB14_3DynINtNtB6_11matrix_view14ViewStorageMutdB11_B1u_B11_B1u_EEINtNtNtCs3oUPovFnLWP_4core3ops5index5IndexTjjEE5indexCs8lmMd0ZksV9_6statrs.exit.i.invoke

_RINvNtNtCsbADZB03g5jP_8nalgebra6linalg2lu15gauss_step_swapdNtNtNtB6_4base9dimension3DynBV_INtNtBZ_11vec_storage10VecStoragedBV_BV_EECs8lmMd0ZksV9_6statrs.exit: ; preds = %.noexc48, %_RNvXsy_NtNtCsbADZB03g5jP_8nalgebra4base3opsINtNtB7_6matrix6MatrixdNtNtB7_9dimension3DynINtB14_5ConstKj1_EINtNtB7_11matrix_view14ViewStorageMutdB12_B1n_B1n_B12_EEINtNtNtCs3oUPovFnLWP_4core3ops5arith9MulAssigndE10mul_assignCs8lmMd0ZksV9_6statrs.exit.i41
  call void @llvm.lifetime.end.p0(ptr nonnull %i.c), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.d), !noalias !104
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e), !noalias !104
  br label %.backedge

bb.z:                                             ; preds = %.loopexit.split-lp, %.body
  %i.fg = landingpad { ptr, i32 }
          filter [0 x ptr] zeroinitializer        ; 0 uses
  call void @_RNvNtCs3oUPovFnLWP_4core9panicking16panic_in_cleanup() #13
  unreachable

bb.aa:                                            ; preds = %.body
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
  %i.cn = fmul double %i.cm, 0.000000e+00         ; 2 uses
  %i.co = fadd double %i.cn, f0x3F86A63A5FC07442
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = fadd double %i.cp, f0x3FC37D65D8A9AAFB
  %i.cr = fmul double %i.cm, %i.cq
  %i.cs = fadd double %i.cr, f0x3FEB29D095870405
  %i.ct = fmul double %i.cm, %i.cs
  %i.cu = fadd double %i.ct, f0x4004BE80DBDD1285
  %i.cv = fmul double %i.cm, %i.cu
  %i.cw = fadd double %i.cv, f0x40131D262C304C04
  %i.cx = fmul double %i.cm, %i.cw
  %i.cy = fadd double %i.cx, f0x401586D807362921
  %i.cz = fmul double %i.cm, %i.cy
  %i.da = fadd double %i.cz, f0x400BBAE36A458F85
  %i.db = fmul double %i.cm, %i.da
  %i.dc = fadd double %i.db, 1.000000e+00
  %i.dd = fadd double %i.cn, f0xBE076775588F330D
  %i.de = fmul double %i.cm, %i.dd
  %i.df = fadd double %i.de, f0x3E5EA036D72C22E6
  %i.dg = fmul double %i.cm, %i.df
  %i.dh = fadd double %i.dg, f0xBEA6CC9099E64C30
  %i.di = fmul double %i.cm, %i.dh
  %i.dj = fadd double %i.di, f0x3F6193A0D5D7A83A
  %i.dk = fmul double %i.cm, %i.dj
  %i.dl = fadd double %i.dk, f0x3F9DB650C5A8D10C
  %i.dm = fmul double %i.cm, %i.dl
  %i.dn = fadd double %i.dm, f0x3FC2498C84F05B27
  %i.do = fmul double %i.cm, %i.dn
  %i.dp = fadd double %i.do, f0x3FD59E473CAC176C
  %i.dq = fmul double %i.cm, %i.dp
  %i.dr = fadd double %i.dq, f0x3FD8C5EA18F53827
  %i.ds = fmul double %i.cm, %i.dr
end_hunk_0
