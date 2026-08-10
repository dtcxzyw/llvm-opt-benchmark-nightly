inline.NumInlined: 2213
inline.NumDeleted: 921
loop-unroll.NumRuntimeUnrolled: 24
loop-unroll.NumUnrolled: 24
begin_hunk_0_@_ZN5Eigen12SparseMatrixIdLi0EiE14assignDiagonalINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS_8internal9assign_opIddEEEEvT_RKT0_:bb.a
  %i.aw = add nsw i64 %i.b, 1                     ; 8 uses
  %i.ax = tail call i64 @llvm.smax.i64(i64 %i.aw, i64 2)
  %i.ay = trunc i64 %i.ax to i32
  %i.az = add i32 %i.ay, -1
  %i.ba = sdiv i32 %i.j, %i.az                    ; 2 uses
  %.not.i.i.i.i13 = icmp slt i32 %i.j, 0
  %i.bb = xor i64 %i.b, -1
  %i.bc = select i1 %.not.i.i.i.i13, i64 %i.bb, i64 %i.aw
  %i.bd = trunc i64 %i.bc to i32
  %i.be = add i32 %i.bd, %i.j
  %i.bf = tail call noundef i32 @llvm.abs.i32(i32 %i.j, i1 true)
  %i.bg = add nuw nsw i32 %i.bf, 1                ; 2 uses
  %i.bh = sdiv i32 %i.be, %i.bg                   ; 3 uses
  %i.bi = icmp sgt i64 %i.b, 0
  br i1 %i.bi, label %.lr.ph.i.i.i.i.i.i.i.i.i.i19, label %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i14

_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i14: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit
  %i.bj = icmp eq i64 %i.b, 0
  br i1 %i.bj, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i15, label %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23

.lr.ph.i.i.i.i.i.i.i.i.i.i19:                     ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit
  %i.bk = zext nneg i32 %i.bg to i64
  %i.bl = icmp samesign ugt i64 %i.aw, %i.bk
  br i1 %i.bl, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.preheader.new, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i15

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.preheader.new: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i19
  %unroll_iter184 = and i64 %i.aw, 9223372036854775806
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i15: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i19, %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i14
  %min.iters.check75 = icmp ult i64 %i.aw, 8
  br i1 %min.iters.check75, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16.preheader, label %vector.ph76

vector.ph76:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i15
  %n.vec77 = and i64 %i.aw, -8                    ; 3 uses
  %broadcast.splatinsert78 = insertelement <4 x i32> poison, i32 %i.ba, i64 0
  %broadcast.splat79 = shufflevector <4 x i32> %broadcast.splatinsert78, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body80

vector.body80:                                    ; preds = %vector.body80, %vector.ph76
  %index81 = phi i64 [ 0, %vector.ph76 ], [ %index.next84, %vector.body80 ] ; 2 uses
  %vec.ind82 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph76 ], [ %vec.ind.next85, %vector.body80 ] ; 3 uses
  %step.add83 = add <4 x i32> %vec.ind82, splat (i32 4)
  %i.bm = mul nsw <4 x i32> %broadcast.splat79, %vec.ind82
  %i.bn = mul nsw <4 x i32> %broadcast.splat79, %step.add83
  %i.bo = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %index81 ; 2 uses
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bo, i64 16
  store <4 x i32> %i.bm, ptr %i.bo, align 4, !tbaa !211
  store <4 x i32> %i.bn, ptr %i.bp, align 4, !tbaa !211
  %index.next84 = add nuw i64 %index81, 8         ; 2 uses
  %vec.ind.next85 = add <4 x i32> %vec.ind82, splat (i32 8)
  %i.bq = icmp eq i64 %index.next84, %n.vec77
  br i1 %i.bq, label %middle.block86, label %vector.body80, !llvm.loop !215

middle.block86:                                   ; preds = %vector.body80
  %cmp.n87 = icmp eq i64 %i.aw, %n.vec77
  br i1 %cmp.n87, label %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i15, %middle.block86
  %.05.i.i.i.i.i.i.i.i.i.i17.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i15 ], [ %n.vec77, %middle.block86 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.preheader.new
  %.05.us.i.i.i.i.i.i.i.i.i.i21 = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.preheader.new ], [ %i.by, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20 ] ; 4 uses
  %niter185 = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.preheader.new ], [ %niter185.next.1, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20 ]
  %i.br = trunc i64 %.05.us.i.i.i.i.i.i.i.i.i.i21 to i32
  %i.bs = sdiv i32 %i.br, %i.bh
  %i.bt = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.05.us.i.i.i.i.i.i.i.i.i.i21
  store i32 %i.bs, ptr %i.bt, align 4, !tbaa !211
  %i.bu = or disjoint i64 %.05.us.i.i.i.i.i.i.i.i.i.i21, 1 ; 2 uses
  %i.bv = trunc i64 %i.bu to i32
  %i.bw = sdiv i32 %i.bv, %i.bh
  %i.bx = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.bu
  store i32 %i.bw, ptr %i.bx, align 4, !tbaa !211
  %i.by = add nuw nsw i64 %.05.us.i.i.i.i.i.i.i.i.i.i21, 2 ; 3 uses
  %niter185.next.1 = add i64 %niter185, 2         ; 2 uses
  %niter185.ncmp.1 = icmp eq i64 %niter185.next.1, %unroll_iter184
  br i1 %niter185.ncmp.1, label %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23.loopexit.unr-lcssa, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20, !llvm.loop !213

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16
  %.05.i.i.i.i.i.i.i.i.i.i17 = phi i64 [ %i.cc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16 ], [ %.05.i.i.i.i.i.i.i.i.i.i17.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16.preheader ] ; 4 uses
  %i.bz = trunc i64 %.05.i.i.i.i.i.i.i.i.i.i17 to i32
  %i.ca = mul nsw i32 %i.ba, %i.bz
  %i.cb = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %.05.i.i.i.i.i.i.i.i.i.i17
  store i32 %i.ca, ptr %i.cb, align 4, !tbaa !211
  %i.cc = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i17, 1
  %exitcond.not.i.i.i.i.i.i.i.i.i.i18 = icmp eq i64 %.05.i.i.i.i.i.i.i.i.i.i17, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i18, label %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16, !llvm.loop !216

_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23.loopexit.unr-lcssa: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20
  %i.cd = and i64 %i.b, 1
  %lcmp.mod182.not.not = icmp eq i64 %i.cd, 0
  br i1 %lcmp.mod182.not.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.epil.preheader, label %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.epil.preheader: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23.loopexit.unr-lcssa
  %lcmp.mod183 = trunc i64 %i.aw to i1
  tail call void @llvm.assume(i1 %lcmp.mod183)
  %i.ce = trunc i64 %i.by to i32
  %i.cf = sdiv i32 %i.ce, %i.bh
  %i.cg = getelementptr inbounds nuw [4 x i8], ptr %i.av, i64 %i.by
  store i32 %i.cf, ptr %i.cg, align 4, !tbaa !211
  br label %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23

_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i16, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i20.epil.preheader, %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23.loopexit.unr-lcssa, %middle.block86, %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i14
  %i.ch = load ptr, ptr %i.g, align 8, !tbaa !24, !noalias !217 ; 17 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !23, !noalias !217 ; 13 uses
  %i.ck = icmp eq ptr %i.cj, null
  %i.cl = load i64, ptr %i.e, align 8, !tbaa !12, !noalias !217 ; 12 uses
  br i1 %i.ck, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23
  %i.cm = getelementptr inbounds [4 x i8], ptr %i.av, i64 %i.cl
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !211, !noalias !217
  %i.co = load i32, ptr %i.av, align 4, !tbaa !211, !noalias !217
  %i.cp = sub nsw i32 %i.cn, %i.co
  %i.cq = sext i32 %i.cp to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE6coeffsEv.exit

bb.e:                                             ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_5ArrayIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit23
  %i.cr = icmp eq i64 %i.cl, 0
  br i1 %i.cr, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE6coeffsEv.exit, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.cs = ptrtoint ptr %i.cj to i64               ; 2 uses
  %i.ct = and i64 %i.cs, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.g, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.g:                                             ; preds = %bb.f
  %i.cu = lshr exact i64 %i.cs, 2
  %i.cv = sub nsw i64 0, %i.cu
  %i.cw = and i64 %i.cv, 3
  %i.cx = tail call i64 @llvm.smin.i64(i64 %i.cw, i64 %i.cl)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.g, %bb.f
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.cx, %bb.g ], [ %i.cl, %bb.f ] ; 12 uses
  %i.cy = sub nsw i64 %i.cl, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.cz = sdiv i64 %i.cy, 8
  %i.da = shl nsw i64 %i.cz, 3                    ; 2 uses
  %i.db = sdiv i64 %i.cy, 4                       ; 2 uses
  %i.dc = shl nsw i64 %i.db, 2                    ; 2 uses
  %i.dd = add nsw i64 %i.da, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.de = add nsw i64 %i.dc, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.cy, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.l, label %bb.h

