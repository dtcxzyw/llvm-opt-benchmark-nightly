Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/min_quad_with_fixed.9?download=true
inline.NumInlined: 35068
inline.NumDeleted: 18952
loop-unroll.NumCompletelyUnrolled: 51
loop-unroll.NumRuntimeUnrolled: 102
loop-unroll.NumUnrolled: 153
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSP_:bb.a
  %i.ga = fadd float %i.ft, %i.fz
  %i.gb = shl i64 %.01725.i.i.i.i.i.us.i25, 4
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.2 = add i64 %i.gb, 32 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.fk, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.gd = load float, ptr %i.gc, align 4, !tbaa !10
  %i.ge = getelementptr i8, ptr %i.dv, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.2
  %i.gf = load float, ptr %i.ge, align 4, !tbaa !10
  %i.gg = fmul float %i.gd, %i.gf
  %i.gh = fadd float %i.ga, %i.gg
  %i.gi = shl i64 %.01725.i.i.i.i.i.us.i25, 4
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.3 = add i64 %i.gi, 48 ; 2 uses
  %i.gj = getelementptr i8, ptr %i.fk, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gk = load float, ptr %i.gj, align 4, !tbaa !10
  %i.gl = getelementptr i8, ptr %i.dv, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.3
  %i.gm = load float, ptr %i.gl, align 4, !tbaa !10
  %i.gn = fmul float %i.gk, %i.gm
  %i.go = fadd float %i.gh, %i.gn                 ; 3 uses
  %i.gp = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter126.next.3 = add i64 %niter126, 4         ; 2 uses
  %niter126.ncmp.3 = icmp eq i64 %niter126.next.3, %unroll_iter125
  br i1 %niter126.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !657

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod122.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gp, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi float [ %i.fn, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.go, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod124)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gw, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 2 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi float [ %i.gv, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter121 = phi i64 [ %epil.iter121.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = shl i64 %.01725.i.i.i.i.i.us.i25.epil, 4 ; 2 uses
  %i.gq = getelementptr i8, ptr %i.fk, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gr = load float, ptr %i.gq, align 4, !tbaa !10
  %i.gs = getelementptr i8, ptr %i.dv, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.gt = load float, ptr %i.gs, align 4, !tbaa !10
  %i.gu = fmul float %i.gr, %i.gt
  %i.gv = fadd float %.02324.i.i.i.i.i.us.i26.epil, %i.gu ; 2 uses
  %i.gw = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter121.next = add i64 %epil.iter121, 1   ; 2 uses
  %epil.iter121.cmp.not = icmp eq i64 %epil.iter121.next, %xtraiter120
  br i1 %epil.iter121.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !671

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi float [ %i.go, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gv, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.05.us6.i23
  store float %.lcssa, ptr %i.gx, align 4, !tbaa !10
  %i.gy = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gy, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !659

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hw, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 6 uses
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %.05.i20
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !10
  %i.hb = load float, ptr %i.dv, align 4, !tbaa !10
  %i.hc = fmul float %i.ha, %i.hb
  %i.hd = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %.05.i20
  store float %i.hc, ptr %i.hd, align 4, !tbaa !10
  %i.he = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.hf = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.he
  %i.hg = load float, ptr %i.hf, align 4, !tbaa !10
  %i.hh = load float, ptr %i.dv, align 4, !tbaa !10
  %i.hi = fmul float %i.hg, %i.hh
  %i.hj = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.he
  store float %i.hi, ptr %i.hj, align 4, !tbaa !10
  %i.hk = add nsw i64 %.05.i20, 2                 ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !10
  %i.hn = load float, ptr %i.dv, align 4, !tbaa !10
  %i.ho = fmul float %i.hm, %i.hn
  %i.hp = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.hk
  store float %i.ho, ptr %i.hp, align 4, !tbaa !10
  %i.hq = add nsw i64 %.05.i20, 3                 ; 2 uses
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.dt, i64 %i.hq
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !10
  %i.ht = load float, ptr %i.dv, align 4, !tbaa !10
  %i.hu = fmul float %i.hs, %i.ht
  %i.hv = getelementptr inbounds [4 x i8], ptr %i.dq, i64 %i.hq
  store float %i.hu, ptr %i.hv, align 4, !tbaa !10
  %i.hw = add nsw i64 %.05.i20, 4                 ; 2 uses
  %exitcond.not.i21.3 = icmp eq i64 %i.hw, %i.d
  br i1 %exitcond.not.i21.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !672

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit32: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block97, %._crit_edge, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i31
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit
  %.037 = phi i64 [ %.0.i, %.lr.ph ], [ %i.ji, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit ] ; 3 uses
  %i.hx = load ptr, ptr %0, align 8, !tbaa !677, !nonnull !15, !align !182
  %i.hy = load ptr, ptr %i.hx, align 8, !tbaa !210
  %i.hz = load ptr, ptr %i.dn, align 8, !tbaa !678, !nonnull !15, !align !182 ; 3 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 232
  %i.ib = load i64, ptr %i.ia, align 8, !tbaa !208 ; 5 uses
  %i.ic = icmp sgt i64 %i.ib, 0
  br i1 %i.ic, label %.lr.ph.i.preheader.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit

.lr.ph.i.preheader.i.i.i:                         ; preds = %bb.c
  %i.id = getelementptr inbounds nuw i8, ptr %i.hz, i64 216
  %i.ie = getelementptr inbounds nuw i8, ptr %i.hz, i64 200
  %i.if = load ptr, ptr %i.ie, align 8, !tbaa !154
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.if, i64 %.037 ; 3 uses
  %i.ih = load ptr, ptr %i.id, align 8, !tbaa !191 ; 3 uses
  %xtraiter110 = and i64 %i.ib, 1
  %i.ii = icmp eq i64 %i.ib, 1
  br i1 %i.ii, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.preheader.i.i.i.new

.lr.ph.i.preheader.i.i.i.new:                     ; preds = %.lr.ph.i.preheader.i.i.i
  %unroll_iter115 = and i64 %i.ib, 9223372036854775806
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.preheader.i.i.i.new
  %i.ij = phi <4 x float> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i.new ], [ %i.iy, %.lr.ph.i.i.i.i ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %i.iz, %.lr.ph.i.i.i.i ] ; 3 uses
  %niter116 = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i.new ], [ %niter116.next.1, %.lr.ph.i.i.i.i ]
  %.idx.i.i.i.i.i = shl nuw nsw i64 %.013.i.i.i.i, 4 ; 2 uses
  %i.ik = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.i.i.i.i
  %i.il = load <4 x float>, ptr %i.ik, align 1, !tbaa !11
  %gep.i.i.i = getelementptr i8, ptr %i.ih, i64 %.idx.i.i.i.i.i
  %i.im = load float, ptr %gep.i.i.i, align 4, !tbaa !10
  %i.in = insertelement <4 x float> poison, float %i.im, i64 0
  %i.io = shufflevector <4 x float> %i.in, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ip = fmul <4 x float> %i.il, %i.io
  %i.iq = fadd <4 x float> %i.ij, %i.ip
  %i.ir = shl i64 %.013.i.i.i.i, 4
  %.idx.i.i.i.i.i.1 = or disjoint i64 %i.ir, 16   ; 2 uses
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.1
  %i.it = load <4 x float>, ptr %i.is, align 1, !tbaa !11
  %gep.i.i.i.1 = getelementptr i8, ptr %i.ih, i64 %.idx.i.i.i.i.i.1
  %i.iu = load float, ptr %gep.i.i.i.1, align 4, !tbaa !10
  %i.iv = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.iw = shufflevector <4 x float> %i.iv, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ix = fmul <4 x float> %i.it, %i.iw
  %i.iy = fadd <4 x float> %i.iq, %i.ix           ; 3 uses
  %i.iz = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter116.next.1 = add nuw nsw i64 %niter116, 2 ; 2 uses
  %niter116.ncmp.1 = icmp eq i64 %niter116.next.1, %unroll_iter115
  br i1 %niter116.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !673

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod112.not = icmp eq i64 %xtraiter110, 0
  br i1 %lcmp.mod112.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.preheader.i.i.i
  %.epil.init = phi <4 x float> [ zeroinitializer, %.lr.ph.i.preheader.i.i.i ], [ %i.iy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.preheader.i.i.i ], [ %i.iz, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa ]
  %lcmp.mod114 = trunc i64 %i.ib to i1
  tail call void @llvm.assume(i1 %lcmp.mod114)
  %.idx.i.i.i.i.i.epil = shl nuw nsw i64 %.013.i.i.i.i.epil.init, 4 ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ig, i64 %.idx.i.i.i.i.i.epil
  %i.jb = load <4 x float>, ptr %i.ja, align 1, !tbaa !11
  %gep.i.i.i.epil = getelementptr i8, ptr %i.ih, i64 %.idx.i.i.i.i.i.epil
  %i.jc = load float, ptr %gep.i.i.i.epil, align 4, !tbaa !10
  %i.jd = insertelement <4 x float> poison, float %i.jc, i64 0
  %i.je = shufflevector <4 x float> %i.jd, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jf = fmul <4 x float> %i.jb, %i.je
  %i.jg = fadd <4 x float> %.epil.init, %i.jf
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit: ; preds = %.lr.ph.i.i.i.i.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <4 x float> [ zeroinitializer, %bb.c ], [ %i.iy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi4ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi4ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE12assignPacketILi16ELi0EDv4_fEEvl.exit.loopexit.unr-lcssa ], [ %i.jg, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.jh = getelementptr inbounds [4 x i8], ptr %i.hy, i64 %.037
  store <4 x float> %.0.i.i.i, ptr %i.jh, align 16, !tbaa !11
  %i.ji = add nsw i64 %.037, 4                    ; 2 uses
  %i.jj = icmp slt i64 %i.ji, %i.o
  br i1 %i.jj, label %bb.c, label %._crit_edge, !llvm.loop !674
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi4ELi0EE3runERS12_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !719, !nonnull !15, !align !182 ; 5 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !147
  %i.d = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.e = and i64 %i.d, 3
  %.not = icmp eq i64 %i.e, 0
  br i1 %.not, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 3 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.lr.ph.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERS12_.exit

.preheader.lr.ph.i:                               ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !107  ; 8 uses
  %i.k = icmp sgt i64 %i.j, 0
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !nonnull !15, !align !184 ; 7 uses
  br i1 %i.k, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERS12_.exit

.preheader.lr.ph.split.i:                         ; preds = %.preheader.lr.ph.i
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 32
  %i.o = load ptr, ptr %0, align 8, !nonnull !15, !align !182
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !154  ; 4 uses
  %i.q = load ptr, ptr %i.n, align 16, !tbaa !189, !noalias !720 ; 3 uses
  %i.r = shl i64 %i.g, 4                          ; 2 uses
  %i.s = getelementptr i8, ptr %i.q, i64 %i.r
  %scevgep.a = getelementptr i8, ptr %i.s, i64 -12
  %i.t = shl i64 %i.j, 2                          ; 2 uses
  %scevgep70 = getelementptr i8, ptr %i.m, i64 %i.t
  %i.u = getelementptr i8, ptr %i.p, i64 %i.r
  %i.v = getelementptr i8, ptr %i.u, i64 %i.t
  %scevgep71 = getelementptr i8, ptr %i.v, i64 -16 ; 2 uses
  %min.iters.check = icmp ult i64 %i.j, 8
  %bound0 = icmp ult ptr %i.p, %scevgep70
  %bound1 = icmp ult ptr %i.m, %scevgep71
  %found.conflict = and i1 %bound0, %bound1
  %bound072 = icmp ult ptr %i.p, %scevgep.a
  %bound173 = icmp ult ptr %i.q, %scevgep71
  %found.conflict74 = and i1 %bound072, %bound173
  %conflict.rdx = or i1 %found.conflict, %found.conflict74
  %n.vec = and i64 %i.j, 9223372036854775800      ; 3 uses
  %cmp.n = icmp eq i64 %i.j, %n.vec
  %xtraiter = and i64 %i.j, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i

.preheader.i:                                     ; preds = %._crit_edge.i, %.preheader.lr.ph.split.i
  %.0810.i = phi i64 [ 0, %.preheader.lr.ph.split.i ], [ %i.ar, %._crit_edge.i ] ; 2 uses
  %.idx.i.i.i.i = shl i64 %.0810.i, 4             ; 2 uses
  %i.w = getelementptr i8, ptr %i.p, i64 %.idx.i.i.i.i ; 4 uses
  %i.x = getelementptr inbounds i8, ptr %i.q, i64 %.idx.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i
  %i.y = load float, ptr %i.x, align 4, !tbaa !10, !alias.scope !721
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.y, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.z = getelementptr [4 x i8], ptr %i.w, i64 %index ; 3 uses
  %i.aa = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  %wide.load = load <4 x float>, ptr %i.aa, align 16, !tbaa !10, !alias.scope !722
  %wide.load75 = load <4 x float>, ptr %i.ab, align 16, !tbaa !10, !alias.scope !722
  %i.ac = fmul <4 x float> %wide.load, %broadcast.splat
  %i.ad = fmul <4 x float> %wide.load75, %broadcast.splat
  %i.ae = getelementptr i8, ptr %i.z, i64 16      ; 2 uses
  %wide.load76 = load <4 x float>, ptr %i.z, align 4, !tbaa !10, !alias.scope !723, !noalias !724
  %wide.load77 = load <4 x float>, ptr %i.ae, align 4, !tbaa !10, !alias.scope !723, !noalias !724
  %i.af = fsub <4 x float> %wide.load76, %i.ac
  %i.ag = fsub <4 x float> %wide.load77, %i.ad
  store <4 x float> %i.af, ptr %i.z, align 4, !tbaa !10, !alias.scope !723, !noalias !724
  store <4 x float> %i.ag, ptr %i.ae, align 4, !tbaa !10, !alias.scope !723, !noalias !724
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.ah = icmp eq i64 %index.next, %n.vec
  br i1 %i.ah, label %middle.block, label %vector.body, !llvm.loop !697

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i, %middle.block
  %.09.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i ] ; 5 uses
  %.neg = or disjoint i64 %.09.i.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.ai = getelementptr [4 x i8], ptr %i.w, i64 %.09.i.ph ; 2 uses
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09.i.ph
  %i.ak = load float, ptr %i.aj, align 16, !tbaa !10
  %i.al = load float, ptr %i.x, align 4, !tbaa !10
  %i.am = fmul float %i.ak, %i.al
  %i.an = load float, ptr %i.ai, align 4, !tbaa !10
  %i.ao = fsub float %i.an, %i.am
  store float %i.ao, ptr %i.ai, align 4, !tbaa !10
  %i.ap = or disjoint i64 %.09.i.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.unr = phi i64 [ %.09.i.ph, %scalar.ph.preheader ], [ %i.ap, %scalar.ph.prol ]
  %i.aq = icmp eq i64 %i.j, %.neg
  br i1 %i.aq, label %._crit_edge.i, label %scalar.ph

._crit_edge.i:                                    ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.ar = add nuw nsw i64 %.0810.i, 1             ; 2 uses
  %exitcond12.not.i = icmp eq i64 %i.ar, %i.g
  br i1 %exitcond12.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERS12_.exit, label %.preheader.i, !llvm.loop !698

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i = phi i64 [ %i.bh, %scalar.ph ], [ %.09.i.unr, %scalar.ph.prol.loopexit ] ; 4 uses
  %i.as = getelementptr [4 x i8], ptr %i.w, i64 %.09.i ; 2 uses
  %i.at = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %.09.i
  %i.au = load float, ptr %i.at, align 4, !tbaa !10
  %i.av = load float, ptr %i.x, align 4, !tbaa !10
  %i.aw = fmul float %i.au, %i.av
  %i.ax = load float, ptr %i.as, align 4, !tbaa !10
  %i.ay = fsub float %i.ax, %i.aw
  store float %i.ay, ptr %i.as, align 4, !tbaa !10
  %i.az = add nuw nsw i64 %.09.i, 1               ; 2 uses
  %i.ba = getelementptr [4 x i8], ptr %i.w, i64 %i.az ; 2 uses
  %i.bb = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.az
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !10
  %i.bd = load float, ptr %i.x, align 4, !tbaa !10
  %i.be = fmul float %i.bc, %i.bd
  %i.bf = load float, ptr %i.ba, align 4, !tbaa !10
  %i.bg = fsub float %i.bf, %i.be
  store float %i.bg, ptr %i.ba, align 4, !tbaa !10
  %i.bh = add nuw nsw i64 %.09.i, 2               ; 2 uses
  %exitcond.not.i.1 = icmp eq i64 %i.bh, %i.j
  br i1 %exitcond.not.i.1, label %._crit_edge.i, label %scalar.ph, !llvm.loop !699

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit: ; preds = %bb.a
  %i.bi = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !107 ; 7 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !107 ; 2 uses
  %i.bm = icmp sgt i64 %i.bl, 0
  br i1 %i.bm, label %.lr.ph54, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS4_INS_6MatrixIfLi4ELi4ELi0ELi4ELi4EEELin1ELin1ELb0EEELin1ELin1ELb0EEEEENS3_INS_7ProductINS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKNS5_IfLin1ELi1ELi0ELi4ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS4_INS4_IS6_Li1ELi4ELb0EEELi1ELin1ELb0EEEEEEELi1EEEEENS0_13sub_assign_opIffEELi0EEELi0ELi0EE3runERS12_.exit

.lr.ph54:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit
  %i.bn = lshr exact i64 %i.d, 2
  %i.bo = sub nsw i64 0, %i.bn
  %i.bp = and i64 %i.bo, 3
  %i.bq = tail call i64 @llvm.smin.i64(i64 %i.bp, i64 %i.bj)
  %i.br = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.bs = shl i64 %i.bj, 2                        ; 2 uses
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph54, %._crit_edge
  %.03453 = phi i64 [ 0, %.lr.ph54 ], [ %i.fy, %._crit_edge ] ; 4 uses
  %.03552 = phi i64 [ %i.bq, %.lr.ph54 ], [ %.sroa.speculated, %._crit_edge ] ; 14 uses
  %i.bt = sub i64 %i.bj, %.03552                  ; 3 uses
  %i.bu = and i64 %i.bt, -4                       ; 2 uses
  %i.bv = add nsw i64 %i.bu, %.03552              ; 6 uses
  %i.bw = icmp sgt i64 %.03552, 0
  br i1 %i.bw, label %.lr.ph, label %.preheader45

.lr.ph:                                           ; preds = %bb.c
  %i.bx = load ptr, ptr %0, align 8, !tbaa !725, !nonnull !15, !align !182
  %i.by = load ptr, ptr %i.bx, align 8, !tbaa !154 ; 2 uses
  %.idx.i.i.i = shl i64 %.03453, 4                ; 4 uses
  %i.bz = getelementptr i8, ptr %i.by, i64 %.idx.i.i.i ; 6 uses
  %i.ca = load ptr, ptr %i.br, align 8, !tbaa !726, !nonnull !15, !align !184 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %i.ca, i64 32
  %i.cc = load ptr, ptr %i.cb, align 16, !tbaa !189, !noalias !727 ; 2 uses
  %i.cd = getelementptr inbounds i8, ptr %i.cc, i64 %.idx.i.i.i ; 5 uses
  %min.iters.check127 = icmp ult i64 %.03552, 8
  br i1 %min.iters.check127, label %scalar.ph126.preheader, label %vector.memcheck128

vector.memcheck128:                               ; preds = %.lr.ph
  %i.ce = shl i64 %.03552, 2                      ; 2 uses
  %i.cf = getelementptr i8, ptr %i.by, i64 %.idx.i.i.i
  %i.cg = getelementptr i8, ptr %i.cf, i64 %i.ce  ; 2 uses
  %i.ch = getelementptr i8, ptr %i.ca, i64 %i.ce
  %bound0129 = icmp ult ptr %i.bz, %i.ch
  %bound1130 = icmp ult ptr %i.ca, %i.cg
  %found.conflict131 = and i1 %bound0129, %bound1130
  %i.ci = getelementptr i8, ptr %i.cc, i64 %.idx.i.i.i
  %i.cj = getelementptr i8, ptr %i.ci, i64 4
  %bound0132 = icmp ult ptr %i.bz, %i.cj
  %bound1133 = icmp ult ptr %i.cd, %i.cg
  %found.conflict134 = and i1 %bound0132, %bound1133
  %conflict.rdx135 = or i1 %found.conflict131, %found.conflict134
  br i1 %conflict.rdx135, label %scalar.ph126.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %vector.memcheck128
  %n.vec137 = and i64 %.03552, 9223372036854775800 ; 3 uses
  %i.ck = load float, ptr %i.cd, align 4, !tbaa !10, !alias.scope !728
  %broadcast.splatinsert142 = insertelement <4 x float> poison, float %i.ck, i64 0
  %broadcast.splat143 = shufflevector <4 x float> %broadcast.splatinsert142, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next146, %vector.body138 ] ; 3 uses
  %i.cl = getelementptr [4 x i8], ptr %i.bz, i64 %index139 ; 3 uses
  %i.cm = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %index139 ; 2 uses
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 16
  %wide.load140 = load <4 x float>, ptr %i.cm, align 16, !tbaa !10, !alias.scope !729
  %wide.load141 = load <4 x float>, ptr %i.cn, align 16, !tbaa !10, !alias.scope !729
  %i.co = fmul <4 x float> %wide.load140, %broadcast.splat143
  %i.cp = fmul <4 x float> %wide.load141, %broadcast.splat143
  %i.cq = getelementptr i8, ptr %i.cl, i64 16     ; 2 uses
  %wide.load144 = load <4 x float>, ptr %i.cl, align 4, !tbaa !10, !alias.scope !730, !noalias !731
  %wide.load145 = load <4 x float>, ptr %i.cq, align 4, !tbaa !10, !alias.scope !730, !noalias !731
  %i.cr = fsub <4 x float> %wide.load144, %i.co
  %i.cs = fsub <4 x float> %wide.load145, %i.cp
  store <4 x float> %i.cr, ptr %i.cl, align 4, !tbaa !10, !alias.scope !730, !noalias !731
  store <4 x float> %i.cs, ptr %i.cq, align 4, !tbaa !10, !alias.scope !730, !noalias !731
  %index.next146 = add nuw i64 %index139, 8       ; 2 uses
  %i.ct = icmp eq i64 %index.next146, %n.vec137
  br i1 %i.ct, label %middle.block147, label %vector.body138, !llvm.loop !706

