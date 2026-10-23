Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_ZN5Eigen8internal8coletreeINS_12SparseMatrixIdLi0EiEENS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEiRKT_RT0_SA_PNS6_12StorageIndexE:bb.a
  %i.as = add nsw i32 %.sroa.speculated149, -1
  %i.at = tail call i32 @llvm.smax.i32(i32 %.sroa.speculated149, i32 2)
  %i.au = add nsw i32 %i.at, -1
  %i.av = sdiv i32 %i.as, %i.au                   ; 2 uses
  %or.cond = icmp sgt i32 %.sroa.speculated149, 0
  br i1 %or.cond, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader: ; preds = %.loopexit190
  %min.iters.check234 = icmp ult i32 %.sroa.speculated149, 8
  br i1 %min.iters.check234, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, label %vector.ph235

vector.ph235:                                     ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader
  %n.vec236 = and i64 %i.ar, 2147483640           ; 3 uses
  %broadcast.splatinsert237 = insertelement <4 x i32> poison, i32 %i.av, i64 0
  %broadcast.splat238 = shufflevector <4 x i32> %broadcast.splatinsert237, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  br label %vector.body239

vector.body239:                                   ; preds = %vector.body239, %vector.ph235
  %index240 = phi i64 [ 0, %vector.ph235 ], [ %index.next241, %vector.body239 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph235 ], [ %vec.ind.next, %vector.body239 ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.aw = mul nsw <4 x i32> %broadcast.splat238, %vec.ind
  %i.ax = mul nsw <4 x i32> %broadcast.splat238, %step.add
  %i.ay = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %index240 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.ay, i64 16
  store <4 x i32> %i.aw, ptr %i.ay, align 4, !tbaa !142
  store <4 x i32> %i.ax, ptr %i.az, align 4, !tbaa !142
  %index.next241 = add nuw i64 %index240, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.ba = icmp eq i64 %index.next241, %n.vec236
  br i1 %i.ba, label %middle.block242, label %vector.body239, !llvm.loop !481

middle.block242:                                  ; preds = %vector.body239
  %cmp.n243 = icmp eq i64 %n.vec236, %i.ar
  br i1 %cmp.n243, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec236, %middle.block242 ]
  br label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.be, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.ph, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i.preheader246 ] ; 3 uses
  %i.bb = trunc i64 %.05.i.i.i.i.i.i.i.i.i.i.i to i32
  %i.bc = mul nsw i32 %i.av, %i.bb
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %.pre, i64 %.05.i.i.i.i.i.i.i.i.i.i.i
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !142
  %i.be = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.be, %i.ar
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !482

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEEENS2_INS_14CwiseNullaryOpINS0_12linspaced_opIiEES5_EEEENS0_9assign_opIiiEELi0EE11assignCoeffEl.exit.i.i.i.i.i.i.i.i.i.i.i, %middle.block242, %.loopexit190
  br i1 %i.g, label %.lr.ph193, label %._crit_edge202

.lr.ph193:                                        ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  %.not83 = icmp eq ptr %3, null                  ; 2 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.bg = load ptr, ptr %i.bf, align 8, !tbaa !175 ; 4 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !172 ; 2 uses
  %i.bj = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bk = load ptr, ptr %i.bj, align 8, !tbaa !173 ; 2 uses
  %i.bl = icmp eq ptr %i.bk, null
  %wide.trip.count209 = and i64 %i.b, 2147483647  ; 2 uses
  br i1 %i.bl, label %.lr.ph193.split.us, label %.lr.ph193.split

