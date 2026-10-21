Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/ViewerData?download=true
inline.NumInlined: 5241
inline.NumDeleted: 2566
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 117
loop-unroll.NumUnrolled: 139
begin_hunk_0_@_ZN3igl6opengl10ViewerData8set_dataERKN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEEddNS_12ColorMapTypeEi:bb.a
  %.09.us.us.i.i.1 = phi i64 [ %i.fs, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1 ], [ %.09.us.us.i.i.1.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1.preheader ] ; 3 uses
  %i.fq = trunc i64 %.09.us.us.i.i.1 to i32
  %i.fr = sdiv i32 %i.fq, %i.eo
  %gep.us.us.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.1, i64 %.09.us.us.i.i.1
  store i32 %i.fr, ptr %gep.us.us.i.i.1, align 4, !tbaa !113
  %i.fs = add nuw nsw i64 %.09.us.us.i.i.1, 1     ; 2 uses
  %exitcond16.not.i.i.1 = icmp eq i64 %i.fs, %i.eb
  br i1 %exitcond16.not.i.i.1, label %._crit_edge.split.us.us.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1, !llvm.loop !450

._crit_edge.split.us.us.i.i.1:                    ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.1, %middle.block188
  %invariant.gep.us.i.i.2.idx = shl nuw i64 %i.eb, 3
  %invariant.gep.us.i.i.2 = getelementptr i8, ptr %i.ez, i64 %invariant.gep.us.i.i.2.idx ; 2 uses
  %min.iters.check192 = icmp ult i64 %i.eb, 4
  br i1 %min.iters.check192, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader, label %vector.ph193

vector.ph193:                                     ; preds = %._crit_edge.split.us.us.i.i.1
  %n.vec194 = and i64 %i.eb, 2305843009213693948  ; 3 uses
  %broadcast.splatinsert195 = insertelement <4 x i32> poison, i32 %i.eo, i64 0
  %broadcast.splat196 = shufflevector <4 x i32> %broadcast.splatinsert195, <4 x i32> poison, <4 x i32> zeroinitializer
  br label %vector.body197

vector.body197:                                   ; preds = %vector.body197, %vector.ph193
  %index198 = phi i64 [ 0, %vector.ph193 ], [ %index.next200, %vector.body197 ] ; 2 uses
  %vec.ind199 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph193 ], [ %vec.ind.next201, %vector.body197 ] ; 2 uses
  %i.ft = sdiv <4 x i32> %vec.ind199, %broadcast.splat196
  %i.fu = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.2, i64 %index198
  store <4 x i32> %i.ft, ptr %i.fu, align 4, !tbaa !113
  %index.next200 = add nuw i64 %index198, 4       ; 2 uses
  %vec.ind.next201 = add <4 x i32> %vec.ind199, splat (i32 4)
  %i.fv = icmp eq i64 %index.next200, %n.vec194
  br i1 %i.fv, label %middle.block202, label %vector.body197, !llvm.loop !451

middle.block202:                                  ; preds = %vector.body197
  %cmp.n203 = icmp eq i64 %i.eb, %n.vec194
  br i1 %cmp.n203, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader: ; preds = %._crit_edge.split.us.us.i.i.1, %middle.block202
  %.09.us.us.i.i.2.ph = phi i64 [ 0, %._crit_edge.split.us.us.i.i.1 ], [ %n.vec194, %middle.block202 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2
  %.09.us.us.i.i.2 = phi i64 [ %i.fy, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2 ], [ %.09.us.us.i.i.2.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2.preheader ] ; 3 uses
  %i.fw = trunc i64 %.09.us.us.i.i.2 to i32
  %i.fx = sdiv i32 %i.fw, %i.eo
  %gep.us.us.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.us.i.i.2, i64 %.09.us.us.i.i.2
  store i32 %i.fx, ptr %gep.us.us.i.i.2, align 4, !tbaa !113
  %i.fy = add nuw nsw i64 %.09.us.us.i.i.2, 1     ; 2 uses
  %exitcond16.not.i.i.2 = icmp eq i64 %i.fy, %i.eb
  br i1 %exitcond16.not.i.i.2, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2, !llvm.loop !452

._crit_edge.split.i.i:                            ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i, %middle.block130
  %invariant.gep.i.i.1 = getelementptr [4 x i8], ptr %i.ez, i64 %i.eb ; 2 uses
  %min.iters.check134 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check134, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader, label %vector.ph135

vector.ph135:                                     ; preds = %._crit_edge.split.i.i
  %n.vec136 = and i64 %i.eb, 2305843009213693944  ; 3 uses
  %broadcast.splatinsert137 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat138 = shufflevector <4 x i32> %broadcast.splatinsert137, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body139

vector.body139:                                   ; preds = %vector.body139, %vector.ph135
  %index140 = phi i64 [ 0, %vector.ph135 ], [ %index.next143, %vector.body139 ] ; 2 uses
  %vec.ind141 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph135 ], [ %vec.ind.next144, %vector.body139 ] ; 3 uses
  %step.add142 = add <4 x i32> %vec.ind141, splat (i32 4)
  %i.fz = mul nsw <4 x i32> %broadcast.splat138, %vec.ind141
  %i.ga = mul nsw <4 x i32> %broadcast.splat138, %step.add142
  %i.gb = getelementptr [4 x i8], ptr %invariant.gep.i.i.1, i64 %index140 ; 2 uses
  %i.gc = getelementptr i8, ptr %i.gb, i64 16
  store <4 x i32> %i.fz, ptr %i.gb, align 4, !tbaa !113
  store <4 x i32> %i.ga, ptr %i.gc, align 4, !tbaa !113
  %index.next143 = add nuw i64 %index140, 8       ; 2 uses
  %vec.ind.next144 = add <4 x i32> %vec.ind141, splat (i32 8)
  %i.gd = icmp eq i64 %index.next143, %n.vec136
  br i1 %i.gd, label %middle.block145, label %vector.body139, !llvm.loop !453

