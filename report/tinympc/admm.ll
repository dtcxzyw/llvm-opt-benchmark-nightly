Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tinympc/original/admm?download=true
inline.NumInlined: 3888
inline.NumDeleted: 1985
loop-unroll.NumRuntimeUnrolled: 109
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNSB_ISD_KNS_7ProductIS8_S9_Li1EEESG_EEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EEEEEvRT_ll:bb.a
  %i.fz = load double, ptr %i.k, align 8, !tbaa !46, !alias.scope !921
  %broadcast.splatinsert151 = insertelement <2 x double> poison, double %i.fz, i64 0
  %broadcast.splat152 = shufflevector <2 x double> %broadcast.splatinsert151, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body147

vector.body147:                                   ; preds = %vector.body147, %vector.ph145
  %index148 = phi i64 [ 0, %vector.ph145 ], [ %index.next155, %vector.body147 ] ; 2 uses
  %i.ga = add i64 %1, %index148                   ; 3 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.ga ; 2 uses
  %i.gc = getelementptr inbounds nuw i8, ptr %i.gb, i64 16
  %wide.load149 = load <2 x double>, ptr %i.gb, align 8, !tbaa !46, !alias.scope !922
  %wide.load150 = load <2 x double>, ptr %i.gc, align 8, !tbaa !46, !alias.scope !922
  %i.gd = fmul <2 x double> %wide.load149, %broadcast.splat152
  %i.ge = fmul <2 x double> %wide.load150, %broadcast.splat152
  %i.gf = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.ga ; 2 uses
  %i.gg = fadd <2 x double> %i.gd, zeroinitializer
  %i.gh = fadd <2 x double> %i.ge, zeroinitializer
  %i.gi = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ga ; 2 uses
  %i.gj = getelementptr inbounds nuw i8, ptr %i.gi, i64 16
  %wide.load153 = load <2 x double>, ptr %i.gi, align 8, !tbaa !46, !alias.scope !923
  %wide.load154 = load <2 x double>, ptr %i.gj, align 8, !tbaa !46, !alias.scope !923
  %i.gk = fadd <2 x double> %i.gg, %wide.load153
  %i.gl = fadd <2 x double> %i.gh, %wide.load154
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gf, i64 16
  store <2 x double> %i.gk, ptr %i.gf, align 8, !tbaa !46, !alias.scope !924, !noalias !925
  store <2 x double> %i.gl, ptr %i.gm, align 8, !tbaa !46, !alias.scope !924, !noalias !925
  %index.next155 = add nuw i64 %index148, 4       ; 2 uses
  %i.gn = icmp eq i64 %index.next155, %n.vec146
  br i1 %i.gn, label %middle.block156, label %vector.body147, !llvm.loop !897

middle.block156:                                  ; preds = %vector.body147
  %cmp.n157 = icmp eq i64 %i.fv, %n.vec146
  br i1 %cmp.n157, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader213

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader213: ; preds = %vector.memcheck124, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader, %middle.block156
  %.06.us7.ph = phi i64 [ %1, %vector.memcheck124 ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader ], [ %i.fy, %middle.block156 ] ; 7 uses
  %i.go = sub i64 %2, %.06.us7.ph
  %.neg260 = add i64 %.06.us7.ph, 1
  %xtraiter240 = and i64 %i.go, 1
  %lcmp.mod241.not = icmp eq i64 %xtraiter240, 0
  br i1 %lcmp.mod241.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader213
  %i.gp = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us7.ph
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !46
  %i.gr = load double, ptr %i.k, align 8, !tbaa !46
  %i.gs = fmul double %i.gq, %i.gr
  %i.gt = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us7.ph
  %i.gu = fadd double %i.gs, 0.000000e+00
  %i.gv = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us7.ph
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !46
  %i.gx = fadd double %i.gu, %i.gw
  store double %i.gx, ptr %i.gt, align 8, !tbaa !46
  %i.gy = add nsw i64 %.06.us7.ph, 1
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader213
  %.06.us7.unr = phi i64 [ %.06.us7.ph, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.preheader213 ], [ %i.gy, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol ]
  %i.gz = icmp eq i64 %2, %.neg260
  br i1 %i.gz, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8

.lr.ph.i.i.i.i.i.i.i.preheader.us.us:             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.preheader, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us
  %.06.us7.us = phi i64 [ %i.ix, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us.preheader ] ; 4 uses
  %i.ha = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us7.us ; 6 uses
  %i.hb = load double, ptr %i.ha, align 8, !tbaa !46
  %i.hc = load double, ptr %i.k, align 8, !tbaa !46
  %i.hd = fmul double %i.hb, %i.hc                ; 2 uses
  br i1 %i.fu, label %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us.us

