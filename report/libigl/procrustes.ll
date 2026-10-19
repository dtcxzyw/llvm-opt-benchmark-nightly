Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/procrustes?download=true
inline.NumInlined: 3486
inline.NumDeleted: 1802
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumRuntimeUnrolled: 31
loop-unroll.NumUnrolled: 45
begin_hunk_0_@_ZN5Eigen8internal24call_assignment_no_aliasINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS2_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS2_IdLi1ELi3ELi1ELi1ELi3EEEEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_:bb.a
  %.05385.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.lj, %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %.07284.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi double [ %i.kb, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.li, %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ]
  %lcmp.mod116 = icmp ne i64 %xtraiter112, 0
  tail call void @llvm.assume(i1 %lcmp.mod116)
  br label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil

.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil:              ; preds = %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader
  %.05385.i.i.i.i.i.i.i.i.i.i.2.epil = phi i64 [ %i.ln, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.05385.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %.07284.i.i.i.i.i.i.i.i.i.i.2.epil = phi double [ %i.lm, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.07284.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ]
  %epil.iter113 = phi i64 [ %epil.iter113.next, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ], [ 0, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ]
  %i.lk = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.05385.i.i.i.i.i.i.i.i.i.i.2.epil
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !30
  %i.lm = fadd double %.07284.i.i.i.i.i.i.i.i.i.i.2.epil, %i.ll ; 2 uses
  %i.ln = add nuw nsw i64 %.05385.i.i.i.i.i.i.i.i.i.i.2.epil, 1
  %epil.iter113.next = add i64 %epil.iter113, 1   ; 2 uses
  %epil.iter113.cmp.not = icmp eq i64 %epil.iter113.next, %xtraiter112
  br i1 %epil.iter113.cmp.not, label %.preheader.i.i.i.i.i.i.i.i.i.i.2, label %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil, !llvm.loop !133

.preheader.i.i.i.i.i.i.i.i.i.i.2:                 ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil, %bb.t
  %.072.lcssa.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.kb, %bb.t ], [ %i.li, %.preheader.i.i.i.i.i.i.i.i.i.i.2.loopexit.unr-lcssa ], [ %i.lm, %.lr.ph87.i.i.i.i.i.i.i.i.i.i.2.epil ] ; 2 uses
  %i.lo = icmp slt i64 %i.jh, %i.n
  br i1 %i.lo, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2

.lr.ph91.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2
  %.05290.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ %i.ls, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.jh, %.preheader.i.i.i.i.i.i.i.i.i.i.2 ] ; 2 uses
  %.189.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.lr, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2 ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.lp = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %.05290.i.i.i.i.i.i.i.i.i.i.2
  %i.lq = load double, ptr %i.lp, align 8, !tbaa !30
  %i.lr = fadd double %.189.i.i.i.i.i.i.i.i.i.i.2, %i.lq ; 2 uses
  %i.ls = add nsw i64 %.05290.i.i.i.i.i.i.i.i.i.i.2, 1 ; 2 uses
  %i.lt = icmp slt i64 %i.ls, %i.n
  br i1 %i.lt, label %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2, !llvm.loop !128

bb.u:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_5BlockIKNS_6MatrixIdLin1ELi3ELi0ELin1ELi3EEELin1ELi1ELb1EEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i.i.i.i.i.i.2
  %i.lu = load double, ptr %i.iv, align 8, !tbaa !30 ; 3 uses
  br i1 %i.p, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader:         ; preds = %bb.u
  %i.lv = add nsw i64 %i.n, -1                    ; 2 uses
  %i.lw = add nsw i64 %i.n, -2
  %xtraiter119 = and i64 %i.lv, 7                 ; 3 uses
  %i.lx = icmp ult i64 %i.lw, 7
  br i1 %i.lx, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new:     ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader
  %unroll_iter124 = and i64 %i.lv, -8
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2:                   ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new
  %.094.i.i.i.i.i.i.i.i.i.i.2 = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.nd, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ] ; 9 uses
  %.293.i.i.i.i.i.i.i.i.i.i.2 = phi double [ %i.lu, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %i.nc, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ]
  %niter125 = phi i64 [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader.new ], [ %niter125.next.7, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.ly = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.lz = load double, ptr %i.ly, align 8, !tbaa !30
  %i.ma = fadd double %.293.i.i.i.i.i.i.i.i.i.i.2, %i.lz
  %i.mb = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.mc = getelementptr inbounds nuw i8, ptr %i.mb, i64 8
  %i.md = load double, ptr %i.mc, align 8, !tbaa !30
  %i.me = fadd double %i.ma, %i.md
  %i.mf = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.mg = getelementptr inbounds nuw i8, ptr %i.mf, i64 16
  %i.mh = load double, ptr %i.mg, align 8, !tbaa !30
  %i.mi = fadd double %i.me, %i.mh
  %i.mj = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mj, i64 24
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !30
  %i.mm = fadd double %i.mi, %i.ml
  %i.mn = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 32
  %i.mp = load double, ptr %i.mo, align 8, !tbaa !30
  %i.mq = fadd double %i.mm, %i.mp
  %i.mr = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mr, i64 40
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !30
  %i.mu = fadd double %i.mq, %i.mt
  %i.mv = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.mw = getelementptr inbounds nuw i8, ptr %i.mv, i64 48
  %i.mx = load double, ptr %i.mw, align 8, !tbaa !30
  %i.my = fadd double %i.mu, %i.mx
  %i.mz = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2
  %i.na = getelementptr inbounds nuw i8, ptr %i.mz, i64 56
  %i.nb = load double, ptr %i.na, align 8, !tbaa !30
  %i.nc = fadd double %i.my, %i.nb                ; 3 uses
  %i.nd = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.2, 8 ; 2 uses
  %niter125.next.7 = add i64 %niter125, 8         ; 2 uses
  %niter125.ncmp.7 = icmp eq i64 %niter125.next.7, %unroll_iter124
  br i1 %niter125.ncmp.7, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2.loopexit.unr-lcssa, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2, !llvm.loop !129

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2.loopexit.unr-lcssa: ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2
  %lcmp.mod121.not = icmp eq i64 %xtraiter119, 0
  br i1 %lcmp.mod121.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader:    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi i64 [ 1, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.nd, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2.loopexit.unr-lcssa ]
  %.293.i.i.i.i.i.i.i.i.i.i.2.epil.init = phi double [ %i.lu, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.preheader ], [ %i.nc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2.loopexit.unr-lcssa ]
  %lcmp.mod123 = icmp ne i64 %xtraiter119, 0
  tail call void @llvm.assume(i1 %lcmp.mod123)
  br label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil

.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil:              ; preds = %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader
  %.094.i.i.i.i.i.i.i.i.i.i.2.epil = phi i64 [ %i.nh, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.094.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ] ; 2 uses
  %.293.i.i.i.i.i.i.i.i.i.i.2.epil = phi double [ %i.ng, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.293.i.i.i.i.i.i.i.i.i.i.2.epil.init, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ]
  %epil.iter120 = phi i64 [ %epil.iter120.next, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ 0, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil.preheader ]
  %i.ne = getelementptr inbounds nuw [8 x i8], ptr %i.iv, i64 %.094.i.i.i.i.i.i.i.i.i.i.2.epil
  %i.nf = load double, ptr %i.ne, align 8, !tbaa !30
  %i.ng = fadd double %.293.i.i.i.i.i.i.i.i.i.i.2.epil, %i.nf ; 2 uses
  %i.nh = add nuw nsw i64 %.094.i.i.i.i.i.i.i.i.i.i.2.epil, 1
  %epil.iter120.next = add i64 %epil.iter120, 1   ; 2 uses
  %epil.iter120.cmp.not = icmp eq i64 %epil.iter120.next, %xtraiter119
  br i1 %epil.iter120.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2, label %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil, !llvm.loop !134

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2: ; preds = %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2.loopexit.unr-lcssa, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil, %bb.u, %.preheader.i.i.i.i.i.i.i.i.i.i.2
  %.0.i.i.i.i.i.i.i.i.2 = phi double [ %i.ng, %.lr.ph96.i.i.i.i.i.i.i.i.i.i.2.epil ], [ %.072.lcssa.i.i.i.i.i.i.i.i.i.i.2, %.preheader.i.i.i.i.i.i.i.i.i.i.2 ], [ %i.lu, %bb.u ], [ %i.nc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2.loopexit.unr-lcssa ], [ %i.lr, %.lr.ph91.i.i.i.i.i.i.i.i.i.i.2 ]
  %i.ni = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.nj = fdiv double %.0.i.i.i.i.i.i.i.i.2, %i.d
  store double %i.nj, ptr %i.ni, align 8, !tbaa !30
  br label %_ZN5Eigen8internal10AssignmentINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi1ELi3ELi1ELi1ELi3EEEEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS5_RKSN_RKSP_.exit

_ZN5Eigen8internal10AssignmentINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEENS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS3_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLi1ELi3ELi1ELi1ELi3EEEEEEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS5_RKSN_RKSP_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.i.i.i.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_9TransposeINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEEEEENS2_INS_13CwiseBinaryOpINS0_18scalar_quotient_opIddEEKNS_16PartialReduxExprIKNS4_IdLin1ELi3ELi0ELin1ELi3EEENS0_10member_sumIddEELi0EEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLi1ELi3ELi1ELi1ELi3EEEEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us.i.preheader.i.i
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2INS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEERKNS_9DenseBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) unnamed_addr #4 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %0, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !40   ; 3 uses
  %i.c = icmp sgt i64 %i.b, 3074457345618258602
  br i1 %i.c, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.a
  %i.d = mul nsw i64 %i.b, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.d, i64 noundef %i.b, i64 noundef 3)
          to label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit unwind label %bb.c

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.e = load ptr, ptr %1, align 8, !tbaa !152, !nonnull !36, !align !37 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !38   ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.e, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !16   ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.j = load i64, ptr %i.i, align 8
  %.cast.i.i.i.i.i.i.i.i.i.i = inttoptr i64 %i.j to ptr
  %i.k = load ptr, ptr %.cast.i.i.i.i.i.i.i.i.i.i, align 8, !tbaa !24 ; 3 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !40   ; 5 uses
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !29
  %.not.i.i.i.i.i = icmp eq i64 %i.n, %i.l
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.p = load i64, ptr %i.o, align 8
  %.not8.i.i.i.i.i = icmp eq i64 %i.p, 3
  %or.cond.i.i.i.i.i = select i1 %.not.i.i.i.i.i, i1 %.not8.i.i.i.i.i, i1 false
  br i1 %or.cond.i.i.i.i.i, label %.preheader.lr.ph.i.i.i.i.i, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.q = icmp sgt i64 %i.l, 3074457345618258602
  br i1 %i.q, label %.noexc.i.i.i.i.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i

