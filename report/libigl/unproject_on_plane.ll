Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_plane?download=true
inline.NumInlined: 3870
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd:bb.a
  %i.hy = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.hy
  %i.ia = load double, ptr %i.hz, align 8, !tbaa !28
  %i.ib = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.hy
  %i.ic = load double, ptr %i.ib, align 8, !tbaa !28
  %i.id = fmul double %i.ia, %i.ic
  %i.ie = fadd double %i.hx, %i.id
  %i.if = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.if
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !28
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.gz, i64 %i.if
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !28
  %i.ik = fmul double %i.ih, %i.ij
  %i.il = fadd double %i.ie, %i.ik                ; 2 uses
  %i.im = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.im, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, !llvm.loop !187

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa140 = phi double [ %.lcssa140.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.il, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ]
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa140, ptr %i.in, align 8, !tbaa !28
  %i.io = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.io, %i.bb
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, !llvm.loop !188

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.jc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.iq = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !29
  %i.ir = load <2 x double>, ptr %i.ip, align 1, !tbaa !29
  %i.is = fmul <2 x double> %i.iq, %i.ir
  %i.it = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.is)
  %i.iu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.it, ptr %i.iu, align 8, !tbaa !28
  %i.iv = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.iv, 24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ix = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !29
  %i.iy = load <2 x double>, ptr %i.iw, align 1, !tbaa !29
  %i.iz = fmul <2 x double> %i.ix, %i.iy
  %i.ja = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iz)
  %i.jb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.iv
  store double %i.ja, ptr %i.jb, align 8, !tbaa !28
  %i.jc = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit141.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !188

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit141.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit141.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.jc, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit141.unr-lcssa ] ; 2 uses
  %lcmp.mod142 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod142)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.je = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !29
  %i.jf = load <2 x double>, ptr %i.jd, align 1, !tbaa !29
  %i.jg = fmul <2 x double> %i.je, %i.jf
  %i.jh = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jg)
  %i.ji = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.jh, ptr %i.ji, align 8, !tbaa !28
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit141.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check105 = icmp ult i64 %i.bb, 9
  br i1 %min.iters.check105, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck106

vector.memcheck106:                               ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jj = shl i64 %i.bb, 3
  %i.jk = getelementptr i8, ptr %3, i64 %i.jj
  %i.jl = mul i64 %i.bb, 24
  %i.jm = getelementptr i8, ptr %i.bd, i64 %i.jl
  %i.jn = getelementptr i8, ptr %i.jm, i64 -16
  %bound0107 = icmp ult ptr %3, %i.jn
  %bound1108 = icmp ult ptr %i.bd, %i.jk
  %found.conflict109 = and i1 %bound0107, %bound1108
  br i1 %found.conflict109, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph110

vector.ph110:                                     ; preds = %vector.memcheck106
  %i.jo = and i64 %i.bb, 3                        ; 2 uses
  %i.jp = icmp eq i64 %i.jo, 0
  %i.jq = select i1 %i.jp, i64 4, i64 %i.jo
  %n.vec111 = sub nsw i64 %i.bb, %i.jq            ; 2 uses
  br label %vector.body112