middle.block147:                                  ; preds = %vector.body138
  %cmp.n148 = icmp eq i64 %.03552, %n.vec137
  br i1 %cmp.n148, label %.preheader45, label %scalar.ph126.preheader

scalar.ph126.preheader:                           ; preds = %vector.memcheck128, %.lr.ph, %middle.block147
  %.03347.ph = phi i64 [ 0, %vector.memcheck128 ], [ 0, %.lr.ph ], [ %n.vec137, %middle.block147 ] ; 5 uses
  %.neg153 = or disjoint i64 %.03347.ph, 1
  %xtraiter151 = and i64 %.03552, 1
  %lcmp.mod152.not = icmp eq i64 %xtraiter151, 0
  br i1 %lcmp.mod152.not, label %scalar.ph126.prol.loopexit, label %scalar.ph126.prol

scalar.ph126.prol:                                ; preds = %scalar.ph126.preheader
  %i.cu = getelementptr [4 x i8], ptr %i.bz, i64 %.03347.ph ; 2 uses
  %i.cv = getelementptr inbounds nuw [4 x i8], ptr %i.ca, i64 %.03347.ph
  %i.cw = load float, ptr %i.cv, align 16, !tbaa !10
  %i.cx = load float, ptr %i.cd, align 4, !tbaa !10
  %i.cy = fmul float %i.cw, %i.cx
  %i.cz = load float, ptr %i.cu, align 4, !tbaa !10
  %i.da = fsub float %i.cz, %i.cy
  store float %i.da, ptr %i.cu, align 4, !tbaa !10
  %i.db = or disjoint i64 %.03347.ph, 1
  br label %scalar.ph126.prol.loopexit