.noexc.i.i.i.i.invoke:                            ; preds = %bb.b, %bb.a
  %i.r = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.r, align 8, !tbaa !22
  invoke void @__cxa_throw(ptr nonnull %i.r, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
          to label %.noexc.i.i.i.i.cont unwind label %bb.c

.noexc.i.i.i.i.cont:                              ; preds = %.noexc.i.i.i.i.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i: ; preds = %bb.b
  %i.s = mul nsw i64 %i.l, 3
  invoke void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.s, i64 noundef %i.l, i64 noundef 3)
          to label %.noexc6 unwind label %bb.c

.noexc6:                                          ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i
  %.pr.i.i.i.i = load i64, ptr %i.o, align 8, !tbaa !27 ; 2 uses
  %i.t = icmp sgt i64 %.pr.i.i.i.i, 0
  br i1 %i.t, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i: ; preds = %.noexc6
  %.pre.i.i.i.i = load i64, ptr %i.m, align 8, !tbaa !29
  br label %.preheader.lr.ph.i.i.i.i.i

.preheader.lr.ph.i.i.i.i.i:                       ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit
  %i.u = phi i64 [ %.pre.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i ], [ %i.l, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 11 uses
  %i.v = phi i64 [ %.pr.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i..preheader.lr.ph.i_crit_edge.i.i.i.i ], [ 3, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE10resizeLikeINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEEvRKNS_9EigenBaseIT_EE.exit ] ; 4 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !28     ; 4 uses
  %i.x = icmp sgt i64 %i.u, 0
  br i1 %i.x, label %.preheader.i.i.i.i.i.preheader, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.preheader:                   ; preds = %.preheader.lr.ph.i.i.i.i.i
  %i.y = mul i64 %i.u, %i.v
  %i.z = shl i64 %i.y, 3
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.z ; 2 uses
  %i.aa = shl i64 %i.v, 3
  %scevgep10 = getelementptr i8, ptr %i.k, i64 %i.aa
  %i.ab = add nuw i64 %i.v, 2305843009213693951
  %i.ac = mul i64 %i.h, %i.ab
  %i.ad = add i64 %i.ac, %i.u
  %i.ae = shl i64 %i.ad, 3
  %scevgep11 = getelementptr i8, ptr %i.f, i64 %i.ae
  %min.iters.check = icmp ult i64 %i.u, 10
  %bound0 = icmp ult ptr %i.w, %scevgep10
  %bound1 = icmp ult ptr %i.k, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound012 = icmp ult ptr %i.w, %scevgep11
  %bound113.a = icmp ult ptr %i.f, %scevgep
  %found.conflict14 = and i1 %bound012, %bound113.a
  %2 = or i64 %i.h, %i.u
  %i.af = and i64 %2, 1152921504606846976
  %i.ag = icmp ne i64 %i.af, 0
  %i.ah = or i1 %found.conflict14, %i.ag
  %conflict.rdx = or i1 %found.conflict, %i.ah
  %n.vec = and i64 %i.u, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  %xtraiter = and i64 %i.u, 3                     ; 2 uses
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.preheader.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.preheader.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i
  %.0812.i.i.i.i.i = phi i64 [ %i.az, %._crit_edge.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.preheader ] ; 4 uses
  %i.ai = mul nuw nsw i64 %.0812.i.i.i.i.i, %i.u
  %invariant.gep.i.i.i.i.i = getelementptr [8 x i8], ptr %i.w, i64 %i.ai ; 6 uses
  %i.aj = mul nsw i64 %.0812.i.i.i.i.i, %i.h
  %invariant.gep10.i.i.i.i.i = getelementptr [8 x i8], ptr %i.f, i64 %i.aj ; 6 uses
  %i.ak = getelementptr [8 x i8], ptr %i.k, i64 %.0812.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check, i1 true, i1 %conflict.rdx
  br i1 %brmerge, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.preheader.i.i.i.i.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !30, !alias.scope !153
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.al, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.am = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %index ; 2 uses
  %i.an = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %index ; 2 uses
  %i.ao = getelementptr i8, ptr %i.an, i64 16
  %wide.load = load <2 x double>, ptr %i.an, align 8, !tbaa !30, !alias.scope !154
  %wide.load17 = load <2 x double>, ptr %i.ao, align 8, !tbaa !30, !alias.scope !154
  %i.ap = fsub <2 x double> %wide.load, %broadcast.splat
  %i.aq = fsub <2 x double> %wide.load17, %broadcast.splat
  %i.ar = getelementptr i8, ptr %i.am, i64 16
  store <2 x double> %i.ap, ptr %i.am, align 8, !tbaa !30, !alias.scope !155, !noalias !156
  store <2 x double> %i.aq, ptr %i.ar, align 8, !tbaa !30, !alias.scope !155, !noalias !156
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.as = icmp eq i64 %index.next, %n.vec
  br i1 %i.as, label %middle.block, label %vector.body, !llvm.loop !143

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.prol = phi i64 [ %i.aw, %scalar.ph.prol ], [ %.09.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %gep.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i.prol
  %gep11.i.i.i.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %.09.i.i.i.i.i.prol
  %i.at = load double, ptr %i.ak, align 8, !tbaa !30
  %i.au = load double, ptr %gep11.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.av = fsub double %i.au, %i.at
  store double %i.av, ptr %gep.i.i.i.i.i.prol, align 8, !tbaa !30
  %i.aw = add nuw nsw i64 %.09.i.i.i.i.i.prol, 1  ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !144

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.aw, %scalar.ph.prol ]
  %i.ax = sub nsw i64 %.09.i.i.i.i.i.ph, %i.u
  %i.ay = icmp ugt i64 %i.ax, -4
  br i1 %i.ay, label %._crit_edge.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i:                            ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.az = add nuw nsw i64 %.0812.i.i.i.i.i, 1     ; 2 uses
  %exitcond14.not.i.i.i.i.i = icmp eq i64 %i.az, %i.v
  br i1 %exitcond14.not.i.i.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i, !llvm.loop !145

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i = phi i64 [ %i.bp, %scalar.ph ], [ %.09.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %gep.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %.09.i.i.i.i.i
  %gep11.i.i.i.i.i = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %.09.i.i.i.i.i
  %i.ba = load double, ptr %i.ak, align 8, !tbaa !30
  %i.bb = load double, ptr %gep11.i.i.i.i.i, align 8, !tbaa !30
  %i.bc = fsub double %i.bb, %i.ba
  store double %i.bc, ptr %gep.i.i.i.i.i, align 8, !tbaa !30
  %i.bd = add nuw nsw i64 %.09.i.i.i.i.i, 1       ; 2 uses
  %gep.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bd
  %gep11.i.i.i.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bd
  %i.be = load double, ptr %i.ak, align 8, !tbaa !30
  %i.bf = load double, ptr %gep11.i.i.i.i.i.1, align 8, !tbaa !30
  %i.bg = fsub double %i.bf, %i.be
  store double %i.bg, ptr %gep.i.i.i.i.i.1, align 8, !tbaa !30
  %i.bh = add nuw nsw i64 %.09.i.i.i.i.i, 2       ; 2 uses
  %gep.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bh
  %gep11.i.i.i.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bh
  %i.bi = load double, ptr %i.ak, align 8, !tbaa !30
  %i.bj = load double, ptr %gep11.i.i.i.i.i.2, align 8, !tbaa !30
  %i.bk = fsub double %i.bj, %i.bi
  store double %i.bk, ptr %gep.i.i.i.i.i.2, align 8, !tbaa !30
  %i.bl = add nuw nsw i64 %.09.i.i.i.i.i, 3       ; 2 uses
  %gep.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i.i.i.i, i64 %i.bl
  %gep11.i.i.i.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep10.i.i.i.i.i, i64 %i.bl
  %i.bm = load double, ptr %i.ak, align 8, !tbaa !30
  %i.bn = load double, ptr %gep11.i.i.i.i.i.3, align 8, !tbaa !30
  %i.bo = fsub double %i.bn, %i.bm
  store double %i.bo, ptr %gep.i.i.i.i.i.3, align 8, !tbaa !30
  %i.bp = add nuw nsw i64 %.09.i.i.i.i.i, 4       ; 2 uses
  %exitcond.not.i.i.i.i.i.3 = icmp eq i64 %i.bp, %i.u
  br i1 %exitcond.not.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i, label %scalar.ph, !llvm.loop !146

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_13CwiseBinaryOpINS_8internal20scalar_difference_opIddEEKNS1_IdLin1ELi3ELi0ELin1ELi3EEEKNS_9ReplicateINS_9TransposeIKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEELin1ELi1EEEEEEERS2_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i, %.preheader.lr.ph.i.i.i.i.i, %.noexc6
  ret void

bb.c:                                             ; preds = %.noexc.i.i.i.i.invoke, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i
  %i.bq = landingpad { ptr, i32 }
          cleanup
  %i.br = load ptr, ptr %0, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.br) #19
  resume { ptr, i32 } %i.bq
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3) local_unnamed_addr #9 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !29
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27
  %i.e = mul nsw i64 %i.d, %i.b
  %.not = icmp eq i64 %1, %i.e
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %0, align 8, !tbaa !28
  tail call void @free(ptr noundef %i.f) #19
  %i.g = icmp sgt i64 %1, 0
  br i1 %i.g, label %bb.c, label %.sink.split