vector.body112:                                   ; preds = %vector.body112, %vector.ph110
  %index113 = phi i64 [ 0, %vector.ph110 ], [ %index.next115, %vector.body112 ] ; 6 uses
  %i.jr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index113 ; 3 uses
  %i.js = mul nuw nsw i64 %index113, 24
  %i.jt = mul nuw i64 %index113, 24
  %i.ju = mul nuw i64 %index113, 24
  %i.jv = mul nuw i64 %index113, 24
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.js
  %i.jx = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jt
  %i.jy = getelementptr inbounds nuw i8, ptr %i.jx, i64 24
  %i.jz = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.ju
  %i.ka = getelementptr inbounds nuw i8, ptr %i.jz, i64 48
  %i.kb = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jv
  %i.kc = getelementptr inbounds nuw i8, ptr %i.kb, i64 72
  %i.kd = load double, ptr %i.jw, align 8, !tbaa !28, !alias.scope !215
  %i.ke = load double, ptr %i.jy, align 8, !tbaa !28, !alias.scope !215
  %i.kf = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.kg = insertelement <2 x double> %i.kf, double %i.ke, i64 1
  %i.kh = load double, ptr %i.ka, align 8, !tbaa !28, !alias.scope !215
  %i.ki = load double, ptr %i.kc, align 8, !tbaa !28, !alias.scope !215
  %i.kj = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.kk = insertelement <2 x double> %i.kj, double %i.ki, i64 1
  %i.kl = getelementptr inbounds nuw i8, ptr %i.jr, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jr, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  %wide.load114 = load <2 x double>, ptr %i.kl, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  %i.km = fadd <2 x double> %i.kg, %wide.load
  %i.kn = fadd <2 x double> %i.kk, %wide.load114
  store <2 x double> %i.km, ptr %i.jr, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  store <2 x double> %i.kn, ptr %i.kl, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  %index.next115 = add nuw i64 %index113, 4       ; 2 uses
  %i.ko = icmp eq i64 %index.next115, %n.vec111
  br i1 %i.ko, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body112, !llvm.loop !193

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body112, %vector.memcheck106, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck106 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec111, %vector.body112 ] ; 6 uses
  %i.kp = sub i64 %i.bb, %.05.i.i.i.i.i.i.ph
  %i.kq = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter151 = and i64 %i.kp, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.kr = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, 24
  %i.ks = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.kt = load double, ptr %i.ks, align 8, !tbaa !28
  %i.ku = load double, ptr %i.kr, align 8, !tbaa !28
  %i.kv = fadd double %i.kt, %i.ku
  store double %i.kv, ptr %i.kr, align 8, !tbaa !28
  %i.kw = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kw, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.kx = icmp eq i64 %i.kq, %.05.i.i.i.i.i.i.ph
  br i1 %i.kx, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.lj, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ky = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i, 24
  %i.kz = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i
  %i.la = load double, ptr %i.kz, align 8, !tbaa !28
  %i.lb = load double, ptr %i.ky, align 8, !tbaa !28
  %i.lc = fadd double %i.la, %i.lb
  store double %i.lc, ptr %i.ky, align 8, !tbaa !28
  %i.ld = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ld ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ld, 24
  %i.lf = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.lg = load double, ptr %i.lf, align 8, !tbaa !28
  %i.lh = load double, ptr %i.le, align 8, !tbaa !28
  %i.li = fadd double %i.lg, %i.lh
  store double %i.li, ptr %i.le, align 8, !tbaa !28
  %i.lj = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.lj, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !194

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.lk = load double, ptr %2, align 8, !tbaa !28, !noalias !217 ; 3 uses
  %xtraiter154 = and i64 %i.bb, 1
  %i.ll = icmp eq i64 %i.kq, 0
  br i1 %i.ll, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter157 = and i64 %i.bb, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lz, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter158 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter158.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = mul nuw nsw i64 %.05.i.i.i.i.i.i9, 24
  %i.lm = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.ln = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lo = load double, ptr %i.ln, align 8, !tbaa !28
  %i.lp = fmul double %i.lk, %i.lo
  %i.lq = load double, ptr %i.lm, align 8, !tbaa !28
  %i.lr = fsub double %i.lq, %i.lp
  store double %i.lr, ptr %i.lm, align 8, !tbaa !28
  %i.ls = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = mul nuw nsw i64 %i.ls, 24
  %i.lt = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ls
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !28
  %i.lw = fmul double %i.lk, %i.lv
  %i.lx = load double, ptr %i.lt, align 8, !tbaa !28
  %i.ly = fsub double %i.lx, %i.lw
  store double %i.ly, ptr %i.lt, align 8, !tbaa !28
  %i.lz = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter158.next.1 = add nuw nsw i64 %niter158, 2 ; 2 uses
  %niter158.ncmp.1 = icmp eq i64 %niter158.next.1, %unroll_iter157
  br i1 %niter158.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !197

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lz, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod156 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod156)
  %.idx.i.i.i.i.i.i.i.i10.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 24
  %i.ma = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.mc = load double, ptr %i.mb, align 8, !tbaa !28
  %i.md = fmul double %i.lk, %i.mc
  %i.me = load double, ptr %i.ma, align 8, !tbaa !28
  %i.mf = fsub double %i.me, %i.md
  store double %i.mf, ptr %i.ma, align 8, !tbaa !28
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !28, !noalias !218
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.mg = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload119 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.mh = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.mg, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.mh, align 8
  %i.mi = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.mj = lshr exact i64 %i.mi, 3
  %i.mk = and i64 %i.mj, 1
  %i.ml = call i64 @llvm.smin.i64(i64 %i.mk, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.mm = sub i64 %.sroa.6.sroa.4.0.copyload, %i.ml
  %i.mn = and i64 %i.mm, -2                       ; 3 uses
  %i.mo = add nsw i64 %i.mn, %i.ml                ; 5 uses
  %i.mp = icmp sgt i64 %i.ml, 0
  br i1 %i.mp, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.mq = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !28
  %i.mr = fmul double %i.mg, %i.mq
  store double %i.mr, ptr %4, align 8, !tbaa !28
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mn, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ms = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mt = icmp slt i64 %i.mo, %.sroa.6.sroa.4.0.copyload
  br i1 %i.mt, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mu = add i64 %i.ml, %i.mn
  %i.mv = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mu ; 3 uses
  %min.iters.check121 = icmp ult i64 %i.mv, 6
  %i.mw = sub i64 %.sroa.6.sroa.0.0.copyload119, %i.mi
  %diff.check = icmp ugt i64 %i.mw, -32
  %or.cond = select i1 %min.iters.check121, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134, label %vector.ph122

vector.ph122:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec123 = and i64 %i.mv, -4                   ; 3 uses
  %i.mx = add i64 %i.mo, %n.vec123
  %broadcast.splatinsert124 = insertelement <2 x double> poison, double %i.mg, i64 0
  %broadcast.splat125 = shufflevector <2 x double> %broadcast.splatinsert124, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body126

vector.body126:                                   ; preds = %vector.body126, %vector.ph122
  %index127 = phi i64 [ 0, %vector.ph122 ], [ %index.next130, %vector.body126 ] ; 2 uses
  %i.my = add i64 %i.mo, %index127                ; 2 uses
  %i.mz = getelementptr inbounds [8 x i8], ptr %4, i64 %i.my ; 2 uses
  %i.na = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.my ; 2 uses
  %i.nb = getelementptr inbounds nuw i8, ptr %i.na, i64 16
  %wide.load128 = load <2 x double>, ptr %i.na, align 8, !tbaa !28
  %wide.load129 = load <2 x double>, ptr %i.nb, align 8, !tbaa !28
  %i.nc = fmul <2 x double> %broadcast.splat125, %wide.load128
  %i.nd = fmul <2 x double> %broadcast.splat125, %wide.load129
  %i.ne = getelementptr inbounds nuw i8, ptr %i.mz, i64 16
  store <2 x double> %i.nc, ptr %i.mz, align 8, !tbaa !28
  store <2 x double> %i.nd, ptr %i.ne, align 8, !tbaa !28
  %index.next130 = add nuw i64 %index127, 4       ; 2 uses
  %i.nf = icmp eq i64 %index.next130, %n.vec123
  br i1 %i.nf, label %middle.block131, label %vector.body126, !llvm.loop !200

middle.block131:                                  ; preds = %vector.body126
  %cmp.n = icmp eq i64 %i.mv, %n.vec123
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block131
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mo, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mx, %middle.block131 ] ; 4 uses
  %i.ng = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter159 = and i64 %i.ng, 3                 ; 2 uses
  %lcmp.mod160.not = icmp eq i64 %xtraiter159, 0
  br i1 %lcmp.mod160.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.nl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134 ] ; 3 uses
  %prol.iter161 = phi i64 [ %prol.iter161.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134 ]
  %i.nh = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ni = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nj = load double, ptr %i.ni, align 8, !tbaa !28
  %i.nk = fmul double %i.mg, %i.nj
  store double %i.nk, ptr %i.nh, align 8, !tbaa !28
  %i.nl = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter161.next = add i64 %prol.iter161, 1   ; 2 uses
  %prol.iter161.cmp.not = icmp eq i64 %prol.iter161.next, %xtraiter159
  br i1 %prol.iter161.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !201

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader134 ], [ %i.nl, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.nm = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.nn = icmp ugt i64 %i.nm, -4
  br i1 %i.nn, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oh, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.np = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nq = load double, ptr %i.np, align 8, !tbaa !28
  %i.nr = fmul double %i.mg, %i.nq
  store double %i.nr, ptr %i.no, align 8, !tbaa !28
  %i.ns = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ns
  %i.nu = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ns
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !28
  %i.nw = fmul double %i.mg, %i.nv
  store double %i.nw, ptr %i.nt, align 8, !tbaa !28
  %i.nx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nx
  %i.nz = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nx
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !28
  %i.ob = fmul double %i.mg, %i.oa
  store double %i.ob, ptr %i.ny, align 8, !tbaa !28
  %i.oc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.od = getelementptr inbounds [8 x i8], ptr %4, i64 %i.oc
  %i.oe = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.oc
  %i.of = load double, ptr %i.oe, align 8, !tbaa !28
  %i.og = fmul double %i.mg, %i.of
  store double %i.og, ptr %i.od, align 8, !tbaa !28
  %i.oh = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.oh, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !202

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.om, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ml, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oi = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oj = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ok = load <2 x double>, ptr %i.oj, align 1, !tbaa !29
  %i.ol = fmul <2 x double> %i.ms, %i.ok
  store <2 x double> %i.ol, ptr %i.oi, align 16, !tbaa !29
  %i.om = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.on = icmp slt i64 %i.om, %i.mo
  br i1 %i.on, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !203

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block131, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oo = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.oo, align 8
  %.sroa.818.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.818.sroa.6.88..sroa_idx, align 8
  %i.op = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.op, align 8, !tbaa !76
  %i.oq = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.oq, align 8, !tbaa !78
  %i.or = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.or, align 8, !tbaa !16
  %i.os = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.os, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.be, ptr %5, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %5, ptr %6, align 8, !tbaa !224
  %i.ot = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.ot, align 8, !tbaa !225
  %i.ou = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.ou, align 8, !tbaa !91
  %i.ov = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.ov, align 8, !tbaa !226
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod169.not = icmp eq i64 %xtraiter167, 0
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_:bb.a
  %scevgep77 = getelementptr i8, ptr %i.cp, i64 %i.br
  %i.dc = getelementptr i8, ptr %i.cr, i64 %i.bt
  %scevgep78 = getelementptr i8, ptr %i.dc, i64 8
  %bound079 = icmp ult ptr %scevgep74, %scevgep77
  %bound180 = icmp ult ptr %scevgep76, %scevgep75
  %found.conflict81 = and i1 %bound079, %bound180
  %bound082 = icmp ult ptr %scevgep74, %scevgep78
  %bound183 = icmp ult ptr %i.cs, %scevgep75
  %found.conflict84 = and i1 %bound082, %bound183
  %conflict.rdx85 = or i1 %found.conflict81, %found.conflict84
  br i1 %conflict.rdx85, label %scalar.ph86.preheader, label %vector.ph88

vector.ph88:                                      ; preds = %vector.memcheck73
  %n.vec89 = and i64 %i.cu, -4                    ; 3 uses
  %i.dd = add i64 %i.bw, %n.vec89
  %i.de = load double, ptr %i.cs, align 8, !tbaa !28, !alias.scope !270
  %broadcast.splatinsert94 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat95 = shufflevector <2 x double> %broadcast.splatinsert94, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body90

vector.body90:                                    ; preds = %vector.body90, %vector.ph88
  %index91 = phi i64 [ 0, %vector.ph88 ], [ %index.next98, %vector.body90 ] ; 2 uses
  %i.df = add i64 %i.bw, %index91                 ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.co, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %wide.load92 = load <2 x double>, ptr %i.dh, align 8, !tbaa !28, !alias.scope !271
  %wide.load93 = load <2 x double>, ptr %i.di, align 8, !tbaa !28, !alias.scope !271
  %i.dj = fmul <2 x double> %wide.load92, %broadcast.splat95
  %i.dk = fmul <2 x double> %wide.load93, %broadcast.splat95
  %i.dl = getelementptr i8, ptr %i.dg, i64 16     ; 2 uses
  %wide.load96 = load <2 x double>, ptr %i.dg, align 8, !tbaa !28, !alias.scope !272, !noalias !273
  %wide.load97 = load <2 x double>, ptr %i.dl, align 8, !tbaa !28, !alias.scope !272, !noalias !273
  %i.dm = fsub <2 x double> %wide.load96, %i.dj
  %i.dn = fsub <2 x double> %wide.load97, %i.dk
  store <2 x double> %i.dm, ptr %i.dg, align 8, !tbaa !28, !alias.scope !272, !noalias !273
  store <2 x double> %i.dn, ptr %i.dl, align 8, !tbaa !28, !alias.scope !272, !noalias !273
  %index.next98 = add nuw i64 %index91, 4         ; 2 uses
  %i.do = icmp eq i64 %index.next98, %n.vec89
  br i1 %i.do, label %middle.block99, label %vector.body90, !llvm.loop !254

middle.block99:                                   ; preds = %vector.body90
  %cmp.n100 = icmp eq i64 %i.cu, %n.vec89
  br i1 %cmp.n100, label %._crit_edge, label %scalar.ph86.preheader

scalar.ph86.preheader:                            ; preds = %vector.memcheck73, %.lr.ph51, %middle.block99
  %.050.ph = phi i64 [ %i.bw, %vector.memcheck73 ], [ %i.bw, %.lr.ph51 ], [ %i.dd, %middle.block99 ]
  br label %scalar.ph86

bb.d:                                             ; preds = %.lr.ph49, %bb.d
  %.03248 = phi i64 [ %.03552, %.lr.ph49 ], [ %i.eh, %bb.d ] ; 3 uses
  %i.dp = load ptr, ptr %0, align 8, !tbaa !268, !nonnull !55, !align !56
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !87
  %i.dr = getelementptr i8, ptr %i.dq, i64 %.idx.i.i.i37
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %.03248 ; 2 uses
  %i.dt = load ptr, ptr %i.bq, align 8, !tbaa !266, !nonnull !55, !align !56 ; 2 uses
  %i.du = getelementptr inbounds nuw i8, ptr %i.dt, i64 64
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 72
  %i.dw = load ptr, ptr %i.du, align 8, !tbaa !93
  %i.dx = getelementptr inbounds [8 x i8], ptr %i.dw, i64 %.03248
  %i.dy = load <2 x double>, ptr %i.dx, align 1, !tbaa !29
  %i.dz = load ptr, ptr %i.dv, align 8, !tbaa !78
  %i.ea = getelementptr [8 x i8], ptr %i.dz, i64 %.03453
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !28
  %i.ec = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ee = fmul <2 x double> %i.dy, %i.ed
  %i.ef = load <2 x double>, ptr %i.ds, align 16, !tbaa !29
  %i.eg = fsub <2 x double> %i.ef, %i.ee
  store <2 x double> %i.eg, ptr %i.ds, align 16, !tbaa !29
  %i.eh = add nsw i64 %.03248, 2                  ; 2 uses
  %i.ei = icmp slt i64 %i.eh, %i.bw
  br i1 %i.ei, label %bb.d, label %.preheader, !llvm.loop !255

._crit_edge:                                      ; preds = %scalar.ph86, %middle.block99, %.preheader
  %i.ej = add nsw i64 %.03552, 1
  %i.ek = srem i64 %i.ej, 2
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.bj, i64 %i.ek)
  %i.el = add nuw nsw i64 %.03453, 1              ; 2 uses
  %exitcond56.not = icmp eq i64 %i.el, %i.bl
  br i1 %exitcond56.not, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit, label %bb.c, !llvm.loop !256