bb.h:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.df = getelementptr [4 x i8], ptr %i.cj, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.dg = load <2 x i64>, ptr %i.df, align 1, !tbaa !46, !noalias !217 ; 2 uses
  %i.dh = icmp sgt i64 %i.cy, 7
  br i1 %i.dh, label %bb.i, label %bb.k

bb.i:                                             ; preds = %bb.h
  %i.di = getelementptr i8, ptr %i.df, i64 16
  %i.dj = load <4 x i32>, ptr %i.di, align 1, !tbaa !46, !noalias !217 ; 2 uses
  %i.dk = bitcast <2 x i64> %i.dg to <4 x i32>    ; 2 uses
  %i.dl = icmp samesign ugt i64 %i.cy, 15
  br i1 %i.dl, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.i
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.i
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.dj, %bb.i ], [ %i.dw, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.dk, %bb.i ], [ %i.ds, %.lr.ph.i.i.i.i.i ]
  %i.dm = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.dn = bitcast <4 x i32> %i.dm to <2 x i64>
  %i.do = icmp sgt i64 %i.dc, %i.da
  br i1 %i.do, label %bb.j, label %bb.k

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.ds, %.lr.ph.i.i.i.i.i ], [ %i.dk, %.lr.ph.preheader.i.i.i.i.i ]
  %i.dp = phi <4 x i32> [ %i.dw, %.lr.ph.i.i.i.i.i ], [ %i.dj, %.lr.ph.preheader.i.i.i.i.i ]
  %i.dq = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %.05780.i.i.i.i.i
  %i.dr = load <4 x i32>, ptr %i.dq, align 1, !tbaa !46, !noalias !217
  %i.ds = add <4 x i32> %i.dr, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.dt = getelementptr [4 x i8], ptr %i.cj, i64 %.057.in79.i.i.i.i.i
  %i.du = getelementptr i8, ptr %i.dt, i64 48
  %i.dv = load <4 x i32>, ptr %i.du, align 1, !tbaa !46, !noalias !217
  %i.dw = add <4 x i32> %i.dv, %i.dp              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.dx = icmp slt i64 %.057.i.i.i.i.i, %i.dd
  br i1 %i.dx, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !220

bb.j:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.dy = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %i.dd
  %i.dz = load <4 x i32>, ptr %i.dy, align 1, !tbaa !46, !noalias !217
  %i.ea = add <4 x i32> %i.dz, %i.dm
  %i.eb = bitcast <4 x i32> %i.ea to <2 x i64>
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %._crit_edge.i.i.i.i.i, %bb.h
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.dg, %bb.h ], [ %i.eb, %bb.j ], [ %i.dn, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ec = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.ed = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.ee = shufflevector <4 x i32> %i.ed, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ef = add <4 x i32> %i.ee, %i.ec              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ef, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ef, %shift ; 2 uses
  %3 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.eg = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.eg, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.k
  %min.iters.check90 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check90, label %.lr.ph85.i.i.i.i.i.preheader172, label %vector.ph91

vector.ph91:                                      ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec92 = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.eh = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body93

vector.body93:                                    ; preds = %vector.body93, %vector.ph91
  %index94 = phi i64 [ 0, %vector.ph91 ], [ %index.next97, %vector.body93 ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.eh, %vector.ph91 ], [ %i.ek, %vector.body93 ]
  %vec.phi95 = phi <4 x i32> [ zeroinitializer, %vector.ph91 ], [ %i.el, %vector.body93 ]
  %i.ei = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index94 ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 16
  %wide.load = load <4 x i32>, ptr %i.ei, align 4, !tbaa !211, !noalias !217
  %wide.load96 = load <4 x i32>, ptr %i.ej, align 4, !tbaa !211, !noalias !217
  %i.ek = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.el = add <4 x i32> %wide.load96, %vec.phi95  ; 2 uses
  %index.next97 = add nuw i64 %index94, 8         ; 2 uses
  %i.em = icmp eq i64 %index.next97, %n.vec92
  br i1 %i.em, label %middle.block98, label %vector.body93, !llvm.loop !221

middle.block98:                                   ; preds = %vector.body93
  %bin.rdx = add <4 x i32> %i.el, %i.ek
  %i.en = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n99 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec92
  br i1 %cmp.n99, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader172

.lr.ph85.i.i.i.i.i.preheader172:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block98
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec92, %middle.block98 ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %3, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.en, %middle.block98 ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block98, %bb.k
  %.075.lcssa.i.i.i.i.i = phi i32 [ %3, %bb.k ], [ %i.en, %middle.block98 ], [ %i.fd, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.eo = icmp slt i64 %i.de, %i.cl
  br i1 %i.eo, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.ep = shl nsw i64 %i.db, 2
  %i.eq = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.ep
  %i.er = sub i64 %i.cl, %i.eq                    ; 3 uses
  %min.iters.check102 = icmp ult i64 %i.er, 8
  br i1 %min.iters.check102, label %.lr.ph89.i.i.i.i.i.preheader167, label %vector.ph103

vector.ph103:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec104 = and i64 %i.er, -8                   ; 3 uses
  %i.es = add i64 %i.de, %n.vec104
  %i.et = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.eu = getelementptr [4 x i8], ptr %i.cj, i64 %i.de
  br label %vector.body105

vector.body105:                                   ; preds = %vector.body105, %vector.ph103
  %index106 = phi i64 [ 0, %vector.ph103 ], [ %index.next111, %vector.body105 ] ; 2 uses
  %vec.phi107 = phi <4 x i32> [ %i.et, %vector.ph103 ], [ %i.ex, %vector.body105 ]
  %vec.phi108 = phi <4 x i32> [ zeroinitializer, %vector.ph103 ], [ %i.ey, %vector.body105 ]
  %i.ev = getelementptr [4 x i8], ptr %i.eu, i64 %index106 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
  %wide.load109 = load <4 x i32>, ptr %i.ev, align 4, !tbaa !211, !noalias !217
  %wide.load110 = load <4 x i32>, ptr %i.ew, align 4, !tbaa !211, !noalias !217
  %i.ex = add <4 x i32> %wide.load109, %vec.phi107 ; 2 uses
  %i.ey = add <4 x i32> %wide.load110, %vec.phi108 ; 2 uses
  %index.next111 = add nuw i64 %index106, 8       ; 2 uses
  %i.ez = icmp eq i64 %index.next111, %n.vec104
  br i1 %i.ez, label %middle.block112, label %vector.body105, !llvm.loop !222

middle.block112:                                  ; preds = %vector.body105
  %bin.rdx113 = add <4 x i32> %i.ey, %i.ex
  %i.fa = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx113) ; 2 uses
  %cmp.n114 = icmp eq i64 %i.er, %n.vec104
  br i1 %cmp.n114, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader167

.lr.ph89.i.i.i.i.i.preheader167:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block112
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.de, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.es, %middle.block112 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.fa, %middle.block112 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader172, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.fe, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader172 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.fd, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader172 ]
  %i.fb = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.05683.i.i.i.i.i
  %i.fc = load i32, ptr %i.fb, align 4, !tbaa !211, !noalias !217
  %i.fd = add nsw i32 %i.fc, %.07582.i.i.i.i.i    ; 2 uses
  %i.fe = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.fe, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !223

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader167, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.fi, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader167 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.fh, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader167 ]
  %i.ff = getelementptr inbounds [4 x i8], ptr %i.cj, i64 %.05588.i.i.i.i.i
  %i.fg = load i32, ptr %i.ff, align 4, !tbaa !211, !noalias !217
  %i.fh = add nsw i32 %i.fg, %.187.i.i.i.i.i      ; 2 uses
  %i.fi = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.fj = icmp slt i64 %i.fi, %i.cl
  br i1 %i.fj, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !224

bb.l:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.fk = load i32, ptr %i.cj, align 4, !tbaa !211, !noalias !217 ; 3 uses
  %i.fl = icmp sgt i64 %i.cl, 1
  br i1 %i.fl, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.l
  %i.fm = add nsw i64 %i.cl, -1                   ; 2 uses
  %min.iters.check118 = icmp ult i64 %i.cl, 9
  br i1 %min.iters.check118, label %.lr.ph94.i.i.i.i.i.preheader164, label %vector.ph119