bb.c:                                             ; preds = %bb.b
  %i.h = icmp samesign ugt i64 %1, 2305843009213693951
  br i1 %i.h, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i

bb.d:                                             ; preds = %bb.c
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i: ; preds = %bb.c
  %i.j = shl nuw i64 %1, 3
  %i.k = tail call noalias ptr @malloc(i64 noundef %i.j) #20 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.e, label %.sink.split

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %i.m = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.m, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.m, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

.sink.split:                                      ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i
  %.sink = phi ptr [ %i.k, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i ], [ null, %bb.b ]
  store ptr %.sink, ptr %0, align 8, !tbaa !28
  br label %bb.f

bb.f:                                             ; preds = %.sink.split, %bb.a
  store i64 %2, ptr %i.a, align 8, !tbaa !29
  store i64 %3, ptr %i.c, align 8, !tbaa !27
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal10AssignmentINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIS3_EES3_Li0EEENS0_9assign_opIddEENS0_11Dense2DenseEvE3runERS3_RKS7_RKS9_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #4 comdat align 2 {
bb.a:
  %3 = alloca %"class.Eigen::Product.307", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %i.b = load ptr, ptr %1, align 8, !tbaa !44, !nonnull !36, !align !37
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !27   ; 6 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !158, !nonnull !36, !align !37 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !29
  %.not = icmp eq i64 %i.j, %i.d
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not11 = icmp eq i64 %i.l, %i.h
  %or.cond = select i1 %.not, i1 %.not11, i1 false
  br i1 %or.cond, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.d, 0
  %i.n = icmp eq i64 %i.h, 0
  %or.cond.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv i64 9223372036854775807, %i.h
  %i.p = icmp sgt i64 %i.d, %i.o
  br i1 %i.p, label %bb.d, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit

bb.d:                                             ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES4_NS_10DenseShapeES6_Li8EE13scaleAndAddToIS4_EEvRT_RKS5_RKS4_RKd:bb.a
bb.v:                                             ; preds = %bb.q
  %i.go = load double, ptr %i.dj, align 8, !tbaa !30
  %i.gp = load double, ptr %i.dm, align 8, !tbaa !30
  %i.gq = fmul double %i.go, %i.gp
  br label %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i

_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i: ; preds = %.lr.ph85.i.i.i.i.i.i30.prol.loopexit, %.lr.ph85.i.i.i.i.i.i30, %bb.v, %bb.u, %bb.p
  %.0.i.i.i.i29 = phi double [ 0.000000e+00, %bb.p ], [ %i.fa, %bb.u ], [ %i.gq, %bb.v ], [ %.lcssa94.unr, %.lr.ph85.i.i.i.i.i.i30.prol.loopexit ], [ %i.gm, %.lr.ph85.i.i.i.i.i.i30 ]
  %i.gr = load double, ptr %i.di, align 8, !tbaa !30
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.dl, double %.0.i.i.i.i29, double %i.gr)
  store double %i.gs, ptr %i.di, align 8, !tbaa !30
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

