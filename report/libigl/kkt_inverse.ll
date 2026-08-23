Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/kkt_inverse?download=true
inline.NumInlined: 10943
inline.NumDeleted: 5252
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 107
loop-unroll.NumUnrolled: 118
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
  %i.bp = getelementptr inbounds nuw i8, ptr %i.bn, i64 16 ; 2 uses
  %wide.load258 = load <2 x double>, ptr %i.bn, align 8, !tbaa !47, !alias.scope !321, !noalias !324
  %wide.load259 = load <2 x double>, ptr %i.bp, align 8, !tbaa !47, !alias.scope !321, !noalias !324
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bo, i64 16 ; 2 uses
  %wide.load260 = load <2 x double>, ptr %i.bo, align 8, !tbaa !47, !alias.scope !324
  %wide.load261 = load <2 x double>, ptr %i.bq, align 8, !tbaa !47, !alias.scope !324
  store <2 x double> %wide.load260, ptr %i.bn, align 8, !tbaa !47, !alias.scope !321, !noalias !324
  store <2 x double> %wide.load261, ptr %i.bp, align 8, !tbaa !47, !alias.scope !321, !noalias !324
  store <2 x double> %wide.load258, ptr %i.bo, align 8, !tbaa !47, !alias.scope !324
  store <2 x double> %wide.load259, ptr %i.bq, align 8, !tbaa !47, !alias.scope !324
  %index.next262 = add nuw i64 %index257, 4       ; 2 uses
  %i.br = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.br, label %middle.block263, label %vector.body256, !llvm.loop !326

middle.block263:                                  ; preds = %vector.body256
  %cmp.n264 = icmp eq i64 %i.bg, %n.vec255
  br i1 %cmp.n264, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader272

.lr.ph.i.i.i.i.i.i.preheader272:                  ; preds = %vector.memcheck245, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block263
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck245 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec255, %middle.block263 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter276 = and i64 %i.bg, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader272
  %i.bs = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.w   ; 2 uses
  %i.bt = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bs ; 2 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bs ; 2 uses
  %i.bv = load double, ptr %i.bt, align 8, !tbaa !47
  %i.bw = load double, ptr %i.bu, align 8, !tbaa !47
  store double %i.bw, ptr %i.bt, align 8, !tbaa !47
  store double %i.bv, ptr %i.bu, align 8, !tbaa !47
  %i.bx = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader272
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader272 ], [ %i.bx, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.by = icmp eq i64 %i.bg, %.neg
  br i1 %i.by, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.ck, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.bz = mul nsw i64 %.05.i.i.i.i.i.i, %i.w      ; 2 uses
  %i.ca = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.bz ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bz ; 2 uses
  %i.cc = load double, ptr %i.ca, align 8, !tbaa !47
  %i.cd = load double, ptr %i.cb, align 8, !tbaa !47
  store double %i.cd, ptr %i.ca, align 8, !tbaa !47
  store double %i.cc, ptr %i.cb, align 8, !tbaa !47
  %i.ce = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cf = mul nsw i64 %i.ce, %i.w                 ; 2 uses
  %i.cg = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.cf ; 2 uses
  %i.ch = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cf ; 2 uses
  %i.ci = load double, ptr %i.cg, align 8, !tbaa !47
  %i.cj = load double, ptr %i.ch, align 8, !tbaa !47
  store double %i.cj, ptr %i.cg, align 8, !tbaa !47
  store double %i.ci, ptr %i.ch, align 8, !tbaa !47
  %i.ck = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.ck, %i.bg
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !327

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block263, %bb.d
  %i.cl = load i32, ptr %2, align 4, !tbaa !265
  %i.cm = add nsw i32 %i.cl, 1
  store i32 %i.cm, ptr %2, align 4, !tbaa !265
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.cn = getelementptr [8 x i8], ptr %i.y, i64 %.043171
  %sext = shl i64 %i.t, 32
  %i.co = ashr exact i64 %sext, 32                ; 7 uses
  %i.cp = sub nsw i64 %i.z, %i.co
  %i.cq = getelementptr inbounds [8 x i8], ptr %i.y, i64 %i.cp ; 6 uses
  %i.cr = load double, ptr %i.cn, align 8, !tbaa !47, !noalias !328 ; 5 uses
  %i.cs = ptrtoint ptr %i.cq to i64               ; 2 uses
  %i.ct = and i64 %i.cs, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.ct, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.thread
  %i.cu = lshr exact i64 %i.cs, 3
  %i.cv = and i64 %i.cu, 1
  %i.cw = tail call i64 @llvm.smin.i64(i64 %i.cv, i64 %i.co)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.thread
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cw, %bb.e ], [ %i.co, %.thread ] ; 9 uses
  %i.cx = sub nsw i64 %i.co, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.cy = sdiv i64 %i.cx, 2
  %i.cz = shl nsw i64 %i.cy, 1                    ; 2 uses
  %i.da = add nsw i64 %i.cz, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.db = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.db, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check233 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check233, label %.lr.ph.i.i.i.i.i.i.i.preheader271, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec235 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert236 = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat237 = shufflevector <2 x double> %broadcast.splatinsert236, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph234
  %index239 = phi i64 [ 0, %vector.ph234 ], [ %index.next241, %vector.body238 ] ; 2 uses
  %i.dc = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %index239 ; 2 uses
  %wide.load240 = load <2 x double>, ptr %i.dc, align 8, !tbaa !47
  %i.dd = fdiv <2 x double> %wide.load240, %broadcast.splat237
  store <2 x double> %i.dd, ptr %i.dc, align 8, !tbaa !47
  %index.next241 = add nuw i64 %index239, 2       ; 2 uses
  %i.de = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.de, label %middle.block242, label %vector.body238, !llvm.loop !331