scalar.ph86:                                      ; preds = %scalar.ph86.preheader, %scalar.ph86
  %.050 = phi i64 [ %i.et, %scalar.ph86 ], [ %.050.ph, %scalar.ph86.preheader ] ; 3 uses
  %i.em = getelementptr [8 x i8], ptr %i.co, i64 %.050 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %i.cp, i64 %.050
  %i.eo = load double, ptr %i.en, align 8, !tbaa !28
  %i.ep = load double, ptr %i.cs, align 8, !tbaa !28
  %i.eq = fmul double %i.eo, %i.ep
  %i.er = load double, ptr %i.em, align 8, !tbaa !28
  %i.es = fsub double %i.er, %i.eq
  store double %i.es, ptr %i.em, align 8, !tbaa !28
  %i.et = add nsw i64 %.050, 1                    ; 2 uses
  %i.eu = icmp slt i64 %i.et, %i.bj
  br i1 %i.eu, label %scalar.ph86, label %._crit_edge, !llvm.loop !257

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERSY_.exit: ; preds = %._crit_edge.i, %._crit_edge, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, %.preheader.lr.ph.i, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11_solve_implINS1_IdLi3ELi1ELi0ELi3ELi1EEES5_EEvRKT_RT0_(ptr noundef nonnull align 8 dereferenceable(208) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::Matrix.71", align 8  ; 13 uses
  %4 = alloca %"class.Eigen::Matrix.643", align 8 ; 4 uses
  %5 = alloca %"class.Eigen::Block.666", align 8  ; 10 uses
  %6 = alloca %"class.Eigen::VectorBlock.677", align 8 ; 12 uses
  %7 = alloca %"class.Eigen::TriangularView", align 8 ; 9 uses
  %8 = alloca %"class.Eigen::Block.82", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 176
  %i.b = load double, ptr %i.a, align 8, !tbaa !62
  %i.c = tail call noundef double @llvm.fabs.f64(double %i.b)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 161
  %i.e = load i8, ptr %i.d, align 1, !tbaa !54, !range !285, !noundef !55
  %i.f = trunc nuw i8 %i.e to i1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 168
  %i.h = load double, ptr %i.g, align 8
  %i.i = select i1 %i.f, double %i.h, double f0x3CC8000000000000
  %i.j = fmul double %i.c, %i.i                   ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.l = load i64, ptr %i.k, align 8, !tbaa !61   ; 5 uses
  %i.m = icmp sgt i64 %i.l, 0
  br i1 %i.m, label %.lr.ph.i.preheader, label %_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread

.lr.ph.i.preheader:                               ; preds = %bb.a
  %min.iters.check = icmp ult i64 %i.l, 4
  br i1 %min.iters.check, label %.lr.ph.i.preheader76, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.preheader
  %n.vec = and i64 %i.l, 9223372036854775804      ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.j, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %vec.phi = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.aq, %vector.body ]
  %vec.phi75 = phi <2 x i64> [ zeroinitializer, %vector.ph ], [ %i.ar, %vector.body ]
  %i.n = or disjoint i64 %index, 1                ; 2 uses
  %i.o = or disjoint i64 %index, 2                ; 2 uses
  %i.p = or disjoint i64 %index, 3                ; 2 uses
  %i.q = getelementptr [8 x i8], ptr %0, i64 %index
  %i.r = getelementptr [8 x i8], ptr %0, i64 %i.n
  %i.s = getelementptr [8 x i8], ptr %0, i64 %i.o
  %i.t = getelementptr [8 x i8], ptr %0, i64 %i.p
  %i.u = mul i64 %index, 24
  %i.v = mul i64 %i.n, 24
  %i.w = mul i64 %i.o, 24
  %i.x = mul i64 %i.p, 24
  %i.y = getelementptr i8, ptr %i.q, i64 %i.u
  %i.z = getelementptr i8, ptr %i.r, i64 %i.v
  %i.aa = getelementptr i8, ptr %i.s, i64 %i.w
  %i.ab = getelementptr i8, ptr %i.t, i64 %i.x
  %i.ac = load double, ptr %i.y, align 8, !tbaa !28
  %i.ad = load double, ptr %i.z, align 8, !tbaa !28
  %i.ae = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.af = insertelement <2 x double> %i.ae, double %i.ad, i64 1
  %i.ag = load double, ptr %i.aa, align 8, !tbaa !28
  %i.ah = load double, ptr %i.ab, align 8, !tbaa !28
  %i.ai = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.ah, i64 1
  %i.ak = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.af)
  %i.al = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.aj)
  %i.am = fcmp ogt <2 x double> %i.ak, %broadcast.splat
  %i.an = fcmp ogt <2 x double> %i.al, %broadcast.splat
  %i.ao = zext <2 x i1> %i.am to <2 x i64>
  %i.ap = zext <2 x i1> %i.an to <2 x i64>
  %i.aq = add <2 x i64> %vec.phi, %i.ao           ; 2 uses
  %i.ar = add <2 x i64> %vec.phi75, %i.ap         ; 2 uses
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !274

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <2 x i64> %i.ar, %i.aq
  %i.at = tail call i64 @llvm.vector.reduce.add.v2i64(<2 x i64> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %i.l, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i.preheader76

.lr.ph.i.preheader76:                             ; preds = %.lr.ph.i.preheader, %middle.block
  %.09.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %n.vec, %middle.block ]
  %.078.i.ph = phi i64 [ 0, %.lr.ph.i.preheader ], [ %i.at, %middle.block ]
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader76, %.lr.ph.i
  %.09.i = phi i64 [ %i.bb, %.lr.ph.i ], [ %.09.i.ph, %.lr.ph.i.preheader76 ] ; 3 uses
  %.078.i = phi i64 [ %i.ba, %.lr.ph.i ], [ %.078.i.ph, %.lr.ph.i.preheader76 ]
  %i.au = getelementptr [8 x i8], ptr %0, i64 %.09.i
  %.idx.i.i = mul i64 %.09.i, 24
  %i.av = getelementptr i8, ptr %i.au, i64 %.idx.i.i
  %i.aw = load double, ptr %i.av, align 8, !tbaa !28
  %i.ax = tail call noundef double @llvm.fabs.f64(double %i.aw)
  %i.ay = fcmp ogt double %i.ax, %i.j
  %i.az = zext i1 %i.ay to i64
  %i.ba = add nuw nsw i64 %.078.i, %i.az          ; 2 uses
  %i.bb = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %exitcond.not.i = icmp eq i64 %i.bb, %i.l
  br i1 %exitcond.not.i, label %_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit, label %.lr.ph.i, !llvm.loop !275

