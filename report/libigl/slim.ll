Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/slim?download=true
inline.NumInlined: 5960
inline.NumDeleted: 2832
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 126
loop-unroll.NumUnrolled: 127
begin_hunk_0_@_ZN5Eigen12SparseMatrixIdLi0EiE11setIdentityEv:bb.a
  %.022.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.bu, %.lr.ph.i.i.i.i.i.i.i.i.i.i1 ], [ %.0.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES8_EEEENS0_9assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i ] ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.as, i64 %.022.i.i.i.i.i.i.i.i.i.i
  store <2 x double> splat (double 1.000000e+00), ptr %i.bt, align 16, !tbaa !47
  %i.bu = add nsw i64 %.022.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.bv = icmp slt i64 %i.bu, %i.bb
  br i1 %i.bv, label %.lr.ph.i.i.i.i.i.i.i.i.i.i1, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, !llvm.loop !626

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setOnesEv.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i, %middle.block68, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bx = load ptr, ptr %i.bw, align 8, !tbaa !75 ; 4 uses
  %i.by = load i64, ptr %i.b, align 8, !tbaa !35  ; 7 uses
  %i.bz = add nsw i64 %i.by, 1                    ; 9 uses
  %i.ca = trunc i64 %i.by to i32                  ; 4 uses
  %i.cb = tail call i64 @llvm.smax.i64(i64 %i.bz, i64 2)
  %i.cc = trunc i64 %i.cb to i32
  %.not.i.i.i.i4 = icmp slt i32 %i.ca, 0
  %i.cd = xor i64 %i.by, -1
  %i.ce = select i1 %.not.i.i.i.i4, i64 %i.cd, i64 %i.bz
  %i.cf = trunc i64 %i.ce to i32
  %i.cg = add i32 %i.cf, %i.ca
  %i.ch = tail call noundef i32 @llvm.abs.i32(i32 %i.ca, i1 true) ; 2 uses
  %i.ci = insertelement <2 x i32> poison, i32 %i.cc, i64 0
  %i.cj = insertelement <2 x i32> %i.ci, i32 %i.ch, i64 1
  %i.ck = add <2 x i32> %i.cj, <i32 -1, i32 1>
  %i.cl = insertelement <2 x i32> poison, i32 %i.ca, i64 0
  %i.cm = insertelement <2 x i32> %i.cl, i32 %i.cg, i64 1
  %i.cn = sdiv <2 x i32> %i.cm, %i.ck             ; 4 uses
  %i.co = icmp sgt i64 %i.by, 0
  br i1 %i.co, label %.lr.ph.i.i.i.i.i.i.i.i.i.i10, label %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5

_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5: ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setOnesEv.exit
  %i.cp = icmp eq i64 %i.by, 0
  br i1 %i.cp, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14

.lr.ph.i.i.i.i.i.i.i.i.i.i10:                     ; preds = %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE7setOnesEv.exit
  %i.cq = add nuw nsw i32 %i.ch, 1
  %i.cr = zext nneg i32 %i.cq to i64
  %i.cs = icmp samesign ugt i64 %i.bz, %i.cr
  br i1 %i.cs, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i10
  %min.iters.check87 = icmp ult i64 %i.bz, 4
  br i1 %min.iters.check87, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader100, label %vector.ph88

vector.ph88:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader
  %n.vec89 = and i64 %i.bz, 9223372036854775804   ; 3 uses
  %broadcast.splat91 = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  br label %vector.body92

vector.body92:                                    ; preds = %vector.body92, %vector.ph88
  %index93 = phi i64 [ 0, %vector.ph88 ], [ %index.next95, %vector.body92 ] ; 2 uses
  %vec.ind94 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph88 ], [ %vec.ind.next96, %vector.body92 ] ; 2 uses
  %i.ct = sdiv <4 x i32> %vec.ind94, %broadcast.splat91
  %i.cu = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index93
  store <4 x i32> %i.ct, ptr %i.cu, align 4, !tbaa !42
  %index.next95 = add nuw i64 %index93, 4         ; 2 uses
  %vec.ind.next96 = add <4 x i32> %vec.ind94, splat (i32 4)
  %i.cv = icmp eq i64 %index.next95, %n.vec89
  br i1 %i.cv, label %middle.block97, label %vector.body92, !llvm.loop !627

middle.block97:                                   ; preds = %vector.body92
  %cmp.n98 = icmp eq i64 %i.bz, %n.vec89
  br i1 %cmp.n98, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader100

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader100: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader, %middle.block97
  %.05.us.i.i.i.i.i.i.i.i.i.i12.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader ], [ %n.vec89, %middle.block97 ]
  %i.cw = extractelement <2 x i32> %i.cn, i64 1
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i10, %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5
  %min.iters.check72 = icmp ult i64 %i.bz, 8
  br i1 %min.iters.check72, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader, label %vector.ph73

vector.ph73:                                      ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6
  %n.vec74 = and i64 %i.bz, -8                    ; 3 uses
  %broadcast.splat76 = shufflevector <2 x i32> %i.cn, <2 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body77

