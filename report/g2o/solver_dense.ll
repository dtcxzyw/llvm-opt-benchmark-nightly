inline.NumInlined: 24160
inline.NumDeleted: 12008
loop-unroll.NumCompletelyUnrolled: 22
loop-unroll.NumRuntimeUnrolled: 138
loop-unroll.NumUnrolled: 160
begin_hunk_0_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.bb = add nuw i64 %.sroa.0.1.i.i.lcssa, %.043171 ; 3 uses
  %i.bc = trunc i64 %i.bb to i32
  %i.bd = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.043171
  store i32 %i.bc, ptr %i.bd, align 4, !tbaa !32
  %i.be = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.be, label %bb.c, label %bb.f

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %bb.b
  %i.bf = trunc i64 %.043171 to i32
  %i.bg = getelementptr inbounds nuw [4 x i8], ptr %1, i64 %.043171
  store i32 %i.bf, ptr %i.bg, align 4, !tbaa !32
  %i.bh = fcmp une double %i.ag, 0.000000e+00
  br i1 %i.bh, label %.thread, label %bb.f

bb.c:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %.not = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.bi = getelementptr [8 x i8], ptr %i.y, i64 %.043171 ; 5 uses
  %i.bj = load i64, ptr %i.c, align 8, !tbaa !793, !noalias !870 ; 9 uses
  %i.bk = getelementptr [8 x i8], ptr %i.y, i64 %i.bb ; 5 uses
  %i.bl = icmp sgt i64 %i.bj, 0
  br i1 %i.bl, label %.lr.ph.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader:                     ; preds = %bb.d
  %min.iters.check253 = icmp ugt i64 %i.bj, 7
  %ident.check.not = icmp eq i64 %i.z, 1
  %or.cond = and i1 %min.iters.check253, %ident.check.not
  br i1 %or.cond, label %vector.memcheck245, label %.lr.ph.i.i.i.i.i.i.preheader272

vector.memcheck245:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader
  %i.bm = shl i64 %i.bj, 3
  %i.bn = add nuw i64 %.043171, %i.bj
  %i.bo = shl i64 %i.bn, 3
  %scevgep246 = getelementptr i8, ptr %i.y, i64 %i.bo
  %scevgep247 = getelementptr i8, ptr %i.y, i64 %i.bm
  %i.bp = shl i64 %i.bb, 3
  %scevgep248 = getelementptr i8, ptr %scevgep247, i64 %i.bp
  %bound0249 = icmp ult ptr %i.bi, %scevgep248
  %bound1250 = icmp ult ptr %i.bk, %scevgep246
  %found.conflict251 = and i1 %bound0249, %bound1250
  br i1 %found.conflict251, label %.lr.ph.i.i.i.i.i.i.preheader272, label %vector.ph254

vector.ph254:                                     ; preds = %vector.memcheck245
  %n.vec255 = and i64 %i.bj, 9223372036854775804  ; 3 uses
  br label %vector.body256

vector.body256:                                   ; preds = %vector.body256, %vector.ph254
  %index257 = phi i64 [ 0, %vector.ph254 ], [ %index.next262, %vector.body256 ] ; 3 uses
  %i.bq = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %index257 ; 3 uses
  %i.br = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %index257 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.bq, i64 16 ; 2 uses
  %wide.load258 = load <2 x double>, ptr %i.bq, align 8, !tbaa !378, !alias.scope !873, !noalias !876
  %wide.load259 = load <2 x double>, ptr %i.bs, align 8, !tbaa !378, !alias.scope !873, !noalias !876
  %i.bt = getelementptr inbounds nuw i8, ptr %i.br, i64 16 ; 2 uses
  %wide.load260 = load <2 x double>, ptr %i.br, align 8, !tbaa !378, !alias.scope !876
  %wide.load261 = load <2 x double>, ptr %i.bt, align 8, !tbaa !378, !alias.scope !876
  store <2 x double> %wide.load260, ptr %i.bq, align 8, !tbaa !378, !alias.scope !873, !noalias !876
  store <2 x double> %wide.load261, ptr %i.bs, align 8, !tbaa !378, !alias.scope !873, !noalias !876
  store <2 x double> %wide.load258, ptr %i.br, align 8, !tbaa !378, !alias.scope !876
  store <2 x double> %wide.load259, ptr %i.bt, align 8, !tbaa !378, !alias.scope !876
  %index.next262 = add nuw i64 %index257, 4       ; 2 uses
  %i.bu = icmp eq i64 %index.next262, %n.vec255
  br i1 %i.bu, label %middle.block263, label %vector.body256, !llvm.loop !878

middle.block263:                                  ; preds = %vector.body256
  %cmp.n264 = icmp eq i64 %i.bj, %n.vec255
  br i1 %cmp.n264, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader272

.lr.ph.i.i.i.i.i.i.preheader272:                  ; preds = %vector.memcheck245, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block263
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck245 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec255, %middle.block263 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter276 = and i64 %i.bj, 1
  %lcmp.mod277.not = icmp eq i64 %xtraiter276, 0
  br i1 %lcmp.mod277.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader272
  %i.bv = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.z   ; 2 uses
  %i.bw = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.bv ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.bv ; 2 uses
  %i.by = load double, ptr %i.bw, align 8, !tbaa !378
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !378
  store double %i.bz, ptr %i.bw, align 8, !tbaa !378
  store double %i.by, ptr %i.bx, align 8, !tbaa !378
  %i.ca = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader272
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader272 ], [ %i.ca, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cb = icmp eq i64 %i.bj, %.neg
  br i1 %i.cb, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.cn, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.cc = mul nsw i64 %.05.i.i.i.i.i.i, %i.z      ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.cc ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.cc ; 2 uses
  %i.cf = load double, ptr %i.cd, align 8, !tbaa !378
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !378
  store double %i.cg, ptr %i.cd, align 8, !tbaa !378
  store double %i.cf, ptr %i.ce, align 8, !tbaa !378
  %i.ch = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.ci = mul nsw i64 %i.ch, %i.z                 ; 2 uses
  %i.cj = getelementptr inbounds [8 x i8], ptr %i.bi, i64 %i.ci ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bk, i64 %i.ci ; 2 uses
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !378
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !378
  store double %i.cm, ptr %i.cj, align 8, !tbaa !378
  store double %i.cl, ptr %i.ck, align 8, !tbaa !378
  %i.cn = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.cn, %i.bj
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !879

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block263, %bb.d
  %i.co = load i32, ptr %2, align 4, !tbaa !32
  %i.cp = add nsw i32 %i.co, 1
  store i32 %i.cp, ptr %2, align 4, !tbaa !32
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.cq = getelementptr [8 x i8], ptr %i.ab, i64 %.043171
  %sext = shl i64 %i.w, 32
  %i.cr = ashr exact i64 %sext, 32                ; 7 uses
  %i.cs = sub nsw i64 %i.ac, %i.cr
  %i.ct = getelementptr inbounds [8 x i8], ptr %i.ab, i64 %i.cs ; 6 uses
  %i.cu = load double, ptr %i.cq, align 8, !tbaa !378, !noalias !880 ; 5 uses
  %i.cv = ptrtoint ptr %i.ct to i64               ; 2 uses
  %i.cw = and i64 %i.cv, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cw, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.thread
  %i.cx = lshr exact i64 %i.cv, 3
  %i.cy = and i64 %i.cx, 1
  %i.cz = tail call i64 @llvm.smin.i64(i64 %i.cy, i64 %i.cr)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.thread
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.cz, %bb.e ], [ %i.cr, %.thread ] ; 9 uses
  %i.da = sub nsw i64 %i.cr, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.db = sdiv i64 %i.da, 2                       ; 2 uses
  %i.dc = shl nsw i64 %i.db, 1
  %i.dd = add nsw i64 %i.dc, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.de = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.de, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check233 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check233, label %.lr.ph.i.i.i.i.i.i.i.preheader271, label %vector.ph234

vector.ph234:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec235 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert236 = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat237 = shufflevector <2 x double> %broadcast.splatinsert236, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body238

vector.body238:                                   ; preds = %vector.body238, %vector.ph234
  %index239 = phi i64 [ 0, %vector.ph234 ], [ %index.next241, %vector.body238 ] ; 2 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %index239 ; 2 uses
  %wide.load240 = load <2 x double>, ptr %i.df, align 8, !tbaa !378
  %i.dg = fdiv <2 x double> %wide.load240, %broadcast.splat237
  store <2 x double> %i.dg, ptr %i.df, align 8, !tbaa !378
  %index.next241 = add nuw i64 %index239, 2       ; 2 uses
  %i.dh = icmp eq i64 %index.next241, %n.vec235
  br i1 %i.dh, label %middle.block242, label %vector.body238, !llvm.loop !883

middle.block242:                                  ; preds = %vector.body238
  %cmp.n243 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec235
  br i1 %cmp.n243, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader271

.lr.ph.i.i.i.i.i.i.i.preheader271:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block242
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec235, %middle.block242 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader271, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dl, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader271 ] ; 2 uses
  %i.di = getelementptr inbounds nuw [8 x i8], ptr %i.ct, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !378
  %i.dk = fdiv double %i.dj, %i.cu
  store double %i.dk, ptr %i.di, align 8, !tbaa !378
  %i.dl = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.dl, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !884

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block242, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dm = icmp sgt i64 %i.da, 1
  br i1 %i.dm, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dn = insertelement <2 x double> poison, double %i.cu, i64 0
  %i.do = shufflevector <2 x double> %i.dn, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i44

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i44, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dp = icmp slt i64 %i.dd, %i.cr
  br i1 %i.dp, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %3 = shl nsw i64 %i.db, 1
  %4 = add i64 %.0.i.i.i.i.i.i.i, %3
  %5 = sub i64 %i.cr, %4                          ; 3 uses
  %min.iters.check220 = icmp ult i64 %5, 2
  br i1 %min.iters.check220, label %.lr.ph.i17.i.i.i.i.i.i.preheader270, label %vector.ph221

vector.ph221:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec222 = and i64 %5, -2                      ; 3 uses
  %i.dq = add i64 %i.dd, %n.vec222
  %broadcast.splatinsert223 = insertelement <2 x double> poison, double %i.cu, i64 0
  %broadcast.splat224 = shufflevector <2 x double> %broadcast.splatinsert223, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = getelementptr [8 x i8], ptr %i.ct, i64 %i.dd
  br label %vector.body225

vector.body225:                                   ; preds = %vector.body225, %vector.ph221
  %index226 = phi i64 [ 0, %vector.ph221 ], [ %index.next228, %vector.body225 ] ; 2 uses
  %i.ds = getelementptr [8 x i8], ptr %i.dr, i64 %index226 ; 2 uses
  %wide.load227 = load <2 x double>, ptr %i.ds, align 8, !tbaa !378
  %i.dt = fdiv <2 x double> %wide.load227, %broadcast.splat224
  store <2 x double> %i.dt, ptr %i.ds, align 8, !tbaa !378
  %index.next228 = add nuw i64 %index226, 2       ; 2 uses
  %i.du = icmp eq i64 %index.next228, %n.vec222
  br i1 %i.du, label %middle.block229, label %vector.body225, !llvm.loop !885

middle.block229:                                  ; preds = %vector.body225
  %cmp.n230 = icmp eq i64 %5, %n.vec222
  br i1 %cmp.n230, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader270

.lr.ph.i17.i.i.i.i.i.i.preheader270:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block229
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.dd, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dq, %middle.block229 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader270, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.dy, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader270 ] ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dw = load double, ptr %i.dv, align 8, !tbaa !378
  %i.dx = fdiv double %i.dw, %i.cu
  store double %i.dx, ptr %i.dv, align 8, !tbaa !378
  %i.dy = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.dy, %i.cr
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !886

.lr.ph.i.i.i.i.i.i44:                             ; preds = %.lr.ph.i.i.i.i.i.i44, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ec, %.lr.ph.i.i.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.dz = getelementptr inbounds [8 x i8], ptr %i.ct, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ea = load <2 x double>, ptr %i.dz, align 16, !tbaa !17
  %i.eb = fdiv <2 x double> %i.ea, %i.do
  store <2 x double> %i.eb, ptr %i.dz, align 16, !tbaa !17
  %i.ec = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.ed = icmp slt i64 %i.ec, %i.dd
  br i1 %i.ed, label %.lr.ph.i.i.i.i.i.i44, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !887