middle.block242:                                  ; preds = %vector.body238
  %cmp.n243 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec235
  br i1 %cmp.n243, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader271

.lr.ph.i.i.i.i.i.i.i.preheader271:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec235, %middle.block242 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader271, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.di, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader271 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.cq, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !47
  %i.dh = fdiv double %i.dg, %i.cr
  store double %i.dh, ptr %i.df, align 8, !tbaa !47
  %i.di = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.di, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !332

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block242, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dj = icmp sgt i64 %i.cx, 1
  br i1 %i.dj, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dk = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i44

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i44, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dm = icmp slt i64 %i.da, %i.co
  br i1 %i.dm, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dn = add i64 %.0.i.i.i.i.i.i.i, %i.cz
  %i.do = sub i64 %i.co, %i.dn                    ; 3 uses
  %min.iters.check220 = icmp ult i64 %i.do, 2
  br i1 %min.iters.check220, label %.lr.ph.i17.i.i.i.i.i.i.preheader270, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec222 = and i64 %i.do, -2                   ; 3 uses
  %i.dp = add i64 %i.da, %n.vec222
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %i.cr, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dq = getelementptr [8 x i8], ptr %i.cq, i64 %i.da
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph221
  %index226 = phi i64 [ 0, %vector.ph221 ], [ %index.next228, %vector.body225 ] ; 2 uses
  %i.dr = getelementptr [8 x i8], ptr %i.dq, i64 %index226 ; 2 uses
  %wide.load227 = load <2 x double>, ptr %i.dr, align 8, !tbaa !47
  %i.ds = fdiv <2 x double> %wide.load227, %broadcast.splat224
  store <2 x double> %i.ds, ptr %i.dr, align 8, !tbaa !47
  %index.next228 = add nuw i64 %index226, 2       ; 2 uses
  %i.dt = icmp eq i64 %index.next228, %n.vec222
  br i1 %i.dt, label %middle.block229, label %vector.body225, !llvm.loop !333

middle.block229:                                  ; preds = %vector.body225
  %cmp.n230 = icmp eq i64 %i.do, %n.vec222
  br i1 %cmp.n230, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader270

.lr.ph.i17.i.i.i.i.i.i.preheader270:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block229
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.da, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dp, %middle.block229 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader270, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dx, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader270 ] ; 2 uses
  %i.du = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !47
  %i.dw = fdiv double %i.dv, %i.cr
  store double %i.dw, ptr %i.du, align 8, !tbaa !47
  %i.dx = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.dx, %i.co
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !334

.lr.ph.i.i.i.i.i.i44:                             ; preds = %.lr.ph.i.i.i.i.i.i44, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i.i.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cq, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.dz = load <2 x double>, ptr %i.dy, align 16, !tbaa !69
  %i.ea = fdiv <2 x double> %i.dz, %i.dl
  store <2 x double> %i.ea, ptr %i.dy, align 16, !tbaa !69
  %i.eb = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.ec = icmp slt i64 %i.eb, %i.da
  br i1 %i.ec, label %.lr.ph.i.i.i.i.i.i44, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !335

