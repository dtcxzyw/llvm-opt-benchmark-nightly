Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/unproject_on_plane?download=true
inline.NumInlined: 3870
inline.NumDeleted: 2281
loop-unroll.NumCompletelyUnrolled: 9
loop-unroll.NumRuntimeUnrolled: 30
loop-unroll.NumUnrolled: 39
begin_hunk_0_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE25applyHouseholderOnTheLeftINS_11VectorBlockINS1_IS3_Li3ELi1ELb1EEELin1EEEEEvRKT_RKdPd:bb.a
  %i.ib = fadd double %i.hu, %i.ia
  %i.ic = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.id = getelementptr inbounds [8 x i8], ptr %.sroa.038.sroa.0.0.copyload, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !28
  %i.if = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.ic
  %i.ig = load double, ptr %i.if, align 8, !tbaa !28
  %i.ih = fmul double %i.ie, %i.ig
  %i.ii = fadd double %i.ib, %i.ih                ; 2 uses
  %i.ij = add nsw i64 %.05283.i.i.i.i.i.us20.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ij, %i.bc
  br i1 %exitcond.not.i.i.i.i.i.us22.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, !llvm.loop !187

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit
  %.lcssa141 = phi double [ %.lcssa141.unr, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i.prol.loopexit ], [ %i.ii, %.lr.ph85.i.i.i.i.i.us19.i.i.i.i.i.i.i.i ]
  %i.ik = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.us16.i.i.i.i.i.i.i.i
  store double %.lcssa141, ptr %i.ik, align 8, !tbaa !28
  %i.il = add nuw nsw i64 %.07.us16.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond34.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.il, %i.bb
  br i1 %exitcond34.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.lr.ph85.i.i.i.i.i.preheader.us18.i.i.i.i.i.i.i.i, !llvm.loop !188

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new
  %.07.i.i.i.i.i.i.i.i = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %i.iz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.in = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !29
  %i.io = load <2 x double>, ptr %i.im, align 1, !tbaa !29
  %i.ip = fmul <2 x double> %i.in, %i.io          ; 2 uses
  %shift131 = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132 = fadd <2 x double> %i.ip, %shift131
  %i.iq = extractelement <2 x double> %foldExtExtBinop132, i64 0
  %i.ir = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i
  store double %i.iq, ptr %i.ir, align 8, !tbaa !28
  %i.is = or disjoint i64 %.07.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.is, 24
  %i.it = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.iu = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !29
  %i.iv = load <2 x double>, ptr %i.it, align 1, !tbaa !29
  %i.iw = fmul <2 x double> %i.iu, %i.iv          ; 2 uses
  %shift131.1 = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132.1 = fadd <2 x double> %i.iw, %shift131.1
  %i.ix = extractelement <2 x double> %foldExtExtBinop132.1, i64 0
  %i.iy = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.is
  store double %i.ix, ptr %i.iy, align 8, !tbaa !28
  %i.iz = add nuw nsw i64 %.07.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i, !llvm.loop !188

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader: ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader
  %.07.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader ], [ %i.iz, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa ] ; 2 uses
  %lcmp.mod143 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod143)
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.07.i.i.i.i.i.i.i.i.epil.init, 24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.jb = load <2 x double>, ptr %.sroa.038.sroa.0.0.copyload, align 1, !tbaa !29
  %i.jc = load <2 x double>, ptr %i.ja, align 1, !tbaa !29
  %i.jd = fmul <2 x double> %i.jb, %i.jc          ; 2 uses
  %shift131.epil = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop132.epil = fadd <2 x double> %i.jd, %shift131.epil
  %i.je = extractelement <2 x double> %foldExtExtBinop132.epil, i64 0
  %i.jf = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.07.i.i.i.i.i.i.i.i.epil.init
  store double %i.je, ptr %i.jf, align 8, !tbaa !28
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit142.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us23.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us14.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us10.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check103 = icmp ult i64 %i.bb, 9
  br i1 %min.iters.check103, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.memcheck96

vector.memcheck96:                                ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jg = shl i64 %i.bb, 3
  %scevgep97 = getelementptr i8, ptr %3, i64 %i.jg
  %i.jh = mul i64 %i.bb, 24
  %i.ji = getelementptr i8, ptr %i.bd, i64 %i.jh
  %scevgep98 = getelementptr i8, ptr %i.ji, i64 -16
  %bound099 = icmp ult ptr %3, %scevgep98
  %bound1100 = icmp ult ptr %i.bd, %scevgep97
  %found.conflict101 = and i1 %bound099, %bound1100
  br i1 %found.conflict101, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.ph104

vector.ph104:                                     ; preds = %vector.memcheck96
  %i.jj = and i64 %i.bb, 3                        ; 2 uses
  %i.jk = icmp eq i64 %i.jj, 0
  %i.jl = select i1 %i.jk, i64 4, i64 %i.jj
  %n.vec105 = sub nsw i64 %i.bb, %i.jl            ; 2 uses
  br label %vector.body106