_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit: ; preds = %.lr.ph.i, %middle.block
  %.lcssa = phi i64 [ %i.at, %middle.block ], [ %i.ba, %.lr.ph.i ] ; 11 uses
  %i.bc = icmp eq i64 %.lcssa, 0
  br i1 %i.bc, label %_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread, label %bb.b

_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread: ; preds = %bb.a, %_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  br label %bb.f

bb.b:                                             ; preds = %_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #15
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %1, i64 24, i1 false), !tbaa.struct !286
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  store double 1.000000e+00, ptr %4, align 8, !tbaa !28
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.be = getelementptr inbounds nuw i8, ptr %5, i64 8
  %i.bf = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.bh = getelementptr inbounds nuw i8, ptr %5, i64 32
  %i.bi = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.bj = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.bk = getelementptr inbounds nuw i8, ptr %6, i64 8
  %i.bl = getelementptr inbounds nuw i8, ptr %6, i64 24
  %.sroa.552.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 40
  %.sroa.653.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  %.sroa.754.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 56
  %.sroa.855.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.bm = getelementptr inbounds nuw i8, ptr %6, i64 72
  %i.bn = getelementptr inbounds nuw i8, ptr %6, i64 88
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 72
  br label %bb.c

_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %bb.c
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.7.0..sroa_idx, i8 0, i64 16, i1 false)
  store ptr %0, ptr %7, align 8
  %.sroa.447.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 %.lcssa, ptr %.sroa.447.0..sroa_idx, align 8
  %.sroa.548.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store i64 %.lcssa, ptr %.sroa.548.0..sroa_idx, align 8
  %.sroa.649.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %0, ptr %.sroa.649.0..sroa_idx, align 8
  %.sroa.8.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store i64 3, ptr %.sroa.8.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  store ptr %3, ptr %8, align 8, !tbaa !95, !alias.scope !287
  %i.bp = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %.lcssa, ptr %i.bp, align 8, !tbaa !16, !alias.scope !287
  %i.bq = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %3, ptr %i.bq, align 8, !tbaa !288, !alias.scope !287
  %i.br = getelementptr inbounds nuw i8, ptr %8, i64 32
  store i64 0, ptr %i.br, align 8, !tbaa !16, !alias.scope !287
  %i.bs = getelementptr inbounds nuw i8, ptr %8, i64 48
  store i64 3, ptr %i.bs, align 8, !tbaa !291, !alias.scope !287
  call void @_ZN5Eigen8internal26triangular_solver_selectorIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS2_INS3_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1ELi2ELi0ELi1EE3runERS7_RS9_(ptr noundef nonnull align 8 dereferenceable(56) %7, ptr noundef nonnull align 8 dereferenceable(56) %8)
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  %i.bt = getelementptr inbounds nuw i8, ptr %0, i64 120 ; 7 uses
  %xtraiter = and i64 %.lcssa, 3                  ; 3 uses
  %i.bu = icmp ult i64 %.lcssa, 4
  br i1 %i.bu, label %.epil.preheader, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit.new

_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit.new: ; preds = %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit
  %unroll_iter = and i64 %.lcssa, -4
  br label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.c
  %.03069 = phi i64 [ 0, %bb.b ], [ %i.cf, %bb.c ] ; 9 uses
  %i.bv = sub nuw nsw i64 3, %.03069
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.03069 ; 3 uses
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.bd, i64 %.03069
  %i.by = load i32, ptr %i.bx, align 4, !tbaa !63
  %i.bz = sext i32 %i.by to i64
  %i.ca = getelementptr inbounds [8 x i8], ptr %3, i64 %i.bz ; 2 uses
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !28
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !28
  store double %i.cc, ptr %i.bw, align 8, !tbaa !28
  store double %i.cb, ptr %i.ca, align 8, !tbaa !28
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.bw, ptr %5, align 8, !tbaa !98, !alias.scope !292
  store i64 %i.bv, ptr %i.be, align 8, !tbaa !16, !alias.scope !292
  store i64 1, ptr %i.bf, align 8, !tbaa !16, !alias.scope !292
  store ptr %3, ptr %i.bg, align 8, !tbaa !288, !alias.scope !292
  store i64 %.03069, ptr %i.bh, align 8, !tbaa !16, !alias.scope !292
  store i64 0, ptr %i.bi, align 8, !tbaa !16, !alias.scope !292
  store i64 3, ptr %i.bj, align 8, !tbaa !293, !alias.scope !292
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  %.idx.i.i.i.i = mul nuw nsw i64 %.03069, 24
  %i.cd = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i ; 2 uses
  %i.ce = sub nuw nsw i64 2, %.03069
  %i.cf = add nuw i64 %.03069, 1                  ; 4 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.cd, i64 %i.cf
  store ptr %i.cg, ptr %6, align 8, !tbaa !295, !alias.scope !296
  store i64 %i.ce, ptr %i.bk, align 8, !tbaa !16, !alias.scope !296
  store ptr %i.cd, ptr %i.bl, align 8
  store ptr %0, ptr %.sroa.552.0..sroa_idx, align 8
  store i64 0, ptr %.sroa.653.0..sroa_idx, align 8
  store i64 %.03069, ptr %.sroa.754.0..sroa_idx, align 8
  store i64 3, ptr %.sroa.855.0..sroa_idx, align 8
  store i64 %i.cf, ptr %i.bm, align 8, !tbaa !16, !alias.scope !296
  store i64 3, ptr %i.bn, align 8, !tbaa !302, !alias.scope !296
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.bo, i64 %.03069
  call void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockIKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %5, ptr noundef nonnull align 8 dereferenceable(96) %6, ptr noundef nonnull align 8 dereferenceable(8) %i.ch, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  %exitcond.not = icmp eq i64 %i.cf, %.lcssa
  br i1 %exitcond.not, label %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit, label %bb.c, !llvm.loop !282