.lr.ph.i.i.i.i.i.i.i.us.us:                       ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us.us, %.lr.ph.i.i.i.i.i.i.i.us.us
  %.010.i.i.i.i.i.i.i.us.us = phi i64 [ %i.ij, %.lr.ph.i.i.i.i.i.i.i.us.us ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ] ; 6 uses
  %.089.i.i.i.i.i.i.i.us.us = phi double [ %i.ii, %.lr.ph.i.i.i.i.i.i.i.us.us ], [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ]
  %niter248 = phi i64 [ %niter248.next.3, %.lr.ph.i.i.i.i.i.i.i.us.us ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ]
  %i.he = mul nsw i64 %.010.i.i.i.i.i.i.i.us.us, %i.fr
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.he
  %i.hg = load double, ptr %i.hf, align 8, !tbaa !46
  %i.hh = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us.us
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !46
  %i.hj = fmul double %i.hg, %i.hi
  %i.hk = fadd double %.089.i.i.i.i.i.i.i.us.us, %i.hj
  %i.hl = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 1 ; 2 uses
  %i.hm = mul nsw i64 %i.hl, %i.fr
  %i.hn = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.hm
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !46
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.hl
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !46
  %i.hr = fmul double %i.ho, %i.hq
  %i.hs = fadd double %i.hk, %i.hr
  %i.ht = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 2 ; 2 uses
  %i.hu = mul nsw i64 %i.ht, %i.fr
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.hu
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !46
  %i.hx = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ht
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !46
  %i.hz = fmul double %i.hw, %i.hy
  %i.ia = fadd double %i.hs, %i.hz
  %i.ib = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 3 ; 2 uses
  %i.ic = mul nsw i64 %i.ib, %i.fr
  %i.id = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.ic
  %i.ie = load double, ptr %i.id, align 8, !tbaa !46
  %i.if = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ib
  %i.ig = load double, ptr %i.if, align 8, !tbaa !46
  %i.ih = fmul double %i.ie, %i.ig
  %i.ii = fadd double %i.ia, %i.ih                ; 3 uses
  %i.ij = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us, 4 ; 2 uses
  %niter248.next.3 = add i64 %niter248, 4         ; 2 uses
  %niter248.ncmp.3 = icmp eq i64 %niter248.next.3, %unroll_iter247
  br i1 %niter248.ncmp.3, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us.us, !llvm.loop !5

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us
  br i1 %lcmp.mod244.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader:        ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us
  %.010.i.i.i.i.i.i.i.us.us.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ], [ %i.ij, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa ]
  %.089.i.i.i.i.i.i.i.us.us.epil.init = phi double [ %i.hd, %.lr.ph.i.i.i.i.i.i.i.preheader.us.us ], [ %i.ii, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod246)
  br label %.lr.ph.i.i.i.i.i.i.i.us.us.epil