middle.block145:                                  ; preds = %vector.body139
  %cmp.n146 = icmp eq i64 %i.eb, %n.vec136
  br i1 %cmp.n146, label %._crit_edge.split.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader: ; preds = %._crit_edge.split.i.i, %middle.block145
  %.09.i.i.1.ph = phi i64 [ 0, %._crit_edge.split.i.i ], [ %n.vec136, %middle.block145 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1
  %.09.i.i.1 = phi i64 [ %i.gg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1 ], [ %.09.i.i.1.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1.preheader ] ; 3 uses
  %i.ge = trunc i64 %.09.i.i.1 to i32
  %i.gf = mul nsw i32 %i.es, %i.ge
  %gep.i.i.1 = getelementptr [4 x i8], ptr %invariant.gep.i.i.1, i64 %.09.i.i.1
  store i32 %i.gf, ptr %gep.i.i.1, align 4, !tbaa !113
  %i.gg = add nuw nsw i64 %.09.i.i.1, 1           ; 2 uses
  %exitcond.not.i.i.1 = icmp eq i64 %i.gg, %i.eb
  br i1 %exitcond.not.i.i.1, label %._crit_edge.split.i.i.1, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1, !llvm.loop !454

._crit_edge.split.i.i.1:                          ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.1, %middle.block145
  %invariant.gep.i.i.2.idx = shl nuw i64 %i.eb, 3
  %invariant.gep.i.i.2 = getelementptr i8, ptr %i.ez, i64 %invariant.gep.i.i.2.idx ; 2 uses
  %min.iters.check149 = icmp ult i64 %i.eb, 8
  br i1 %min.iters.check149, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader, label %vector.ph150

vector.ph150:                                     ; preds = %._crit_edge.split.i.i.1
  %n.vec151 = and i64 %i.eb, 2305843009213693944  ; 3 uses
  %broadcast.splatinsert152 = insertelement <4 x i32> poison, i32 %i.es, i64 0
  %broadcast.splat153 = shufflevector <4 x i32> %broadcast.splatinsert152, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body154

vector.body154:                                   ; preds = %vector.body154, %vector.ph150
  %index155 = phi i64 [ 0, %vector.ph150 ], [ %index.next158, %vector.body154 ] ; 2 uses
  %vec.ind156 = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph150 ], [ %vec.ind.next159, %vector.body154 ] ; 3 uses
  %step.add157 = add <4 x i32> %vec.ind156, splat (i32 4)
  %i.gh = mul nsw <4 x i32> %broadcast.splat153, %vec.ind156
  %i.gi = mul nsw <4 x i32> %broadcast.splat153, %step.add157
  %i.gj = getelementptr [4 x i8], ptr %invariant.gep.i.i.2, i64 %index155 ; 2 uses
  %i.gk = getelementptr i8, ptr %i.gj, i64 16
  store <4 x i32> %i.gh, ptr %i.gj, align 4, !tbaa !113
  store <4 x i32> %i.gi, ptr %i.gk, align 4, !tbaa !113
  %index.next158 = add nuw i64 %index155, 8       ; 2 uses
  %vec.ind.next159 = add <4 x i32> %vec.ind156, splat (i32 8)
  %i.gl = icmp eq i64 %index.next158, %n.vec151
  br i1 %i.gl, label %middle.block160, label %vector.body154, !llvm.loop !455