.preheader.unr-lcssa:                             ; preds = %bb.e
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.preheader, label %.epil.preheader

.epil.preheader:                                  ; preds = %.preheader.unr-lcssa, %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit
  %.02970.epil.init = phi i64 [ 0, %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit ], [ %i.dr, %.preheader.unr-lcssa ]
  %lcmp.mod80 = icmp ne i64 %xtraiter, 0
  call void @llvm.assume(i1 %lcmp.mod80)
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.epil.preheader
  %.02970.epil = phi i64 [ %.02970.epil.init, %.epil.preheader ], [ %i.co, %bb.d ] ; 3 uses
  %epil.iter = phi i64 [ 0, %.epil.preheader ], [ %epil.iter.next, %bb.d ]
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.02970.epil
  %i.cj = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.02970.epil
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !63
  %i.cl = sext i32 %i.ck to i64
  %i.cm = getelementptr inbounds [8 x i8], ptr %2, i64 %i.cl
  %i.cn = load double, ptr %i.ci, align 8, !tbaa !28
  store double %i.cn, ptr %i.cm, align 8, !tbaa !28
  %i.co = add nuw nsw i64 %.02970.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter
  br i1 %epil.iter.cmp.not, label %.preheader, label %bb.d, !llvm.loop !283

.preheader:                                       ; preds = %bb.d, %.preheader.unr-lcssa
  %i.cp = icmp samesign ult i64 %.lcssa, 3
  br i1 %i.cp, label %.lr.ph.1.a, label %._crit_edge

bb.e:                                             ; preds = %bb.e, %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit.new
  %.02970 = phi i64 [ 0, %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit.new ], [ %i.dr, %bb.e ] ; 6 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen18TriangularViewImplIKNS_5BlockIKNS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELj2ENS_5DenseEE12solveInPlaceINS1_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEEvRKNS_10MatrixBaseIT_EE.exit.new ], [ %niter.next.3, %bb.e ]
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.02970
  %i.cr = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.02970
  %i.cs = load i32, ptr %i.cr, align 8, !tbaa !63
  %i.ct = sext i32 %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %2, i64 %i.ct
  %i.cv = load double, ptr %i.cq, align 8, !tbaa !28
  store double %i.cv, ptr %i.cu, align 8, !tbaa !28
  %i.cw = or disjoint i64 %.02970, 1              ; 2 uses
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.cw
  %i.cy = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.cw
  %i.cz = load i32, ptr %i.cy, align 4, !tbaa !63
  %i.da = sext i32 %i.cz to i64
  %i.db = getelementptr inbounds [8 x i8], ptr %2, i64 %i.da
  %i.dc = load double, ptr %i.cx, align 8, !tbaa !28
  store double %i.dc, ptr %i.db, align 8, !tbaa !28
  %i.dd = or disjoint i64 %.02970, 2              ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dd
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dd
  %i.dg = load i32, ptr %i.df, align 8, !tbaa !63
  %i.dh = sext i32 %i.dg to i64
  %i.di = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dh
  %i.dj = load double, ptr %i.de, align 8, !tbaa !28
  store double %i.dj, ptr %i.di, align 8, !tbaa !28
  %i.dk = or disjoint i64 %.02970, 3              ; 2 uses
  %i.dl = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.dk
  %i.dm = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dk
  %i.dn = load i32, ptr %i.dm, align 4, !tbaa !63
  %i.do = sext i32 %i.dn to i64
  %i.dp = getelementptr inbounds [8 x i8], ptr %2, i64 %i.do
  %i.dq = load double, ptr %i.dl, align 8, !tbaa !28
  store double %i.dq, ptr %i.dp, align 8, !tbaa !28
  %i.dr = add nuw nsw i64 %.02970, 4              ; 2 uses
  %niter.next.3 = add nuw i64 %niter, 4           ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %.preheader.unr-lcssa, label %bb.e, !llvm.loop !284

._crit_edge:                                      ; preds = %.lr.ph.1.a, %.lr.ph.2, %.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #15
  br label %bb.f

.lr.ph.1.a:                                       ; preds = %.preheader
  %i.ds = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %.lcssa
  %i.dt = load i32, ptr %i.ds, align 4, !tbaa !63
  %i.du = sext i32 %i.dt to i64
  %i.dv = getelementptr inbounds [8 x i8], ptr %2, i64 %i.du
  store double 0.000000e+00, ptr %i.dv, align 8, !tbaa !28
  %i.dw = add nuw nsw i64 %.lcssa, 1              ; 2 uses
  %exitcond73.not.1 = icmp eq i64 %i.dw, 3
  br i1 %exitcond73.not.1, label %._crit_edge, label %.lr.ph.2

.lr.ph.2:                                         ; preds = %.lr.ph.1.a
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %i.bt, i64 %i.dw
  %i.dy = load i32, ptr %i.dx, align 4, !tbaa !63
  %i.dz = sext i32 %i.dy to i64
  %i.ea = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dz
  store double 0.000000e+00, ptr %i.ea, align 8, !tbaa !28
  br label %._crit_edge