vector.body106:                                   ; preds = %vector.body106, %vector.ph104
  %index107 = phi i64 [ 0, %vector.ph104 ], [ %index.next109, %vector.body106 ] ; 6 uses
  %i.jm = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %index107 ; 3 uses
  %i.jn = mul nuw nsw i64 %index107, 24
  %i.jo = mul nuw i64 %index107, 24
  %i.jp = mul nuw i64 %index107, 24
  %i.jq = mul nuw i64 %index107, 24
  %i.jr = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jn
  %i.js = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jo
  %i.jt = getelementptr inbounds nuw i8, ptr %i.js, i64 24
  %i.ju = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jp
  %i.jv = getelementptr inbounds nuw i8, ptr %i.ju, i64 48
  %i.jw = getelementptr inbounds nuw i8, ptr %i.bd, i64 %i.jq
  %i.jx = getelementptr inbounds nuw i8, ptr %i.jw, i64 72
  %i.jy = load double, ptr %i.jr, align 8, !tbaa !28, !alias.scope !215
  %i.jz = load double, ptr %i.jt, align 8, !tbaa !28, !alias.scope !215
  %i.ka = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %i.jz, i64 1
  %i.kc = load double, ptr %i.jv, align 8, !tbaa !28, !alias.scope !215
  %i.kd = load double, ptr %i.jx, align 8, !tbaa !28, !alias.scope !215
  %i.ke = insertelement <2 x double> poison, double %i.kc, i64 0
  %i.kf = insertelement <2 x double> %i.ke, double %i.kd, i64 1
  %i.kg = getelementptr inbounds nuw i8, ptr %i.jm, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jm, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  %wide.load108 = load <2 x double>, ptr %i.kg, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  %i.kh = fadd <2 x double> %i.kb, %wide.load
  %i.ki = fadd <2 x double> %i.kf, %wide.load108
  store <2 x double> %i.kh, ptr %i.jm, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  store <2 x double> %i.ki, ptr %i.kg, align 8, !tbaa !28, !alias.scope !216, !noalias !215
  %index.next109 = add nuw i64 %index107, 4       ; 2 uses
  %i.kj = icmp eq i64 %index.next109, %n.vec105
  br i1 %i.kj, label %.lr.ph.i.i.i.i.i.i.preheader, label %vector.body106, !llvm.loop !193

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %vector.body106, %vector.memcheck96, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck96 ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockINSC_INS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec105, %vector.body106 ] ; 6 uses
  %i.kk = sub i64 %i.bb, %.05.i.i.i.i.i.i.ph
  %i.kl = add nsw i64 %i.bb, -1                   ; 2 uses
  %xtraiter152 = and i64 %i.kk, 1
  %lcmp.mod153.not = icmp eq i64 %xtraiter152, 0
  br i1 %lcmp.mod153.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.km = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.05.i.i.i.i.i.i.ph, 24
  %i.kn = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.prol
  %i.ko = load double, ptr %i.kn, align 8, !tbaa !28
  %i.kp = load double, ptr %i.km, align 8, !tbaa !28
  %i.kq = fadd double %i.ko, %i.kp
  store double %i.kq, ptr %i.km, align 8, !tbaa !28
  %i.kr = add nuw nsw i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader ], [ %i.kr, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.ks = icmp eq i64 %i.kl, %.05.i.i.i.i.i.i.ph
  br i1 %i.ks, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.le, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.kt = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.05.i.i.i.i.i.i, 24
  %i.ku = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !28
  %i.kw = load double, ptr %i.kt, align 8, !tbaa !28
  %i.kx = fadd double %i.kv, %i.kw
  store double %i.kx, ptr %i.kt, align 8, !tbaa !28
  %i.ky = add nuw nsw i64 %.05.i.i.i.i.i.i, 1     ; 2 uses
  %i.kz = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ky ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ky, 24
  %i.la = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.1
  %i.lb = load double, ptr %i.la, align 8, !tbaa !28
  %i.lc = load double, ptr %i.kz, align 8, !tbaa !28
  %i.ld = fadd double %i.lb, %i.lc
  store double %i.ld, ptr %i.kz, align 8, !tbaa !28
  %i.le = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.le, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !194

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.prol.loopexit
  %i.lf = load double, ptr %2, align 8, !tbaa !28, !noalias !217 ; 3 uses
  %xtraiter155 = and i64 %i.bb, 1
  %i.lg = icmp eq i64 %i.kl, 0
  br i1 %i.lg, label %.lr.ph.i.i.i.i.i.i8.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter158 = and i64 %i.bb, 9223372036854775806
  br label %.lr.ph.i.i.i.i.i.i8

.lr.ph.i.i.i.i.i.i8:                              ; preds = %.lr.ph.i.i.i.i.i.i8, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.05.i.i.i.i.i.i9 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lu, %.lr.ph.i.i.i.i.i.i8 ] ; 4 uses
  %niter159 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter159.next.1, %.lr.ph.i.i.i.i.i.i8 ]
  %.idx.i.i.i.i.i.i.i.i10 = mul nuw nsw i64 %.05.i.i.i.i.i.i9, 24
  %i.lh = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10 ; 2 uses
  %i.li = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9
  %i.lj = load double, ptr %i.li, align 8, !tbaa !28
  %i.lk = fmul double %i.lf, %i.lj
  %i.ll = load double, ptr %i.lh, align 8, !tbaa !28
  %i.lm = fsub double %i.ll, %i.lk
  store double %i.lm, ptr %i.lh, align 8, !tbaa !28
  %i.ln = or disjoint i64 %.05.i.i.i.i.i.i9, 1    ; 2 uses
  %.idx.i.i.i.i.i.i.i.i10.1 = mul nuw nsw i64 %i.ln, 24
  %i.lo = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.1 ; 2 uses
  %i.lp = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %i.ln
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !28
  %i.lr = fmul double %i.lf, %i.lq
  %i.ls = load double, ptr %i.lo, align 8, !tbaa !28
  %i.lt = fsub double %i.ls, %i.lr
  store double %i.lt, ptr %i.lo, align 8, !tbaa !28
  %i.lu = add nuw nsw i64 %.05.i.i.i.i.i.i9, 2    ; 2 uses
  %niter159.next.1 = add nuw nsw i64 %niter159, 2 ; 2 uses
  %niter159.ncmp.1 = icmp eq i64 %niter159.next.1, %unroll_iter158
  br i1 %niter159.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i8, !llvm.loop !197

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i8
  %lcmp.mod156.not = icmp eq i64 %xtraiter155, 0
  br i1 %lcmp.mod156.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.lr.ph.i.i.i.i.i.i8.epil.preheader