middle.block160:                                  ; preds = %vector.body154
  %cmp.n161 = icmp eq i64 %i.eb, %n.vec151
  br i1 %cmp.n161, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader: ; preds = %._crit_edge.split.i.i.1, %middle.block160
  %.09.i.i.2.ph = phi i64 [ 0, %._crit_edge.split.i.i.1 ], [ %n.vec151, %middle.block160 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2
  %.09.i.i.2 = phi i64 [ %i.go, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2 ], [ %.09.i.i.2.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2.preheader ] ; 3 uses
  %i.gm = trunc i64 %.09.i.i.2 to i32
  %i.gn = mul nsw i32 %i.es, %i.gm
  %gep.i.i.2 = getelementptr [4 x i8], ptr %invariant.gep.i.i.2, i64 %.09.i.i.2
  store i32 %i.gn, ptr %gep.i.i.2, align 4, !tbaa !113
  %i.go = add nuw nsw i64 %.09.i.i.2, 1           ; 2 uses
  %exitcond.not.i.i.2 = icmp eq i64 %i.go, %i.eb
  br i1 %exitcond.not.i.i.2, label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2, !llvm.loop !456

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader207, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i
  %.09.i.i = phi i64 [ %i.gr, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i ], [ %.09.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.preheader207 ] ; 3 uses
  %i.gp = trunc i64 %.09.i.i to i32
  %i.gq = mul nsw i32 %i.es, %i.gp
  %gep.i.i = getelementptr [4 x i8], ptr %i.ez, i64 %.09.i.i
  store i32 %i.gq, ptr %gep.i.i, align 4, !tbaa !113
  %i.gr = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %exitcond.not.i.i = icmp eq i64 %i.gr, %i.eb
  br i1 %exitcond.not.i.i, label %._crit_edge.split.i.i, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i, !llvm.loop !457

.body27:                                          ; preds = %.invoke108
  %i.gs = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i
  store i64 %i.eb, ptr %i.eu, align 8, !tbaa !111
  store i64 3, ptr %i.ev, align 8, !tbaa !112
  br label %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit

_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2, %middle.block160, %middle.block202, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split
  %i.gt = phi ptr [ %i.ez, %middle.block202 ], [ null, %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit.sink.split ], [ %i.ez, %middle.block160 ], [ %i.ez, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.us.us.i.i.2 ], [ %i.ez, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIiLin1ELin1ELi0ELin1ELin1EEEEENS2_INS_9ReplicateINS_14CwiseNullaryOpINS0_12linspaced_opIiEENS3_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEENS0_9assign_opIiiEELi0EE23assignCoeffByOuterInnerEll.exit.i.i.2 ] ; 2 uses
  invoke void @_ZN3igl6opengl10ViewerData6set_uvERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEERKNS3_IiLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %9, ptr noundef nonnull align 8 dereferenceable(24) %11)
          to label %bb.v unwind label %bb.w

bb.v:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  call void @free(ptr noundef %i.gt) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.y

bb.w:                                             ; preds = %_ZN5Eigen6MatrixIiLin1ELin1ELi0ELin1ELin1EEC2INS_9ReplicateINS_14CwiseNullaryOpINS_8internal12linspaced_opIiEENS0_IiLin1ELi1ELi0ELin1ELi1EEEEELin1ELin1EEEEERKNS_9EigenBaseIT_EE.exit
  %i.gu = landingpad { ptr, i32 }
          cleanup
  call void @free(ptr noundef %i.gt) #25
  br label %bb.x