bb.f:                                             ; preds = %._crit_edge, %_ZNK5Eigen20FullPivHouseholderQRINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4rankEv.exit.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockIKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1EEEEEvRKT_RKdPd(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.944", align 8 ; 20 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.840", align 8 ; 4 uses
  %6 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.948", align 8 ; 7 uses
  %7 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %8 = alloca %"class.Eigen::Block.733", align 8  ; 10 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %i.a, align 8, !tbaa !16   ; 9 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load double, ptr %2, align 8, !tbaa !28  ; 3 uses
  br i1 %i.c, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.e = fsub double 1.000000e+00, %i.d           ; 10 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.g = load ptr, ptr %0, align 8, !tbaa !98     ; 11 uses
  %i.h = ptrtoint ptr %i.g to i64
  %i.i = and i64 %i.h, 7
  %.not.i.i.i.i.i.i = icmp eq i64 %i.i, 0
  %i.j = load i64, ptr %i.f, align 8, !tbaa !16   ; 7 uses
  %i.k = icmp sgt i64 %i.j, 0                     ; 2 uses
  br i1 %.not.i.i.i.i.i.i, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  br i1 %i.k, label %.preheader.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

.preheader.i.i.i.i.i.i.i.preheader:               ; preds = %bb.c
  %xtraiter163 = and i64 %i.j, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.j, 4
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter166 = and i64 %i.j, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter167 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter167.next.3, %.preheader.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.m = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.n = load double, ptr %i.m, align 8, !tbaa !28
  %i.o = fmul double %i.e, %i.n
  store double %i.o, ptr %i.m, align 8, !tbaa !28
  %i.p = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.q = getelementptr i8, ptr %i.g, i64 %i.p
  %i.r = getelementptr i8, ptr %i.q, i64 24       ; 2 uses
  %i.s = load double, ptr %i.r, align 8, !tbaa !28
  %i.t = fmul double %i.e, %i.s
  store double %i.t, ptr %i.r, align 8, !tbaa !28
  %i.u = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.v = getelementptr i8, ptr %i.g, i64 %i.u
  %i.w = getelementptr i8, ptr %i.v, i64 48       ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !28
  %i.y = fmul double %i.e, %i.x
  store double %i.y, ptr %i.w, align 8, !tbaa !28
  %i.z = mul i64 %.0810.i.i.i.i.i.i.i, 24
  %i.aa = getelementptr i8, ptr %i.g, i64 %i.z
  %i.ab = getelementptr i8, ptr %i.aa, i64 72     ; 2 uses
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !28
  %i.ad = fmul double %i.e, %i.ac
  store double %i.ad, ptr %i.ab, align 8, !tbaa !28
  %i.ae = add nuw nsw i64 %.0810.i.i.i.i.i.i.i, 4 ; 2 uses
  %niter167.next.3 = add nuw nsw i64 %niter167, 4 ; 2 uses
  %niter167.ncmp.3 = icmp eq i64 %niter167.next.3, %unroll_iter166
  br i1 %niter167.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit134.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !303

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter168 = and i64 %i.j, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.j, 4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter172 = and i64 %i.j, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.ay, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter173 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter173.next.3, %._crit_edge.i.i.i.i.i.i ]
  %.idx.i.i.i38.i.i.i.i.i.i = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ag = getelementptr i8, ptr %i.g, i64 %.idx.i.i.i38.i.i.i.i.i.i ; 2 uses
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !28
  %i.ai = fmul double %i.e, %i.ah
  store double %i.ai, ptr %i.ag, align 8, !tbaa !28
  %i.aj = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ak = getelementptr i8, ptr %i.g, i64 %i.aj
  %i.al = getelementptr i8, ptr %i.ak, i64 24     ; 2 uses
  %i.am = load double, ptr %i.al, align 8, !tbaa !28
  %i.an = fmul double %i.e, %i.am
  store double %i.an, ptr %i.al, align 8, !tbaa !28
  %i.ao = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.ap = getelementptr i8, ptr %i.g, i64 %i.ao
  %i.aq = getelementptr i8, ptr %i.ap, i64 48     ; 2 uses
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !28
  %i.as = fmul double %i.e, %i.ar
  store double %i.as, ptr %i.aq, align 8, !tbaa !28
  %i.at = mul i64 %.03453.i.i.i.i.i.i, 24
  %i.au = getelementptr i8, ptr %i.g, i64 %i.at
  %i.av = getelementptr i8, ptr %i.au, i64 72     ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !28
  %i.ax = fmul double %i.e, %i.aw
  store double %i.ax, ptr %i.av, align 8, !tbaa !28
  %i.ay = add nuw nsw i64 %.03453.i.i.i.i.i.i, 4  ; 2 uses
  %niter173.next.3 = add nuw nsw i64 %niter173, 4 ; 2 uses
  %niter173.ncmp.3 = icmp eq i64 %niter173.next.3, %unroll_iter172
  br i1 %niter173.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !304

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !16 ; 31 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #15
  %i.bc = add nsw i64 %i.b, -1                    ; 7 uses
  %i.bd = load ptr, ptr %0, align 8, !tbaa !98    ; 16 uses
  %i.be = getelementptr i8, ptr %i.bd, i64 8      ; 15 uses
  store ptr %i.be, ptr %8, align 8, !tbaa !102
  %i.bf = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.bc, ptr %i.bf, align 8, !tbaa !16
  %i.bg = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 %i.bb, ptr %i.bg, align 8, !tbaa !16
  %i.bh = getelementptr inbounds nuw i8, ptr %8, i64 24
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.bh, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.bi = getelementptr inbounds nuw i8, ptr %8, i64 80
  store i64 1, ptr %i.bi, align 8, !tbaa !16
  %i.bj = getelementptr inbounds nuw i8, ptr %8, i64 88
  store i64 0, ptr %i.bj, align 8, !tbaa !16
  %i.bk = getelementptr inbounds nuw i8, ptr %8, i64 96
  store i64 3, ptr %i.bk, align 8, !tbaa !336
  %.sroa.039.sroa.0.0.copyload = load ptr, ptr %1, align 8 ; 26 uses
  %.sroa.039.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.bl = icmp sgt i64 %i.bb, 0
  br i1 %i.bl, label %.split.i.i.i.i.i.i.i.i, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

.split.i.i.i.i.i.i.i.i:                           ; preds = %bb.e
  %i.bm = icmp eq i64 %i.bc, 0
  %i.bn = sdiv i64 %i.bc, 4
  %i.bo = shl nsw i64 %i.bn, 2                    ; 4 uses
  %i.bp = sdiv i64 %i.bc, 2
  %i.bq = shl nsw i64 %i.bp, 1                    ; 10 uses
  %i.br = icmp sgt i64 %i.b, 4
  %i.bs = getelementptr inbounds nuw i8, ptr %.sroa.039.sroa.0.0.copyload, i64 16
  %i.bt = icmp sgt i64 %i.b, 8
  %i.bu = icmp sgt i64 %i.bq, %i.bo
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %.sroa.039.sroa.0.0.copyload, i64 %i.bo
  %i.bw = icmp slt i64 %i.bq, %i.bc               ; 2 uses
  br i1 %i.bm, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.preheader.i.i.i.i.i.i.i.i, label %.split.split.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.preheader.i.i.i.i.i.i.i.i: ; preds = %.split.i.i.i.i.i.i.i.i
  %i.bx = shl nuw i64 %i.bb, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %3, i8 0, i64 %i.bx, i1 false), !tbaa !28
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

.split.split.i.i.i.i.i.i.i.i:                     ; preds = %.split.i.i.i.i.i.i.i.i
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp ult i64 %i.b, 3
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader, label %.preheader.i.preheader.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader: ; preds = %.split.split.i.i.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %i.bb, 15
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader136, label %vector.memcheck

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader136: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader
  %.011.us12.us.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.by = sub i64 %i.bb, %.011.us12.us.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter149 = and i64 %i.by, 1
  %lcmp.mod150.not = icmp eq i64 %xtraiter149, 0
  br i1 %lcmp.mod150.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader136
  %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 24
  %i.bz = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.prol
  %i.ca = load double, ptr %.sroa.039.sroa.0.0.copyload, align 8, !tbaa !28
  %i.cb = load double, ptr %i.bz, align 8, !tbaa !28
  %i.cc = fmul double %i.ca, %i.cb
  %i.cd = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph
  store double %i.cc, ptr %i.cd, align 8, !tbaa !28
  %i.ce = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit
end_hunk_1
begin_hunk_2_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockIKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1EEEEEvRKT_RKdPd:bb.a
  %i.if = load double, ptr %i.id, align 8, !tbaa !28
  %i.ig = fmul double %i.ie, %i.if
  %i.ih = getelementptr [8 x i8], ptr %3, i64 %.011.us12.us.i.i.i.i.i.i.i.i
  store double %i.ig, ptr %i.ih, align 8, !tbaa !28
  %i.ii = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ii, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.1
  %i.ik = load double, ptr %.sroa.039.sroa.0.0.copyload, align 8, !tbaa !28
  %i.il = load double, ptr %i.ij, align 8, !tbaa !28
  %i.im = fmul double %i.ik, %i.il
  %i.in = getelementptr [8 x i8], ptr %3, i64 %i.ii
  store double %i.im, ptr %i.in, align 8, !tbaa !28
  %i.io = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.io, %i.bb
  br i1 %exitcond24.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i, !llvm.loop !315

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.jc, %.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 24
  %i.ip = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i
  %i.iq = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !29
  %i.ir = load <2 x double>, ptr %i.ip, align 1, !tbaa !29
  %i.is = fmul <2 x double> %i.iq, %i.ir
  %i.it = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.is)
  %i.iu = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i
  store double %i.it, ptr %i.iu, align 8, !tbaa !28
  %i.iv = or disjoint i64 %.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.iv, 24
  %i.iw = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.1
  %i.ix = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !29
  %i.iy = load <2 x double>, ptr %i.iw, align 1, !tbaa !29
  %i.iz = fmul <2 x double> %i.ix, %i.iy
  %i.ja = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.iz)
  %i.jb = getelementptr [8 x i8], ptr %3, i64 %i.iv
  store double %i.ja, ptr %i.jb, align 8, !tbaa !28
  %i.jc = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !313

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.jc, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.011.i.i.i.i.i.i.i.i.epil.init, 24
  %i.jd = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.je = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !29
  %i.jf = load <2 x double>, ptr %i.jd, align 1, !tbaa !29
  %i.jg = fmul <2 x double> %i.je, %i.jf
  %i.jh = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.jg)
  %i.ji = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i.epil.init
  store double %i.jh, ptr %i.ji, align 8, !tbaa !28
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check106 = icmp ult i64 %i.bb, 21
  br i1 %min.iters.check106, label %.split.i.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jj = add nsw i64 %i.bb, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jj, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.jk = getelementptr i8, ptr %i.bd, i64 %mul.result
  %i.jl = icmp ult ptr %i.jk, %i.bd
  %i.jm = or i1 %i.jl, %mul.overflow
  br i1 %i.jm, label %.split.i.i.i.i.i.i.preheader, label %vector.memcheck107