.lr.ph.i.i.i.i.i.i.i.us.us.epil:                  ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.epil, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader
  %.010.i.i.i.i.i.i.i.us.us.epil = phi i64 [ %i.ir, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ], [ %.010.i.i.i.i.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.i.us.us.epil = phi double [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ], [ %.089.i.i.i.i.i.i.i.us.us.epil.init, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader ]
  %epil.iter243 = phi i64 [ %epil.iter243.next, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us.us.epil.preheader ]
  %i.ik = mul nsw i64 %.010.i.i.i.i.i.i.i.us.us.epil, %i.fr
  %i.il = getelementptr inbounds [8 x i8], ptr %i.ha, i64 %i.ik
  %i.im = load double, ptr %i.il, align 8, !tbaa !46
  %i.in = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us.us.epil
  %i.io = load double, ptr %i.in, align 8, !tbaa !46
  %i.ip = fmul double %i.im, %i.io
  %i.iq = fadd double %.089.i.i.i.i.i.i.i.us.us.epil, %i.ip ; 2 uses
  %i.ir = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us.us.epil, 1
  %epil.iter243.next = add i64 %epil.iter243, 1   ; 2 uses
  %epil.iter243.cmp.not = icmp eq i64 %epil.iter243.next, %xtraiter242
  br i1 %epil.iter243.cmp.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us, label %.lr.ph.i.i.i.i.i.i.i.us.us.epil, !llvm.loop !898

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us: ; preds = %.lr.ph.i.i.i.i.i.i.i.us.us.epil, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa
  %.lcssa212 = phi double [ %i.ii, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us.us.unr-lcssa ], [ %i.iq, %.lr.ph.i.i.i.i.i.i.i.us.us.epil ]
  %i.is = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us7.us
  %i.it = fadd double %.lcssa212, 0.000000e+00
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us7.us
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !46
  %i.iw = fadd double %i.it, %i.iv
  store double %i.iw, ptr %i.is, align 8, !tbaa !46
  %i.ix = add nsw i64 %.06.us7.us, 1              ; 2 uses
  %exitcond60.not = icmp eq i64 %i.ix, %2
  br i1 %exitcond60.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.preheader.us.us, !llvm.loop !890

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8
  %.06.us7 = phi i64 [ %i.jr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8 ], [ %.06.us7.unr, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8.prol.loopexit ] ; 5 uses
  %i.iy = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us7
  %i.iz = load double, ptr %i.iy, align 8, !tbaa !46
  %i.ja = load double, ptr %i.k, align 8, !tbaa !46
  %i.jb = fmul double %i.iz, %i.ja
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us7
  %i.jd = fadd double %i.jb, 0.000000e+00
  %i.je = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us7
  %i.jf = load double, ptr %i.je, align 8, !tbaa !46
  %i.jg = fadd double %i.jd, %i.jf
  store double %i.jg, ptr %i.jc, align 8, !tbaa !46
  %i.jh = add nsw i64 %.06.us7, 1                 ; 3 uses
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.jh
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !46
  %i.jk = load double, ptr %i.k, align 8, !tbaa !46
  %i.jl = fmul double %i.jj, %i.jk
  %i.jm = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.jh
  %i.jn = fadd double %i.jl, 0.000000e+00
  %i.jo = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.jh
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !46
  %i.jq = fadd double %i.jn, %i.jp
  store double %i.jq, ptr %i.jm, align 8, !tbaa !46
  %i.jr = add nsw i64 %.06.us7, 2                 ; 2 uses
  %exitcond59.not.1 = icmp eq i64 %i.jr, %2
  br i1 %exitcond59.not.1, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us8, !llvm.loop !899

.lr.ph.split.split:                               ; preds = %.lr.ph.split
  %i.js = load i64, ptr %i.x, align 8, !tbaa !35  ; 10 uses
  br i1 %i.o, label %.lr.ph.i.i.i.i.i.i.i.preheader.us28.preheader, label %.lr.ph.split.split.split

.lr.ph.i.i.i.i.i.i.i.preheader.us28.preheader:    ; preds = %.lr.ph.split.split
  %i.jt = add nsw i64 %i.m, -1                    ; 2 uses
  %i.ju = add nsw i64 %i.m, -2
  %i.jv = add i64 %i.v, -1                        ; 2 uses
  %i.jw = add i64 %i.v, -2
  %xtraiter226 = and i64 %i.jt, 3                 ; 3 uses
  %i.jx = icmp ult i64 %i.ju, 3
  %unroll_iter231 = and i64 %i.jt, -4
  %lcmp.mod228.not = icmp eq i64 %xtraiter226, 0
  %lcmp.mod230 = icmp ne i64 %xtraiter226, 0
  %xtraiter233 = and i64 %i.jv, 3                 ; 3 uses
  %i.jy = icmp ult i64 %i.jw, 3
  %unroll_iter238 = and i64 %i.jv, -4
  %lcmp.mod235.not = icmp eq i64 %xtraiter233, 0
  %lcmp.mod237 = icmp ne i64 %xtraiter233, 0
  br label %.lr.ph.i.i.i.i.i.i.i.preheader.us28

.lr.ph.i.i.i.i.i.i.i.preheader.us28:              ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us28.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23
  %.06.us12 = phi i64 [ %i.nc, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23 ], [ %1, %.lr.ph.i.i.i.i.i.i.i.preheader.us28.preheader ] ; 5 uses
  %i.jz = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us12 ; 6 uses
  %i.ka = load double, ptr %i.jz, align 8, !tbaa !46
  %i.kb = load double, ptr %i.k, align 8, !tbaa !46
  %i.kc = fmul double %i.ka, %i.kb                ; 2 uses
  br i1 %i.jx, label %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader, label %.lr.ph.i.i.i.i.i.i.i.us13

.lr.ph.i.i.i.i.i.i.i.us13:                        ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader.us28, %.lr.ph.i.i.i.i.i.i.i.us13
  %.010.i.i.i.i.i.i.i.us14 = phi i64 [ %i.li, %.lr.ph.i.i.i.i.i.i.i.us13 ], [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us28 ] ; 6 uses
  %.089.i.i.i.i.i.i.i.us15 = phi double [ %i.lh, %.lr.ph.i.i.i.i.i.i.i.us13 ], [ %i.kc, %.lr.ph.i.i.i.i.i.i.i.preheader.us28 ]
  %niter232 = phi i64 [ %niter232.next.3, %.lr.ph.i.i.i.i.i.i.i.us13 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader.us28 ]
  %i.kd = mul nsw i64 %.010.i.i.i.i.i.i.i.us14, %i.fr
  %i.ke = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kd
  %i.kf = load double, ptr %i.ke, align 8, !tbaa !46
  %i.kg = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us14
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !46
  %i.ki = fmul double %i.kf, %i.kh
  %i.kj = fadd double %.089.i.i.i.i.i.i.i.us15, %i.ki
  %i.kk = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us14, 1 ; 2 uses
  %i.kl = mul nsw i64 %i.kk, %i.fr
  %i.km = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kl
  %i.kn = load double, ptr %i.km, align 8, !tbaa !46
  %i.ko = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.kk
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !46
  %i.kq = fmul double %i.kn, %i.kp
  %i.kr = fadd double %i.kj, %i.kq
  %i.ks = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us14, 2 ; 2 uses
  %i.kt = mul nsw i64 %i.ks, %i.fr
  %i.ku = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.kt
  %i.kv = load double, ptr %i.ku, align 8, !tbaa !46
  %i.kw = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.ks
  %i.kx = load double, ptr %i.kw, align 8, !tbaa !46
  %i.ky = fmul double %i.kv, %i.kx
  %i.kz = fadd double %i.kr, %i.ky
  %i.la = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us14, 3 ; 2 uses
  %i.lb = mul nsw i64 %i.la, %i.fr
  %i.lc = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %i.lb
  %i.ld = load double, ptr %i.lc, align 8, !tbaa !46
  %i.le = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.la
  %i.lf = load double, ptr %i.le, align 8, !tbaa !46
  %i.lg = fmul double %i.ld, %i.lf
  %i.lh = fadd double %i.kz, %i.lg                ; 3 uses
  %i.li = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us14, 4 ; 2 uses
  %niter232.next.3 = add i64 %niter232, 4         ; 2 uses
  %niter232.ncmp.3 = icmp eq i64 %niter232.next.3, %unroll_iter231
  br i1 %niter232.ncmp.3, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa, label %.lr.ph.i.i.i.i.i.i.i.us13, !llvm.loop !5

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i.i.us13
  br i1 %lcmp.mod228.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18, label %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader

.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader:         ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa, %.lr.ph.i.i.i.i.i.i.i.preheader.us28
  %.010.i.i.i.i.i.i.i.us15.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.i.i.i.preheader.us28 ], [ %i.li, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa ]
  %.089.i.i.i.i.i.i.i.us16.epil.init = phi double [ %i.kc, %.lr.ph.i.i.i.i.i.i.i.preheader.us28 ], [ %i.lh, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod230)
  br label %.lr.ph.i.i.i.i.i.i.i.us14.epil