bb.x:                                             ; preds = %bb.w, %.body27
  %.pn15 = phi { ptr, i32 } [ %i.gu, %bb.w ], [ %i.gs, %.body27 ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #25
  br label %bb.z

bb.y:                                             ; preds = %bb.s, %bb.v
  %i.gv = load ptr, ptr %9, align 8, !tbaa !64
  call void @free(ptr noundef %i.gv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  ret void

bb.z:                                             ; preds = %bb.x, %bb.t
  %.pn17 = phi { ptr, i32 } [ %i.dz, %bb.t ], [ %.pn15, %bb.x ]
  %i.gw = load ptr, ptr %9, align 8, !tbaa !64
  call void @free(ptr noundef %i.gw) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #25
  br label %common.resume
}

declare void @_ZN3igl8colormapIN5Eigen6MatrixIdLin1ELi1ELi0ELin1ELi1EEENS2_IdLin1ELin1ELi0ELin1ELin1EEEEEvNS_12ColorMapTypeERKNS1_10MatrixBaseIT_EEddRNS1_15PlainObjectBaseIT0_EE(i32 noundef, ptr noundef nonnull align 1 dereferenceable(1), double noundef, double noundef, ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData12set_colormapERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.Eigen::Matrix.21", align 8  ; 10 uses
  %3 = alloca %"class.Eigen::Matrix.21", align 8  ; 13 uses
  %4 = alloca %"class.Eigen::Matrix.21", align 8  ; 13 uses
  %5 = alloca %"class.Eigen::Matrix.3", align 8   ; 9 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #25
  %i.a = load ptr, ptr %1, align 8, !tbaa !64, !noalias !470 ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !80, !noalias !470 ; 24 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %2, i8 0, i64 24, i1 false)
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %6 = icmp sgt i64 %i.c, 0
  br i1 %6, label %bb.b, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27

bb.b:                                             ; preds = %bb.a
  %i.f = tail call noalias ptr @malloc(i64 noundef %i.c) #27 ; 5 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %.noexc.i.i, label %.lr.ph.i.i.i.i.i.preheader.i.i

.noexc.i.i:                                       ; preds = %bb.b
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !107
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
  unreachable

.lr.ph.i.i.i.i.i.preheader.i.i:                   ; preds = %bb.b
  store ptr %i.f, ptr %2, align 8, !tbaa !65
  store i64 %i.c, ptr %i.d, align 8, !tbaa !134
  store i64 1, ptr %i.e, align 8, !tbaa !135
  %min.iters.check = icmp ult i64 %i.c, 4
  br i1 %min.iters.check, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i
  %n.vec = and i64 %i.c, 9223372036854775804      ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 %index ; 2 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %index ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  %wide.load = load <2 x double>, ptr %i.j, align 8, !tbaa !82
  %wide.load129 = load <2 x double>, ptr %i.k, align 8, !tbaa !82
  %i.l = fmul <2 x double> %wide.load, splat (double 2.550000e+02)
  %i.m = fmul <2 x double> %wide.load129, splat (double 2.550000e+02)
  %i.n = fptoui <2 x double> %i.l to <2 x i8>
  %i.o = fptoui <2 x double> %i.m to <2 x i8>
  %i.p = getelementptr inbounds nuw i8, ptr %i.i, i64 2
  store <2 x i8> %i.n, ptr %i.i, align 1, !tbaa !74
  store <2 x i8> %i.o, ptr %i.p, align 1, !tbaa !74
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.q = icmp eq i64 %index.next, %n.vec
  br i1 %i.q, label %middle.block, label %vector.body, !llvm.loop !464

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.c, %n.vec
  br i1 %cmp.n, label %.loopexit155, label %.lr.ph.i.i.i.i.i.i.i.preheader

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i, %middle.block
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i ], [ %n.vec, %middle.block ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.w, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.r = getelementptr inbounds nuw i8, ptr %i.f, i64 %.05.i.i.i.i.i.i.i
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %.05.i.i.i.i.i.i.i
  %i.t = load double, ptr %i.s, align 8, !tbaa !82
  %i.u = fmul double %i.t, 2.550000e+02
  %i.v = fptoui double %i.u to i8
  store i8 %i.v, ptr %i.r, align 1, !tbaa !74
  %i.w = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1    ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.w, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %.loopexit155, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !465

.loopexit155:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.x = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %i.c ; 2 uses
  %i.y = tail call noalias ptr @malloc(i64 noundef %i.c) #27 ; 5 uses
  %i.z = icmp eq ptr %i.y, null
  br i1 %i.z, label %bb.c, label %.lr.ph.i.i.i.i.i.preheader.i.i21

bb.c:                                             ; preds = %.loopexit155
  %i.aa = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aa, align 8, !tbaa !107
  invoke void @__cxa_throw(ptr nonnull %i.aa, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc.i.i25 unwind label %bb.d

.noexc.i.i25:                                     ; preds = %bb.c
  unreachable

.lr.ph.i.i.i.i.i.preheader.i.i21:                 ; preds = %.loopexit155
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr %i.y, ptr %3, align 8, !tbaa !65
  store i64 %i.c, ptr %i.ac, align 8, !tbaa !134
  store i64 1, ptr %i.ab, align 8, !tbaa !135
  %min.iters.check131 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check131, label %.lr.ph.i.i.i.i.i.i.i22.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i21
  %n.vec133 = and i64 %i.c, 9223372036854775804   ; 3 uses
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.y, i64 %index135 ; 2 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %index135 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 16
  %wide.load136 = load <2 x double>, ptr %i.ae, align 8, !tbaa !82
  %wide.load137 = load <2 x double>, ptr %i.af, align 8, !tbaa !82
  %i.ag = fmul <2 x double> %wide.load136, splat (double 2.550000e+02)
  %i.ah = fmul <2 x double> %wide.load137, splat (double 2.550000e+02)
  %i.ai = fptoui <2 x double> %i.ag to <2 x i8>
  %i.aj = fptoui <2 x double> %i.ah to <2 x i8>
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 2
  store <2 x i8> %i.ai, ptr %i.ad, align 1, !tbaa !74
  store <2 x i8> %i.aj, ptr %i.ak, align 1, !tbaa !74
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.al = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.al, label %middle.block139, label %vector.body134, !llvm.loop !466

middle.block139:                                  ; preds = %vector.body134
  %cmp.n140 = icmp eq i64 %i.c, %n.vec133
  br i1 %cmp.n140, label %.loopexit154, label %.lr.ph.i.i.i.i.i.i.i22.preheader

.lr.ph.i.i.i.i.i.i.i22.preheader:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i21, %middle.block139
  %.05.i.i.i.i.i.i.i23.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i21 ], [ %n.vec133, %middle.block139 ]
  br label %.lr.ph.i.i.i.i.i.i.i22

.lr.ph.i.i.i.i.i.i.i22:                           ; preds = %.lr.ph.i.i.i.i.i.i.i22.preheader, %.lr.ph.i.i.i.i.i.i.i22
  %.05.i.i.i.i.i.i.i23 = phi i64 [ %i.ar, %.lr.ph.i.i.i.i.i.i.i22 ], [ %.05.i.i.i.i.i.i.i23.ph, %.lr.ph.i.i.i.i.i.i.i22.preheader ] ; 3 uses
  %i.am = getelementptr inbounds nuw i8, ptr %i.y, i64 %.05.i.i.i.i.i.i.i23
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.x, i64 %.05.i.i.i.i.i.i.i23
  %i.ao = load double, ptr %i.an, align 8, !tbaa !82
  %i.ap = fmul double %i.ao, 2.550000e+02
  %i.aq = fptoui double %i.ap to i8
  store i8 %i.aq, ptr %i.am, align 1, !tbaa !74
  %i.ar = add nuw nsw i64 %.05.i.i.i.i.i.i.i23, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i24 = icmp eq i64 %i.ar, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i24, label %.loopexit154, label %.lr.ph.i.i.i.i.i.i.i22, !llvm.loop !467

bb.d:                                             ; preds = %bb.c
  %i.as = landingpad { ptr, i32 }
          cleanup
  br label %.body

.loopexit154:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i22, %middle.block139
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  %.idx = shl nuw nsw i64 %i.c, 4
  %i.at = getelementptr inbounds nuw i8, ptr %i.a, i64 %.idx ; 2 uses
  %i.au = tail call noalias ptr @malloc(i64 noundef %i.c) #27 ; 6 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.e, label %.lr.ph.i.i.i.i.i.preheader.i.i28

bb.e:                                             ; preds = %.loopexit154
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.aw, align 8, !tbaa !107
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc.i.i32 unwind label %bb.f

.noexc.i.i32:                                     ; preds = %bb.e
  unreachable

.lr.ph.i.i.i.i.i.preheader.i.i28:                 ; preds = %.loopexit154
  %i.ax = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.ay = getelementptr inbounds nuw i8, ptr %4, i64 8
  store ptr %i.au, ptr %4, align 8, !tbaa !65
  store i64 %i.c, ptr %i.ay, align 8, !tbaa !134
  store i64 1, ptr %i.ax, align 8, !tbaa !135
  %min.iters.check143 = icmp ult i64 %i.c, 4
  br i1 %min.iters.check143, label %.lr.ph.i.i.i.i.i.i.i29.preheader, label %vector.ph144

vector.ph144:                                     ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i28
  %n.vec145 = and i64 %i.c, 9223372036854775804   ; 3 uses
  br label %vector.body146

vector.body146:                                   ; preds = %vector.body146, %vector.ph144
  %index147 = phi i64 [ 0, %vector.ph144 ], [ %index.next150, %vector.body146 ] ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.au, i64 %index147 ; 2 uses
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index147 ; 2 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 16
  %wide.load148 = load <2 x double>, ptr %i.ba, align 8, !tbaa !82
  %wide.load149 = load <2 x double>, ptr %i.bb, align 8, !tbaa !82
  %i.bc = fmul <2 x double> %wide.load148, splat (double 2.550000e+02)
  %i.bd = fmul <2 x double> %wide.load149, splat (double 2.550000e+02)
  %i.be = fptoui <2 x double> %i.bc to <2 x i8>
  %i.bf = fptoui <2 x double> %i.bd to <2 x i8>
  %i.bg = getelementptr inbounds nuw i8, ptr %i.az, i64 2
  store <2 x i8> %i.be, ptr %i.az, align 1, !tbaa !74
  store <2 x i8> %i.bf, ptr %i.bg, align 1, !tbaa !74
  %index.next150 = add nuw i64 %index147, 4       ; 2 uses
  %i.bh = icmp eq i64 %index.next150, %n.vec145
  br i1 %i.bh, label %middle.block151, label %vector.body146, !llvm.loop !468

middle.block151:                                  ; preds = %vector.body146
  %cmp.n152 = icmp eq i64 %i.c, %n.vec145
  br i1 %cmp.n152, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i29.preheader

.lr.ph.i.i.i.i.i.i.i29.preheader:                 ; preds = %.lr.ph.i.i.i.i.i.preheader.i.i28, %middle.block151
  %.05.i.i.i.i.i.i.i30.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.preheader.i.i28 ], [ %n.vec145, %middle.block151 ]
  br label %.lr.ph.i.i.i.i.i.i.i29