vector.memcheck107:                               ; preds = %vector.scevcheck
  %i.jn = shl i64 %i.bb, 3
  %i.jo = getelementptr i8, ptr %3, i64 %i.jn
  %i.jp = mul i64 %i.bb, 24
  %i.jq = getelementptr i8, ptr %i.bd, i64 %i.jp
  %i.jr = getelementptr i8, ptr %i.jq, i64 -16
  %bound0108 = icmp ult ptr %3, %i.jr
  %bound1109 = icmp ult ptr %i.bd, %i.jo
  %found.conflict110 = and i1 %bound0108, %bound1109
  br i1 %found.conflict110, label %.split.i.i.i.i.i.i.preheader, label %vector.ph111

vector.ph111:                                     ; preds = %vector.memcheck107
  %i.js = and i64 %i.bb, 3                        ; 2 uses
  %i.jt = icmp eq i64 %i.js, 0
  %i.ju = select i1 %i.jt, i64 4, i64 %i.js
  %n.vec112 = sub nsw i64 %i.bb, %i.ju            ; 2 uses
  br label %vector.body113

vector.body113:                                   ; preds = %vector.body113, %vector.ph111
  %index114 = phi i64 [ 0, %vector.ph111 ], [ %index.next116, %vector.body113 ] ; 6 uses
  %i.jv = getelementptr [8 x i8], ptr %3, i64 %index114 ; 3 uses
  %i.jw = mul i64 %index114, 24
  %i.jx = mul i64 %index114, 24
  %i.jy = mul i64 %index114, 24
  %i.jz = mul i64 %index114, 24
  %i.ka = getelementptr i8, ptr %i.bd, i64 %i.jw
  %i.kb = getelementptr i8, ptr %i.bd, i64 %i.jx
  %i.kc = getelementptr i8, ptr %i.kb, i64 24
  %i.kd = getelementptr i8, ptr %i.bd, i64 %i.jy
  %i.ke = getelementptr i8, ptr %i.kd, i64 48
  %i.kf = getelementptr i8, ptr %i.bd, i64 %i.jz
  %i.kg = getelementptr i8, ptr %i.kf, i64 72
  %i.kh = load double, ptr %i.ka, align 8, !tbaa !28, !alias.scope !341
  %i.ki = load double, ptr %i.kc, align 8, !tbaa !28, !alias.scope !341
  %i.kj = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.kk = insertelement <2 x double> %i.kj, double %i.ki, i64 1
  %i.kl = load double, ptr %i.ke, align 8, !tbaa !28, !alias.scope !341
  %i.km = load double, ptr %i.kg, align 8, !tbaa !28, !alias.scope !341
  %i.kn = insertelement <2 x double> poison, double %i.kl, i64 0
  %i.ko = insertelement <2 x double> %i.kn, double %i.km, i64 1
  %i.kp = getelementptr i8, ptr %i.jv, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jv, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  %wide.load115 = load <2 x double>, ptr %i.kp, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  %i.kq = fadd <2 x double> %i.kk, %wide.load
  %i.kr = fadd <2 x double> %i.ko, %wide.load115
  store <2 x double> %i.kq, ptr %i.jv, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  store <2 x double> %i.kr, ptr %i.kp, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  %index.next116 = add nuw i64 %index114, 4       ; 2 uses
  %i.ks = icmp eq i64 %index.next116, %n.vec112
  br i1 %i.ks, label %.split.i.i.i.i.i.i.preheader, label %vector.body113, !llvm.loop !319

.split.i.i.i.i.i.i.preheader:                     ; preds = %vector.body113, %vector.memcheck107, %vector.scevcheck, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck107 ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec112, %vector.body113 ] ; 6 uses
  %i.kt = sub i64 %i.bb, %.09.i.i.i.i.i.i.ph
  %i.ku = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter152 = and i64 %i.kt, 1
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.split.i.i.i.i.i.i.prol.loopexit, label %.split.i.i.i.i.i.i.prol

.split.i.i.i.i.i.i.prol:                          ; preds = %.split.i.i.i.i.i.i.preheader
  %i.kv = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8.prol = mul i64 %.09.i.i.i.i.i.i.ph, 24
  %i.kw = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i8.prol
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !28
  %i.ky = load double, ptr %i.kv, align 8, !tbaa !28
  %i.kz = fadd double %i.kx, %i.ky
  store double %i.kz, ptr %i.kv, align 8, !tbaa !28
  %i.la = add nuw nsw i64 %.09.i.i.i.i.i.i.ph, 1
  br label %.split.i.i.i.i.i.i.prol.loopexit

.split.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.split.i.i.i.i.i.i.prol, %.split.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.ph, %.split.i.i.i.i.i.i.preheader ], [ %i.la, %.split.i.i.i.i.i.i.prol ]
  %i.lb = icmp eq i64 %i.ku, %.09.i.i.i.i.i.i.ph
  br i1 %i.lb, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.ln, %.split.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.split.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.lc = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8 = mul i64 %.09.i.i.i.i.i.i, 24
  %i.ld = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i8
  %i.le = load double, ptr %i.ld, align 8, !tbaa !28
  %i.lf = load double, ptr %i.lc, align 8, !tbaa !28
  %i.lg = fadd double %i.le, %i.lf
  store double %i.lg, ptr %i.lc, align 8, !tbaa !28
  %i.lh = add nuw nsw i64 %.09.i.i.i.i.i.i, 1     ; 2 uses
  %i.li = getelementptr [8 x i8], ptr %3, i64 %i.lh ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8.1 = mul i64 %i.lh, 24
  %i.lj = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i8.1
  %i.lk = load double, ptr %i.lj, align 8, !tbaa !28
  %i.ll = load double, ptr %i.li, align 8, !tbaa !28
  %i.lm = fadd double %i.lk, %i.ll
  store double %i.lm, ptr %i.li, align 8, !tbaa !28
  %i.ln = add nuw nsw i64 %.09.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ln, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i, !llvm.loop !320

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.split.i.i.i.i.i.i, %.split.i.i.i.i.i.i.prol.loopexit
  %i.lo = load double, ptr %2, align 8, !tbaa !28, !noalias !343 ; 3 uses
  %xtraiter155 = and i64 %i.bb, 1
  %i.lp = icmp eq i64 %i.ku, 0
  br i1 %i.lp, label %.split.i.i.i.i.i.i9.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter158 = and i64 %i.bb, 9223372036854775806
  br label %.split.i.i.i.i.i.i9