vector.body77:                                    ; preds = %vector.body77, %vector.ph73
  %index78 = phi i64 [ 0, %vector.ph73 ], [ %index.next81, %vector.body77 ] ; 2 uses
  %vec.ind79 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph73 ], [ %vec.ind.next82, %vector.body77 ] ; 3 uses
  %step.add80 = add <4 x i32> %vec.ind79, splat (i32 4)
  %i.cx = mul nsw <4 x i32> %broadcast.splat76, %vec.ind79
  %i.cy = mul nsw <4 x i32> %broadcast.splat76, %step.add80
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %index78 ; 2 uses
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 16
  store <4 x i32> %i.cx, ptr %i.cz, align 4, !tbaa !42
  store <4 x i32> %i.cy, ptr %i.da, align 4, !tbaa !42
  %index.next81 = add nuw i64 %index78, 8         ; 2 uses
  %vec.ind.next82 = add <4 x i32> %vec.ind79, splat (i32 8)
  %i.db = icmp eq i64 %index.next81, %n.vec74
  br i1 %i.db, label %middle.block83, label %vector.body77, !llvm.loop !628

middle.block83:                                   ; preds = %vector.body77
  %cmp.n84 = icmp eq i64 %i.bz, %n.vec74
  br i1 %cmp.n84, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6, %middle.block83
  %.05.i.i.i.i.i.i.i.i.i.i8.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.preheader.i.i6 ], [ %n.vec74, %middle.block83 ]
  %i.dc = extractelement <2 x i32> %i.cn, i64 0
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader100, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11
  %.05.us.i.i.i.i.i.i.i.i.i.i12 = phi i64 [ %i.dg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11 ], [ %.05.us.i.i.i.i.i.i.i.i.i.i12.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11.preheader100 ] ; 4 uses
  %i.dd = trunc i64 %.05.us.i.i.i.i.i.i.i.i.i.i12 to i32
  %i.de = sdiv i32 %i.dd, %i.cw
  %i.df = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.05.us.i.i.i.i.i.i.i.i.i.i12
  store i32 %i.de, ptr %i.df, align 4, !tbaa !42
  %i.dg = add nuw nsw i64 %.05.us.i.i.i.i.i.i.i.i.i.i12, 1
  %exitcond7.not.i.i.i.i.i.i.i.i.i.i13 = icmp eq i64 %.05.us.i.i.i.i.i.i.i.i.i.i12, %i.by
  br i1 %exitcond7.not.i.i.i.i.i.i.i.i.i.i13, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11, !llvm.loop !629

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7
  %.05.i.i.i.i.i.i.i.i.i.i8 = phi i64 [ %i.dk, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7 ], [ %.05.i.i.i.i.i.i.i.i.i.i8.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7.preheader ] ; 4 uses
  %i.dh = trunc i64 %.05.i.i.i.i.i.i.i.i.i.i8 to i32
  %i.di = mul nsw i32 %i.dc, %i.dh
  %i.dj = getelementptr inbounds nuw [4 x i8], ptr %i.bx, i64 %.05.i.i.i.i.i.i.i.i.i.i8
  store i32 %i.di, ptr %i.dj, align 4, !tbaa !42
  %i.dk = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i8, 1
  %exitcond.not.i.i.i.i.i.i.i.i.i.i9 = icmp eq i64 %.05.i.i.i.i.i.i.i.i.i.i8, %i.by
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i9, label %_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7, !llvm.loop !630

_ZN5Eigen9DenseBaseINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEE12setLinSpacedERKiS9_.exit14: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i7, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_3MapINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.us.i.i.i.i.i.i.i.i.i.i11, %middle.block83, %middle.block97, %_ZN5Eigen8internal12linspaced_opIiEC2ERKiS4_l.exit.thread.i.i5
  %i.dl = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !114
  tail call void @free(ptr noundef %i.dm) #28
  store ptr null, ptr %i.dl, align 8, !tbaa !114
  ret void
}

declare void @_ZN3igl21AtA_cached_precomputeIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERNS_15AtA_cached_dataERS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

declare void @_ZN3igl10AtA_cachedIdEEvRKN5Eigen12SparseMatrixIT_Li0EiEERKNS_15AtA_cached_dataERS4_(ptr noundef nonnull align 8 dereferenceable(72), ptr noundef nonnull align 8 dereferenceable(112), ptr noundef nonnull align 8 dereferenceable(72)) local_unnamed_addr #5

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local noundef nonnull align 8 dereferenceable(72) ptr @_ZN5Eigen12SparseMatrixIdLi0EiEaSINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEERS1_RKNS_16SparseMatrixBaseIT_EE(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 1 dereferenceable(1) %1) local_unnamed_addr #7 comdat align 2 {
bb.a:
  %i.a = load i8, ptr %1, align 1, !tbaa !120, !range !113, !noundef !28
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !149, !nonnull !28, !align !140 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.f = load i64, ptr %i.e, align 8, !tbaa !35
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !41
  tail call void @_ZN5Eigen12SparseMatrixIdLi0EiE6resizeEll(ptr noundef nonnull align 8 dereferenceable(72) %0, i64 noundef %i.f, i64 noundef %i.h)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !114  ; 2 uses
  %.not.i = icmp eq ptr %i.j, null
  br i1 %.not.i, label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @free(ptr noundef nonnull %i.j) #28
  store ptr null, ptr %i.i, align 8, !tbaa !114
  br label %_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit

_ZN5Eigen12SparseMatrixIdLi0EiE14initAssignmentINS_13CwiseBinaryOpINS_8internal13scalar_sum_opIddEEKS1_KNS3_INS4_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS4_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRKT_.exit: ; preds = %bb.c, %bb.b, %bb.a
  tail call void @_ZN5Eigen8internal23assign_sparse_to_sparseINS_12SparseMatrixIdLi0EiEENS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKS3_KNS4_INS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEES7_EEEEEEvRT_RKT0_(ptr noundef nonnull align 8 dereferenceable(72) %0, ptr noundef nonnull align 8 dereferenceable(65) %1)
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl4slim8buildRhsERNS_8SLIMDataERKN5Eigen12SparseMatrixIdLi0EiEE(ptr noundef nonnull align 8 dereferenceable(808) %0, ptr noundef nonnull align 8 dereferenceable(72) %1) local_unnamed_addr #2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.Eigen::internal::assign_op.353", align 1 ; 3 uses
  %3 = alloca %"class.Eigen::Matrix.21", align 8  ; 9 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 9 uses
  %5 = alloca %"class.Eigen::CwiseBinaryOp.135", align 8 ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #28
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 532
  %i.b = load i32, ptr %i.a, align 4, !tbaa !78   ; 6 uses
  %i.c = mul nsw i32 %i.b, %i.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 520
  %i.e = load i32, ptr %i.d, align 8, !tbaa !118  ; 14 uses
  %i.f = mul nsw i32 %i.c, %i.e                   ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %3, i8 0, i64 16, i1 false)
  %i.g = sext i32 %i.f to i64                     ; 2 uses
  %i.h = icmp sgt i32 %i.f, 0
  br i1 %i.h, label %bb.b, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

bb.b:                                             ; preds = %bb.a
  %i.i = shl nuw nsw i64 %i.g, 3
  %calloc = tail call ptr @calloc(i64 1, i64 %i.i) ; 3 uses
  %i.j = icmp eq ptr %calloc, null
  br i1 %i.j, label %.noexc.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i