bb.f:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.ed = icmp eq i64 %.0172, -1
  %spec.select = select i1 %i.ed, i64 %.043171, i64 %.0172
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block229, %._crit_edge.i.i.i.i.i.i, %bb.f
  %.1 = phi i64 [ %spec.select, %bb.f ], [ %.0172, %._crit_edge.i.i.i.i.i.i ], [ %.0172, %middle.block229 ], [ %.0172, %.lr.ph.i17.i.i.i.i.i.i ] ; 2 uses
  %i.ee = icmp slt i64 %.043171, %i.g
  br i1 %i.ee, label %bb.g, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.ef = load ptr, ptr %0, align 8, !tbaa !280, !noalias !336 ; 9 uses
  %i.eg = load i64, ptr %i.f, align 8, !tbaa !24, !noalias !336 ; 7 uses
  %i.eh = mul i64 %i.eg, %.043171
  %i.ei = getelementptr [8 x i8], ptr %i.ef, i64 %i.eh
  %i.ej = load i64, ptr %i.a, align 8, !tbaa !24, !noalias !336 ; 3 uses
  %sext169 = shl i64 %i.t, 32
  %i.ek = ashr exact i64 %sext169, 32             ; 8 uses
  %i.el = sub i64 %i.ej, %i.ek                    ; 2 uses
  %i.em = getelementptr [8 x i8], ptr %i.ei, i64 %i.el ; 10 uses
  %i.en = getelementptr inbounds nuw [8 x i8], ptr %i.ef, i64 %.043171
  %i.eo = load i64, ptr %i.c, align 8, !tbaa !24, !noalias !339
  %sext170 = shl i64 %i.u, 32
  %i.ep = ashr exact i64 %sext170, 32             ; 3 uses
  %i.eq = sub i64 %i.eo, %i.ep                    ; 3 uses
  %i.er = mul nsw i64 %i.eq, %i.eg                ; 2 uses
  %i.es = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.er
  %i.et = getelementptr inbounds [8 x i8], ptr %i.ef, i64 %i.el
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.et, i64 %i.er
  %i.ev = icmp sgt i64 %i.ep, 0
  br i1 %i.ev, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.ew = shl i64 %i.eg, 3
  %i.ex = mul i64 %i.ew, %i.eq
  %i.ey = shl i64 %i.ej, 3                        ; 2 uses
  %i.ez = add i64 %i.ex, %i.ey                    ; 2 uses
  %i.fa = sub i64 %i.ez, %i.q
  %scevgep = getelementptr i8, ptr %i.ef, i64 %i.fa
  %scevgep187 = getelementptr i8, ptr %i.ef, i64 %i.ez
  %i.fb = mul i64 %i.eg, %i.r
  %i.fc = add i64 %i.fb, %i.ey                    ; 2 uses
  %i.fd = sub i64 %i.fc, %i.q
  %scevgep189 = getelementptr i8, ptr %i.ef, i64 %i.fd
  %scevgep191 = getelementptr i8, ptr %i.ef, i64 %i.fc
  %i.fe = shl i64 %i.eg, 3
  %i.ff = mul i64 %i.fe, %i.eq
  %i.fg = shl i64 %i.ej, 3                        ; 2 uses
  %i.fh = add i64 %i.ff, %i.fg
  %i.fi = sub i64 %i.fh, %i.n
  %scevgep196 = getelementptr i8, ptr %i.ef, i64 %i.fi
  %i.fj = mul i64 %i.eg, %i.o
  %i.fk = add i64 %i.fj, %i.fg
  %i.fl = sub i64 %i.fk, %i.n
  %scevgep198 = getelementptr i8, ptr %i.ef, i64 %i.fl
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.jn, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.fm = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.fn = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.fo = load i64, ptr %i.f, align 8, !tbaa !24, !noalias !342 ; 3 uses
  %i.fp = mul nsw i64 %i.fo, %.029.i.i.i.i.i
  %i.fq = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.fp ; 11 uses
  %i.fr = mul nsw i64 %.029.i.i.i.i.i, %i.eg
  %i.fs = getelementptr [8 x i8], ptr %i.es, i64 %i.fr
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !47, !noalias !345 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fu = ptrtoint ptr %i.fq to i64               ; 2 uses
  %i.fv = and i64 %i.fu, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fv, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fw = lshr exact i64 %i.fu, 3
  %i.fx = and i64 %i.fw, 1
  %i.fy = tail call i64 @llvm.smin.i64(i64 %i.fx, i64 %i.ek)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fy, %bb.h ], [ %i.ek, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %i.fz = sub nsw i64 %i.ek, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ga = sdiv i64 %i.fz, 2                       ; 2 uses
  %i.gb = shl nsw i64 %i.ga, 1                    ; 2 uses
  %i.gc = add nsw i64 %i.gb, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.gd = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.gd, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check204 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check204, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269, label %vector.memcheck195

vector.memcheck195:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ge = mul i64 %i.fo, %i.fm
  %i.gf = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gg = getelementptr i8, ptr %scevgep196, i64 %i.ge
  %scevgep197 = getelementptr i8, ptr %i.gg, i64 %i.gf
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.gf
  %bound0200 = icmp ult ptr %i.fq, %scevgep199
  %bound1201 = icmp ult ptr %i.em, %scevgep197
  %found.conflict202 = and i1 %bound0200, %bound1201
  br i1 %found.conflict202, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck195
  %n.vec206 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %i.ft, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph205
  %index210 = phi i64 [ 0, %vector.ph205 ], [ %index.next215, %vector.body209 ] ; 3 uses
  %i.gh = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %index210 ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %index210 ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load211 = load <2 x double>, ptr %i.gi, align 8, !tbaa !47, !alias.scope !348
  %wide.load212 = load <2 x double>, ptr %i.gj, align 8, !tbaa !47, !alias.scope !348
  %i.gk = fmul <2 x double> %broadcast.splat208, %wide.load211
  %i.gl = fmul <2 x double> %broadcast.splat208, %wide.load212
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gh, i64 16 ; 2 uses
  %wide.load213 = load <2 x double>, ptr %i.gh, align 8, !tbaa !47, !alias.scope !351, !noalias !348
  %wide.load214 = load <2 x double>, ptr %i.gm, align 8, !tbaa !47, !alias.scope !351, !noalias !348
  %i.gn = fsub <2 x double> %wide.load213, %i.gk
  %i.go = fsub <2 x double> %wide.load214, %i.gl
  store <2 x double> %i.gn, ptr %i.gh, align 8, !tbaa !47, !alias.scope !351, !noalias !348
  store <2 x double> %i.go, ptr %i.gm, align 8, !tbaa !47, !alias.scope !351, !noalias !348
  %index.next215 = add nuw i64 %index210, 4       ; 2 uses
  %i.gp = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.gp, label %middle.block216, label %vector.body209, !llvm.loop !353

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec206
  br i1 %cmp.n217, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269:    ; preds = %vector.memcheck195, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block216
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck195 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec206, %middle.block216 ] ; 5 uses
  %.neg282 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter278 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269
  %i.gq = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !47
  %i.gt = fmul double %i.ft, %i.gs
  %i.gu = load double, ptr %i.gq, align 8, !tbaa !47
  %i.gv = fsub double %i.gu, %i.gt
  store double %i.gv, ptr %i.gq, align 8, !tbaa !47
  %i.gw = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269 ], [ %i.gw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gx = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg282
  br i1 %i.gx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hl, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gy = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !47
  %i.hb = fmul double %i.ft, %i.ha
  %i.hc = load double, ptr %i.gy, align 8, !tbaa !47
  %i.hd = fsub double %i.hc, %i.hb
  store double %i.hd, ptr %i.gy, align 8, !tbaa !47
  %i.he = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hf = getelementptr inbounds nuw [8 x i8], ptr %i.fq, i64 %i.he ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.em, i64 %i.he
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !47
  %i.hi = fmul double %i.ft, %i.hh
  %i.hj = load double, ptr %i.hf, align 8, !tbaa !47
  %i.hk = fsub double %i.hj, %i.hi
  store double %i.hk, ptr %i.hf, align 8, !tbaa !47
  %i.hl = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.hl, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !354

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block216, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hm = icmp sgt i64 %i.fz, 1
  br i1 %i.hm, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = icmp slt i64 %i.gc, %i.ek
  br i1 %i.ho, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.gb
  %i.hq = sub i64 %i.ek, %i.hp                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hq, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hr = mul i64 %i.fo, %i.fn                    ; 2 uses
  %i.hs = shl i64 %i.ga, 4                        ; 2 uses
  %i.ht = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hu = getelementptr i8, ptr %scevgep, i64 %i.hr
  %i.hv = getelementptr i8, ptr %i.hu, i64 %i.hs
  %scevgep186 = getelementptr i8, ptr %i.hv, i64 %i.ht
  %scevgep188 = getelementptr i8, ptr %scevgep187, i64 %i.hr
  %i.hw = getelementptr i8, ptr %scevgep189, i64 %i.hs
  %scevgep190 = getelementptr i8, ptr %i.hw, i64 %i.ht
  %bound0 = icmp ult ptr %scevgep186, %scevgep191
  %bound1 = icmp ult ptr %scevgep190, %scevgep188
end_hunk_0
