Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/line3d?download=true
inline.NumInlined: 5081
inline.NumDeleted: 3049
loop-unroll.NumCompletelyUnrolled: 13
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 19
begin_hunk_0_@_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS3_INS_7ProductINS4_IS6_Lin1ELin1ELb0EEENS4_INS5_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEELi3ELi0EE3runERSH_:bb.a
  %i.ga = fmul double %i.fx, %i.fz
  %i.gb = fadd double %i.fu, %i.ga                ; 3 uses
  %i.gc = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25, 4 ; 2 uses
  %niter118.next.3 = add i64 %niter118, 4         ; 2 uses
  %niter118.ncmp.3 = icmp eq i64 %niter118.next.3, %unroll_iter117
  br i1 %niter118.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, label %.lr.ph.i.i.i.i.i.us.i24, !llvm.loop !136

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.us.i24
  br i1 %lcmp.mod114.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil.preheader

.lr.ph.i.i.i.i.i.us.i24.epil.preheader:           ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa, %.lr.ph.i.i.i.i.i.preheader.us.i22
  %.01725.i.i.i.i.i.us.i25.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  %.02324.i.i.i.i.i.us.i26.epil.init = phi double [ %i.fa, %.lr.ph.i.i.i.i.i.preheader.us.i22 ], [ %i.gb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph.i.i.i.i.i.us.i24.epil

.lr.ph.i.i.i.i.i.us.i24.epil:                     ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader
  %.01725.i.i.i.i.i.us.i25.epil = phi i64 [ %i.gj, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.01725.i.i.i.i.i.us.i25.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ] ; 3 uses
  %.02324.i.i.i.i.i.us.i26.epil = phi double [ %i.gi, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ %.02324.i.i.i.i.i.us.i26.epil.init, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %epil.iter113 = phi i64 [ %epil.iter113.next, %.lr.ph.i.i.i.i.i.us.i24.epil ], [ 0, %.lr.ph.i.i.i.i.i.us.i24.epil.preheader ]
  %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil = mul i64 %.01725.i.i.i.i.i.us.i25.epil, 24
  %i.gd = getelementptr i8, ptr %i.ex, i64 %.idx.i.i.i.i.i.i.i.i.i.us.i27.epil
  %i.ge = load double, ptr %i.gd, align 8, !tbaa !10
  %i.gf = getelementptr [8 x i8], ptr %i.dn, i64 %.01725.i.i.i.i.i.us.i25.epil
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !10
  %i.gh = fmul double %i.ge, %i.gg
  %i.gi = fadd double %.02324.i.i.i.i.i.us.i26.epil, %i.gh ; 2 uses
  %i.gj = add nuw nsw i64 %.01725.i.i.i.i.i.us.i25.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, label %.lr.ph.i.i.i.i.i.us.i24.epil, !llvm.loop !149

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29: ; preds = %.lr.ph.i.i.i.i.i.us.i24.epil, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa
  %.lcssa = phi double [ %i.gb, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29.unr-lcssa ], [ %i.gi, %.lr.ph.i.i.i.i.i.us.i24.epil ]
  %i.gk = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.us6.i23 ; 2 uses
  %i.gl = load double, ptr %i.gk, align 8, !tbaa !10
  %i.gm = fsub double %i.gl, %.lcssa
  store double %i.gm, ptr %i.gk, align 8, !tbaa !10
  %i.gn = add nsw i64 %.05.us6.i23, 1             ; 2 uses
  %exitcond11.not.i30 = icmp eq i64 %i.gn, %i.d
  br i1 %exitcond11.not.i30, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %.lr.ph.i.i.i.i.i.preheader.us.i22, !llvm.loop !138

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19
  %.05.i20 = phi i64 [ %i.hd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19 ], [ %.05.i20.unr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit ] ; 4 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %.05.i20
  %i.gp = load double, ptr %i.go, align 8, !tbaa !10
  %i.gq = load double, ptr %i.dn, align 8, !tbaa !10
  %i.gr = fmul double %i.gp, %i.gq
  %i.gs = getelementptr inbounds [8 x i8], ptr %i.di, i64 %.05.i20 ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !10
  %i.gu = fsub double %i.gt, %i.gr
  store double %i.gu, ptr %i.gs, align 8, !tbaa !10
  %i.gv = add nsw i64 %.05.i20, 1                 ; 2 uses
  %i.gw = getelementptr inbounds [8 x i8], ptr %i.dl, i64 %i.gv
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !10
  %i.gy = load double, ptr %i.dn, align 8, !tbaa !10
  %i.gz = fmul double %i.gx, %i.gy
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.di, i64 %i.gv ; 2 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !10
  %i.hc = fsub double %i.hb, %i.gz
  store double %i.hc, ptr %i.ha, align 8, !tbaa !10
  %i.hd = add nsw i64 %.05.i20, 2                 ; 2 uses
  %exitcond.not.i21.1 = icmp eq i64 %i.hd, %i.d
  br i1 %exitcond.not.i21.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, !llvm.loop !150

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS5_INS_7ProductINS6_IS8_Lin1ELin1ELb0EEENS6_INS7_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit31: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19.prol.loopexit, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.i19, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us.i29, %middle.block90, %._crit_edge, %.lr.ph.i17
  ret void

bb.c:                                             ; preds = %.lr.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit
  %.036 = phi i64 [ %.0.i, %.lr.ph ], [ %i.iu, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit ] ; 3 uses
  %i.he = load ptr, ptr %0, align 8, !tbaa !157, !nonnull !155, !align !156
  %i.hf = load ptr, ptr %i.he, align 8, !tbaa !51
  %i.hg = load ptr, ptr %i.df, align 8, !tbaa !158, !nonnull !155, !align !156 ; 3 uses
  %i.hh = getelementptr inbounds nuw i8, ptr %i.hg, i64 144
  %i.hi = load i64, ptr %i.hh, align 8, !tbaa !49 ; 5 uses
  %i.hj = icmp sgt i64 %i.hi, 0
  br i1 %i.hj, label %.lr.ph.i.i.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

.lr.ph.i.i.i.i:                                   ; preds = %bb.c
  %i.hk = getelementptr inbounds nuw i8, ptr %i.hg, i64 128
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hg, i64 112
  %i.hm = load ptr, ptr %i.hl, align 8, !tbaa !30
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.hm, i64 %.036 ; 3 uses
  %i.ho = load ptr, ptr %i.hk, align 8, !tbaa !32 ; 3 uses
  %xtraiter103 = and i64 %i.hi, 1
  %i.hp = icmp eq i64 %i.hi, 1
  br i1 %i.hp, label %.epil.preheader, label %.lr.ph.i.i.i.i.new

.lr.ph.i.i.i.i.new:                               ; preds = %.lr.ph.i.i.i.i
  %unroll_iter108 = and i64 %i.hi, 9223372036854775806
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %.lr.ph.i.i.i.i.new
  %i.hq = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i.new ], [ %i.ih, %bb.d ]
  %.013.i.i.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %i.ii, %bb.d ] ; 4 uses
  %niter109 = phi i64 [ 0, %.lr.ph.i.i.i.i.new ], [ %niter109.next.1, %bb.d ]
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.013.i.i.i.i, 24
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx.i.i.i.i.i
  %i.hs = load <2 x double>, ptr %i.hr, align 1, !tbaa !8
  %i.ht = getelementptr [8 x i8], ptr %i.ho, i64 %.013.i.i.i.i
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !10
  %i.hv = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fmul <2 x double> %i.hs, %i.hw
  %i.hy = fadd <2 x double> %i.hq, %i.hx
  %i.hz = or disjoint i64 %.013.i.i.i.i, 1        ; 2 uses
  %.idx.i.i.i.i.i.1 = mul nuw nsw i64 %i.hz, 24
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx.i.i.i.i.i.1
  %i.ib = load <2 x double>, ptr %i.ia, align 1, !tbaa !8
  %i.ic = getelementptr [8 x i8], ptr %i.ho, i64 %i.hz
  %i.id = load double, ptr %i.ic, align 8, !tbaa !10
  %i.ie = insertelement <2 x double> poison, double %i.id, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = fmul <2 x double> %i.ib, %i.if
  %i.ih = fadd <2 x double> %i.hy, %i.ig          ; 3 uses
  %i.ii = add nuw nsw i64 %.013.i.i.i.i, 2        ; 2 uses
  %niter109.next.1 = add nuw nsw i64 %niter109, 2 ; 2 uses
  %niter109.ncmp.1 = icmp eq i64 %niter109.next.1, %unroll_iter108
  br i1 %niter109.ncmp.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, label %bb.d, !llvm.loop !151

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa: ; preds = %bb.d
  %lcmp.mod105.not = icmp eq i64 %xtraiter103, 0
  br i1 %lcmp.mod105.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit, label %.epil.preheader