.noexc.i:                                         ; preds = %bb.b
  %i.k = tail call ptr @__cxa_allocate_exception(i64 8) #28 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.k, align 8, !tbaa !77
  tail call void @__cxa_throw(ptr nonnull %i.k, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #30
  unreachable

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i: ; preds = %bb.b
  store ptr %calloc, ptr %3, align 8, !tbaa !38
  br label %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit

_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit: ; preds = %bb.a, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i
  %i.l = phi ptr [ %calloc, %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKd.exit.loopexit.i ], [ null, %bb.a ] ; 20 uses
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.g, ptr %i.m, align 8, !tbaa !37
  %i.n = icmp eq i32 %i.b, 2
  %i.o = icmp sgt i32 %i.e, 0                     ; 2 uses
  br i1 %i.n, label %.preheader246, label %.preheader247

.preheader247:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.o, label %.lr.ph, label %.loopexit

.lr.ph:                                           ; preds = %.preheader247
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !27
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.t = load ptr, ptr %i.s, align 8, !tbaa !27
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.v = load i64, ptr %i.r, align 8, !tbaa !29   ; 8 uses
  %i.w = load i64, ptr %i.u, align 8, !tbaa !29   ; 8 uses
  %.idx = shl i64 %i.v, 4
  %.idx229 = shl i64 %i.w, 4
  %.idx230 = mul i64 %i.w, 24
  %.idx231 = shl i64 %i.w, 5
  %.idx232 = mul i64 %i.w, 40
  %.idx233 = mul i64 %i.w, 48
  %.idx234 = mul i64 %i.w, 56
  %.idx235 = shl i64 %i.w, 6
  %i.x = shl nuw nsw i32 %i.e, 1
  %.idx236 = mul i64 %i.v, 24
  %.idx237 = shl i64 %i.v, 5
  %.idx238 = mul i64 %i.v, 40
  %i.y = mul nuw nsw i32 %i.e, 3
  %i.z = shl nuw nsw i32 %i.e, 2
  %i.aa = mul nuw nsw i32 %i.e, 5
  %.idx239 = mul i64 %i.v, 48
  %.idx240 = mul i64 %i.v, 56
  %.idx241 = shl i64 %i.v, 6
  %i.ab = mul nuw nsw i32 %i.e, 6
  %i.ac = mul nuw nsw i32 %i.e, 7
  %i.ad = shl nuw nsw i32 %i.e, 3
  %i.ae = zext nneg i32 %i.e to i64               ; 2 uses
  %i.af = zext nneg i32 %i.x to i64
  %i.ag = zext nneg i32 %i.y to i64
  %i.ah = zext nneg i32 %i.z to i64
  %i.ai = zext nneg i32 %i.aa to i64
  %i.aj = zext nneg i32 %i.ab to i64
  %i.ak = zext nneg i32 %i.ac to i64
  %i.al = zext nneg i32 %i.ad to i64
  %invariant.gep280 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ae
  %invariant.gep282 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.af
  %invariant.gep284 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ag
  %invariant.gep286 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ah
  %invariant.gep288 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ai
  %invariant.gep290 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aj
  %invariant.gep292 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.ak
  %invariant.gep294 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.al
  br label %bb.c

.preheader246:                                    ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE7setZeroEv.exit
  br i1 %i.o, label %.lr.ph251, label %.loopexit

.lr.ph251:                                        ; preds = %.preheader246
  %i.am = getelementptr inbounds nuw i8, ptr %0, i64 280
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !27 ; 11 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 288
  %i.ap = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.aq = load ptr, ptr %i.ap, align 8, !tbaa !27 ; 11 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 240
  %i.as = load i64, ptr %i.ao, align 8, !tbaa !29 ; 5 uses
  %i.at = load i64, ptr %i.ar, align 8, !tbaa !29 ; 5 uses
  %.idx242 = shl i64 %i.at, 4                     ; 4 uses
  %.idx243 = mul i64 %i.at, 24                    ; 4 uses
  %.idx244 = shl i64 %i.as, 4                     ; 4 uses
  %.idx245 = mul i64 %i.as, 24                    ; 4 uses
  %i.au = shl nuw i32 %i.e, 1
  %i.av = mul i32 %i.e, 3
  %i.aw = zext nneg i32 %i.e to i64               ; 8 uses
  %i.ax = zext i32 %i.au to i64                   ; 2 uses
  %i.ay = zext i32 %i.av to i64                   ; 2 uses
  %invariant.gep296 = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %i.aw ; 7 uses
  %invariant.gep298 = getelementptr [8 x i8], ptr %i.l, i64 %i.ax ; 5 uses
  %invariant.gep300 = getelementptr [8 x i8], ptr %i.l, i64 %i.ay ; 6 uses
  %min.iters.check = icmp ult i32 %i.e, 36
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph251
  %i.az = shl nuw nsw i64 %i.aw, 4
  %i.ba = getelementptr i8, ptr %i.l, i64 %i.az   ; 3 uses
  %i.bb = shl nuw nsw i64 %i.aw, 3                ; 8 uses
  %i.bc = add nuw nsw i64 %i.aw, %i.ax
  %i.bd = shl nuw nsw i64 %i.bc, 3
  %i.be = getelementptr i8, ptr %i.l, i64 %i.bd   ; 3 uses
  %i.bf = add nuw nsw i64 %i.aw, %i.ay
  %i.bg = shl nuw nsw i64 %i.bf, 3
  %i.bh = getelementptr i8, ptr %i.l, i64 %i.bg   ; 4 uses
  %i.bi = getelementptr i8, ptr %i.an, i64 %.idx245 ; 2 uses
  %i.bj = getelementptr i8, ptr %i.an, i64 %.idx245
  %i.bk = getelementptr i8, ptr %i.bj, i64 %i.bb  ; 2 uses
  %i.bl = getelementptr i8, ptr %i.an, i64 %.idx244 ; 2 uses
  %i.bm = getelementptr i8, ptr %i.an, i64 %.idx244
  %i.bn = getelementptr i8, ptr %i.bm, i64 %i.bb  ; 2 uses
  %i.bo = shl i64 %i.as, 3                        ; 2 uses
  %i.bp = getelementptr i8, ptr %i.an, i64 %i.bo  ; 2 uses
  %i.bq = getelementptr i8, ptr %i.an, i64 %i.bo
  %i.br = getelementptr i8, ptr %i.bq, i64 %i.bb  ; 2 uses
  %i.bs = getelementptr i8, ptr %i.an, i64 %i.bb  ; 2 uses
  %i.bt = getelementptr i8, ptr %i.aq, i64 %.idx243 ; 2 uses
  %i.bu = getelementptr i8, ptr %i.aq, i64 %.idx243
  %i.bv = getelementptr i8, ptr %i.bu, i64 %i.bb  ; 2 uses
  %i.bw = getelementptr i8, ptr %i.aq, i64 %.idx242 ; 2 uses
  %i.bx = getelementptr i8, ptr %i.aq, i64 %.idx242
  %i.by = getelementptr i8, ptr %i.bx, i64 %i.bb  ; 2 uses
  %i.bz = shl i64 %i.at, 3                        ; 2 uses
  %i.ca = getelementptr i8, ptr %i.aq, i64 %i.bz  ; 2 uses
  %i.cb = getelementptr i8, ptr %i.aq, i64 %i.bz
  %i.cc = getelementptr i8, ptr %i.cb, i64 %i.bb  ; 2 uses
  %i.cd = getelementptr i8, ptr %i.aq, i64 %i.bb  ; 2 uses
  %6 = insertelement <8 x ptr> poison, ptr %i.l, i64 0
  %7 = shufflevector <8 x ptr> %6, <8 x ptr> poison, <8 x i32> zeroinitializer
  %8 = insertelement <8 x ptr> poison, ptr %i.be, i64 0 ; 2 uses
  %9 = insertelement <8 x ptr> %8, ptr %i.bh, i64 1
  %10 = insertelement <8 x ptr> %9, ptr %i.bk, i64 2
  %11 = insertelement <8 x ptr> %10, ptr %i.bn, i64 3
  %12 = insertelement <8 x ptr> %11, ptr %i.br, i64 4
  %13 = insertelement <8 x ptr> %12, ptr %i.bs, i64 5
  %14 = insertelement <8 x ptr> %13, ptr %i.bv, i64 6
  %15 = insertelement <8 x ptr> %14, ptr %i.by, i64 7
  %16 = icmp ult <8 x ptr> %7, %15
  %17 = insertelement <8 x ptr> poison, ptr %invariant.gep298, i64 0 ; 2 uses
  %18 = insertelement <8 x ptr> %17, ptr %invariant.gep300, i64 1
  %19 = insertelement <8 x ptr> %18, ptr %i.bi, i64 2
  %20 = insertelement <8 x ptr> %19, ptr %i.bl, i64 3
  %21 = insertelement <8 x ptr> %20, ptr %i.bp, i64 4
  %22 = insertelement <8 x ptr> %21, ptr %i.an, i64 5
  %23 = insertelement <8 x ptr> %22, ptr %i.bt, i64 6
  %24 = insertelement <8 x ptr> %23, ptr %i.bw, i64 7
  %25 = insertelement <8 x ptr> poison, ptr %invariant.gep296, i64 0
  %26 = shufflevector <8 x ptr> %25, <8 x ptr> poison, <8 x i32> zeroinitializer ; 2 uses
  %27 = icmp ult <8 x ptr> %24, %26
  %28 = and <8 x i1> %16, %27
  %bound0493 = icmp ult ptr %i.l, %i.cc
  %bound1494 = icmp ult ptr %i.ca, %invariant.gep296
  %found.conflict495 = and i1 %bound0493, %bound1494
  %bound0497 = icmp ult ptr %i.l, %i.cd
  %bound1498 = icmp ult ptr %i.aq, %invariant.gep296
  %found.conflict499.a = and i1 %bound0497, %bound1498
  %bound0501.a = icmp ult ptr %invariant.gep296, %i.be
  %bound1502.a = icmp ult ptr %invariant.gep298, %i.ba
  %found.conflict503.a = and i1 %bound0501.a, %bound1502.a
  %bound0505.a = icmp ult ptr %invariant.gep296, %i.bh
  %bound1506.a = icmp ult ptr %invariant.gep300, %i.ba
  %found.conflict507.a = and i1 %bound0505.a, %bound1506.a
  %29 = insertelement <8 x ptr> poison, ptr %i.bk, i64 0
  %30 = insertelement <8 x ptr> %29, ptr %i.bn, i64 1
  %31 = insertelement <8 x ptr> %30, ptr %i.br, i64 2
  %32 = insertelement <8 x ptr> %31, ptr %i.bs, i64 3
  %33 = insertelement <8 x ptr> %32, ptr %i.bv, i64 4
  %34 = insertelement <8 x ptr> %33, ptr %i.by, i64 5
  %35 = insertelement <8 x ptr> %34, ptr %i.cc, i64 6
  %36 = insertelement <8 x ptr> %35, ptr %i.cd, i64 7 ; 3 uses
  %37 = icmp ult <8 x ptr> %26, %36
  %38 = insertelement <8 x ptr> poison, ptr %i.bi, i64 0
  %39 = insertelement <8 x ptr> %38, ptr %i.bl, i64 1
  %40 = insertelement <8 x ptr> %39, ptr %i.bp, i64 2
  %41 = insertelement <8 x ptr> %40, ptr %i.an, i64 3
  %42 = insertelement <8 x ptr> %41, ptr %i.bt, i64 4
  %43 = insertelement <8 x ptr> %42, ptr %i.bw, i64 5
  %44 = insertelement <8 x ptr> %43, ptr %i.ca, i64 6
  %45 = insertelement <8 x ptr> %44, ptr %i.aq, i64 7 ; 3 uses
  %46 = insertelement <8 x ptr> poison, ptr %i.ba, i64 0
  %47 = shufflevector <8 x ptr> %46, <8 x ptr> poison, <8 x i32> zeroinitializer
  %48 = icmp ult <8 x ptr> %45, %47
  %49 = and <8 x i1> %37, %48
  %bound0541 = icmp ult ptr %invariant.gep298, %i.bh
  %bound1542 = icmp ult ptr %invariant.gep300, %i.be
  %found.conflict543 = and i1 %bound0541, %bound1542
  %50 = shufflevector <8 x ptr> %17, <8 x ptr> poison, <8 x i32> zeroinitializer
  %51 = icmp ult <8 x ptr> %50, %36
  %52 = shufflevector <8 x ptr> %8, <8 x ptr> poison, <8 x i32> zeroinitializer
  %53 = icmp ult <8 x ptr> %45, %52
  %54 = and <8 x i1> %51, %53
  %55 = insertelement <8 x ptr> poison, ptr %invariant.gep300, i64 0
  %56 = shufflevector <8 x ptr> %55, <8 x ptr> poison, <8 x i32> zeroinitializer
  %57 = icmp ult <8 x ptr> %56, %36
  %58 = insertelement <8 x ptr> poison, ptr %i.bh, i64 0
  %59 = shufflevector <8 x ptr> %58, <8 x ptr> poison, <8 x i32> zeroinitializer
  %60 = icmp ult <8 x ptr> %45, %59
  %61 = and <8 x i1> %57, %60
  %rdx.op = or <8 x i1> %28, %49
  %rdx.op641 = or <8 x i1> %rdx.op, %54
  %rdx.op642 = or <8 x i1> %rdx.op641, %61
  %62 = bitcast <8 x i1> %rdx.op642 to i8
  %63 = icmp ne i8 %62, 0
  %op.rdx = or i1 %63, %found.conflict495
  %op.rdx643 = or i1 %found.conflict499.a, %found.conflict503.a
  %op.rdx644 = or i1 %found.conflict507.a, %found.conflict543
  %op.rdx645 = or i1 %op.rdx, %op.rdx643
  %op.rdx646 = or i1 %op.rdx645, %op.rdx644
  br i1 %op.rdx646, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.aw, 2147483646              ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 7 uses
  %i.ce = getelementptr [8 x i8], ptr %i.an, i64 %index ; 5 uses
  %wide.load = load <2 x double>, ptr %i.ce, align 8, !tbaa !40, !alias.scope !658
  %i.cf = getelementptr [8 x i8], ptr %i.aq, i64 %index ; 5 uses
  %wide.load609 = load <2 x double>, ptr %i.cf, align 8, !tbaa !40, !alias.scope !659
  %i.cg = getelementptr [8 x i8], ptr %i.ce, i64 %i.as ; 2 uses
  %wide.load610 = load <2 x double>, ptr %i.cg, align 8, !tbaa !40, !alias.scope !660
  %i.ch = getelementptr [8 x i8], ptr %i.cf, i64 %i.at ; 2 uses
  %wide.load611 = load <2 x double>, ptr %i.ch, align 8, !tbaa !40, !alias.scope !661
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %index
  %i.cj = fmul <2 x double> %wide.load610, %wide.load611
  %i.ck = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load, <2 x double> %wide.load609, <2 x double> %i.cj)
  store <2 x double> %i.ck, ptr %i.ci, align 8, !tbaa !40, !alias.scope !662, !noalias !663
  %wide.load612 = load <2 x double>, ptr %i.ce, align 8, !tbaa !40, !alias.scope !658
  %i.cl = getelementptr i8, ptr %i.cf, i64 %.idx242 ; 2 uses
  %wide.load613 = load <2 x double>, ptr %i.cl, align 8, !tbaa !40, !alias.scope !664
  %wide.load614 = load <2 x double>, ptr %i.cg, align 8, !tbaa !40, !alias.scope !660
  %i.cm = getelementptr i8, ptr %i.cf, i64 %.idx243 ; 2 uses
  %wide.load615 = load <2 x double>, ptr %i.cm, align 8, !tbaa !40, !alias.scope !665
  %i.cn = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep296, i64 %index
  %i.co = fmul <2 x double> %wide.load614, %wide.load615
  %i.cp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load612, <2 x double> %wide.load613, <2 x double> %i.co)
  store <2 x double> %i.cp, ptr %i.cn, align 8, !tbaa !40, !alias.scope !666, !noalias !667
  %i.cq = getelementptr i8, ptr %i.ce, i64 %.idx244 ; 2 uses
  %wide.load616 = load <2 x double>, ptr %i.cq, align 8, !tbaa !40, !alias.scope !668
  %wide.load617 = load <2 x double>, ptr %i.cf, align 8, !tbaa !40, !alias.scope !659
  %i.cr = getelementptr i8, ptr %i.ce, i64 %.idx245 ; 2 uses
  %wide.load618 = load <2 x double>, ptr %i.cr, align 8, !tbaa !40, !alias.scope !669
  %wide.load619 = load <2 x double>, ptr %i.ch, align 8, !tbaa !40, !alias.scope !661
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep298, i64 %index
  %i.ct = fmul <2 x double> %wide.load618, %wide.load619
  %i.cu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load616, <2 x double> %wide.load617, <2 x double> %i.ct)
  store <2 x double> %i.cu, ptr %i.cs, align 8, !tbaa !40, !alias.scope !670, !noalias !671
  %wide.load620 = load <2 x double>, ptr %i.cq, align 8, !tbaa !40, !alias.scope !668
  %wide.load621 = load <2 x double>, ptr %i.cl, align 8, !tbaa !40, !alias.scope !664
  %wide.load622 = load <2 x double>, ptr %i.cr, align 8, !tbaa !40, !alias.scope !669
  %wide.load623 = load <2 x double>, ptr %i.cm, align 8, !tbaa !40, !alias.scope !665
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep300, i64 %index
  %i.cw = fmul <2 x double> %wide.load622, %wide.load623
  %i.cx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %wide.load620, <2 x double> %wide.load621, <2 x double> %i.cw)
  store <2 x double> %i.cx, ptr %i.cv, align 8, !tbaa !40, !alias.scope !672, !noalias !673
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cy = icmp eq i64 %index.next, %n.vec
  br i1 %i.cy, label %middle.block, label %vector.body, !llvm.loop !644

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %n.vec, %i.aw
  br i1 %cmp.n, label %.loopexit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %.lr.ph251, %middle.block
  %indvars.iv258.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph251 ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv258 = phi i64 [ %indvars.iv.next259, %scalar.ph ], [ %indvars.iv258.ph, %scalar.ph.preheader ] ; 7 uses
  %i.cz = getelementptr [8 x i8], ptr %i.an, i64 %indvars.iv258 ; 5 uses
  %i.da = load double, ptr %i.cz, align 8, !tbaa !40
  %i.db = getelementptr [8 x i8], ptr %i.aq, i64 %indvars.iv258 ; 5 uses
  %i.dc = load double, ptr %i.db, align 8, !tbaa !40
  %i.dd = getelementptr [8 x i8], ptr %i.cz, i64 %i.as ; 2 uses
  %i.de = load double, ptr %i.dd, align 8, !tbaa !40
  %i.df = getelementptr [8 x i8], ptr %i.db, i64 %i.at ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !40
  %i.dh = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv258
  %i.di = fmul double %i.de, %i.dg
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.da, double %i.dc, double %i.di)
  store double %i.dj, ptr %i.dh, align 8, !tbaa !40
  %i.dk = load double, ptr %i.cz, align 8, !tbaa !40
  %i.dl = getelementptr i8, ptr %i.db, i64 %.idx242 ; 2 uses
  %i.dm = load double, ptr %i.dl, align 8, !tbaa !40
  %i.dn = load double, ptr %i.dd, align 8, !tbaa !40
  %i.do = getelementptr i8, ptr %i.db, i64 %.idx243 ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !40
  %gep297 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep296, i64 %indvars.iv258
  %i.dq = fmul double %i.dn, %i.dp
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.dk, double %i.dm, double %i.dq)
  store double %i.dr, ptr %gep297, align 8, !tbaa !40
  %i.ds = getelementptr i8, ptr %i.cz, i64 %.idx244 ; 2 uses
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !40
  %i.du = load double, ptr %i.db, align 8, !tbaa !40
  %i.dv = getelementptr i8, ptr %i.cz, i64 %.idx245 ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !40
  %i.dx = load double, ptr %i.df, align 8, !tbaa !40
  %gep299 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep298, i64 %indvars.iv258
  %i.dy = fmul double %i.dw, %i.dx
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dt, double %i.du, double %i.dy)
  store double %i.dz, ptr %gep299, align 8, !tbaa !40
  %i.ea = load double, ptr %i.ds, align 8, !tbaa !40
  %i.eb = load double, ptr %i.dl, align 8, !tbaa !40
  %i.ec = load double, ptr %i.dv, align 8, !tbaa !40
  %i.ed = load double, ptr %i.do, align 8, !tbaa !40
  %gep301 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep300, i64 %indvars.iv258
  %i.ee = fmul double %i.ec, %i.ed
  %i.ef = tail call double @llvm.fmuladd.f64(double %i.ea, double %i.eb, double %i.ee)
  store double %i.ef, ptr %gep301, align 8, !tbaa !40
  %indvars.iv.next259 = add nuw nsw i64 %indvars.iv258, 1 ; 2 uses
  %exitcond262.not = icmp eq i64 %indvars.iv.next259, %i.aw
  br i1 %exitcond262.not, label %.loopexit, label %scalar.ph, !llvm.loop !645

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 12 uses
  %i.eg = getelementptr [8 x i8], ptr %i.q, i64 %indvars.iv ; 11 uses
  %i.eh = load double, ptr %i.eg, align 8, !tbaa !40
  %i.ei = getelementptr [8 x i8], ptr %i.t, i64 %indvars.iv ; 11 uses
  %i.ej = load double, ptr %i.ei, align 8, !tbaa !40
  %i.ek = getelementptr [8 x i8], ptr %i.eg, i64 %i.v ; 3 uses
  %i.el = load double, ptr %i.ek, align 8, !tbaa !40
  %i.em = getelementptr [8 x i8], ptr %i.ei, i64 %i.w ; 3 uses
  %i.en = load double, ptr %i.em, align 8, !tbaa !40
  %i.eo = fmul double %i.el, %i.en
  %i.ep = tail call double @llvm.fmuladd.f64(double %i.eh, double %i.ej, double %i.eo)
  %i.eq = getelementptr i8, ptr %i.eg, i64 %.idx  ; 3 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !40
  %i.es = getelementptr i8, ptr %i.ei, i64 %.idx229 ; 3 uses
  %i.et = load double, ptr %i.es, align 8, !tbaa !40
  %i.eu = getelementptr inbounds nuw [8 x i8], ptr %i.l, i64 %indvars.iv
  %i.ev = tail call double @llvm.fmuladd.f64(double %i.er, double %i.et, double %i.ep)
  store double %i.ev, ptr %i.eu, align 8, !tbaa !40
  %i.ew = load double, ptr %i.eg, align 8, !tbaa !40
  %i.ex = getelementptr i8, ptr %i.ei, i64 %.idx230 ; 3 uses
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !40
  %i.ez = load double, ptr %i.ek, align 8, !tbaa !40
  %i.fa = getelementptr i8, ptr %i.ei, i64 %.idx231 ; 3 uses
  %i.fb = load double, ptr %i.fa, align 8, !tbaa !40
  %i.fc = fmul double %i.ez, %i.fb
  %i.fd = tail call double @llvm.fmuladd.f64(double %i.ew, double %i.ey, double %i.fc)
  %i.fe = load double, ptr %i.eq, align 8, !tbaa !40
  %i.ff = getelementptr i8, ptr %i.ei, i64 %.idx232 ; 3 uses
  %i.fg = load double, ptr %i.ff, align 8, !tbaa !40
  %gep281 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep280, i64 %indvars.iv
  %i.fh = tail call double @llvm.fmuladd.f64(double %i.fe, double %i.fg, double %i.fd)
  store double %i.fh, ptr %gep281, align 8, !tbaa !40
  %i.fi = load double, ptr %i.eg, align 8, !tbaa !40
  %i.fj = getelementptr i8, ptr %i.ei, i64 %.idx233 ; 3 uses
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !40
  %i.fl = load double, ptr %i.ek, align 8, !tbaa !40
  %i.fm = getelementptr i8, ptr %i.ei, i64 %.idx234 ; 3 uses
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !40
  %i.fo = fmul double %i.fl, %i.fn
  %i.fp = tail call double @llvm.fmuladd.f64(double %i.fi, double %i.fk, double %i.fo)
  %i.fq = load double, ptr %i.eq, align 8, !tbaa !40
  %i.fr = getelementptr i8, ptr %i.ei, i64 %.idx235 ; 3 uses
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !40
  %gep283 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep282, i64 %indvars.iv
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.fq, double %i.fs, double %i.fp)
  store double %i.ft, ptr %gep283, align 8, !tbaa !40
  %i.fu = getelementptr i8, ptr %i.eg, i64 %.idx236 ; 3 uses
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !40
  %i.fw = load double, ptr %i.ei, align 8, !tbaa !40
  %i.fx = getelementptr i8, ptr %i.eg, i64 %.idx237 ; 3 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !40
  %i.fz = load double, ptr %i.em, align 8, !tbaa !40
  %i.ga = fmul double %i.fy, %i.fz
  %i.gb = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fw, double %i.ga)
  %i.gc = getelementptr i8, ptr %i.eg, i64 %.idx238 ; 3 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !40
  %i.ge = load double, ptr %i.es, align 8, !tbaa !40
  %gep285 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep284, i64 %indvars.iv
  %i.gf = tail call double @llvm.fmuladd.f64(double %i.gd, double %i.ge, double %i.gb)
  store double %i.gf, ptr %gep285, align 8, !tbaa !40
  %i.gg = load double, ptr %i.fu, align 8, !tbaa !40
  %i.gh = load double, ptr %i.ex, align 8, !tbaa !40
  %i.gi = load double, ptr %i.fx, align 8, !tbaa !40
  %i.gj = load double, ptr %i.fa, align 8, !tbaa !40
  %i.gk = fmul double %i.gi, %i.gj
  %i.gl = tail call double @llvm.fmuladd.f64(double %i.gg, double %i.gh, double %i.gk)
  %i.gm = load double, ptr %i.gc, align 8, !tbaa !40
  %i.gn = load double, ptr %i.ff, align 8, !tbaa !40
  %gep287 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep286, i64 %indvars.iv
  %i.go = tail call double @llvm.fmuladd.f64(double %i.gm, double %i.gn, double %i.gl)
  store double %i.go, ptr %gep287, align 8, !tbaa !40
  %i.gp = load double, ptr %i.fu, align 8, !tbaa !40
  %i.gq = load double, ptr %i.fj, align 8, !tbaa !40
  %i.gr = load double, ptr %i.fx, align 8, !tbaa !40
  %i.gs = load double, ptr %i.fm, align 8, !tbaa !40
  %i.gt = fmul double %i.gr, %i.gs
  %i.gu = tail call double @llvm.fmuladd.f64(double %i.gp, double %i.gq, double %i.gt)
  %i.gv = load double, ptr %i.gc, align 8, !tbaa !40
  %i.gw = load double, ptr %i.fr, align 8, !tbaa !40
  %gep289 = getelementptr inbounds nuw [8 x i8], ptr %invariant.gep288, i64 %indvars.iv
  %i.gx = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gw, double %i.gu)
  store double %i.gx, ptr %gep289, align 8, !tbaa !40
  %i.gy = getelementptr i8, ptr %i.eg, i64 %.idx239 ; 3 uses
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !40
  %i.ha = load double, ptr %i.ei, align 8, !tbaa !40
  %i.hb = getelementptr i8, ptr %i.eg, i64 %.idx240 ; 3 uses
  %i.hc = load double, ptr %i.hb, align 8, !tbaa !40
  %i.hd = load double, ptr %i.em, align 8, !tbaa !40
  %i.he = fmul double %i.hc, %i.hd
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.gz, double %i.ha, double %i.he)
  %i.hg = getelementptr i8, ptr %i.eg, i64 %.idx241 ; 3 uses
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !40
  %i.hi = load double, ptr %i.es, align 8, !tbaa !40
end_hunk_0