.split.i.i.i.i.i.i9:                              ; preds = %.split.i.i.i.i.i.i9, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.09.i.i.i.i.i.i10 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.md, %.split.i.i.i.i.i.i9 ] ; 4 uses
  %niter159 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter159.next.1, %.split.i.i.i.i.i.i9 ]
  %.idx.i.i.i.i.i.i.i.i.i11 = mul i64 %.09.i.i.i.i.i.i10, 24
  %i.lq = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i11 ; 2 uses
  %i.lr = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i10
  %i.ls = load double, ptr %i.lr, align 8, !tbaa !28
  %i.lt = fmul double %i.lo, %i.ls
  %i.lu = load double, ptr %i.lq, align 8, !tbaa !28
  %i.lv = fsub double %i.lu, %i.lt
  store double %i.lv, ptr %i.lq, align 8, !tbaa !28
  %i.lw = or disjoint i64 %.09.i.i.i.i.i.i10, 1   ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i11.1 = mul i64 %i.lw, 24
  %i.lx = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i11.1 ; 2 uses
  %i.ly = getelementptr [8 x i8], ptr %3, i64 %i.lw
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !28
  %i.ma = fmul double %i.lo, %i.lz
  %i.mb = load double, ptr %i.lx, align 8, !tbaa !28
  %i.mc = fsub double %i.mb, %i.ma
  store double %i.mc, ptr %i.lx, align 8, !tbaa !28
  %i.md = add nuw nsw i64 %.09.i.i.i.i.i.i10, 2   ; 2 uses
  %niter159.next.1 = add nuw nsw i64 %niter159, 2 ; 2 uses
  %niter159.ncmp.1 = icmp eq i64 %niter159.next.1, %unroll_iter158
  br i1 %niter159.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.split.i.i.i.i.i.i9, !llvm.loop !323

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.split.i.i.i.i.i.i9
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i9.epil.preheader

.split.i.i.i.i.i.i9.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.09.i.i.i.i.i.i10.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.md, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %.idx.i.i.i.i.i.i.i.i.i11.epil = mul i64 %.09.i.i.i.i.i.i10.epil.init, 24
  %i.me = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i11.epil ; 2 uses
  %i.mf = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i10.epil.init
  %i.mg = load double, ptr %i.mf, align 8, !tbaa !28
  %i.mh = fmul double %i.lo, %i.mg
  %i.mi = load double, ptr %i.me, align 8, !tbaa !28
  %i.mj = fsub double %i.mi, %i.mh
  store double %i.mj, ptr %i.me, align 8, !tbaa !28
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.split.i.i.i.i.i.i9.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !28, !noalias !344
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.039.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.mk = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload120 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.039.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.ml = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.mk, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.ml, align 8
  %i.mm = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.mn = lshr exact i64 %i.mm, 3
  %i.mo = and i64 %i.mn, 1
  %i.mp = call i64 @llvm.smin.i64(i64 %i.mo, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.mq = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mp
  %i.mr = and i64 %i.mq, -2                       ; 3 uses
  %i.ms = add nsw i64 %i.mr, %i.mp                ; 5 uses
  %i.mt = icmp sgt i64 %i.mp, 0
  br i1 %i.mt, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.mu = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !28
  %i.mv = fmul double %i.mk, %i.mu
  store double %i.mv, ptr %4, align 8, !tbaa !28
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mr, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mw = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mx = icmp slt i64 %i.ms, %.sroa.6.sroa.4.0.copyload
  br i1 %i.mx, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.my = add i64 %i.mp, %i.mr
  %i.mz = sub i64 %.sroa.6.sroa.4.0.copyload, %i.my ; 3 uses
  %min.iters.check122 = icmp ult i64 %i.mz, 6
  %i.na = sub i64 %.sroa.6.sroa.0.0.copyload120, %i.mm
  %diff.check = icmp ugt i64 %i.na, -32
  %or.cond = select i1 %min.iters.check122, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135, label %vector.ph123

vector.ph123:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec124 = and i64 %i.mz, -4                   ; 3 uses
  %i.nb = add i64 %i.ms, %n.vec124
  %broadcast.splatinsert125 = insertelement <2 x double> poison, double %i.mk, i64 0
  %broadcast.splat126 = shufflevector <2 x double> %broadcast.splatinsert125, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body127

vector.body127:                                   ; preds = %vector.body127, %vector.ph123
  %index128 = phi i64 [ 0, %vector.ph123 ], [ %index.next131, %vector.body127 ] ; 2 uses
  %i.nc = add i64 %i.ms, %index128                ; 2 uses
  %i.nd = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nc ; 2 uses
  %i.ne = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nc ; 2 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %i.ne, i64 16
  %wide.load129 = load <2 x double>, ptr %i.ne, align 8, !tbaa !28
  %wide.load130 = load <2 x double>, ptr %i.nf, align 8, !tbaa !28
  %i.ng = fmul <2 x double> %broadcast.splat126, %wide.load129
  %i.nh = fmul <2 x double> %broadcast.splat126, %wide.load130
  %i.ni = getelementptr inbounds nuw i8, ptr %i.nd, i64 16
  store <2 x double> %i.ng, ptr %i.nd, align 8, !tbaa !28
  store <2 x double> %i.nh, ptr %i.ni, align 8, !tbaa !28
  %index.next131 = add nuw i64 %index128, 4       ; 2 uses
  %i.nj = icmp eq i64 %index.next131, %n.vec124
  br i1 %i.nj, label %middle.block132, label %vector.body127, !llvm.loop !326

middle.block132:                                  ; preds = %vector.body127
  %cmp.n = icmp eq i64 %i.mz, %n.vec124
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block132
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ms, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.nb, %middle.block132 ] ; 4 uses
  %i.nk = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter160 = and i64 %i.nk, 3                 ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.np, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ] ; 3 uses
  %prol.iter162 = phi i64 [ %prol.iter162.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ]
  %i.nl = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nm = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !28
  %i.no = fmul double %i.mk, %i.nn
  store double %i.no, ptr %i.nl, align 8, !tbaa !28
  %i.np = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter162.next = add i64 %prol.iter162, 1   ; 2 uses
  %prol.iter162.cmp.not = icmp eq i64 %prol.iter162.next, %xtraiter160
  br i1 %prol.iter162.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !327

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ], [ %i.np, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.nq = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.nr = icmp ugt i64 %i.nq, -4
  br i1 %i.nr, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nt = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !28
  %i.nv = fmul double %i.mk, %i.nu
  store double %i.nv, ptr %i.ns, align 8, !tbaa !28
  %i.nw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nw
  %i.ny = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nw
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !28
  %i.oa = fmul double %i.mk, %i.nz
  store double %i.oa, ptr %i.nx, align 8, !tbaa !28
  %i.ob = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ob
  %i.od = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ob
  %i.oe = load double, ptr %i.od, align 8, !tbaa !28
  %i.of = fmul double %i.mk, %i.oe
  store double %i.of, ptr %i.oc, align 8, !tbaa !28
  %i.og = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.oh = getelementptr inbounds [8 x i8], ptr %4, i64 %i.og
  %i.oi = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.og
  %i.oj = load double, ptr %i.oi, align 8, !tbaa !28
  %i.ok = fmul double %i.mk, %i.oj
  store double %i.ok, ptr %i.oh, align 8, !tbaa !28
  %i.ol = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ol, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !328

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oq, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mp, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.om = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.on = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oo = load <2 x double>, ptr %i.on, align 1, !tbaa !29
  %i.op = fmul <2 x double> %i.mw, %i.oo
  store <2 x double> %i.op, ptr %i.om, align 16, !tbaa !29
  %i.oq = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.or = icmp slt i64 %i.oq, %i.ms
  br i1 %i.or, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !329

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block132, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.os = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.os, align 8
  %.sroa.819.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.819.sroa.6.88..sroa_idx, align 8
  %i.ot = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.ot, align 8, !tbaa !76
  %i.ou = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.ou, align 8, !tbaa !104
  %i.ov = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.ov, align 8, !tbaa !16
  %i.ow = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.ow, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.be, ptr %5, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %5, ptr %6, align 8, !tbaa !350
  %i.ox = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.ox, align 8, !tbaa !351
  %i.oy = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.oy, align 8, !tbaa !91
  %i.oz = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.oz, align 8, !tbaa !352
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS11_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
end_hunk_2