.lr.ph.i.i.i.i.i.i.i.us14.epil:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.us14.epil, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader
  %.010.i.i.i.i.i.i.i.us15.epil = phi i64 [ %10, %.lr.ph.i.i.i.i.i.i.i.us14.epil ], [ %.010.i.i.i.i.i.i.i.us15.epil.init, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader ] ; 3 uses
  %.089.i.i.i.i.i.i.i.us16.epil = phi double [ %9, %.lr.ph.i.i.i.i.i.i.i.us14.epil ], [ %.089.i.i.i.i.i.i.i.us16.epil.init, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader ]
  %epil.iter227 = phi i64 [ %epil.iter227.next, %.lr.ph.i.i.i.i.i.i.i.us14.epil ], [ 0, %.lr.ph.i.i.i.i.i.i.i.us14.epil.preheader ]
  %3 = mul nsw i64 %.010.i.i.i.i.i.i.i.us15.epil, %i.fr
  %4 = getelementptr inbounds [8 x i8], ptr %i.jz, i64 %3
  %5 = load double, ptr %4, align 8, !tbaa !46
  %6 = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %.010.i.i.i.i.i.i.i.us15.epil
  %7 = load double, ptr %6, align 8, !tbaa !46
  %8 = fmul double %5, %7
  %9 = fadd double %.089.i.i.i.i.i.i.i.us16.epil, %8 ; 2 uses
  %10 = add nuw nsw i64 %.010.i.i.i.i.i.i.i.us15.epil, 1
  %epil.iter227.next = add i64 %epil.iter227, 1   ; 2 uses
  %epil.iter227.cmp.not = icmp eq i64 %epil.iter227.next, %xtraiter226
  br i1 %epil.iter227.cmp.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18, label %.lr.ph.i.i.i.i.i.i.i.us14.epil, !llvm.loop !900

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18: ; preds = %.lr.ph.i.i.i.i.i.i.i.us14.epil, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa
  %.lcssa216 = phi double [ %i.lh, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18.unr-lcssa ], [ %9, %.lr.ph.i.i.i.i.i.i.i.us14.epil ]
  %11 = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.us12 ; 6 uses
  %12 = load double, ptr %11, align 8, !tbaa !46
  %13 = load double, ptr %i.t, align 8, !tbaa !46
  %14 = fmul double %12, %13                      ; 3 uses
  br i1 %i.y, label %.lr.ph.i.i.i.i3.i.i.i.us23.preheader, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23

.lr.ph.i.i.i.i3.i.i.i.us23.preheader:             ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18
  br i1 %i.jy, label %.lr.ph.i.i.i.i3.i.i.i.us19.epil.preheader, label %.lr.ph.i.i.i.i3.i.i.i.us19