scalar.ph126.prol.loopexit:                       ; preds = %scalar.ph126.prol, %scalar.ph126.preheader
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_9TransposeIKNS_5BlockINSD_INS5_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSD_INSD_ISE_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EEELi1ELi0EE3runERSP_:bb.a
  %i.gv = fadd <2 x float> %i.gt, %i.gu
  %i.gw = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.gv) ; 2 uses
  br i1 %lcmp.mod83.not, label %.lr.ph85.i.i.i.i.i.us21.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us21.prol

.lr.ph85.i.i.i.i.i.us21.prol:                     ; preds = %.lr.ph85.i.i.i.i.i.preheader.us20, %.lr.ph85.i.i.i.i.i.us21.prol
  %.05283.i.i.i.i.i.us22.prol = phi i64 [ %i.hd, %.lr.ph85.i.i.i.i.i.us21.prol ], [ %i.s, %.lr.ph85.i.i.i.i.i.preheader.us20 ] ; 3 uses
  %.182.i.i.i.i.i.us23.prol = phi float [ %i.hc, %.lr.ph85.i.i.i.i.i.us21.prol ], [ %i.gw, %.lr.ph85.i.i.i.i.i.preheader.us20 ]
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph85.i.i.i.i.i.us21.prol ], [ 0, %.lr.ph85.i.i.i.i.i.preheader.us20 ]
  %i.gx = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05283.i.i.i.i.i.us22.prol
  %i.gy = load float, ptr %i.gx, align 4, !tbaa !10
  %i.gz = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %.05283.i.i.i.i.i.us22.prol
  %i.ha = load float, ptr %i.gz, align 4, !tbaa !10
  %i.hb = fmul float %i.gy, %i.ha
  %i.hc = fadd float %.182.i.i.i.i.i.us23.prol, %i.hb ; 3 uses
  %i.hd = add nsw i64 %.05283.i.i.i.i.i.us22.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter82
  br i1 %prol.iter.cmp.not, label %.lr.ph85.i.i.i.i.i.us21.prol.loopexit, label %.lr.ph85.i.i.i.i.i.us21.prol, !llvm.loop !1086

.lr.ph85.i.i.i.i.i.us21.prol.loopexit:            ; preds = %.lr.ph85.i.i.i.i.i.us21.prol, %.lr.ph85.i.i.i.i.i.preheader.us20
  %.lcssa79.unr = phi float [ poison, %.lr.ph85.i.i.i.i.i.preheader.us20 ], [ %i.hc, %.lr.ph85.i.i.i.i.i.us21.prol ]
  %.05283.i.i.i.i.i.us22.unr = phi i64 [ %i.s, %.lr.ph85.i.i.i.i.i.preheader.us20 ], [ %i.hd, %.lr.ph85.i.i.i.i.i.us21.prol ]
  %.182.i.i.i.i.i.us23.unr = phi float [ %i.gw, %.lr.ph85.i.i.i.i.i.preheader.us20 ], [ %i.hc, %.lr.ph85.i.i.i.i.i.us21.prol ]
  br i1 %i.go, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25, label %.lr.ph85.i.i.i.i.i.us21