.lr.ph.i.i.i.i.i.i.i29:                           ; preds = %.lr.ph.i.i.i.i.i.i.i29.preheader, %.lr.ph.i.i.i.i.i.i.i29
  %.05.i.i.i.i.i.i.i30 = phi i64 [ %i.bn, %.lr.ph.i.i.i.i.i.i.i29 ], [ %.05.i.i.i.i.i.i.i30.ph, %.lr.ph.i.i.i.i.i.i.i29.preheader ] ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.au, i64 %.05.i.i.i.i.i.i.i30
  %i.bj = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.05.i.i.i.i.i.i.i30
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !82
  %i.bl = fmul double %i.bk, 2.550000e+02
  %i.bm = fptoui double %i.bl to i8
  store i8 %i.bm, ptr %i.bi, align 1, !tbaa !74
  %i.bn = add nuw nsw i64 %.05.i.i.i.i.i.i.i30, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i31 = icmp eq i64 %i.bn, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i31, label %.loopexit, label %.lr.ph.i.i.i.i.i.i.i29, !llvm.loop !469

_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27: ; preds = %bb.a
  store i64 %i.c, ptr %i.d, align 8, !tbaa !134
  store i64 1, ptr %i.e, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  store i64 0, ptr %3, align 8
  %7 = getelementptr inbounds nuw i8, ptr %3, i64 8
  %8 = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %i.c, ptr %7, align 8, !tbaa !134
  store i64 1, ptr %8, align 8, !tbaa !135
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store i64 0, ptr %4, align 8
  %9 = getelementptr inbounds nuw i8, ptr %4, i64 8
  %10 = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.c, ptr %9, align 8, !tbaa !134
  store i64 1, ptr %10, align 8, !tbaa !135
  br label %.loopexit