bb.w:                                             ; preds = %bb.o
  %i.gt = ptrtoint ptr %i.a to i64
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  store ptr %i.dj, ptr %6, align 8
  %.sroa.545.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 16
  store i64 %i.c, ptr %.sroa.545.0..sroa_idx, align 8
  %.sroa.6.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 24
  store i64 %i.gt, ptr %.sroa.6.0..sroa_idx, align 8
  %.sroa.746.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 32
  %.sroa.947.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.746.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 %i.c, ptr %.sroa.947.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #19
  store ptr %i.di, ptr %4, align 8
  %.sroa.550.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.l, ptr %.sroa.550.0..sroa_idx, align 8
  %.sroa.651.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %0, ptr %.sroa.651.0..sroa_idx, align 8
  %.sroa.752.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 32
  %.sroa.954.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %.sroa.752.0..sroa_idx, i8 0, i64 16, i1 false)
  store i64 1, ptr %.sroa.954.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  store ptr %2, ptr %5, align 8
  call void @_ZN5Eigen8internal19gemv_dense_selectorILi2ELi1ELb1EE3runINS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS4_IKNS_5BlockIKNS4_IS6_EELi1ELin1ELb1EEEEENS4_INS9_IS6_Li1ELin1ELb0EEEEEEEvRKT_RKT0_RT1_RKNSN_6ScalarE(ptr noundef nonnull align 8 dereferenceable(8) %5, ptr noundef nonnull align 8 dereferenceable(56) %6, ptr noundef nonnull align 8 dereferenceable(56) %4, ptr noundef nonnull align 8 dereferenceable(8) %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #19
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i: ; preds = %bb.n
  %i.gu = load double, ptr %3, align 8, !tbaa !30
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %10, i8 0, i64 16, i1 false)
  %i.gv = getelementptr inbounds nuw i8, ptr %10, i64 16 ; 3 uses
  store i64 %i.dg, ptr %i.gv, align 8, !tbaa !48
  %i.gw = getelementptr inbounds nuw i8, ptr %10, i64 24 ; 3 uses
  store i64 %i.l, ptr %i.gw, align 8, !tbaa !49
  %i.gx = getelementptr inbounds nuw i8, ptr %10, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.gx, align 8, !tbaa !50
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi1ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.gx, ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull align 8 dereferenceable(8) %i.gw, i64 noundef 1)
  %i.gy = load i64, ptr %i.gv, align 8, !tbaa !48
  %i.gz = load i64, ptr %i.gx, align 8, !tbaa !50 ; 2 uses
  %i.ha = mul nsw i64 %i.gz, %i.gy
  %i.hb = getelementptr inbounds nuw i8, ptr %10, i64 40
  store i64 %i.ha, ptr %i.hb, align 8, !tbaa !188
  %i.hc = load i64, ptr %i.gw, align 8, !tbaa !49
  %i.hd = mul nsw i64 %i.hc, %i.gz
  %i.he = getelementptr inbounds nuw i8, ptr %10, i64 48
  store i64 %i.hd, ptr %i.he, align 8, !tbaa !189
  %i.hf = load ptr, ptr %1, align 8, !tbaa !44, !nonnull !36, !align !37
  %i.hg = getelementptr inbounds nuw i8, ptr %i.hf, i64 16
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !27
  %i.hi = load i64, ptr %i.h, align 8, !tbaa !27
  %i.hj = load i64, ptr %i.b, align 8, !tbaa !29  ; 2 uses
  %i.hk = load ptr, ptr %i.a, align 8, !tbaa !28
  %i.hl = load ptr, ptr %2, align 8, !tbaa !28
  %i.hm = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.hn = load i64, ptr %i.hm, align 8, !tbaa !29
  %i.ho = load ptr, ptr %0, align 8, !tbaa !28
  %i.hp = load i64, ptr %i.df, align 8, !tbaa !29
  invoke void @_ZN5Eigen8internal29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE(i64 noundef %i.hh, i64 noundef %i.hi, i64 noundef %i.hj, ptr noundef nonnull %i.hk, i64 noundef %i.hj, ptr noundef nonnull %i.hl, i64 noundef %i.hn, ptr noundef nonnull %i.ho, i64 noundef 1, i64 noundef %i.hp, double noundef %i.gu, ptr noundef nonnull align 8 dereferenceable(40) %10, ptr noundef null)
          to label %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit unwind label %bb.x

_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit: ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.hq = load ptr, ptr %10, align 8, !tbaa !51
  call void @free(ptr noundef %i.hq) #19
  %i.hr = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hs = load ptr, ptr %i.hr, align 8, !tbaa !52
  call void @free(ptr noundef %i.hs) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit

_ZN5Eigen8internal20generic_product_implIKNS_5BlockIKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEES5_NS_10DenseShapeESA_Li7EE13scaleAndAddToINS2_IS5_Li1ELin1ELb0EEEEEvRT_RS9_RKS5_RKd.exit: ; preds = %bb.w, %_ZNK5Eigen10MatrixBaseINS_5BlockIKNS1_IKNS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEELi1ELin1ELb1EEELi1ELin1ELb1EEEE3dotINS1_IKS4_Lin1ELi1ELb1EEEEENS_20ScalarBinaryOpTraitsIdNS_8internal6traitsIT_E6ScalarENSF_17scalar_product_opIdSJ_EEE10ReturnTypeERKNS0_ISH_EE.exit.i, %bb.a, %bb.b, %bb.c, %_ZN5Eigen8internal16parallelize_gemmILb1ENS0_12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_S7_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEElEEvRKT0_T1_SG_SG_b.exit, %_ZN5Eigen8internal20generic_product_implINS_9TransposeINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEEKNS_5BlockIKS4_Lin1ELi1ELb1EEENS_10DenseShapeESA_Li7EE13scaleAndAddToINS6_IS4_Lin1ELi1ELb1EEEEEvRT_RKS5_RS9_RKd.exit
  ret void

bb.x:                                             ; preds = %_ZNK5Eigen8internal12gemm_functorIdlNS0_29general_matrix_matrix_productIldLi1ELb0EdLi0ELb0ELi0ELi1EEENS_9TransposeIKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES6_S6_NS0_19gemm_blocking_spaceILi0EddLin1ELin1ELin1ELi1ELb0EEEEclEllllPNS0_16GemmParallelInfoIlEE.exit.i
  %i.ht = landingpad { ptr, i32 }
          cleanup
  %i.hu = load ptr, ptr %10, align 8, !tbaa !51
  call void @free(ptr noundef %i.hu) #19
  %i.hv = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.hw = load ptr, ptr %i.hv, align 8, !tbaa !52
  call void @free(ptr noundef %i.hw) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  resume { ptr, i32 } %i.ht
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal42call_restricted_packet_assignment_no_aliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_7ProductINS_9TransposeIKS3_EES3_Li1EEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #8 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i64, ptr %1, align 8
  %i.b = inttoptr i64 %i.a to ptr                 ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !210, !nonnull !36, !align !37 ; 3 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !27   ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !27   ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8, !tbaa !29
  %.not.i = icmp eq i64 %i.l, %i.h
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8
  %.not8.i = icmp eq i64 %i.n, %i.j
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.o = icmp eq i64 %i.h, 0
  %i.p = icmp eq i64 %i.j, 0
  %or.cond.i.i.i = or i1 %i.o, %i.p
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.q = sdiv i64 9223372036854775807, %i.j
  %i.r = icmp sgt i64 %i.h, %i.q
  br i1 %i.r, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !22
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #21
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.t = mul nsw i64 %i.j, %i.h
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.t, i64 noundef %i.h, i64 noundef %i.j)
  %.pr = load i64, ptr %i.m, align 8, !tbaa !27
  %.pre = load i64, ptr %i.k, align 8, !tbaa !29
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.u = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.h, %bb.a ] ; 30 uses
  %i.v = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.j, %bb.a ] ; 13 uses
  %i.w = load ptr, ptr %0, align 8, !tbaa !28     ; 13 uses
  %i.x = icmp sgt i64 %i.v, 0
  %i.y = icmp sgt i64 %i.u, 0
  %or.cond = select i1 %i.x, i1 %i.y, i1 false
  br i1 %or.cond, label %.preheader.lr.ph.split.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.i:                         ; preds = %bb.d
  %i.z = load ptr, ptr %i.d, align 8, !tbaa !28, !noalias !211 ; 11 uses
  %i.aa = load i64, ptr %i.f, align 8, !tbaa !29, !noalias !211 ; 33 uses
  %i.ab = icmp eq i64 %i.aa, 0
  %i.ac = sdiv i64 %i.aa, 4
  %i.ad = shl nsw i64 %i.ac, 2                    ; 12 uses
  %i.ae = sdiv i64 %i.aa, 2
  %i.af = shl nsw i64 %i.ae, 1                    ; 22 uses
  %i.ag = icmp sgt i64 %i.aa, 3
  %i.ah = icmp samesign ugt i64 %i.aa, 7
  %i.ai = icmp sgt i64 %i.af, %i.ad               ; 4 uses
  %i.aj = icmp slt i64 %i.af, %i.aa               ; 3 uses
  br i1 %i.ab, label %.preheader.us.preheader.i, label %.preheader.lr.ph.split.split.i

.preheader.us.preheader.i:                        ; preds = %.preheader.lr.ph.split.i
  %i.ak = mul i64 %i.v, %i.u
  %i.al = shl i64 %i.ak, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.w, i8 0, i64 %i.al, i1 false), !tbaa !30
  br label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit

.preheader.lr.ph.split.split.i:                   ; preds = %.preheader.lr.ph.split.i
  %.off.i.i.i.i.i.i.i = add i64 %i.aa, 1
  %.not.i.i.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i, 3
  %i.am = load ptr, ptr %i.b, align 8, !tbaa !28, !noalias !212 ; 16 uses
  %i.an = load i64, ptr %i.e, align 8, !tbaa !29, !noalias !212 ; 14 uses
  br i1 %.not.i.i.i.i.i.i.i, label %.preheader.us20.i.preheader, label %.preheader.i.preheader