.lr.ph85.i.i.i.i.i.us21:                          ; preds = %.lr.ph85.i.i.i.i.i.us21.prol.loopexit, %.lr.ph85.i.i.i.i.i.us21
  %.05283.i.i.i.i.i.us22 = phi i64 [ %i.if, %.lr.ph85.i.i.i.i.i.us21 ], [ %.05283.i.i.i.i.i.us22.unr, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.us23 = phi float [ %i.ie, %.lr.ph85.i.i.i.i.i.us21 ], [ %.182.i.i.i.i.i.us23.unr, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit ]
  %i.he = getelementptr inbounds [4 x i8], ptr %i.j, i64 %.05283.i.i.i.i.i.us22
  %i.hf = load float, ptr %i.he, align 4, !tbaa !10
  %i.hg = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %.05283.i.i.i.i.i.us22
  %i.hh = load float, ptr %i.hg, align 4, !tbaa !10
  %i.hi = fmul float %i.hf, %i.hh
  %i.hj = fadd float %.182.i.i.i.i.i.us23, %i.hi
  %i.hk = add nsw i64 %.05283.i.i.i.i.i.us22, 1   ; 2 uses
  %i.hl = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hk
  %i.hm = load float, ptr %i.hl, align 4, !tbaa !10
  %i.hn = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hk
  %i.ho = load float, ptr %i.hn, align 4, !tbaa !10
  %i.hp = fmul float %i.hm, %i.ho
  %i.hq = fadd float %i.hj, %i.hp
  %i.hr = add nsw i64 %.05283.i.i.i.i.i.us22, 2   ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hr
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !10
  %i.hu = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hr
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !10
  %i.hw = fmul float %i.ht, %i.hv
  %i.hx = fadd float %i.hq, %i.hw
  %i.hy = add nsw i64 %.05283.i.i.i.i.i.us22, 3   ; 2 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.j, i64 %i.hy
  %i.ia = load float, ptr %i.hz, align 4, !tbaa !10
  %i.ib = getelementptr inbounds [4 x i8], ptr %i.gp, i64 %i.hy
  %i.ic = load float, ptr %i.ib, align 4, !tbaa !10
  %i.id = fmul float %i.ia, %i.ic
  %i.ie = fadd float %i.hx, %i.id                 ; 2 uses
  %i.if = add nsw i64 %.05283.i.i.i.i.i.us22, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.us24.3 = icmp eq i64 %i.if, %i.n
  br i1 %exitcond.not.i.i.i.i.i.us24.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25, label %.lr.ph85.i.i.i.i.i.us21, !llvm.loop !1085

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25: ; preds = %.lr.ph85.i.i.i.i.i.us21, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit
  %.lcssa79 = phi float [ %.lcssa79.unr, %.lr.ph85.i.i.i.i.i.us21.prol.loopexit ], [ %i.ie, %.lr.ph85.i.i.i.i.i.us21 ]
  %i.ig = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09.us18
  store float %.lcssa79, ptr %i.ig, align 4, !tbaa !10
  %i.ih = add nuw nsw i64 %.09.us18, 1            ; 2 uses
  %exitcond38.not = icmp eq i64 %i.ih, %i.d
  br i1 %exitcond38.not, label %._crit_edge, label %.lr.ph85.i.i.i.i.i.preheader.us20, !llvm.loop !1081

._crit_edge.loopexit80.unr-lcssa:                 ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %._crit_edge, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader: ; preds = %._crit_edge.loopexit80.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader
  %.09.epil.init = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader ], [ %i.jk, %._crit_edge.loopexit80.unr-lcssa ] ; 2 uses
  %lcmp.mod81 = trunc i64 %i.d to i1
  tail call void @llvm.assume(i1 %lcmp.mod81)
  %.idx.i.i.i.i.i.i.epil = mul nuw nsw i64 %.09.epil.init, 12
  %i.ii = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.epil
  %i.ij = load <4 x float>, ptr %i.j, align 1, !tbaa !11
  %i.ik = load <4 x float>, ptr %i.ii, align 1, !tbaa !11
  %i.il = fmul <4 x float> %i.ij, %i.ik           ; 2 uses
  %i.im = shufflevector <4 x float> %i.il, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.in = shufflevector <4 x float> %i.il, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.io = fadd <2 x float> %i.im, %i.in
  %i.ip = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.io)
  %i.iq = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09.epil.init
  store float %i.ip, ptr %i.iq, align 4, !tbaa !10
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.epil.preheader, %._crit_edge.loopexit80.unr-lcssa, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit5.us25, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us16, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us12.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us12, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.loopexit.us.us, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader, %bb.a
  ret void

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new
  %.09 = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new ], [ %i.jk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit ] ; 4 uses
  %niter = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.preheader.new ], [ %niter.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit ]
  %.idx.i.i.i.i.i.i = mul nuw nsw i64 %.09, 12
  %i.ir = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i
  %i.is = load <4 x float>, ptr %i.j, align 1, !tbaa !11
  %i.it = load <4 x float>, ptr %i.ir, align 1, !tbaa !11
  %i.iu = fmul <4 x float> %i.is, %i.it           ; 2 uses
  %i.iv = shufflevector <4 x float> %i.iu, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.iw = shufflevector <4 x float> %i.iu, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.ix = fadd <2 x float> %i.iv, %i.iw
  %i.iy = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.ix)
  %i.iz = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %.09
  store float %i.iy, ptr %i.iz, align 4, !tbaa !10
  %i.ja = or disjoint i64 %.09, 1                 ; 2 uses
  %.idx.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ja, 12
  %i.jb = getelementptr inbounds nuw i8, ptr %i.l, i64 %.idx.i.i.i.i.i.i.1
  %i.jc = load <4 x float>, ptr %i.j, align 1, !tbaa !11
  %i.jd = load <4 x float>, ptr %i.jb, align 1, !tbaa !11
  %i.je = fmul <4 x float> %i.jc, %i.jd           ; 2 uses
  %i.jf = shufflevector <4 x float> %i.je, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.jg = shufflevector <4 x float> %i.je, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.jh = fadd <2 x float> %i.jf, %i.jg
  %i.ji = tail call reassoc float @llvm.vector.reduce.fadd.v2f32(float -0.000000e+00, <2 x float> %i.jh)
  %i.jj = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %i.ja
  store float %i.ji, ptr %i.jj, align 4, !tbaa !10
  %i.jk = add nuw nsw i64 %.09, 2                 ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit80.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLi1ELin1ELi1ELi1ELi3EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_9TransposeIKNS_5BlockINSC_INS4_IfLi3ELi3ELi0ELi3ELi3EEELi3ELi1ELb1EEELin1ELi1ELb0EEEEENSC_INSC_ISD_Lin1ELin1ELb0EEELin1ELin1ELb0EEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit, !llvm.loop !1081
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(96) %1, ptr noundef nonnull align 4 dereferenceable(4) %2, ptr noundef %3) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"struct.Eigen::internal::evaluator.3331", align 8 ; 15 uses
  %5 = alloca %"struct.Eigen::internal::evaluator.3231", align 8 ; 14 uses
  %6 = alloca %"struct.Eigen::internal::evaluator.3241", align 8 ; 5 uses
  %7 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.3245", align 8 ; 7 uses
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"class.Eigen::Map.3170", align 8   ; 8 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !107  ; 4 uses
  %i.c = icmp eq i64 %i.b, 1
  %i.d = load float, ptr %2, align 4, !tbaa !10   ; 2 uses
  br i1 %i.c, label %.preheader.lr.ph.i.i.i.i.i.i, label %bb.b

.preheader.lr.ph.i.i.i.i.i.i:                     ; preds = %bb.a
  %i.e = fsub float 1.000000e+00, %i.d            ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !107  ; 5 uses
  %i.h = icmp sgt i64 %i.g, 0
  br i1 %i.h, label %.preheader.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKf.exit

.preheader.i.i.i.i.i.i:                           ; preds = %.preheader.lr.ph.i.i.i.i.i.i
  %i.i = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  %min.iters.check191 = icmp ult i64 %i.g, 8
  br i1 %min.iters.check191, label %scalar.ph190.preheader, label %vector.ph192

vector.ph192:                                     ; preds = %.preheader.i.i.i.i.i.i
  %n.vec193 = and i64 %i.g, 9223372036854775800   ; 3 uses
  %broadcast.splatinsert194 = insertelement <4 x float> poison, float %i.e, i64 0
  %broadcast.splat195 = shufflevector <4 x float> %broadcast.splatinsert194, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body196

vector.body196:                                   ; preds = %vector.body196, %vector.ph192
  %index197 = phi i64 [ 0, %vector.ph192 ], [ %index.next200, %vector.body196 ] ; 2 uses
  %i.j = getelementptr [4 x i8], ptr %i.i, i64 %index197 ; 3 uses
  %i.k = getelementptr i8, ptr %i.j, i64 16       ; 2 uses
  %wide.load198 = load <4 x float>, ptr %i.j, align 4, !tbaa !10
  %wide.load199 = load <4 x float>, ptr %i.k, align 4, !tbaa !10
  %i.l = fmul <4 x float> %broadcast.splat195, %wide.load198
  %i.m = fmul <4 x float> %broadcast.splat195, %wide.load199
  store <4 x float> %i.l, ptr %i.j, align 4, !tbaa !10
  store <4 x float> %i.m, ptr %i.k, align 4, !tbaa !10
  %index.next200 = add nuw i64 %index197, 8       ; 2 uses
  %i.n = icmp eq i64 %index.next200, %n.vec193
  br i1 %i.n, label %middle.block201, label %vector.body196, !llvm.loop !1097

middle.block201:                                  ; preds = %vector.body196
  %cmp.n202 = icmp eq i64 %i.g, %n.vec193
  br i1 %cmp.n202, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph190.preheader

scalar.ph190.preheader:                           ; preds = %.preheader.i.i.i.i.i.i, %middle.block201
  %.09.i.i.i.i.i.i.ph = phi i64 [ 0, %.preheader.i.i.i.i.i.i ], [ %n.vec193, %middle.block201 ]
  br label %scalar.ph190

scalar.ph190:                                     ; preds = %scalar.ph190.preheader, %scalar.ph190
  %.09.i.i.i.i.i.i = phi i64 [ %i.r, %scalar.ph190 ], [ %.09.i.i.i.i.i.i.ph, %scalar.ph190.preheader ] ; 2 uses
  %i.o = getelementptr [4 x i8], ptr %i.i, i64 %.09.i.i.i.i.i.i ; 2 uses
  %i.p = load float, ptr %i.o, align 4, !tbaa !10
  %i.q = fmul float %i.e, %i.p
  store float %i.q, ptr %i.o, align 4, !tbaa !10
  %i.r = add nuw nsw i64 %.09.i.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i.i = icmp eq i64 %i.r, %i.g
  br i1 %exitcond.not.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKf.exit, label %scalar.ph190, !llvm.loop !1098