bb.f:                                             ; preds = %bb.e
  %i.bo = landingpad { ptr, i32 }
          cleanup
  br label %.body33

.loopexit:                                        ; preds = %.lr.ph.i.i.i.i.i.i.i29, %middle.block151, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27
  %i.bp = phi ptr [ null, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIhLin1ELin1ELi0ELin1ELin1EEEE12_set_noaliasINS_12CwiseUnaryOpINS_8internal14scalar_cast_opIdhEEKNS_13CwiseBinaryOpINS6_17scalar_product_opIddEEKNS_5BlockIKNS1_IdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEKNS_14CwiseNullaryOpINS6_18scalar_constant_opIdEEKNS1_IdLin1ELi1ELi0ELin1ELi1EEEEEEEEEEERS2_RKNS_9DenseBaseIT_EE.exit.sink.split.i.i27 ], [ %i.au, %middle.block151 ], [ %i.au, %.lr.ph.i.i.i.i.i.i.i29 ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  %i.bq = tail call noalias dereferenceable_or_null(24) ptr @malloc(i64 noundef 24) #27 ; 4 uses
  %i.br = icmp eq ptr %i.bq, null
  br i1 %i.br, label %bb.g, label %bb.i

bb.g:                                             ; preds = %.loopexit
  %i.bs = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.bs, align 8, !tbaa !107
  invoke void @__cxa_throw(ptr nonnull %i.bs, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.noexc.i.i36 unwind label %bb.h

.noexc.i.i36:                                     ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %bb.g
  %i.bt = landingpad { ptr, i32 }
          cleanup
  br label %.body37

bb.i:                                             ; preds = %.loopexit
  store ptr %i.bq, ptr %5, align 8, !tbaa !64
  %i.bu = getelementptr inbounds nuw i8, ptr %5, i64 16
  %11 = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i64 1, ptr %11, align 8, !tbaa !80
  store i64 3, ptr %i.bu, align 8, !tbaa !79
  store <2 x double> splat (double 1.000000e+00), ptr %i.bq, align 8, !tbaa !82
  %invariant.gep.i.2.i.i.i.i.i.i = getelementptr i8, ptr %i.bq, i64 16
  store double 1.000000e+00, ptr %invariant.gep.i.2.i.i.i.i.i.i, align 8, !tbaa !82
  invoke void @_ZN3igl6opengl10ViewerData10set_colorsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %5)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %bb.i
  %i.bv = load ptr, ptr %5, align 8, !tbaa !64
  call void @free(ptr noundef %i.bv) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  invoke void @_ZN3igl6opengl10ViewerData11set_textureERKN5Eigen6MatrixIhLin1ELin1ELi0ELin1ELin1EEES6_S6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4)
          to label %bb.k unwind label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.bw = getelementptr inbounds nuw i8, ptr %0, i64 612
  store i32 -1, ptr %i.bw, align 4, !tbaa !61
  %i.bx = getelementptr inbounds nuw i8, ptr %0, i64 1380
  store i32 9728, ptr %i.bx, align 4, !tbaa !471
  %i.by = getelementptr inbounds nuw i8, ptr %0, i64 1384
  store i32 33071, ptr %i.by, align 8, !tbaa !472
  %i.bz = load ptr, ptr %4, align 8, !tbaa !65
  call void @free(ptr noundef %i.bz) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  %i.ca = load ptr, ptr %3, align 8, !tbaa !65
  call void @free(ptr noundef %i.ca) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  %i.cb = load ptr, ptr %2, align 8, !tbaa !65
  call void @free(ptr noundef %i.cb) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  ret void