.preheader.us20.i.preheader:                      ; preds = %.preheader.lr.ph.split.split.i
  %i.ao = mul i64 %i.v, %i.u
  %i.ap = shl i64 %i.ao, 3
  %scevgep = getelementptr i8, ptr %i.w, i64 %i.ap ; 2 uses
  %i.aq = shl i64 %i.u, 3                         ; 2 uses
  %scevgep135 = getelementptr i8, ptr %i.am, i64 %i.aq
  %i.ar = add nuw i64 %i.v, 2305843009213693951
  %i.as = mul i64 %i.aa, %i.ar
  %i.at = shl i64 %i.as, 3
  %i.au = getelementptr i8, ptr %i.z, i64 %i.at
  %scevgep136 = getelementptr i8, ptr %i.au, i64 8
  %min.iters.check = icmp ugt i64 %i.u, 9
  %ident.check.not = icmp eq i64 %i.an, 1
  %or.cond143 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.w, %scevgep135
  %bound1 = icmp ult ptr %i.am, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  %bound0137 = icmp ult ptr %i.w, %scevgep136
  %bound1138 = icmp ult ptr %i.z, %scevgep
  %found.conflict139 = and i1 %bound0137, %bound1138
  %stride.check140 = icmp slt i64 %i.aq, 0
  %3 = or i1 %found.conflict139, %stride.check140
  %.mask = and i64 %i.aa, 1152921504606846976
  %stride.check141 = icmp ne i64 %.mask, 0
  %i.av = or i1 %3, %stride.check141
  %conflict.rdx = or i1 %found.conflict, %i.av
  %n.vec = and i64 %i.u, 9223372036854775804      ; 3 uses
  %cmp.n = icmp eq i64 %i.u, %n.vec
  %xtraiter178 = and i64 %i.u, 1
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br label %.preheader.us20.i

.preheader.i.preheader:                           ; preds = %.preheader.lr.ph.split.split.i
  br i1 %i.ag, label %.preheader.i.preheader.split.us, label %.preheader.i.preheader.split

.preheader.i.preheader.split.us:                  ; preds = %.preheader.i.preheader
  br i1 %i.ah, label %.preheader.i.preheader.split.us.split.us, label %.preheader.i.preheader.split.us.split

.preheader.i.preheader.split.us.split.us:         ; preds = %.preheader.i.preheader.split.us
  br i1 %i.aj, label %.preheader.i.preheader.split.us.split.us.split.us, label %.preheader.i.us.us

.preheader.i.preheader.split.us.split.us.split.us: ; preds = %.preheader.i.preheader.split.us.split.us
  br i1 %i.ai, label %.preheader.i.us.us.us.us.preheader, label %.preheader.i.us.us.us.preheader

.preheader.i.us.us.us.preheader:                  ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.aw = sub nsw i64 %i.aa, %i.af
  %xtraiter172 = and i64 %i.aw, 3                 ; 2 uses
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  %i.ax = sub nsw i64 %i.af, %i.aa
  %i.ay = icmp ugt i64 %i.ax, -4
  br label %.preheader.i.us.us.us

.preheader.i.us.us.us.us.preheader:               ; preds = %.preheader.i.preheader.split.us.split.us.split.us
  %i.az = sub nsw i64 %i.aa, %i.af
  %xtraiter175 = and i64 %i.az, 3                 ; 2 uses
  %lcmp.mod176.not = icmp eq i64 %xtraiter175, 0
  %i.ba = sub nsw i64 %i.af, %i.aa
  %i.bb = icmp ugt i64 %i.ba, -4
  br label %.preheader.i.us.us.us.us