.lr.ph193.split.us:                               ; preds = %.lr.ph193, %._crit_edge.us
  %indvars.iv206 = phi i64 [ %indvars.iv.next207, %._crit_edge.us ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.bm = trunc nuw nsw i64 %indvars.iv206 to i32 ; 3 uses
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us, label %bb.m

bb.m:                                             ; preds = %.lr.ph193.split.us
  %i.bn = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv206
  %i.bo = load i32, ptr %i.bn, align 4, !tbaa !142
  %i.bp = sext i32 %i.bo to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us: ; preds = %bb.m, %.lr.ph193.split.us
  %.058.us = phi i64 [ %i.bp, %bb.m ], [ %indvars.iv206, %.lr.ph193.split.us ]
  %i.bq = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.058.us ; 2 uses
  %i.br = load i32, ptr %i.bq, align 4, !tbaa !142 ; 2 uses
  %i.bs = getelementptr i8, ptr %i.bq, i64 4
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !142 ; 2 uses
  %i.bu = sext i32 %i.bt to i64                   ; 3 uses
  %i.bv = icmp slt i32 %i.br, %i.bt
  br i1 %i.bv, label %.lr.ph.us.preheader, label %._crit_edge.us

.lr.ph.us.preheader:                              ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %i.bw = sext i32 %i.br to i64                   ; 5 uses
  %i.bx = sub nsw i64 %i.bu, %i.bw
  %xtraiter = and i64 %i.bx, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.lr.ph.us.prol.loopexit, label %.lr.ph.us.prol

.lr.ph.us.prol:                                   ; preds = %.lr.ph.us.preheader
  %i.by = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %i.bw
  %i.bz = load i32, ptr %i.by, align 4, !tbaa !142
  %i.ca = sext i32 %i.bz to i64
  %i.cb = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ca ; 2 uses
  %i.cc = load i32, ptr %i.cb, align 4, !tbaa !142
  %.sroa.speculated.us.prol = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cc)
  store i32 %.sroa.speculated.us.prol, ptr %i.cb, align 4, !tbaa !142
  %i.cd = add nsw i64 %i.bw, 1
  br label %.lr.ph.us.prol.loopexit

.lr.ph.us.prol.loopexit:                          ; preds = %.lr.ph.us.prol, %.lr.ph.us.preheader
  %.sroa.7115.0191.us.unr = phi i64 [ %i.bw, %.lr.ph.us.preheader ], [ %i.cd, %.lr.ph.us.prol ]
  %i.ce = add nsw i64 %i.bu, -1
  %i.cf = icmp eq i64 %i.ce, %i.bw
  br i1 %i.cf, label %._crit_edge.us, label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us
  %.sroa.7115.0191.us = phi i64 [ %i.cr, %.lr.ph.us ], [ %.sroa.7115.0191.us.unr, %.lr.ph.us.prol.loopexit ] ; 3 uses
  %i.cg = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !142
  %i.ci = sext i32 %i.ch to i64
  %i.cj = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.ci ; 2 uses
  %i.ck = load i32, ptr %i.cj, align 4, !tbaa !142
  %.sroa.speculated.us = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.ck)
  store i32 %.sroa.speculated.us, ptr %i.cj, align 4, !tbaa !142
  %i.cl = getelementptr [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191.us
  %i.cm = getelementptr i8, ptr %i.cl, i64 4
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !142
  %i.co = sext i32 %i.cn to i64
  %i.cp = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.co ; 2 uses
  %i.cq = load i32, ptr %i.cp, align 4, !tbaa !142
  %.sroa.speculated.us.1 = tail call i32 @llvm.smin.i32(i32 %i.bm, i32 %i.cq)
  store i32 %.sroa.speculated.us.1, ptr %i.cp, align 4, !tbaa !142
  %i.cr = add nsw i64 %.sroa.7115.0191.us, 2      ; 2 uses
  %exitcond205.not.1 = icmp eq i64 %i.cr, %i.bu
  br i1 %exitcond205.not.1, label %._crit_edge.us, label %.lr.ph.us, !llvm.loop !483

._crit_edge.us:                                   ; preds = %.lr.ph.us.prol.loopexit, %.lr.ph.us, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit.us
  %indvars.iv.next207 = add nuw nsw i64 %indvars.iv206, 1 ; 2 uses
  %exitcond210.not = icmp eq i64 %indvars.iv.next207, %wide.trip.count209
  br i1 %exitcond210.not, label %.lr.ph201, label %.lr.ph193.split.us, !llvm.loop !484

.lr.ph201:                                        ; preds = %._crit_edge, %._crit_edge.us
  %i.cs = load ptr, ptr %1, align 8, !tbaa !141   ; 2 uses
  %.not = icmp eq ptr %3, null
  %i.ct = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.cu = load ptr, ptr %i.ct, align 8, !tbaa !175
  %i.cv = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cw = load ptr, ptr %i.cv, align 8, !tbaa !172
  %i.cx = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.cy = load ptr, ptr %i.cx, align 8, !tbaa !173 ; 2 uses
  %i.cz = icmp eq ptr %i.cy, null
  %sext = shl i64 %i.e, 32
  %i.da = ashr exact i64 %sext, 32
  %wide.trip.count214 = and i64 %i.b, 2147483647
  br label %bb.o

.lr.ph193.split:                                  ; preds = %.lr.ph193, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ 0, %.lr.ph193 ] ; 4 uses
  %i.db = trunc nuw nsw i64 %indvars.iv to i32
  br i1 %.not83, label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, label %bb.n