bb.l:                                             ; preds = %bb.i
  %i.cc = landingpad { ptr, i32 }
          cleanup
  %i.cd = load ptr, ptr %5, align 8, !tbaa !64
  call void @free(ptr noundef %i.cd) #25
  br label %.body37

.body37:                                          ; preds = %bb.h, %bb.l
  %.pn14 = phi { ptr, i32 } [ %i.cc, %bb.l ], [ %i.bt, %bb.h ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #25
  br label %bb.n

bb.m:                                             ; preds = %bb.j
  %i.ce = landingpad { ptr, i32 }
          cleanup
  %.pre = load ptr, ptr %4, align 8, !tbaa !65
  br label %bb.n

bb.n:                                             ; preds = %bb.m, %.body37
  %i.cf = phi ptr [ %.pre, %bb.m ], [ %i.bp, %.body37 ]
  %.pn16 = phi { ptr, i32 } [ %i.ce, %bb.m ], [ %.pn14, %.body37 ]
  call void @free(ptr noundef %i.cf) #25
  %.pre123 = load ptr, ptr %3, align 8, !tbaa !65
  br label %.body33

.body33:                                          ; preds = %bb.f, %bb.n
  %i.cg = phi ptr [ %.pre123, %bb.n ], [ %i.y, %bb.f ]
  %.pn16.pn = phi { ptr, i32 } [ %.pn16, %bb.n ], [ %i.bo, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #25
  call void @free(ptr noundef %i.cg) #25
  %.pre124 = load ptr, ptr %2, align 8, !tbaa !65
  br label %.body

.body:                                            ; preds = %bb.d, %.body33
  %i.ch = phi ptr [ %.pre124, %.body33 ], [ %i.f, %bb.d ]
  %.pn16.pn.pn = phi { ptr, i32 } [ %.pn16.pn, %.body33 ], [ %i.as, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #25
  call void @free(ptr noundef %i.ch) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #25
  resume { ptr, i32 } %.pn16.pn.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData10set_pointsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !80
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 424
  %i.d = load i64, ptr %i.c, align 8, !tbaa !79
  %i.e = mul nsw i64 %i.d, %i.b
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !64
  tail call void @free(ptr noundef %i.g) #25
  store ptr null, ptr %i.f, align 8, !tbaa !64
  br label %_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit

_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll.exit: ; preds = %bb.a, %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.a, i8 0, i64 16, i1 false)
  tail call void @_ZN3igl6opengl10ViewerData10add_pointsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN3igl6opengl10ViewerData10add_pointsERKN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEES6_(ptr noundef nonnull align 8 dereferenceable(1488) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %1, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(24) %2) local_unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.Eigen::internal::evaluator.420", align 8 ; 5 uses
  %4 = alloca %"struct.Eigen::internal::evaluator.491", align 8 ; 5 uses
  %5 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel.496", align 8 ; 7 uses
  %6 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %7 = alloca %"class.Eigen::Matrix.3", align 8   ; 16 uses
  %8 = alloca %"class.Eigen::Block", align 8      ; 10 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #25
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %7, i8 0, i64 24, i1 false)
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load i64, ptr %i.a, align 8, !tbaa !79   ; 8 uses
  %i.c = icmp eq i64 %i.b, 2
  br i1 %i.c, label %bb.b, label %bb.g

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !80   ; 13 uses
  %i.f = getelementptr inbounds nuw i8, ptr %7, i64 8 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 16 ; 3 uses
  %i.h = icmp sgt i64 %i.e, 3074457345618258602
  br i1 %i.h, label %.invoke, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i

.invoke:                                          ; preds = %bb.b, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i46, %bb.k, %bb.i, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i, %bb.d
  %i.i = tail call ptr @__cxa_allocate_exception(i64 8) #25 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.i, align 8, !tbaa !107
  invoke void @__cxa_throw(ptr nonnull %i.i, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #28
          to label %.cont unwind label %bb.l

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i: ; preds = %bb.b
  %.not.i40 = icmp eq i64 %i.e, 0
  br i1 %.not.i40, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, label %bb.c

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  store i64 %i.e, ptr %i.f, align 8, !tbaa !80
  store i64 3, ptr %i.g, align 8, !tbaa !79
  br label %.loopexit

bb.c:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i.i.i.i.i.i.i.i
  %i.j = icmp sgt i64 %i.e, 0
  br i1 %i.j, label %bb.d, label %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85

_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85: ; preds = %bb.c
  store i64 %i.e, ptr %i.f, align 8, !tbaa !80
  store i64 3, ptr %i.g, align 8, !tbaa !79
  br label %.loopexit

bb.d:                                             ; preds = %bb.c
  %i.k = icmp ugt i64 %i.e, 768614336404564650
  br i1 %i.k, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i: ; preds = %bb.d
  %i.l = mul nuw i64 %i.e, 24
  %i.m = tail call noalias ptr @malloc(i64 noundef %i.l) #27 ; 4 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %.invoke, label %.loopexit.loopexit

.loopexit.loopexit:                               ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i
  store ptr %i.m, ptr %7, align 8, !tbaa !64
  store i64 %i.e, ptr %i.f, align 8, !tbaa !80
  store i64 3, ptr %i.g, align 8, !tbaa !79
  %.idx.i.i.i.i.i.i.i.i.i = mul i64 %i.e, 24
  tail call void @llvm.memset.p0.i64(ptr nonnull align 8 %i.m, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i, i1 false), !tbaa !82
  br label %.loopexit

.loopexit:                                        ; preds = %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread, %.loopexit.loopexit
  %i.o = phi ptr [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread ], [ %i.m, %.loopexit.loopexit ], [ null, %_ZN5Eigen8internal17resize_if_allowedINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_14CwiseNullaryOpINS0_18scalar_constant_opIdEES3_EEddEEvRT_RKT0_RKNS0_9assign_opIT1_T2_EE.exit.i.i.i.i.i.i.i.thread85 ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #25
  store ptr %i.o, ptr %8, align 8, !tbaa !85, !alias.scope !490
  %i.p = getelementptr inbounds nuw i8, ptr %8, i64 8
  store i64 %i.e, ptr %i.p, align 8, !tbaa !86, !alias.scope !490
  %i.q = getelementptr inbounds nuw i8, ptr %8, i64 16
  store i64 2, ptr %i.q, align 8, !tbaa !86, !alias.scope !490
  %i.r = getelementptr inbounds nuw i8, ptr %8, i64 24
  store ptr %7, ptr %i.r, align 8, !tbaa !88, !alias.scope !490
  %i.s = getelementptr inbounds nuw i8, ptr %8, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %8, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false)
  store i64 %i.e, ptr %i.t, align 8, !tbaa !91, !alias.scope !490
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #25
  %i.u = load ptr, ptr %1, align 8, !tbaa !64
  store ptr %i.u, ptr %3, align 8, !tbaa !93
  %i.v = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.e, ptr %i.v, align 8, !tbaa !94
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #25
  store ptr %i.o, ptr %4, align 8, !tbaa !97
  %i.w = getelementptr inbounds nuw i8, ptr %4, i64 16
  store i64 %i.e, ptr %i.w, align 8, !tbaa !86
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #25
  store ptr %4, ptr %5, align 8, !tbaa !99
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 8
  store ptr %3, ptr %i.x, align 8, !tbaa !101
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 16
  store ptr %6, ptr %i.y, align 8, !tbaa !103
  %i.z = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr %8, ptr %i.z, align 8, !tbaa !105
  invoke void @_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_(ptr noundef nonnull align 8 dereferenceable(32) %5)
          to label %bb.e unwind label %bb.f
end_hunk_0