vector.ph119:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec120 = and i64 %i.fm, -8                   ; 3 uses
  %i.fn = or disjoint i64 %n.vec120, 1
  %i.fo = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.fk, i64 0
  br label %vector.body121

vector.body121:                                   ; preds = %vector.body121, %vector.ph119
  %index122 = phi i64 [ 0, %vector.ph119 ], [ %index.next127, %vector.body121 ] ; 2 uses
  %vec.phi123 = phi <4 x i32> [ %i.fo, %vector.ph119 ], [ %i.fs, %vector.body121 ]
  %vec.phi124 = phi <4 x i32> [ zeroinitializer, %vector.ph119 ], [ %i.ft, %vector.body121 ]
  %i.fp = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %index122 ; 2 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %i.fp, i64 4
  %i.fr = getelementptr inbounds nuw i8, ptr %i.fp, i64 20
  %wide.load125 = load <4 x i32>, ptr %i.fq, align 4, !tbaa !211, !noalias !217
  %wide.load126 = load <4 x i32>, ptr %i.fr, align 4, !tbaa !211, !noalias !217
  %i.fs = add <4 x i32> %wide.load125, %vec.phi123 ; 2 uses
  %i.ft = add <4 x i32> %wide.load126, %vec.phi124 ; 2 uses
  %index.next127 = add nuw i64 %index122, 8       ; 2 uses
  %i.fu = icmp eq i64 %index.next127, %n.vec120
  br i1 %i.fu, label %middle.block128, label %vector.body121, !llvm.loop !225

middle.block128:                                  ; preds = %vector.body121
  %bin.rdx129 = add <4 x i32> %i.ft, %i.fs
  %i.fv = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx129) ; 2 uses
  %cmp.n130 = icmp eq i64 %i.fm, %n.vec120
  br i1 %cmp.n130, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader164

.lr.ph94.i.i.i.i.i.preheader164:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block128
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.fn, %middle.block128 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.fk, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.fv, %middle.block128 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader164, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.fz, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader164 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.fy, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader164 ]
  %i.fw = getelementptr inbounds nuw [4 x i8], ptr %i.cj, i64 %.092.i.i.i.i.i
  %i.fx = load i32, ptr %i.fw, align 4, !tbaa !211, !noalias !217
  %i.fy = add nsw i32 %i.fx, %.291.i.i.i.i.i      ; 2 uses
  %i.fz = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.fz, %i.cl
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !226

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block112, %middle.block128, %bb.l, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.fy, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.fk, %bb.l ], [ %i.fv, %middle.block128 ], [ %i.fa, %middle.block112 ], [ %i.fh, %.lr.ph89.i.i.i.i.i ]
  %i.ga = sext i32 %.0.i.i.i to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE6coeffsEv.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE6coeffsEv.exit: ; preds = %bb.d, %bb.e, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i
  %.0.i.i = phi i64 [ %i.cq, %bb.d ], [ %i.ga, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.e ] ; 12 uses
  %i.gb = ptrtoint ptr %i.ch to i64               ; 5 uses
  %i.gc = and i64 %i.gb, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.gc, 0 ; 2 uses
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i, label %bb.m, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

bb.m:                                             ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE6coeffsEv.exit
  %i.gd = lshr exact i64 %i.gb, 3
  %i.ge = and i64 %i.gd, 1
  %i.gf = tail call i64 @llvm.smin.i64(i64 %i.ge, i64 %.0.i.i)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.m, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE6coeffsEv.exit
  %.0.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.gf, %bb.m ], [ %.0.i.i, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE6coeffsEv.exit ] ; 8 uses
  %i.gg = sub nsw i64 %.0.i.i, %.0.i.i.i.i.i.i.i.i.i.i.i ; 3 uses
  %i.gh = sdiv i64 %i.gg, 2                       ; 2 uses
  %i.gi = shl nsw i64 %i.gh, 1                    ; 2 uses
  %i.gj = add nsw i64 %i.gi, %.0.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gk = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gk, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i:           ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.gl = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  tail call void @llvm.memset.p0.i64(ptr align 8 %i.ch, i8 0, i64 %i.gl, i1 false), !tbaa !32
  br label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.preheader.i, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i
  %i.gm = icmp sgt i64 %i.gg, 1
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.preheader.i:             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_5ArrayIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i
  %i.gn = shl nuw nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 3
  %scevgep.i = getelementptr i8, ptr %i.ch, i64 %i.gn
  %i.go = add nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i, 2
  %smax.i = tail call i64 @llvm.smax.i64(i64 %i.gj, i64 %i.go)
  %i.gp = xor i64 %.0.i.i.i.i.i.i.i.i.i.i.i, -1
  %i.gq = add nsw i64 %smax.i, %i.gp
  %i.gr = shl nsw i64 %i.gq, 3
  %i.gs = and i64 %i.gr, -16
  %i.gt = add i64 %i.gs, 16
  tail call void @llvm.memset.p0.i64(ptr align 16 %scevgep.i, i8 0, i64 %i.gt, i1 false), !tbaa !46
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal17product_evaluatorINS_7ProductINS_12SparseMatrixIdLi0EiEES4_Li2EEELi8ENS_11SparseShapeES6_ddED2Ev:bb.a
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !25   ; 2 uses
  %i.j = icmp eq ptr %i.i, null
  br i1 %i.j, label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void @_ZdaPv(ptr noundef nonnull %i.i) #23
  br label %_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit

_ZN5Eigen12SparseMatrixIdLi0EiED2Ev.exit:         ; preds = %bb.c, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN5Eigen8internalL39conservative_sparse_sparse_product_implINS_12SparseMatrixIdLi0EiEES3_S3_EEvRKT_RKT0_RT1_b(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %2, i1 noundef zeroext %3) unnamed_addr #3 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !26   ; 12 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i64, ptr %i.c, align 8, !tbaa !12   ; 14 uses
  %i.e = icmp ugt i64 %i.b, 131072                ; 5 uses
  br i1 %i.e, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.b) #21 ; 3 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !21
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.b
  %i.i = icmp ugt i64 %i.b, 2305843009213693951
  br i1 %i.i, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.j = shl nuw i64 %i.b, 3
  br label %bb.e

bb.d:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc140 unwind label %.split

.noexc140:                                        ; preds = %bb.d
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit: ; preds = %bb.a
  %i.l = add nuw nsw i64 %i.b, 15
  %i.m = alloca i8, i64 %i.l, align 16            ; 2 uses
  %i.n = shl nuw nsw i64 %i.b, 3                  ; 3 uses
  %i.o = icmp samesign ult i64 %i.b, 16385
  br i1 %i.o, label %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread, label %bb.e

_ZN5Eigen8internal14aligned_mallocEm.exit143.thread: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.p = add nuw nsw i64 %i.n, 15
  %i.q = alloca i8, i64 %i.p, align 16
  %i.r = add nuw nsw i64 %i.n, 15
  %i.s = alloca i8, i64 %i.r, align 16
  br label %bb.h

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.t = phi i64 [ %i.j, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.n, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 2 uses
  %i.u = phi ptr [ %i.f, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.thread ], [ %i.m, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit ] ; 3 uses
  %i.v = tail call noalias ptr @malloc(i64 noundef %i.t) #21 ; 3 uses
  %i.w = icmp eq ptr %i.v, null
  br i1 %i.w, label %bb.f, label %_ZN5Eigen8internal14aligned_mallocEm.exit143

bb.f:                                             ; preds = %bb.e
  %i.x = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.x, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.x, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc142 unwind label %.split261

.noexc142:                                        ; preds = %bb.f
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit143:     ; preds = %bb.e
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.t) #21 ; 2 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.g, label %bb.h

bb.g:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #20 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !21
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #22
          to label %.noexc147 unwind label %.split265