bb.b:                                             ; preds = %bb.a
  %i.s = fcmp une float %i.d, 0.000000e+00
  br i1 %i.s, label %bb.c, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKf.exit

bb.c:                                             ; preds = %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #14
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.u = load i64, ptr %i.t, align 8, !tbaa !107  ; 11 uses
  store ptr %3, ptr %9, align 8, !tbaa !292
  %i.v = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 3 uses
  store i64 %i.u, ptr %i.v, align 8, !tbaa !107
  %i.w = add nsw i64 %i.b, -1                     ; 3 uses
  %i.x = load ptr, ptr %0, align 8, !tbaa !254    ; 2 uses
  %i.y = getelementptr i8, ptr %i.x, i64 12       ; 5 uses
  %.sroa.5.0..sroa_idx5.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 24
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #14
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %.sroa.5.0..sroa_idx5.i.i.i.i, ptr noundef nonnull align 8 dereferenceable(56) %0, i64 56, i1 false)
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 104 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.z, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  store ptr %i.y, ptr %5, align 8
  %.sroa.048.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 %i.u, ptr %.sroa.048.sroa.4.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #14
  %.sroa.4.0..sroa_idx3.i.i.i.i = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %i.w, ptr %.sroa.4.0..sroa_idx3.i.i.i.i, align 8
  %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 80
  store i64 0, ptr %.sroa.550.sroa.4.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 88
  store i64 1, ptr %.sroa.550.sroa.5.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 96
  store i64 3, ptr %.sroa.550.sroa.6.0..sroa.5.0..sroa_idx5.i.i.i.i.sroa_idx, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %5, i64 200
  store ptr %i.y, ptr %i.aa, align 8, !tbaa !275
  %i.ab = getelementptr inbounds nuw i8, ptr %5, i64 216
  %i.ac = load ptr, ptr %i.z, align 8, !tbaa !294
  store ptr %i.ac, ptr %i.ab, align 8, !tbaa !296
  %i.ad = getelementptr inbounds nuw i8, ptr %5, i64 232
  store i64 %i.w, ptr %i.ad, align 8, !tbaa !313
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #14
  store ptr %3, ptr %6, align 8, !tbaa !315
  %i.ae = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.u, ptr %i.ae, align 8, !tbaa !107
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr %6, ptr %7, align 8, !tbaa !1141
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 8
  store ptr %5, ptr %i.af, align 8, !tbaa !1142
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 16
  store ptr %8, ptr %i.ag, align 8, !tbaa !164
  %i.ah = getelementptr inbounds nuw i8, ptr %7, i64 24
  store ptr %9, ptr %i.ah, align 8, !tbaa !1143
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSP_(ptr noundef nonnull align 8 dereferenceable(32) %7)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #14
  %i.ai = load ptr, ptr %0, align 8, !tbaa !254, !noalias !1144 ; 17 uses
  %i.aj = load ptr, ptr %9, align 8, !tbaa !292   ; 18 uses
  %i.ak = load i64, ptr %i.v, align 8, !tbaa !107 ; 9 uses
  %i.al = ptrtoint ptr %i.aj to i64               ; 2 uses
  %i.am = and i64 %i.al, 3
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.am, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.d, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.an = lshr exact i64 %i.al, 2
  %i.ao = sub nsw i64 0, %i.an
  %i.ap = and i64 %i.ao, 3
  %i.aq = call i64 @llvm.smin.i64(i64 %i.ap, i64 %i.ak)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.d, %bb.c
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.aq, %bb.d ], [ %i.ak, %bb.c ] ; 13 uses
  %i.ar = sub nsw i64 %i.ak, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.as = sdiv i64 %i.ar, 4                       ; 2 uses
  %i.at = shl nsw i64 %i.as, 2                    ; 2 uses
  %i.au = add nsw i64 %i.at, %.0.i.i.i.i.i.i.i    ; 6 uses
  %i.av = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.av, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader208, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %i.aw = shl i64 %.0.i.i.i.i.i.i.i, 2            ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aj, i64 %i.aw
  %i.ay = getelementptr i8, ptr %i.ai, i64 %i.aw
  %bound0 = icmp ult ptr %i.aj, %i.ay
  %bound1 = icmp ult ptr %i.ai, %i.ax
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i.i.preheader208, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.az = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %index ; 3 uses
  %i.ba = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %index ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load = load <4 x float>, ptr %i.ba, align 4, !tbaa !10, !alias.scope !1145
  %wide.load64 = load <4 x float>, ptr %i.bb, align 4, !tbaa !10, !alias.scope !1145
  %i.bc = getelementptr inbounds nuw i8, ptr %i.az, i64 16 ; 2 uses
  %wide.load65 = load <4 x float>, ptr %i.az, align 4, !tbaa !10, !alias.scope !1146, !noalias !1145
  %wide.load66 = load <4 x float>, ptr %i.bc, align 4, !tbaa !10, !alias.scope !1146, !noalias !1145
  %i.bd = fadd <4 x float> %wide.load, %wide.load65
  %i.be = fadd <4 x float> %wide.load64, %wide.load66
  store <4 x float> %i.bd, ptr %i.az, align 4, !tbaa !10, !alias.scope !1146, !noalias !1145
  store <4 x float> %i.be, ptr %i.bc, align 4, !tbaa !10, !alias.scope !1146, !noalias !1145
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.bf = icmp eq i64 %index.next, %n.vec
  br i1 %i.bf, label %middle.block, label %vector.body, !llvm.loop !1104

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader208

.lr.ph.i.i.i.i.i.i.i.preheader208:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ] ; 3 uses
  %xtraiter = and i64 %.0.i.i.i.i.i.i.i, 3        ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader208, %.lr.ph.i.i.i.i.i.i.i.prol
  %.05.i.i.i.i.i.i.i.prol = phi i64 [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.prol ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader208 ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %.lr.ph.i.i.i.i.i.i.i.prol ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader208 ]
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i.prol ; 2 uses
  %i.bh = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i.prol
  %i.bi = load float, ptr %i.bh, align 4, !tbaa !10
  %i.bj = load float, ptr %i.bg, align 4, !tbaa !10
  %i.bk = fadd float %i.bi, %i.bj
  store float %i.bk, ptr %i.bg, align 4, !tbaa !10
  %i.bl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.prol, !llvm.loop !1105

.lr.ph.i.i.i.i.i.i.i.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.preheader208
  %.05.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader208 ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.prol ]
  %i.bm = sub nsw i64 %.05.i.i.i.i.i.i.i.ph, %.0.i.i.i.i.i.i.i
  %i.bn = icmp ugt i64 %i.bm, -4
  br i1 %i.bn, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.cl, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.prol.loopexit ] ; 6 uses
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.bp = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %.05.i.i.i.i.i.i.i
  %i.bq = load float, ptr %i.bp, align 4, !tbaa !10
  %i.br = load float, ptr %i.bo, align 4, !tbaa !10
  %i.bs = fadd float %i.bq, %i.br
  store float %i.bs, ptr %i.bo, align 4, !tbaa !10
  %i.bt = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %i.bu = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bt ; 2 uses
  %i.bv = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bt
  %i.bw = load float, ptr %i.bv, align 4, !tbaa !10
  %i.bx = load float, ptr %i.bu, align 4, !tbaa !10
  %i.by = fadd float %i.bw, %i.bx
  store float %i.by, ptr %i.bu, align 4, !tbaa !10
  %i.bz = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 2   ; 2 uses
  %i.ca = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.bz
  %i.cc = load float, ptr %i.cb, align 4, !tbaa !10
  %i.cd = load float, ptr %i.ca, align 4, !tbaa !10
  %i.ce = fadd float %i.cc, %i.cd
  store float %i.ce, ptr %i.ca, align 4, !tbaa !10
  %i.cf = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 3   ; 2 uses
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.aj, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %i.cf
  %i.ci = load float, ptr %i.ch, align 4, !tbaa !10
  %i.cj = load float, ptr %i.cg, align 4, !tbaa !10
  %i.ck = fadd float %i.ci, %i.cj
  store float %i.ck, ptr %i.cg, align 4, !tbaa !10
  %i.cl = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 4   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.3 = icmp eq i64 %i.cl, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.3, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1106

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i, %middle.block, %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.cm = icmp sgt i64 %i.ar, 3
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i8

._crit_edge.i.i.i.i.i.i8:                         ; preds = %.lr.ph.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_5BlockINSD_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS0_13add_assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.cn = icmp slt i64 %i.au, %i.ak
  br i1 %i.cn, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen10MatrixBaseINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEpLINS_5BlockINS9_INS2_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEERS6_RKNS0_IT_EE.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i8
  %i.co = add i64 %.0.i.i.i.i.i.i.i, %i.at
  %i.cp = sub i64 %i.ak, %i.co                    ; 3 uses
  %min.iters.check75 = icmp ult i64 %i.cp, 12
  br i1 %min.iters.check75, label %.lr.ph.i17.i.i.i.i.i.i.preheader207, label %vector.memcheck76

vector.memcheck76:                                ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %i.cq = shl i64 %i.as, 4
  %i.cr = shl i64 %.0.i.i.i.i.i.i.i, 2
  %i.cs = add i64 %i.cq, %i.cr                    ; 2 uses
  %i.ct = getelementptr i8, ptr %i.aj, i64 %i.cs
  %i.cu = shl i64 %i.ak, 2                        ; 2 uses
  %i.cv = getelementptr i8, ptr %i.aj, i64 %i.cu
  %i.cw = getelementptr i8, ptr %i.ai, i64 %i.cs
  %i.cx = getelementptr i8, ptr %i.ai, i64 %i.cu
  %bound077 = icmp ult ptr %i.ct, %i.cx
  %bound178 = icmp ult ptr %i.cw, %i.cv
  %found.conflict79 = and i1 %bound077, %bound178
  br i1 %found.conflict79, label %.lr.ph.i17.i.i.i.i.i.i.preheader207, label %vector.ph80