.lr.ph.i.i.i.i.i.i8.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.05.i.i.i.i.i.i9.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lu, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod157 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod157)
  %.idx.i.i.i.i.i.i.i.i10.epil = mul nuw nsw i64 %.05.i.i.i.i.i.i9.epil.init, 24
  %i.lv = getelementptr inbounds nuw i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i10.epil ; 2 uses
  %i.lw = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %.05.i.i.i.i.i.i9.epil.init
  %i.lx = load double, ptr %i.lw, align 8, !tbaa !28
  %i.ly = fmul double %i.lf, %i.lx
  %i.lz = load double, ptr %i.lv, align 8, !tbaa !28
  %i.ma = fsub double %i.lz, %i.ly
  store double %i.ma, ptr %i.lv, align 8, !tbaa !28
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i8.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !28, !noalias !218
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.038.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.mb = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload113 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.038.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.mc = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.mb, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.mc, align 8
  %i.md = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.me = lshr exact i64 %i.md, 3
  %i.mf = and i64 %i.me, 1
  %i.mg = call i64 @llvm.smin.i64(i64 %i.mf, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.mh = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mg
  %i.mi = and i64 %i.mh, -2                       ; 3 uses
  %i.mj = add nsw i64 %i.mi, %i.mg                ; 5 uses
  %i.mk = icmp sgt i64 %i.mg, 0
  br i1 %i.mk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.ml = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !28
  %i.mm = fmul double %i.mb, %i.ml
  store double %i.mm, ptr %4, align 8, !tbaa !28
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi3EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mi, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mn = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockINSI_INS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = icmp slt i64 %i.mj, %.sroa.6.sroa.4.0.copyload
  br i1 %i.mo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mp = add i64 %i.mg, %i.mi
  %i.mq = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mp ; 3 uses
  %min.iters.check115 = icmp ult i64 %i.mq, 6
  %i.mr = sub i64 %.sroa.6.sroa.0.0.copyload113, %i.md
  %diff.check = icmp ugt i64 %i.mr, -32
  %or.cond = select i1 %min.iters.check115, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135, label %vector.ph116

vector.ph116:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec117 = and i64 %i.mq, -4                   ; 3 uses
  %i.ms = add i64 %i.mj, %n.vec117
  %broadcast.splatinsert118 = insertelement <2 x double> poison, double %i.mb, i64 0
  %broadcast.splat119 = shufflevector <2 x double> %broadcast.splatinsert118, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body120

vector.body120:                                   ; preds = %vector.body120, %vector.ph116
  %index121 = phi i64 [ 0, %vector.ph116 ], [ %index.next124, %vector.body120 ] ; 2 uses
  %i.mt = add i64 %i.mj, %index121                ; 2 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %4, i64 %i.mt ; 2 uses
  %i.mv = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.mt ; 2 uses
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 16
  %wide.load122 = load <2 x double>, ptr %i.mv, align 8, !tbaa !28
  %wide.load123 = load <2 x double>, ptr %i.mw, align 8, !tbaa !28
  %i.mx = fmul <2 x double> %broadcast.splat119, %wide.load122
  %i.my = fmul <2 x double> %broadcast.splat119, %wide.load123
  %i.mz = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  store <2 x double> %i.mx, ptr %i.mu, align 8, !tbaa !28
  store <2 x double> %i.my, ptr %i.mz, align 8, !tbaa !28
  %index.next124 = add nuw i64 %index121, 4       ; 2 uses
  %i.na = icmp eq i64 %index.next124, %n.vec117
  br i1 %i.na, label %middle.block125, label %vector.body120, !llvm.loop !200

middle.block125:                                  ; preds = %vector.body120
  %cmp.n = icmp eq i64 %i.mq, %n.vec117
  br i1 %cmp.n, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block125
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mj, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ms, %middle.block125 ] ; 4 uses
  %i.nb = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter160 = and i64 %i.nb, 3                 ; 2 uses
  %lcmp.mod161.not = icmp eq i64 %xtraiter160, 0
  br i1 %lcmp.mod161.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.ng, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ] ; 3 uses
  %prol.iter162 = phi i64 [ %prol.iter162.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ]
  %i.nc = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nd = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !28
  %i.nf = fmul double %i.mb, %i.ne
  store double %i.nf, ptr %i.nc, align 8, !tbaa !28
  %i.ng = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter162.next = add i64 %prol.iter162, 1   ; 2 uses
  %prol.iter162.cmp.not = icmp eq i64 %prol.iter162.next, %xtraiter160
  br i1 %prol.iter162.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !201

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader135 ], [ %i.ng, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.nh = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.ni = icmp ugt i64 %i.nh, -4
  br i1 %i.ni, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.nj = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nk = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nl = load double, ptr %i.nk, align 8, !tbaa !28
  %i.nm = fmul double %i.mb, %i.nl
  store double %i.nm, ptr %i.nj, align 8, !tbaa !28
  %i.nn = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.no = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nn
  %i.np = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nn
  %i.nq = load double, ptr %i.np, align 8, !tbaa !28
  %i.nr = fmul double %i.mb, %i.nq
  store double %i.nr, ptr %i.no, align 8, !tbaa !28
  %i.ns = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.nt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ns
  %i.nu = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ns
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !28
  %i.nw = fmul double %i.mb, %i.nv
  store double %i.nw, ptr %i.nt, align 8, !tbaa !28
  %i.nx = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ny = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nx
  %i.nz = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nx
  %i.oa = load double, ptr %i.nz, align 8, !tbaa !28
  %i.ob = fmul double %i.mb, %i.oa
  store double %i.ob, ptr %i.ny, align 8, !tbaa !28
  %i.oc = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.oc, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !202

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.oh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mg, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.od = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oe = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.of = load <2 x double>, ptr %i.oe, align 1, !tbaa !29
  %i.og = fmul <2 x double> %i.mn, %i.of
  store <2 x double> %i.og, ptr %i.od, align 16, !tbaa !29
  %i.oh = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.oi = icmp slt i64 %i.oh, %i.mj
  br i1 %i.oi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !203

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_INS1_IS3_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block125, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.oj, align 8
  %.sroa.818.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.818.sroa.6.88..sroa_idx, align 8
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.ok, align 8, !tbaa !76
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.ol, align 8, !tbaa !78
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.om, align 8, !tbaa !16
  %i.on = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.on, align 8, !tbaa !223
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.be, ptr %5, align 8, !tbaa !87
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %5, ptr %6, align 8, !tbaa !224
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.oo, align 8, !tbaa !225
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.op, align 8, !tbaa !91
  %i.oq = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.oq, align 8, !tbaa !226
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_INS4_IS6_Li3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERSY_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod170.not = icmp eq i64 %xtraiter168, 0
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
  %xtraiter165 = and i64 %i.j, 3                  ; 3 uses
  %i.l = icmp ult i64 %i.j, 4
  br i1 %i.l, label %.preheader.i.i.i.i.i.i.i.epil.preheader, label %.preheader.i.i.i.i.i.i.i.preheader.new

.preheader.i.i.i.i.i.i.i.preheader.new:           ; preds = %.preheader.i.i.i.i.i.i.i.preheader
  %unroll_iter168 = and i64 %i.j, 9223372036854775804
  br label %.preheader.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i:                         ; preds = %.preheader.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.preheader.new
  %.0810.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %i.ae, %.preheader.i.i.i.i.i.i.i ] ; 5 uses
  %niter169 = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.preheader.new ], [ %niter169.next.3, %.preheader.i.i.i.i.i.i.i ]
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
  %niter169.next.3 = add nuw nsw i64 %niter169, 4 ; 2 uses
  %niter169.ncmp.3 = icmp eq i64 %niter169.next.3, %unroll_iter168
  br i1 %niter169.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit136.unr-lcssa, label %.preheader.i.i.i.i.i.i.i, !llvm.loop !303

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.b
  br i1 %i.k, label %._crit_edge.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