.noexc147:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit143, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread
  %i.ab = phi i1 [ false, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ true, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 2 uses
  %i.ac = phi ptr [ %i.q, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.v, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ad = phi ptr [ %i.m, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.u, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 7 uses
  %i.ae = phi ptr [ %i.s, %_ZN5Eigen8internal14aligned_mallocEm.exit143.thread ], [ %i.y, %_ZN5Eigen8internal14aligned_mallocEm.exit143 ] ; 8 uses
  call void @llvm.memset.p0.i64(ptr nonnull align 1 %i.ad, i8 0, i64 %i.b, i1 false)
  %i.af = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !23 ; 13 uses
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.i, label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ai = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !20 ; 2 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !12
  %i.am = getelementptr inbounds [4 x i8], ptr %i.aj, i64 %i.al
  %i.an = load i32, ptr %i.am, align 4, !tbaa !211
  %i.ao = load i32, ptr %i.aj, align 4, !tbaa !211
  %i.ap = sub nsw i32 %i.an, %i.ao
  %i.aq = sext i32 %i.ap to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

bb.j:                                             ; preds = %bb.h
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8, !tbaa !12 ; 11 uses
  %i.at = icmp eq i64 %i.as, 0
  br i1 %i.at, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.au = ptrtoint ptr %i.ag to i64               ; 2 uses
  %i.av = and i64 %i.au, 3
  %.not.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.av, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %bb.l, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

bb.l:                                             ; preds = %bb.k
  %i.aw = lshr exact i64 %i.au, 2
  %i.ax = sub nsw i64 0, %i.aw
  %i.ay = and i64 %i.ax, 3
  %i.az = tail call i64 @llvm.smin.i64(i64 %i.ay, i64 %i.as)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i: ; preds = %bb.l, %bb.k
  %.0.i.i.i.i.i.i.i.i.i = phi i64 [ %i.az, %bb.l ], [ %i.as, %bb.k ] ; 12 uses
  %i.ba = sub nsw i64 %i.as, %.0.i.i.i.i.i.i.i.i.i ; 5 uses
  %i.bb = sdiv i64 %i.ba, 8
  %i.bc = shl nsw i64 %i.bb, 3                    ; 2 uses
  %i.bd = sdiv i64 %i.ba, 4                       ; 2 uses
  %i.be = shl nsw i64 %i.bd, 2                    ; 2 uses
  %i.bf = add nsw i64 %i.bc, %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bg = add nsw i64 %i.be, %.0.i.i.i.i.i.i.i.i.i ; 4 uses
  %.off.i.i.i.i.i = add i64 %i.ba, 3
  %.not.i.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i, 7
  br i1 %.not.i.i.i.i.i, label %bb.q, label %bb.m

bb.m:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.bh = getelementptr [4 x i8], ptr %i.ag, i64 %.0.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.bi = load <2 x i64>, ptr %i.bh, align 1, !tbaa !46 ; 2 uses
  %i.bj = icmp sgt i64 %i.ba, 7
  br i1 %i.bj, label %bb.n, label %bb.p

bb.n:                                             ; preds = %bb.m
  %i.bk = getelementptr i8, ptr %i.bh, i64 16
  %i.bl = load <4 x i32>, ptr %i.bk, align 1, !tbaa !46 ; 2 uses
  %i.bm = bitcast <2 x i64> %i.bi to <4 x i32>    ; 2 uses
  %i.bn = icmp samesign ugt i64 %i.ba, 15
  br i1 %i.bn, label %.lr.ph.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i

.lr.ph.preheader.i.i.i.i.i:                       ; preds = %bb.n
  %.05777.i.i.i.i.i = add nsw i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br label %.lr.ph.i.i.i.i.i

._crit_edge.i.i.i.i.i:                            ; preds = %.lr.ph.i.i.i.i.i, %bb.n
  %.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bl, %bb.n ], [ %i.by, %.lr.ph.i.i.i.i.i ]
  %.sroa.067.0.lcssa.i.i.i.i.i = phi <4 x i32> [ %i.bm, %bb.n ], [ %i.bu, %.lr.ph.i.i.i.i.i ]
  %i.bo = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i, %.lcssa.i.i.i.i.i ; 2 uses
  %i.bp = bitcast <4 x i32> %i.bo to <2 x i64>
  %i.bq = icmp sgt i64 %i.be, %i.bc
  br i1 %i.bq, label %bb.o, label %bb.p

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i
  %.05780.i.i.i.i.i = phi i64 [ %.057.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.05777.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ] ; 3 uses
  %.057.in79.i.i.i.i.i = phi i64 [ %.05780.i.i.i.i.i, %.lr.ph.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.preheader.i.i.i.i.i ]
  %.sroa.067.078.i.i.i.i.i = phi <4 x i32> [ %i.bu, %.lr.ph.i.i.i.i.i ], [ %i.bm, %.lr.ph.preheader.i.i.i.i.i ]
  %i.br = phi <4 x i32> [ %i.by, %.lr.ph.i.i.i.i.i ], [ %i.bl, %.lr.ph.preheader.i.i.i.i.i ]
  %i.bs = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05780.i.i.i.i.i
  %i.bt = load <4 x i32>, ptr %i.bs, align 1, !tbaa !46
  %i.bu = add <4 x i32> %i.bt, %.sroa.067.078.i.i.i.i.i ; 2 uses
  %i.bv = getelementptr [4 x i8], ptr %i.ag, i64 %.057.in79.i.i.i.i.i
  %i.bw = getelementptr i8, ptr %i.bv, i64 48
  %i.bx = load <4 x i32>, ptr %i.bw, align 1, !tbaa !46
  %i.by = add <4 x i32> %i.bx, %i.br              ; 2 uses
  %.057.i.i.i.i.i = add nsw i64 %.05780.i.i.i.i.i, 8 ; 2 uses
  %i.bz = icmp slt i64 %.057.i.i.i.i.i, %i.bf
  br i1 %i.bz, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !220

bb.o:                                             ; preds = %._crit_edge.i.i.i.i.i
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %i.bf
  %i.cb = load <4 x i32>, ptr %i.ca, align 1, !tbaa !46
  %i.cc = add <4 x i32> %i.cb, %i.bo
  %i.cd = bitcast <4 x i32> %i.cc to <2 x i64>
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %._crit_edge.i.i.i.i.i, %bb.m
  %.sroa.067.2.i.i.i.i.i = phi <2 x i64> [ %i.bi, %bb.m ], [ %i.cd, %bb.o ], [ %i.bp, %._crit_edge.i.i.i.i.i ] ; 2 uses
  %i.ce = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cf = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i to <4 x i32>
  %i.cg = shufflevector <4 x i32> %i.cf, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.ch = add <4 x i32> %i.cg, %i.ce              ; 2 uses
  %shift = shufflevector <4 x i32> %i.ch, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = add nsw <4 x i32> %i.ch, %shift ; 2 uses
  %4 = extractelement <4 x i32> %foldExtExtBinop, i64 0 ; 2 uses
  %i.ci = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ci, label %.lr.ph85.i.i.i.i.i.preheader, label %.preheader.i.i.i.i.i

.lr.ph85.i.i.i.i.i.preheader:                     ; preds = %bb.p
  %min.iters.check = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i, 8
  br i1 %min.iters.check, label %.lr.ph85.i.i.i.i.i.preheader515, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph85.i.i.i.i.i.preheader
  %n.vec = and i64 %.0.i.i.i.i.i.i.i.i.i, 9223372036854775800 ; 3 uses
  %i.cj = shufflevector <4 x i32> %foldExtExtBinop, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.phi = phi <4 x i32> [ %i.cj, %vector.ph ], [ %i.cm, %vector.body ]
  %vec.phi391 = phi <4 x i32> [ zeroinitializer, %vector.ph ], [ %i.cn, %vector.body ]
  %i.ck = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index ; 2 uses
  %i.cl = getelementptr inbounds nuw i8, ptr %i.ck, i64 16
  %wide.load = load <4 x i32>, ptr %i.ck, align 4, !tbaa !211
  %wide.load392 = load <4 x i32>, ptr %i.cl, align 4, !tbaa !211
  %i.cm = add <4 x i32> %wide.load, %vec.phi      ; 2 uses
  %i.cn = add <4 x i32> %wide.load392, %vec.phi391 ; 2 uses
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.co = icmp eq i64 %index.next, %n.vec
  br i1 %i.co, label %middle.block, label %vector.body, !llvm.loop !306

middle.block:                                     ; preds = %vector.body
  %bin.rdx = add <4 x i32> %i.cn, %i.cm
  %i.cp = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx) ; 2 uses
  %cmp.n = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i, %n.vec
  br i1 %cmp.n, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i.preheader515

.lr.ph85.i.i.i.i.i.preheader515:                  ; preds = %.lr.ph85.i.i.i.i.i.preheader, %middle.block
  %.05683.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i.preheader ], [ %n.vec, %middle.block ]
  %.07582.i.i.i.i.i.ph = phi i32 [ %4, %.lr.ph85.i.i.i.i.i.preheader ], [ %i.cp, %middle.block ]
  br label %.lr.ph85.i.i.i.i.i