.lr.ph.i.i.i.i3.i.i.i.us19:                       ; preds = %.lr.ph.i.i.i.i3.i.i.i.us23.preheader, %.lr.ph.i.i.i.i3.i.i.i.us19
  %.010.i.i.i.i4.i.i.i.us20 = phi i64 [ %i.mo, %.lr.ph.i.i.i.i3.i.i.i.us19 ], [ 1, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ] ; 6 uses
  %.089.i.i.i.i5.i.i.i.us21 = phi double [ %i.mn, %.lr.ph.i.i.i.i3.i.i.i.us19 ], [ %14, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ]
  %niter239 = phi i64 [ %niter239.next.3, %.lr.ph.i.i.i.i3.i.i.i.us19 ], [ 0, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ]
  %i.lj = mul nsw i64 %.010.i.i.i.i4.i.i.i.us20, %i.js
  %i.lk = getelementptr inbounds [8 x i8], ptr %11, i64 %i.lj
  %i.ll = load double, ptr %i.lk, align 8, !tbaa !46
  %i.lm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us20
  %i.ln = load double, ptr %i.lm, align 8, !tbaa !46
  %i.lo = fmul double %i.ll, %i.ln
  %i.lp = fadd double %.089.i.i.i.i5.i.i.i.us21, %i.lo
  %i.lq = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us20, 1 ; 2 uses
  %i.lr = mul nsw i64 %i.lq, %i.js
  %i.ls = getelementptr inbounds [8 x i8], ptr %11, i64 %i.lr
  %i.lt = load double, ptr %i.ls, align 8, !tbaa !46
  %i.lu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.lq
  %i.lv = load double, ptr %i.lu, align 8, !tbaa !46
  %i.lw = fmul double %i.lt, %i.lv
  %i.lx = fadd double %i.lp, %i.lw
  %i.ly = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us20, 2 ; 2 uses
  %i.lz = mul nsw i64 %i.ly, %i.js
  %i.ma = getelementptr inbounds [8 x i8], ptr %11, i64 %i.lz
  %i.mb = load double, ptr %i.ma, align 8, !tbaa !46
  %i.mc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.ly
  %i.md = load double, ptr %i.mc, align 8, !tbaa !46
  %i.me = fmul double %i.mb, %i.md
  %i.mf = fadd double %i.lx, %i.me
  %i.mg = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us20, 3 ; 2 uses
  %i.mh = mul nsw i64 %i.mg, %i.js
  %i.mi = getelementptr inbounds [8 x i8], ptr %11, i64 %i.mh
  %i.mj = load double, ptr %i.mi, align 8, !tbaa !46
  %i.mk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.mg
  %i.ml = load double, ptr %i.mk, align 8, !tbaa !46
  %i.mm = fmul double %i.mj, %i.ml
  %i.mn = fadd double %i.mf, %i.mm                ; 3 uses
  %i.mo = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us20, 4 ; 2 uses
  %niter239.next.3 = add i64 %niter239, 4         ; 2 uses
  %niter239.ncmp.3 = icmp eq i64 %niter239.next.3, %unroll_iter238
  br i1 %niter239.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i3.i.i.i.us19, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i3.i.i.i.us19
  br i1 %lcmp.mod235.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23, label %.lr.ph.i.i.i.i3.i.i.i.us19.epil.preheader

.lr.ph.i.i.i.i3.i.i.i.us19.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23.loopexit.unr-lcssa, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader
  %.010.i.i.i.i4.i.i.i.us20.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ], [ %i.mo, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23.loopexit.unr-lcssa ]
  %.089.i.i.i.i5.i.i.i.us21.epil.init = phi double [ %14, %.lr.ph.i.i.i.i3.i.i.i.us23.preheader ], [ %i.mn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23.loopexit.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod237)
  br label %.lr.ph.i.i.i.i3.i.i.i.us19.epil

.lr.ph.i.i.i.i3.i.i.i.us19.epil:                  ; preds = %.lr.ph.i.i.i.i3.i.i.i.us19.epil, %.lr.ph.i.i.i.i3.i.i.i.us19.epil.preheader
  %.010.i.i.i.i4.i.i.i.us20.epil = phi i64 [ %i.mw, %.lr.ph.i.i.i.i3.i.i.i.us19.epil ], [ %.010.i.i.i.i4.i.i.i.us20.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us19.epil.preheader ] ; 3 uses
  %.089.i.i.i.i5.i.i.i.us21.epil = phi double [ %i.mv, %.lr.ph.i.i.i.i3.i.i.i.us19.epil ], [ %.089.i.i.i.i5.i.i.i.us21.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us19.epil.preheader ]
  %epil.iter234 = phi i64 [ %epil.iter234.next, %.lr.ph.i.i.i.i3.i.i.i.us19.epil ], [ 0, %.lr.ph.i.i.i.i3.i.i.i.us19.epil.preheader ]
  %i.mp = mul nsw i64 %.010.i.i.i.i4.i.i.i.us20.epil, %i.js
  %i.mq = getelementptr inbounds [8 x i8], ptr %11, i64 %i.mp
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !46
  %i.ms = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us20.epil
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !46
  %i.mu = fmul double %i.mr, %i.mt
  %i.mv = fadd double %.089.i.i.i.i5.i.i.i.us21.epil, %i.mu ; 2 uses
  %i.mw = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us20.epil, 1
  %epil.iter234.next = add i64 %epil.iter234, 1   ; 2 uses
  %epil.iter234.cmp.not = icmp eq i64 %epil.iter234.next, %xtraiter233
  br i1 %epil.iter234.cmp.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23, label %.lr.ph.i.i.i.i3.i.i.i.us19.epil, !llvm.loop !901

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23: ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23.loopexit.unr-lcssa, %.lr.ph.i.i.i.i3.i.i.i.us19.epil, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18
  %.0.i.i2.i.i.i.us24 = phi double [ %14, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.loopexit.us18 ], [ %i.mn, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.us23.loopexit.unr-lcssa ], [ %i.mv, %.lr.ph.i.i.i.i3.i.i.i.us19.epil ]
  %i.mx = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.us12
  %i.my = fadd double %.lcssa216, %.0.i.i2.i.i.i.us24
  %i.mz = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.us12
  %i.na = load double, ptr %i.mz, align 8, !tbaa !46
  %i.nb = fadd double %i.my, %i.na
  store double %i.nb, ptr %i.mx, align 8, !tbaa !46
  %i.nc = add nsw i64 %.06.us12, 1                ; 2 uses
  %exitcond58.not = icmp eq i64 %i.nc, %2
  br i1 %exitcond58.not, label %._crit_edge, label %.lr.ph.i.i.i.i.i.i.i.preheader.us28, !llvm.loop !890