._crit_edge.i.i.i.i.i.i.preheader:                ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %xtraiter170 = and i64 %i.j, 3                  ; 3 uses
  %i.af = icmp ult i64 %i.j, 4
  br i1 %i.af, label %._crit_edge.i.i.i.i.i.i.epil.preheader, label %._crit_edge.i.i.i.i.i.i.preheader.new

._crit_edge.i.i.i.i.i.i.preheader.new:            ; preds = %._crit_edge.i.i.i.i.i.i.preheader
  %unroll_iter174 = and i64 %i.j, 9223372036854775804
  br label %._crit_edge.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i:                          ; preds = %._crit_edge.i.i.i.i.i.i, %._crit_edge.i.i.i.i.i.i.preheader.new
  %.03453.i.i.i.i.i.i = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %i.ay, %._crit_edge.i.i.i.i.i.i ] ; 5 uses
  %niter175 = phi i64 [ 0, %._crit_edge.i.i.i.i.i.i.preheader.new ], [ %niter175.next.3, %._crit_edge.i.i.i.i.i.i ]
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
  %niter175.next.3 = add nuw nsw i64 %niter175, 4 ; 2 uses
  %niter175.ncmp.3 = icmp eq i64 %niter175.next.3, %unroll_iter174
  br i1 %niter175.ncmp.3, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !304

bb.d:                                             ; preds = %bb.a
  %i.az = fcmp une double %i.d, 0.000000e+00
  br i1 %i.az, label %bb.e, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

bb.e:                                             ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bb = load i64, ptr %i.ba, align 8, !tbaa !16 ; 32 uses
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
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader138, label %vector.memcheck

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader138: ; preds = %vector.body, %vector.memcheck, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader
  %.011.us12.us.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader ], [ %n.vec, %vector.body ] ; 6 uses
  %i.by = sub i64 %i.bb, %.011.us12.us.i.i.i.i.i.i.i.i.ph
  %.neg = add i64 %.011.us12.us.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter151 = and i64 %i.by, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.preheader138
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
  %i.ig = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.us13.us.i.i.i.i.i.i.i.i.1
  %i.ih = load double, ptr %.sroa.039.sroa.0.0.copyload, align 8, !tbaa !28
  %i.ii = load double, ptr %i.ig, align 8, !tbaa !28
  %i.ij = fmul double %i.ih, %i.ii
  %i.ik = getelementptr [8 x i8], ptr %3, i64 %i.if
  store double %i.ij, ptr %i.ik, align 8, !tbaa !28
  %i.il = add nuw nsw i64 %.011.us12.us.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond24.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.il, %i.bb
  br i1 %exitcond24.not.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i, !llvm.loop !315

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i, %.preheader.i.i.i.i.i.i.i.i.preheader.new
  %.011.i.i.i.i.i.i.i.i = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %i.iz, %.preheader.i.i.i.i.i.i.i.i ] ; 4 uses
  %niter = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader.new ], [ %niter.next.1, %.preheader.i.i.i.i.i.i.i.i ]
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 24
  %i.im = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i
  %i.in = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !29
  %i.io = load <2 x double>, ptr %i.im, align 1, !tbaa !29
  %i.ip = fmul <2 x double> %i.in, %i.io          ; 2 uses
  %shift133 = shufflevector <2 x double> %i.ip, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop134 = fadd <2 x double> %i.ip, %shift133
  %i.iq = extractelement <2 x double> %foldExtExtBinop134, i64 0
  %i.ir = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i
  store double %i.iq, ptr %i.ir, align 8, !tbaa !28
  %i.is = or disjoint i64 %.011.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.is, 24
  %i.it = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.1
  %i.iu = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !29
  %i.iv = load <2 x double>, ptr %i.it, align 1, !tbaa !29
  %i.iw = fmul <2 x double> %i.iu, %i.iv          ; 2 uses
  %shift133.1 = shufflevector <2 x double> %i.iw, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop134.1 = fadd <2 x double> %i.iw, %shift133.1
  %i.ix = extractelement <2 x double> %foldExtExtBinop134.1, i64 0
  %i.iy = getelementptr [8 x i8], ptr %3, i64 %i.is
  store double %i.ix, ptr %i.iy, align 8, !tbaa !28
  %i.iz = add nuw nsw i64 %.011.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit144.unr-lcssa, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !313

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit144.unr-lcssa: ; preds = %.preheader.i.i.i.i.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.epil.preheader