.preheader.i.i.i.i.i:                             ; preds = %.lr.ph85.i.i.i.i.i, %middle.block, %bb.p
  %.075.lcssa.i.i.i.i.i = phi i32 [ %4, %bb.p ], [ %i.cp, %middle.block ], [ %i.df, %.lr.ph85.i.i.i.i.i ] ; 3 uses
  %i.cq = icmp slt i64 %i.bg, %i.as
  br i1 %i.cq, label %.lr.ph89.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph89.i.i.i.i.i.preheader:                     ; preds = %.preheader.i.i.i.i.i
  %i.cr = shl nsw i64 %i.bd, 2
  %i.cs = add i64 %.0.i.i.i.i.i.i.i.i.i, %i.cr
  %i.ct = sub i64 %i.as, %i.cs                    ; 3 uses
  %min.iters.check394 = icmp ult i64 %i.ct, 8
  br i1 %min.iters.check394, label %.lr.ph89.i.i.i.i.i.preheader510, label %vector.ph395

vector.ph395:                                     ; preds = %.lr.ph89.i.i.i.i.i.preheader
  %n.vec396 = and i64 %i.ct, -8                   ; 3 uses
  %i.cu = add i64 %i.bg, %n.vec396
  %i.cv = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i, i64 0
  %i.cw = getelementptr [4 x i8], ptr %i.ag, i64 %i.bg
  br label %vector.body397

vector.body397:                                   ; preds = %vector.body397, %vector.ph395
  %index398 = phi i64 [ 0, %vector.ph395 ], [ %index.next403, %vector.body397 ] ; 2 uses
  %vec.phi399 = phi <4 x i32> [ %i.cv, %vector.ph395 ], [ %i.cz, %vector.body397 ]
  %vec.phi400 = phi <4 x i32> [ zeroinitializer, %vector.ph395 ], [ %i.da, %vector.body397 ]
  %i.cx = getelementptr [4 x i8], ptr %i.cw, i64 %index398 ; 2 uses
  %i.cy = getelementptr inbounds nuw i8, ptr %i.cx, i64 16
  %wide.load401 = load <4 x i32>, ptr %i.cx, align 4, !tbaa !211
  %wide.load402 = load <4 x i32>, ptr %i.cy, align 4, !tbaa !211
  %i.cz = add <4 x i32> %wide.load401, %vec.phi399 ; 2 uses
  %i.da = add <4 x i32> %wide.load402, %vec.phi400 ; 2 uses
  %index.next403 = add nuw i64 %index398, 8       ; 2 uses
  %i.db = icmp eq i64 %index.next403, %n.vec396
  br i1 %i.db, label %middle.block404, label %vector.body397, !llvm.loop !307

middle.block404:                                  ; preds = %vector.body397
  %bin.rdx405 = add <4 x i32> %i.da, %i.cz
  %i.dc = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx405) ; 2 uses
  %cmp.n406 = icmp eq i64 %i.ct, %n.vec396
  br i1 %cmp.n406, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph89.i.i.i.i.i.preheader510

.lr.ph89.i.i.i.i.i.preheader510:                  ; preds = %.lr.ph89.i.i.i.i.i.preheader, %middle.block404
  %.05588.i.i.i.i.i.ph = phi i64 [ %i.bg, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.cu, %middle.block404 ]
  %.187.i.i.i.i.i.ph = phi i32 [ %.075.lcssa.i.i.i.i.i, %.lr.ph89.i.i.i.i.i.preheader ], [ %i.dc, %middle.block404 ]
  br label %.lr.ph89.i.i.i.i.i

.lr.ph85.i.i.i.i.i:                               ; preds = %.lr.ph85.i.i.i.i.i.preheader515, %.lr.ph85.i.i.i.i.i
  %.05683.i.i.i.i.i = phi i64 [ %i.dg, %.lr.ph85.i.i.i.i.i ], [ %.05683.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ] ; 2 uses
  %.07582.i.i.i.i.i = phi i32 [ %i.df, %.lr.ph85.i.i.i.i.i ], [ %.07582.i.i.i.i.i.ph, %.lr.ph85.i.i.i.i.i.preheader515 ]
  %i.dd = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.05683.i.i.i.i.i
  %i.de = load i32, ptr %i.dd, align 4, !tbaa !211
  %i.df = add nsw i32 %i.de, %.07582.i.i.i.i.i    ; 2 uses
  %i.dg = add nuw nsw i64 %.05683.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.dg, %.0.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i, label %.preheader.i.i.i.i.i, label %.lr.ph85.i.i.i.i.i, !llvm.loop !308

.lr.ph89.i.i.i.i.i:                               ; preds = %.lr.ph89.i.i.i.i.i.preheader510, %.lr.ph89.i.i.i.i.i
  %.05588.i.i.i.i.i = phi i64 [ %i.dk, %.lr.ph89.i.i.i.i.i ], [ %.05588.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ] ; 2 uses
  %.187.i.i.i.i.i = phi i32 [ %i.dj, %.lr.ph89.i.i.i.i.i ], [ %.187.i.i.i.i.i.ph, %.lr.ph89.i.i.i.i.i.preheader510 ]
  %i.dh = getelementptr inbounds [4 x i8], ptr %i.ag, i64 %.05588.i.i.i.i.i
  %i.di = load i32, ptr %i.dh, align 4, !tbaa !211
  %i.dj = add nsw i32 %i.di, %.187.i.i.i.i.i      ; 2 uses
  %i.dk = add nsw i64 %.05588.i.i.i.i.i, 1        ; 2 uses
  %i.dl = icmp slt i64 %i.dk, %i.as
  br i1 %i.dl, label %.lr.ph89.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, !llvm.loop !309

bb.q:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i
  %i.dm = load i32, ptr %i.ag, align 4, !tbaa !211 ; 3 uses
  %i.dn = icmp sgt i64 %i.as, 1
  br i1 %i.dn, label %.lr.ph94.i.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i

.lr.ph94.i.i.i.i.i.preheader:                     ; preds = %bb.q
  %i.do = add nsw i64 %i.as, -1                   ; 2 uses
  %min.iters.check410 = icmp ult i64 %i.as, 9
  br i1 %min.iters.check410, label %.lr.ph94.i.i.i.i.i.preheader506, label %vector.ph411

vector.ph411:                                     ; preds = %.lr.ph94.i.i.i.i.i.preheader
  %n.vec412 = and i64 %i.do, -8                   ; 3 uses
  %i.dp = or disjoint i64 %n.vec412, 1
  %i.dq = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.dm, i64 0
  br label %vector.body413

vector.body413:                                   ; preds = %vector.body413, %vector.ph411
  %index414 = phi i64 [ 0, %vector.ph411 ], [ %index.next419, %vector.body413 ] ; 2 uses
  %vec.phi415 = phi <4 x i32> [ %i.dq, %vector.ph411 ], [ %i.du, %vector.body413 ]
  %vec.phi416 = phi <4 x i32> [ zeroinitializer, %vector.ph411 ], [ %i.dv, %vector.body413 ]
  %i.dr = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %index414 ; 2 uses
  %i.ds = getelementptr inbounds nuw i8, ptr %i.dr, i64 4
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dr, i64 20
  %wide.load417 = load <4 x i32>, ptr %i.ds, align 4, !tbaa !211
  %wide.load418 = load <4 x i32>, ptr %i.dt, align 4, !tbaa !211
  %i.du = add <4 x i32> %wide.load417, %vec.phi415 ; 2 uses
  %i.dv = add <4 x i32> %wide.load418, %vec.phi416 ; 2 uses
  %index.next419 = add nuw i64 %index414, 8       ; 2 uses
  %i.dw = icmp eq i64 %index.next419, %n.vec412
  br i1 %i.dw, label %middle.block420, label %vector.body413, !llvm.loop !310

middle.block420:                                  ; preds = %vector.body413
  %bin.rdx421 = add <4 x i32> %i.dv, %i.du
  %i.dx = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx421) ; 2 uses
  %cmp.n422 = icmp eq i64 %i.do, %n.vec412
  br i1 %cmp.n422, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i.preheader506

.lr.ph94.i.i.i.i.i.preheader506:                  ; preds = %.lr.ph94.i.i.i.i.i.preheader, %middle.block420
  %.092.i.i.i.i.i.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dp, %middle.block420 ]
  %.291.i.i.i.i.i.ph = phi i32 [ %i.dm, %.lr.ph94.i.i.i.i.i.preheader ], [ %i.dx, %middle.block420 ]
  br label %.lr.ph94.i.i.i.i.i