vector.ph80:                                      ; preds = %vector.memcheck76
  %n.vec81 = and i64 %i.cp, -8                    ; 3 uses
  %i.cy = add i64 %i.au, %n.vec81
  br label %vector.body82

vector.body82:                                    ; preds = %vector.body82, %vector.ph80
  %index83 = phi i64 [ 0, %vector.ph80 ], [ %index.next88, %vector.body82 ] ; 2 uses
  %i.cz = add i64 %i.au, %index83                 ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN5Eigen10MatrixBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE26applyHouseholderOnTheRightINS_9TransposeIKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEEvRKT_RKfPf:bb.a
  %broadcast.splat131 = shufflevector <4 x float> %broadcast.splatinsert130, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body132

vector.body132:                                   ; preds = %vector.body132, %vector.ph128
  %index133 = phi i64 [ 0, %vector.ph128 ], [ %index.next138, %vector.body132 ] ; 2 uses
  %i.hg = add i64 %i.fh, %index133                ; 2 uses
  %i.hh = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.hg ; 3 uses
  %i.hi = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %i.hg ; 2 uses
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hi, i64 16
  %wide.load134 = load <4 x float>, ptr %i.hi, align 4, !tbaa !10, !alias.scope !1153
  %wide.load135 = load <4 x float>, ptr %i.hj, align 4, !tbaa !10, !alias.scope !1153
  %i.hk = fmul <4 x float> %broadcast.splat131, %wide.load134
  %i.hl = fmul <4 x float> %broadcast.splat131, %wide.load135
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hh, i64 16 ; 2 uses
  %wide.load136 = load <4 x float>, ptr %i.hh, align 4, !tbaa !10, !alias.scope !1154, !noalias !1153
  %wide.load137 = load <4 x float>, ptr %i.hm, align 4, !tbaa !10, !alias.scope !1154, !noalias !1153
  %i.hn = fsub <4 x float> %wide.load136, %i.hk
  %i.ho = fsub <4 x float> %wide.load137, %i.hl
  store <4 x float> %i.hn, ptr %i.hh, align 4, !tbaa !10, !alias.scope !1154, !noalias !1153
  store <4 x float> %i.ho, ptr %i.hm, align 4, !tbaa !10, !alias.scope !1154, !noalias !1153
  %index.next138 = add nuw i64 %index133, 8       ; 2 uses
  %i.hp = icmp eq i64 %index.next138, %n.vec129
  br i1 %i.hp, label %middle.block139, label %vector.body132, !llvm.loop !1126

middle.block139:                                  ; preds = %vector.body132
  %cmp.n140 = icmp eq i64 %i.gw, %n.vec129
  br i1 %cmp.n140, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i13.preheader205

.lr.ph.i17.i.i.i.i.i.i13.preheader205:            ; preds = %vector.memcheck124, %.lr.ph.i17.i.i.i.i.i.i13.preheader, %middle.block139
  %.05.i18.i.i.i.i.i.i14.ph = phi i64 [ %i.fh, %vector.memcheck124 ], [ %i.fh, %.lr.ph.i17.i.i.i.i.i.i13.preheader ], [ %i.hf, %middle.block139 ] ; 6 uses
  %i.hq = sub i64 %i.ex, %.05.i18.i.i.i.i.i.i14.ph
  %.neg223 = add i64 %.05.i18.i.i.i.i.i.i14.ph, 1
  %xtraiter215 = and i64 %i.hq, 1
  %lcmp.mod216.not = icmp eq i64 %xtraiter215, 0
  br i1 %lcmp.mod216.not, label %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i13.prol

.lr.ph.i17.i.i.i.i.i.i13.prol:                    ; preds = %.lr.ph.i17.i.i.i.i.i.i13.preheader205
  %i.hr = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %.05.i18.i.i.i.i.i.i14.ph ; 2 uses
  %i.hs = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %.05.i18.i.i.i.i.i.i14.ph
  %i.ht = load float, ptr %i.hs, align 4, !tbaa !10
  %i.hu = fmul float %i.ev, %i.ht
  %i.hv = load float, ptr %i.hr, align 4, !tbaa !10
  %i.hw = fsub float %i.hv, %i.hu
  store float %i.hw, ptr %i.hr, align 4, !tbaa !10
  %i.hx = add nsw i64 %.05.i18.i.i.i.i.i.i14.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit:           ; preds = %.lr.ph.i17.i.i.i.i.i.i13.prol, %.lr.ph.i17.i.i.i.i.i.i13.preheader205
  %.05.i18.i.i.i.i.i.i14.unr = phi i64 [ %.05.i18.i.i.i.i.i.i14.ph, %.lr.ph.i17.i.i.i.i.i.i13.preheader205 ], [ %i.hx, %.lr.ph.i17.i.i.i.i.i.i13.prol ]
  %i.hy = icmp eq i64 %i.ex, %.neg223
  br i1 %i.hy, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i13

.lr.ph.i17.i.i.i.i.i.i13:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i13
  %.05.i18.i.i.i.i.i.i14 = phi i64 [ %i.im, %.lr.ph.i17.i.i.i.i.i.i13 ], [ %.05.i18.i.i.i.i.i.i14.unr, %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit ] ; 4 uses
  %i.hz = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %.05.i18.i.i.i.i.i.i14 ; 2 uses
  %i.ia = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %.05.i18.i.i.i.i.i.i14
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !10
  %i.ic = fmul float %i.ev, %i.ib
  %i.id = load float, ptr %i.hz, align 4, !tbaa !10
  %i.ie = fsub float %i.id, %i.ic
  store float %i.ie, ptr %i.hz, align 4, !tbaa !10
  %i.if = add nsw i64 %.05.i18.i.i.i.i.i.i14, 1   ; 2 uses
  %i.ig = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %i.if ; 2 uses
  %i.ih = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %i.if
  %i.ii = load float, ptr %i.ih, align 4, !tbaa !10
  %i.ij = fmul float %i.ev, %i.ii
  %i.ik = load float, ptr %i.ig, align 4, !tbaa !10
  %i.il = fsub float %i.ik, %i.ij
  store float %i.il, ptr %i.ig, align 4, !tbaa !10
  %i.im = add nsw i64 %.05.i18.i.i.i.i.i.i14, 2   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i15.1 = icmp eq i64 %i.im, %i.ex
  br i1 %exitcond.not.i19.i.i.i.i.i.i15.1, label %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i13, !llvm.loop !1127

.lr.ph.i.i.i.i.i.i16:                             ; preds = %.lr.ph.i.i.i.i.i.i16, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i17 = phi i64 [ %i.it, %.lr.ph.i.i.i.i.i.i16 ], [ %.0.i.i.i.i.i.i.i11, %.lr.ph.i.preheader.i.i.i.i.i ] ; 3 uses
  %i.in = getelementptr inbounds [4 x i8], ptr %i.ew, i64 %.021.i.i.i.i.i.i17 ; 2 uses
  %i.io = getelementptr inbounds [4 x i8], ptr %.sroa.538.24.copyload, i64 %.021.i.i.i.i.i.i17
  %i.ip = load <4 x float>, ptr %i.io, align 1, !tbaa !11
  %i.iq = fmul <4 x float> %i.gt, %i.ip
  %i.ir = load <4 x float>, ptr %i.in, align 16, !tbaa !11
  %i.is = fsub <4 x float> %i.ir, %i.iq
  store <4 x float> %i.is, ptr %i.in, align 16, !tbaa !11
  %i.it = add nsw i64 %.021.i.i.i.i.i.i17, 4      ; 2 uses
  %i.iu = icmp slt i64 %i.it, %i.fh
  br i1 %i.iu, label %.lr.ph.i.i.i.i.i.i16, label %._crit_edge.i.i.i.i.i.i12, !llvm.loop !1128