.preheader.i.i.i.i.i.i.i.i.epil.preheader:        ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit144.unr-lcssa, %.preheader.i.i.i.i.i.i.i.i.preheader
  %.011.i.i.i.i.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ], [ %i.iz, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit144.unr-lcssa ] ; 2 uses
  %lcmp.mod145 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod145)
  %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.epil = mul nuw nsw i64 %.011.i.i.i.i.i.i.i.i.epil.init, 24
  %i.ja = getelementptr inbounds nuw i8, ptr %i.be, i64 %.idx.i.i.i.i2.i.i.i.i.i.i.i.i.i.i.i.epil
  %i.jb = load <2 x double>, ptr %.sroa.039.sroa.0.0.copyload, align 1, !tbaa !29
  %i.jc = load <2 x double>, ptr %i.ja, align 1, !tbaa !29
  %i.jd = fmul <2 x double> %i.jb, %i.jc          ; 2 uses
  %shift133.epil = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop134.epil = fadd <2 x double> %i.jd, %shift133.epil
  %i.je = extractelement <2 x double> %foldExtExtBinop134.epil, i64 0
  %i.jf = getelementptr [8 x i8], ptr %3, i64 %.011.i.i.i.i.i.i.i.i.epil.init
  store double %i.je, ptr %i.jf, align 8, !tbaa !28
  br label %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit

_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %.preheader.i.i.i.i.i.i.i.i.epil.preheader, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit.loopexit144.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us29.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.i.us.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us14.us.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS4_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIddEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.preheader.i.i.i.i.i.i.i.i
  %min.iters.check104 = icmp ult i64 %i.bb, 20
  br i1 %min.iters.check104, label %.split.i.i.i.i.i.i.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit
  %i.jg = add nsw i64 %i.bb, -1
  %mul = tail call { i64, i1 } @llvm.umul.with.overflow.i64(i64 %i.jg, i64 24) ; 2 uses
  %mul.result = extractvalue { i64, i1 } %mul, 0
  %mul.overflow = extractvalue { i64, i1 } %mul, 1
  %i.jh = getelementptr i8, ptr %i.bd, i64 %mul.result
  %i.ji = icmp ult ptr %i.jh, %i.bd
  %i.jj = or i1 %i.ji, %mul.overflow
  br i1 %i.jj, label %.split.i.i.i.i.i.i.preheader, label %vector.memcheck97

vector.memcheck97:                                ; preds = %vector.scevcheck
  %i.jk = shl i64 %i.bb, 3
  %scevgep98 = getelementptr i8, ptr %3, i64 %i.jk
  %i.jl = mul i64 %i.bb, 24
  %i.jm = getelementptr i8, ptr %i.bd, i64 %i.jl
  %scevgep99 = getelementptr i8, ptr %i.jm, i64 -16
  %bound0100 = icmp ult ptr %3, %scevgep99
  %bound1101 = icmp ult ptr %i.bd, %scevgep98
  %found.conflict102 = and i1 %bound0100, %bound1101
  br i1 %found.conflict102, label %.split.i.i.i.i.i.i.preheader, label %vector.ph105

vector.ph105:                                     ; preds = %vector.memcheck97
  %n.vec106 = and i64 %i.bb, 9223372036854775804  ; 3 uses
  br label %vector.body107

vector.body107:                                   ; preds = %vector.body107, %vector.ph105
  %index108 = phi i64 [ 0, %vector.ph105 ], [ %index.next110, %vector.body107 ] ; 6 uses
  %i.jn = getelementptr [8 x i8], ptr %3, i64 %index108 ; 3 uses
  %i.jo = mul i64 %index108, 24
  %i.jp = mul i64 %index108, 24
  %i.jq = mul i64 %index108, 24
  %i.jr = mul i64 %index108, 24
  %i.js = getelementptr i8, ptr %i.bd, i64 %i.jo
  %i.jt = getelementptr i8, ptr %i.bd, i64 %i.jp
  %i.ju = getelementptr i8, ptr %i.jt, i64 24
  %i.jv = getelementptr i8, ptr %i.bd, i64 %i.jq
  %i.jw = getelementptr i8, ptr %i.jv, i64 48
  %i.jx = getelementptr i8, ptr %i.bd, i64 %i.jr
  %i.jy = getelementptr i8, ptr %i.jx, i64 72
  %i.jz = load double, ptr %i.js, align 8, !tbaa !28, !alias.scope !341
  %i.ka = load double, ptr %i.ju, align 8, !tbaa !28, !alias.scope !341
  %i.kb = insertelement <2 x double> poison, double %i.jz, i64 0
  %i.kc = insertelement <2 x double> %i.kb, double %i.ka, i64 1
  %i.kd = load double, ptr %i.jw, align 8, !tbaa !28, !alias.scope !341
  %i.ke = load double, ptr %i.jy, align 8, !tbaa !28, !alias.scope !341
  %i.kf = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.kg = insertelement <2 x double> %i.kf, double %i.ke, i64 1
  %i.kh = getelementptr i8, ptr %i.jn, i64 16     ; 2 uses
  %wide.load = load <2 x double>, ptr %i.jn, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  %wide.load109 = load <2 x double>, ptr %i.kh, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  %i.ki = fadd <2 x double> %i.kc, %wide.load
  %i.kj = fadd <2 x double> %i.kg, %wide.load109
  store <2 x double> %i.ki, ptr %i.jn, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  store <2 x double> %i.kj, ptr %i.kh, align 8, !tbaa !28, !alias.scope !342, !noalias !341
  %index.next110 = add nuw i64 %index108, 4       ; 2 uses
  %i.kk = icmp eq i64 %index.next110, %n.vec106
  br i1 %i.kk, label %middle.block111, label %vector.body107, !llvm.loop !319