bb.n:                                             ; preds = %.lr.ph193.split
  %i.dc = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv
  %i.dd = load i32, ptr %i.dc, align 4, !tbaa !142
  %i.de = sext i32 %i.dd to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.n, %.lr.ph193.split
  %.058 = phi i64 [ %i.de, %bb.n ], [ %indvars.iv, %.lr.ph193.split ] ; 2 uses
  %i.df = getelementptr inbounds [4 x i8], ptr %i.bi, i64 %.058
  %i.dg = load i32, ptr %i.df, align 4, !tbaa !142
  %i.dh = sext i32 %i.dg to i64                   ; 2 uses
  %i.di = getelementptr inbounds [4 x i8], ptr %i.bk, i64 %.058
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !142 ; 2 uses
  %i.dk = zext nneg i32 %i.dj to i64
  %i.dl = add nsw i64 %i.dk, %i.dh
  %i.dm = icmp sgt i32 %i.dj, 0
  br i1 %i.dm, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count209
  br i1 %exitcond.not, label %.lr.ph201, label %.lr.ph193.split, !llvm.loop !484

.lr.ph:                                           ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.lr.ph
  %.sroa.7115.0191 = phi i64 [ %i.ds, %.lr.ph ], [ %i.dh, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 2 uses
  %i.dn = getelementptr inbounds [4 x i8], ptr %i.bg, i64 %.sroa.7115.0191
  %i.do = load i32, ptr %i.dn, align 4, !tbaa !142
  %i.dp = sext i32 %i.do to i64
  %i.dq = getelementptr inbounds [4 x i8], ptr %.pre, i64 %i.dp ; 2 uses
  %i.dr = load i32, ptr %i.dq, align 4, !tbaa !142
  %.sroa.speculated = tail call i32 @llvm.smin.i32(i32 %i.db, i32 %i.dr)
  store i32 %.sroa.speculated, ptr %i.dq, align 4, !tbaa !142
  %i.ds = add nsw i64 %.sroa.7115.0191, 1         ; 2 uses
  %i.dt = icmp slt i64 %i.ds, %i.dl
  br i1 %i.dt, label %.lr.ph, label %._crit_edge, !llvm.loop !483

._crit_edge202:                                   ; preds = %._crit_edge199, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEELin1ELi1ELb0EEEE12setLinSpacedElRKiS7_.exit
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  tail call void @free(ptr noundef %.sroa.0137.0164171178) #33
  ret i32 0

bb.o:                                             ; preds = %.lr.ph201, %._crit_edge199
  %indvars.iv211 = phi i64 [ 0, %.lr.ph201 ], [ %indvars.iv.next212, %._crit_edge199 ] ; 12 uses
  %i.du = icmp sge i64 %indvars.iv211, %i.da      ; 2 uses
  %4 = zext i1 %i.du to i8
  %i.dv = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0129.0179, i64 %indvars.iv211
  %i.dw = trunc nuw nsw i64 %indvars.iv211 to i32 ; 5 uses
  store i32 %i.dw, ptr %i.dv, align 4, !tbaa !142
  %i.dx = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0137.0164171178, i64 %indvars.iv211
  store i32 %i.dw, ptr %i.dx, align 4, !tbaa !142
  %i.dy = getelementptr inbounds nuw [4 x i8], ptr %i.cs, i64 %indvars.iv211
  store i32 %i.c, ptr %i.dy, align 4, !tbaa !142
  br i1 %.not, label %bb.r, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.dz = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv211
  %i.ea = load i32, ptr %i.dz, align 4, !tbaa !142
  %i.eb = sext i32 %i.ea to i64
  br label %bb.r

bb.q:                                             ; preds = %.invoke
  %i.ec = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0129.0179) #33
  br label %.body