.lr.ph94.i.i.i.i.i:                               ; preds = %.lr.ph94.i.i.i.i.i.preheader506, %.lr.ph94.i.i.i.i.i
  %.092.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph94.i.i.i.i.i ], [ %.092.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ] ; 2 uses
  %.291.i.i.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.291.i.i.i.i.i.ph, %.lr.ph94.i.i.i.i.i.preheader506 ]
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.ag, i64 %.092.i.i.i.i.i
  %i.dz = load i32, ptr %i.dy, align 4, !tbaa !211
  %i.ea = add nsw i32 %i.dz, %.291.i.i.i.i.i      ; 2 uses
  %i.eb = add nuw nsw i64 %.092.i.i.i.i.i, 1      ; 2 uses
  %exitcond102.not.i.i.i.i.i = icmp eq i64 %i.eb, %i.as
  br i1 %exitcond102.not.i.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, label %.lr.ph94.i.i.i.i.i, !llvm.loop !311

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i: ; preds = %.lr.ph89.i.i.i.i.i, %.lr.ph94.i.i.i.i.i, %middle.block404, %middle.block420, %bb.q, %.preheader.i.i.i.i.i
  %.0.i.i.i = phi i32 [ %i.ea, %.lr.ph94.i.i.i.i.i ], [ %.075.lcssa.i.i.i.i.i, %.preheader.i.i.i.i.i ], [ %i.dm, %bb.q ], [ %i.dx, %middle.block420 ], [ %i.dc, %middle.block404 ], [ %i.dj, %.lr.ph89.i.i.i.i.i ]
  %i.ec = sext i32 %.0.i.i.i to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i, %bb.j, %bb.i
  %.0.i.i = phi i64 [ %i.aq, %bb.i ], [ %i.ec, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i ], [ 0, %bb.j ]
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !23 ; 13 uses
  %i.ef = icmp eq ptr %i.ee, null
  br i1 %i.ef, label %bb.r, label %bb.s

bb.r:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.eg = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.eh = load ptr, ptr %i.eg, align 8, !tbaa !20 ; 2 uses
  %i.ei = getelementptr inbounds [4 x i8], ptr %i.eh, i64 %i.d
  %i.ej = load i32, ptr %i.ei, align 4, !tbaa !211
  %i.ek = load i32, ptr %i.eh, align 4, !tbaa !211
  %i.el = sub nsw i32 %i.ej, %i.ek
  %i.em = sext i32 %i.el to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

bb.s:                                             ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit
  %i.en = icmp eq i64 %i.d, 0
  br i1 %i.en, label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.eo = ptrtoint ptr %i.ee to i64               ; 2 uses
  %i.ep = and i64 %i.eo, 3
  %.not.i.i.i.i.i.i.i.i.i149 = icmp eq i64 %i.ep, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i149, label %bb.u, label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

bb.u:                                             ; preds = %bb.t
  %i.eq = lshr exact i64 %i.eo, 2
  %i.er = sub nsw i64 0, %i.eq
  %i.es = and i64 %i.er, 3
  %i.et = tail call i64 @llvm.smin.i64(i64 %i.es, i64 %i.d)
  br label %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150

_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150: ; preds = %bb.u, %bb.t
  %.0.i.i.i.i.i.i.i.i.i151 = phi i64 [ %i.et, %bb.u ], [ %i.d, %bb.t ] ; 12 uses
  %i.eu = sub nsw i64 %i.d, %.0.i.i.i.i.i.i.i.i.i151 ; 5 uses
  %i.ev = sdiv i64 %i.eu, 8
  %i.ew = shl nsw i64 %i.ev, 3                    ; 2 uses
  %i.ex = sdiv i64 %i.eu, 4                       ; 2 uses
  %i.ey = shl nsw i64 %i.ex, 2                    ; 2 uses
  %i.ez = add nsw i64 %i.ew, %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fa = add nsw i64 %i.ey, %.0.i.i.i.i.i.i.i.i.i151 ; 4 uses
  %.off.i.i.i.i.i152 = add i64 %i.eu, 3
  %.not.i.i.i.i.i153 = icmp ult i64 %.off.i.i.i.i.i152, 7
  br i1 %.not.i.i.i.i.i153, label %bb.z, label %bb.v

bb.v:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.fb = getelementptr [4 x i8], ptr %i.ee, i64 %.0.i.i.i.i.i.i.i.i.i151 ; 2 uses
  %i.fc = load <2 x i64>, ptr %i.fb, align 1, !tbaa !46 ; 2 uses
  %i.fd = icmp sgt i64 %i.eu, 7
  br i1 %i.fd, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %i.fe = getelementptr i8, ptr %i.fb, i64 16
  %i.ff = load <4 x i32>, ptr %i.fe, align 1, !tbaa !46 ; 2 uses
  %i.fg = bitcast <2 x i64> %i.fc to <4 x i32>    ; 2 uses
  %i.fh = icmp samesign ugt i64 %i.eu, 15
  br i1 %i.fh, label %.lr.ph.preheader.i.i.i.i.i172, label %._crit_edge.i.i.i.i.i169

.lr.ph.preheader.i.i.i.i.i172:                    ; preds = %bb.w
  %.05777.i.i.i.i.i173 = add nsw i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br label %.lr.ph.i.i.i.i.i174

._crit_edge.i.i.i.i.i169:                         ; preds = %.lr.ph.i.i.i.i.i174, %bb.w
  %.lcssa.i.i.i.i.i170 = phi <4 x i32> [ %i.ff, %bb.w ], [ %i.fs, %.lr.ph.i.i.i.i.i174 ]
  %.sroa.067.0.lcssa.i.i.i.i.i171 = phi <4 x i32> [ %i.fg, %bb.w ], [ %i.fo, %.lr.ph.i.i.i.i.i174 ]
  %i.fi = add <4 x i32> %.sroa.067.0.lcssa.i.i.i.i.i171, %.lcssa.i.i.i.i.i170 ; 2 uses
  %i.fj = bitcast <4 x i32> %i.fi to <2 x i64>
  %i.fk = icmp sgt i64 %i.ey, %i.ew
  br i1 %i.fk, label %bb.x, label %bb.y

