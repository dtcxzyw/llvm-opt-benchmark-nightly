Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.3?download=true
inline.NumInlined: 35270
inline.NumDeleted: 18986
loop-unroll.NumCompletelyUnrolled: 49
loop-unroll.NumRuntimeUnrolled: 95
loop-unroll.NumUnrolled: 144
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSP_:bb.a
  %i.fz = fadd double %i.fs, %i.fy
  %i.ga = shl i64 %.01725.i.i.i.i.i.us.i25, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.ga, 64 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fj, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !11
  %i.gd = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !11
  %i.gf = fmul double %i.gc, %i.ge
  %i.gg = fadd double %i.fz, %i.gf
  %i.gh = shl i64 %.01725.i.i.i.i.i.us.i25, 5
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.gh, 96 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fj, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11
  %i.gk = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !11
  %i.gm = fmul double %i.gj, %i.gl
  %i.gn = fadd double %i.gg, %i.gm                ; 3 uses
  %i.go = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter126.next.3 = add i64 %niter126, 4         ; 2 uses
  %niter126.ncmp.3 = icmp eq i64 %niter126.next.3, %unroll_iter125
  br i1 %niter126.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !576

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod122.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.go, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fm, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod124)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gu, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter121 = phi i64 [ %epil.iter121.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = shl i64 %.01725.i.i.i.i.i.us.i25.epil, 5 ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fj, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !11
  %i.gr = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !11
  %i.gt = fmul double %i.gq, %i.gs
  %i.gu = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.gt ; 2 uses
  %i.gv = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !590

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gu, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %.05.us6.i23
  store double %.lcssa, ptr %i.gw, align 8, !tbaa !11
  %i.gx = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gx, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit32, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !578

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hv, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 6 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %.05.i20
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !11
  %i.ha = load double, ptr %i.du, align 8, !tbaa !11
  %i.hb = fmul double %i.gz, %i.ha
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %.05.i20
  store double %i.hb, ptr %i.hc, align 8, !tbaa !11
  %i.hd = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !11
  %i.hg = load double, ptr %i.du, align 8, !tbaa !11
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.hd
  store double %i.hh, ptr %i.hi, align 8, !tbaa !11
  %i.hj = add nsw i64 %.05.i20, 2                 ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !11
  %i.hm = load double, ptr %i.du, align 8, !tbaa !11
  %i.hn = fmul double %i.hl, %i.hm
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.hj
  store double %i.hn, ptr %i.ho, align 8, !tbaa !11
  %i.hp = add nsw i64 %.05.i20, 3                 ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !11
  %i.hs = load double, ptr %i.du, align 8, !tbaa !11
  %i.ht = fmul double %i.hr, %i.hs
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.hp
  store double %i.ht, ptr %i.hu, align 8, !tbaa !11
  %i.hv = add nsw i64 %.05.i20, 4                 ; 2 uses
  %exitcond.not.i21.3 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond.not.i21.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit32, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !591

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit32: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block97, %._crit_edge, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i31
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.037 = phi i64 [ %.0.i, %.lr.ph ], [ %i.jh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.hw = load ptr, ptr %0, align 8, !tbaa !596, !nonnull !15, !align !151
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !182
  %i.hy = load ptr, ptr %i.dm, align 8, !tbaa !597, !nonnull !15, !align !151 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 232
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !180 ; 5 uses
  %i.ib = icmp sgt i64 %i.ia, 0
  br i1 %i.ib, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 216
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 200
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !143
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %.037 ; 3 uses
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !159 ; 3 uses
  %xtraiter110 = and i64 %i.ia, 1
  %i.ih = icmp eq i64 %i.ia, 1
  br i1 %i.ih, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter115 = and i64 %i.ia, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.ii = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i.new ], [ %i.ix, %.lr.ph.i.i.i.i ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.iy, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter116 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter116.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.013.i.i.i.i, 5 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i.i.i.i.i
  %i.ik = load <2 x double>, ptr %i.ij, align 1, !tbaa !9
  %gep.i.i.i = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i
  %i.il = load double, ptr %gep.i.i.i, align 8, !tbaa !11
  %i.im = insertelement <2 x double> poison, double %i.il, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %i.ik, %i.in
  %i.ip = fadd <2 x double> %i.ii, %i.io
  %i.iq = shl i64 %.013.i.i.i.i, 5
  %.idx.i.i.i.i.i.1 = or disjoint i64 %i.iq, 32   ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i.i.i.i.i.1
  %i.is = load <2 x double>, ptr %i.ir, align 1, !tbaa !9
  %gep.i.i.i.1 = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.1
  %i.it = load double, ptr %gep.i.i.i.1, align 8, !tbaa !11
  %i.iu = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x double> %i.is, %i.iv
  %i.ix = fadd <2 x double> %i.ip, %i.iw          ; 3 uses
  %i.iy = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter116.next.1 = add nuw nsw i64 %niter116, 2 ; 2 uses
  %niter116.ncmp.1 = icmp eq i64 %niter116.next.1, %unroll_iter115
  br i1 %niter116.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !592

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod112.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod112.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i ], [ %i.ix, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.iy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i64 %i.ia to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %.idx.i.i.i.i.i.epil = shl nuw nsw i64 %.013.i.i.i.i.epil.init, 5 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i.i.i.i.i.epil
  %i.ja = load <2 x double>, ptr %i.iz, align 1, !tbaa !9
  %gep.i.i.i.epil = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.epil
  %i.jb = load double, ptr %gep.i.i.i.epil, align 8, !tbaa !11
  %i.jc = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fmul <2 x double> %i.ja, %i.jd
  %i.jf = fadd <2 x double> %.epil.init, %i.je
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.ix, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ], [ %i.jf, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %.037
  store <2 x double> %.0.i.i.i, ptr %i.jg, align 16, !tbaa !9
  %i.jh = add nsw i64 %.037, 2                    ; 2 uses
  %i.ji = icmp slt i64 %i.jh, %i.n
  br i1 %i.ji, label %bb.c, label %._crit_edge, !llvm.loop !593
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS12_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !632, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !124
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !152 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 48
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !143  ; 5 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !157, !noalias !633 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 8
  %i.r = shl i64 %i.j, 3                          ; 3 uses
  %i.s = getelementptr i8, ptr %i.p, i64 %i.r
  %scevgep.a = getelementptr i8, ptr %i.m, i64 %i.r
  %i.t = shl i64 %i.g, 5
  %i.u = getelementptr i8, ptr %i.p, i64 %i.t
  %i.v = getelementptr i8, ptr %i.u, i64 %i.r
  %scevgep71 = getelementptr i8, ptr %i.v, i64 -32
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep.a
  %bound1 = icmp ult ptr %i.m, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %i.p, %scevgep
  %bound173 = icmp ult ptr %i.q, %i.s
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 2 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 5             ; 2 uses
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load double, ptr %i.x, align 8, !tbaa !11, !alias.scope !634
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.y, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [8 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <2 x double>, ptr %i.aa, align 16, !tbaa !11, !alias.scope !635
  %wide.load75 = load <2 x double>, ptr %i.ab, align 16, !tbaa !11, !alias.scope !635
  %i.ac = fmul <2 x double> %wide.load, %broadcast.splat
  %i.ad = fmul <2 x double> %wide.load75, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.z, align 8, !tbaa !11, !alias.scope !636, !noalias !637
  %wide.load77 = load <2 x double>, ptr %i.ae, align 8, !tbaa !11, !alias.scope !636, !noalias !637
  %i.af = fsub <2 x double> %wide.load76, %i.ac
  %i.ag = fsub <2 x double> %wide.load77, %i.ad
  store <2 x double> %i.af, ptr %i.z, align 8, !tbaa !11, !alias.scope !636, !noalias !637
  store <2 x double> %i.ag, ptr %i.ae, align 8, !tbaa !11, !alias.scope !636, !noalias !637
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !616

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [8 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load double, ptr %i.aj, align 16, !tbaa !11
  %i.al = load double, ptr %i.x, align 8, !tbaa !11
  %i.am = fmul double %i.ak, %i.al
  %i.an = load double, ptr %i.ai, align 8, !tbaa !11
  %i.ao = fsub double %i.an, %i.am
  store double %i.ao, ptr %i.ai, align 8, !tbaa !11
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit, label %.preheader.i, !llvm.loop !617

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [8 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.au = load double, ptr %i.at, align 8, !tbaa !11
  %i.av = load double, ptr %i.x, align 8, !tbaa !11
  %i.aw = fmul double %i.au, %i.av
  %i.ax = load double, ptr %i.as, align 8, !tbaa !11
  %i.ay = fsub double %i.ax, %i.aw
  store double %i.ay, ptr %i.as, align 8, !tbaa !11
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [8 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.az
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !11
  %i.bd = load double, ptr %i.x, align 8, !tbaa !11
  %i.be = fmul double %i.bc, %i.bd
  %i.bf = load double, ptr %i.ba, align 8, !tbaa !11
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %i.ba, align 8, !tbaa !11
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !618

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 3
  %i.bo = and i64 %i.bn, 1
  %i.bp = tail call i64 @llvm.smin.i64(i64 %i.bo, i64 %i.bj)
  %i.bq = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.br = shl i64 %i.bj, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.en, %._crit_edge ] ; 4 uses
  %.03552 = phi i64 [ %i.bp, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bs = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bt = and i64 %i.bs, -2                       ; 2 uses
  %i.bu = add nsw i64 %i.bt, %.03552              ; 6 uses
  %i.bv = icmp sgt i64 %.03552, 0
  br i1 %i.bv, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.bw = load ptr, ptr %i.bq, align 8, !tbaa !638, !nonnull !15, !align !152 ; 2 uses
  %i.bx = getelementptr inbounds nuw i8, ptr %i.bw, i64 48
  %i.by = load ptr, ptr %i.bx, align 16, !tbaa !157, !noalias !639
  %.idx.i.i.i = shl i64 %.03453, 5                ; 2 uses
  %i.bz = getelementptr inbounds i8, ptr %i.by, i64 %.idx.i.i.i
  %i.ca = load ptr, ptr %0, align 8, !tbaa !640, !nonnull !15, !align !151
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !143
  %i.cc = getelementptr i8, ptr %i.cb, i64 %.idx.i.i.i ; 2 uses
  %i.cd = load double, ptr %i.bw, align 16, !tbaa !11
  %i.ce = load double, ptr %i.bz, align 8, !tbaa !11
  %i.cf = fmul double %i.cd, %i.ce
  %i.cg = load double, ptr %i.cc, align 8, !tbaa !11
  %i.ch = fsub double %i.cg, %i.cf
  store double %i.ch, ptr %i.cc, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.ci = icmp sgt i64 %i.bs, 1
  br i1 %i.ci, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = shl i64 %.03453, 5              ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cj = icmp slt i64 %i.bu, %i.bj
  br i1 %i.cj, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.ck = load ptr, ptr %0, align 8, !tbaa !640, !nonnull !15, !align !151
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !143 ; 3 uses
  %.idx.i.i.i38 = shl i64 %.03453, 5              ; 5 uses
  %i.cm = getelementptr i8, ptr %i.cl, i64 %.idx.i.i.i38 ; 2 uses
  %i.cn = load ptr, ptr %i.bq, align 8, !tbaa !638, !nonnull !15, !align !152 ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %i.cn, i64 48
  %i.cp = load ptr, ptr %i.co, align 16, !tbaa !157, !noalias !641 ; 2 uses
  %i.cq = getelementptr inbounds i8, ptr %i.cp, i64 %.idx.i.i.i38 ; 3 uses
  %i.cr = add i64 %.03552, %i.bt
  %i.cs = sub i64 %i.bj, %i.cr                    ; 3 uses
  %min.iters.check92 = icmp ult i64 %i.cs, 6
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph51
  %i.ct = shl i64 %i.bs, 3
  %i.cu = and i64 %i.ct, -16                      ; 2 uses
  %i.cv = shl i64 %.03552, 3                      ; 2 uses
  %i.cw = getelementptr i8, ptr %i.cl, i64 %.idx.i.i.i38
  %i.cx = getelementptr i8, ptr %i.cw, i64 %i.cu
  %i.cy = getelementptr i8, ptr %i.cx, i64 %i.cv  ; 2 uses
  %i.cz = getelementptr i8, ptr %i.cl, i64 %i.br
  %i.da = getelementptr i8, ptr %i.cz, i64 %.idx.i.i.i38 ; 2 uses
  %i.db = getelementptr i8, ptr %i.cn, i64 %i.cu
  %i.dc = getelementptr i8, ptr %i.db, i64 %i.cv
  %i.dd = getelementptr i8, ptr %i.cn, i64 %i.br
  %bound094 = icmp ult ptr %i.cy, %i.dd
  %bound195 = icmp ult ptr %i.dc, %i.da
  %found.conflict96 = and i1 %bound094, %bound195
  %i.de = getelementptr i8, ptr %i.cp, i64 %.idx.i.i.i38
  %i.df = getelementptr i8, ptr %i.de, i64 8
  %bound097 = icmp ult ptr %i.cy, %i.df
  %bound198 = icmp ult ptr %i.cq, %i.da
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %found.conflict96, %found.conflict99
  br i1 %conflict.rdx100, label %scalar.ph91.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck93
  %n.vec102 = and i64 %i.cs, -4                   ; 3 uses
  %i.dg = add i64 %i.bu, %n.vec102
  %i.dh = load double, ptr %i.cq, align 8, !tbaa !11, !alias.scope !642
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.dh, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body103 ] ; 2 uses
  %i.di = add i64 %i.bu, %index104                ; 2 uses
  %i.dj = getelementptr [8 x i8], ptr %i.cm, i64 %i.di ; 3 uses
  %i.dk = getelementptr inbounds [8 x i8], ptr %i.cn, i64 %i.di ; 2 uses
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dk, i64 16
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEELi3ELi0EE3runERSP_:bb.a
  %i.fz = fadd double %i.fs, %i.fy
  %i.ga = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.ga, 48 ; 2 uses
  %i.gb = getelementptr i8, ptr %i.fj, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !11
  %i.gd = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !11
  %i.gf = fmul double %i.gc, %i.ge
  %i.gg = fadd double %i.fz, %i.gf
  %i.gh = mul i64 %.01725.i.i.i.i.i.us.i25, 24
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.gh, 72 ; 2 uses
  %i.gi = getelementptr i8, ptr %i.fj, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gj = load double, ptr %i.gi, align 8, !tbaa !11
  %i.gk = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !11
  %i.gm = fmul double %i.gj, %i.gl
  %i.gn = fadd double %i.gg, %i.gm                ; 3 uses
  %i.go = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter126.next.3 = add i64 %niter126, 4         ; 2 uses
  %niter126.ncmp.3 = icmp eq i64 %niter126.next.3, %unroll_iter125
  br i1 %niter126.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !1001

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod122.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.go, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fm, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod124)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gv, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gu, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter121 = phi i64 [ %epil.iter121.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.us.i25.epil, 24 ; 2 uses
  %i.gp = getelementptr i8, ptr %i.fj, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !11
  %i.gr = getelementptr i8, ptr %i.du, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !11
  %i.gt = fmul double %i.gq, %i.gs
  %i.gu = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.gt ; 2 uses
  %i.gv = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !1015

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gu, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %.05.us6.i23
  store double %.lcssa, ptr %i.gw, align 8, !tbaa !11
  %i.gx = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gx, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit32, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !1003

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hv, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 6 uses
  %i.gy = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %.05.i20
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !11
  %i.ha = load double, ptr %i.du, align 8, !tbaa !11
  %i.hb = fmul double %i.gz, %i.ha
  %i.hc = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %.05.i20
  store double %i.hb, ptr %i.hc, align 8, !tbaa !11
  %i.hd = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.hd
  %i.hf = load double, ptr %i.he, align 8, !tbaa !11
  %i.hg = load double, ptr %i.du, align 8, !tbaa !11
  %i.hh = fmul double %i.hf, %i.hg
  %i.hi = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.hd
  store double %i.hh, ptr %i.hi, align 8, !tbaa !11
  %i.hj = add nsw i64 %.05.i20, 2                 ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.hj
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !11
  %i.hm = load double, ptr %i.du, align 8, !tbaa !11
  %i.hn = fmul double %i.hl, %i.hm
  %i.ho = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.hj
  store double %i.hn, ptr %i.ho, align 8, !tbaa !11
  %i.hp = add nsw i64 %.05.i20, 3                 ; 2 uses
  %i.hq = getelementptr inbounds [8 x i8], ptr %i.ds, i64 %i.hp
  %i.hr = load double, ptr %i.hq, align 8, !tbaa !11
  %i.hs = load double, ptr %i.du, align 8, !tbaa !11
  %i.ht = fmul double %i.hr, %i.hs
  %i.hu = getelementptr inbounds [8 x i8], ptr %i.dp, i64 %i.hp
  store double %i.ht, ptr %i.hu, align 8, !tbaa !11
  %i.hv = add nsw i64 %.05.i20, 4                 ; 2 uses
  %exitcond.not.i21.3 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond.not.i21.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit32, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !1016

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit32: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block97, %._crit_edge, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.preheader.i31
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.037 = phi i64 [ %.0.i, %.lr.ph ], [ %i.jh, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.hw = load ptr, ptr %0, align 8, !tbaa !1021, !nonnull !15, !align !151
  %i.hx = load ptr, ptr %i.hw, align 8, !tbaa !281
  %i.hy = load ptr, ptr %i.dm, align 8, !tbaa !1022, !nonnull !15, !align !151 ; 3 uses
  %i.hz = getelementptr inbounds nuw i8, ptr %i.hy, i64 232
  %i.ia = load i64, ptr %i.hz, align 8, !tbaa !279 ; 5 uses
  %i.ib = icmp sgt i64 %i.ia, 0
  br i1 %i.ib, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.ic = getelementptr inbounds nuw i8, ptr %i.hy, i64 216
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 200
  %i.ie = load ptr, ptr %i.id, align 8, !tbaa !246
  %i.if = getelementptr inbounds [8 x i8], ptr %i.ie, i64 %.037 ; 3 uses
  %i.ig = load ptr, ptr %i.ic, align 8, !tbaa !258 ; 3 uses
  %xtraiter110 = and i64 %i.ia, 1
  %i.ih = icmp eq i64 %i.ia, 1
  br i1 %i.ih, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter115 = and i64 %i.ia, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.ii = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i.new ], [ %i.ix, %.lr.ph.i.i.i.i ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.iy, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter116 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter116.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.013.i.i.i.i, 24 ; 2 uses
  %i.ij = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i.i.i.i.i
  %i.ik = load <2 x double>, ptr %i.ij, align 1, !tbaa !9
  %gep.i.i.i = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i
  %i.il = load double, ptr %gep.i.i.i, align 8, !tbaa !11
  %i.im = insertelement <2 x double> poison, double %i.il, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = fmul <2 x double> %i.ik, %i.in
  %i.ip = fadd <2 x double> %i.ii, %i.io
  %i.iq = mul nuw i64 %.013.i.i.i.i, 24
  %.idx.i.i.i.i.i.1 = add nuw i64 %i.iq, 24       ; 2 uses
  %i.ir = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i.i.i.i.i.1
  %i.is = load <2 x double>, ptr %i.ir, align 1, !tbaa !9
  %gep.i.i.i.1 = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.1
  %i.it = load double, ptr %gep.i.i.i.1, align 8, !tbaa !11
  %i.iu = insertelement <2 x double> poison, double %i.it, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = fmul <2 x double> %i.is, %i.iv
  %i.ix = fadd <2 x double> %i.ip, %i.iw          ; 3 uses
  %i.iy = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter116.next.1 = add nuw nsw i64 %niter116, 2 ; 2 uses
  %niter116.ncmp.1 = icmp eq i64 %niter116.next.1, %unroll_iter115
  br i1 %niter116.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1017

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod112.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod112.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i ], [ %i.ix, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.iy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i64 %i.ia to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %.idx.i.i.i.i.i.epil = mul nuw nsw i64 %.013.i.i.i.i.epil.init, 24 ; 2 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.if, i64 %.idx.i.i.i.i.i.epil
  %i.ja = load <2 x double>, ptr %i.iz, align 1, !tbaa !9
  %gep.i.i.i.epil = getelementptr i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.epil
  %i.jb = load double, ptr %gep.i.i.i.epil, align 8, !tbaa !11
  %i.jc = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jd = shufflevector <2 x double> %i.jc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.je = fmul <2 x double> %i.ja, %i.jd
  %i.jf = fadd <2 x double> %.epil.init, %i.je
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.ix, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ], [ %i.jf, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.hx, i64 %.037
  store <2 x double> %.0.i.i.i, ptr %i.jg, align 16, !tbaa !9
  %i.jh = add nsw i64 %.037, 2                    ; 2 uses
  %i.ji = icmp slt i64 %i.jh, %i.n
  br i1 %i.ji, label %bb.c, label %._crit_edge, !llvm.loop !1018
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi4ELi0EE3runERS12_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1057, !nonnull !15, !align !151 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !230
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 7
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !151 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !151
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !246  ; 5 uses
  %i.q = load ptr, ptr %i.n, align 8, !tbaa !256, !noalias !1058 ; 3 uses
  %scevgep = getelementptr i8, ptr %i.q, i64 8
  %1 = shl i64 %i.j, 3                            ; 3 uses
  %scevgep.a = getelementptr i8, ptr %i.p, i64 %1
  %scevgep72 = getelementptr i8, ptr %i.m, i64 %1
  %2 = mul i64 %i.g, 24
  %i.r = getelementptr i8, ptr %i.p, i64 %2
  %i.s = getelementptr i8, ptr %i.r, i64 %1
  %scevgep71 = getelementptr i8, ptr %i.s, i64 -24
  %min.iters.check = icmp ult i64 %i.j, 4
  %bound0 = icmp ult ptr %i.p, %scevgep72
  %bound1 = icmp ult ptr %i.m, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %i.p, %scevgep
  %bound173 = icmp ult ptr %i.q, %scevgep.a
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  %n.vec = and i64 %i.j, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ao, %._crit_edge.i ] ; 2 uses
  %.idx.i.i.i.i = mul i64 %.0810.i, 24            ; 2 uses
  %i.t = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.u = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.v = load double, ptr %i.u, align 8, !tbaa !11, !alias.scope !1059
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.v, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.w = getelementptr [8 x i8], ptr %i.t, i64 %index ; 3 uses
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 16
  %wide.load = load <2 x double>, ptr %i.x, align 8, !tbaa !11, !alias.scope !1060
  %wide.load75 = load <2 x double>, ptr %i.y, align 8, !tbaa !11, !alias.scope !1060
  %i.z = fmul <2 x double> %wide.load, %broadcast.splat
  %i.aa = fmul <2 x double> %wide.load75, %broadcast.splat
  %i.ab = getelementptr i8, ptr %i.w, i64 16      ; 2 uses
  %wide.load76 = load <2 x double>, ptr %i.w, align 8, !tbaa !11, !alias.scope !1061, !noalias !1062
  %wide.load77 = load <2 x double>, ptr %i.ab, align 8, !tbaa !11, !alias.scope !1061, !noalias !1062
  %i.ac = fsub <2 x double> %wide.load76, %i.z
  %i.ad = fsub <2 x double> %wide.load77, %i.aa
  store <2 x double> %i.ac, ptr %i.w, align 8, !tbaa !11, !alias.scope !1061, !noalias !1062
  store <2 x double> %i.ad, ptr %i.ab, align 8, !tbaa !11, !alias.scope !1061, !noalias !1062
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ae = icmp eq i64 %index.next, %n.vec
  br i1 %i.ae, label %middle.block, label %vector.body, !llvm.loop !1041

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.af = getelementptr [8 x i8], ptr %i.t, i64 %.09.i.ph ; 2 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !11
  %i.ai = load double, ptr %i.u, align 8, !tbaa !11
  %i.aj = fmul double %i.ah, %i.ai
  %i.ak = load double, ptr %i.af, align 8, !tbaa !11
  %i.al = fsub double %i.ak, %i.aj
  store double %i.al, ptr %i.af, align 8, !tbaa !11
  %i.am = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.am, %scalar.ph.prol ]
  %i.an = icmp eq i64 %i.j, %.neg
  br i1 %i.an, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ao = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ao, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit, label %.preheader.i, !llvm.loop !1042

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.be, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.ap = getelementptr [8 x i8], ptr %i.t, i64 %.09.i ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %.09.i
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !11
  %i.as = load double, ptr %i.u, align 8, !tbaa !11
  %i.at = fmul double %i.ar, %i.as
  %i.au = load double, ptr %i.ap, align 8, !tbaa !11
  %i.av = fsub double %i.au, %i.at
  store double %i.av, ptr %i.ap, align 8, !tbaa !11
  %i.aw = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ax = getelementptr [8 x i8], ptr %i.t, i64 %i.aw ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.aw
  %i.az = load double, ptr %i.ay, align 8, !tbaa !11
  %i.ba = load double, ptr %i.u, align 8, !tbaa !11
  %i.bb = fmul double %i.az, %i.ba
  %i.bc = load double, ptr %i.ax, align 8, !tbaa !11
  %i.bd = fsub double %i.bc, %i.bb
  store double %i.bd, ptr %i.ax, align 8, !tbaa !11
  %i.be = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.be, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !1043

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bg = load i64, ptr %i.bf, align 8, !tbaa !107 ; 7 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bi = load i64, ptr %i.bh, align 8, !tbaa !107 ; 2 uses
  %i.bj = icmp sgt i64 %i.bi, 0
  br i1 %i.bj, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS5_IdLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi0ELi0EE3runERS12_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit
  %i.bk = lshr exact i64 %i.d, 3
  %i.bl = and i64 %i.bk, 1
  %i.bm = tail call i64 @llvm.smin.i64(i64 %i.bl, i64 %i.bg)
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bo = shl i64 %i.bg, 3                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.el, %._crit_edge ] ; 4 uses
  %.03552 = phi i64 [ %i.bm, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 7 uses
  %i.bp = sub i64 %i.bg, %.03552                  ; 3 uses
  %i.bq = and i64 %i.bp, -2                       ; 2 uses
  %i.br = add nsw i64 %i.bq, %.03552              ; 6 uses
  %i.bs = icmp sgt i64 %.03552, 0
  br i1 %i.bs, label %.preheader45.loopexit, label %.preheader45

.preheader45.loopexit:                            ; preds = %bb.c
  %i.bt = load ptr, ptr %i.bn, align 8, !tbaa !1063, !nonnull !15, !align !151 ; 2 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 32
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !256, !noalias !1064
  %.idx.i.i.i = mul i64 %.03453, 24               ; 2 uses
  %i.bw = getelementptr inbounds i8, ptr %i.bv, i64 %.idx.i.i.i
  %i.bx = load ptr, ptr %0, align 8, !tbaa !1065, !nonnull !15, !align !151
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !246
  %i.bz = getelementptr i8, ptr %i.by, i64 %.idx.i.i.i ; 2 uses
  %i.ca = load double, ptr %i.bt, align 8, !tbaa !11
  %i.cb = load double, ptr %i.bw, align 8, !tbaa !11
  %i.cc = fmul double %i.ca, %i.cb
  %i.cd = load double, ptr %i.bz, align 8, !tbaa !11
  %i.ce = fsub double %i.cd, %i.cc
  store double %i.ce, ptr %i.bz, align 8, !tbaa !11
  br label %.preheader45

.preheader45:                                     ; preds = %.preheader45.loopexit, %bb.c
  %i.cf = icmp sgt i64 %i.bp, 1
  br i1 %i.cf, label %.lr.ph49, label %.preheader

.lr.ph49:                                         ; preds = %.preheader45
  %.idx.i.i.i37 = mul i64 %.03453, 24             ; 2 uses
  br label %bb.d

.preheader:                                       ; preds = %bb.d, %.preheader45
  %i.cg = icmp slt i64 %i.br, %i.bg
  br i1 %i.cg, label %.lr.ph51, label %._crit_edge

.lr.ph51:                                         ; preds = %.preheader
  %i.ch = load ptr, ptr %0, align 8, !tbaa !1065, !nonnull !15, !align !151
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !246 ; 3 uses
  %.idx.i.i.i38 = mul i64 %.03453, 24             ; 5 uses
  %i.cj = getelementptr i8, ptr %i.ci, i64 %.idx.i.i.i38 ; 2 uses
  %i.ck = load ptr, ptr %i.bn, align 8, !tbaa !1063, !nonnull !15, !align !151 ; 5 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !256, !noalias !1066 ; 2 uses
  %i.cn = getelementptr inbounds i8, ptr %i.cm, i64 %.idx.i.i.i38 ; 3 uses
  %i.co = add i64 %.03552, %i.bq
  %i.cp = sub i64 %i.bg, %i.co                    ; 3 uses
  %min.iters.check92 = icmp ult i64 %i.cp, 6
  br i1 %min.iters.check92, label %scalar.ph91.preheader, label %vector.memcheck93

vector.memcheck93:                                ; preds = %.lr.ph51
  %i.cq = shl i64 %i.bp, 3
  %i.cr = and i64 %i.cq, -16                      ; 2 uses
  %i.cs = shl i64 %.03552, 3                      ; 2 uses
  %i.ct = getelementptr i8, ptr %i.ci, i64 %.idx.i.i.i38
  %i.cu = getelementptr i8, ptr %i.ct, i64 %i.cr
  %i.cv = getelementptr i8, ptr %i.cu, i64 %i.cs  ; 2 uses
  %i.cw = getelementptr i8, ptr %i.ci, i64 %i.bo
  %i.cx = getelementptr i8, ptr %i.cw, i64 %.idx.i.i.i38 ; 2 uses
  %i.cy = getelementptr i8, ptr %i.ck, i64 %i.cr
  %i.cz = getelementptr i8, ptr %i.cy, i64 %i.cs
  %i.da = getelementptr i8, ptr %i.ck, i64 %i.bo
  %bound094 = icmp ult ptr %i.cv, %i.da
  %bound195 = icmp ult ptr %i.cz, %i.cx
  %found.conflict96 = and i1 %bound094, %bound195
  %i.db = getelementptr i8, ptr %i.cm, i64 %.idx.i.i.i38
  %i.dc = getelementptr i8, ptr %i.db, i64 8
  %bound097 = icmp ult ptr %i.cv, %i.dc
  %bound198 = icmp ult ptr %i.cn, %i.cx
  %found.conflict99 = and i1 %bound097, %bound198
  %conflict.rdx100 = or i1 %found.conflict96, %found.conflict99
  br i1 %conflict.rdx100, label %scalar.ph91.preheader, label %vector.ph101

vector.ph101:                                     ; preds = %vector.memcheck93
  %n.vec102 = and i64 %i.cp, -4                   ; 3 uses
  %i.dd = add i64 %i.br, %n.vec102
  %i.de = load double, ptr %i.cn, align 8, !tbaa !11, !alias.scope !1067
  %broadcast.splatinsert107 = insertelement <2 x double> poison, double %i.de, i64 0
  %broadcast.splat108 = shufflevector <2 x double> %broadcast.splatinsert107, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body103

vector.body103:                                   ; preds = %vector.body103, %vector.ph101
  %index104 = phi i64 [ 0, %vector.ph101 ], [ %index.next111, %vector.body103 ] ; 2 uses
  %i.df = add i64 %i.br, %index104                ; 2 uses
  %i.dg = getelementptr [8 x i8], ptr %i.cj, i64 %i.df ; 3 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %i.ck, i64 %i.df ; 2 uses
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
end_hunk_1