bb.r:                                             ; preds = %bb.p, %bb.o
  %.055 = phi i64 [ %i.eb, %bb.p ], [ %indvars.iv211, %bb.o ] ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.cw, i64 %.055 ; 2 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !142
  %i.ef = sext i32 %i.ee to i64                   ; 3 uses
  br i1 %i.cz, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.eg = getelementptr i8, ptr %i.ed, i64 4
  %i.eh = load i32, ptr %i.eg, align 4, !tbaa !142
  %i.ei = sext i32 %i.eh to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

bb.t:                                             ; preds = %bb.r
  %i.ej = getelementptr inbounds [4 x i8], ptr %i.cy, i64 %.055
  %i.ek = load i32, ptr %i.ej, align 4, !tbaa !142
  %i.el = sext i32 %i.ek to i64
  %i.em = add nsw i64 %i.el, %i.ef
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107: ; preds = %bb.s, %bb.t
  %.sink.i106 = phi i64 [ %i.ei, %bb.s ], [ %i.em, %bb.t ] ; 2 uses
  %5 = icmp sgt i64 %.sink.i106, %i.ef            ; 2 uses
  %6 = xor i1 %i.du, true
  %.not188194 = select i1 %5, i1 true, i1 %6
  br i1 %.not188194, label %.lr.ph198, label %._crit_edge199

._crit_edge199:                                   ; preds = %bb.y, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107
  %indvars.iv.next212 = add nuw nsw i64 %indvars.iv211, 1 ; 2 uses
  %exitcond215.not = icmp eq i64 %indvars.iv.next212, %wide.trip.count214
  br i1 %exitcond215.not, label %._crit_edge202, label %bb.o, !llvm.loop !485