bb.f:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.ee = icmp eq i64 %.0172, -1
  %spec.select = select i1 %i.ee, i64 %.043171, i64 %.0172
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block229, %._crit_edge.i.i.i.i.i.i, %bb.f
  %.1 = phi i64 [ %spec.select, %bb.f ], [ %.0172, %._crit_edge.i.i.i.i.i.i ], [ %.0172, %middle.block229 ], [ %.0172, %.lr.ph.i17.i.i.i.i.i.i ] ; 2 uses
  %i.ef = icmp slt i64 %.043171, %i.g
  br i1 %i.ef, label %bb.g, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.eg = load ptr, ptr %0, align 8, !tbaa !831, !noalias !888 ; 9 uses
  %i.eh = load i64, ptr %i.f, align 8, !tbaa !793, !noalias !888 ; 7 uses
  %i.ei = mul i64 %i.eh, %.043171
  %i.ej = getelementptr [8 x i8], ptr %i.eg, i64 %i.ei
  %i.ek = load i64, ptr %i.a, align 8, !tbaa !793, !noalias !888 ; 3 uses
  %sext169 = shl i64 %i.w, 32
  %i.el = ashr exact i64 %sext169, 32             ; 7 uses
  %i.em = sub i64 %i.ek, %i.el                    ; 2 uses
  %i.en = getelementptr [8 x i8], ptr %i.ej, i64 %i.em ; 10 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.eg, i64 %.043171
  %i.ep = load i64, ptr %i.c, align 8, !tbaa !793, !noalias !891
  %sext170 = shl i64 %i.x, 32
  %i.eq = ashr exact i64 %sext170, 32             ; 3 uses
  %i.er = sub i64 %i.ep, %i.eq                    ; 3 uses
  %i.es = mul nsw i64 %i.er, %i.eh                ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %i.eo, i64 %i.es
  %i.eu = getelementptr inbounds [8 x i8], ptr %i.eg, i64 %i.em
  %i.ev = getelementptr inbounds [8 x i8], ptr %i.eu, i64 %i.es
  %i.ew = icmp sgt i64 %i.eq, 0
  br i1 %i.ew, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.ex = shl i64 %i.eh, 3
  %i.ey = mul i64 %i.ex, %i.er
  %i.ez = shl i64 %i.ek, 3                        ; 2 uses
  %i.fa = add i64 %i.ey, %i.ez                    ; 2 uses
  %i.fb = sub i64 %i.fa, %i.t
  %scevgep = getelementptr i8, ptr %i.eg, i64 %i.fb
  %scevgep187 = getelementptr i8, ptr %i.eg, i64 %i.fa
  %i.fc = mul i64 %i.eh, %i.u
  %i.fd = add i64 %i.fc, %i.ez                    ; 2 uses
  %i.fe = sub i64 %i.fd, %i.t
  %scevgep189 = getelementptr i8, ptr %i.eg, i64 %i.fe
  %scevgep191 = getelementptr i8, ptr %i.eg, i64 %i.fd
  %i.ff = shl i64 %i.eh, 3
  %i.fg = mul i64 %i.ff, %i.er
  %i.fh = shl i64 %i.ek, 3                        ; 2 uses
  %i.fi = add i64 %i.fg, %i.fh
  %i.fj = sub i64 %i.fi, %i.q
  %scevgep196 = getelementptr i8, ptr %i.eg, i64 %i.fj
  %i.fk = mul i64 %i.eh, %i.r
  %i.fl = add i64 %i.fk, %i.fh
  %i.fm = sub i64 %i.fl, %i.q
  %scevgep198 = getelementptr i8, ptr %i.eg, i64 %i.fm
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.jm, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.fn = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.fo = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.fp = load i64, ptr %i.f, align 8, !tbaa !793, !noalias !894 ; 3 uses
  %i.fq = mul nsw i64 %i.fp, %.029.i.i.i.i.i
  %i.fr = getelementptr inbounds [8 x i8], ptr %i.ev, i64 %i.fq ; 11 uses
  %i.fs = mul nsw i64 %.029.i.i.i.i.i, %i.eh
  %i.ft = getelementptr [8 x i8], ptr %i.et, i64 %i.fs
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !378, !noalias !897 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.fv = ptrtoint ptr %i.fr to i64               ; 2 uses
  %i.fw = and i64 %i.fv, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fw, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fx = lshr exact i64 %i.fv, 3
  %i.fy = and i64 %i.fx, 1
  %i.fz = tail call i64 @llvm.smin.i64(i64 %i.fy, i64 %i.el)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fz, %bb.h ], [ %i.el, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %i.ga = sub nsw i64 %i.el, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gb = sdiv i64 %i.ga, 2                       ; 3 uses
  %i.gc = shl nsw i64 %i.gb, 1
  %i.gd = add nsw i64 %i.gc, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.ge = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.ge, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check204 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %min.iters.check204, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269, label %vector.memcheck195

vector.memcheck195:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.gf = mul i64 %i.fp, %i.fn
  %i.gg = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gh = getelementptr i8, ptr %scevgep196, i64 %i.gf
  %scevgep197 = getelementptr i8, ptr %i.gh, i64 %i.gg
  %scevgep199 = getelementptr i8, ptr %scevgep198, i64 %i.gg
  %bound0200 = icmp ult ptr %i.fr, %scevgep199
  %bound1201 = icmp ult ptr %i.en, %scevgep197
  %found.conflict202 = and i1 %bound0200, %bound1201
  br i1 %found.conflict202, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269, label %vector.ph205

vector.ph205:                                     ; preds = %vector.memcheck195
  %n.vec206 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert207 = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat208 = shufflevector <2 x double> %broadcast.splatinsert207, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body209

vector.body209:                                   ; preds = %vector.body209, %vector.ph205
  %index210 = phi i64 [ 0, %vector.ph205 ], [ %index.next215, %vector.body209 ] ; 3 uses
  %i.gi = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %index210 ; 3 uses
  %i.gj = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index210 ; 2 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gj, i64 16
  %wide.load211 = load <2 x double>, ptr %i.gj, align 8, !tbaa !378, !alias.scope !900
  %wide.load212 = load <2 x double>, ptr %i.gk, align 8, !tbaa !378, !alias.scope !900
  %i.gl = fmul <2 x double> %broadcast.splat208, %wide.load211
  %i.gm = fmul <2 x double> %broadcast.splat208, %wide.load212
  %i.gn = getelementptr inbounds nuw i8, ptr %i.gi, i64 16 ; 2 uses
  %wide.load213 = load <2 x double>, ptr %i.gi, align 8, !tbaa !378, !alias.scope !903, !noalias !900
  %wide.load214 = load <2 x double>, ptr %i.gn, align 8, !tbaa !378, !alias.scope !903, !noalias !900
  %i.go = fsub <2 x double> %wide.load213, %i.gl
  %i.gp = fsub <2 x double> %wide.load214, %i.gm
  store <2 x double> %i.go, ptr %i.gi, align 8, !tbaa !378, !alias.scope !903, !noalias !900
  store <2 x double> %i.gp, ptr %i.gn, align 8, !tbaa !378, !alias.scope !903, !noalias !900
  %index.next215 = add nuw i64 %index210, 4       ; 2 uses
  %i.gq = icmp eq i64 %index.next215, %n.vec206
  br i1 %i.gq, label %middle.block216, label %vector.body209, !llvm.loop !905

middle.block216:                                  ; preds = %vector.body209
  %cmp.n217 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec206
  br i1 %cmp.n217, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269:    ; preds = %vector.memcheck195, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block216
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck195 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec206, %middle.block216 ] ; 5 uses
  %.neg283 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter278 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod279.not = icmp eq i64 %xtraiter278, 0
  br i1 %lcmp.mod279.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269
  %i.gr = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !378
  %i.gu = fmul double %i.fu, %i.gt
  %i.gv = load double, ptr %i.gr, align 8, !tbaa !378
  %i.gw = fsub double %i.gv, %i.gu
  store double %i.gw, ptr %i.gr, align 8, !tbaa !378
  %i.gx = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader269 ], [ %i.gx, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gy = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg283
  br i1 %i.gy, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gz = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ha = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !378
  %i.hc = fmul double %i.fu, %i.hb
  %i.hd = load double, ptr %i.gz, align 8, !tbaa !378
  %i.he = fsub double %i.hd, %i.hc
  store double %i.he, ptr %i.gz, align 8, !tbaa !378
  %i.hf = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hg = getelementptr inbounds nuw [8 x i8], ptr %i.fr, i64 %i.hf ; 2 uses
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %i.hf
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !378
  %i.hj = fmul double %i.fu, %i.hi
  %i.hk = load double, ptr %i.hg, align 8, !tbaa !378
  %i.hl = fsub double %i.hk, %i.hj
  store double %i.hl, ptr %i.hg, align 8, !tbaa !378
  %i.hm = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.hm, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !906

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block216, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hn = icmp sgt i64 %i.ga, 1
  br i1 %i.hn, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ho = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hp = icmp slt i64 %i.gd, %i.el
  br i1 %i.hp, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %6 = shl nsw i64 %i.gb, 1
  %7 = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %6
  %8 = sub i64 %i.el, %7                          ; 3 uses
  %min.iters.check = icmp ult i64 %8, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hq = mul i64 %i.fp, %i.fo                    ; 2 uses
  %i.hr = shl i64 %i.gb, 4                        ; 2 uses
  %i.hs = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ht = getelementptr i8, ptr %scevgep, i64 %i.hq
  %i.hu = getelementptr i8, ptr %i.ht, i64 %i.hr
  %scevgep186 = getelementptr i8, ptr %i.hu, i64 %i.hs
  %scevgep188 = getelementptr i8, ptr %scevgep187, i64 %i.hq
  %i.hv = getelementptr i8, ptr %scevgep189, i64 %i.hr
  %scevgep190 = getelementptr i8, ptr %i.hv, i64 %i.hs
  %bound0 = icmp ult ptr %scevgep186, %scevgep191
  %bound1 = icmp ult ptr %scevgep190, %scevgep188
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %8, -4                         ; 3 uses
  %i.hw = add i64 %i.gd, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fu, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hx = add i64 %i.gd, %index                   ; 2 uses
  %i.hy = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.hx ; 3 uses
  %i.hz = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.hx ; 2 uses
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hz, i64 16
  %wide.load = load <2 x double>, ptr %i.hz, align 8, !tbaa !378, !alias.scope !907
  %wide.load192 = load <2 x double>, ptr %i.ia, align 8, !tbaa !378, !alias.scope !907
  %i.ib = fmul <2 x double> %broadcast.splat, %wide.load
  %i.ic = fmul <2 x double> %broadcast.splat, %wide.load192
  %i.id = getelementptr inbounds nuw i8, ptr %i.hy, i64 16 ; 2 uses
  %wide.load193 = load <2 x double>, ptr %i.hy, align 8, !tbaa !378, !alias.scope !910, !noalias !907
  %wide.load194 = load <2 x double>, ptr %i.id, align 8, !tbaa !378, !alias.scope !910, !noalias !907
  %i.ie = fsub <2 x double> %wide.load193, %i.ib
  %i.if = fsub <2 x double> %wide.load194, %i.ic
  store <2 x double> %i.ie, ptr %i.hy, align 8, !tbaa !378, !alias.scope !910, !noalias !907
  store <2 x double> %i.if, ptr %i.id, align 8, !tbaa !378, !alias.scope !910, !noalias !907
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.ig = icmp eq i64 %index.next, %n.vec
  br i1 %i.ig, label %middle.block, label %vector.body, !llvm.loop !912

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %8, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.gd, %vector.memcheck ], [ %i.gd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.hw, %middle.block ] ; 6 uses
  %i.ih = sub i64 %i.l, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg284 = add i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter280 = and i64 %i.ih, 1
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268
  %i.ii = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ik = load double, ptr %i.ij, align 8, !tbaa !378
  %i.il = fmul double %i.fu, %i.ik
  %i.im = load double, ptr %i.ii, align 8, !tbaa !378
  %i.in = fsub double %i.im, %i.il
  store double %i.in, ptr %i.ii, align 8, !tbaa !378
  %i.io = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader268 ], [ %i.io, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.ip = icmp eq i64 %i.m, %.neg284
  br i1 %i.ip, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jd, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.iq = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.ir = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.is = load double, ptr %i.ir, align 8, !tbaa !378
  %i.it = fmul double %i.fu, %i.is
  %i.iu = load double, ptr %i.iq, align 8, !tbaa !378
  %i.iv = fsub double %i.iu, %i.it
  store double %i.iv, ptr %i.iq, align 8, !tbaa !378
  %i.iw = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %i.iw ; 2 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.en, i64 %i.iw
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !378
  %i.ja = fmul double %i.fu, %i.iz
  %i.jb = load double, ptr %i.ix, align 8, !tbaa !378
  %i.jc = fsub double %i.jb, %i.ja
  store double %i.jc, ptr %i.ix, align 8, !tbaa !378
  %i.jd = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.jd, %i.el
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !913

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jk, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.je = getelementptr inbounds [8 x i8], ptr %i.fr, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.en, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jg = load <2 x double>, ptr %i.jf, align 1, !tbaa !17
  %i.jh = fmul <2 x double> %i.ho, %i.jg
  %i.ji = load <2 x double>, ptr %i.je, align 16, !tbaa !17
  %i.jj = fsub <2 x double> %i.ji, %i.jh
  store <2 x double> %i.jj, ptr %i.je, align 16, !tbaa !17
  %i.jk = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.jl = icmp slt i64 %i.jk, %i.gd
  br i1 %i.jl, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !914

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jm = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.jm, %i.eq
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !915

_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %bb.g, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.jn = add nuw nsw i64 %.043171, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.jn, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !916
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !793  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.d, align 8, !tbaa !793  ; 2 uses
  %i.i = load <2 x i64>, ptr %i.e, align 8, !tbaa !793
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !16
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !917
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.h, ptr %i.a, align 8, !tbaa !16
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.k = load i64, ptr %i.f, align 8, !tbaa !919
  %i.l = load i64, ptr %i.j, align 8, !tbaa !917  ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !920
  %i.o = load i64, ptr %i.g, align 8, !tbaa !922
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !923
  %i.r = load ptr, ptr %0, align 8, !tbaa !831
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !793
  %i.u = load ptr, ptr %1, align 8, !tbaa !831
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !793
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.h, ptr noundef nonnull %i.r, i64 noundef %i.t, ptr noundef nonnull %i.u, i64 noundef 1, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %2, align 8, !tbaa !924
  call void @free(ptr noundef %i.x) #35
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !925
  call void @free(ptr noundef %i.z) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !924
  call void @free(ptr noundef %i.ab) #35
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !925
  call void @free(ptr noundef %i.ad) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #25 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.505", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !917  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !919
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169
end_hunk_0
begin_hunk_1_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  %i.ce = sext i32 %i.cc to i64
  %i.cf = getelementptr [4 x i8], ptr %i.cd, i64 %i.ce ; 2 uses
  %i.cg = getelementptr i8, ptr %i.cf, i64 -4
  %i.ch = load i32, ptr %i.cg, align 4, !tbaa !32 ; 2 uses
  %i.ci = load i32, ptr %i.cf, align 4, !tbaa !32
  %i.cj = sub nsw i32 %i.ci, %i.ch
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit
  %i.ck = load ptr, ptr %1, align 8, !tbaa !456
  %i.cl = load i32, ptr %i.ck, align 4, !tbaa !32
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.cm = phi i32 [ %i.ch, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cn = phi i32 [ %i.cj, %bb.l ], [ %i.cl, %bb.m ] ; 5 uses
  %i.co = getelementptr inbounds nuw i8, ptr %.sroa.059.0100, i64 40 ; 2 uses
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !374 ; 2 uses
  %i.cq = sext i32 %i.cm to i64                   ; 5 uses
  %i.cr = sext i32 %i.cn to i64                   ; 14 uses
  %i.cs = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !1444 ; 3 uses
  %i.ct = ptrtoaddr ptr %i.cs to i64
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.cs, i64 %i.cq
  %i.cv = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !1444 ; 10 uses
  %i.cw = mul nsw i64 %i.cv, %i.bq
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %i.cw ; 6 uses
  %i.cy = load ptr, ptr %i.cp, align 8, !tbaa !365 ; 7 uses
  %i.cz = ptrtoaddr ptr %i.cy to i64
  %i.da = getelementptr inbounds nuw i8, ptr %i.cp, i64 8
  %i.db = load i64, ptr %i.da, align 8, !tbaa !376 ; 7 uses
  %i.dc = ptrtoint ptr %i.cx to i64               ; 2 uses
  %i.dd = and i64 %i.dc, 7
  %.not.i52 = icmp eq i64 %i.dd, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit
  %i.de = icmp sgt i32 %i.cn, 0
  %or.cond = select i1 %i.bs, i1 %i.de, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.df = mul i64 %i.bx, %i.cv
  %i.dg = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.dh = shl nsw i64 %i.cq, 3
  %i.di = getelementptr i8, ptr %i.cs, i64 %i.df
  %i.dj = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep152 = getelementptr i8, ptr %i.dj, i64 %i.dh
  %i.dk = mul i64 %i.bz, %i.db
  %i.dl = getelementptr i8, ptr %i.cy, i64 %i.dk
  %scevgep153 = getelementptr i8, ptr %i.dl, i64 %i.dg
  %min.iters.check160 = icmp ult i32 %i.cn, 8
  %bound0154 = icmp ult ptr %i.cx, %scevgep153
  %bound1155 = icmp ult ptr %i.cy, %scevgep152
  %found.conflict156 = and i1 %bound0154, %bound1155
  %i.dm = or i64 %i.db, %i.cv
  %i.dn = and i64 %i.dm, 1152921504606846976
  %i.do = icmp ne i64 %i.dn, 0
  %i.dp = or i1 %found.conflict156, %i.do
  %n.vec162 = and i64 %i.cr, 2147483644           ; 3 uses
  %cmp.n169 = icmp eq i64 %n.vec162, %i.cr
  %xtraiter = and i64 %i.cr, 3
  %i.dq = and i32 %i.cn, 3
  %lcmp.mod.not = icmp eq i32 %i.dq, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.ee, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dr = mul nsw i64 %.0810.i.i, %i.cv
  %i.ds = getelementptr [8 x i8], ptr %i.cx, i64 %i.dr ; 6 uses
  %i.dt = mul nsw i64 %.0810.i.i, %i.db
  %invariant.gep.i.i = getelementptr [8 x i8], ptr %i.cy, i64 %i.dt ; 6 uses
  %brmerge = select i1 %min.iters.check160, i1 true, i1 %i.dp
  br i1 %brmerge, label %scalar.ph159.preheader, label %vector.body163

vector.body163:                                   ; preds = %.preheader.i.i, %vector.body163
  %index164 = phi i64 [ %index.next167, %vector.body163 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.du = getelementptr [8 x i8], ptr %i.ds, i64 %index164 ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index164 ; 2 uses
  %i.dw = getelementptr i8, ptr %i.dv, i64 16
  %wide.load165 = load <2 x double>, ptr %i.dv, align 8, !tbaa !378, !alias.scope !1447
  %wide.load166 = load <2 x double>, ptr %i.dw, align 8, !tbaa !378, !alias.scope !1447
  %i.dx = getelementptr i8, ptr %i.du, i64 16
  store <2 x double> %wide.load165, ptr %i.du, align 8, !tbaa !378, !alias.scope !1450, !noalias !1447
  store <2 x double> %wide.load166, ptr %i.dx, align 8, !tbaa !378, !alias.scope !1450, !noalias !1447
  %index.next167 = add nuw i64 %index164, 4       ; 2 uses
  %i.dy = icmp eq i64 %index.next167, %n.vec162
  br i1 %i.dy, label %middle.block168, label %vector.body163, !llvm.loop !1452

middle.block168:                                  ; preds = %vector.body163
  br i1 %cmp.n169, label %._crit_edge.i.i, label %scalar.ph159.preheader

scalar.ph159.preheader:                           ; preds = %.preheader.i.i, %middle.block168
  %.09.i.i.ph = phi i64 [ %n.vec162, %middle.block168 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol

scalar.ph159.prol:                                ; preds = %scalar.ph159.preheader, %scalar.ph159.prol
  %.09.i.i.prol = phi i64 [ %i.eb, %scalar.ph159.prol ], [ %.09.i.i.ph, %scalar.ph159.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph159.prol ], [ 0, %scalar.ph159.preheader ]
  %i.dz = getelementptr [8 x i8], ptr %i.ds, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.ea = load double, ptr %gep.i.i.prol, align 8, !tbaa !378
  store double %i.ea, ptr %i.dz, align 8, !tbaa !378
  %i.eb = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph159.prol.loopexit, label %scalar.ph159.prol, !llvm.loop !1453

scalar.ph159.prol.loopexit:                       ; preds = %scalar.ph159.prol, %scalar.ph159.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph159.preheader ], [ %i.eb, %scalar.ph159.prol ]
  %i.ec = sub nsw i64 %.09.i.i.ph, %i.cr
  %i.ed = icmp ugt i64 %i.ec, -4
  br i1 %i.ed, label %._crit_edge.i.i, label %scalar.ph159

._crit_edge.i.i:                                  ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159, %middle.block168
  %i.ee = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.ee, %i.br
  br i1 %exitcond13.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, label %.preheader.i.i, !llvm.loop !1454

scalar.ph159:                                     ; preds = %scalar.ph159.prol.loopexit, %scalar.ph159
  %.09.i.i = phi i64 [ %i.eq, %scalar.ph159 ], [ %.09.i.i.unr, %scalar.ph159.prol.loopexit ] ; 6 uses
  %i.ef = getelementptr [8 x i8], ptr %i.ds, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.eg = load double, ptr %gep.i.i, align 8, !tbaa !378
  store double %i.eg, ptr %i.ef, align 8, !tbaa !378
  %i.eh = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.ei = getelementptr [8 x i8], ptr %i.ds, i64 %i.eh
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eh
  %i.ej = load double, ptr %gep.i.i.1, align 8, !tbaa !378
  store double %i.ej, ptr %i.ei, align 8, !tbaa !378
  %i.ek = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.el = getelementptr [8 x i8], ptr %i.ds, i64 %i.ek
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ek
  %i.em = load double, ptr %gep.i.i.2, align 8, !tbaa !378
  store double %i.em, ptr %i.el, align 8, !tbaa !378
  %i.en = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eo = getelementptr [8 x i8], ptr %i.ds, i64 %i.en
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.en
  %i.ep = load double, ptr %gep.i.i.3, align 8, !tbaa !378
  store double %i.ep, ptr %i.eo, align 8, !tbaa !378
  %i.eq = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.eq, %i.cr
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph159, !llvm.loop !1455

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11rowsOfBlockEi.exit
  %i.er = and i64 %i.cv, 1
  br i1 %i.bs, label %.lr.ph54.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit

.lr.ph54.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.es = lshr exact i64 %i.dc, 3
  %i.et = and i64 %i.es, 1
  %i.eu = tail call i64 @llvm.smin.i64(i64 %i.et, i64 %i.cr)
  %i.ev = mul i64 %i.bv, %i.cv
  %i.ew = add i64 %i.ev, %i.ct
  %i.ex = shl nsw i64 %i.cq, 3
  %i.ey = add i64 %i.ew, %i.ex
  %i.ez = sub i64 %i.ey, %i.cz
  %i.fa = sub i64 %i.cv, %i.db
  %i.fb = shl i64 %i.fa, 3
  %invariant.op = add i64 %i.ez, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph54.i
  %.03453.i = phi i64 [ 0, %.lr.ph54.i ], [ %i.gh, %._crit_edge.i ] ; 8 uses
  %.03552.i = phi i64 [ %i.eu, %.lr.ph54.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.fc = mul i64 %i.fb, %.03453.i
  %i.fd = sub i64 %i.cr, %.03552.i                ; 3 uses
  %i.fe = and i64 %i.fd, -2
  %i.ff = add nsw i64 %i.fe, %.03552.i            ; 5 uses
  %i.fg = icmp sgt i64 %.03552.i, 0
  br i1 %i.fg, label %.preheader43.loopexit.i, label %.preheader43.i

.preheader43.loopexit.i:                          ; preds = %bb.o
  %i.fh = mul nsw i64 %.03453.i, %i.db
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.cy, i64 %i.fh
  %i.fi = mul nsw i64 %.03453.i, %i.cv
  %i.fj = getelementptr [8 x i8], ptr %i.cx, i64 %i.fi
  %i.fk = load double, ptr %invariant.gep.i, align 8, !tbaa !378
  store double %i.fk, ptr %i.fj, align 8, !tbaa !378
  br label %.preheader43.i

.preheader43.i:                                   ; preds = %.preheader43.loopexit.i, %bb.o
  %i.fl = icmp sgt i64 %i.fd, 1
  br i1 %i.fl, label %.lr.ph47.i.preheader, label %.preheader.i

.lr.ph47.i.preheader:                             ; preds = %.preheader43.i
  %i.fm = mul nsw i64 %.03453.i, %i.cv
  %i.fn = getelementptr [8 x i8], ptr %i.cx, i64 %i.fm
  %i.fo = mul nsw i64 %.03453.i, %i.db
  %invariant.gep = getelementptr [8 x i8], ptr %i.cy, i64 %i.fo
  br label %.lr.ph47.i

.preheader.i:                                     ; preds = %.lr.ph47.i, %.preheader43.i
  %i.fp = icmp slt i64 %i.ff, %i.cr
  br i1 %i.fp, label %.lr.ph49.i, label %._crit_edge.i

.lr.ph49.i:                                       ; preds = %.preheader.i
  %i.fq = mul nsw i64 %.03453.i, %i.cv
  %i.fr = getelementptr [8 x i8], ptr %i.cx, i64 %i.fq ; 2 uses
  %i.fs = mul nsw i64 %.03453.i, %i.db
  %invariant.gep50.i = getelementptr [8 x i8], ptr %i.cy, i64 %i.fs ; 2 uses
  %6 = and i64 %i.fd, -2
  %7 = add i64 %.03552.i, %6
  %i.ft = sub i64 %i.cr, %7                       ; 3 uses
  %min.iters.check140 = icmp ult i64 %i.ft, 4
  %.reass = add i64 %i.fc, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond172 = select i1 %min.iters.check140, i1 true, i1 %diff.check
  br i1 %or.cond172, label %scalar.ph139.preheader, label %vector.ph141

vector.ph141:                                     ; preds = %.lr.ph49.i
  %n.vec142 = and i64 %i.ft, -4                   ; 3 uses
  %i.fu = add i64 %i.ff, %n.vec142
  br label %vector.body143

vector.body143:                                   ; preds = %vector.body143, %vector.ph141
  %index144 = phi i64 [ 0, %vector.ph141 ], [ %index.next147, %vector.body143 ] ; 2 uses
  %i.fv = add i64 %i.ff, %index144                ; 2 uses
  %i.fw = getelementptr [8 x i8], ptr %i.fr, i64 %i.fv ; 2 uses
  %i.fx = getelementptr [8 x i8], ptr %invariant.gep50.i, i64 %i.fv ; 2 uses
  %i.fy = getelementptr i8, ptr %i.fx, i64 16
  %wide.load145 = load <2 x double>, ptr %i.fx, align 8, !tbaa !378
  %wide.load146 = load <2 x double>, ptr %i.fy, align 8, !tbaa !378
  %i.fz = getelementptr i8, ptr %i.fw, i64 16
  store <2 x double> %wide.load145, ptr %i.fw, align 8, !tbaa !378
  store <2 x double> %wide.load146, ptr %i.fz, align 8, !tbaa !378
  %index.next147 = add nuw i64 %index144, 4       ; 2 uses
  %i.ga = icmp eq i64 %index.next147, %n.vec142
  br i1 %i.ga, label %middle.block148, label %vector.body143, !llvm.loop !1456

middle.block148:                                  ; preds = %vector.body143
  %cmp.n149 = icmp eq i64 %i.ft, %n.vec142
  br i1 %cmp.n149, label %._crit_edge.i, label %scalar.ph139.preheader

scalar.ph139.preheader:                           ; preds = %.lr.ph49.i, %middle.block148
  %.048.i.ph = phi i64 [ %i.ff, %.lr.ph49.i ], [ %i.fu, %middle.block148 ]
  br label %scalar.ph139

.lr.ph47.i:                                       ; preds = %.lr.ph47.i.preheader, %.lr.ph47.i
  %.03246.i = phi i64 [ %i.gd, %.lr.ph47.i ], [ %.03552.i, %.lr.ph47.i.preheader ] ; 3 uses
  %i.gb = getelementptr [8 x i8], ptr %i.fn, i64 %.03246.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03246.i
  %i.gc = load <2 x double>, ptr %gep, align 1, !tbaa !17
  store <2 x double> %i.gc, ptr %i.gb, align 16, !tbaa !17
  %i.gd = add nsw i64 %.03246.i, 2                ; 2 uses
  %i.ge = icmp slt i64 %i.gd, %i.ff
  br i1 %i.ge, label %.lr.ph47.i, label %.preheader.i, !llvm.loop !1457

._crit_edge.i:                                    ; preds = %scalar.ph139, %middle.block148, %.preheader.i
  %i.gf = add nsw i64 %.03552.i, %i.er
  %i.gg = srem i64 %i.gf, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cr, i64 %i.gg)
  %i.gh = add nuw nsw i64 %.03453.i, 1            ; 2 uses
  %exitcond58.not.i = icmp eq i64 %i.gh, %i.br
  br i1 %exitcond58.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, label %bb.o, !llvm.loop !1458

scalar.ph139:                                     ; preds = %scalar.ph139.preheader, %scalar.ph139
  %.048.i = phi i64 [ %i.gk, %scalar.ph139 ], [ %.048.i.ph, %scalar.ph139.preheader ] ; 3 uses
  %i.gi = getelementptr [8 x i8], ptr %i.fr, i64 %.048.i
  %gep51.i = getelementptr [8 x i8], ptr %invariant.gep50.i, i64 %.048.i
  %i.gj = load double, ptr %gep51.i, align 8, !tbaa !378
  store double %i.gj, ptr %i.gi, align 8, !tbaa !378
  %i.gk = add nsw i64 %.048.i, 1                  ; 2 uses
  %i.gl = icmp slt i64 %i.gk, %i.cr
  br i1 %i.gl, label %scalar.ph139, label %._crit_edge.i, !llvm.loop !1459

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.cm, %.041102
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit
  %i.gm = load ptr, ptr %i.co, align 8, !tbaa !374 ; 2 uses
  %i.gn = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !1460 ; 2 uses
  %i.go = getelementptr [8 x i8], ptr %i.gn, i64 %i.bq
  %i.gp = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !1460 ; 4 uses
  %i.gq = mul i64 %i.gp, %i.cq
  %i.gr = getelementptr [8 x i8], ptr %i.go, i64 %i.gq ; 2 uses
  %i.gs = load ptr, ptr %i.gm, align 8, !tbaa !365 ; 3 uses
  %i.gt = getelementptr inbounds nuw i8, ptr %i.gm, i64 8
  %i.gu = load i64, ptr %i.gt, align 8, !tbaa !376 ; 6 uses
  %i.gv = icmp sgt i32 %i.cn, 0
  %or.cond96 = select i1 %i.gv, i1 %i.bs, i1 false
  br i1 %or.cond96, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.p
  %i.gw = getelementptr i8, ptr %i.gn, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gw, i64 %i.bu
  %i.gx = shl nuw nsw i64 %i.cr, 3                ; 2 uses
  %i.gy = add nsw i64 %i.gx, -8
  %i.gz = shl nsw i64 %i.cq, 3
  %i.ha = add nsw i64 %i.gy, %i.gz
  %i.hb = mul i64 %i.gp, %i.ha
  %scevgep133 = getelementptr i8, ptr %scevgep, i64 %i.hb
  %scevgep134 = getelementptr i8, ptr %i.gs, i64 -8
  %scevgep135 = getelementptr i8, ptr %scevgep134, i64 %i.bt
  %scevgep136 = getelementptr i8, ptr %scevgep135, i64 %i.gx
  %ident.check.not = icmp eq i64 %i.gu, 1
  %or.cond173 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %bound0 = icmp ult ptr %i.gr, %scevgep136
  %bound1 = icmp ult ptr %i.gs, %scevgep133
  %found.conflict = and i1 %bound0, %bound1
  %.mask = and i64 %i.gp, 1152921504606846976
  %stride.check = icmp ne i64 %.mask, 0
  %i.hc = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hs, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.hd = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gp
  %i.he = getelementptr [8 x i8], ptr %i.gr, i64 %i.hd ; 6 uses
  %i.hf = getelementptr [8 x i8], ptr %i.gs, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %or.cond173.not = xor i1 %or.cond173, true
  %brmerge179 = select i1 %or.cond173.not, i1 true, i1 %i.hc
  br i1 %brmerge179, label %scalar.ph.preheader, label %vector.body

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.hg = getelementptr [8 x i8], ptr %i.he, i64 %index ; 2 uses
  %i.hh = getelementptr [8 x i8], ptr %i.hf, i64 %index ; 2 uses
  %i.hi = getelementptr i8, ptr %i.hh, i64 16
  %wide.load = load <2 x double>, ptr %i.hh, align 8, !tbaa !378, !alias.scope !1463
  %wide.load137 = load <2 x double>, ptr %i.hi, align 8, !tbaa !378, !alias.scope !1463
  %i.hj = getelementptr i8, ptr %i.hg, i64 16
  store <2 x double> %wide.load, ptr %i.hg, align 8, !tbaa !378, !alias.scope !1466, !noalias !1463
  store <2 x double> %wide.load137, ptr %i.hj, align 8, !tbaa !378, !alias.scope !1466, !noalias !1463
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hk = icmp eq i64 %index.next, %n.vec
  br i1 %i.hk, label %middle.block, label %vector.body, !llvm.loop !1468

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %middle.block
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %middle.block ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  br i1 %lcmp.mod176.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.hp, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter177 = phi i64 [ %prol.iter177.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.hl = getelementptr [8 x i8], ptr %i.he, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %i.hm = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, %i.gu
  %i.hn = getelementptr [8 x i8], ptr %i.hf, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !378
  store double %i.ho, ptr %i.hl, align 8, !tbaa !378
  %i.hp = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter177.next = add i64 %prol.iter177, 1   ; 2 uses
  %prol.iter177.cmp.not = icmp eq i64 %prol.iter177.next, %xtraiter175
  br i1 %prol.iter177.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1469

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.hp, %scalar.ph.prol ]
  %i.hq = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.hr = icmp ugt i64 %i.hq, -4
  br i1 %i.hr, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %i.hs = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hs, %i.cr
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1470

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.im, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.ht = getelementptr [8 x i8], ptr %i.he, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %i.hu = mul nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, %i.gu
  %i.hv = getelementptr [8 x i8], ptr %i.hf, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !378
  store double %i.hw, ptr %i.ht, align 8, !tbaa !378
  %i.hx = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hy = getelementptr [8 x i8], ptr %i.he, i64 %i.hx
  %i.hz = mul nsw i64 %i.hx, %i.gu
  %i.ia = getelementptr [8 x i8], ptr %i.hf, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !378
  store double %i.ib, ptr %i.hy, align 8, !tbaa !378
  %i.ic = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.id = getelementptr [8 x i8], ptr %i.he, i64 %i.ic
  %i.ie = mul nsw i64 %i.ic, %i.gu
  %i.if = getelementptr [8 x i8], ptr %i.hf, i64 %i.ie
  %i.ig = load double, ptr %i.if, align 8, !tbaa !378
  store double %i.ig, ptr %i.id, align 8, !tbaa !378
  %i.ih = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ii = getelementptr [8 x i8], ptr %i.he, i64 %i.ih
  %i.ij = mul nsw i64 %i.ih, %i.gu
  %i.ik = getelementptr [8 x i8], ptr %i.hf, i64 %i.ij
  %i.il = load double, ptr %i.ik, align 8, !tbaa !378
  store double %i.il, ptr %i.ii, align 8, !tbaa !378
  %i.im = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.im, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !1471

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.p, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_IS6_EENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSC_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14rowBaseOfBlockEi.exit
  %i.in = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.0100) #40 ; 2 uses
  %.not97 = icmp eq ptr %i.in, %i.bp
  br i1 %.not97, label %.loopexit.loopexit, label %bb.k, !llvm.loop !1472

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeIS2_EEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre113 = load ptr, ptr %i.am, align 8, !tbaa !370
  %.pre114 = load ptr, ptr %i.al, align 8, !tbaa !373
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit
  %i.io = phi ptr [ %.pre114, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ip = phi ptr [ %.pre113, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = add nsw i32 %i.bj, %.041102
  %i.ir = add nuw i64 %.042101, 1                 ; 2 uses
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = ptrtoint ptr %i.io to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 48
  %i.iw = icmp ult i64 %i.ir, %i.iv
  br i1 %i.iw, label %bb.g, label %._crit_edge, !llvm.loop !1473

bb.q:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.q
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE12solvePatternERNS_17SparseBlockMatrixIS3_EERKSt6vectorISt4pairIiiESaISA_EERKS6_(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(73) %1, ptr noundef nonnull align 1 %2, ptr noundef nonnull align 8 dereferenceable(73) %3) unnamed_addr #10 comdat align 2 {
bb.a:
  ret i1 false
}
end_hunk_1
begin_hunk_2_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  br i1 %.not4591, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.thread
  %i.cf = load ptr, ptr %1, align 8, !tbaa !456
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cl = sub nsw i32 %i.ck, %i.cj
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit
  %i.cm = load ptr, ptr %1, align 8, !tbaa !456
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.co = phi i32 [ %i.cj, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cp = phi i32 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1641 ; 7 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = sext i32 %i.co to i64                   ; 5 uses
  %i.cu = sext i32 %i.cp to i64                   ; 14 uses
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !1926 ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cy = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !1926 ; 10 uses
  %i.cz = mul nsw i64 %i.cy, %i.bq
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz ; 6 uses
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 7
  %.not.i52 = icmp eq i64 %i.dc, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit
  %i.dd = icmp sgt i32 %i.cp, 0
  %or.cond = select i1 %i.bs, i1 %i.dd, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.de = mul i64 %i.by, %i.cy
  %i.df = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.dg = shl nsw i64 %i.ct, 3
  %i.dh = getelementptr i8, ptr %i.cv, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep145 = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep146 = getelementptr i8, ptr %i.cr, i64 -24
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.bv
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.df
  %min.iters.check154 = icmp ult i32 %i.cp, 6
  %bound0149 = icmp ult ptr %i.da, %scevgep148
  %bound1150 = icmp ult ptr %i.cr, %scevgep145
  %found.conflict151 = and i1 %bound0149, %bound1150
  %.mask = and i64 %i.cy, 1152921504606846976
  %stride.check152 = icmp ne i64 %.mask, 0
  %i.dj = or i1 %found.conflict151, %stride.check152
  %n.vec156 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n163 = icmp eq i64 %n.vec156, %i.cu
  %xtraiter = and i64 %i.cu, 3
  %i.dk = and i32 %i.cp, 3
  %lcmp.mod.not = icmp eq i32 %i.dk, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.dx, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dl = mul nsw i64 %.0810.i.i, %i.cy
  %i.dm = getelementptr [8 x i8], ptr %i.da, i64 %i.dl ; 6 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i, 24
  %invariant.gep.i.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check154, i1 true, i1 %i.dj
  br i1 %brmerge, label %scalar.ph153.preheader, label %vector.body157

vector.body157:                                   ; preds = %.preheader.i.i, %vector.body157
  %index158 = phi i64 [ %index.next161, %vector.body157 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %index158 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index158 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load159 = load <2 x double>, ptr %i.do, align 8, !tbaa !378, !alias.scope !1929
  %wide.load160 = load <2 x double>, ptr %i.dp, align 8, !tbaa !378, !alias.scope !1929
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load159, ptr %i.dn, align 8, !tbaa !378, !alias.scope !1932, !noalias !1929
  store <2 x double> %wide.load160, ptr %i.dq, align 8, !tbaa !378, !alias.scope !1932, !noalias !1929
  %index.next161 = add nuw i64 %index158, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.dr, label %middle.block162, label %vector.body157, !llvm.loop !1934

middle.block162:                                  ; preds = %vector.body157
  br i1 %cmp.n163, label %._crit_edge.i.i, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.preheader.i.i, %middle.block162
  %.09.i.i.ph = phi i64 [ %n.vec156, %middle.block162 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol

scalar.ph153.prol:                                ; preds = %scalar.ph153.preheader, %scalar.ph153.prol
  %.09.i.i.prol = phi i64 [ %i.du, %scalar.ph153.prol ], [ %.09.i.i.ph, %scalar.ph153.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph153.prol ], [ 0, %scalar.ph153.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.dt = load double, ptr %gep.i.i.prol, align 8, !tbaa !378
  store double %i.dt, ptr %i.ds, align 8, !tbaa !378
  %i.du = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol, !llvm.loop !1935

scalar.ph153.prol.loopexit:                       ; preds = %scalar.ph153.prol, %scalar.ph153.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph153.preheader ], [ %i.du, %scalar.ph153.prol ]
  %i.dv = sub nsw i64 %.09.i.i.ph, %i.cu
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.i, label %scalar.ph153

._crit_edge.i.i:                                  ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153, %middle.block162
  %i.dx = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dx, %i.br
  br i1 %exitcond13.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %.preheader.i.i, !llvm.loop !1936

scalar.ph153:                                     ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153
  %.09.i.i = phi i64 [ %i.ej, %scalar.ph153 ], [ %.09.i.i.unr, %scalar.ph153.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.dz = load double, ptr %gep.i.i, align 8, !tbaa !378
  store double %i.dz, ptr %i.dy, align 8, !tbaa !378
  %i.ea = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dm, i64 %i.ea
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ea
  %i.ec = load double, ptr %gep.i.i.1, align 8, !tbaa !378
  store double %i.ec, ptr %i.eb, align 8, !tbaa !378
  %i.ed = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dm, i64 %i.ed
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ed
  %i.ef = load double, ptr %gep.i.i.2, align 8, !tbaa !378
  store double %i.ef, ptr %i.ee, align 8, !tbaa !378
  %i.eg = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dm, i64 %i.eg
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eg
  %i.ei = load double, ptr %gep.i.i.3, align 8, !tbaa !378
  store double %i.ei, ptr %i.eh, align 8, !tbaa !378
  %i.ej = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ej, %i.cu
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph153, !llvm.loop !1937

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11rowsOfBlockEi.exit
  %i.ek = and i64 %i.cy, 1
  br i1 %i.bs, label %.lr.ph56.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.lr.ph56.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.el = lshr exact i64 %i.db, 3
  %i.em = and i64 %i.el, 1
  %i.en = tail call i64 @llvm.smin.i64(i64 %i.em, i64 %i.cu)
  %i.eo = mul i64 %i.bw, %i.cy
  %i.ep = add i64 %i.eo, %i.cw
  %i.eq = shl nsw i64 %i.ct, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = sub i64 %i.er, %i.cs
  %i.et = shl i64 %i.cy, 3
  %i.eu = add i64 %i.et, -24
  %invariant.op = add i64 %i.es, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph56.i
  %.03455.i = phi i64 [ 0, %.lr.ph56.i ], [ %i.fx, %._crit_edge.i ] ; 8 uses
  %.03554.i = phi i64 [ %i.en, %.lr.ph56.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.ev = mul i64 %i.eu, %.03455.i
  %i.ew = sub i64 %i.cu, %.03554.i                ; 3 uses
  %i.ex = and i64 %i.ew, -2
  %i.ey = add nsw i64 %i.ex, %.03554.i            ; 5 uses
  %i.ez = icmp sgt i64 %.03554.i, 0
  br i1 %i.ez, label %.preheader45.loopexit.i, label %.preheader45.i

.preheader45.loopexit.i:                          ; preds = %bb.o
  %.idx.i.i.i.i = mul nuw nsw i64 %.03455.i, 24
  %invariant.gep.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i
  %i.fa = mul nsw i64 %.03455.i, %i.cy
  %i.fb = getelementptr [8 x i8], ptr %i.da, i64 %i.fa
  %i.fc = load double, ptr %invariant.gep.i, align 8, !tbaa !378
  store double %i.fc, ptr %i.fb, align 8, !tbaa !378
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.loopexit.i, %bb.o
  %i.fd = icmp sgt i64 %i.ew, 1
  br i1 %i.fd, label %.lr.ph49.i, label %.preheader.i

.lr.ph49.i:                                       ; preds = %.preheader45.i
  %.idx.i.i.i37.i = mul nuw nsw i64 %.03455.i, 24
  %i.fe = mul nsw i64 %.03455.i, %i.cy
  %i.ff = getelementptr [8 x i8], ptr %i.da, i64 %i.fe
  %invariant.gep = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i37.i
  br label %bb.p

.preheader.i:                                     ; preds = %bb.p, %.preheader45.i
  %i.fg = icmp slt i64 %i.ey, %i.cu
  br i1 %i.fg, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.fh = mul nsw i64 %.03455.i, %i.cy
  %i.fi = getelementptr [8 x i8], ptr %i.da, i64 %i.fh ; 2 uses
  %.idx.i.i.i38.i = mul nuw nsw i64 %.03455.i, 24
  %invariant.gep52.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i38.i ; 2 uses
  %6 = and i64 %i.ew, -2
  %7 = add i64 %.03554.i, %6
  %i.fj = sub i64 %i.cu, %7                       ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.fj, 4
  %.reass = add i64 %i.ev, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond166 = select i1 %min.iters.check135, i1 true, i1 %diff.check
  br i1 %or.cond166, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph51.i
  %n.vec137 = and i64 %i.fj, -4                   ; 3 uses
  %i.fk = add i64 %i.ey, %n.vec137
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next141, %vector.body138 ] ; 2 uses
  %i.fl = add i64 %i.ey, %index139                ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fi, i64 %i.fl ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %i.fl ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !378
  %wide.load140 = load <2 x double>, ptr %i.fo, align 8, !tbaa !378
  %i.fp = getelementptr i8, ptr %i.fm, i64 16
  store <2 x double> %wide.load, ptr %i.fm, align 8, !tbaa !378
  store <2 x double> %wide.load140, ptr %i.fp, align 8, !tbaa !378
  %index.next141 = add nuw i64 %index139, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.fq, label %middle.block142, label %vector.body138, !llvm.loop !1938

middle.block142:                                  ; preds = %vector.body138
  %cmp.n = icmp eq i64 %i.fj, %n.vec137
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.lr.ph51.i, %middle.block142
  %.050.i.ph = phi i64 [ %i.ey, %.lr.ph51.i ], [ %i.fk, %middle.block142 ]
  br label %scalar.ph134

bb.p:                                             ; preds = %bb.p, %.lr.ph49.i
  %.03248.i = phi i64 [ %.03554.i, %.lr.ph49.i ], [ %i.ft, %bb.p ] ; 3 uses
  %i.fr = getelementptr [8 x i8], ptr %i.ff, i64 %.03248.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03248.i
  %i.fs = load <2 x double>, ptr %gep, align 1, !tbaa !17
  store <2 x double> %i.fs, ptr %i.fr, align 16, !tbaa !17
  %i.ft = add nsw i64 %.03248.i, 2                ; 2 uses
  %i.fu = icmp slt i64 %i.ft, %i.ey
  br i1 %i.fu, label %bb.p, label %.preheader.i, !llvm.loop !1939

._crit_edge.i:                                    ; preds = %scalar.ph134, %middle.block142, %.preheader.i
  %i.fv = add nsw i64 %.03554.i, %i.ek
  %i.fw = srem i64 %i.fv, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.fw)
  %i.fx = add nuw nsw i64 %.03455.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.fx, %i.br
  br i1 %exitcond60.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %bb.o, !llvm.loop !1940

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %.050.i = phi i64 [ %i.ga, %scalar.ph134 ], [ %.050.i.ph, %scalar.ph134.preheader ] ; 3 uses
  %i.fy = getelementptr [8 x i8], ptr %i.fi, i64 %.050.i
  %gep53.i = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %.050.i
  %i.fz = load double, ptr %gep53.i, align 8, !tbaa !378
  store double %i.fz, ptr %i.fy, align 8, !tbaa !378
  %i.ga = add nsw i64 %.050.i, 1                  ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.cu
  br i1 %i.gb, label %scalar.ph134, label %._crit_edge.i, !llvm.loop !1941

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.co, %.04198
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit
  %i.gc = load ptr, ptr %i.cq, align 8, !tbaa !1641 ; 3 uses
  %i.gd = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !1942 ; 2 uses
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %i.bq
  %i.gf = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !1942 ; 4 uses
  %i.gg = mul i64 %i.gf, %i.ct
  %i.gh = getelementptr [8 x i8], ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gi = icmp sgt i32 %i.cp, 0
  %or.cond92 = select i1 %i.gi, i1 %i.bs, i1 false
  br i1 %or.cond92, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.q
  %i.gj = getelementptr i8, ptr %i.gd, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gj, i64 %i.bu
  %i.gk = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.gl = add nsw i64 %i.gk, -8
  %i.gm = shl nsw i64 %i.ct, 3
  %i.gn = add nsw i64 %i.gl, %i.gm
  %i.go = mul i64 %i.gf, %i.gn
  %scevgep129 = getelementptr i8, ptr %scevgep, i64 %i.go
  %scevgep130 = getelementptr i8, ptr %i.gc, i64 -24
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.bv
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.gk
  %bound0 = icmp ult ptr %i.gh, %scevgep132
  %bound1 = icmp ult ptr %i.gc, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  %.mask165 = and i64 %i.gf, 1152921504606846976
  %stride.check = icmp ne i64 %.mask165, 0
  %i.gp = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gq = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gf
  %i.gr = getelementptr [8 x i8], ptr %i.gh, i64 %i.gq ; 6 uses
  %i.gs = getelementptr [8 x i8], ptr %i.gc, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 9 uses
  %brmerge172 = select i1 %min.iters.check, i1 true, i1 %i.gp
  br i1 %brmerge172, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gt = sub nsw i64 %i.br, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter168 = and i64 %i.gt, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gx, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gu = getelementptr [8 x i8], ptr %i.gr, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 24
  %i.gv = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !378
  store double %i.gw, ptr %i.gu, align 8, !tbaa !378
  %i.gx = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !1945

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.gx, %scalar.ph.prol ]
  %i.gy = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gr, i64 %index ; 2 uses
  %i.hb = mul nuw nsw i64 %index, 24
  %i.hc = mul nuw i64 %index, 24
  %i.hd = mul nuw i64 %index, 24
  %i.he = mul nuw i64 %index, 24
  %i.hf = getelementptr i8, ptr %i.gs, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.gs, i64 %i.hc
  %i.hh = getelementptr i8, ptr %i.hg, i64 24
  %i.hi = getelementptr i8, ptr %i.gs, i64 %i.hd
  %i.hj = getelementptr i8, ptr %i.hi, i64 48
  %i.hk = getelementptr i8, ptr %i.gs, i64 %i.he
  %i.hl = getelementptr i8, ptr %i.hk, i64 72
  %i.hm = load double, ptr %i.hf, align 8, !tbaa !378, !alias.scope !1946
  %i.hn = load double, ptr %i.hh, align 8, !tbaa !378, !alias.scope !1946
  %i.ho = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hn, i64 1
  %i.hq = load double, ptr %i.hj, align 8, !tbaa !378, !alias.scope !1946
  %i.hr = load double, ptr %i.hl, align 8, !tbaa !378, !alias.scope !1946
  %i.hs = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.hr, i64 1
  %i.hu = getelementptr i8, ptr %i.ha, i64 16
  store <2 x double> %i.hp, ptr %i.ha, align 8, !tbaa !378, !alias.scope !1949, !noalias !1946
  store <2 x double> %i.ht, ptr %i.hu, align 8, !tbaa !378, !alias.scope !1949, !noalias !1946
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %scalar.ph.preheader, label %vector.body, !llvm.loop !1951

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.hw = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hw, %i.cu
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1952

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.im, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hx = getelementptr [8 x i8], ptr %i.gr, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 24
  %i.hy = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !378
  store double %i.hz, ptr %i.hx, align 8, !tbaa !378
  %i.ia = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.gr, i64 %i.ia
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ia, 24
  %i.ic = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.id = load double, ptr %i.ic, align 8, !tbaa !378
  store double %i.id, ptr %i.ib, align 8, !tbaa !378
  %i.ie = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.gr, i64 %i.ie
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nuw nsw i64 %i.ie, 24
  %i.ig = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !378
  store double %i.ih, ptr %i.if, align 8, !tbaa !378
  %i.ii = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.gr, i64 %i.ii
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = mul nuw nsw i64 %i.ii, 24
  %i.ik = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.il = load double, ptr %i.ik, align 8, !tbaa !378
  store double %i.il, ptr %i.ij, align 8, !tbaa !378
  %i.im = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.im, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !1953

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.q, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi3ELi3ELi0ELi3ELi3EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE14rowBaseOfBlockEi.exit
  %i.in = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.096) #40 ; 2 uses
  %.not93 = icmp eq ptr %i.in, %i.bp
  br i1 %.not93, label %.loopexit.loopexit, label %bb.k, !llvm.loop !1954

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi3ELi3ELi0ELi3ELi3EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre109 = load ptr, ptr %i.am, align 8, !tbaa !1637
  %.pre110 = load ptr, ptr %i.al, align 8, !tbaa !1640
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit
  %i.io = phi ptr [ %.pre110, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ip = phi ptr [ %.pre109, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = add nsw i32 %i.bj, %.04198
  %i.ir = add nuw i64 %.04297, 1                  ; 2 uses
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = ptrtoint ptr %i.io to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 48
  %i.iw = icmp ult i64 %i.ir, %i.iv
  br i1 %i.iw, label %bb.g, label %._crit_edge, !llvm.loop !1955

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
end_hunk_2
begin_hunk_3_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  br i1 %.not4591, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit.thread
  %i.cf = load ptr, ptr %1, align 8, !tbaa !456
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cl = sub nsw i32 %i.ck, %i.cj
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit
  %i.cm = load ptr, ptr %1, align 8, !tbaa !456
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.co = phi i32 [ %i.cj, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cp = phi i32 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !1991 ; 7 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = sext i32 %i.co to i64                   ; 5 uses
  %i.cu = sext i32 %i.cp to i64                   ; 14 uses
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !2247 ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cy = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !2247 ; 10 uses
  %i.cz = mul nsw i64 %i.cy, %i.bq
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz ; 6 uses
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 7
  %.not.i52 = icmp eq i64 %i.dc, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit
  %i.dd = icmp sgt i32 %i.cp, 0
  %or.cond = select i1 %i.bs, i1 %i.dd, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.de = mul i64 %i.by, %i.cy
  %i.df = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.dg = shl nsw i64 %i.ct, 3
  %i.dh = getelementptr i8, ptr %i.cv, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep145 = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep146 = getelementptr i8, ptr %i.cr, i64 -48
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.bv
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.df
  %min.iters.check154 = icmp ult i32 %i.cp, 6
  %bound0149 = icmp ult ptr %i.da, %scevgep148
  %bound1150 = icmp ult ptr %i.cr, %scevgep145
  %found.conflict151 = and i1 %bound0149, %bound1150
  %.mask = and i64 %i.cy, 1152921504606846976
  %stride.check152 = icmp ne i64 %.mask, 0
  %i.dj = or i1 %found.conflict151, %stride.check152
  %n.vec156 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n163 = icmp eq i64 %n.vec156, %i.cu
  %xtraiter = and i64 %i.cu, 3
  %i.dk = and i32 %i.cp, 3
  %lcmp.mod.not = icmp eq i32 %i.dk, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.dx, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dl = mul nsw i64 %.0810.i.i, %i.cy
  %i.dm = getelementptr [8 x i8], ptr %i.da, i64 %i.dl ; 6 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i, 48
  %invariant.gep.i.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check154, i1 true, i1 %i.dj
  br i1 %brmerge, label %scalar.ph153.preheader, label %vector.body157

vector.body157:                                   ; preds = %.preheader.i.i, %vector.body157
  %index158 = phi i64 [ %index.next161, %vector.body157 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %index158 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index158 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load159 = load <2 x double>, ptr %i.do, align 8, !tbaa !378, !alias.scope !2250
  %wide.load160 = load <2 x double>, ptr %i.dp, align 8, !tbaa !378, !alias.scope !2250
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load159, ptr %i.dn, align 8, !tbaa !378, !alias.scope !2253, !noalias !2250
  store <2 x double> %wide.load160, ptr %i.dq, align 8, !tbaa !378, !alias.scope !2253, !noalias !2250
  %index.next161 = add nuw i64 %index158, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.dr, label %middle.block162, label %vector.body157, !llvm.loop !2255

middle.block162:                                  ; preds = %vector.body157
  br i1 %cmp.n163, label %._crit_edge.i.i, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.preheader.i.i, %middle.block162
  %.09.i.i.ph = phi i64 [ %n.vec156, %middle.block162 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol

scalar.ph153.prol:                                ; preds = %scalar.ph153.preheader, %scalar.ph153.prol
  %.09.i.i.prol = phi i64 [ %i.du, %scalar.ph153.prol ], [ %.09.i.i.ph, %scalar.ph153.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph153.prol ], [ 0, %scalar.ph153.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.dt = load double, ptr %gep.i.i.prol, align 8, !tbaa !378
  store double %i.dt, ptr %i.ds, align 8, !tbaa !378
  %i.du = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol, !llvm.loop !2256

scalar.ph153.prol.loopexit:                       ; preds = %scalar.ph153.prol, %scalar.ph153.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph153.preheader ], [ %i.du, %scalar.ph153.prol ]
  %i.dv = sub nsw i64 %.09.i.i.ph, %i.cu
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.i, label %scalar.ph153

._crit_edge.i.i:                                  ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153, %middle.block162
  %i.dx = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dx, %i.br
  br i1 %exitcond13.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %.preheader.i.i, !llvm.loop !2257

scalar.ph153:                                     ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153
  %.09.i.i = phi i64 [ %i.ej, %scalar.ph153 ], [ %.09.i.i.unr, %scalar.ph153.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.dz = load double, ptr %gep.i.i, align 8, !tbaa !378
  store double %i.dz, ptr %i.dy, align 8, !tbaa !378
  %i.ea = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dm, i64 %i.ea
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ea
  %i.ec = load double, ptr %gep.i.i.1, align 8, !tbaa !378
  store double %i.ec, ptr %i.eb, align 8, !tbaa !378
  %i.ed = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dm, i64 %i.ed
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ed
  %i.ef = load double, ptr %gep.i.i.2, align 8, !tbaa !378
  store double %i.ef, ptr %i.ee, align 8, !tbaa !378
  %i.eg = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dm, i64 %i.eg
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eg
  %i.ei = load double, ptr %gep.i.i.3, align 8, !tbaa !378
  store double %i.ei, ptr %i.eh, align 8, !tbaa !378
  %i.ej = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ej, %i.cu
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph153, !llvm.loop !2258

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11rowsOfBlockEi.exit
  %i.ek = and i64 %i.cy, 1
  br i1 %i.bs, label %.lr.ph56.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.lr.ph56.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.el = lshr exact i64 %i.db, 3
  %i.em = and i64 %i.el, 1
  %i.en = tail call i64 @llvm.smin.i64(i64 %i.em, i64 %i.cu)
  %i.eo = mul i64 %i.bw, %i.cy
  %i.ep = add i64 %i.eo, %i.cw
  %i.eq = shl nsw i64 %i.ct, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = sub i64 %i.er, %i.cs
  %i.et = shl i64 %i.cy, 3
  %i.eu = add i64 %i.et, -48
  %invariant.op = add i64 %i.es, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph56.i
  %.03455.i = phi i64 [ 0, %.lr.ph56.i ], [ %i.fx, %._crit_edge.i ] ; 8 uses
  %.03554.i = phi i64 [ %i.en, %.lr.ph56.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.ev = mul i64 %i.eu, %.03455.i
  %i.ew = sub i64 %i.cu, %.03554.i                ; 3 uses
  %i.ex = and i64 %i.ew, -2
  %i.ey = add nsw i64 %i.ex, %.03554.i            ; 5 uses
  %i.ez = icmp sgt i64 %.03554.i, 0
  br i1 %i.ez, label %.preheader45.loopexit.i, label %.preheader45.i

.preheader45.loopexit.i:                          ; preds = %bb.o
  %.idx.i.i.i.i = mul nuw nsw i64 %.03455.i, 48
  %invariant.gep.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i
  %i.fa = mul nsw i64 %.03455.i, %i.cy
  %i.fb = getelementptr [8 x i8], ptr %i.da, i64 %i.fa
  %i.fc = load double, ptr %invariant.gep.i, align 8, !tbaa !378
  store double %i.fc, ptr %i.fb, align 8, !tbaa !378
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.loopexit.i, %bb.o
  %i.fd = icmp sgt i64 %i.ew, 1
  br i1 %i.fd, label %.lr.ph49.i, label %.preheader.i

.lr.ph49.i:                                       ; preds = %.preheader45.i
  %.idx.i.i.i37.i = mul nuw nsw i64 %.03455.i, 48
  %i.fe = mul nsw i64 %.03455.i, %i.cy
  %i.ff = getelementptr [8 x i8], ptr %i.da, i64 %i.fe
  %invariant.gep = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i37.i
  br label %bb.p

.preheader.i:                                     ; preds = %bb.p, %.preheader45.i
  %i.fg = icmp slt i64 %i.ey, %i.cu
  br i1 %i.fg, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.fh = mul nsw i64 %.03455.i, %i.cy
  %i.fi = getelementptr [8 x i8], ptr %i.da, i64 %i.fh ; 2 uses
  %.idx.i.i.i38.i = mul nuw nsw i64 %.03455.i, 48
  %invariant.gep52.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i38.i ; 2 uses
  %6 = and i64 %i.ew, -2
  %7 = add i64 %.03554.i, %6
  %i.fj = sub i64 %i.cu, %7                       ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.fj, 4
  %.reass = add i64 %i.ev, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond166 = select i1 %min.iters.check135, i1 true, i1 %diff.check
  br i1 %or.cond166, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph51.i
  %n.vec137 = and i64 %i.fj, -4                   ; 3 uses
  %i.fk = add i64 %i.ey, %n.vec137
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next141, %vector.body138 ] ; 2 uses
  %i.fl = add i64 %i.ey, %index139                ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fi, i64 %i.fl ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %i.fl ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !378
  %wide.load140 = load <2 x double>, ptr %i.fo, align 8, !tbaa !378
  %i.fp = getelementptr i8, ptr %i.fm, i64 16
  store <2 x double> %wide.load, ptr %i.fm, align 8, !tbaa !378
  store <2 x double> %wide.load140, ptr %i.fp, align 8, !tbaa !378
  %index.next141 = add nuw i64 %index139, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.fq, label %middle.block142, label %vector.body138, !llvm.loop !2259

middle.block142:                                  ; preds = %vector.body138
  %cmp.n = icmp eq i64 %i.fj, %n.vec137
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.lr.ph51.i, %middle.block142
  %.050.i.ph = phi i64 [ %i.ey, %.lr.ph51.i ], [ %i.fk, %middle.block142 ]
  br label %scalar.ph134

bb.p:                                             ; preds = %bb.p, %.lr.ph49.i
  %.03248.i = phi i64 [ %.03554.i, %.lr.ph49.i ], [ %i.ft, %bb.p ] ; 3 uses
  %i.fr = getelementptr [8 x i8], ptr %i.ff, i64 %.03248.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03248.i
  %i.fs = load <2 x double>, ptr %gep, align 1, !tbaa !17
  store <2 x double> %i.fs, ptr %i.fr, align 16, !tbaa !17
  %i.ft = add nsw i64 %.03248.i, 2                ; 2 uses
  %i.fu = icmp slt i64 %i.ft, %i.ey
  br i1 %i.fu, label %bb.p, label %.preheader.i, !llvm.loop !2260

._crit_edge.i:                                    ; preds = %scalar.ph134, %middle.block142, %.preheader.i
  %i.fv = add nsw i64 %.03554.i, %i.ek
  %i.fw = srem i64 %i.fv, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.fw)
  %i.fx = add nuw nsw i64 %.03455.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.fx, %i.br
  br i1 %exitcond60.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %bb.o, !llvm.loop !2261

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %.050.i = phi i64 [ %i.ga, %scalar.ph134 ], [ %.050.i.ph, %scalar.ph134.preheader ] ; 3 uses
  %i.fy = getelementptr [8 x i8], ptr %i.fi, i64 %.050.i
  %gep53.i = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %.050.i
  %i.fz = load double, ptr %gep53.i, align 8, !tbaa !378
  store double %i.fz, ptr %i.fy, align 8, !tbaa !378
  %i.ga = add nsw i64 %.050.i, 1                  ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.cu
  br i1 %i.gb, label %scalar.ph134, label %._crit_edge.i, !llvm.loop !2262

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.co, %.04198
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit
  %i.gc = load ptr, ptr %i.cq, align 8, !tbaa !1991 ; 3 uses
  %i.gd = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !2263 ; 2 uses
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %i.bq
  %i.gf = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !2263 ; 4 uses
  %i.gg = mul i64 %i.gf, %i.ct
  %i.gh = getelementptr [8 x i8], ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gi = icmp sgt i32 %i.cp, 0
  %or.cond92 = select i1 %i.gi, i1 %i.bs, i1 false
  br i1 %or.cond92, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.q
  %i.gj = getelementptr i8, ptr %i.gd, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gj, i64 %i.bu
  %i.gk = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.gl = add nsw i64 %i.gk, -8
  %i.gm = shl nsw i64 %i.ct, 3
  %i.gn = add nsw i64 %i.gl, %i.gm
  %i.go = mul i64 %i.gf, %i.gn
  %scevgep129 = getelementptr i8, ptr %scevgep, i64 %i.go
  %scevgep130 = getelementptr i8, ptr %i.gc, i64 -48
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.bv
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.gk
  %bound0 = icmp ult ptr %i.gh, %scevgep132
  %bound1 = icmp ult ptr %i.gc, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  %.mask165 = and i64 %i.gf, 1152921504606846976
  %stride.check = icmp ne i64 %.mask165, 0
  %i.gp = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gq = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gf
  %i.gr = getelementptr [8 x i8], ptr %i.gh, i64 %i.gq ; 6 uses
  %i.gs = getelementptr [8 x i8], ptr %i.gc, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 9 uses
  %brmerge172 = select i1 %min.iters.check, i1 true, i1 %i.gp
  br i1 %brmerge172, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gt = sub nsw i64 %i.br, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter168 = and i64 %i.gt, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gx, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gu = getelementptr [8 x i8], ptr %i.gr, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 48
  %i.gv = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !378
  store double %i.gw, ptr %i.gu, align 8, !tbaa !378
  %i.gx = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2266

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.gx, %scalar.ph.prol ]
  %i.gy = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gr, i64 %index ; 2 uses
  %i.hb = mul nuw nsw i64 %index, 48
  %i.hc = mul nuw i64 %index, 48
  %i.hd = mul nuw i64 %index, 48
  %i.he = mul nuw i64 %index, 48
  %i.hf = getelementptr i8, ptr %i.gs, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.gs, i64 %i.hc
  %i.hh = getelementptr i8, ptr %i.hg, i64 48
  %i.hi = getelementptr i8, ptr %i.gs, i64 %i.hd
  %i.hj = getelementptr i8, ptr %i.hi, i64 96
  %i.hk = getelementptr i8, ptr %i.gs, i64 %i.he
  %i.hl = getelementptr i8, ptr %i.hk, i64 144
  %i.hm = load double, ptr %i.hf, align 8, !tbaa !378, !alias.scope !2267
  %i.hn = load double, ptr %i.hh, align 8, !tbaa !378, !alias.scope !2267
  %i.ho = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hn, i64 1
  %i.hq = load double, ptr %i.hj, align 8, !tbaa !378, !alias.scope !2267
  %i.hr = load double, ptr %i.hl, align 8, !tbaa !378, !alias.scope !2267
  %i.hs = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.hr, i64 1
  %i.hu = getelementptr i8, ptr %i.ha, i64 16
  store <2 x double> %i.hp, ptr %i.ha, align 8, !tbaa !378, !alias.scope !2270, !noalias !2267
  store <2 x double> %i.ht, ptr %i.hu, align 8, !tbaa !378, !alias.scope !2270, !noalias !2267
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2272

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.hw = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hw, %i.cu
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2273

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.im, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hx = getelementptr [8 x i8], ptr %i.gr, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 48
  %i.hy = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !378
  store double %i.hz, ptr %i.hx, align 8, !tbaa !378
  %i.ia = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.gr, i64 %i.ia
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ia, 48
  %i.ic = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.id = load double, ptr %i.ic, align 8, !tbaa !378
  store double %i.id, ptr %i.ib, align 8, !tbaa !378
  %i.ie = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.gr, i64 %i.ie
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nuw nsw i64 %i.ie, 48
  %i.ig = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !378
  store double %i.ih, ptr %i.if, align 8, !tbaa !378
  %i.ii = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.gr, i64 %i.ii
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = mul nuw nsw i64 %i.ii, 48
  %i.ik = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.il = load double, ptr %i.ik, align 8, !tbaa !378
  store double %i.il, ptr %i.ij, align 8, !tbaa !378
  %i.im = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.im, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !2274

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.q, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi6ELi6ELi0ELi6ELi6EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE14rowBaseOfBlockEi.exit
  %i.in = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.096) #40 ; 2 uses
  %.not93 = icmp eq ptr %i.in, %i.bp
  br i1 %.not93, label %.loopexit.loopexit, label %bb.k, !llvm.loop !2275

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi6ELi6ELi0ELi6ELi6EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre109 = load ptr, ptr %i.am, align 8, !tbaa !1987
  %.pre110 = load ptr, ptr %i.al, align 8, !tbaa !1990
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit
  %i.io = phi ptr [ %.pre110, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ip = phi ptr [ %.pre109, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = add nsw i32 %i.bj, %.04198
  %i.ir = add nuw i64 %.04297, 1                  ; 2 uses
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = ptrtoint ptr %i.io to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 48
  %i.iw = icmp ult i64 %i.ir, %i.iv
  br i1 %i.iw, label %bb.g, label %._crit_edge, !llvm.loop !2276

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi6ELi6ELi0ELi6ELi6EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
end_hunk_3
begin_hunk_4_@_ZN3g2o17LinearSolverDenseIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE5solveERKNS_17SparseBlockMatrixIS3_EEPdS9_:bb.a
  br i1 %.not4591, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.l

bb.l:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit.thread
  %i.cf = load ptr, ptr %1, align 8, !tbaa !456
  %i.cg = sext i32 %i.ce to i64
  %i.ch = getelementptr [4 x i8], ptr %i.cf, i64 %i.cg ; 2 uses
  %i.ci = getelementptr i8, ptr %i.ch, i64 -4
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !32 ; 2 uses
  %i.ck = load i32, ptr %i.ch, align 4, !tbaa !32
  %i.cl = sub nsw i32 %i.ck, %i.cj
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit

bb.m:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit
  %i.cm = load ptr, ptr %1, align 8, !tbaa !456
  %i.cn = load i32, ptr %i.cm, align 4, !tbaa !32
  br label %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit

_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit: ; preds = %bb.l, %bb.m
  %i.co = phi i32 [ %i.cj, %bb.l ], [ 0, %bb.m ]  ; 2 uses
  %i.cp = phi i32 [ %i.cl, %bb.l ], [ %i.cn, %bb.m ] ; 5 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.sroa.059.096, i64 40 ; 2 uses
  %i.cr = load ptr, ptr %i.cq, align 8, !tbaa !2308 ; 7 uses
  %i.cs = ptrtoaddr ptr %i.cr to i64
  %i.ct = sext i32 %i.co to i64                   ; 5 uses
  %i.cu = sext i32 %i.cp to i64                   ; 14 uses
  %i.cv = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !2552 ; 3 uses
  %i.cw = ptrtoaddr ptr %i.cv to i64
  %i.cx = getelementptr inbounds [8 x i8], ptr %i.cv, i64 %i.ct
  %i.cy = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !2552 ; 10 uses
  %i.cz = mul nsw i64 %i.cy, %i.bq
  %i.da = getelementptr inbounds [8 x i8], ptr %i.cx, i64 %i.cz ; 6 uses
  %i.db = ptrtoint ptr %i.da to i64               ; 2 uses
  %i.dc = and i64 %i.db, 7
  %.not.i52 = icmp eq i64 %i.dc, 0
  br i1 %.not.i52, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i, label %bb.n

bb.n:                                             ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit
  %i.dd = icmp sgt i32 %i.cp, 0
  %or.cond = select i1 %i.bs, i1 %i.dd, i1 false
  br i1 %or.cond, label %.preheader.i.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.preheader.i.i.preheader:                         ; preds = %bb.n
  %i.de = mul i64 %i.by, %i.cy
  %i.df = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.dg = shl nsw i64 %i.ct, 3
  %i.dh = getelementptr i8, ptr %i.cv, i64 %i.de
  %i.di = getelementptr i8, ptr %i.dh, i64 %i.df
  %scevgep145 = getelementptr i8, ptr %i.di, i64 %i.dg
  %scevgep146 = getelementptr i8, ptr %i.cr, i64 -56
  %scevgep147 = getelementptr i8, ptr %scevgep146, i64 %i.bv
  %scevgep148 = getelementptr i8, ptr %scevgep147, i64 %i.df
  %min.iters.check154 = icmp ult i32 %i.cp, 6
  %bound0149 = icmp ult ptr %i.da, %scevgep148
  %bound1150 = icmp ult ptr %i.cr, %scevgep145
  %found.conflict151 = and i1 %bound0149, %bound1150
  %.mask = and i64 %i.cy, 1152921504606846976
  %stride.check152 = icmp ne i64 %.mask, 0
  %i.dj = or i1 %found.conflict151, %stride.check152
  %n.vec156 = and i64 %i.cu, 2147483644           ; 3 uses
  %cmp.n163 = icmp eq i64 %n.vec156, %i.cu
  %xtraiter = and i64 %i.cu, 3
  %i.dk = and i32 %i.cp, 3
  %lcmp.mod.not = icmp eq i32 %i.dk, 0
  br label %.preheader.i.i

.preheader.i.i:                                   ; preds = %.preheader.i.i.preheader, %._crit_edge.i.i
  %.0810.i.i = phi i64 [ %i.dx, %._crit_edge.i.i ], [ 0, %.preheader.i.i.preheader ] ; 3 uses
  %i.dl = mul nsw i64 %.0810.i.i, %i.cy
  %i.dm = getelementptr [8 x i8], ptr %i.da, i64 %i.dl ; 6 uses
  %.idx.i.i.i.i.i = mul nuw nsw i64 %.0810.i.i, 56
  %invariant.gep.i.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i.i ; 6 uses
  %brmerge = select i1 %min.iters.check154, i1 true, i1 %i.dj
  br i1 %brmerge, label %scalar.ph153.preheader, label %vector.body157

vector.body157:                                   ; preds = %.preheader.i.i, %vector.body157
  %index158 = phi i64 [ %index.next161, %vector.body157 ], [ 0, %.preheader.i.i ] ; 3 uses
  %i.dn = getelementptr [8 x i8], ptr %i.dm, i64 %index158 ; 2 uses
  %i.do = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %index158 ; 2 uses
  %i.dp = getelementptr i8, ptr %i.do, i64 16
  %wide.load159 = load <2 x double>, ptr %i.do, align 8, !tbaa !378, !alias.scope !2555
  %wide.load160 = load <2 x double>, ptr %i.dp, align 8, !tbaa !378, !alias.scope !2555
  %i.dq = getelementptr i8, ptr %i.dn, i64 16
  store <2 x double> %wide.load159, ptr %i.dn, align 8, !tbaa !378, !alias.scope !2558, !noalias !2555
  store <2 x double> %wide.load160, ptr %i.dq, align 8, !tbaa !378, !alias.scope !2558, !noalias !2555
  %index.next161 = add nuw i64 %index158, 4       ; 2 uses
  %i.dr = icmp eq i64 %index.next161, %n.vec156
  br i1 %i.dr, label %middle.block162, label %vector.body157, !llvm.loop !2560

middle.block162:                                  ; preds = %vector.body157
  br i1 %cmp.n163, label %._crit_edge.i.i, label %scalar.ph153.preheader

scalar.ph153.preheader:                           ; preds = %.preheader.i.i, %middle.block162
  %.09.i.i.ph = phi i64 [ %n.vec156, %middle.block162 ], [ 0, %.preheader.i.i ] ; 3 uses
  br i1 %lcmp.mod.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol

scalar.ph153.prol:                                ; preds = %scalar.ph153.preheader, %scalar.ph153.prol
  %.09.i.i.prol = phi i64 [ %i.du, %scalar.ph153.prol ], [ %.09.i.i.ph, %scalar.ph153.preheader ] ; 3 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph153.prol ], [ 0, %scalar.ph153.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i.prol
  %gep.i.i.prol = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i.prol
  %i.dt = load double, ptr %gep.i.i.prol, align 8, !tbaa !378
  store double %i.dt, ptr %i.ds, align 8, !tbaa !378
  %i.du = add nuw nsw i64 %.09.i.i.prol, 1        ; 2 uses
  %prol.iter.next = add i64 %prol.iter, 1         ; 2 uses
  %prol.iter.cmp.not = icmp eq i64 %prol.iter.next, %xtraiter
  br i1 %prol.iter.cmp.not, label %scalar.ph153.prol.loopexit, label %scalar.ph153.prol, !llvm.loop !2561

scalar.ph153.prol.loopexit:                       ; preds = %scalar.ph153.prol, %scalar.ph153.preheader
  %.09.i.i.unr = phi i64 [ %.09.i.i.ph, %scalar.ph153.preheader ], [ %i.du, %scalar.ph153.prol ]
  %i.dv = sub nsw i64 %.09.i.i.ph, %i.cu
  %i.dw = icmp ugt i64 %i.dv, -4
  br i1 %i.dw, label %._crit_edge.i.i, label %scalar.ph153

._crit_edge.i.i:                                  ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153, %middle.block162
  %i.dx = add nuw nsw i64 %.0810.i.i, 1           ; 2 uses
  %exitcond13.not.i.i = icmp eq i64 %i.dx, %i.br
  br i1 %exitcond13.not.i.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %.preheader.i.i, !llvm.loop !2562

scalar.ph153:                                     ; preds = %scalar.ph153.prol.loopexit, %scalar.ph153
  %.09.i.i = phi i64 [ %i.ej, %scalar.ph153 ], [ %.09.i.i.unr, %scalar.ph153.prol.loopexit ] ; 6 uses
  %i.dy = getelementptr [8 x i8], ptr %i.dm, i64 %.09.i.i
  %gep.i.i = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %.09.i.i
  %i.dz = load double, ptr %gep.i.i, align 8, !tbaa !378
  store double %i.dz, ptr %i.dy, align 8, !tbaa !378
  %i.ea = add nuw nsw i64 %.09.i.i, 1             ; 2 uses
  %i.eb = getelementptr [8 x i8], ptr %i.dm, i64 %i.ea
  %gep.i.i.1 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ea
  %i.ec = load double, ptr %gep.i.i.1, align 8, !tbaa !378
  store double %i.ec, ptr %i.eb, align 8, !tbaa !378
  %i.ed = add nuw nsw i64 %.09.i.i, 2             ; 2 uses
  %i.ee = getelementptr [8 x i8], ptr %i.dm, i64 %i.ed
  %gep.i.i.2 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.ed
  %i.ef = load double, ptr %gep.i.i.2, align 8, !tbaa !378
  store double %i.ef, ptr %i.ee, align 8, !tbaa !378
  %i.eg = add nuw nsw i64 %.09.i.i, 3             ; 2 uses
  %i.eh = getelementptr [8 x i8], ptr %i.dm, i64 %i.eg
  %gep.i.i.3 = getelementptr [8 x i8], ptr %invariant.gep.i.i, i64 %i.eg
  %i.ei = load double, ptr %gep.i.i.3, align 8, !tbaa !378
  store double %i.ei, ptr %i.eh, align 8, !tbaa !378
  %i.ej = add nuw nsw i64 %.09.i.i, 4             ; 2 uses
  %exitcond.not.i.i.3 = icmp eq i64 %i.ej, %i.cu
  br i1 %exitcond.not.i.i.3, label %._crit_edge.i.i, label %scalar.ph153, !llvm.loop !2563

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i: ; preds = %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11rowsOfBlockEi.exit
  %i.ek = and i64 %i.cy, 1
  br i1 %i.bs, label %.lr.ph56.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit

.lr.ph56.i:                                       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %i.el = lshr exact i64 %i.db, 3
  %i.em = and i64 %i.el, 1
  %i.en = tail call i64 @llvm.smin.i64(i64 %i.em, i64 %i.cu)
  %i.eo = mul i64 %i.bw, %i.cy
  %i.ep = add i64 %i.eo, %i.cw
  %i.eq = shl nsw i64 %i.ct, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = sub i64 %i.er, %i.cs
  %i.et = shl i64 %i.cy, 3
  %i.eu = add i64 %i.et, -56
  %invariant.op = add i64 %i.es, -1
  br label %bb.o

bb.o:                                             ; preds = %._crit_edge.i, %.lr.ph56.i
  %.03455.i = phi i64 [ 0, %.lr.ph56.i ], [ %i.fx, %._crit_edge.i ] ; 8 uses
  %.03554.i = phi i64 [ %i.en, %.lr.ph56.i ], [ %.sroa.speculated.i, %._crit_edge.i ] ; 6 uses
  %i.ev = mul i64 %i.eu, %.03455.i
  %i.ew = sub i64 %i.cu, %.03554.i                ; 3 uses
  %i.ex = and i64 %i.ew, -2
  %i.ey = add nsw i64 %i.ex, %.03554.i            ; 5 uses
  %i.ez = icmp sgt i64 %.03554.i, 0
  br i1 %i.ez, label %.preheader45.loopexit.i, label %.preheader45.i

.preheader45.loopexit.i:                          ; preds = %bb.o
  %.idx.i.i.i.i = mul nuw nsw i64 %.03455.i, 56
  %invariant.gep.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i.i
  %i.fa = mul nsw i64 %.03455.i, %i.cy
  %i.fb = getelementptr [8 x i8], ptr %i.da, i64 %i.fa
  %i.fc = load double, ptr %invariant.gep.i, align 8, !tbaa !378
  store double %i.fc, ptr %i.fb, align 8, !tbaa !378
  br label %.preheader45.i

.preheader45.i:                                   ; preds = %.preheader45.loopexit.i, %bb.o
  %i.fd = icmp sgt i64 %i.ew, 1
  br i1 %i.fd, label %.lr.ph49.i, label %.preheader.i

.lr.ph49.i:                                       ; preds = %.preheader45.i
  %.idx.i.i.i37.i = mul nuw nsw i64 %.03455.i, 56
  %i.fe = mul nsw i64 %.03455.i, %i.cy
  %i.ff = getelementptr [8 x i8], ptr %i.da, i64 %i.fe
  %invariant.gep = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i37.i
  br label %bb.p

.preheader.i:                                     ; preds = %bb.p, %.preheader45.i
  %i.fg = icmp slt i64 %i.ey, %i.cu
  br i1 %i.fg, label %.lr.ph51.i, label %._crit_edge.i

.lr.ph51.i:                                       ; preds = %.preheader.i
  %i.fh = mul nsw i64 %.03455.i, %i.cy
  %i.fi = getelementptr [8 x i8], ptr %i.da, i64 %i.fh ; 2 uses
  %.idx.i.i.i38.i = mul nuw nsw i64 %.03455.i, 56
  %invariant.gep52.i = getelementptr i8, ptr %i.cr, i64 %.idx.i.i.i38.i ; 2 uses
  %6 = and i64 %i.ew, -2
  %7 = add i64 %.03554.i, %6
  %i.fj = sub i64 %i.cu, %7                       ; 3 uses
  %min.iters.check135 = icmp ult i64 %i.fj, 4
  %.reass = add i64 %i.ev, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond166 = select i1 %min.iters.check135, i1 true, i1 %diff.check
  br i1 %or.cond166, label %scalar.ph134.preheader, label %vector.ph136

vector.ph136:                                     ; preds = %.lr.ph51.i
  %n.vec137 = and i64 %i.fj, -4                   ; 3 uses
  %i.fk = add i64 %i.ey, %n.vec137
  br label %vector.body138

vector.body138:                                   ; preds = %vector.body138, %vector.ph136
  %index139 = phi i64 [ 0, %vector.ph136 ], [ %index.next141, %vector.body138 ] ; 2 uses
  %i.fl = add i64 %i.ey, %index139                ; 2 uses
  %i.fm = getelementptr [8 x i8], ptr %i.fi, i64 %i.fl ; 2 uses
  %i.fn = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %i.fl ; 2 uses
  %i.fo = getelementptr i8, ptr %i.fn, i64 16
  %wide.load = load <2 x double>, ptr %i.fn, align 8, !tbaa !378
  %wide.load140 = load <2 x double>, ptr %i.fo, align 8, !tbaa !378
  %i.fp = getelementptr i8, ptr %i.fm, i64 16
  store <2 x double> %wide.load, ptr %i.fm, align 8, !tbaa !378
  store <2 x double> %wide.load140, ptr %i.fp, align 8, !tbaa !378
  %index.next141 = add nuw i64 %index139, 4       ; 2 uses
  %i.fq = icmp eq i64 %index.next141, %n.vec137
  br i1 %i.fq, label %middle.block142, label %vector.body138, !llvm.loop !2564

middle.block142:                                  ; preds = %vector.body138
  %cmp.n = icmp eq i64 %i.fj, %n.vec137
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph134.preheader

scalar.ph134.preheader:                           ; preds = %.lr.ph51.i, %middle.block142
  %.050.i.ph = phi i64 [ %i.ey, %.lr.ph51.i ], [ %i.fk, %middle.block142 ]
  br label %scalar.ph134

bb.p:                                             ; preds = %bb.p, %.lr.ph49.i
  %.03248.i = phi i64 [ %.03554.i, %.lr.ph49.i ], [ %i.ft, %bb.p ] ; 3 uses
  %i.fr = getelementptr [8 x i8], ptr %i.ff, i64 %.03248.i
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.03248.i
  %i.fs = load <2 x double>, ptr %gep, align 1, !tbaa !17
  store <2 x double> %i.fs, ptr %i.fr, align 16, !tbaa !17
  %i.ft = add nsw i64 %.03248.i, 2                ; 2 uses
  %i.fu = icmp slt i64 %i.ft, %i.ey
  br i1 %i.fu, label %bb.p, label %.preheader.i, !llvm.loop !2565

._crit_edge.i:                                    ; preds = %scalar.ph134, %middle.block142, %.preheader.i
  %i.fv = add nsw i64 %.03554.i, %i.ek
  %i.fw = srem i64 %i.fv, 2
  %.sroa.speculated.i = tail call i64 @llvm.smin.i64(i64 %i.cu, i64 %i.fw)
  %i.fx = add nuw nsw i64 %.03455.i, 1            ; 2 uses
  %exitcond60.not.i = icmp eq i64 %i.fx, %i.br
  br i1 %exitcond60.not.i, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, label %bb.o, !llvm.loop !2566

scalar.ph134:                                     ; preds = %scalar.ph134.preheader, %scalar.ph134
  %.050.i = phi i64 [ %i.ga, %scalar.ph134 ], [ %.050.i.ph, %scalar.ph134.preheader ] ; 3 uses
  %i.fy = getelementptr [8 x i8], ptr %i.fi, i64 %.050.i
  %gep53.i = getelementptr [8 x i8], ptr %invariant.gep52.i, i64 %.050.i
  %i.fz = load double, ptr %gep53.i, align 8, !tbaa !378
  store double %i.fz, ptr %i.fy, align 8, !tbaa !378
  %i.ga = add nsw i64 %.050.i, 1                  ; 2 uses
  %i.gb = icmp slt i64 %i.ga, %i.cu
  br i1 %i.gb, label %scalar.ph134, label %._crit_edge.i, !llvm.loop !2567

_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit: ; preds = %._crit_edge.i.i, %._crit_edge.i, %bb.n, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i
  %.not46 = icmp eq i32 %i.co, %.04198
  br i1 %.not46, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %bb.q

bb.q:                                             ; preds = %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit
  %i.gc = load ptr, ptr %i.cq, align 8, !tbaa !2308 ; 3 uses
  %i.gd = load ptr, ptr %i.ak, align 8, !tbaa !365, !noalias !2568 ; 2 uses
  %i.ge = getelementptr [8 x i8], ptr %i.gd, i64 %i.bq
  %i.gf = load i64, ptr %i.ap, align 8, !tbaa !376, !noalias !2568 ; 4 uses
  %i.gg = mul i64 %i.gf, %i.ct
  %i.gh = getelementptr [8 x i8], ptr %i.ge, i64 %i.gg ; 2 uses
  %i.gi = icmp sgt i32 %i.cp, 0
  %or.cond92 = select i1 %i.gi, i1 %i.bs, i1 false
  br i1 %or.cond92, label %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit

.preheader.i.i.i.i.i.i.i.i.i.i.preheader:         ; preds = %bb.q
  %i.gj = getelementptr i8, ptr %i.gd, i64 %i.bt
  %scevgep = getelementptr i8, ptr %i.gj, i64 %i.bu
  %i.gk = shl nuw nsw i64 %i.cu, 3                ; 2 uses
  %i.gl = add nsw i64 %i.gk, -8
  %i.gm = shl nsw i64 %i.ct, 3
  %i.gn = add nsw i64 %i.gl, %i.gm
  %i.go = mul i64 %i.gf, %i.gn
  %scevgep129 = getelementptr i8, ptr %scevgep, i64 %i.go
  %scevgep130 = getelementptr i8, ptr %i.gc, i64 -56
  %scevgep131 = getelementptr i8, ptr %scevgep130, i64 %i.bv
  %scevgep132 = getelementptr i8, ptr %scevgep131, i64 %i.gk
  %bound0 = icmp ult ptr %i.gh, %scevgep132
  %bound1 = icmp ult ptr %i.gc, %scevgep129
  %found.conflict = and i1 %bound0, %bound1
  %.mask165 = and i64 %i.gf, 1152921504606846976
  %stride.check = icmp ne i64 %.mask165, 0
  %i.gp = or i1 %found.conflict, %stride.check
  br label %.preheader.i.i.i.i.i.i.i.i.i.i

.preheader.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i.preheader, %._crit_edge.i.i.i.i.i.i.i.i.i.i
  %.0810.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hw, %._crit_edge.i.i.i.i.i.i.i.i.i.i ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i.preheader ] ; 3 uses
  %i.gq = mul nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, %i.gf
  %i.gr = getelementptr [8 x i8], ptr %i.gh, i64 %i.gq ; 6 uses
  %i.gs = getelementptr [8 x i8], ptr %i.gc, i64 %.0810.i.i.i.i.i.i.i.i.i.i ; 9 uses
  %brmerge172 = select i1 %min.iters.check, i1 true, i1 %i.gp
  br i1 %brmerge172, label %scalar.ph.preheader, label %vector.body

scalar.ph.preheader:                              ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %.09.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %n.vec, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 4 uses
  %i.gt = sub nsw i64 %i.br, %.09.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter168 = and i64 %i.gt, 3                 ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br i1 %lcmp.mod169.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader, %scalar.ph.prol
  %.09.i.i.i.i.i.i.i.i.i.i.prol = phi i64 [ %i.gx, %scalar.ph.prol ], [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ] ; 3 uses
  %prol.iter170 = phi i64 [ %prol.iter170.next, %scalar.ph.prol ], [ 0, %scalar.ph.preheader ]
  %i.gu = getelementptr [8 x i8], ptr %i.gr, i64 %.09.i.i.i.i.i.i.i.i.i.i.prol
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 56
  %i.gv = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.prol
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !378
  store double %i.gw, ptr %i.gu, align 8, !tbaa !378
  %i.gx = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter170.next = add i64 %prol.iter170, 1   ; 2 uses
  %prol.iter170.cmp.not = icmp eq i64 %prol.iter170.next, %xtraiter168
  br i1 %prol.iter170.cmp.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol, !llvm.loop !2571

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.09.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.09.i.i.i.i.i.i.i.i.i.i.ph, %scalar.ph.preheader ], [ %i.gx, %scalar.ph.prol ]
  %i.gy = sub nsw i64 %.09.i.i.i.i.i.i.i.i.i.i.ph, %i.br
  %i.gz = icmp ugt i64 %i.gy, -4
  br i1 %i.gz, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph

vector.body:                                      ; preds = %.preheader.i.i.i.i.i.i.i.i.i.i, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %.preheader.i.i.i.i.i.i.i.i.i.i ] ; 6 uses
  %i.ha = getelementptr [8 x i8], ptr %i.gr, i64 %index ; 2 uses
  %i.hb = mul nuw nsw i64 %index, 56
  %i.hc = mul nuw i64 %index, 56
  %i.hd = mul nuw i64 %index, 56
  %i.he = mul nuw i64 %index, 56
  %i.hf = getelementptr i8, ptr %i.gs, i64 %i.hb
  %i.hg = getelementptr i8, ptr %i.gs, i64 %i.hc
  %i.hh = getelementptr i8, ptr %i.hg, i64 56
  %i.hi = getelementptr i8, ptr %i.gs, i64 %i.hd
  %i.hj = getelementptr i8, ptr %i.hi, i64 112
  %i.hk = getelementptr i8, ptr %i.gs, i64 %i.he
  %i.hl = getelementptr i8, ptr %i.hk, i64 168
  %i.hm = load double, ptr %i.hf, align 8, !tbaa !378, !alias.scope !2572
  %i.hn = load double, ptr %i.hh, align 8, !tbaa !378, !alias.scope !2572
  %i.ho = insertelement <2 x double> poison, double %i.hm, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hn, i64 1
  %i.hq = load double, ptr %i.hj, align 8, !tbaa !378, !alias.scope !2572
  %i.hr = load double, ptr %i.hl, align 8, !tbaa !378, !alias.scope !2572
  %i.hs = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.ht = insertelement <2 x double> %i.hs, double %i.hr, i64 1
  %i.hu = getelementptr i8, ptr %i.ha, i64 16
  store <2 x double> %i.hp, ptr %i.ha, align 8, !tbaa !378, !alias.scope !2575, !noalias !2572
  store <2 x double> %i.ht, ptr %i.hu, align 8, !tbaa !378, !alias.scope !2575, !noalias !2572
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.hv = icmp eq i64 %index.next, %n.vec
  br i1 %i.hv, label %scalar.ph.preheader, label %vector.body, !llvm.loop !2577

._crit_edge.i.i.i.i.i.i.i.i.i.i:                  ; preds = %scalar.ph, %scalar.ph.prol.loopexit
  %i.hw = add nuw nsw i64 %.0810.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %exitcond12.not.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.hw, %i.cu
  br i1 %exitcond12.not.i.i.i.i.i.i.i.i.i.i, label %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit, label %.preheader.i.i.i.i.i.i.i.i.i.i, !llvm.loop !2578

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.09.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.im, %scalar.ph ], [ %.09.i.i.i.i.i.i.i.i.i.i.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %i.hx = getelementptr [8 x i8], ptr %i.gr, i64 %.09.i.i.i.i.i.i.i.i.i.i
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i = mul nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 56
  %i.hy = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hz = load double, ptr %i.hy, align 8, !tbaa !378
  store double %i.hz, ptr %i.hx, align 8, !tbaa !378
  %i.ia = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.ib = getelementptr [8 x i8], ptr %i.gr, i64 %i.ia
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = mul nuw nsw i64 %i.ia, 56
  %i.ic = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.1
  %i.id = load double, ptr %i.ic, align 8, !tbaa !378
  store double %i.id, ptr %i.ib, align 8, !tbaa !378
  %i.ie = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.if = getelementptr [8 x i8], ptr %i.gr, i64 %i.ie
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2 = mul nuw nsw i64 %i.ie, 56
  %i.ig = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.2
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !378
  store double %i.ih, ptr %i.if, align 8, !tbaa !378
  %i.ii = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.ij = getelementptr [8 x i8], ptr %i.gr, i64 %i.ii
  %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3 = mul nuw nsw i64 %i.ii, 56
  %i.ik = getelementptr i8, ptr %i.gs, i64 %.idx.i.i.i.i.i.i.i.i.i.i.i.i.i.i.3
  %i.il = load double, ptr %i.ik, align 8, !tbaa !378
  store double %i.il, ptr %i.ij, align 8, !tbaa !378
  %i.im = add nuw nsw i64 %.09.i.i.i.i.i.i.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.3 = icmp eq i64 %i.im, %i.br
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.3, label %._crit_edge.i.i.i.i.i.i.i.i.i.i, label %scalar.ph, !llvm.loop !2579

_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit: ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i, %bb.q, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit.thread, %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEENS3_INS5_IdLi7ELi7ELi0ELi7ELi7EEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSD_.exit, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE14rowBaseOfBlockEi.exit
  %i.in = tail call noundef ptr @_ZSt18_Rb_tree_incrementPKSt18_Rb_tree_node_base(ptr noundef %.sroa.059.096) #40 ; 2 uses
  %.not93 = icmp eq ptr %i.in, %i.bp
  br i1 %.not93, label %.loopexit.loopexit, label %bb.k, !llvm.loop !2580

.loopexit.loopexit:                               ; preds = %_ZN5Eigen5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEaSINS_9TransposeINS1_IdLi7ELi7ELi0ELi7ELi7EEEEEEERS3_RKNS_9DenseBaseIT_EE.exit
  %.pre109 = load ptr, ptr %i.am, align 8, !tbaa !2304
  %.pre110 = load ptr, ptr %i.al, align 8, !tbaa !2307
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.loopexit, %bb.j, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit
  %i.io = phi ptr [ %.pre110, %.loopexit.loopexit ], [ %i.ax, %bb.j ], [ %i.ax, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.ip = phi ptr [ %.pre109, %.loopexit.loopexit ], [ %i.ay, %bb.j ], [ %i.ay, %_ZNK3g2o17SparseBlockMatrixIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11colsOfBlockEi.exit ] ; 2 uses
  %i.iq = add nsw i32 %i.bj, %.04198
  %i.ir = add nuw i64 %.04297, 1                  ; 2 uses
  %i.is = ptrtoint ptr %i.ip to i64
  %i.it = ptrtoint ptr %i.io to i64
  %i.iu = sub i64 %i.is, %i.it
  %i.iv = sdiv exact i64 %i.iu, 48
  %i.iw = icmp ult i64 %i.ir, %i.iv
  br i1 %i.iw, label %bb.g, label %._crit_edge, !llvm.loop !2581

bb.r:                                             ; preds = %._crit_edge
  call void @_ZNK5Eigen4LDLTINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi1EE22_solve_impl_transposedILb1ENS_3MapIKNS1_IdLin1ELi1ELi0ELin1ELi1EEELi0ENS_6StrideILi0ELi0EEEEENS5_IS6_Li0ES9_EEEEvRKT0_RT1_(ptr noundef nonnull align 8 dereferenceable(76) %i.as, ptr noundef nonnull align 8 dereferenceable(19) %5, ptr noundef nonnull align 8 dereferenceable(19) %4)
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #35
  ret i1 %spec.select.i
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN3g2o12LinearSolverIN5Eigen6MatrixIdLi7ELi7ELi0ELi7ELi7EEEE11solveBlocksERPPdRKNS_17SparseBlockMatrixIS3_EE(ptr noundef nonnull align 8 dereferenceable(9) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(73) %2) unnamed_addr #10 comdat align 2 {
end_hunk_4