.epil.preheader:                                  ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i
  %.epil.init = phi <2 x double> [ zeroinitializer, %.lr.ph.i.i.i.i ], [ %i.ih, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ]
  %.013.i.i.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i ], [ %i.ii, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod107 = trunc i64 %i.hi to i1
  tail call void @llvm.assume(i1 %lcmp.mod107)
  %.idx.i.i.i.i.i.epil = mul nuw nsw i64 %.013.i.i.i.i.epil.init, 24
  %i.ij = getelementptr inbounds nuw i8, ptr %i.hn, i64 %.idx.i.i.i.i.i.epil
  %i.ik = load <2 x double>, ptr %i.ij, align 1, !tbaa !8
  %i.il = getelementptr [8 x i8], ptr %i.ho, i64 %.013.i.i.i.i.epil.init
  %i.im = load double, ptr %i.il, align 8, !tbaa !10
  %i.in = insertelement <2 x double> poison, double %i.im, i64 0
  %i.io = shufflevector <2 x double> %i.in, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ip = fmul <2 x double> %i.ik, %i.io
  %i.iq = fadd <2 x double> %.epil.init, %i.ip
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit: ; preds = %.epil.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa, %bb.c
  %.0.i.i.i = phi <2 x double> [ zeroinitializer, %bb.c ], [ %i.ih, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EE12assignPacketILi16ELi0EDv2_dEEvl.exit.loopexit.unr-lcssa ], [ %i.iq, %.epil.preheader ]
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.hf, i64 %.036 ; 2 uses
  %i.is = load <2 x double>, ptr %i.ir, align 16, !tbaa !8
  %i.it = fsub <2 x double> %i.is, %.0.i.i.i
  store <2 x double> %i.it, ptr %i.ir, align 16, !tbaa !8
  %i.iu = add nsw i64 %.036, 2                    ; 2 uses
  %i.iv = icmp slt i64 %i.iu, %i.n
  br i1 %i.iv, label %bb.c, label %._crit_edge, !llvm.loop !152
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK5Eigen4LDLTINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1EE22_solve_impl_transposedILb1ENS_7ProductINS_9TransposeIS2_EENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEENS_5BlockINS1_IdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(132) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(48) %2) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.440.8.copyload = load i64, ptr %1, align 8
  %.sroa.641.8..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 8
  %.sroa.641.8.copyload = load ptr, ptr %.sroa.641.8..sroa_idx, align 8 ; 2 uses
  %i.b = inttoptr i64 %.sroa.440.8.copyload to ptr ; 6 uses
  %i.c = load <2 x double>, ptr %i.b, align 1, !tbaa !8
  %i.d = load <2 x double>, ptr %.sroa.641.8.copyload, align 1, !tbaa !8 ; 3 uses
  %i.e = fmul <2 x double> %i.c, %i.d             ; 2 uses
  %i.f = getelementptr i8, ptr %i.b, i64 16
  %i.g = load double, ptr %i.f, align 8, !tbaa !10
  %i.h = getelementptr inbounds nuw i8, ptr %.sroa.641.8.copyload, i64 16
  %i.i = load double, ptr %i.h, align 8, !tbaa !10 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  %i.k = load <2 x double>, ptr %i.j, align 8, !tbaa !8
  %i.l = fmul <2 x double> %i.d, %i.k             ; 2 uses
  %i.m = getelementptr i8, ptr %i.b, i64 40
  %i.n = load double, ptr %i.m, align 8, !tbaa !10
  %i.o = shufflevector <2 x double> %i.e, <2 x double> %i.l, <2 x i32> <i32 0, i32 2>
  %i.p = shufflevector <2 x double> %i.e, <2 x double> %i.l, <2 x i32> <i32 1, i32 3>
  %i.q = fadd <2 x double> %i.o, %i.p
  %i.r = insertelement <2 x double> poison, double %i.i, i64 0
  %i.s = shufflevector <2 x double> %i.r, <2 x double> poison, <2 x i32> zeroinitializer
  %i.t = insertelement <2 x double> poison, double %i.g, i64 0
  %i.u = insertelement <2 x double> %i.t, double %i.n, i64 1
  %i.v = fmul <2 x double> %i.s, %i.u
  %i.w = fadd <2 x double> %i.q, %i.v
  %i.x = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.y = load <2 x double>, ptr %i.x, align 8, !tbaa !8
  %i.z = fmul <2 x double> %i.d, %i.y             ; 2 uses
  %shift = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.z, %shift
  %i.aa = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.ab = getelementptr i8, ptr %i.b, i64 64
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !10
  %i.ad = fmul double %i.i, %i.ac
  %i.ae = fadd double %i.ad, %i.aa
  %i.af = load ptr, ptr %2, align 8, !tbaa !17    ; 2 uses
  store <2 x double> %i.w, ptr %i.af, align 1, !tbaa !8
  %i.ag = getelementptr i8, ptr %i.af, i64 16
  store double %i.ae, ptr %i.ag, align 8, !tbaa !10
  %i.ah = load i32, ptr %i.a, align 8, !tbaa !22  ; 3 uses
  %.not.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ah, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.ai = sext i32 %i.ah to i64
  %i.aj = load ptr, ptr %2, align 8, !tbaa !17, !noalias !180 ; 3 uses
  %i.ak = getelementptr inbounds [8 x i8], ptr %i.aj, i64 %i.ai ; 2 uses
  %i.al = load double, ptr %i.aj, align 8, !tbaa !10
  %i.am = load double, ptr %i.ak, align 8, !tbaa !10
  store double %i.am, ptr %i.aj, align 8, !tbaa !10
  store double %i.al, ptr %i.ak, align 8, !tbaa !10
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.ao = load i32, ptr %i.an, align 4, !tbaa !22 ; 3 uses
  %.not.1.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.ao, 1 ; 2 uses
  br i1 %.not.1.i.i.i.i.i.i.i.i.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.ap = sext i32 %i.ao to i64
  %i.aq = load ptr, ptr %2, align 8, !tbaa !17, !noalias !180 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %i.as = getelementptr inbounds [8 x i8], ptr %i.aq, i64 %i.ap ; 2 uses
  %i.at = load double, ptr %i.ar, align 8, !tbaa !10
  %i.au = load double, ptr %i.as, align 8, !tbaa !10
  store double %i.au, ptr %i.ar, align 8, !tbaa !10
  store double %i.at, ptr %i.as, align 8, !tbaa !10
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.aw = load i32, ptr %i.av, align 8, !tbaa !22 ; 3 uses
  %.not.2.i.i.i.i.i.i.i.i.i.i = icmp eq i32 %i.aw, 2 ; 2 uses
  br i1 %.not.2.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS5_INS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEELi2EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.ax = sext i32 %i.aw to i64
  %i.ay = load ptr, ptr %2, align 8, !tbaa !17, !noalias !180 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16 ; 2 uses
  %i.ba = getelementptr inbounds [8 x i8], ptr %i.ay, i64 %i.ax ; 2 uses
  %i.bb = load double, ptr %i.az, align 8, !tbaa !10
  %i.bc = load double, ptr %i.ba, align 8, !tbaa !10
  store double %i.bc, ptr %i.az, align 8, !tbaa !10
  store double %i.bb, ptr %i.ba, align 8, !tbaa !10
  br label %_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS5_INS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEELi2EEEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS5_INS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEELi2EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.e, %bb.f
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.be = load ptr, ptr %2, align 8, !tbaa !17, !noalias !181 ; 5 uses
  %i.bf = load double, ptr %i.bd, align 8, !tbaa !10
  %i.bg = load double, ptr %i.be, align 8, !tbaa !10 ; 3 uses
  %i.bh = fmul double %i.bf, %i.bg
  %i.bi = getelementptr inbounds nuw i8, ptr %i.be, i64 8 ; 5 uses
  %i.bj = load double, ptr %i.bi, align 8, !tbaa !10
  %i.bk = fsub double %i.bj, %i.bh                ; 3 uses
  store double %i.bk, ptr %i.bi, align 8, !tbaa !10
  %i.bl = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !10
  %i.bn = fmul double %i.bg, %i.bm
  %i.bo = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !10
  %i.bq = fmul double %i.bk, %i.bp
  %i.br = fadd double %i.bn, %i.bq
  %i.bs = getelementptr inbounds nuw i8, ptr %i.be, i64 16 ; 3 uses
  %i.bt = load double, ptr %i.bs, align 8, !tbaa !10
  %i.bu = fsub double %i.bt, %i.br                ; 2 uses
  store double %i.bu, ptr %i.bs, align 8, !tbaa !10
  %i.bv = load double, ptr %0, align 8, !tbaa !10 ; 2 uses
  %i.bw = tail call noundef double @llvm.fabs.f64(double %i.bv)
  %i.bx = fcmp ogt double %i.bw, f0x0010000000000000
  %i.by = fdiv double %i.bg, %i.bv
  %spec.select = select i1 %i.bx, double %i.by, double 0.000000e+00 ; 2 uses
  store double %spec.select, ptr %i.be, align 8, !tbaa !10
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !10 ; 2 uses
  %i.cb = tail call noundef double @llvm.fabs.f64(double %i.ca)
  %i.cc = fcmp ogt double %i.cb, f0x0010000000000000
  %i.cd = fdiv double %i.bk, %i.ca
  %storemerge = select i1 %i.cc, double %i.cd, double 0.000000e+00 ; 2 uses
  store double %storemerge, ptr %i.bi, align 8, !tbaa !10
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !10 ; 2 uses
  %i.cg = tail call noundef double @llvm.fabs.f64(double %i.cf)
  %i.ch = fcmp ogt double %i.cg, f0x0010000000000000
  %i.ci = fdiv double %i.bu, %i.cf
  %storemerge47 = select i1 %i.ch, double %i.ci, double 0.000000e+00 ; 2 uses
  store double %storemerge47, ptr %i.bs, align 8, !tbaa !10
  %i.cj = load double, ptr %i.bo, align 8, !tbaa !10
  %i.ck = fmul double %i.cj, %storemerge47
  %i.cl = fsub double %storemerge, %i.ck
  store double %i.cl, ptr %i.bi, align 8, !tbaa !10
  %i.cm = load <2 x double>, ptr %i.bd, align 8, !tbaa !8
  %i.cn = load <2 x double>, ptr %i.bi, align 8, !tbaa !8
  %i.co = fmul <2 x double> %i.cm, %i.cn          ; 2 uses
  %shift49 = shufflevector <2 x double> %i.co, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop50 = fadd <2 x double> %i.co, %shift49
  %i.cp = extractelement <2 x double> %foldExtExtBinop50, i64 0
  %i.cq = fsub double %spec.select, %i.cp
  store double %i.cq, ptr %i.be, align 8, !tbaa !10
  br i1 %.not.2.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %bb.g