.lr.ph198:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107, %bb.y
  %i.en = phi i1 [ %7, %bb.y ], [ %5, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.057197 = phi i32 [ %.2, %bb.y ], [ %i.dw, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 3 uses
  %.059193 = phi i8 [ %spec.select, %bb.y ], [ %4, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ]
  %.sroa.7.0195 = phi i64 [ %i.fe, %bb.y ], [ %i.ef, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit107 ] ; 2 uses
  br i1 %i.en, label %bb.u, label %bb.v

bb.u:                                             ; preds = %.lr.ph198
  %i.eo = getelementptr inbounds [4 x i8], ptr %i.cu, i64 %.sroa.7.0195
  %i.ep = load i32, ptr %i.eo, align 4, !tbaa !142
  %i.eq = sext i32 %i.ep to i64
  br label %bb.v

bb.v:                                             ; preds = %.lr.ph198, %bb.u
  %.0 = phi i64 [ %i.eq, %bb.u ], [ %indvars.iv211, %.lr.ph198 ] ; 2 uses
  %i.er = icmp eq i64 %.0, %indvars.iv211
  %spec.select = select i1 %i.er, i8 1, i8 %.059193 ; 2 uses
  %i.es = getelementptr inbounds [4 x i8], ptr %.pre, i64 %.0
  %i.et = load i32, ptr %i.es, align 4, !tbaa !142 ; 2 uses
  %i.eu = sext i32 %i.et to i64                   ; 2 uses
  %.not78 = icmp sgt i64 %indvars.iv211, %i.eu
  br i1 %.not78, label %bb.w, label %bb.y

bb.w:                                             ; preds = %bb.v
  %.014.in18.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.eu
  %.01419.i = load i32, ptr %.014.in18.i, align 4, !tbaa !142 ; 3 uses
  %.pn20.i = sext i32 %.01419.i to i64            ; 2 uses
  %.0.in21.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn20.i
  %.022.i = load i32, ptr %.0.in21.i, align 4, !tbaa !142 ; 2 uses
  %.not23.i = icmp eq i32 %.022.i, %.01419.i
  br i1 %.not23.i, label %.loopexit, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %bb.w, %.lr.ph.i
  %.025.i = phi i32 [ %.0.i, %.lr.ph.i ], [ %.022.i, %bb.w ] ; 3 uses
  %.01524.i = phi i32 [ %.025.i, %.lr.ph.i ], [ %i.et, %bb.w ]
  %i.ev = sext i32 %.01524.i to i64
  %i.ew = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.ev
  store i32 %.025.i, ptr %i.ew, align 4, !tbaa !142
  %.pn16.i = sext i32 %.025.i to i64
  %.014.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn16.i
  %.014.i = load i32, ptr %.014.in.i, align 4, !tbaa !142 ; 3 uses
  %.pn.i = sext i32 %.014.i to i64                ; 2 uses
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %.pn.i
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !142 ; 2 uses
  %.not.i = icmp eq i32 %.0.i, %.014.i
  br i1 %.not.i, label %.loopexit, label %.lr.ph.i, !llvm.loop !486

.loopexit:                                        ; preds = %.lr.ph.i, %bb.w
  %.pre-phi = phi i64 [ %.pn20.i, %bb.w ], [ %.pn.i, %.lr.ph.i ]
  %.014.lcssa.i = phi i32 [ %.01419.i, %bb.w ], [ %.014.i, %.lr.ph.i ] ; 2 uses
  %i.ex = getelementptr inbounds [4 x i8], ptr %.sroa.0137.0164171178, i64 %.pre-phi ; 2 uses
  %i.ey = load i32, ptr %i.ex, align 4, !tbaa !142 ; 2 uses
  %i.ez = zext i32 %i.ey to i64
  %.not79 = icmp eq i64 %indvars.iv211, %i.ez
  br i1 %.not79, label %bb.y, label %bb.x

bb.x:                                             ; preds = %.loopexit
  %i.fa = sext i32 %i.ey to i64
  %i.fb = getelementptr inbounds [4 x i8], ptr %i.cs, i64 %i.fa
  store i32 %i.dw, ptr %i.fb, align 4, !tbaa !142
  %i.fc = sext i32 %.057197 to i64
  %i.fd = getelementptr inbounds [4 x i8], ptr %.sroa.0129.0179, i64 %i.fc
  store i32 %.014.lcssa.i, ptr %i.fd, align 4, !tbaa !142
  store i32 %i.dw, ptr %i.ex, align 4, !tbaa !142
  br label %bb.y

bb.y:                                             ; preds = %.loopexit, %bb.x, %bb.v
  %.2 = phi i32 [ %.057197, %bb.v ], [ %.014.lcssa.i, %bb.x ], [ %.057197, %.loopexit ]
  %i.fe = add nsw i64 %.sroa.7.0195, 1            ; 2 uses
  %7 = icmp slt i64 %i.fe, %.sink.i106            ; 2 uses
  %8 = icmp eq i8 %spec.select, 0
  %.not188 = select i1 %7, i1 true, i1 %8
  br i1 %.not188, label %.lr.ph198, label %._crit_edge199, !llvm.loop !487

.body:                                            ; preds = %bb.q, %bb.e
  %.sroa.0137.0165 = phi ptr [ %calloc, %bb.e ], [ %.sroa.0137.0164171178, %bb.q ]
  %.pn84.pn.pn.pn.pn = phi { ptr, i32 } [ %i.o, %bb.e ], [ %i.ec, %bb.q ]
  tail call void @free(ptr noundef %.sroa.0137.0165) #33
  resume { ptr, i32 } %.pn84.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13treePostorderINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_(i32 noundef %0, ptr noundef nonnull align 8 dereferenceable(16) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = add nsw i32 %0, 1
  %i.b = sext i32 %i.a to i64                     ; 5 uses
  %or.cond = icmp slt i32 %0, 0                   ; 2 uses
  br i1 %or.cond, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = shl nuw nsw i64 %i.b, 2                  ; 2 uses
  %i.d = tail call noalias ptr @malloc(i64 noundef %i.c) #35 ; 3 uses
  %i.e = icmp eq ptr %i.d, null
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc unwind label %bb.l

.noexc:                                           ; preds = %bb.c
  unreachable

bb.d:                                             ; preds = %bb.b
  %calloc = tail call ptr @calloc(i64 1, i64 %i.c) ; 2 uses
  %i.g = icmp eq ptr %calloc, null
  br i1 %i.g, label %bb.e, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit

bb.e:                                             ; preds = %bb.d
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc23 unwind label %bb.l

.noexc23:                                         ; preds = %bb.e
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit: ; preds = %bb.d, %bb.a
  %.sroa.0.154 = phi ptr [ null, %bb.a ], [ %calloc, %bb.d ] ; 7 uses
  %.sroa.037.14753 = phi ptr [ null, %bb.a ], [ %i.d, %bb.d ] ; 7 uses
  %i.i = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !140
  %.not.i.i.i24 = icmp eq i64 %i.j, %i.b
  br i1 %.not.i.i.i24, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i27, label %bb.f

bb.f:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  %i.k = load ptr, ptr %2, align 8, !tbaa !141
  tail call void @free(ptr noundef %i.k) #33
  %i.l = icmp sgt i32 %0, -1
  br i1 %i.l, label %bb.g, label %.sink.split.i.i.i25

bb.g:                                             ; preds = %bb.f
  %i.m = shl nuw nsw i64 %i.b, 2
  %i.n = tail call noalias ptr @malloc(i64 noundef %i.m) #35 ; 2 uses
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %bb.h, label %.sink.split.i.i.i25

bb.h:                                             ; preds = %bb.g
  %i.p = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.p, align 8, !tbaa !123
  invoke void @__cxa_throw(ptr nonnull %i.p, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.noexc30 unwind label %bb.l

.noexc30:                                         ; preds = %bb.h
  unreachable

.sink.split.i.i.i25:                              ; preds = %bb.g, %bb.f
  %.sink.i.i.i26 = phi ptr [ %i.n, %bb.g ], [ null, %bb.f ]
  store ptr %.sink.i.i.i26, ptr %2, align 8, !tbaa !141
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i27

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i27: ; preds = %.sink.split.i.i.i25, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE7setZeroEl.exit
  store i64 %i.b, ptr %i.i, align 8, !tbaa !140
  br i1 %or.cond, label %.lr.ph39.i, label %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit

_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i27
  %i.q = load ptr, ptr %2, align 8, !tbaa !141
  %.idx.i.i.i.i.i.i.i.i.i.i.i29 = shl nuw nsw i64 %i.b, 2 ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.q, i8 0, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i29, i1 false), !tbaa !142
  tail call void @llvm.memset.p0.i64(ptr align 4 %.sroa.037.14753, i8 -1, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i29, i1 false), !tbaa !142
  %.not = icmp eq i32 %0, 0
  br i1 %.not, label %_ZN5Eigen8internal8nr_etdfsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_S6_S6_S5_.exit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN5Eigen9DenseBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE11setConstantERKi.exit
  %i.r = load ptr, ptr %1, align 8, !tbaa !141    ; 3 uses
  %i.s = zext nneg i32 %0 to i64                  ; 3 uses
  %xtraiter = and i64 %i.s, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %.lr.ph
  %indvars.iv.next.prol = add nsw i64 %i.s, -1    ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.prol
  %i.u = load i32, ptr %i.t, align 4, !tbaa !142
  %i.v = sext i32 %i.u to i64
  %i.w = getelementptr inbounds [4 x i8], ptr %.sroa.037.14753, i64 %i.v ; 2 uses
  %i.x = load i32, ptr %i.w, align 4, !tbaa !142
  %i.y = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.154, i64 %indvars.iv.next.prol
  store i32 %i.x, ptr %i.y, align 4, !tbaa !142
  %i.z = trunc nuw nsw i64 %indvars.iv.next.prol to i32
  store i32 %i.z, ptr %i.w, align 4, !tbaa !142
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %.lr.ph
  %indvars.iv.unr = phi i64 [ %i.s, %.lr.ph ], [ %indvars.iv.next.prol, %.prol.loopexit.unr-lcssa ]
  %i.aa = icmp eq i32 %0, 1
  br i1 %i.aa, label %.lr.ph39.i, label %.lr.ph.new

.lr.ph39.i:                                       ; preds = %.prol.loopexit, %.lr.ph.new, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit.i27
  %i.ab = load ptr, ptr %2, align 8               ; 2 uses
  %i.ac = load ptr, ptr %1, align 8
  br label %bb.i

bb.i:                                             ; preds = %bb.k, %.lr.ph39.i
  %.02237.i = phi i32 [ %0, %.lr.ph39.i ], [ %.2.i, %bb.k ] ; 2 uses
  %.02336.i = phi i32 [ 0, %.lr.ph39.i ], [ %.225.i, %bb.k ] ; 4 uses
  %i.ad = sext i32 %.02237.i to i64               ; 3 uses
  %i.ae = getelementptr inbounds [4 x i8], ptr %.sroa.037.14753, i64 %i.ad
  %i.af = load i32, ptr %i.ae, align 4, !tbaa !142 ; 2 uses
  %i.ag = icmp eq i32 %i.af, -1
  br i1 %i.ag, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %i.ah = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.ad
  store i32 %.02336.i, ptr %i.ah, align 4, !tbaa !142
  %.0.in28.i = getelementptr inbounds [4 x i8], ptr %.sroa.0.154, i64 %i.ad
  %.029.i = load i32, ptr %.0.in28.i, align 4, !tbaa !142 ; 2 uses
  %.12430.i = add nsw i32 %.02336.i, 1            ; 2 uses
  %i.ai = icmp eq i32 %.029.i, -1
  br i1 %i.ai, label %.lr.ph.i, label %._crit_edge.i

.lr.ph.i:                                         ; preds = %bb.j, %.lr.ph.i
  %.12432.i = phi i32 [ %.124.i, %.lr.ph.i ], [ %.12430.i, %bb.j ] ; 3 uses
  %.131.i = phi i32 [ %i.al, %.lr.ph.i ], [ %.02237.i, %bb.j ]
  %i.aj = sext i32 %.131.i to i64
  %i.ak = getelementptr inbounds [4 x i8], ptr %i.ac, i64 %i.aj
  %i.al = load i32, ptr %i.ak, align 4, !tbaa !142 ; 2 uses
  %i.am = sext i32 %i.al to i64                   ; 2 uses
  %i.an = getelementptr inbounds [4 x i8], ptr %i.ab, i64 %i.am
  store i32 %.12432.i, ptr %i.an, align 4, !tbaa !142
  %.0.in.i = getelementptr inbounds [4 x i8], ptr %.sroa.0.154, i64 %i.am
  %.0.i = load i32, ptr %.0.in.i, align 4, !tbaa !142 ; 2 uses
  %.124.i = add nsw i32 %.12432.i, 1              ; 2 uses
  %i.ao = icmp eq i32 %.0.i, -1
  br i1 %i.ao, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !488

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.j
  %.124.in.lcssa.i = phi i32 [ %.02336.i, %bb.j ], [ %.12432.i, %.lr.ph.i ]
  %.0.lcssa.i = phi i32 [ %.029.i, %bb.j ], [ %.0.i, %.lr.ph.i ]
  %.124.lcssa.i = phi i32 [ %.12430.i, %bb.j ], [ %.124.i, %.lr.ph.i ]
  %i.ap = icmp eq i32 %.124.in.lcssa.i, %0
  br i1 %i.ap, label %_ZN5Eigen8internal8nr_etdfsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_S6_S6_S5_.exit, label %bb.k

bb.k:                                             ; preds = %._crit_edge.i, %bb.i
  %.225.i = phi i32 [ %.124.lcssa.i, %._crit_edge.i ], [ %.02336.i, %bb.i ] ; 2 uses
  %.2.i = phi i32 [ %.0.lcssa.i, %._crit_edge.i ], [ %i.af, %bb.i ]
  %.not.i = icmp eq i32 %.225.i, %0
  br i1 %.not.i, label %_ZN5Eigen8internal8nr_etdfsINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEEEvNT_6ScalarERS4_S6_S6_S6_S5_.exit, label %bb.i, !llvm.loop !489

.lr.ph.new:                                       ; preds = %.prol.loopexit, %.lr.ph.new
  %indvars.iv = phi i64 [ %indvars.iv.next.1, %.lr.ph.new ], [ %indvars.iv.unr, %.prol.loopexit ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.aq = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next
  %i.ar = load i32, ptr %i.aq, align 4, !tbaa !142
  %i.as = sext i32 %i.ar to i64
  %i.at = getelementptr inbounds [4 x i8], ptr %.sroa.037.14753, i64 %i.as ; 2 uses
  %i.au = load i32, ptr %i.at, align 4, !tbaa !142
  %i.av = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.154, i64 %indvars.iv.next
  store i32 %i.au, ptr %i.av, align 4, !tbaa !142
  %i.aw = trunc nuw nsw i64 %indvars.iv.next to i32
  store i32 %i.aw, ptr %i.at, align 4, !tbaa !142
  %indvars.iv.next.1 = add nsw i64 %indvars.iv, -2 ; 4 uses
  %i.ax = getelementptr inbounds nuw [4 x i8], ptr %i.r, i64 %indvars.iv.next.1
  %i.ay = load i32, ptr %i.ax, align 4, !tbaa !142
  %i.az = sext i32 %i.ay to i64
  %i.ba = getelementptr inbounds [4 x i8], ptr %.sroa.037.14753, i64 %i.az ; 2 uses
  %i.bb = load i32, ptr %i.ba, align 4, !tbaa !142
  %i.bc = getelementptr inbounds nuw [4 x i8], ptr %.sroa.0.154, i64 %indvars.iv.next.1
  store i32 %i.bb, ptr %i.bc, align 4, !tbaa !142
  %i.bd = trunc nuw nsw i64 %indvars.iv.next.1 to i32
  store i32 %i.bd, ptr %i.ba, align 4, !tbaa !142
  %i.be = icmp sgt i64 %indvars.iv, 2
  br i1 %i.be, label %.lr.ph.new, label %.lr.ph39.i, !llvm.loop !490

bb.l:                                             ; preds = %bb.h, %bb.e, %bb.c
  %.sroa.037.0 = phi ptr [ %.sroa.037.14753, %bb.h ], [ %i.d, %bb.e ], [ null, %bb.c ]
  %.sroa.0.0 = phi ptr [ %.sroa.0.154, %bb.h ], [ null, %bb.e ], [ null, %bb.c ]
  %i.bf = landingpad { ptr, i32 }
          cleanup
  tail call void @free(ptr noundef %.sroa.0.0) #33
  tail call void @free(ptr noundef %.sroa.037.0) #33
  resume { ptr, i32 } %i.bf
end_hunk_0