_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i13.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i13, %middle.block139, %._crit_edge.i.i.i.i.i.i12
  %i.iv = load float, ptr %2, align 4, !tbaa !10, !noalias !1155 ; 5 uses
  %.sroa.6.sroa.0.0.copyload = load ptr, ptr %9, align 8 ; 5 uses
  %.sroa.6.sroa.4.0.copyload = load i64, ptr %i.v, align 8 ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #14
  %i.iw = ptrtoint ptr %4 to i64
  %i.ix = lshr exact i64 %i.iw, 2
  %i.iy = sub nsw i64 0, %i.ix
  %i.iz = and i64 %i.iy, 2
  %i.ja = call i64 @llvm.smin.i64(i64 %i.iz, i64 %.sroa.6.sroa.4.0.copyload) ; 6 uses
  %i.jb = sub i64 %.sroa.6.sroa.4.0.copyload, %i.ja
  %i.jc = and i64 %i.jb, -4                       ; 3 uses
  %i.jd = add nsw i64 %i.jc, %i.ja                ; 5 uses
  %i.je = icmp sgt i64 %i.ja, 0
  br i1 %i.je, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %i.jf = load float, ptr %.sroa.6.sroa.0.0.copyload, align 4, !tbaa !10
  %i.jg = fmul float %i.iv, %i.jf
  store float %i.jg, ptr %4, align 8, !tbaa !10
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ja, 1
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1:       ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jh = getelementptr inbounds nuw i8, ptr %4, i64 4
  %i.ji = getelementptr inbounds nuw i8, ptr %.sroa.6.sroa.0.0.copyload, i64 4
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !10
  %i.jk = fmul float %i.iv, %i.jj
  store float %i.jk, ptr %i.jh, align 4, !tbaa !10
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1, %_ZN5Eigen10MatrixBaseINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEmIINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINS9_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISF_Li0ENS_6StrideILi0ELi0EEEEEEEEERS5_RKNS0_IT_EE.exit
  %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.jc, 0
  br i1 %.not.i12.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jl = insertelement <1 x float> poison, float %i.iv, i64 0
  %i.jm = shufflevector <1 x float> %i.jl, <1 x float> poison, <4 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:      ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIffEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIfEEKS7_EEKNS_3MapIS7_Li0ENS_6StrideILi0ELi0EEEEEEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jn = icmp slt i64 %i.jd, %.sroa.6.sroa.4.0.copyload
  br i1 %i.jn, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %.loopexit.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jo = add i64 %i.ja, %i.jc
  %i.jp = sub i64 %.sroa.6.sroa.4.0.copyload, %i.jo ; 3 uses
  %min.iters.check143 = icmp ult i64 %i.jp, 8
  br i1 %min.iters.check143, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader204, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec145 = and i64 %i.jp, -8                   ; 3 uses
  %i.jq = add i64 %i.jd, %n.vec145
  %broadcast.splatinsert146 = insertelement <4 x float> poison, float %i.iv, i64 0
  %broadcast.splat147 = shufflevector <4 x float> %broadcast.splatinsert146, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body148

vector.body148:                                   ; preds = %vector.body148, %vector.ph144
  %index149 = phi i64 [ 0, %vector.ph144 ], [ %index.next152, %vector.body148 ] ; 2 uses
  %i.jr = add i64 %i.jd, %index149                ; 2 uses
  %i.js = getelementptr inbounds [4 x i8], ptr %4, i64 %i.jr ; 2 uses
  %i.jt = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %i.jr ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %i.jt, i64 16
  %wide.load150 = load <4 x float>, ptr %i.jt, align 4, !tbaa !10
  %wide.load151 = load <4 x float>, ptr %i.ju, align 4, !tbaa !10
  %i.jv = fmul <4 x float> %broadcast.splat147, %wide.load150
  %i.jw = fmul <4 x float> %broadcast.splat147, %wide.load151
  %i.jx = getelementptr inbounds nuw i8, ptr %i.js, i64 16
  store <4 x float> %i.jv, ptr %i.js, align 4, !tbaa !10
  store <4 x float> %i.jw, ptr %i.jx, align 4, !tbaa !10
  %index.next152 = add nuw i64 %index149, 8       ; 2 uses
  %i.jy = icmp eq i64 %index.next152, %n.vec145
  br i1 %i.jy, label %middle.block153, label %vector.body148, !llvm.loop !1131

middle.block153:                                  ; preds = %vector.body148
  %cmp.n154 = icmp eq i64 %i.jp, %n.vec145
  br i1 %cmp.n154, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader204

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader204: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block153
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.jd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.jq, %middle.block153 ]
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:       ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader204, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.kd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader204 ] ; 3 uses
  %i.jz = getelementptr inbounds [4 x i8], ptr %4, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ka = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kb = load float, ptr %i.ka, align 4, !tbaa !10
  %i.kc = fmul float %i.iv, %i.kb
  store float %i.kc, ptr %i.jz, align 4, !tbaa !10
  %i.kd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.kd, %.sroa.6.sroa.4.0.copyload
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %.loopexit.i.i.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1132

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i:           ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ki, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %i.ja, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.ke = getelementptr inbounds [4 x i8], ptr %4, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kf = getelementptr inbounds [4 x i8], ptr %.sroa.6.sroa.0.0.copyload, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kg = load <4 x float>, ptr %i.kf, align 1, !tbaa !11
  %i.kh = fmul <4 x float> %i.jm, %i.kg
  store <4 x float> %i.kh, ptr %i.ke, align 16, !tbaa !11
  %i.ki = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %i.kj = icmp slt i64 %i.ki, %i.jd
  br i1 %i.kj, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1133

.loopexit.i.i.i.i.i.i.i:                          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block153, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.kk = getelementptr inbounds nuw i8, ptr %4, i64 24 ; 2 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 8 dereferenceable(96) %i.kk, ptr noundef nonnull align 8 dereferenceable(96) %1, i64 96, i1 false)
  %i.kl = load ptr, ptr %i.kk, align 8, !tbaa !294 ; 3 uses
  %i.km = icmp sgt i64 %i.b, 1
  %i.kn = icmp sgt i64 %i.u, 0
  %or.cond = select i1 %i.km, i1 %i.kn, i1 false
  br i1 %or.cond, label %.preheader.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi0EEEEERS5_RKNS6_IT_EE.exit

.preheader.i.i.i.i.i.i.i.i.preheader:             ; preds = %.loopexit.i.i.i.i.i.i.i
  %10 = mul i64 %i.b, 12                          ; 2 uses
  %i.ko = getelementptr i8, ptr %i.kl, i64 %10
  %scevgep.a = getelementptr i8, ptr %i.ko, i64 -20
  %11 = shl i64 %i.u, 2                           ; 2 uses
  %scevgep165 = getelementptr i8, ptr %4, i64 %11
  %i.kp = getelementptr i8, ptr %i.x, i64 %10
  %i.kq = getelementptr i8, ptr %i.kp, i64 %11
  %scevgep166 = getelementptr i8, ptr %i.kq, i64 -12 ; 2 uses
  %min.iters.check168 = icmp ult i64 %i.u, 8
  %bound0170 = icmp ult ptr %i.y, %scevgep165
  %bound1171 = icmp ult ptr %4, %scevgep166
  %found.conflict172 = and i1 %bound0170, %bound1171
  %bound0173 = icmp ult ptr %i.y, %scevgep.a
  %bound1174 = icmp ult ptr %i.kl, %scevgep166
  %found.conflict175 = and i1 %bound0173, %bound1174
  %conflict.rdx = or i1 %found.conflict172, %found.conflict175
  %n.vec177 = and i64 %i.u, 9223372036854775800   ; 3 uses
  %cmp.n188 = icmp eq i64 %i.u, %n.vec177
  %xtraiter218 = and i64 %i.u, 1
  %lcmp.mod219.not = icmp eq i64 %xtraiter218, 0
  br label %.preheader.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i:                       ; preds = %.preheader.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i = phi i64 [ %i.lm, %._crit_edge.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.preheader ] ; 2 uses
  %.idx.i.i.i.i.i.i.i.i.i.i.i = mul i64 %.0810.i.i.i.i.i.i.i.i, 12 ; 2 uses
  %i.kr = getelementptr i8, ptr %i.y, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %i.ks = getelementptr inbounds i8, ptr %i.kl, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i ; 4 uses
  %brmerge = select i1 %min.iters.check168, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph167.preheader, label %vector.ph176

vector.ph176:                                     ; preds = %.preheader.i.i.i.i.i.i.i.i
  %i.kt = load float, ptr %i.ks, align 4, !tbaa !10, !alias.scope !1156
  %broadcast.splatinsert182 = insertelement <4 x float> poison, float %i.kt, i64 0
  %broadcast.splat183 = shufflevector <4 x float> %broadcast.splatinsert182, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body178

vector.body178:                                   ; preds = %vector.body178, %vector.ph176
  %index179 = phi i64 [ 0, %vector.ph176 ], [ %index.next186, %vector.body178 ] ; 3 uses
  %i.ku = getelementptr [4 x i8], ptr %i.kr, i64 %index179 ; 3 uses
  %i.kv = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %index179 ; 2 uses
  %i.kw = getelementptr inbounds nuw i8, ptr %i.kv, i64 16
  %wide.load180 = load <4 x float>, ptr %i.kv, align 8, !tbaa !10, !alias.scope !1157
  %wide.load181 = load <4 x float>, ptr %i.kw, align 8, !tbaa !10, !alias.scope !1157
  %i.kx = fmul <4 x float> %wide.load180, %broadcast.splat183
  %i.ky = fmul <4 x float> %wide.load181, %broadcast.splat183
  %i.kz = getelementptr i8, ptr %i.ku, i64 16     ; 2 uses
  %wide.load184 = load <4 x float>, ptr %i.ku, align 4, !tbaa !10, !alias.scope !1158, !noalias !1159
  %wide.load185 = load <4 x float>, ptr %i.kz, align 4, !tbaa !10, !alias.scope !1158, !noalias !1159
  %i.la = fsub <4 x float> %wide.load184, %i.kx
  %i.lb = fsub <4 x float> %wide.load185, %i.ky
  store <4 x float> %i.la, ptr %i.ku, align 4, !tbaa !10, !alias.scope !1158, !noalias !1159
  store <4 x float> %i.lb, ptr %i.kz, align 4, !tbaa !10, !alias.scope !1158, !noalias !1159
  %index.next186 = add nuw i64 %index179, 8       ; 2 uses
  %i.lc = icmp eq i64 %index.next186, %n.vec177
  br i1 %i.lc, label %middle.block187, label %vector.body178, !llvm.loop !1138

middle.block187:                                  ; preds = %vector.body178
  br i1 %cmp.n188, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph167.preheader

scalar.ph167.preheader:                           ; preds = %.preheader.i.i.i.i.i.i.i.i, %middle.block187
  %.09.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec177, %middle.block187 ], [ 0, %.preheader.i.i.i.i.i.i.i.i ] ; 5 uses
  %.neg224 = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br i1 %lcmp.mod219.not, label %scalar.ph167.prol.loopexit, label %scalar.ph167.prol