.lr.ph.i.i.i.i.i174:                              ; preds = %.lr.ph.i.i.i.i.i174, %.lr.ph.preheader.i.i.i.i.i172
  %.05780.i.i.i.i.i175 = phi i64 [ %.057.i.i.i.i.i178, %.lr.ph.i.i.i.i.i174 ], [ %.05777.i.i.i.i.i173, %.lr.ph.preheader.i.i.i.i.i172 ] ; 3 uses
  %.057.in79.i.i.i.i.i176 = phi i64 [ %.05780.i.i.i.i.i175, %.lr.ph.i.i.i.i.i174 ], [ %.0.i.i.i.i.i.i.i.i.i151, %.lr.ph.preheader.i.i.i.i.i172 ]
  %.sroa.067.078.i.i.i.i.i177 = phi <4 x i32> [ %i.fo, %.lr.ph.i.i.i.i.i174 ], [ %i.fg, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fl = phi <4 x i32> [ %i.fs, %.lr.ph.i.i.i.i.i174 ], [ %i.ff, %.lr.ph.preheader.i.i.i.i.i172 ]
  %i.fm = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05780.i.i.i.i.i175
  %i.fn = load <4 x i32>, ptr %i.fm, align 1, !tbaa !46
  %i.fo = add <4 x i32> %i.fn, %.sroa.067.078.i.i.i.i.i177 ; 2 uses
  %i.fp = getelementptr [4 x i8], ptr %i.ee, i64 %.057.in79.i.i.i.i.i176
  %i.fq = getelementptr i8, ptr %i.fp, i64 48
  %i.fr = load <4 x i32>, ptr %i.fq, align 1, !tbaa !46
  %i.fs = add <4 x i32> %i.fr, %i.fl              ; 2 uses
  %.057.i.i.i.i.i178 = add nsw i64 %.05780.i.i.i.i.i175, 8 ; 2 uses
  %i.ft = icmp slt i64 %.057.i.i.i.i.i178, %i.ez
  br i1 %i.ft, label %.lr.ph.i.i.i.i.i174, label %._crit_edge.i.i.i.i.i169, !llvm.loop !220

bb.x:                                             ; preds = %._crit_edge.i.i.i.i.i169
  %i.fu = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %i.ez
  %i.fv = load <4 x i32>, ptr %i.fu, align 1, !tbaa !46
  %i.fw = add <4 x i32> %i.fv, %i.fi
  %i.fx = bitcast <4 x i32> %i.fw to <2 x i64>
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %._crit_edge.i.i.i.i.i169, %bb.v
  %.sroa.067.2.i.i.i.i.i154 = phi <2 x i64> [ %i.fc, %bb.v ], [ %i.fx, %bb.x ], [ %i.fj, %._crit_edge.i.i.i.i.i169 ] ; 2 uses
  %i.fy = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.fz = bitcast <2 x i64> %.sroa.067.2.i.i.i.i.i154 to <4 x i32>
  %i.ga = shufflevector <4 x i32> %i.fz, <4 x i32> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %i.gb = add <4 x i32> %i.ga, %i.fy              ; 2 uses
  %shift484 = shufflevector <4 x i32> %i.gb, <4 x i32> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop485 = add nsw <4 x i32> %i.gb, %shift484 ; 2 uses
  %5 = extractelement <4 x i32> %foldExtExtBinop485, i64 0 ; 2 uses
  %i.gc = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i151, 0
  br i1 %i.gc, label %.lr.ph85.i.i.i.i.i165.preheader, label %.preheader.i.i.i.i.i157

.lr.ph85.i.i.i.i.i165.preheader:                  ; preds = %bb.y
  %min.iters.check426 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i151, 8
  br i1 %min.iters.check426, label %.lr.ph85.i.i.i.i.i165.preheader500, label %vector.ph427

vector.ph427:                                     ; preds = %.lr.ph85.i.i.i.i.i165.preheader
  %n.vec428 = and i64 %.0.i.i.i.i.i.i.i.i.i151, 9223372036854775800 ; 3 uses
  %i.gd = shufflevector <4 x i32> %foldExtExtBinop485, <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %vector.body429

vector.body429:                                   ; preds = %vector.body429, %vector.ph427
  %index430 = phi i64 [ 0, %vector.ph427 ], [ %index.next435, %vector.body429 ] ; 2 uses
  %vec.phi431 = phi <4 x i32> [ %i.gd, %vector.ph427 ], [ %i.gg, %vector.body429 ]
  %vec.phi432 = phi <4 x i32> [ zeroinitializer, %vector.ph427 ], [ %i.gh, %vector.body429 ]
  %i.ge = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index430 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load433 = load <4 x i32>, ptr %i.ge, align 4, !tbaa !211
  %wide.load434 = load <4 x i32>, ptr %i.gf, align 4, !tbaa !211
  %i.gg = add <4 x i32> %wide.load433, %vec.phi431 ; 2 uses
  %i.gh = add <4 x i32> %wide.load434, %vec.phi432 ; 2 uses
  %index.next435 = add nuw i64 %index430, 8       ; 2 uses
  %i.gi = icmp eq i64 %index.next435, %n.vec428
  br i1 %i.gi, label %middle.block436, label %vector.body429, !llvm.loop !312

middle.block436:                                  ; preds = %vector.body429
  %bin.rdx437 = add <4 x i32> %i.gh, %i.gg
  %i.gj = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx437) ; 2 uses
  %cmp.n438 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i151, %n.vec428
  br i1 %cmp.n438, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165.preheader500

.lr.ph85.i.i.i.i.i165.preheader500:               ; preds = %.lr.ph85.i.i.i.i.i165.preheader, %middle.block436
  %.05683.i.i.i.i.i166.ph = phi i64 [ 0, %.lr.ph85.i.i.i.i.i165.preheader ], [ %n.vec428, %middle.block436 ]
  %.07582.i.i.i.i.i167.ph = phi i32 [ %5, %.lr.ph85.i.i.i.i.i165.preheader ], [ %i.gj, %middle.block436 ]
  br label %.lr.ph85.i.i.i.i.i165

.preheader.i.i.i.i.i157:                          ; preds = %.lr.ph85.i.i.i.i.i165, %middle.block436, %bb.y
  %.075.lcssa.i.i.i.i.i158 = phi i32 [ %5, %bb.y ], [ %i.gj, %middle.block436 ], [ %i.gz, %.lr.ph85.i.i.i.i.i165 ] ; 3 uses
  %i.gk = icmp slt i64 %i.fa, %i.d
  br i1 %i.gk, label %.lr.ph89.i.i.i.i.i162.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph89.i.i.i.i.i162.preheader:                  ; preds = %.preheader.i.i.i.i.i157
  %i.gl = shl nsw i64 %i.ex, 2
  %i.gm = add i64 %.0.i.i.i.i.i.i.i.i.i151, %i.gl
  %i.gn = sub i64 %i.d, %i.gm                     ; 3 uses
  %min.iters.check442 = icmp ult i64 %i.gn, 8
  br i1 %min.iters.check442, label %.lr.ph89.i.i.i.i.i162.preheader495, label %vector.ph443

vector.ph443:                                     ; preds = %.lr.ph89.i.i.i.i.i162.preheader
  %n.vec444 = and i64 %i.gn, -8                   ; 3 uses
  %i.go = add i64 %i.fa, %n.vec444
  %i.gp = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %.075.lcssa.i.i.i.i.i158, i64 0
  %i.gq = getelementptr [4 x i8], ptr %i.ee, i64 %i.fa
  br label %vector.body445

vector.body445:                                   ; preds = %vector.body445, %vector.ph443
  %index446 = phi i64 [ 0, %vector.ph443 ], [ %index.next451, %vector.body445 ] ; 2 uses
  %vec.phi447 = phi <4 x i32> [ %i.gp, %vector.ph443 ], [ %i.gt, %vector.body445 ]
  %vec.phi448 = phi <4 x i32> [ zeroinitializer, %vector.ph443 ], [ %i.gu, %vector.body445 ]
  %i.gr = getelementptr [4 x i8], ptr %i.gq, i64 %index446 ; 2 uses
  %i.gs = getelementptr inbounds nuw i8, ptr %i.gr, i64 16
  %wide.load449 = load <4 x i32>, ptr %i.gr, align 4, !tbaa !211
  %wide.load450 = load <4 x i32>, ptr %i.gs, align 4, !tbaa !211
  %i.gt = add <4 x i32> %wide.load449, %vec.phi447 ; 2 uses
  %i.gu = add <4 x i32> %wide.load450, %vec.phi448 ; 2 uses
  %index.next451 = add nuw i64 %index446, 8       ; 2 uses
  %i.gv = icmp eq i64 %index.next451, %n.vec444
  br i1 %i.gv, label %middle.block452, label %vector.body445, !llvm.loop !313

middle.block452:                                  ; preds = %vector.body445
  %bin.rdx453 = add <4 x i32> %i.gu, %i.gt
  %i.gw = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx453) ; 2 uses
  %cmp.n454 = icmp eq i64 %i.gn, %n.vec444
  br i1 %cmp.n454, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph89.i.i.i.i.i162.preheader495

.lr.ph89.i.i.i.i.i162.preheader495:               ; preds = %.lr.ph89.i.i.i.i.i162.preheader, %middle.block452
  %.05588.i.i.i.i.i163.ph = phi i64 [ %i.fa, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.go, %middle.block452 ]
  %.187.i.i.i.i.i164.ph = phi i32 [ %.075.lcssa.i.i.i.i.i158, %.lr.ph89.i.i.i.i.i162.preheader ], [ %i.gw, %middle.block452 ]
  br label %.lr.ph89.i.i.i.i.i162

.lr.ph85.i.i.i.i.i165:                            ; preds = %.lr.ph85.i.i.i.i.i165.preheader500, %.lr.ph85.i.i.i.i.i165
  %.05683.i.i.i.i.i166 = phi i64 [ %i.ha, %.lr.ph85.i.i.i.i.i165 ], [ %.05683.i.i.i.i.i166.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ] ; 2 uses
  %.07582.i.i.i.i.i167 = phi i32 [ %i.gz, %.lr.ph85.i.i.i.i.i165 ], [ %.07582.i.i.i.i.i167.ph, %.lr.ph85.i.i.i.i.i165.preheader500 ]
  %i.gx = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.05683.i.i.i.i.i166
  %i.gy = load i32, ptr %i.gx, align 4, !tbaa !211
  %i.gz = add nsw i32 %i.gy, %.07582.i.i.i.i.i167 ; 2 uses
  %i.ha = add nuw nsw i64 %.05683.i.i.i.i.i166, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i168 = icmp eq i64 %i.ha, %.0.i.i.i.i.i.i.i.i.i151
  br i1 %exitcond.not.i.i.i.i.i168, label %.preheader.i.i.i.i.i157, label %.lr.ph85.i.i.i.i.i165, !llvm.loop !314