.lr.ph.split.split.split:                         ; preds = %.lr.ph.split.split
  br i1 %i.y, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader: ; preds = %.lr.ph.split.split.split
  %i.nd = add nsw i64 %i.v, -1                    ; 2 uses
  %i.ne = add nsw i64 %i.v, -2
  %xtraiter222 = and i64 %i.nd, 3                 ; 3 uses
  %i.nf = icmp ult i64 %i.ne, 3
  %unroll_iter = and i64 %i.nd, -4
  %lcmp.mod223.not = icmp eq i64 %xtraiter222, 0
  %lcmp.mod225 = icmp ne i64 %xtraiter222, 0
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader: ; preds = %.lr.ph.split.split.split
  %i.ng = sub i64 %2, %1                          ; 3 uses
  %min.iters.check = icmp ult i64 %i.ng, 14
  br i1 %min.iters.check, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader220, label %vector.memcheck

vector.memcheck:                                  ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader
  %i.nh = shl i64 %1, 3                           ; 4 uses
  %scevgep = getelementptr i8, ptr %i.c, i64 %i.nh ; 5 uses
  %i.ni = shl i64 %2, 3                           ; 4 uses
  %scevgep93 = getelementptr i8, ptr %i.c, i64 %i.ni ; 5 uses
  %scevgep94 = getelementptr i8, ptr %i.i, i64 %i.nh
  %scevgep95 = getelementptr i8, ptr %i.i, i64 %i.ni
  %scevgep96 = getelementptr i8, ptr %i.k, i64 8
  %scevgep97 = getelementptr i8, ptr %i.r, i64 %i.nh
  %scevgep98 = getelementptr i8, ptr %i.r, i64 %i.ni
  %scevgep99 = getelementptr i8, ptr %i.t, i64 8
  %scevgep100 = getelementptr i8, ptr %i.aa, i64 %i.nh
  %scevgep101 = getelementptr i8, ptr %i.aa, i64 %i.ni
  %bound0 = icmp ult ptr %scevgep, %scevgep95
  %bound1 = icmp ult ptr %scevgep94, %scevgep93
  %found.conflict = and i1 %bound0, %bound1
  %bound0102 = icmp ult ptr %scevgep, %scevgep96
  %bound1103 = icmp ult ptr %i.k, %scevgep93
  %found.conflict104 = and i1 %bound0102, %bound1103
  %conflict.rdx = or i1 %found.conflict, %found.conflict104
  %bound0105 = icmp ult ptr %scevgep, %scevgep98
  %bound1106 = icmp ult ptr %scevgep97, %scevgep93
  %found.conflict107 = and i1 %bound0105, %bound1106
  %conflict.rdx108 = or i1 %conflict.rdx, %found.conflict107
  %bound0109 = icmp ult ptr %scevgep, %scevgep99
  %bound1110 = icmp ult ptr %i.t, %scevgep93
  %found.conflict111 = and i1 %bound0109, %bound1110
  %conflict.rdx112 = or i1 %conflict.rdx108, %found.conflict111
  %bound0113 = icmp ult ptr %scevgep, %scevgep101
  %bound1114 = icmp ult ptr %scevgep100, %scevgep93
  %found.conflict115 = and i1 %bound0113, %bound1114
  %conflict.rdx116 = or i1 %conflict.rdx112, %found.conflict115
  br i1 %conflict.rdx116, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader220, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.ng, -4                      ; 3 uses
  %i.nj = add i64 %1, %n.vec
  %i.nk = load double, ptr %i.k, align 8, !tbaa !46, !alias.scope !926
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.nk, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nl = load double, ptr %i.t, align 8, !tbaa !46, !alias.scope !927
  %broadcast.splatinsert120 = insertelement <2 x double> poison, double %i.nl, i64 0
  %broadcast.splat121 = shufflevector <2 x double> %broadcast.splatinsert120, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.nm = add i64 %1, %index                      ; 4 uses
  %i.nn = getelementptr inbounds [8 x i8], ptr %i.i, i64 %i.nm ; 2 uses
  %i.no = getelementptr inbounds nuw i8, ptr %i.nn, i64 16
  %wide.load = load <2 x double>, ptr %i.nn, align 8, !tbaa !46, !alias.scope !928
  %wide.load117 = load <2 x double>, ptr %i.no, align 8, !tbaa !46, !alias.scope !928
  %i.np = fmul <2 x double> %wide.load, %broadcast.splat
  %i.nq = fmul <2 x double> %wide.load117, %broadcast.splat
  %i.nr = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.nm ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %i.nr, i64 16
  %wide.load118 = load <2 x double>, ptr %i.nr, align 8, !tbaa !46, !alias.scope !929
  %wide.load119 = load <2 x double>, ptr %i.ns, align 8, !tbaa !46, !alias.scope !929
  %i.nt = fmul <2 x double> %wide.load118, %broadcast.splat121
  %i.nu = fmul <2 x double> %wide.load119, %broadcast.splat121
  %i.nv = getelementptr inbounds [8 x i8], ptr %i.c, i64 %i.nm ; 2 uses
  %i.nw = fadd <2 x double> %i.np, %i.nt
  %i.nx = fadd <2 x double> %i.nq, %i.nu
  %i.ny = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.nm ; 2 uses
  %i.nz = getelementptr inbounds nuw i8, ptr %i.ny, i64 16
  %wide.load122 = load <2 x double>, ptr %i.ny, align 8, !tbaa !46, !alias.scope !930
  %wide.load123 = load <2 x double>, ptr %i.nz, align 8, !tbaa !46, !alias.scope !930
  %i.oa = fadd <2 x double> %i.nw, %wide.load122
  %i.ob = fadd <2 x double> %i.nx, %wide.load123
  %i.oc = getelementptr inbounds nuw i8, ptr %i.nv, i64 16
  store <2 x double> %i.oa, ptr %i.nv, align 8, !tbaa !46, !alias.scope !931, !noalias !932
  store <2 x double> %i.ob, ptr %i.oc, align 8, !tbaa !46, !alias.scope !931, !noalias !932
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.od = icmp eq i64 %index.next, %n.vec
  br i1 %i.od, label %middle.block, label %vector.body, !llvm.loop !909

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.ng, %n.vec
  br i1 %cmp.n, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader220

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader220: ; preds = %vector.memcheck, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader, %middle.block
  %.06.ph = phi i64 [ %1, %vector.memcheck ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader ], [ %i.nj, %middle.block ] ; 8 uses
  %i.oe = sub i64 %2, %.06.ph
  %.neg = add i64 %.06.ph, 1
  %xtraiter = and i64 %i.oe, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader220
  %i.of = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.ph
  %i.og = load double, ptr %i.of, align 8, !tbaa !46
  %i.oh = load double, ptr %i.k, align 8, !tbaa !46
  %i.oi = fmul double %i.og, %i.oh
  %i.oj = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.ph
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !46
  %i.ol = load double, ptr %i.t, align 8, !tbaa !46
  %i.om = fmul double %i.ok, %i.ol
  %i.on = getelementptr inbounds [8 x i8], ptr %i.c, i64 %.06.ph
  %i.oo = fadd double %i.oi, %i.om
  %i.op = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %.06.ph
  %i.oq = load double, ptr %i.op, align 8, !tbaa !46
  %i.or = fadd double %i.oo, %i.oq
  store double %i.or, ptr %i.on, align 8, !tbaa !46
  %i.os = add nsw i64 %.06.ph, 1
  br label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol.loopexit: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader220
  %.06.unr = phi i64 [ %.06.ph, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.preheader220 ], [ %i.os, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.prol ]
  %i.ot = icmp eq i64 %2, %.neg
  br i1 %i.ot, label %._crit_edge, label %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i