scalar.ph167.prol:                                ; preds = %scalar.ph167.preheader
  %i.ld = getelementptr [4 x i8], ptr %i.kr, i64 %.09.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.le = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i.ph
  %i.lf = load float, ptr %i.le, align 8, !tbaa !10
  %i.lg = load float, ptr %i.ks, align 4, !tbaa !10
  %i.lh = fmul float %i.lf, %i.lg
  %i.li = load float, ptr %i.ld, align 4, !tbaa !10
  %i.lj = fsub float %i.li, %i.lh
  store float %i.lj, ptr %i.ld, align 4, !tbaa !10
  %i.lk = or disjoint i64 %.09.i.i.i.i.i.i.i.i.ph, 1
  br label %scalar.ph167.prol.loopexit

scalar.ph167.prol.loopexit:                       ; preds = %scalar.ph167.prol, %scalar.ph167.preheader
  %.09.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.ph, %scalar.ph167.preheader ], [ %i.lk, %scalar.ph167.prol ]
  %i.ll = icmp eq i64 %i.u, %.neg224
  br i1 %i.ll, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph167

._crit_edge.i.i.i.i.i.i.i.i:                      ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167, %middle.block187
  %i.lm = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i = icmp eq i64 %i.lm, %i.w
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi0EEEEERS5_RKNS6_IT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i, !llvm.loop !1139

scalar.ph167:                                     ; preds = %scalar.ph167.prol.loopexit, %scalar.ph167
  %.09.i.i.i.i.i.i.i.i = phi i64 [ %i.mc, %scalar.ph167 ], [ %.09.i.i.i.i.i.i.i.i.unr, %scalar.ph167.prol.loopexit ] ; 4 uses
  %i.ln = getelementptr [4 x i8], ptr %i.kr, i64 %.09.i.i.i.i.i.i.i.i ; 2 uses
  %i.lo = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.09.i.i.i.i.i.i.i.i
  %i.lp = load float, ptr %i.lo, align 4, !tbaa !10
  %i.lq = load float, ptr %i.ks, align 4, !tbaa !10
  %i.lr = fmul float %i.lp, %i.lq
  %i.ls = load float, ptr %i.ln, align 4, !tbaa !10
  %i.lt = fsub float %i.ls, %i.lr
  store float %i.lt, ptr %i.ln, align 4, !tbaa !10
  %i.lu = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.lv = getelementptr [4 x i8], ptr %i.kr, i64 %i.lu ; 2 uses
  %i.lw = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.lu
  %i.lx = load float, ptr %i.lw, align 4, !tbaa !10
  %i.ly = load float, ptr %i.ks, align 4, !tbaa !10
  %i.lz = fmul float %i.lx, %i.ly
  %i.ma = load float, ptr %i.lv, align 4, !tbaa !10
  %i.mb = fsub float %i.ma, %i.lz
  store float %i.mb, ptr %i.lv, align 4, !tbaa !10
  %i.mc = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.mc, %i.u
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.1, label %._crit_edge.i.i.i.i.i.i.i.i, label %scalar.ph167, !llvm.loop !1140

_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi0EEEEERS5_RKNS6_IT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i, %.loopexit.i.i.i.i.i.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #14
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #14
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKf.exit

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEmLERKf.exit: ; preds = %scalar.ph190, %middle.block201, %.preheader.lr.ph.i.i.i.i.i.i, %bb.b, %_ZN5Eigen7NoAliasINS_5BlockINS1_INS_6MatrixIfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS_13CwiseBinaryOpINS_8internal17scalar_product_opIffEEKNS_14CwiseNullaryOpINSB_18scalar_constant_opIfEEKNS2_IfLin1ELi1ELi0ELi3ELi1EEEEEKNS_3MapISH_Li0ENS_6StrideILi0ELi0EEEEEEENS_9TransposeIKNSR_IKNS1_INS1_IS3_Li1ELi3ELb0EEELi1ELin1ELb0EEEEEEELi0EEEEERS5_RKNS6_IT_EE.exit
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS3_INS_7ProductINS_5BlockINSC_INS5_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSC_INSC_ISD_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEELi3ELi0EE3runERSP_(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #5 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !1189, !nonnull !15, !align !182 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !107  ; 11 uses
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !292
  %i.f = ptrtoint ptr %i.e to i64                 ; 2 uses
  %i.g = and i64 %i.f, 3
  %.not.i = icmp eq i64 %i.g, 0
  br i1 %.not.i, label %bb.b, label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit

bb.b:                                             ; preds = %bb.a
  %i.h = lshr exact i64 %i.f, 2
  %i.i = sub nsw i64 0, %i.h
  %i.j = and i64 %i.i, 3
  %i.k = tail call i64 @llvm.smin.i64(i64 %i.j, i64 %i.d)
  br label %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit

_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit: ; preds = %bb.a, %bb.b
  %.0.i = phi i64 [ %i.k, %bb.b ], [ %i.d, %bb.a ] ; 15 uses
  %i.l = sub nsw i64 %i.d, %.0.i                  ; 2 uses
  %i.m = sdiv i64 %i.l, 4                         ; 2 uses
  %i.n = shl nsw i64 %i.m, 2                      ; 2 uses
  %i.o = add nsw i64 %i.n, %.0.i                  ; 9 uses
  %i.p = icmp sgt i64 %.0.i, 0
  br i1 %i.p, label %.lr.ph.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen8internal13first_alignedILi16EflEET1_PKT0_S2_.exit
  %i.q = load ptr, ptr %0, align 8, !tbaa !1190, !nonnull !15, !align !182
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !315  ; 11 uses
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !1191, !nonnull !15, !align !182 ; 3 uses
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !290, !noalias !1192 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.t, i64 104
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !294, !noalias !1193 ; 14 uses
  %i.x = getelementptr inbounds nuw i8, ptr %i.t, i64 120
  %i.y = load i64, ptr %i.x, align 8, !tbaa !107, !noalias !1193 ; 4 uses
  %i.z = icmp eq i64 %i.y, 0
  br i1 %i.z, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i, label %.lr.ph.split.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.us.preheader.i: ; preds = %.lr.ph.i
  %i.aa = shl i64 %.0.i, 2
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.r, i8 0, i64 %i.aa, i1 false), !tbaa !10
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_7ProductINS_5BlockINSE_INS7_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSE_INSE_ISF_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EEEEEvRT_ll.exit

.lr.ph.split.i:                                   ; preds = %.lr.ph.i
  %i.ab = icmp sgt i64 %i.y, 1
  br i1 %i.ab, label %.lr.ph.i.i.i.i.i.preheader.us.i.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader

.lr.ph.i.i.i.i.i.preheader.us.i.preheader:        ; preds = %.lr.ph.split.i
  %i.ac = add nsw i64 %i.y, -1                    ; 2 uses
  %i.ad = add nsw i64 %i.y, -2
  %xtraiter106 = and i64 %i.ac, 3                 ; 3 uses
  %i.ae = icmp ult i64 %i.ad, 3
  %unroll_iter = and i64 %i.ac, -4
  %lcmp.mod107.not = icmp eq i64 %xtraiter106, 0
  %lcmp.mod109 = icmp ne i64 %xtraiter106, 0
  br label %.lr.ph.i.i.i.i.i.preheader.us.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader: ; preds = %.lr.ph.split.i
  %min.iters.check = icmp ult i64 %.0.i, 12
  br i1 %min.iters.check, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader104, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader
  %i.af = shl i64 %.0.i, 2                        ; 2 uses
  %i.ag = getelementptr i8, ptr %i.r, i64 %i.af   ; 2 uses
  %i.ah = getelementptr i8, ptr %i.u, i64 %i.af
  %bound0 = icmp ult ptr %i.r, %i.ah
  %bound1 = icmp ult ptr %i.u, %i.ag
  %found.conflict = and i1 %bound0, %bound1
  %i.ai = getelementptr i8, ptr %i.w, i64 4
  %bound062 = icmp ult ptr %i.r, %i.ai
  %bound163 = icmp ult ptr %i.w, %i.ag
  %found.conflict64 = and i1 %bound062, %bound163
  %conflict.rdx = or i1 %found.conflict, %found.conflict64
  br i1 %conflict.rdx, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIfLin1ELi1ELi0ELi3ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_7ProductINS_5BlockINSB_INS4_IfLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELin1ELin1ELb0EEENS_9TransposeIKNSB_INSB_ISC_Li1ELi3ELb0EEELi1ELin1ELb0EEEEELi1EEEEENS0_9assign_opIffEELi0EE11assignCoeffEl.exit.i.preheader104, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %.0.i, 9223372036854775800     ; 3 uses
  %i.aj = load float, ptr %i.w, align 4, !tbaa !10, !alias.scope !1194
  %broadcast.splatinsert = insertelement <4 x float> poison, float %i.aj, i64 0
  %broadcast.splat = shufflevector <4 x float> %broadcast.splatinsert, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.ak = getelementptr inbounds nuw [4 x i8], ptr %i.u, i64 %index ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 16
  %wide.load = load <4 x float>, ptr %i.ak, align 4, !tbaa !10, !alias.scope !1195
  %wide.load65 = load <4 x float>, ptr %i.al, align 4, !tbaa !10, !alias.scope !1195
  %i.am = fmul <4 x float> %wide.load, %broadcast.splat
  %i.an = fmul <4 x float> %wide.load65, %broadcast.splat
  %i.ao = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %index ; 2 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ao, i64 16
end_hunk_2