.lr.ph89.i.i.i.i.i162:                            ; preds = %.lr.ph89.i.i.i.i.i162.preheader495, %.lr.ph89.i.i.i.i.i162
  %.05588.i.i.i.i.i163 = phi i64 [ %i.he, %.lr.ph89.i.i.i.i.i162 ], [ %.05588.i.i.i.i.i163.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ] ; 2 uses
  %.187.i.i.i.i.i164 = phi i32 [ %i.hd, %.lr.ph89.i.i.i.i.i162 ], [ %.187.i.i.i.i.i164.ph, %.lr.ph89.i.i.i.i.i162.preheader495 ]
  %i.hb = getelementptr inbounds [4 x i8], ptr %i.ee, i64 %.05588.i.i.i.i.i163
  %i.hc = load i32, ptr %i.hb, align 4, !tbaa !211
  %i.hd = add nsw i32 %i.hc, %.187.i.i.i.i.i164   ; 2 uses
  %i.he = add nsw i64 %.05588.i.i.i.i.i163, 1     ; 2 uses
  %i.hf = icmp slt i64 %i.he, %i.d
  br i1 %i.hf, label %.lr.ph89.i.i.i.i.i162, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, !llvm.loop !315

bb.z:                                             ; preds = %_ZN5Eigen8internalL21first_default_alignedINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEElRKNS_9DenseBaseIT_EE.exit.i.i.i.i.i150
  %i.hg = load i32, ptr %i.ee, align 4, !tbaa !211 ; 3 uses
  %i.hh = icmp sgt i64 %i.d, 1
  br i1 %i.hh, label %.lr.ph94.i.i.i.i.i179.preheader, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159

.lr.ph94.i.i.i.i.i179.preheader:                  ; preds = %bb.z
  %i.hi = add nsw i64 %i.d, -1                    ; 2 uses
  %min.iters.check458 = icmp ult i64 %i.d, 9
  br i1 %min.iters.check458, label %.lr.ph94.i.i.i.i.i179.preheader491, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph94.i.i.i.i.i179.preheader
  %n.vec460 = and i64 %i.hi, -8                   ; 3 uses
  %i.hj = or disjoint i64 %n.vec460, 1
  %i.hk = insertelement <4 x i32> <i32 poison, i32 0, i32 0, i32 0>, i32 %i.hg, i64 0
  br label %vector.body461

vector.body461:                                   ; preds = %vector.body461, %vector.ph459
  %index462 = phi i64 [ 0, %vector.ph459 ], [ %index.next467, %vector.body461 ] ; 2 uses
  %vec.phi463 = phi <4 x i32> [ %i.hk, %vector.ph459 ], [ %i.ho, %vector.body461 ]
  %vec.phi464 = phi <4 x i32> [ zeroinitializer, %vector.ph459 ], [ %i.hp, %vector.body461 ]
  %i.hl = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %index462 ; 2 uses
  %i.hm = getelementptr inbounds nuw i8, ptr %i.hl, i64 4
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hl, i64 20
  %wide.load465 = load <4 x i32>, ptr %i.hm, align 4, !tbaa !211
  %wide.load466 = load <4 x i32>, ptr %i.hn, align 4, !tbaa !211
  %i.ho = add <4 x i32> %wide.load465, %vec.phi463 ; 2 uses
  %i.hp = add <4 x i32> %wide.load466, %vec.phi464 ; 2 uses
  %index.next467 = add nuw i64 %index462, 8       ; 2 uses
  %i.hq = icmp eq i64 %index.next467, %n.vec460
  br i1 %i.hq, label %middle.block468, label %vector.body461, !llvm.loop !316

middle.block468:                                  ; preds = %vector.body461
  %bin.rdx469 = add <4 x i32> %i.hp, %i.ho
  %i.hr = tail call i32 @llvm.vector.reduce.add.v4i32(<4 x i32> %bin.rdx469) ; 2 uses
  %cmp.n470 = icmp eq i64 %i.hi, %n.vec460
  br i1 %cmp.n470, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179.preheader491

.lr.ph94.i.i.i.i.i179.preheader491:               ; preds = %.lr.ph94.i.i.i.i.i179.preheader, %middle.block468
  %.092.i.i.i.i.i180.ph = phi i64 [ 1, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hj, %middle.block468 ]
  %.291.i.i.i.i.i181.ph = phi i32 [ %i.hg, %.lr.ph94.i.i.i.i.i179.preheader ], [ %i.hr, %middle.block468 ]
  br label %.lr.ph94.i.i.i.i.i179

.lr.ph94.i.i.i.i.i179:                            ; preds = %.lr.ph94.i.i.i.i.i179.preheader491, %.lr.ph94.i.i.i.i.i179
  %.092.i.i.i.i.i180 = phi i64 [ %i.hv, %.lr.ph94.i.i.i.i.i179 ], [ %.092.i.i.i.i.i180.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ] ; 2 uses
  %.291.i.i.i.i.i181 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.291.i.i.i.i.i181.ph, %.lr.ph94.i.i.i.i.i179.preheader491 ]
  %i.hs = getelementptr inbounds nuw [4 x i8], ptr %i.ee, i64 %.092.i.i.i.i.i180
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !211
  %i.hu = add nsw i32 %i.ht, %.291.i.i.i.i.i181   ; 2 uses
  %i.hv = add nuw nsw i64 %.092.i.i.i.i.i180, 1   ; 2 uses
  %exitcond102.not.i.i.i.i.i182 = icmp eq i64 %i.hv, %i.d
  br i1 %exitcond102.not.i.i.i.i.i182, label %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, label %.lr.ph94.i.i.i.i.i179, !llvm.loop !317

_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159: ; preds = %.lr.ph89.i.i.i.i.i162, %.lr.ph94.i.i.i.i.i179, %middle.block452, %middle.block468, %bb.z, %.preheader.i.i.i.i.i157
  %.0.i.i.i160 = phi i32 [ %i.hu, %.lr.ph94.i.i.i.i.i179 ], [ %.075.lcssa.i.i.i.i.i158, %.preheader.i.i.i.i.i157 ], [ %i.hg, %bb.z ], [ %i.hr, %middle.block468 ], [ %i.gw, %middle.block452 ], [ %i.hd, %.lr.ph89.i.i.i.i.i162 ]
  %i.hw = sext i32 %.0.i.i.i160 to i64
  br label %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183

_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183: ; preds = %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159, %bb.s, %bb.r
  %.0.i.i161 = phi i64 [ %i.em, %bb.r ], [ %i.hw, %_ZNK5Eigen9DenseBaseINS_3MapIKNS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE3sumEv.exit.i.i159 ], [ 0, %bb.s ]
  %i.hx = add nsw i64 %.0.i.i161, %.0.i.i
  %i.hy = getelementptr inbounds nuw i8, ptr %2, i64 56 ; 7 uses
  store i64 0, ptr %i.hy, align 8, !tbaa !146
  %i.hz = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 6 uses
  %i.ia = load ptr, ptr %i.hz, align 8, !tbaa !20
  %i.ib = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 3 uses
  %i.ic = load i64, ptr %i.ib, align 8, !tbaa !12
  %i.id = shl i64 %i.ic, 2
  %i.ie = add i64 %i.id, 4
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.ia, i8 0, i64 %i.ie, i1 false)
  %i.if = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 2 uses
  %i.ig = load ptr, ptr %i.if, align 8, !tbaa !23 ; 2 uses
  %.not.i = icmp eq ptr %i.ig, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit, label %bb.aa

bb.aa:                                            ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183
  %i.ih = load i64, ptr %i.ib, align 8, !tbaa !12
  %i.ii = shl i64 %i.ih, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.ig, i8 0, i64 %i.ii, i1 false)
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit

_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit:   ; preds = %_ZNK5Eigen8internal9evaluatorINS_20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEEEE16nonZerosEstimateEv.exit183, %bb.aa
  %i.ij = getelementptr inbounds nuw i8, ptr %2, i64 40 ; 9 uses
  invoke void @_ZN5Eigen8internal17CompressedStorageIdiE7reserveEl(ptr noundef nonnull align 8 dereferenceable(32) %i.ij, i64 noundef %i.hx)
          to label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader unwind label %bb.ae

_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader: ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7setZeroEv.exit
  %i.ik = icmp sgt i64 %i.d, 0
  br i1 %i.ik, label %.lr.ph307, label %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit._crit_edge

.lr.ph307:                                        ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiE7reserveEl.exit.preheader
  %i.il = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.in = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.iq = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ir = getelementptr inbounds nuw i8, ptr %2, i64 64 ; 4 uses
  %.phi.trans.insert.i.i = getelementptr inbounds nuw i8, ptr %2, i64 48 ; 9 uses
  %i.is = udiv i64 %i.b, 11
end_hunk_1