middle.block111:                                  ; preds = %vector.body107
  %cmp.n = icmp eq i64 %i.bb, %n.vec106
  br i1 %cmp.n, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i.preheader

.split.i.i.i.i.i.i.preheader:                     ; preds = %vector.memcheck97, %vector.scevcheck, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit, %middle.block111
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck97 ], [ 0, %vector.scevcheck ], [ 0, %_ZN5Eigen7NoAliasINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS_10MatrixBaseEEaSINS_7ProductINS_9TransposeIKNS_5BlockIKNSC_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEELi0EEEEERS6_RKNS7_IT_EE.exit ], [ %n.vec106, %middle.block111 ] ; 5 uses
  %.neg176 = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  %xtraiter154 = and i64 %i.bb, 1
  %lcmp.mod155.not = icmp eq i64 %xtraiter154, 0
  br i1 %lcmp.mod155.not, label %.split.i.i.i.i.i.i.prol.loopexit, label %.split.i.i.i.i.i.i.prol

.split.i.i.i.i.i.i.prol:                          ; preds = %.split.i.i.i.i.i.i.preheader
  %i.kl = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i.ph ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8.prol = mul i64 %.09.i.i.i.i.i.i.ph, 24
  %i.km = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i8.prol
  %i.kn = load double, ptr %i.km, align 8, !tbaa !28
  %i.ko = load double, ptr %i.kl, align 8, !tbaa !28
  %i.kp = fadd double %i.kn, %i.ko
  store double %i.kp, ptr %i.kl, align 8, !tbaa !28
  %i.kq = or disjoint i64 %.09.i.i.i.i.i.i.ph, 1
  br label %.split.i.i.i.i.i.i.prol.loopexit

.split.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.split.i.i.i.i.i.i.prol, %.split.i.i.i.i.i.i.preheader
  %.09.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.ph, %.split.i.i.i.i.i.i.preheader ], [ %i.kq, %.split.i.i.i.i.i.i.prol ]
  %i.kr = icmp eq i64 %i.bb, %.neg176
  br i1 %i.kr, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i

.split.i.i.i.i.i.i:                               ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i
  %.09.i.i.i.i.i.i = phi i64 [ %i.ld, %.split.i.i.i.i.i.i ], [ %.09.i.i.i.i.i.i.unr, %.split.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ks = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8 = mul i64 %.09.i.i.i.i.i.i, 24
  %i.kt = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i8
  %i.ku = load double, ptr %i.kt, align 8, !tbaa !28
  %i.kv = load double, ptr %i.ks, align 8, !tbaa !28
  %i.kw = fadd double %i.ku, %i.kv
  store double %i.kw, ptr %i.ks, align 8, !tbaa !28
  %i.kx = add nuw nsw i64 %.09.i.i.i.i.i.i, 1     ; 2 uses
  %i.ky = getelementptr [8 x i8], ptr %3, i64 %i.kx ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i8.1 = mul i64 %i.kx, 24
  %i.kz = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i8.1
  %i.la = load double, ptr %i.kz, align 8, !tbaa !28
  %i.lb = load double, ptr %i.ky, align 8, !tbaa !28
  %i.lc = fadd double %i.la, %i.lb
  store double %i.lc, ptr %i.ky, align 8, !tbaa !28
  %i.ld = add nuw nsw i64 %.09.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ld, %i.bb
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit, label %.split.i.i.i.i.i.i, !llvm.loop !320

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit: ; preds = %.split.i.i.i.i.i.i.prol.loopexit, %.split.i.i.i.i.i.i, %middle.block111
  %i.le = load double, ptr %2, align 8, !tbaa !28, !noalias !343 ; 3 uses
  %xtraiter157 = and i64 %i.bb, 1
  %i.lf = icmp eq i64 %i.bb, 1
  br i1 %i.lf, label %.split.i.i.i.i.i.i9.epil.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new

_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new: ; preds = %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %unroll_iter160 = and i64 %i.bb, 9223372036854775806
  br label %.split.i.i.i.i.i.i9

.split.i.i.i.i.i.i9:                              ; preds = %.split.i.i.i.i.i.i9, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new
  %.09.i.i.i.i.i.i10 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %i.lt, %.split.i.i.i.i.i.i9 ] ; 4 uses
  %niter161 = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit.new ], [ %niter161.next.1, %.split.i.i.i.i.i.i9 ]
  %.idx.i.i.i.i.i.i.i.i.i11 = mul i64 %.09.i.i.i.i.i.i10, 24
  %i.lg = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i11 ; 2 uses
  %i.lh = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i10
  %i.li = load double, ptr %i.lh, align 8, !tbaa !28
  %i.lj = fmul double %i.le, %i.li
  %i.lk = load double, ptr %i.lg, align 8, !tbaa !28
  %i.ll = fsub double %i.lk, %i.lj
  store double %i.ll, ptr %i.lg, align 8, !tbaa !28
  %i.lm = or disjoint i64 %.09.i.i.i.i.i.i10, 1   ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i11.1 = mul i64 %i.lm, 24
  %i.ln = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i11.1 ; 2 uses
  %i.lo = getelementptr [8 x i8], ptr %3, i64 %i.lm
  %i.lp = load double, ptr %i.lo, align 8, !tbaa !28
  %i.lq = fmul double %i.le, %i.lp
  %i.lr = load double, ptr %i.ln, align 8, !tbaa !28
  %i.ls = fsub double %i.lr, %i.lq
  store double %i.ls, ptr %i.ln, align 8, !tbaa !28
  %i.lt = add nuw nsw i64 %.09.i.i.i.i.i.i10, 2   ; 2 uses
  %niter161.next.1 = add nuw nsw i64 %niter161, 2 ; 2 uses
  %niter161.ncmp.1 = icmp eq i64 %niter161.next.1, %unroll_iter160
  br i1 %niter161.ncmp.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, label %.split.i.i.i.i.i.i9, !llvm.loop !323

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa: ; preds = %.split.i.i.i.i.i.i9
  %lcmp.mod158.not = icmp eq i64 %xtraiter157, 0
  br i1 %lcmp.mod158.not, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, label %.split.i.i.i.i.i.i9.epil.preheader