.preheader.i.us.us.us.us:                         ; preds = %.preheader.i.us.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us
  %.0816.i.us.us.us.us = phi i64 [ %i.dv, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us ], [ 0, %.preheader.i.us.us.us.us.preheader ] ; 3 uses
  %i.bc = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.aa
  %i.bd = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.bc ; 10 uses
  %i.be = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bf = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.ad
  %i.bg = mul nuw nsw i64 %.0816.i.us.us.us.us, %i.u
  %invariant.gep.i.us.us.us.us = getelementptr [8 x i8], ptr %i.w, i64 %i.bg
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, %.preheader.i.us.us.us.us
  %.011.i.us.us.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us.us ], [ %i.du, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %i.bh = mul nsw i64 %i.an, %.011.i.us.us.us.us.us.us.us.us
  %i.bi = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.bh ; 10 uses
  %i.bj = load <2 x double>, ptr %i.bi, align 1, !tbaa !31
  %i.bk = load <2 x double>, ptr %i.bd, align 1, !tbaa !31
  %i.bl = fmul <2 x double> %i.bj, %i.bk
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bi, i64 16
  %i.bn = load <2 x double>, ptr %i.bm, align 1, !tbaa !31
  %i.bo = load <2 x double>, ptr %i.be, align 1, !tbaa !31
  %i.bp = fmul <2 x double> %i.bn, %i.bo
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:     ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us
  %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.bv, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bl, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi <2 x double> [ %i.cc, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %i.bp, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us ]
  %i.bq = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.br = load <2 x double>, ptr %i.bq, align 1, !tbaa !31
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.bt = load <2 x double>, ptr %i.bs, align 1, !tbaa !31
  %i.bu = fmul <2 x double> %i.br, %i.bt
  %i.bv = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.bu ; 2 uses
  %i.bw = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 6 ; 2 uses
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.bw
  %i.by = load <2 x double>, ptr %i.bx, align 1, !tbaa !31
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.bw
  %i.ca = load <2 x double>, ptr %i.bz, align 1, !tbaa !31
  %i.cb = fmul <2 x double> %i.by, %i.ca
  %i.cc = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.cb ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %i.cd = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.ad
  br i1 %i.cd, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, !llvm.loop !194

._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.ce = fadd <2 x double> %i.cc, %i.bv
  %i.cf = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.ad
  %i.cg = load <2 x double>, ptr %i.cf, align 1, !tbaa !31
  %i.ch = load <2 x double>, ptr %i.bf, align 1, !tbaa !31
  %i.ci = fmul <2 x double> %i.cg, %i.ch
  %i.cj = fadd <2 x double> %i.ce, %i.ci
  %i.ck = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.cj) ; 2 uses
  br i1 %lcmp.mod176.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol: ; preds = %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi i64 [ %i.cr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.af, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ] ; 3 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol = phi double [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ %i.ck, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %prol.iter177 = phi i64 [ %prol.iter177.next, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ], [ 0, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ]
  %i.cl = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.cm = load double, ptr %i.cl, align 8, !tbaa !30
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol
  %i.co = load double, ptr %i.cn, align 8, !tbaa !30
  %i.cp = fmul double %i.cm, %i.co
  %i.cq = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %i.cp ; 3 uses
  %i.cr = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, 1 ; 2 uses
  %prol.iter177.next = add i64 %prol.iter177, 1   ; 2 uses
  %prol.iter177.cmp.not = icmp eq i64 %prol.iter177.next, %xtraiter175
  br i1 %prol.iter177.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, !llvm.loop !195

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us
  %.lcssa146.unr = phi double [ poison, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi i64 [ %i.af, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr = phi double [ %i.ck, %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us.us.us ], [ %i.cq, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol ]
  br i1 %i.bb, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us

.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us:   ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi i64 [ %i.dt, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ] ; 6 uses
  %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us = phi double [ %i.ds, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ], [ %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ]
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !30
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !30
  %i.cw = fmul double %i.ct, %i.cv
  %i.cx = fadd double %.182.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %i.cw
  %i.cy = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !30
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.cy
  %i.dc = load double, ptr %i.db, align 8, !tbaa !30
  %i.dd = fmul double %i.da, %i.dc
  %i.de = fadd double %i.cx, %i.dd
  %i.df = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 2 ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.df
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !30
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.df
  %i.dj = load double, ptr %i.di, align 8, !tbaa !30
  %i.dk = fmul double %i.dh, %i.dj
  %i.dl = fadd double %i.de, %i.dk
  %i.dm = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 3 ; 2 uses
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.bi, i64 %i.dm
  %i.do = load double, ptr %i.dn, align 8, !tbaa !30
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.bd, i64 %i.dm
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !30
  %i.dr = fmul double %i.do, %i.dq
  %i.ds = fadd double %i.dl, %i.dr                ; 2 uses
  %i.dt = add nuw nsw i64 %.05283.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3 = icmp eq i64 %i.dt, %i.aa
  br i1 %exitcond.not.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us, label %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, !llvm.loop !196

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us: ; preds = %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit
  %.lcssa146 = phi double [ %.lcssa146.unr, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us.prol.loopexit ], [ %i.ds, %.lr.ph85.i.i.i.i.i.i.i.us.us.us.us.us.us.us.us ]
  %gep.i.us.us.us.us.us.us.us.us = getelementptr [8 x i8], ptr %invariant.gep.i.us.us.us.us, i64 %.011.i.us.us.us.us.us.us.us.us
  store double %.lcssa146, ptr %gep.i.us.us.us.us.us.us.us.us, align 8, !tbaa !30
  %i.du = add nuw nsw i64 %.011.i.us.us.us.us.us.us.us.us, 1 ; 2 uses
  %exitcond.not.i.us.us.us.us.us.us.us.us = icmp eq i64 %i.du, %i.u
  br i1 %exitcond.not.i.us.us.us.us.us.us.us.us, label %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us.us.us, !llvm.loop !197

._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us.us.us
  %i.dv = add nuw nsw i64 %.0816.i.us.us.us.us, 1 ; 2 uses
  %exitcond27.not.i.us.us.us.us = icmp eq i64 %i.dv, %i.v
  br i1 %exitcond27.not.i.us.us.us.us, label %_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_7ProductINS_9TransposeIKS5_EES5_Li1EEEEENS0_9assign_opIddEEEELi0ELi0EE3runERSF_.exit, label %.preheader.i.us.us.us.us, !llvm.loop !198

.preheader.i.us.us.us:                            ; preds = %.preheader.i.us.us.us.preheader, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split
  %.0816.i.us.us.us = phi i64 [ %i.gj, %._crit_edge.split.split.i.split.us.us.split.us.us.split.us.us.split ], [ 0, %.preheader.i.us.us.us.preheader ] ; 3 uses
  %i.dw = mul nuw nsw i64 %.0816.i.us.us.us, %i.aa
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.z, i64 %i.dw ; 9 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %i.dx, i64 16
  %i.dz = mul nuw nsw i64 %.0816.i.us.us.us, %i.u
  %invariant.gep.i.us.us.us = getelementptr [8 x i8], ptr %i.w, i64 %i.dz
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us, %.preheader.i.us.us.us
  %.011.i.us.us.us.us.us.us = phi i64 [ 0, %.preheader.i.us.us.us ], [ %i.gi, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_7ProductINS_9TransposeIKS4_EES4_Li1EEEEENS0_9assign_opIddEELi1EE23assignCoeffByOuterInnerEll.exit.i.loopexit.us.us.us.us.us.us ] ; 3 uses
  %i.ea = mul nsw i64 %i.an, %.011.i.us.us.us.us.us.us
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.am, i64 %i.ea ; 9 uses
  %i.ec = load <2 x double>, ptr %i.eb, align 1, !tbaa !31
  %i.ed = load <2 x double>, ptr %i.dx, align 1, !tbaa !31
  %i.ee = fmul <2 x double> %i.ec, %i.ed
  %i.ef = getelementptr inbounds nuw i8, ptr %i.eb, i64 16
  %i.eg = load <2 x double>, ptr %i.ef, align 1, !tbaa !31
  %i.eh = load <2 x double>, ptr %i.dy, align 1, !tbaa !31
  %i.ei = fmul <2 x double> %i.eg, %i.eh
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us

.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us:           ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us
  %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 4, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ] ; 4 uses
  %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us = phi i64 [ %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.eo, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.ee, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us = phi <2 x double> [ %i.ev, %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us ], [ %i.ei, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.us.us.us.us ]
  %i.ej = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.ek = load <2 x double>, ptr %i.ej, align 1, !tbaa !31
  %i.el = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us
  %i.em = load <2 x double>, ptr %i.el, align 1, !tbaa !31
  %i.en = fmul <2 x double> %i.ek, %i.em
  %i.eo = fadd <2 x double> %.07278.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.en ; 2 uses
  %i.ep = add nuw nsw i64 %.054.in79.i.i.i.i.i.i.i.us.us.us.us.us.us, 6 ; 2 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.eb, i64 %i.ep
  %i.er = load <2 x double>, ptr %i.eq, align 1, !tbaa !31
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.ep
  %i.et = load <2 x double>, ptr %i.es, align 1, !tbaa !31
  %i.eu = fmul <2 x double> %i.er, %i.et
  %i.ev = fadd <2 x double> %.07577.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.eu ; 2 uses
  %.054.i.i.i.i.i.i.i.us.us.us.us.us.us = add nuw nsw i64 %.05480.i.i.i.i.i.i.i.us.us.us.us.us.us, 4 ; 2 uses
  %i.ew = icmp slt i64 %.054.i.i.i.i.i.i.i.us.us.us.us.us.us, %i.ad
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.i.i.us.us.us.us.us.us, label %._crit_edge.i.i.i.i.i.i.i.loopexit.us.us.us.us.us.us, !llvm.loop !194
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi1EEELi4ELi2EDv2_dLi1ELb0ELb0EEclEPdRKS3_llll:bb.a
  store double %i.gm, ptr %i.gn, align 8, !tbaa !30
  %i.go = getelementptr [8 x i8], ptr %i.gk, i64 %i.fp
  %i.gp = load double, ptr %i.go, align 8, !tbaa !30
  %i.gq = add nsw i64 %.4158, 2                   ; 2 uses
  %i.gr = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.gs = getelementptr i8, ptr %i.gr, i64 8
  store double %i.gp, ptr %i.gs, align 8, !tbaa !30
  br i1 %exitcond.not.1, label %..loopexit_crit_edge, label %bb.c

bb.c:                                             ; preds = %.preheader139
  %i.gt = getelementptr [8 x i8], ptr %i.gk, i64 %i.fr
  %i.gu = load double, ptr %i.gt, align 8, !tbaa !30
  %i.gv = getelementptr inbounds [8 x i8], ptr %1, i64 %i.gq
  store double %i.gu, ptr %i.gv, align 8, !tbaa !30
  %i.gw = getelementptr [8 x i8], ptr %i.gk, i64 %i.ft
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !30
  %i.gy = add nsw i64 %.4158, 4
  %i.gz = getelementptr [8 x i8], ptr %1, i64 %.4158
  %i.ha = getelementptr i8, ptr %i.gz, i64 24
  store double %i.gx, ptr %i.ha, align 8, !tbaa !30
  br label %..loopexit_crit_edge

..loopexit_crit_edge:                             ; preds = %bb.c, %.preheader139
  %.lcssa305 = phi i64 [ %i.gy, %bb.c ], [ %i.gq, %.preheader139 ] ; 2 uses
  %i.hb = add nuw nsw i64 %.2130156, 1            ; 2 uses
  %exitcond201.not = icmp eq i64 %i.hb, %3
  br i1 %exitcond201.not, label %._crit_edge159.split, label %.preheader139, !llvm.loop !259

._crit_edge159.split:                             ; preds = %..loopexit_crit_edge, %.preheader141
  %.4.lcssa = phi i64 [ %.2.lcssa, %.preheader141 ], [ %.lcssa305, %..loopexit_crit_edge ] ; 2 uses
  %i.hc = add i64 %.1133167, %indvars.iv          ; 3 uses
  %i.hd = icmp slt i64 %i.hc, %i.v
  br i1 %i.hd, label %.lr.ph.split, label %._crit_edge, !llvm.loop !258

._crit_edge:                                      ; preds = %._crit_edge159.split, %._crit_edge159.split.us.us, %bb.b
  %.1133.lcssa = phi i64 [ %.0132175, %bb.b ], [ %i.fh, %._crit_edge159.split.us.us ], [ %i.hc, %._crit_edge159.split ] ; 4 uses
  %.1.lcssa = phi i64 [ %.0122178, %bb.b ], [ %.4.lcssa.us, %._crit_edge159.split.us.us ], [ %.4.lcssa, %._crit_edge159.split ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -2  ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, 0
  %indvar.next259 = add i64 %indvar258, 1
  br i1 %.not, label %.preheader137, label %bb.b

.preheader:                                       ; preds = %.preheader.lr.ph.split, %._crit_edge182
  %indvar286 = phi i64 [ 0, %.preheader.lr.ph.split ], [ %indvar.next287, %._crit_edge182 ] ; 2 uses
  %.8185 = phi i64 [ %.1.lcssa, %.preheader.lr.ph.split ], [ %.lcssa, %._crit_edge182 ] ; 5 uses
  %.2134184 = phi i64 [ %.1133.lcssa, %.preheader.lr.ph.split ], [ %i.hx, %._crit_edge182 ] ; 2 uses
  %i.he = mul nsw i64 %i.l, %.2134184
  %invariant.gep = getelementptr [8 x i8], ptr %i.j, i64 %i.he ; 6 uses
  br i1 %min.iters.check289, label %scalar.ph288.preheader, label %vector.memcheck285

vector.memcheck285:                               ; preds = %.preheader
  %i.hf = mul i64 %i.q, %indvar286
  %i.hg = add i64 %i.p, %i.hf
  %i.hh = shl i64 %.8185, 3
  %i.hi = add i64 %i.hg, %i.hh
  %i.hj = add i64 %i.hi, -1
  %diff.check = icmp ult i64 %i.hj, 31
  br i1 %diff.check, label %scalar.ph288.preheader, label %vector.ph290

vector.ph290:                                     ; preds = %vector.memcheck285
  %i.hk = add i64 %.8185, %n.vec291               ; 2 uses
  %i.hl = getelementptr [8 x i8], ptr %1, i64 %.8185
  br label %vector.body292

vector.body292:                                   ; preds = %vector.body292, %vector.ph290
  %index293 = phi i64 [ 0, %vector.ph290 ], [ %index.next296, %vector.body292 ] ; 3 uses
  %i.hm = getelementptr [8 x i8], ptr %invariant.gep, i64 %index293 ; 2 uses
  %i.hn = getelementptr i8, ptr %i.hm, i64 16
  %wide.load294 = load <2 x double>, ptr %i.hm, align 8, !tbaa !30
  %wide.load295 = load <2 x double>, ptr %i.hn, align 8, !tbaa !30
  %i.ho = getelementptr [8 x i8], ptr %i.hl, i64 %index293 ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.ho, i64 16
  store <2 x double> %wide.load294, ptr %i.ho, align 8, !tbaa !30
  store <2 x double> %wide.load295, ptr %i.hp, align 8, !tbaa !30
  %index.next296 = add nuw i64 %index293, 4       ; 2 uses
  %i.hq = icmp eq i64 %index.next296, %n.vec291
  br i1 %i.hq, label %middle.block297, label %vector.body292, !llvm.loop !260

middle.block297:                                  ; preds = %vector.body292
  br i1 %cmp.n298, label %._crit_edge182, label %scalar.ph288.preheader

scalar.ph288.preheader:                           ; preds = %vector.memcheck285, %.preheader, %middle.block297
  %.0180.ph = phi i64 [ 0, %vector.memcheck285 ], [ 0, %.preheader ], [ %n.vec291, %middle.block297 ] ; 3 uses
  %.9179.ph = phi i64 [ %.8185, %vector.memcheck285 ], [ %.8185, %.preheader ], [ %i.hk, %middle.block297 ] ; 2 uses
  br i1 %lcmp.mod312.not, label %scalar.ph288.prol.loopexit, label %scalar.ph288.prol

scalar.ph288.prol:                                ; preds = %scalar.ph288.preheader, %scalar.ph288.prol
  %.0180.prol = phi i64 [ %i.hu, %scalar.ph288.prol ], [ %.0180.ph, %scalar.ph288.preheader ] ; 2 uses
  %.9179.prol = phi i64 [ %i.hs, %scalar.ph288.prol ], [ %.9179.ph, %scalar.ph288.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph288.prol ], [ 0, %scalar.ph288.preheader ]
  %gep.prol = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180.prol
  %i.hr = load double, ptr %gep.prol, align 8, !tbaa !30
  %i.hs = add nsw i64 %.9179.prol, 1              ; 3 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179.prol
  store double %i.hr, ptr %i.ht, align 8, !tbaa !30
  %i.hu = add nuw nsw i64 %.0180.prol, 1          ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter311
  br i1 %prol.iter.cmp.not, label %scalar.ph288.prol.loopexit, label %scalar.ph288.prol, !llvm.loop !261

scalar.ph288.prol.loopexit:                       ; preds = %scalar.ph288.prol, %scalar.ph288.preheader
  %.lcssa301.unr = phi i64 [ poison, %scalar.ph288.preheader ], [ %i.hs, %scalar.ph288.prol ]
  %.0180.unr = phi i64 [ %.0180.ph, %scalar.ph288.preheader ], [ %i.hu, %scalar.ph288.prol ]
  %.9179.unr = phi i64 [ %.9179.ph, %scalar.ph288.preheader ], [ %i.hs, %scalar.ph288.prol ]
  %i.hv = sub nsw i64 %.0180.ph, %3
  %i.hw = icmp ugt i64 %i.hv, -4
  br i1 %i.hw, label %._crit_edge182, label %scalar.ph288

._crit_edge182:                                   ; preds = %scalar.ph288.prol.loopexit, %scalar.ph288, %middle.block297
  %.lcssa = phi i64 [ %i.hk, %middle.block297 ], [ %.lcssa301.unr, %scalar.ph288.prol.loopexit ], [ %i.ik, %scalar.ph288 ]
  %i.hx = add nuw nsw i64 %.2134184, 1            ; 2 uses
  %exitcond211.not = icmp eq i64 %i.hx, %4
  %indvar.next287 = add i64 %indvar286, 1
  br i1 %exitcond211.not, label %._crit_edge186.split, label %.preheader, !llvm.loop !262

scalar.ph288:                                     ; preds = %scalar.ph288.prol.loopexit, %scalar.ph288
  %.0180 = phi i64 [ %i.in, %scalar.ph288 ], [ %.0180.unr, %scalar.ph288.prol.loopexit ] ; 5 uses
  %.9179 = phi i64 [ %i.ik, %scalar.ph288 ], [ %.9179.unr, %scalar.ph288.prol.loopexit ] ; 5 uses
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %i.hy = load double, ptr %gep, align 8, !tbaa !30
  %i.hz = getelementptr inbounds [8 x i8], ptr %1, i64 %.9179
  store double %i.hy, ptr %i.hz, align 8, !tbaa !30
  %i.ia = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.1 = getelementptr i8, ptr %i.ia, i64 8
  %i.ib = load double, ptr %gep.1, align 8, !tbaa !30
  %i.ic = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.id = getelementptr i8, ptr %i.ic, i64 8
  store double %i.ib, ptr %i.id, align 8, !tbaa !30
  %i.ie = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.2 = getelementptr i8, ptr %i.ie, i64 16
  %i.if = load double, ptr %gep.2, align 8, !tbaa !30
  %i.ig = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.ih = getelementptr i8, ptr %i.ig, i64 16
  store double %i.if, ptr %i.ih, align 8, !tbaa !30
  %i.ii = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0180
  %gep.3 = getelementptr i8, ptr %i.ii, i64 24
  %i.ij = load double, ptr %gep.3, align 8, !tbaa !30
  %i.ik = add nsw i64 %.9179, 4                   ; 2 uses
  %i.il = getelementptr [8 x i8], ptr %1, i64 %.9179
  %i.im = getelementptr i8, ptr %i.il, i64 24
  store double %i.ij, ptr %i.im, align 8, !tbaa !30
  %i.in = add nuw nsw i64 %.0180, 4               ; 2 uses
  %exitcond210.not.3 = icmp eq i64 %i.in, %3
  br i1 %exitcond210.not.3, label %._crit_edge182, label %scalar.ph288, !llvm.loop !263

._crit_edge186.split:                             ; preds = %._crit_edge182, %.preheader137
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #14 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !284
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !58     ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !59   ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %i.j = shl i64 %3, 5
  %scevgep86 = getelementptr i8, ptr %1, i64 %i.j
  %i.k = mul i64 %i.g, 24
  %scevgep88 = getelementptr i8, ptr %i.e, i64 %i.k
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.l = add nsw i64 %smax, -4                    ; 2 uses
  %i.m = lshr exact i64 %i.l, 2
  %i.n = shl i64 %i.l, 3                          ; 3 uses
  %i.o = or disjoint i64 %i.n, 24
  %i.p = mul i64 %i.g, %i.o
  %i.q = shl i64 %3, 3                            ; 4 uses
  %i.r = getelementptr i8, ptr %i.e, i64 %i.p
  %scevgep89 = getelementptr i8, ptr %i.r, i64 %i.q
  %i.s = shl i64 %i.g, 4
  %scevgep90 = getelementptr i8, ptr %i.e, i64 %i.s
  %i.t = or disjoint i64 %i.n, 16
  %i.u = mul i64 %i.g, %i.t
  %i.v = getelementptr i8, ptr %i.e, i64 %i.u
  %scevgep91 = getelementptr i8, ptr %i.v, i64 %i.q
  %i.w = shl i64 %i.g, 3
  %scevgep92 = getelementptr i8, ptr %i.e, i64 %i.w
  %i.x = or disjoint i64 %i.n, 8
  %i.y = mul i64 %i.g, %i.x
  %i.z = getelementptr i8, ptr %i.e, i64 %i.y
  %scevgep93 = getelementptr i8, ptr %i.z, i64 %i.q
  %i.aa = mul i64 %i.g, %i.m
  %i.ab = shl i64 %i.aa, 5
  %i.ac = getelementptr i8, ptr %i.e, i64 %i.ab
  %scevgep94 = getelementptr i8, ptr %i.ac, i64 %i.q
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep91, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep89, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep93, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep94, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep90, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep88, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep92, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 30
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check98 = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.ds, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.04559.us = phi i64 [ %.lcssa79, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 7 uses
  %i.am = mul nsw i64 %i.g, %.04460.us
  %i.an = getelementptr [8 x i8], ptr %i.e, i64 %i.am ; 4 uses
  %i.ao = or disjoint i64 %.04460.us, 1
  %i.ap = mul nsw i64 %i.g, %i.ao
  %i.aq = getelementptr [8 x i8], ptr %i.e, i64 %i.ap ; 4 uses
  %i.ar = or disjoint i64 %.04460.us, 2
  %i.as = mul nsw i64 %i.g, %i.ar
  %i.at = getelementptr [8 x i8], ptr %i.e, i64 %i.as ; 4 uses
  %i.au = or disjoint i64 %.04460.us, 3
  %i.av = mul nsw i64 %i.g, %i.au
  %i.aw = getelementptr [8 x i8], ptr %i.e, i64 %i.av ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.ax = shl i64 %.04559.us, 3                   ; 3 uses
  %scevgep80 = getelementptr i8, ptr %scevgep, i64 %i.ax ; 2 uses
  %i.ay = getelementptr i8, ptr %scevgep80, i64 %mul.result
  %i.az = icmp ult ptr %i.ay, %scevgep80
  %scevgep82 = getelementptr i8, ptr %scevgep81, i64 %i.ax ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep82, i64 %mul.result
  %i.bb = icmp ult ptr %i.ba, %scevgep82
  %scevgep84 = getelementptr i8, ptr %scevgep83, i64 %i.ax ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep84, i64 %mul.result
  %i.bd = icmp ult ptr %i.bc, %scevgep84
  %i.be = or i1 %i.bd, %mul.overflow
  %i.bf = or i1 %i.bb, %i.az
  %i.bg = or i1 %i.bf, %i.be
  br i1 %i.bg, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bh = shl i64 %.04559.us, 3                   ; 2 uses
  %scevgep85 = getelementptr i8, ptr %1, i64 %i.bh
  %scevgep87 = getelementptr i8, ptr %scevgep86, i64 %i.bh
  %i.bi = insertelement <4 x ptr> poison, ptr %scevgep85, i64 0
  %i.bj = shufflevector <4 x ptr> %i.bi, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bk = icmp ult <4 x ptr> %i.bj, %i.ag
  %i.bl = insertelement <4 x ptr> poison, ptr %scevgep87, i64 0
  %i.bm = shufflevector <4 x ptr> %i.bl, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bn = icmp ult <4 x ptr> %i.ak, %i.bm
  %i.bo = and <4 x i1> %i.bk, %i.bn
  %i.bp = bitcast <4 x i1> %i.bo to i4
  %i.bq = icmp ne i4 %i.bp, 0
  %op.rdx = or i1 %i.bq, %stride.check98
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.br = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bs = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bt, align 8, !tbaa !30, !alias.scope !285
  %.idx = shl i64 %index, 5
  %i.bu = getelementptr i8, ptr %i.bs, i64 %.idx
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load109 = load <2 x double>, ptr %i.bv, align 8, !tbaa !30, !alias.scope !286
  %i.bw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load110 = load <2 x double>, ptr %i.bw, align 8, !tbaa !30, !alias.scope !287
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load111 = load <2 x double>, ptr %i.bx, align 8, !tbaa !30, !alias.scope !288
  %i.by = shufflevector <2 x double> %wide.load, <2 x double> %wide.load109, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bz = shufflevector <2 x double> %wide.load110, <2 x double> %wide.load111, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.by, <4 x double> %i.bz, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bu, align 8, !tbaa !30, !alias.scope !289, !noalias !290
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.ca = icmp eq i64 %index.next, %n.vec
  br i1 %i.ca, label %middle.block, label %vector.body, !llvm.loop !277

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.br, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cb = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.cc = load double, ptr %i.cb, align 8, !tbaa !30
  %i.cd = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.cc, ptr %i.cd, align 8, !tbaa !30
  %i.ce = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.cf = load double, ptr %i.ce, align 8, !tbaa !30
  %i.cg = getelementptr i8, ptr %i.cd, i64 8
  store double %i.cf, ptr %i.cg, align 8, !tbaa !30
  %i.ch = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ci = load double, ptr %i.ch, align 8, !tbaa !30
  %i.cj = getelementptr i8, ptr %i.cd, i64 16
  store double %i.ci, ptr %i.cj, align 8, !tbaa !30
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cl = load double, ptr %i.ck, align 8, !tbaa !30
  %i.cm = getelementptr i8, ptr %i.cd, i64 24
  store double %i.cl, ptr %i.cm, align 8, !tbaa !30
  %i.cn = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.co = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa128.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.co, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cn, %scalar.ph.prol ]
  %i.cp = icmp eq i64 %3, %.neg
  br i1 %i.cp, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dr, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.dq, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cq = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !30
  %i.cs = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.cr, ptr %i.cs, align 8, !tbaa !30
  %i.ct = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cu = load double, ptr %i.ct, align 8, !tbaa !30
  %i.cv = getelementptr i8, ptr %i.cs, i64 8
  store double %i.cu, ptr %i.cv, align 8, !tbaa !30
  %i.cw = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !30
  %i.cy = getelementptr i8, ptr %i.cs, i64 16
  store double %i.cx, ptr %i.cy, align 8, !tbaa !30
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.da = load double, ptr %i.cz, align 8, !tbaa !30
  %i.db = getelementptr i8, ptr %i.cs, i64 24
  store double %i.da, ptr %i.db, align 8, !tbaa !30
  %i.dc = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.dc
  %i.de = load double, ptr %i.dd, align 8, !tbaa !30
  %i.df = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.dg = getelementptr i8, ptr %i.df, i64 32
  store double %i.de, ptr %i.dg, align 8, !tbaa !30
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.dc
  %i.di = load double, ptr %i.dh, align 8, !tbaa !30
  %i.dj = getelementptr i8, ptr %i.df, i64 40
  store double %i.di, ptr %i.dj, align 8, !tbaa !30
  %i.dk = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.dc
  %i.dl = load double, ptr %i.dk, align 8, !tbaa !30
  %i.dm = getelementptr i8, ptr %i.df, i64 48
  store double %i.dl, ptr %i.dm, align 8, !tbaa !30
  %i.dn = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.dc
  %i.do = load double, ptr %i.dn, align 8, !tbaa !30
  %i.dp = getelementptr i8, ptr %i.df, i64 56
  store double %i.do, ptr %i.dp, align 8, !tbaa !30
  %i.dq = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dr = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dr, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !278

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.br, %middle.block ], [ %.lcssa128.unr, %scalar.ph.prol.loopexit ], [ %i.dq, %scalar.ph ] ; 2 uses
  %i.ds = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.c
  br i1 %i.dt, label %.lr.ph.us, label %.preheader, !llvm.loop !279

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.du = icmp slt i64 %i.c, %4
  br i1 %i.du, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dv = load ptr, ptr %2, align 8, !tbaa !58    ; 2 uses
  %i.dw = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dx = load i64, ptr %i.dw, align 8, !tbaa !59 ; 3 uses
  %i.dy = icmp sgt i64 %3, 0
  br i1 %i.dy, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.dz = ptrtoaddr ptr %i.dv to i64
  %i.ea = mul i64 %i.dx, %i.b
  %i.eb = shl i64 %i.ea, 5
  %i.ec = add i64 %i.eb, %i.dz
  %i.ed = sub i64 %i.a, %i.ec
  %i.ee = mul i64 %i.dx, -8
  %min.iters.check115 = icmp ult i64 %3, 4
  %n.vec117 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n124 = icmp eq i64 %3, %n.vec117
  %xtraiter129 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod130.not = icmp eq i64 %xtraiter129, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
end_hunk_2