_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31: ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40
  %.06.us32 = phi i64 [ %i.qv, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40 ], [ %1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31.preheader ] ; 5 uses
  %i.ou = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.06.us32
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !46
  %i.ow = load double, ptr %i.k, align 8, !tbaa !46
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.r, i64 %.06.us32 ; 6 uses
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !46
  %i.oz = load double, ptr %i.t, align 8, !tbaa !46
  %i.pa = fmul double %i.oy, %i.oz                ; 2 uses
  br i1 %i.nf, label %.lr.ph.i.i.i.i3.i.i.i.us33.epil.preheader, label %.lr.ph.i.i.i.i3.i.i.i.us33

.lr.ph.i.i.i.i3.i.i.i.us33:                       ; preds = %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31, %.lr.ph.i.i.i.i3.i.i.i.us33
  %.010.i.i.i.i4.i.i.i.us34 = phi i64 [ %i.qg, %.lr.ph.i.i.i.i3.i.i.i.us33 ], [ 1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ] ; 6 uses
  %.089.i.i.i.i5.i.i.i.us35 = phi double [ %i.qf, %.lr.ph.i.i.i.i3.i.i.i.us33 ], [ %i.pa, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ]
  %niter = phi i64 [ %niter.next.3, %.lr.ph.i.i.i.i3.i.i.i.us33 ], [ 0, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ]
  %i.pb = mul nsw i64 %.010.i.i.i.i4.i.i.i.us34, %i.js
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.pb
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !46
  %i.pe = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us34
  %i.pf = load double, ptr %i.pe, align 8, !tbaa !46
  %i.pg = fmul double %i.pd, %i.pf
  %i.ph = fadd double %.089.i.i.i.i5.i.i.i.us35, %i.pg
  %i.pi = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us34, 1 ; 2 uses
  %i.pj = mul nsw i64 %i.pi, %i.js
  %i.pk = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.pj
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !46
  %i.pm = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.pi
  %i.pn = load double, ptr %i.pm, align 8, !tbaa !46
  %i.po = fmul double %i.pl, %i.pn
  %i.pp = fadd double %i.ph, %i.po
  %i.pq = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us34, 2 ; 2 uses
  %i.pr = mul nsw i64 %i.pq, %i.js
  %i.ps = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.pr
  %i.pt = load double, ptr %i.ps, align 8, !tbaa !46
  %i.pu = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.pq
  %i.pv = load double, ptr %i.pu, align 8, !tbaa !46
  %i.pw = fmul double %i.pt, %i.pv
  %i.px = fadd double %i.pp, %i.pw
  %i.py = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us34, 3 ; 2 uses
  %i.pz = mul nsw i64 %i.py, %i.js
  %i.qa = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.pz
  %i.qb = load double, ptr %i.qa, align 8, !tbaa !46
  %i.qc = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %i.py
  %i.qd = load double, ptr %i.qc, align 8, !tbaa !46
  %i.qe = fmul double %i.qb, %i.qd
  %i.qf = fadd double %i.px, %i.qe                ; 3 uses
  %i.qg = add nuw nsw i64 %.010.i.i.i.i4.i.i.i.us34, 4 ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40.unr-lcssa, label %.lr.ph.i.i.i.i3.i.i.i.us33, !llvm.loop !5