.split.i.i.i.i.i.i9.epil.preheader:               ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit
  %.09.i.i.i.i.i.i10.epil.init = phi i64 [ 0, %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEERS6_RKNS0_IT_EE.exit ], [ %i.lt, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod159 = trunc i64 %i.bb to i1
  tail call void @llvm.assume(i1 %lcmp.mod159)
  %.idx.i.i.i.i.i.i.i.i.i11.epil = mul i64 %.09.i.i.i.i.i.i10.epil.init, 24
  %i.lu = getelementptr i8, ptr %i.bd, i64 %.idx.i.i.i.i.i.i.i.i.i11.epil ; 2 uses
  %i.lv = getelementptr [8 x i8], ptr %3, i64 %.09.i.i.i.i.i.i10.epil.init
  %i.lw = load double, ptr %i.lv, align 8, !tbaa !28
  %i.lx = fmul double %i.le, %i.lw
  %i.ly = load double, ptr %i.lu, align 8, !tbaa !28
  %i.lz = fsub double %i.ly, %i.lx
  store double %i.lz, ptr %i.lu, align 8, !tbaa !28
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit.unr-lcssa, %.split.i.i.i.i.i.i9.epil.preheader
  %.pre = load double, ptr %2, align 8, !tbaa !28, !noalias !344
  %.sroa.6.sroa.0.0.copyload.pre = load ptr, ptr %1, align 8
  br label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit, %bb.e
  %.sroa.6.sroa.0.0.copyload = phi ptr [ %.sroa.6.sroa.0.0.copyload.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %.sroa.039.sroa.0.0.copyload, %bb.e ] ; 9 uses
  %i.ma = phi double [ %.pre, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit.loopexit ], [ %i.d, %bb.e ] ; 8 uses
  %.sroa.6.sroa.0.0.copyload114 = ptrtoaddr ptr %.sroa.6.sroa.0.0.copyload to i64
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %.sroa.039.sroa.4.0..sroa_idx, align 8 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #15
  %i.mb = getelementptr inbounds nuw i8, ptr %4, i64 24
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ma, i64 0
  store i64 %.sroa.6.sroa.4.0.copyload, ptr %i.mb, align 8
  %i.mc = ptrtoint ptr %4 to i64                  ; 2 uses
  %i.md = lshr exact i64 %i.mc, 3
  %i.me = and i64 %i.md, 1
  %i.mf = call i64 @llvm.smin.i64(i64 %i.me, i64 %.sroa.6.sroa.4.0.copyload) ; 5 uses
  %i.mg = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mf
  %i.mh = and i64 %i.mg, -2                       ; 3 uses
  %i.mi = add nsw i64 %i.mh, %i.mf                ; 5 uses
  %i.mj = icmp sgt i64 %i.mf, 0
  br i1 %i.mj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.mk = load double, ptr %.sroa.6.sroa.0.0.copyload, align 8, !tbaa !28
  %i.ml = fmul double %i.ma, %i.mk
  store double %i.ml, ptr %4, align 8, !tbaa !28
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELi1ELin1ELb0EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIdEEKNS2_IdLi1ELin1ELi1ELi1ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.mh, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mm = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKS7_EEKNS_5BlockIKNSI_IKNS6_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mn = icmp slt i64 %i.mi, %.sroa.6.sroa.4.0.copyload
  br i1 %i.mn, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.mo = add i64 %i.mf, %i.mh
  %i.mp = sub i64 %.sroa.6.sroa.4.0.copyload, %i.mo ; 3 uses
  %min.iters.check116 = icmp ult i64 %i.mp, 6
  %i.mq = sub i64 %.sroa.6.sroa.0.0.copyload114, %i.mc
  %diff.check = icmp ugt i64 %i.mq, -32
  %or.cond = select i1 %min.iters.check116, i1 true, i1 %diff.check
  br i1 %or.cond, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137, label %vector.ph117

vector.ph117:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec118 = and i64 %i.mp, -4                   ; 3 uses
  %i.mr = add i64 %i.mi, %n.vec118
  %broadcast.splatinsert119 = insertelement <2 x double> poison, double %i.ma, i64 0
  %broadcast.splat120 = shufflevector <2 x double> %broadcast.splatinsert119, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph117
  %index122 = phi i64 [ 0, %vector.ph117 ], [ %index.next125, %vector.body121 ] ; 2 uses
  %i.ms = add i64 %i.mi, %index122                ; 2 uses
  %i.mt = getelementptr inbounds [8 x i8], ptr %4, i64 %i.ms ; 2 uses
  %i.mu = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.ms ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %i.mu, i64 16
  %wide.load123 = load <2 x double>, ptr %i.mu, align 8, !tbaa !28
  %wide.load124 = load <2 x double>, ptr %i.mv, align 8, !tbaa !28
  %i.mw = fmul <2 x double> %broadcast.splat120, %wide.load123
  %i.mx = fmul <2 x double> %broadcast.splat120, %wide.load124
  %i.my = getelementptr inbounds nuw i8, ptr %i.mt, i64 16
  store <2 x double> %i.mw, ptr %i.mt, align 8, !tbaa !28
  store <2 x double> %i.mx, ptr %i.my, align 8, !tbaa !28
  %index.next125 = add nuw i64 %index122, 4       ; 2 uses
  %i.mz = icmp eq i64 %index.next125, %n.vec118
  br i1 %i.mz, label %middle.block126, label %vector.body121, !llvm.loop !326

middle.block126:                                  ; preds = %vector.body121
  %cmp.n127 = icmp eq i64 %i.mp, %n.vec118
  br i1 %cmp.n127, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block126
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.mi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.mr, %middle.block126 ] ; 4 uses
  %i.na = sub i64 %.sroa.6.sroa.4.0.copyload, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter162 = and i64 %i.na, 3                 ; 2 uses
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.nf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137 ] ; 3 uses
  %prol.iter164 = phi i64 [ %prol.iter164.next, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137 ]
  %i.nb = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nc = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.nd = load double, ptr %i.nc, align 8, !tbaa !28
  %i.ne = fmul double %i.ma, %i.nd
  store double %i.ne, ptr %i.nb, align 8, !tbaa !28
  %i.nf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter164.next = add i64 %prol.iter164, 1   ; 2 uses
  %prol.iter164.cmp.not = icmp eq i64 %prol.iter164.next, %xtraiter162
  br i1 %prol.iter164.cmp.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, !llvm.loop !327

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader137 ], [ %i.nf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ng = sub i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.sroa.6.sroa.4.0.copyload
  %i.nh = icmp ugt i64 %i.ng, -4
  br i1 %i.nh, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ob, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.ni = getelementptr inbounds [8 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nj = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !28
  %i.nl = fmul double %i.ma, %i.nk
  store double %i.nl, ptr %i.ni, align 8, !tbaa !28
  %i.nm = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nm
  %i.no = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nm
  %i.np = load double, ptr %i.no, align 8, !tbaa !28
  %i.nq = fmul double %i.ma, %i.np
  store double %i.nq, ptr %i.nn, align 8, !tbaa !28
  %i.nr = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ns = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nr
  %i.nt = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nr
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !28
  %i.nv = fmul double %i.ma, %i.nu
  store double %i.nv, ptr %i.ns, align 8, !tbaa !28
  %i.nw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.nx = getelementptr inbounds [8 x i8], ptr %4, i64 %i.nw
  %i.ny = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.nw
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !28
  %i.oa = fmul double %i.ma, %i.nz
  store double %i.oa, ptr %i.nx, align 8, !tbaa !28
  %i.ob = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.ob, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !328

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.og, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.mf, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.oc = getelementptr inbounds [8 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.od = getelementptr inbounds [8 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oe = load <2 x double>, ptr %i.od, align 1, !tbaa !29
  %i.of = fmul <2 x double> %i.mm, %i.oe
  store <2 x double> %i.of, ptr %i.oc, align 16, !tbaa !29
  %i.og = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.oh = icmp slt i64 %i.og, %i.mi
  br i1 %i.oh, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !329

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIddEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIdEEKNS2_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS1_IKNS1_IKNS2_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS2_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block126, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.oi = getelementptr inbounds nuw i8, ptr %4, i64 32
  store ptr %3, ptr %i.oi, align 8
  %.sroa.819.sroa.6.88..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  store i64 %i.bb, ptr %.sroa.819.sroa.6.88..sroa_idx, align 8
  %i.oj = getelementptr inbounds nuw i8, ptr %4, i64 64
  store ptr %4, ptr %i.oj, align 8, !tbaa !76
  %i.ok = getelementptr inbounds nuw i8, ptr %4, i64 72
  store ptr %3, ptr %i.ok, align 8, !tbaa !104
  %i.ol = getelementptr inbounds nuw i8, ptr %4, i64 88
  store i64 %i.bb, ptr %i.ol, align 8, !tbaa !16
  %i.om = getelementptr inbounds nuw i8, ptr %4, i64 96
  store i64 1, ptr %i.om, align 8, !tbaa !349
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #15
  store ptr %i.be, ptr %5, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #15
  store ptr %5, ptr %6, align 8, !tbaa !350
  %i.on = getelementptr inbounds nuw i8, ptr %6, i64 8
  store ptr %4, ptr %i.on, align 8, !tbaa !351
  %i.oo = getelementptr inbounds nuw i8, ptr %6, i64 16
  store ptr %7, ptr %i.oo, align 8, !tbaa !91
  %i.op = getelementptr inbounds nuw i8, ptr %6, i64 24
  store ptr %8, ptr %i.op, align 8, !tbaa !352
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS4_IKNS4_IKNS5_IdLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENS_3MapINS5_IdLi1ELin1ELi1ELi1ELi1EEELi0ENS_6StrideILi0ELi0EEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS11_(ptr noundef nonnull align 8 dereferenceable(32) %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #15
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #15
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELin1ELb0EEEEmLERKd.exit.loopexit.unr-lcssa: ; preds = %._crit_edge.i.i.i.i.i.i
  %lcmp.mod172.not = icmp eq i64 %xtraiter170, 0
end_hunk_2