bb.g:                                             ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS5_INS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEELi2EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %i.cr = sext i32 %i.aw to i64
  %3 = load ptr, ptr %2, align 8, !tbaa !17, !noalias !182 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 2 uses
  %i.ct = getelementptr inbounds [8 x i8], ptr %3, i64 %i.cr ; 2 uses
  %i.cu = load double, ptr %i.cs, align 8, !tbaa !10
  %i.cv = load double, ptr %i.ct, align 8, !tbaa !10
  store double %i.cv, ptr %i.cs, align 8, !tbaa !10
  store double %i.cu, ptr %i.ct, align 8, !tbaa !10
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_14TranspositionsILi3ELi3EiEENS5_INS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEENS1_IdLi3ELi1ELi0ELi3ELi1EEELi0EEELi2EEEEERS3_RKNS_9DenseBaseIT_EE.exit
  br i1 %.not.1.i.i.i.i.i.i.i.i.i.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.cw = sext i32 %i.ao to i64
  %4 = load ptr, ptr %2, align 8, !tbaa !17, !noalias !182 ; 2 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %4, i64 %i.cw ; 2 uses
  %i.cz = load double, ptr %i.cx, align 8, !tbaa !10
  %i.da = load double, ptr %i.cy, align 8, !tbaa !10
  store double %i.da, ptr %i.cx, align 8, !tbaa !10
  store double %i.cz, ptr %i.cy, align 8, !tbaa !10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  br i1 %.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_9TransposeINS_18TranspositionsBaseINS_14TranspositionsILi3ELi3EiEEEEEES3_Li2EEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.db = sext i32 %i.ah to i64
  %5 = load ptr, ptr %2, align 8, !tbaa !17, !noalias !182 ; 3 uses
  %i.dc = getelementptr inbounds [8 x i8], ptr %5, i64 %i.db ; 2 uses
  %i.dd = load double, ptr %5, align 8, !tbaa !10
  %i.de = load double, ptr %i.dc, align 8, !tbaa !10
  store double %i.de, ptr %5, align 8, !tbaa !10
  store double %i.dd, ptr %i.dc, align 8, !tbaa !10
  br label %_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_9TransposeINS_18TranspositionsBaseINS_14TranspositionsILi3ELi3EiEEEEEES3_Li2EEEEERS3_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEaSINS_7ProductINS_9TransposeINS_18TranspositionsBaseINS_14TranspositionsILi3ELi3EiEEEEEES3_Li2EEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %bb.j, %bb.k
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fabs.v2f64(<2 x double>) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite)
declare void @llvm.experimental.noalias.scope.decl(metadata) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.sqrt.f64(double) #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { inlinehint mustprogress uwtable "min-legal-vector-width"="128" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+crc32,+cx8,+fxsr,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87" "tune-cpu"="generic" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #7 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!"Simple C++ TBAA"}
!4 = !{!"omnipotent char", !3, i64 0}
!5 = !{!"int", !4, i64 0}
!6 = !{!"__libc_errno", !5, i64 0}
!7 = !{!6, !5, i64 0}
!8 = !{!4, !4, i64 0}
!9 = !{!"double", !4, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!"_ZTSN5Eigen8internal10SignMatrixE", !4, i64 0}
!12 = !{!"any pointer", !4, i64 0}
!13 = !{!"p1 double", !12, i64 0}
!14 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi3EEE"}
!15 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi1EEE"}
!16 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEELi0EEE", !13, i64 0, !14, i64 8, !15, i64 9}
!17 = !{!16, !13, i64 0}
!18 = !{!"long", !4, i64 0}
!19 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLin1EEE", !18, i64 0}
!20 = !{!19, !18, i64 0}
!21 = !{!"_ZTSN5Eigen8internal19variable_if_dynamicIlLi0EEE"}
!22 = !{!5, !5, i64 0}
!23 = !{!"llvm.loop.mustprogress"}
!24 = !{!"llvm.loop.isvectorized", i32 1}
!25 = !{!"llvm.loop.unroll.runtime.disable"}
!26 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEELi0EEE", !13, i64 0, !19, i64 8, !15, i64 16}
!27 = !{!26, !13, i64 0}
!28 = !{!"p1 _ZTSN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE", !12, i64 0}
!29 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS3_IdLin1ELin1ELi0ELi3ELi3EEEEE", !13, i64 0, !15, i64 8, !14, i64 9}
!30 = !{!29, !13, i64 0}
!31 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEENS3_IdLin1ELi1ELi0ELi3ELi1EEEEE", !13, i64 0, !15, i64 8, !14, i64 9}
!32 = !{!31, !13, i64 0}
!33 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi0EEE", !13, i64 0, !19, i64 8, !19, i64 16}
!34 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEELi1EEE", !33, i64 0}
!35 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ELb1EEE", !34, i64 0, !28, i64 24, !19, i64 32, !19, i64 40, !18, i64 48}
!36 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ENS_5DenseEEE", !35, i64 0}
!37 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEE", !36, i64 0}
!38 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi0EEE", !13, i64 0, !19, i64 8, !15, i64 16}
!39 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEE", !38, i64 0}
!40 = !{!"p1 _ZTSN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE", !12, i64 0}
!41 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0ELb1EEE", !39, i64 0, !40, i64 24, !19, i64 32, !21, i64 40, !18, i64 48}
!42 = !{!"_ZTSN5Eigen9BlockImplINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0ENS_5DenseEEE", !41, i64 0}
!43 = !{!"_ZTSN5Eigen5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEE", !42, i64 0}
!44 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0ELb1EEE", !29, i64 0}
!45 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEEE", !44, i64 0}
!46 = !{!"_ZTSN5Eigen8internal15block_evaluatorINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0ELb1EEE", !31, i64 0}
!47 = !{!"_ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEEE", !46, i64 0}
!48 = !{!"_ZTSN5Eigen8internal17product_evaluatorINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEELi3ENS_10DenseShapeESA_ddEE", !37, i64 0, !43, i64 56, !45, i64 112, !47, i64 128, !18, i64 144}
!49 = !{!48, !18, i64 144}
!50 = !{!"_ZTSN5Eigen8internal17mapbase_evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEENS3_IdLin1ELi1ELi0ELi3ELi1EEEEE", !13, i64 0, !15, i64 8, !14, i64 9}
!51 = !{!50, !13, i64 0}
!52 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEE", !12, i64 0}
!53 = !{!"p1 _ZTSN5Eigen8internal9evaluatorINS_7ProductINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEE", !12, i64 0}
!54 = !{!"p1 _ZTSN5Eigen8internal13sub_assign_opIddEE", !12, i64 0}
!55 = !{!"p1 _ZTSN5Eigen5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEE", !12, i64 0}
!56 = distinct !{!56, !"_ZNK3g2o6Line3D1dEv"}
!57 = distinct !{!57, !56, !"_ZNK3g2o6Line3D1dEv: argument 0"}
!58 = distinct !{!58, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4ldltEv"}
!59 = distinct !{!59, !58, !"_ZNK5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE4ldltEv: argument 0"}
!60 = distinct !{!60, !"_ZNK3g2o6Line3D1wEv"}
!61 = distinct !{!61, !60, !"_ZNK3g2o6Line3D1wEv: argument 0"}
!62 = distinct !{!62, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE4headILi3EEENS3_22FixedSegmentReturnTypeIXT_EE4TypeEl"}
!63 = distinct !{!63, !62, !"_ZN5Eigen9DenseBaseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEEE4headILi3EEENS3_22FixedSegmentReturnTypeIXT_EE4TypeEl: argument 0"}
!64 = !{!57}
!65 = !{!59}
!66 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi9ELi0ELi0EEE", !4, i64 0}
!67 = !{!"_ZTSN5Eigen12DenseStorageIdLi9ELi3ELi3ELi0EEE", !66, i64 0}
!68 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEEE", !67, i64 0}
!69 = !{!"_ZTSN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEE", !68, i64 0}
!70 = !{!"_ZTSN5Eigen8internal11plain_arrayIiLi3ELi0ELi0EEE", !4, i64 0}
!71 = !{!"_ZTSN5Eigen12DenseStorageIiLi3ELi3ELi1ELi0EEE", !70, i64 0}
!72 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIiLi3ELi1ELi0ELi3ELi1EEEEE", !71, i64 0}
!73 = !{!"_ZTSN5Eigen6MatrixIiLi3ELi1ELi0ELi3ELi1EEE", !72, i64 0}
!74 = !{!"_ZTSN5Eigen14TranspositionsILi3ELi3EiEE", !73, i64 0}
!75 = !{!"_ZTSN5Eigen8internal11plain_arrayIdLi3ELi0ELi0EEE", !4, i64 0}
!76 = !{!"_ZTSN5Eigen12DenseStorageIdLi3ELi3ELi1ELi0EEE", !75, i64 0}
!77 = !{!"_ZTSN5Eigen15PlainObjectBaseINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEEEE", !76, i64 0}
!78 = !{!"_ZTSN5Eigen6MatrixIdLi3ELi1ELi0ELi3ELi1EEE", !77, i64 0}
!79 = !{!"bool", !4, i64 0}
!80 = !{!"_ZTSN5Eigen15ComputationInfoE", !4, i64 0}
!81 = !{!"_ZTSN5Eigen4LDLTINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi1EEE", !69, i64 0, !9, i64 72, !74, i64 80, !78, i64 96, !11, i64 120, !79, i64 124, !80, i64 128}
!82 = !{!81, !9, i64 72}
!83 = !{!81, !79, i64 124}
!84 = !{!81, !11, i64 120}
!85 = !{!81, !80, i64 128}
!86 = !{!61}
!87 = !{!63}
!88 = !{!"p1 _ZTSN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE", !12, i64 0}
!89 = !{!88, !88, i64 0}
!90 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEELi1EEE", !16, i64 0}
!91 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0ELb1EEE", !90, i64 0, !88, i64 16, !19, i64 24, !21, i64 32, !18, i64 40}
!92 = !{!91, !18, i64 40}
!93 = distinct !{!93, !"_ZNK5Eigen9TransformIdLi3ELi1ELi0EEmlINS_5BlockIKNS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEEEKNS_8internal28transform_right_product_implIS1_T_XquLNS8_16transform_traitsIS1_EUt_E0ELi0EqueqcvisrSA_17RowsAtCompileTimecviLSD_4ELi1ELi2EEXsrSA_17ColsAtCompileTimeEE10ResultTypeERKNS_9EigenBaseISA_EE"}
!94 = distinct !{!94, !93, !"_ZNK5Eigen9TransformIdLi3ELi1ELi0EEmlINS_5BlockIKNS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEEEKNS_8internal28transform_right_product_implIS1_T_XquLNS8_16transform_traitsIS1_EUt_E0ELi0EqueqcvisrSA_17RowsAtCompileTimecviLSD_4ELi1ELi2EEXsrSA_17ColsAtCompileTimeEE10ResultTypeERKNS_9EigenBaseISA_EE: argument 0"}
!95 = distinct !{!95, !"_ZN5Eigen8internal28transform_right_product_implINS_9TransformIdLi3ELi1ELi0EEENS_5BlockIKNS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEELi2ELi1EE3runERKS3_RKS8_"}
!96 = distinct !{!96, !95, !"_ZN5Eigen8internal28transform_right_product_implINS_9TransformIdLi3ELi1ELi0EEENS_5BlockIKNS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEELi2ELi1EE3runERKS3_RKS8_: argument 0"}
!97 = distinct !{!97, !"_ZN3g2o8internal22normalizeCartesianLineERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE"}
!98 = distinct !{!98, !97, !"_ZN3g2o8internal22normalizeCartesianLineERKN5Eigen6MatrixIdLi6ELi1ELi0ELi6ELi1EEE: argument 0"}
!99 = !{!96, !94}
!100 = !{!98}
!101 = distinct !{!101, !23}
!102 = distinct !{!102, !"LVerDomain"}
!103 = distinct !{!103, !102}
!104 = distinct !{!104, !102}
!105 = distinct !{!105, !23, !24, !25}
!106 = distinct !{!106, !23, !24}
!107 = distinct !{!107, !23}
!108 = distinct !{!108, !23}
!109 = distinct !{!109, !23, !24, !25}
!110 = distinct !{!110, !23, !25, !24}
!111 = distinct !{!111, !23, !24, !25}
!112 = distinct !{!112, !23, !25, !24}
!113 = distinct !{!113, !23}
!114 = distinct !{!114, !23}
!115 = distinct !{!115, !23}
!116 = !{!103}
!117 = !{!104}
!118 = !{!28, !28, i64 0}
!119 = !{!"_ZTSN5Eigen7MapBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEELi1EEE", !26, i64 0}
!120 = !{!"_ZTSN5Eigen8internal15BlockImpl_denseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0ELb1EEE", !119, i64 0, !28, i64 24, !19, i64 32, !19, i64 40, !18, i64 48}
!121 = !{!120, !18, i64 48}
!122 = !{!52, !52, i64 0}
!123 = !{!53, !53, i64 0}
!124 = !{!54, !54, i64 0}
!125 = !{!55, !55, i64 0}
!126 = !{!11, !11, i64 0}
!127 = distinct !{!127, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl"}
!128 = distinct !{!128, !127, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!129 = distinct !{!129, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE3colEl"}
!130 = distinct !{!130, !129, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE3colEl: argument 0"}
!131 = distinct !{!131, !"LVerDomain"}
!132 = distinct !{!132, !131}
!133 = distinct !{!133, !131}
!134 = distinct !{!134, !131}
!135 = distinct !{!135, !23, !24, !25}
!136 = distinct !{!136, !23}
!137 = distinct !{!137, !167}
!138 = distinct !{!138, !23}
!139 = distinct !{!139, !23, !24}
!140 = distinct !{!140, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl"}
!141 = distinct !{!141, !140, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELin1ELb0EEEE3rowEl: argument 0"}
!142 = distinct !{!142, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE3colEl"}
!143 = distinct !{!143, !142, !"_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE3colEl: argument 0"}
!144 = distinct !{!144, !"LVerDomain"}
!145 = distinct !{!145, !144}
!146 = distinct !{!146, !144}
!147 = distinct !{!147, !144}
!148 = distinct !{!148, !23, !24, !25}
!149 = distinct !{!149, !167}
!150 = distinct !{!150, !23, !24}
!151 = distinct !{!151, !23}
!152 = distinct !{!152, !23}
!153 = !{!"_ZTSN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELin1ELi1ELb0EEEEENS2_INS_7ProductINS3_IS5_Lin1ELin1ELb0EEENS3_INS4_IdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEELi1EEEEENS0_13sub_assign_opIddEELi0EEE", !52, i64 0, !53, i64 8, !54, i64 16, !55, i64 24}
!154 = !{!153, !55, i64 24}
!155 = !{}
!156 = !{i64 8}
!157 = !{!153, !52, i64 0}
!158 = !{!153, !53, i64 8}
!159 = !{!33, !13, i64 0}
!160 = !{!128}
!161 = !{!38, !13, i64 0}
!162 = !{!130}
!163 = !{!132}
!164 = !{!133}
!165 = !{!134}
!166 = !{!133, !132}
!167 = !{!"llvm.loop.unroll.disable"}
!168 = !{!141}
!169 = !{!143}
!170 = !{!145}
!171 = !{!146}
!172 = !{!147}
!173 = !{!146, !145}
!174 = distinct !{!174, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEE3rowEl"}
!175 = distinct !{!175, !174, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEE3rowEl: argument 0"}
!176 = distinct !{!176, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEE7segmentILi1EEENS5_22FixedSegmentReturnTypeIXT_EE4TypeEll"}
!177 = distinct !{!177, !176, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEE7segmentILi1EEENS5_22FixedSegmentReturnTypeIXT_EE4TypeEll: argument 0"}
!178 = distinct !{!178, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEE3rowEl"}
!179 = distinct !{!179, !178, !"_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi6ELi1ELi0ELi6ELi1EEELi3ELi1ELb0EEEE3rowEl: argument 0"}
!180 = !{!175}
!181 = !{!177}
!182 = !{!179}
end_hunk_0