_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40.unr-lcssa: ; preds = %.lr.ph.i.i.i.i3.i.i.i.us33
  br i1 %lcmp.mod223.not, label %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40, label %.lr.ph.i.i.i.i3.i.i.i.us33.epil.preheader

.lr.ph.i.i.i.i3.i.i.i.us33.epil.preheader:        ; preds = %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40.unr-lcssa, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31
  %.010.i.i.i.i4.i.i.i.us34.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ], [ %i.qg, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40.unr-lcssa ]
  %.089.i.i.i.i5.i.i.i.us35.epil.init = phi double [ %i.pa, %_ZNK5Eigen8internal17product_evaluatorINS_7ProductINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_5BlockIS4_Lin1ELi1ELb1EEELi1EEELi7ENS_10DenseShapeES8_ddE5coeffEl.exit.i.i.i.us31 ], [ %i.qf, %_ZN5Eigen8internal31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEENS2_INS_13CwiseBinaryOpINS0_13scalar_sum_opIddEEKNS8_ISA_KNS_7ProductIS5_S6_Li1EEESD_EEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_9assign_opIddEELi0EE11assignCoeffEl.exit.loopexit.us40.unr-lcssa ]
  tail call void @llvm.assume(i1 %lcmp.mod225)
  br label %.lr.ph.i.i.i.i3.i.i.i.us33.epil

.lr.ph.i.i.i.i3.i.i.i.us33.epil:                  ; preds = %.lr.ph.i.i.i.i3.i.i.i.us33.epil, %.lr.ph.i.i.i.i3.i.i.i.us33.epil.preheader
  %.010.i.i.i.i4.i.i.i.us34.epil = phi i64 [ %i.qo, %.lr.ph.i.i.i.i3.i.i.i.us33.epil ], [ %.010.i.i.i.i4.i.i.i.us34.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us33.epil.preheader ] ; 3 uses
  %.089.i.i.i.i5.i.i.i.us35.epil = phi double [ %i.qn, %.lr.ph.i.i.i.i3.i.i.i.us33.epil ], [ %.089.i.i.i.i5.i.i.i.us35.epil.init, %.lr.ph.i.i.i.i3.i.i.i.us33.epil.preheader ]
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i3.i.i.i.us33.epil ], [ 0, %.lr.ph.i.i.i.i3.i.i.i.us33.epil.preheader ]
  %i.qh = mul nsw i64 %.010.i.i.i.i4.i.i.i.us34.epil, %i.js
  %i.qi = getelementptr inbounds [8 x i8], ptr %i.ox, i64 %i.qh
  %i.qj = load double, ptr %i.qi, align 8, !tbaa !46
  %i.qk = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %.010.i.i.i.i4.i.i.i.us34.epil
  %i.ql = load double, ptr %i.qk, align 8, !tbaa !46
  %i.qm = fmul double %i.qj, %i.ql
  %i.qn = fadd double %.089.i.i.i.i5.i.i.i.us35.epil, %i.qm ; 2 uses
end_hunk_0
