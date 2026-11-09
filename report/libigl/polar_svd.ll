Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/polar_svd?download=true
inline.NumInlined: 18204
inline.NumDeleted: 9109
loop-unroll.NumCompletelyUnrolled: 31
loop-unroll.NumRuntimeUnrolled: 139
loop-unroll.NumUnrolled: 170
begin_hunk_0_@_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi0ELi0EE3runISG_EEdRKSH_RKS3_RKT_:bb.a
  %prol.iter168 = phi i64 [ %prol.iter168.next, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80 ]
  %i.fs = getelementptr [8 x i8], ptr %i.fn, i64 %.05283.i.i.i.i.i.i.i23.us82.prol
  %i.ft = load double, ptr %i.fs, align 8, !tbaa !41
  %i.fu = tail call noundef double @llvm.fabs.f64(double %i.ft)
  %i.fv = fadd double %.182.i.i.i.i.i.i.i24.us83.prol, %i.fu ; 3 uses
  %i.fw = add nsw i64 %.05283.i.i.i.i.i.i.i23.us82.prol, 1 ; 2 uses
  %prol.iter168.next = add i64 %prol.iter168, 1   ; 2 uses
  %prol.iter168.cmp.not = icmp eq i64 %prol.iter168.next, %xtraiter166
  br i1 %prol.iter168.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.us81.prol, !llvm.loop !1326

.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit:      ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us81.prol, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80
  %.lcssa155.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80 ], [ %i.fv, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol ]
  %.05283.i.i.i.i.i.i.i23.us82.unr = phi i64 [ %i.bz, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80 ], [ %i.fw, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol ]
  %.182.i.i.i.i.i.i.i24.us83.unr = phi double [ %i.fr, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80 ], [ %i.fv, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol ]
  br i1 %i.fl, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85, label %.lr.ph85.i.i.i.i.i.i.i22.us81

.lr.ph85.i.i.i.i.i.i.i22.us81:                    ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.us81
  %.05283.i.i.i.i.i.i.i23.us82 = phi i64 [ %i.gq, %.lr.ph85.i.i.i.i.i.i.i22.us81 ], [ %.05283.i.i.i.i.i.i.i23.us82.unr, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.us83 = phi double [ %i.gp, %.lr.ph85.i.i.i.i.i.i.i22.us81 ], [ %.182.i.i.i.i.i.i.i24.us83.unr, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit ]
  %i.fx = getelementptr [8 x i8], ptr %i.fn, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !41
  %i.fz = tail call noundef double @llvm.fabs.f64(double %i.fy)
  %i.ga = fadd double %.182.i.i.i.i.i.i.i24.us83, %i.fz
  %i.gb = getelementptr [8 x i8], ptr %i.fn, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.gc = getelementptr i8, ptr %i.gb, i64 8
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !41
  %i.ge = tail call noundef double @llvm.fabs.f64(double %i.gd)
  %i.gf = fadd double %i.ga, %i.ge
  %i.gg = getelementptr [8 x i8], ptr %i.fn, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.gh = getelementptr i8, ptr %i.gg, i64 16
  %i.gi = load double, ptr %i.gh, align 8, !tbaa !41
  %i.gj = tail call noundef double @llvm.fabs.f64(double %i.gi)
  %i.gk = fadd double %i.gf, %i.gj
  %i.gl = getelementptr [8 x i8], ptr %i.fn, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.gm = getelementptr i8, ptr %i.gl, i64 24
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !41
  %i.go = tail call noundef double @llvm.fabs.f64(double %i.gn)
  %i.gp = fadd double %i.gk, %i.go                ; 2 uses
  %i.gq = add nsw i64 %.05283.i.i.i.i.i.i.i23.us82, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.us84.3 = icmp eq i64 %i.gq, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i25.us84.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85, label %.lr.ph85.i.i.i.i.i.i.i22.us81, !llvm.loop !1323

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us81, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit
  %.lcssa155 = phi double [ %.lcssa155.unr, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit ], [ %i.gp, %.lr.ph85.i.i.i.i.i.i.i22.us81 ] ; 2 uses
  %i.gr = fcmp olt double %.05864.us79, %.lcssa155
  %i.gs = select i1 %i.gr, double %.lcssa155, double %.05864.us79 ; 2 uses
  %i.gt = add nuw nsw i64 %.01765.us78, 1         ; 2 uses
  %exitcond106.not = icmp eq i64 %i.gt, %i.bu
  br i1 %exitcond106.not, label %._crit_edge, label %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80, !llvm.loop !1324

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new
  %.01765 = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %i.hl, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ] ; 3 uses
  %.05864 = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %i.hk, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %niter.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ]
  %i.gu = mul nsw i64 %.01765, %i.c
  %i.gv = getelementptr [8 x i8], ptr %i.cj, i64 %i.gu
  %i.gw = load <2 x i64>, ptr %i.gv, align 1, !tbaa !46
  %i.gx = and <2 x i64> %i.gw, splat (i64 9223372036854775807)
  %i.gy = bitcast <2 x i64> %i.gx to <2 x double>
  %i.gz = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.gy) ; 2 uses
  %i.ha = fcmp olt double %.05864, %i.gz
  %i.hb = select i1 %i.ha, double %i.gz, double %.05864 ; 2 uses
  %i.hc = add nuw nsw i64 %.01765, 1
  %i.hd = mul nsw i64 %i.hc, %i.c
  %i.he = getelementptr [8 x i8], ptr %i.cj, i64 %i.hd
  %i.hf = load <2 x i64>, ptr %i.he, align 1, !tbaa !46
  %i.hg = and <2 x i64> %i.hf, splat (i64 9223372036854775807)
  %i.hh = bitcast <2 x i64> %i.hg to <2 x double>
  %i.hi = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hh) ; 2 uses
  %i.hj = fcmp olt double %i.hb, %i.hi
  %i.hk = select i1 %i.hj, double %i.hi, double %i.hb ; 3 uses
  %i.hl = add nuw nsw i64 %.01765, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit157.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35, !llvm.loop !1324

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us
  %lcmp.mod179.not = icmp eq i64 %xtraiter178, 0
  br i1 %lcmp.mod179.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader
  %.05864.us.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod181 = icmp ne i64 %xtraiter178, 0
  tail call void @llvm.assume(i1 %lcmp.mod181)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader
  %.05864.us.epil = phi double [ %i.hn, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ %.05864.us.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader ]
  %i.hm = fcmp olt double %.05864.us.epil, 0.000000e+00
  %i.hn = select i1 %i.hm, double 0.000000e+00, double %.05864.us.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter178
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, !llvm.loop !1327

._crit_edge.loopexit147.unr-lcssa:                ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader: ; preds = %._crit_edge.loopexit147.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader
  %.01765.us66.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader ], [ %i.cz, %._crit_edge.loopexit147.unr-lcssa ]
  %.05864.us67.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader ], [ %i.cy, %._crit_edge.loopexit147.unr-lcssa ] ; 2 uses
  %lcmp.mod175 = trunc i64 %i.ck to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.ho = mul nsw i64 %.01765.us66.epil.init, %i.c
  %i.hp = getelementptr [8 x i8], ptr %i.cj, i64 %i.ho
  %i.hq = load double, ptr %i.hp, align 8, !tbaa !41
  %i.hr = tail call noundef double @llvm.fabs.f64(double %i.hq) ; 2 uses
  %i.hs = fcmp olt double %.05864.us67.epil.init, %i.hr
  %i.ht = select i1 %i.hs, double %i.hr, double %.05864.us67.epil.init
  br label %._crit_edge

._crit_edge.loopexit157.unr-lcssa:                ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35
  %lcmp.mod163.not = icmp eq i64 %xtraiter162, 0
  br i1 %lcmp.mod163.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader: ; preds = %._crit_edge.loopexit157.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader
  %.01765.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader ], [ %i.hl, %._crit_edge.loopexit157.unr-lcssa ]
  %.05864.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader ], [ %i.hk, %._crit_edge.loopexit157.unr-lcssa ] ; 2 uses
  %lcmp.mod165 = trunc i64 %i.fh to i1
  tail call void @llvm.assume(i1 %lcmp.mod165)
  %i.hu = mul nsw i64 %.01765.epil.init, %i.c
  %i.hv = getelementptr [8 x i8], ptr %i.cj, i64 %i.hu
  %i.hw = load <2 x i64>, ptr %i.hv, align 1, !tbaa !46
  %i.hx = and <2 x i64> %i.hw, splat (i64 9223372036854775807)
  %i.hy = bitcast <2 x i64> %i.hx to <2 x double>
  %i.hz = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hy) ; 2 uses
  %i.ia = fcmp olt double %.05864.epil.init, %i.hz
  %i.ib = select i1 %i.ia, double %i.hz, double %.05864.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader, %._crit_edge.loopexit157.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader, %._crit_edge.loopexit147.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit
  %.058.lcssa = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit ], [ %i.hn, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ %i.ht, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader ], [ %i.ff, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74 ], [ %i.gs, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85 ], [ %i.ci, %._crit_edge.loopexit.unr-lcssa ], [ %i.cy, %._crit_edge.loopexit147.unr-lcssa ], [ %i.hk, %._crit_edge.loopexit157.unr-lcssa ], [ %i.ib, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader ]
  ret double %.058.lcssa
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i64 noundef %6) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.Eigen::internal::evaluator.2355", align 8 ; 10 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.2359", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::restricted_packet_dense_assignment_kernel.2363", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %11 = alloca %"class.Eigen::Ref", align 8       ; 7 uses
  %12 = alloca %"class.Eigen::Ref", align 8       ; 7 uses
  %13 = alloca %"class.Eigen::Ref", align 8       ; 10 uses
  %14 = alloca %"class.Eigen::Ref", align 8       ; 9 uses
  %15 = alloca %"class.Eigen::Ref", align 8       ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #19
  %i.c = icmp eq i64 %3, 0
  %i.d = icmp eq i64 %1, 1
  %i.e = or i1 %i.d, %i.c
  %i.f = select i1 %i.e, i64 %0, i64 %3           ; 12 uses
  store ptr %2, ptr %11, align 8, !tbaa !276
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %0, ptr %i.g, align 8, !tbaa !168
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %1, ptr %i.h, align 8, !tbaa !168
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.f, ptr %i.i, align 8, !tbaa !168
  %.sroa.speculated161 = tail call i64 @llvm.smin.i64(i64 %1, i64 %0) ; 10 uses
  %i.j = icmp slt i64 %.sroa.speculated161, 17
  br i1 %i.j, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.k = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %11, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5)
  br label %.loopexit

bb.c:                                             ; preds = %bb.a
  %i.l = lshr i64 %.sroa.speculated161, 3
  %i.m = and i64 %i.l, 1152921504606846960        ; 2 uses
  %i.n = icmp eq i64 %i.m, 0
  %i.o = select i1 %i.n, i64 8, i64 %i.m          ; 3 uses
  %.sroa.speculated156 = tail call i64 @llvm.smin.i64(i64 %6, i64 %i.o) ; 9 uses
  store i32 0, ptr %5, align 4, !tbaa !191
  %i.p = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.q = getelementptr inbounds nuw i8, ptr %12, i64 16 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %12, i64 24
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 8 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 16
  %i.u = getelementptr inbounds nuw i8, ptr %13, i64 24 ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %14, i64 8
  %i.w = getelementptr inbounds nuw i8, ptr %14, i64 16 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %14, i64 24 ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %15, i64 8 ; 2 uses
  %i.z = getelementptr inbounds nuw i8, ptr %15, i64 16 ; 2 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %15, i64 24 ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.ad = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.ae = getelementptr inbounds nuw i8, ptr %7, i64 40
  %i.af = getelementptr inbounds nuw i8, ptr %7, i64 56
  %i.ag = getelementptr inbounds nuw i8, ptr %7, i64 64
  %i.ah = getelementptr inbounds nuw i8, ptr %8, i64 16
  %i.ai = getelementptr inbounds nuw i8, ptr %9, i64 8
  %i.aj = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ak = getelementptr inbounds nuw i8, ptr %9, i64 24
  %i.al = icmp eq i64 %i.f, 0                     ; 3 uses
  %i.am = shl i64 %.sroa.speculated161, 3
  %16 = mul i64 %.sroa.speculated156, -8
  %17 = shl i64 %i.f, 3
  %scevgep = getelementptr i8, ptr %2, i64 -8
  %i.an = shl i64 %.sroa.speculated156, 3
  %i.ao = shl i64 %.sroa.speculated156, 3
  %i.ap = shl i64 %.sroa.speculated156, 4
  %smin227 = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %6)
  %smin = tail call i64 @llvm.smin.i64(i64 %i.o, i64 %6)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit
  %indvar = phi i64 [ 0, %bb.c ], [ %indvar.next, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 8 uses
  %.053190 = phi i64 [ -1, %bb.c ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 2 uses
  %storemerge187 = phi i64 [ 0, %bb.c ], [ %i.gn, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ] ; 25 uses
  %i.aq = mul i64 %.sroa.speculated156, %indvar
  %i.ar = xor i64 %i.aq, -1
  %i.as = add i64 %.sroa.speculated161, %i.ar
  %i.at = mul i64 %i.ao, %indvar                  ; 2 uses
  %i.au = mul i64 %i.ap, %indvar
  %i.av = getelementptr i8, ptr %2, i64 %i.au
  %scevgep226 = getelementptr i8, ptr %i.av, i64 -8
  %i.aw = mul i64 %.sroa.speculated156, %indvar
  %i.ax = sub i64 %.sroa.speculated161, %i.aw
  %smin228 = call i64 @llvm.smin.i64(i64 %smin227, i64 %i.ax)
  %i.ay = shl i64 %smin228, 3
  %scevgep229 = getelementptr i8, ptr %scevgep226, i64 %i.ay
  %scevgep230 = getelementptr i8, ptr %2, i64 %i.at
  %18 = mul i64 %16, %indvar
  %19 = add i64 %i.am, %18
  %i.az = mul i64 %.sroa.speculated156, %indvar
  %i.ba = sub i64 %.sroa.speculated161, %i.az
  %smin207 = call i64 @llvm.smin.i64(i64 %smin, i64 %i.ba) ; 2 uses
  %20 = add i64 %smin207, %storemerge187          ; 2 uses
  %21 = mul i64 %17, %20                          ; 2 uses
  %22 = add i64 %19, %21
  %23 = shl i64 %smin207, 3
  %24 = sub i64 %22, %23
  %i.bb = mul i64 %i.f, %20
  %i.bc = add i64 %.sroa.speculated161, %i.bb
  %i.bd = shl i64 %i.bc, 3
  %scevgep208 = getelementptr i8, ptr %scevgep, i64 %i.bd
  %i.be = mul i64 %i.an, %indvar
  %scevgep209 = getelementptr i8, ptr %2, i64 %i.be
  %scevgep210 = getelementptr i8, ptr %scevgep209, i64 %21
  %i.bf = sub i64 %.sroa.speculated161, %storemerge187 ; 2 uses
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %.sroa.speculated156, i64 %i.bf) ; 16 uses
  %i.bg = sub nsw i64 %0, %storemerge187          ; 3 uses
  %i.bh = sub nsw i64 %i.bg, %.sroa.speculated    ; 4 uses
  %i.bi = add i64 %.sroa.speculated, %storemerge187 ; 7 uses
  %i.bj = sub i64 %.sroa.speculated161, %i.bi     ; 8 uses
  %i.bk = icmp eq i64 %storemerge187, 1
  %i.bl = or i1 %i.bk, %i.al
  %i.bm = select i1 %i.bl, i64 %0, i64 %i.f       ; 4 uses
  %i.bn = mul nsw i64 %i.f, %i.bi                 ; 3 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bn ; 2 uses
  %i.bp = icmp eq i64 %i.bj, 1
  %i.bq = or i1 %i.bp, %i.al                      ; 3 uses
  %i.br = select i1 %i.bq, i64 %0, i64 %i.f       ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #19
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %storemerge187 ; 2 uses
  %i.bt = mul nsw i64 %i.f, %storemerge187        ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = icmp eq i64 %.sroa.speculated, 1
  %i.bw = or i1 %i.bv, %i.al                      ; 2 uses
  %i.bx = select i1 %i.bw, i64 %.sroa.speculated, i64 %i.f
  store ptr %i.bu, ptr %12, align 8, !tbaa !276
  store i64 %.sroa.speculated, ptr %i.p, align 8, !tbaa !168
  store i64 %.sroa.speculated, ptr %i.q, align 8, !tbaa !168
  store i64 %i.bx, ptr %i.r, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #19
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bn
  %i.bz = select i1 %i.bq, i64 %.sroa.speculated, i64 %i.f
  store ptr %i.by, ptr %13, align 8, !tbaa !276
  store i64 %.sroa.speculated, ptr %i.s, align 8, !tbaa !168
  store i64 %i.bj, ptr %i.t, align 8, !tbaa !168
  store i64 %i.bz, ptr %i.u, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %i.ca = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bt
  %i.cc = select i1 %i.bw, i64 %i.bh, i64 %i.f
  store ptr %i.cb, ptr %14, align 8, !tbaa !276
  store i64 %i.bh, ptr %i.v, align 8, !tbaa !168
  store i64 %.sroa.speculated, ptr %i.w, align 8, !tbaa !168
  store i64 %i.cc, ptr %i.x, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bn
  %i.ce = select i1 %i.bq, i64 %i.bh, i64 %i.f
  store ptr %i.cd, ptr %15, align 8, !tbaa !276
  store i64 %i.bh, ptr %i.y, align 8, !tbaa !168
  store i64 %i.bj, ptr %i.z, align 8, !tbaa !168
  store i64 %i.ce, ptr %i.aa, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #19
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %i.bt
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %storemerge187
  %i.ch = getelementptr inbounds [4 x i8], ptr %4, i64 %storemerge187
  %i.ci = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %i.bg, i64 noundef %.sroa.speculated, ptr noundef nonnull %i.cg, i64 noundef %3, ptr noundef %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 16) ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  %i.ck = icmp eq i64 %.053190, -1
  %or.cond = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = add nsw i64 %i.ci, %storemerge187
  %.1 = select i1 %or.cond, i64 %i.cl, i64 %.053190 ; 2 uses
  %i.cm = load i32, ptr %i.b, align 4, !tbaa !191
  %i.cn = load i32, ptr %5, align 4, !tbaa !191
  %i.co = add nsw i32 %i.cn, %i.cm
  store i32 %i.co, ptr %5, align 4, !tbaa !191
  %i.cp = icmp slt i64 %storemerge187, %i.bi      ; 2 uses
  br i1 %i.cp, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.d
  %i.cq = trunc i64 %storemerge187 to i32         ; 3 uses
  %i.cr = icmp sgt i64 %storemerge187, 0
  br i1 %i.cr, label %.lr.ph.i.i.i.i.i.i.preheader.us.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader

.lr.ph.i.i.i.i.i.i.preheader.us.preheader:        ; preds = %.lr.ph
  %min.iters.check232 = icmp ugt i64 %storemerge187, 5
  %ident.check215.not = icmp eq i64 %i.bm, 1
  %or.cond261 = and i1 %min.iters.check232, %ident.check215.not
  %i.cs = getelementptr i8, ptr %2, i64 %i.at
  %n.vec238 = and i64 %storemerge187, 9223372036854775804 ; 3 uses
  %cmp.n247 = icmp eq i64 %storemerge187, %n.vec238
  %xtraiter = and i64 %storemerge187, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.i.i.i.i.i.i.preheader.us

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader: ; preds = %.lr.ph
  %min.iters.check250 = icmp ult i64 %.sroa.speculated, 8
  br i1 %min.iters.check250, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264, label %vector.ph251

vector.ph251:                                     ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader
  %n.vec252 = and i64 %.sroa.speculated, -8       ; 3 uses
  %i.ct = add i64 %storemerge187, %n.vec252
  %broadcast.splatinsert = insertelement <4 x i32> poison, i32 %i.cq, i64 0
  %broadcast.splat = shufflevector <4 x i32> %broadcast.splatinsert, <4 x i32> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.cu = getelementptr [4 x i8], ptr %4, i64 %storemerge187
  br label %vector.body253

vector.body253:                                   ; preds = %vector.body253, %vector.ph251
  %index254 = phi i64 [ 0, %vector.ph251 ], [ %index.next257, %vector.body253 ] ; 2 uses
  %i.cv = getelementptr [4 x i8], ptr %i.cu, i64 %index254 ; 3 uses
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cv, i64 16 ; 2 uses
  %wide.load255 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !191
  %wide.load256 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !191
  %i.cx = add nsw <4 x i32> %wide.load255, %broadcast.splat
  %i.cy = add nsw <4 x i32> %wide.load256, %broadcast.splat
  store <4 x i32> %i.cx, ptr %i.cv, align 4, !tbaa !191
  store <4 x i32> %i.cy, ptr %i.cw, align 4, !tbaa !191
  %index.next257 = add nuw i64 %index254, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.cz, label %middle.block258, label %vector.body253, !llvm.loop !1332

middle.block258:                                  ; preds = %vector.body253
  %cmp.n259 = icmp eq i64 %.sroa.speculated, %n.vec252
  br i1 %cmp.n259, label %._crit_edge, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader, %middle.block258
  %.052183.ph = phi i64 [ %storemerge187, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader ], [ %i.ct, %middle.block258 ]
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us
  %.052183.us = phi i64 [ %i.eg, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us ], [ %storemerge187, %.lr.ph.i.i.i.i.i.i.preheader.us.preheader ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.052183.us ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !191
  %i.dc = add nsw i32 %i.db, %i.cq                ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !191
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %.052183.us ; 4 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %2, i64 %i.dd ; 5 uses
  br i1 %or.cond261, label %vector.memcheck233, label %.lr.ph.i.i.i.i.i.i.us.preheader

vector.memcheck233:                               ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us
  %i.dg = shl nsw i64 %i.dd, 3
  %i.dh = getelementptr i8, ptr %i.cs, i64 %i.dg
  %bound0234 = icmp ult ptr %scevgep230, %i.dh
  %bound1235 = icmp ult ptr %i.df, %scevgep229
  %found.conflict236 = and i1 %bound0234, %bound1235
  br i1 %found.conflict236, label %.lr.ph.i.i.i.i.i.i.us.preheader, label %vector.body239

vector.body239:                                   ; preds = %vector.memcheck233, %vector.body239
  %index240 = phi i64 [ %index.next245, %vector.body239 ], [ 0, %vector.memcheck233 ] ; 3 uses
  %i.di = getelementptr inbounds [8 x i8], ptr %i.de, i64 %index240 ; 3 uses
  %i.dj = getelementptr inbounds [8 x i8], ptr %i.df, i64 %index240 ; 3 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %i.di, i64 16 ; 2 uses
  %wide.load241 = load <2 x double>, ptr %i.di, align 8, !tbaa !41, !alias.scope !1347, !noalias !1348
  %wide.load242 = load <2 x double>, ptr %i.dk, align 8, !tbaa !41, !alias.scope !1347, !noalias !1348
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load243 = load <2 x double>, ptr %i.dj, align 8, !tbaa !41, !alias.scope !1348
  %wide.load244 = load <2 x double>, ptr %i.dl, align 8, !tbaa !41, !alias.scope !1348
  store <2 x double> %wide.load243, ptr %i.di, align 8, !tbaa !41, !alias.scope !1347, !noalias !1348
  store <2 x double> %wide.load244, ptr %i.dk, align 8, !tbaa !41, !alias.scope !1347, !noalias !1348
  store <2 x double> %wide.load241, ptr %i.dj, align 8, !tbaa !41, !alias.scope !1348
  store <2 x double> %wide.load242, ptr %i.dl, align 8, !tbaa !41, !alias.scope !1348
  %index.next245 = add nuw i64 %index240, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.dm, label %middle.block246, label %vector.body239, !llvm.loop !1336

middle.block246:                                  ; preds = %vector.body239
  br i1 %cmp.n247, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us, label %.lr.ph.i.i.i.i.i.i.us.preheader

.lr.ph.i.i.i.i.i.i.us.preheader:                  ; preds = %vector.memcheck233, %.lr.ph.i.i.i.i.i.i.preheader.us, %middle.block246
  %.05.i.i.i.i.i.i.us.ph = phi i64 [ 0, %vector.memcheck233 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader.us ], [ %n.vec238, %middle.block246 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.us.ph, 1
  br i1 %lcmp.mod.not, label %.lr.ph.i.i.i.i.i.i.us.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.us.prol

.lr.ph.i.i.i.i.i.i.us.prol:                       ; preds = %.lr.ph.i.i.i.i.i.i.us.preheader
  %i.dn = mul nsw i64 %.05.i.i.i.i.i.i.us.ph, %i.bm ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.dn ; 2 uses
  %i.dp = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.dn ; 2 uses
  %i.dq = load double, ptr %i.do, align 8, !tbaa !41
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !41
  store double %i.dr, ptr %i.do, align 8, !tbaa !41
  store double %i.dq, ptr %i.dp, align 8, !tbaa !41
  %i.ds = or disjoint i64 %.05.i.i.i.i.i.i.us.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.us.prol.loopexit

.lr.ph.i.i.i.i.i.i.us.prol.loopexit:              ; preds = %.lr.ph.i.i.i.i.i.i.us.prol, %.lr.ph.i.i.i.i.i.i.us.preheader
  %.05.i.i.i.i.i.i.us.unr = phi i64 [ %.05.i.i.i.i.i.i.us.ph, %.lr.ph.i.i.i.i.i.i.us.preheader ], [ %i.ds, %.lr.ph.i.i.i.i.i.i.us.prol ]
  %i.dt = icmp eq i64 %storemerge187, %.neg
  br i1 %i.dt, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us, label %.lr.ph.i.i.i.i.i.i.us

.lr.ph.i.i.i.i.i.i.us:                            ; preds = %.lr.ph.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.us
  %.05.i.i.i.i.i.i.us = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i.us ], [ %.05.i.i.i.i.i.i.us.unr, %.lr.ph.i.i.i.i.i.i.us.prol.loopexit ] ; 3 uses
  %i.du = mul nsw i64 %.05.i.i.i.i.i.i.us, %i.bm  ; 2 uses
  %i.dv = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.du ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.du ; 2 uses
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !41
  %i.dy = load double, ptr %i.dw, align 8, !tbaa !41
  store double %i.dy, ptr %i.dv, align 8, !tbaa !41
  store double %i.dx, ptr %i.dw, align 8, !tbaa !41
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.us, 1
  %i.ea = mul nsw i64 %i.dz, %i.bm                ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ea ; 2 uses
  %i.ed = load double, ptr %i.eb, align 8, !tbaa !41
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !41
  store double %i.ee, ptr %i.eb, align 8, !tbaa !41
  store double %i.ed, ptr %i.ec, align 8, !tbaa !41
  %i.ef = add nuw nsw i64 %.05.i.i.i.i.i.i.us, 2  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.us.1 = icmp eq i64 %i.ef, %storemerge187
  br i1 %exitcond.not.i.i.i.i.i.i.us.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !1337

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.us, %middle.block246
  %i.eg = add nuw nsw i64 %.052183.us, 1          ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.bi
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i.preheader.us, label %._crit_edge, !llvm.loop !1338

._crit_edge:                                      ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us, %middle.block258, %bb.d
  %.not = icmp eq i64 %i.bg, %.sroa.speculated
  br i1 %.not, label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, label %.preheader

.preheader:                                       ; preds = %._crit_edge
  %i.ei = icmp sgt i64 %i.bj, 0
  %or.cond191 = and i1 %i.cp, %i.ei
  br i1 %or.cond191, label %.lr.ph.i.i.i.i.i.i59.preheader.preheader, label %._crit_edge186.split

.lr.ph.i.i.i.i.i.i59.preheader.preheader:         ; preds = %.preheader
  %min.iters.check = icmp ugt i64 %i.bj, 5
  %ident.check.not = icmp eq i64 %i.br, 1
  %or.cond262 = select i1 %min.iters.check, i1 %ident.check.not, i1 false
  %25 = getelementptr i8, ptr %2, i64 %24
  %n.vec = and i64 %i.bj, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  %i.ej = sub i64 %i.bf, %.sroa.speculated
  %xtraiter266 = and i64 %i.ej, 1
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br label %.lr.ph.i.i.i.i.i.i59.preheader

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit
  %.052183 = phi i64 [ %i.en, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit ], [ %.052183.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264 ] ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %4, i64 %.052183 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !191
  %i.em = add nsw i32 %i.el, %i.cq
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !191
  %i.en = add nsw i64 %.052183, 1                 ; 2 uses
  %i.eo = icmp slt i64 %i.en, %i.bi
  br i1 %i.eo, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %._crit_edge, !llvm.loop !1339

._crit_edge186.split:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, %.preheader
  %i.ep = load i64, ptr %i.q, align 8, !tbaa !168
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge186.split
  call void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
  br label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge186.split, %bb.e
  %i.er = load i64, ptr %i.s, align 8, !tbaa !168 ; 2 uses
  %i.es = load i64, ptr %i.y, align 8, !tbaa !168
  %i.et = add nsw i64 %i.es, %i.er
  %i.eu = load i64, ptr %i.z, align 8, !tbaa !168
  %i.ev = add nsw i64 %i.et, %i.eu
  %i.ew = icmp slt i64 %i.ev, 20
  %i.ex = icmp sgt i64 %i.er, 0
  %or.cond.i.i.i.i = and i1 %i.ex, %i.ew
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr %14, ptr %7, align 8, !tbaa !1349
  store ptr %13, ptr %i.ab, align 8, !tbaa !1349
  %i.ey = load ptr, ptr %14, align 8, !tbaa !276
  store ptr %i.ey, ptr %i.ac, align 8, !tbaa !279
  %i.ez = load i64, ptr %i.x, align 8, !tbaa !168
  store i64 %i.ez, ptr %i.ad, align 8, !tbaa !168
  %i.fa = load ptr, ptr %13, align 8, !tbaa !276
  store ptr %i.fa, ptr %i.ae, align 8, !tbaa !279
  %i.fb = load i64, ptr %i.u, align 8, !tbaa !168
  store i64 %i.fb, ptr %i.af, align 8, !tbaa !168
  %i.fc = load i64, ptr %i.w, align 8, !tbaa !168
  store i64 %i.fc, ptr %i.ag, align 8, !tbaa !282
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  %i.fd = load ptr, ptr %15, align 8, !tbaa !276
  store ptr %i.fd, ptr %8, align 8, !tbaa !279
  %i.fe = load i64, ptr %i.aa, align 8, !tbaa !168
  store i64 %i.fe, ptr %i.ah, align 8, !tbaa !168
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr %8, ptr %9, align 8, !tbaa !1350
  store ptr %7, ptr %i.ai, align 8, !tbaa !1351
  store ptr %10, ptr %i.aj, align 8, !tbaa !1352
  store ptr %15, ptr %i.ak, align 8, !tbaa !1349
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

bb.g:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !41
  call void @_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.i59.preheader.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit
  %.0184 = phi i64 [ %i.gl, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit ], [ %storemerge187, %.lr.ph.i.i.i.i.i.i59.preheader.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.0184 ; 4 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %4, i64 %.0184
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !191
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.fi ; 5 uses
  br i1 %or.cond262, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i59.preheader263

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i59.preheader
  %i.fk = shl nsw i64 %i.fi, 3
  %i.fl = getelementptr i8, ptr %25, i64 %i.fk
  %bound0 = icmp ult ptr %scevgep210, %i.fl
  %bound1 = icmp ult ptr %i.fj, %scevgep208
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i59.preheader263, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %index ; 3 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %index ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !41, !alias.scope !1353, !noalias !1354
  %wide.load211 = load <2 x double>, ptr %i.fo, align 8, !tbaa !41, !alias.scope !1353, !noalias !1354
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.fn, align 8, !tbaa !41, !alias.scope !1354
  %wide.load213 = load <2 x double>, ptr %i.fp, align 8, !tbaa !41, !alias.scope !1354
  store <2 x double> %wide.load212, ptr %i.fm, align 8, !tbaa !41, !alias.scope !1353, !noalias !1354
  store <2 x double> %wide.load213, ptr %i.fo, align 8, !tbaa !41, !alias.scope !1353, !noalias !1354
  store <2 x double> %wide.load, ptr %i.fn, align 8, !tbaa !41, !alias.scope !1354
  store <2 x double> %wide.load211, ptr %i.fp, align 8, !tbaa !41, !alias.scope !1354
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !1343

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59.preheader263

.lr.ph.i.i.i.i.i.i59.preheader263:                ; preds = %vector.memcheck, %.lr.ph.i.i.i.i.i.i59.preheader, %middle.block
  %.05.i.i.i.i.i.i60.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %.lr.ph.i.i.i.i.i.i59.preheader ], [ %n.vec, %middle.block ] ; 4 uses
  %i.fr = add i64 %.sroa.speculated, %.05.i.i.i.i.i.i60.ph
  br i1 %lcmp.mod267.not, label %.lr.ph.i.i.i.i.i.i59.prol.loopexit, label %.lr.ph.i.i.i.i.i.i59.prol

.lr.ph.i.i.i.i.i.i59.prol:                        ; preds = %.lr.ph.i.i.i.i.i.i59.preheader263
  %i.fs = mul nsw i64 %.05.i.i.i.i.i.i60.ph, %i.br ; 2 uses
  %i.ft = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fs ; 2 uses
  %i.fu = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fs ; 2 uses
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !41
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !41
  store double %i.fw, ptr %i.ft, align 8, !tbaa !41
  store double %i.fv, ptr %i.fu, align 8, !tbaa !41
  %i.fx = or disjoint i64 %.05.i.i.i.i.i.i60.ph, 1
  br label %.lr.ph.i.i.i.i.i.i59.prol.loopexit

.lr.ph.i.i.i.i.i.i59.prol.loopexit:               ; preds = %.lr.ph.i.i.i.i.i.i59.prol, %.lr.ph.i.i.i.i.i.i59.preheader263
  %.05.i.i.i.i.i.i60.unr = phi i64 [ %.05.i.i.i.i.i.i60.ph, %.lr.ph.i.i.i.i.i.i59.preheader263 ], [ %i.fx, %.lr.ph.i.i.i.i.i.i59.prol ]
  %i.fy = icmp eq i64 %i.as, %i.fr
  br i1 %i.fy, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59

.lr.ph.i.i.i.i.i.i59:                             ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59
  %.05.i.i.i.i.i.i60 = phi i64 [ %i.gk, %.lr.ph.i.i.i.i.i.i59 ], [ %.05.i.i.i.i.i.i60.unr, %.lr.ph.i.i.i.i.i.i59.prol.loopexit ] ; 3 uses
  %i.fz = mul nsw i64 %.05.i.i.i.i.i.i60, %i.br   ; 2 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.fz ; 2 uses
  %i.gb = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.fz ; 2 uses
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !41
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !41
  store double %i.gd, ptr %i.ga, align 8, !tbaa !41
  store double %i.gc, ptr %i.gb, align 8, !tbaa !41
  %i.ge = add nuw nsw i64 %.05.i.i.i.i.i.i60, 1
  %i.gf = mul nsw i64 %i.ge, %i.br                ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.gf ; 2 uses
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !41
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !41
  store double %i.gj, ptr %i.gg, align 8, !tbaa !41
  store double %i.gi, ptr %i.gh, align 8, !tbaa !41
  %i.gk = add nuw nsw i64 %.05.i.i.i.i.i.i60, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i61.1 = icmp eq i64 %i.gk, %i.bj
  br i1 %exitcond.not.i.i.i.i.i.i61.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59, !llvm.loop !1344

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59, %middle.block
  %i.gl = add nsw i64 %.0184, 1                   ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.bi
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i59.preheader, label %._crit_edge186.split, !llvm.loop !1345

_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %bb.g, %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  %i.gn = add nsw i64 %storemerge187, %.sroa.speculated156 ; 2 uses
  %i.go = icmp slt i64 %i.gn, %.sroa.speculated161
  %indvar.next = add i64 %indvar, 1
  br i1 %i.go, label %bb.d, label %.loopexit, !llvm.loop !1346

.loopexit:                                        ; preds = %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, %bb.b
  %.051 = phi i64 [ %i.k, %bb.b ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  ret i64 %.051
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !168  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !168  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !191
  %i.e = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.e, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.g = add nsw i64 %i.b, -1
  %i.h = add i64 %i.b, 4294967295
  %i.i = add i64 %i.b, 4294967295
  %i.j = add i64 %i.b, -2
  br label %bb.b

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, %bb.a
  %.0.lcssa = phi i64 [ -1, %bb.a ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ]
  ret i64 %.0.lcssa

bb.b:                                             ; preds = %.lr.ph, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit
  %.0170 = phi i64 [ -1, %.lr.ph ], [ %.1, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 5 uses
  %.043169 = phi i64 [ 0, %.lr.ph ], [ %i.jk, %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit ] ; 21 uses
  %i.k = xor i64 %.043169, -1
  %i.l = add i64 %i.b, %i.k                       ; 3 uses
  %i.m = shl i64 %.043169, 3
  %i.n = sub i64 %i.i, %.043169
  %i.o = shl i64 %i.n, 32
  %i.p = ashr exact i64 %i.o, 29                  ; 2 uses
  %i.q = shl i64 %.043169, 3
  %i.r = sub i64 %i.h, %.043169
  %i.s = shl i64 %i.r, 32
  %i.t = ashr exact i64 %i.s, 29                  ; 2 uses
  %i.u = xor i64 %.043169, -1                     ; 2 uses
  %i.v = add i64 %i.b, %i.u                       ; 3 uses
  %i.w = add i64 %i.d, %i.u
  %i.x = load ptr, ptr %0, align 8, !tbaa !276, !noalias !1393 ; 5 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !168, !noalias !1393 ; 5 uses
  %i.z = mul nsw i64 %i.y, %.043169
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %i.z ; 3 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !168, !noalias !1393 ; 2 uses
  %i.ac = sub nsw i64 %i.b, %.043169              ; 2 uses
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad ; 4 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !41 ; 2 uses
  %i.ag = icmp sgt i64 %i.ac, 1
  br i1 %i.ag, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread

.lr.ph.i.i.i.i.preheader:                         ; preds = %bb.b
  %i.ah = tail call noundef double @llvm.fabs.f64(double %i.af) ; 4 uses
  %xtraiter = and i64 %i.l, 1
  %i.ai = icmp eq i64 %i.j, %.043169
  br i1 %i.ai, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.l, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.ah, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02125.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.av, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.aj = phi double [ %i.ah, %.lr.ph.i.i.i.i.preheader.new ], [ %i.au, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.ak = getelementptr [8 x i8], ptr %i.ae, i64 %.02125.i.i.i.i
  %i.al = load double, ptr %i.ak, align 8, !tbaa !41
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al) ; 3 uses
  %i.an = fcmp ogt double %i.am, %i.aj            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.an, i64 %.02125.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.an, double %i.am, double %.sroa.7.0.i.i
  %i.ao = select i1 %i.an, double %i.am, double %i.aj ; 2 uses
  %i.ap = add nuw nsw i64 %.02125.i.i.i.i, 1      ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !41
  %i.as = tail call noundef double @llvm.fabs.f64(double %i.ar) ; 3 uses
  %i.at = fcmp ogt double %i.as, %i.ao            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.at, i64 %i.ap, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.at, double %i.as, double %.sroa.7.1.i.i ; 3 uses
  %i.au = select i1 %i.at, double %i.as, double %i.ao ; 2 uses
  %i.av = add nuw nsw i64 %.02125.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1357

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.ah, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02125.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.av, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.ah, %.lr.ph.i.i.i.i.preheader ], [ %i.au, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod279 = trunc i64 %i.l to i1
  tail call void @llvm.assume(i1 %lcmp.mod279)
  %i.aw = getelementptr [8 x i8], ptr %i.ae, i64 %.02125.i.i.i.i.epil.init
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !41
  %i.ay = tail call noundef double @llvm.fabs.f64(double %i.ax) ; 2 uses
  %i.az = fcmp ogt double %i.ay, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.az, i64 %.02125.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.az, double %i.ay, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
end_hunk_0
begin_hunk_1_@_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi:bb.a
  %index.next268 = add nuw i64 %index263, 4       ; 2 uses
  %i.bv = icmp eq i64 %index.next268, %n.vec261
  br i1 %i.bv, label %middle.block269, label %vector.body262, !llvm.loop !1363

middle.block269:                                  ; preds = %vector.body262
  %cmp.n270 = icmp eq i64 %i.bi, %n.vec261
  br i1 %cmp.n270, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i.preheader276

.lr.ph.i.i.i.i.i.i.preheader276:                  ; preds = %vector.memcheck256, %.lr.ph.i.i.i.i.i.i.preheader, %middle.block269
  %.05.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck256 ], [ 0, %.lr.ph.i.i.i.i.i.i.preheader ], [ %n.vec261, %middle.block269 ] ; 4 uses
  %.neg = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  %xtraiter280 = and i64 %i.bi, 1
  %lcmp.mod281.not = icmp eq i64 %xtraiter280, 0
  br i1 %lcmp.mod281.not, label %.lr.ph.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.prol:                          ; preds = %.lr.ph.i.i.i.i.i.i.preheader276
  %i.bw = mul nsw i64 %.05.i.i.i.i.i.i.ph, %i.y   ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.bw ; 2 uses
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.bw ; 2 uses
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !41
  %i.ca = load double, ptr %i.by, align 8, !tbaa !41
  store double %i.ca, ptr %i.bx, align 8, !tbaa !41
  store double %i.bz, ptr %i.by, align 8, !tbaa !41
  %i.cb = or disjoint i64 %.05.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.prol.loopexit:                 ; preds = %.lr.ph.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.preheader276
  %.05.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.preheader276 ], [ %i.cb, %.lr.ph.i.i.i.i.i.i.prol ]
  %i.cc = icmp eq i64 %i.bi, %.neg
  br i1 %i.cc, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i:                               ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i
  %.05.i.i.i.i.i.i = phi i64 [ %i.co, %.lr.ph.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.prol.loopexit ] ; 3 uses
  %i.cd = mul nsw i64 %.05.i.i.i.i.i.i, %i.y      ; 2 uses
  %i.ce = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cd ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cd ; 2 uses
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !41
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !41
  store double %i.ch, ptr %i.ce, align 8, !tbaa !41
  store double %i.cg, ptr %i.cf, align 8, !tbaa !41
  %i.ci = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cj = mul nsw i64 %i.ci, %i.y                 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cj ; 2 uses
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !41
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !41
  store double %i.cn, ptr %i.ck, align 8, !tbaa !41
  store double %i.cm, ptr %i.cl, align 8, !tbaa !41
  %i.co = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.co, %i.bi
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1364

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block269, %bb.d
  %i.cp = load i32, ptr %2, align 4, !tbaa !191
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %2, align 4, !tbaa !191
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.cr = getelementptr [8 x i8], ptr %i.aa, i64 %.043169
  %sext = shl i64 %i.v, 32
  %i.cs = ashr exact i64 %sext, 32                ; 7 uses
  %i.ct = sub nsw i64 %i.ab, %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ct ; 6 uses
  %i.cv = load double, ptr %i.cr, align 8, !tbaa !41, !noalias !1397 ; 5 uses
  %i.cw = ptrtoint ptr %i.cu to i64               ; 2 uses
  %i.cx = and i64 %i.cw, 7
  %.not.i.i.i.i.i.i.i = icmp eq i64 %i.cx, 0
  br i1 %.not.i.i.i.i.i.i.i, label %bb.e, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

bb.e:                                             ; preds = %.thread
  %i.cy = lshr exact i64 %i.cw, 3
  %i.cz = and i64 %i.cy, 1
  %i.da = tail call i64 @llvm.smin.i64(i64 %i.cz, i64 %i.cs)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i: ; preds = %bb.e, %.thread
  %.0.i.i.i.i.i.i.i = phi i64 [ %i.da, %bb.e ], [ %i.cs, %.thread ] ; 9 uses
  %i.db = sub nsw i64 %i.cs, %.0.i.i.i.i.i.i.i    ; 2 uses
  %i.dc = sdiv i64 %i.db, 2
  %i.dd = shl nsw i64 %i.dc, 1                    ; 2 uses
  %i.de = add nsw i64 %i.dd, %.0.i.i.i.i.i.i.i    ; 5 uses
  %i.df = icmp sgt i64 %.0.i.i.i.i.i.i.i, 0
  br i1 %i.df, label %.lr.ph.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.preheader:                   ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %min.iters.check235 = icmp eq i64 %.0.i.i.i.i.i.i.i, 1
  br i1 %min.iters.check235, label %.lr.ph.i.i.i.i.i.i.i.preheader275, label %vector.ph236

vector.ph236:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader
  %n.vec237 = and i64 %.0.i.i.i.i.i.i.i, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert238 = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat239 = shufflevector <2 x double> %broadcast.splatinsert238, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body240

vector.body240:                                   ; preds = %vector.body240, %vector.ph236
  %index241 = phi i64 [ 0, %vector.ph236 ], [ %index.next243, %vector.body240 ] ; 2 uses
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %index241 ; 2 uses
  %wide.load242 = load <2 x double>, ptr %i.dg, align 8, !tbaa !41
  %i.dh = fdiv <2 x double> %wide.load242, %broadcast.splat239
  store <2 x double> %i.dh, ptr %i.dg, align 8, !tbaa !41
  %index.next243 = add nuw i64 %index241, 2       ; 2 uses
  %i.di = icmp eq i64 %index.next243, %n.vec237
  br i1 %i.di, label %middle.block244, label %vector.body240, !llvm.loop !1367

middle.block244:                                  ; preds = %vector.body240
  %cmp.n245 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec237
  br i1 %cmp.n245, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader275

.lr.ph.i.i.i.i.i.i.i.preheader275:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block244
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec237, %middle.block244 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader275, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader275 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !41
  %i.dl = fdiv double %i.dk, %i.cv
  store double %i.dl, ptr %i.dj, align 8, !tbaa !41
  %i.dm = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.dm, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1368

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i, %middle.block244, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i
  %i.dn = icmp sgt i64 %i.db, 1
  br i1 %i.dn, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.do = insertelement <2 x double> poison, double %i.cv, i64 0
  %i.dp = shufflevector <2 x double> %i.do, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i44

._crit_edge.i.i.i.i.i.i:                          ; preds = %.lr.ph.i.i.i.i.i.i44, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.dq = icmp slt i64 %i.de, %i.cs
  br i1 %i.dq, label %.lr.ph.i17.i.i.i.i.i.i.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i.preheader:                 ; preds = %._crit_edge.i.i.i.i.i.i
  %i.dr = add i64 %.0.i.i.i.i.i.i.i, %i.dd
  %i.ds = sub i64 %i.cs, %i.dr                    ; 3 uses
  %min.iters.check222 = icmp ult i64 %i.ds, 2
  br i1 %min.iters.check222, label %.lr.ph.i17.i.i.i.i.i.i.preheader274, label %vector.ph223

vector.ph223:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader
  %n.vec224 = and i64 %i.ds, -2                   ; 3 uses
  %i.dt = add i64 %i.de, %n.vec224
  %broadcast.splatinsert225 = insertelement <2 x double> poison, double %i.cv, i64 0
  %broadcast.splat226 = shufflevector <2 x double> %broadcast.splatinsert225, <2 x double> poison, <2 x i32> zeroinitializer
  %i.du = getelementptr [8 x i8], ptr %i.cu, i64 %i.de
  br label %vector.body227

vector.body227:                                   ; preds = %vector.body227, %vector.ph223
  %index228 = phi i64 [ 0, %vector.ph223 ], [ %index.next230, %vector.body227 ] ; 2 uses
  %i.dv = getelementptr [8 x i8], ptr %i.du, i64 %index228 ; 2 uses
  %wide.load229 = load <2 x double>, ptr %i.dv, align 8, !tbaa !41
  %i.dw = fdiv <2 x double> %wide.load229, %broadcast.splat226
  store <2 x double> %i.dw, ptr %i.dv, align 8, !tbaa !41
  %index.next230 = add nuw i64 %index228, 2       ; 2 uses
  %i.dx = icmp eq i64 %index.next230, %n.vec224
  br i1 %i.dx, label %middle.block231, label %vector.body227, !llvm.loop !1369

middle.block231:                                  ; preds = %vector.body227
  %cmp.n232 = icmp eq i64 %i.ds, %n.vec224
  br i1 %cmp.n232, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader274

.lr.ph.i17.i.i.i.i.i.i.preheader274:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block231
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.de, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dt, %middle.block231 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader274, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader274 ] ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !41
  %i.ea = fdiv double %i.dz, %i.cv
  store double %i.ea, ptr %i.dy, align 8, !tbaa !41
  %i.eb = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.eb, %i.cs
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1370

.lr.ph.i.i.i.i.i.i44:                             ; preds = %.lr.ph.i.i.i.i.i.i44, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ed = load <2 x double>, ptr %i.ec, align 16, !tbaa !46
  %i.ee = fdiv <2 x double> %i.ed, %i.dp
  store <2 x double> %i.ee, ptr %i.ec, align 16, !tbaa !46
  %i.ef = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %i.de
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i44, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1371

bb.f:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.eh = icmp eq i64 %.0170, -1
  %spec.select = select i1 %i.eh, i64 %.043169, i64 %.0170
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block231, %._crit_edge.i.i.i.i.i.i, %bb.f
  %.1 = phi i64 [ %spec.select, %bb.f ], [ %.0170, %._crit_edge.i.i.i.i.i.i ], [ %.0170, %middle.block231 ], [ %.0170, %.lr.ph.i17.i.i.i.i.i.i ] ; 2 uses
  %i.ei = icmp slt i64 %.043169, %i.g
  br i1 %i.ei, label %bb.g, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.ej = load ptr, ptr %0, align 8, !tbaa !276, !noalias !1398 ; 9 uses
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !168, !noalias !1398 ; 7 uses
  %i.el = mul i64 %i.ek, %.043169
  %i.em = getelementptr [8 x i8], ptr %i.ej, i64 %i.el
  %i.en = load i64, ptr %i.a, align 8, !tbaa !168, !noalias !1398 ; 3 uses
  %i.eo = shl i64 %i.v, 32
  %i.ep = ashr exact i64 %i.eo, 32                ; 8 uses
  %i.eq = sub i64 %i.en, %i.ep                    ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.em, i64 %i.eq ; 10 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.043169
  %i.et = load i64, ptr %i.c, align 8, !tbaa !168, !noalias !1399
  %i.eu = shl i64 %i.w, 32
  %i.ev = ashr exact i64 %i.eu, 32                ; 3 uses
  %i.ew = sub i64 %i.et, %i.ev                    ; 3 uses
  %i.ex = mul nsw i64 %i.ew, %i.ek                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ex
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.eq
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ex
  %i.fb = icmp sgt i64 %i.ev, 0
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.fc = mul i64 %i.ek, %i.q
  %i.fd = shl i64 %i.en, 3                        ; 2 uses
  %3 = add i64 %i.fc, %i.fd                       ; 2 uses
  %i.fe = getelementptr i8, ptr %i.ej, i64 %3
  %4 = sub i64 %3, %i.t
  %i.ff = shl i64 %i.ek, 3
  %i.fg = mul i64 %i.ff, %i.ew
  %5 = add i64 %i.fg, %i.fd                       ; 2 uses
  %6 = sub i64 %5, %i.t
  %i.fh = mul i64 %i.ek, %i.m
  %7 = shl i64 %i.en, 3                           ; 2 uses
  %8 = add i64 %i.fh, %7
  %invariant.op = sub i64 %8, %i.p
  %9 = shl i64 %i.ek, 3
  %10 = mul i64 %9, %i.ew
  %invariant.op289 = add i64 %10, %7
  %invariant.op291 = sub i64 %invariant.op289, %i.p
  %11 = getelementptr i8, ptr %i.ej, i64 %invariant.op291
  %12 = getelementptr i8, ptr %i.ej, i64 %invariant.op
  %13 = getelementptr i8, ptr %i.ej, i64 %6
  %invariant.gep = getelementptr i8, ptr %i.ej, i64 %5
  %14 = getelementptr i8, ptr %i.ej, i64 %4
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.jj, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.fi = load i64, ptr %i.f, align 8, !tbaa !168, !noalias !1400 ; 3 uses
  %i.fj = mul nsw i64 %i.fi, %.029.i.i.i.i.i
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fj ; 11 uses
  %i.fl = mul nsw i64 %.029.i.i.i.i.i, %i.ek
  %i.fm = getelementptr [8 x i8], ptr %i.ey, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !41, !noalias !1401 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.fo = ptrtoint ptr %i.fk to i64               ; 2 uses
  %i.fp = and i64 %i.fo, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.fp, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.h, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i
  %i.fq = lshr exact i64 %i.fo, 3
  %i.fr = and i64 %i.fq, 1
  %i.fs = tail call i64 @llvm.smin.i64(i64 %i.fr, i64 %i.ep)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.h, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.fs, %bb.h ], [ %i.ep, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %i.ft = sub nsw i64 %i.ep, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.fu = sdiv i64 %i.ft, 2                       ; 2 uses
  %i.fv = shl nsw i64 %i.fu, 1                    ; 2 uses
  %i.fw = add nsw i64 %i.fv, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.fx = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.fx, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check202 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check202, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.fy = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.fz = mul i64 %i.fi, %i.fy
  %i.ga = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.gb = getelementptr i8, ptr %11, i64 %i.fz
  %15 = getelementptr i8, ptr %i.gb, i64 %i.ga
  %i.gc = getelementptr i8, ptr %12, i64 %i.ga
  %bound0204 = icmp ult ptr %i.fk, %i.gc
  %bound1205 = icmp ult ptr %i.er, %15
  %found.conflict206 = and i1 %bound0204, %bound1205
  br i1 %found.conflict206, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273, label %vector.ph207

vector.ph207:                                     ; preds = %vector.memcheck203
  %n.vec208 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert209 = insertelement <2 x double> poison, double %i.fn, i64 0
  %broadcast.splat210 = shufflevector <2 x double> %broadcast.splatinsert209, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body211

vector.body211:                                   ; preds = %vector.body211, %vector.ph207
  %index212 = phi i64 [ 0, %vector.ph207 ], [ %index.next217, %vector.body211 ] ; 3 uses
  %i.gd = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %index212 ; 3 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %index212 ; 2 uses
  %i.gf = getelementptr inbounds nuw i8, ptr %i.ge, i64 16
  %wide.load213 = load <2 x double>, ptr %i.ge, align 8, !tbaa !41, !alias.scope !1402
  %wide.load214 = load <2 x double>, ptr %i.gf, align 8, !tbaa !41, !alias.scope !1402
  %i.gg = fmul <2 x double> %broadcast.splat210, %wide.load213
  %i.gh = fmul <2 x double> %broadcast.splat210, %wide.load214
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.gd, align 8, !tbaa !41, !alias.scope !1403, !noalias !1402
  %wide.load216 = load <2 x double>, ptr %i.gi, align 8, !tbaa !41, !alias.scope !1403, !noalias !1402
  %i.gj = fsub <2 x double> %wide.load215, %i.gg
  %i.gk = fsub <2 x double> %wide.load216, %i.gh
  store <2 x double> %i.gj, ptr %i.gd, align 8, !tbaa !41, !alias.scope !1403, !noalias !1402
  store <2 x double> %i.gk, ptr %i.gi, align 8, !tbaa !41, !alias.scope !1403, !noalias !1402
  %index.next217 = add nuw i64 %index212, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.gl, label %middle.block218, label %vector.body211, !llvm.loop !1383

middle.block218:                                  ; preds = %vector.body211
  %cmp.n219 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec208
  br i1 %cmp.n219, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273:    ; preds = %vector.memcheck203, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block218
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck203 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec208, %middle.block218 ] ; 5 uses
  %.neg286 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter282 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod283.not = icmp eq i64 %xtraiter282, 0
  br i1 %lcmp.mod283.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273
  %i.gm = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.gn = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.go = load double, ptr %i.gn, align 8, !tbaa !41
  %i.gp = fmul double %i.fn, %i.go
  %i.gq = load double, ptr %i.gm, align 8, !tbaa !41
  %i.gr = fsub double %i.gq, %i.gp
  store double %i.gr, ptr %i.gm, align 8, !tbaa !41
  %i.gs = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273 ], [ %i.gs, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.gt = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg286
  br i1 %i.gt, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.hh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.gu = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.gv = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !41
  %i.gx = fmul double %i.fn, %i.gw
  %i.gy = load double, ptr %i.gu, align 8, !tbaa !41
  %i.gz = fsub double %i.gy, %i.gx
  store double %i.gz, ptr %i.gu, align 8, !tbaa !41
  %i.ha = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ha
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !41
  %i.he = fmul double %i.fn, %i.hd
  %i.hf = load double, ptr %i.hb, align 8, !tbaa !41
  %i.hg = fsub double %i.hf, %i.he
  store double %i.hg, ptr %i.hb, align 8, !tbaa !41
  %i.hh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.hh, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1384

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block218, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hi = icmp sgt i64 %i.ft, 1
  br i1 %i.hi, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hj = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hk = icmp slt i64 %i.fw, %i.ep
  br i1 %i.hk, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.hl = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.fv
  %i.hm = sub i64 %i.ep, %i.hl                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.hm, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hn = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.ho = mul i64 %i.fi, %i.hn                    ; 2 uses
  %i.hp = shl i64 %i.fu, 4                        ; 2 uses
  %i.hq = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.hr = getelementptr i8, ptr %13, i64 %i.ho
  %gep = getelementptr i8, ptr %i.hr, i64 %i.hp
  %16 = getelementptr i8, ptr %gep, i64 %i.hq
  %17 = getelementptr i8, ptr %invariant.gep, i64 %i.ho
  %18 = getelementptr i8, ptr %14, i64 %i.hp
  %i.hs = getelementptr i8, ptr %18, i64 %i.hq
  %bound0 = icmp ult ptr %16, %i.fe
  %bound1 = icmp ult ptr %i.hs, %17
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.hm, -4                      ; 3 uses
  %i.ht = add i64 %i.fw, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.fn, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.hu = add i64 %i.fw, %index                   ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.hu ; 3 uses
  %i.hw = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.hu ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.hw, i64 16
  %wide.load = load <2 x double>, ptr %i.hw, align 8, !tbaa !41, !alias.scope !1404
  %wide.load190 = load <2 x double>, ptr %i.hx, align 8, !tbaa !41, !alias.scope !1404
  %i.hy = fmul <2 x double> %broadcast.splat, %wide.load
  %i.hz = fmul <2 x double> %broadcast.splat, %wide.load190
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %wide.load191 = load <2 x double>, ptr %i.hv, align 8, !tbaa !41, !alias.scope !1405, !noalias !1404
  %wide.load192 = load <2 x double>, ptr %i.ia, align 8, !tbaa !41, !alias.scope !1405, !noalias !1404
  %i.ib = fsub <2 x double> %wide.load191, %i.hy
  %i.ic = fsub <2 x double> %wide.load192, %i.hz
  store <2 x double> %i.ib, ptr %i.hv, align 8, !tbaa !41, !alias.scope !1405, !noalias !1404
  store <2 x double> %i.ic, ptr %i.ia, align 8, !tbaa !41, !alias.scope !1405, !noalias !1404
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !1388

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.hm, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.fw, %vector.memcheck ], [ %i.fw, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ht, %middle.block ] ; 6 uses
  %i.ie = sub i64 %i.v, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %.neg287 = add i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter284 = and i64 %i.ie, 1
  %lcmp.mod285.not = icmp eq i64 %xtraiter284, 0
  br i1 %lcmp.mod285.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272
  %i.if = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.ig = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !41
  %i.ii = fmul double %i.fn, %i.ih
  %i.ij = load double, ptr %i.if, align 8, !tbaa !41
  %i.ik = fsub double %i.ij, %i.ii
  store double %i.ik, ptr %i.if, align 8, !tbaa !41
  %i.il = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272 ], [ %i.il, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.im = icmp eq i64 %i.ep, %.neg287
  br i1 %i.im, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ja, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.in = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.io = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ip = load double, ptr %i.io, align 8, !tbaa !41
  %i.iq = fmul double %i.fn, %i.ip
  %i.ir = load double, ptr %i.in, align 8, !tbaa !41
  %i.is = fsub double %i.ir, %i.iq
  store double %i.is, ptr %i.in, align 8, !tbaa !41
  %i.it = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.it ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.it
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !41
  %i.ix = fmul double %i.fn, %i.iw
  %i.iy = load double, ptr %i.iu, align 8, !tbaa !41
  %i.iz = fsub double %i.iy, %i.ix
  store double %i.iz, ptr %i.iu, align 8, !tbaa !41
  %i.ja = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ja, %i.ep
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1389

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jd = load <2 x double>, ptr %i.jc, align 1, !tbaa !46
  %i.je = fmul <2 x double> %i.hj, %i.jd
  %i.jf = load <2 x double>, ptr %i.jb, align 16, !tbaa !46
  %i.jg = fsub <2 x double> %i.jf, %i.je
  store <2 x double> %i.jg, ptr %i.jb, align 16, !tbaa !46
  %i.jh = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ji = icmp slt i64 %i.jh, %i.fw
  br i1 %i.ji, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1390

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jj = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.jj, %i.ev
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1391

_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %bb.g, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.jk = add nuw nsw i64 %.043169, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.jk, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1392
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !168  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #19
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.d, align 8, !tbaa !168  ; 2 uses
  %i.i = load <2 x i64>, ptr %i.e, align 8, !tbaa !168
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !183
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !227
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #19
  store i64 %i.h, ptr %i.a, align 8, !tbaa !183
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.k = load i64, ptr %i.f, align 8, !tbaa !225
  %i.l = load i64, ptr %i.j, align 8, !tbaa !227  ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !229
  %i.o = load i64, ptr %i.g, align 8, !tbaa !226
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !230
  %i.r = load ptr, ptr %0, align 8, !tbaa !276
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !168
  %i.u = load ptr, ptr %1, align 8, !tbaa !276
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !168
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.h, ptr noundef nonnull %i.r, i64 noundef %i.t, ptr noundef nonnull %i.u, i64 noundef 1, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %2, align 8, !tbaa !231
  call void @free(ptr noundef %i.x) #19
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !232
  call void @free(ptr noundef %i.z) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !231
  call void @free(ptr noundef %i.ab) #19
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !232
  call void @free(ptr noundef %i.ad) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #19
  resume { ptr, i32 } %i.aa
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef %5, i64 noundef %6, ptr noundef nonnull align 8 dereferenceable(40) %7) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::gebp_kernel", align 1 ; 6 uses
  %9 = alloca %"struct.Eigen::internal::gemm_pack_lhs.1823", align 1 ; 6 uses
  %10 = alloca %"struct.Eigen::internal::gemm_pack_rhs.2347", align 1 ; 4 uses
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.1745", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper.993", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.1745", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper.993", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.1745", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !227  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !225
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #19 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !40
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #20
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !231    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE:bb.a

bb.aa:                                            ; preds = %bb.z, %bb.w
  %i.gt = add nsw i64 %.0322.us, %.sroa.speculated243 ; 2 uses
  %i.gu = icmp slt i64 %i.gt, %0
  br i1 %i.gu, label %bb.w, label %.loopexit.us, !llvm.loop !1414

.loopexit.us:                                     ; preds = %bb.aa
  %indvars.iv.next = sub i64 %indvars.iv, %i.b
  %indvar.next = add i64 %indvar, 1
  br label %.lr.ph314.us, !llvm.loop !1415

.lr.ph.us330:                                     ; preds = %._crit_edge315.us
  %i.gv = mul nsw i64 %.0132323.us, %3
  %invariant.gep.us331 = getelementptr [8 x i8], ptr %2, i64 %i.gv
  br label %bb.w

.split.us.split.us:                               ; preds = %._crit_edge305.split.us.us
  %i.gw = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #19
  br label %.body

.split317.us.split.us:                            ; preds = %bb.s
  %i.gx = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #19
  br label %.body

.split320.us.split.us:                            ; preds = %bb.t
  %i.gy = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #19
  br label %.body

.loopexit:                                        ; preds = %bb.ai
  %i.gz = sub nsw i64 %0, %i.hd
  %.sroa.speculated218 = call i64 @llvm.smin.i64(i64 %i.b, i64 %i.gz)
  %i.ha = add nsw i64 %i.hd, %i.b                 ; 2 uses
  %i.hb = icmp slt i64 %i.ha, %0
  br i1 %i.hb, label %.lr.ph, label %._crit_edge, !llvm.loop !1415

._crit_edge:                                      ; preds = %.loopexit, %._crit_edge315.us, %.lr.ph325.split.preheader, %bb.p, %.thread.thread
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.af, label %bb.ab, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.ab:                                            ; preds = %._crit_edge
  call void @free(ptr noundef %i.ad) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.ab
  br i1 %i.s, label %bb.ac, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

bb.ac:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.q) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit197: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.ac
  ret void

bb.ad:                                            ; preds = %.invoke
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

.lr.ph:                                           ; preds = %.lr.ph325.split.preheader, %.loopexit
  %i.hd = phi i64 [ %i.ha, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 4 uses
  %.sroa.speculated218380 = phi i64 [ %.sroa.speculated218, %.loopexit ], [ %i.b, %.lr.ph325.split.preheader ] ; 2 uses
  %.0132323379 = phi i64 [ %i.hd, %.loopexit ], [ 0, %.lr.ph325.split.preheader ]
  %i.he = mul nsw i64 %.0132323379, %3
  %invariant.gep = getelementptr [8 x i8], ptr %2, i64 %i.he
  br label %bb.ae

bb.ae:                                            ; preds = %.lr.ph, %bb.ai
  %.0322 = phi i64 [ %i.hd, %.lr.ph ], [ %i.hi, %bb.ai ] ; 4 uses
  %i.hf = sub nsw i64 %0, %.0322
  %.sroa.speculated = call i64 @llvm.smin.i64(i64 %i.hf, i64 %.sroa.speculated243) ; 3 uses
  %i.hg = icmp sgt i64 %.sroa.speculated, 0
  br i1 %i.hg, label %bb.af, label %bb.ai

bb.af:                                            ; preds = %bb.ae
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #19
  %gep = getelementptr [8 x i8], ptr %invariant.gep, i64 %.0322
  store ptr %gep, ptr %14, align 8
  store i64 %3, ptr %i.as, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %9, ptr noundef nonnull %i.r, ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %.sroa.speculated218380, i64 noundef %.sroa.speculated, i64 noundef 0, i64 noundef 0)
          to label %bb.ag unwind label %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ag:                                            ; preds = %bb.af
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #19
  %i.hh = getelementptr [8 x i8], ptr %4, i64 %.0322
  store ptr %i.hh, ptr %15, align 8
  store i64 %6, ptr %i.at, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %8, ptr noundef nonnull align 8 dereferenceable(16) %15, ptr noundef nonnull %i.r, ptr noundef nonnull %i.ae, i64 noundef %.sroa.speculated, i64 noundef %.sroa.speculated218380, i64 noundef %1, double noundef -1.000000e+00, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.ah unwind label %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %bb.ag
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %bb.ai

.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.x, %bb.af
  %lpad.loopexit.split-lp402 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #19
  br label %.body

.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.ag
  %lpad.loopexit.split-lp404 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #19
  br label %.body

bb.ai:                                            ; preds = %bb.ah, %bb.ae
  %i.hi = add nsw i64 %.0322, %.sroa.speculated243 ; 2 uses
  %i.hj = icmp slt i64 %i.hi, %0
  br i1 %i.hj, label %bb.ae, label %.loopexit, !llvm.loop !1414

.body:                                            ; preds = %.split.us.split.us, %.split320.us.split.us, %.split317.us.split.us, %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.n
  %.pn161.pn.pn.pn = phi { ptr, i32 } [ %i.aj, %bb.n ], [ %lpad.loopexit.split-lp402, %.split.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gx, %.split317.us.split.us ], [ %lpad.loopexit.split-lp404, %.split337.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.gw, %.split.us.split.us ], [ %i.gy, %.split320.us.split.us ] ; 2 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #19
  br i1 %i.af, label %bb.aj, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

bb.aj:                                            ; preds = %.body
  call void @free(ptr noundef %i.ad) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202: ; preds = %.body, %bb.aj, %bb.ad
  %.pn161.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.hc, %bb.ad ], [ %.pn161.pn.pn.pn, %bb.aj ], [ %.pn161.pn.pn.pn, %.body ]
  br i1 %i.s, label %bb.ak, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

bb.ak:                                            ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202
  call void @free(ptr noundef %i.q) #19
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit203: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit202, %bb.ak
  resume { ptr, i32 } %.pn161.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #13 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #19, !srcloc !238
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !240    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !241  ; 12 uses
  %i.i = icmp sgt i64 %3, 0
  %i.j = add i64 %3, %6
  %i.k = sub i64 %5, %i.j
  %i.l = shl i64 %i.k, 2                          ; 2 uses
  br i1 %i.i, label %.lr.ph.us.preheader, label %.lr.ph78.split

.lr.ph.us.preheader:                              ; preds = %.lr.ph78
  %i.m = add nsw i64 %3, -1                       ; 2 uses
  %i.n = shl i64 %6, 5                            ; 3 uses
  %i.o = getelementptr i8, ptr %1, i64 %i.n
  %scevgep = getelementptr i8, ptr %i.o, i64 8
  %i.p = getelementptr i8, ptr %1, i64 %i.n
  %scevgep100 = getelementptr i8, ptr %i.p, i64 16
  %i.q = getelementptr i8, ptr %1, i64 %i.n
  %scevgep102 = getelementptr i8, ptr %i.q, i64 24
  %smax127 = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.r = add nsw i64 %smax127, -4                 ; 2 uses
  %i.s = lshr exact i64 %i.r, 2
  %i.t = mul i64 %i.h, %i.s
  %i.u = shl i64 %i.t, 5
  %i.v = shl i64 %3, 3                            ; 4 uses
  %i.w = getelementptr i8, ptr %i.f, i64 %i.u
  %scevgep128 = getelementptr i8, ptr %i.w, i64 %i.v
  %i.x = shl i64 %i.r, 3                          ; 3 uses
  %i.y = or disjoint i64 %i.x, 8
  %i.z = mul i64 %i.h, %i.y
  %i.aa = getelementptr i8, ptr %i.f, i64 %i.z
  %scevgep129 = getelementptr i8, ptr %i.aa, i64 %i.v
  %i.ab = shl i64 %i.h, 3
  %scevgep130 = getelementptr i8, ptr %i.f, i64 %i.ab
  %i.ac = or disjoint i64 %i.x, 16
  %i.ad = mul i64 %i.h, %i.ac
  %i.ae = getelementptr i8, ptr %i.f, i64 %i.ad
  %scevgep131 = getelementptr i8, ptr %i.ae, i64 %i.v
  %i.af = shl i64 %i.h, 4
  %scevgep132 = getelementptr i8, ptr %i.f, i64 %i.af
  %i.ag = or disjoint i64 %i.x, 24
  %i.ah = mul i64 %i.h, %i.ag
  %i.ai = getelementptr i8, ptr %i.f, i64 %i.ah
  %scevgep133 = getelementptr i8, ptr %i.ai, i64 %i.v
  %i.aj = mul i64 %i.h, 24
  %scevgep134 = getelementptr i8, ptr %i.f, i64 %i.aj
  %i.ak = shl i64 %6, 5
  %7 = add i64 %6, %3
  %8 = shl i64 %7, 5
  %i.al = insertelement <4 x ptr> poison, ptr %scevgep133, i64 0
  %i.am = insertelement <4 x ptr> %i.al, ptr %scevgep131, i64 1
  %i.an = insertelement <4 x ptr> %i.am, ptr %scevgep129, i64 2
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep128, i64 3
  %i.ap = insertelement <4 x ptr> poison, ptr %scevgep134, i64 0
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep132, i64 1
  %i.ar = insertelement <4 x ptr> %i.aq, ptr %scevgep130, i64 2
  %i.as = insertelement <4 x ptr> %i.ar, ptr %i.f, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %i.at = getelementptr i8, ptr %1, i64 %i.ak
  %i.au = getelementptr i8, ptr %1, i64 %8
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.av = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.eg, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.ef, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.aw = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ax = mul nsw i64 %i.h, %.05076.us
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  %i.az = or disjoint i64 %.05076.us, 1
  %i.ba = mul nsw i64 %i.h, %i.az
  %i.bb = getelementptr [8 x i8], ptr %i.f, i64 %i.ba ; 4 uses
  %i.bc = or disjoint i64 %.05076.us, 2
  %i.bd = mul nsw i64 %i.h, %i.bc
  %i.be = getelementptr [8 x i8], ptr %i.f, i64 %i.bd ; 4 uses
  %i.bf = or disjoint i64 %.05076.us, 3
  %i.bg = mul nsw i64 %i.h, %i.bf
  %i.bh = getelementptr [8 x i8], ptr %i.f, i64 %i.bg ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.bi = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.bi ; 2 uses
  %i.bj = getelementptr i8, ptr %scevgep99, i64 %mul.result
  %i.bk = icmp ult ptr %i.bj, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.bi ; 2 uses
  %i.bl = getelementptr i8, ptr %scevgep101, i64 %mul.result
  %i.bm = icmp ult ptr %i.bl, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.bi ; 2 uses
  %i.bn = getelementptr i8, ptr %scevgep103, i64 %mul.result
  %i.bo = icmp ult ptr %i.bn, %scevgep103
  %i.bp = or i1 %i.bo, %mul.overflow
  %i.bq = or i1 %i.bm, %i.bk
  %i.br = or i1 %i.bq, %i.bp
  br i1 %i.br, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bs = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bt = getelementptr i8, ptr %i.at, i64 %i.bs
  %i.bu = getelementptr i8, ptr %i.au, i64 %i.bs
  %i.bv = insertelement <4 x ptr> poison, ptr %i.bt, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = icmp ult <4 x ptr> %i.bw, %i.ao
  %i.by = insertelement <4 x ptr> poison, ptr %i.bu, i64 0
  %i.bz = shufflevector <4 x ptr> %i.by, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ca = icmp ult <4 x ptr> %i.as, %i.bz
  %i.cb = and <4 x i1> %i.bx, %i.ca
  %i.cc = bitcast <4 x i1> %i.cb to i4
  %i.cd = icmp ne i4 %i.cc, 0
  %op.rdx = or i1 %i.cd, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.ce = add i64 %i.aw, %i.av                    ; 2 uses
  %i.cf = getelementptr [8 x i8], ptr %1, i64 %i.aw
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !tbaa !41, !alias.scope !1431
  %.idx = shl i64 %index, 5
  %i.ch = getelementptr i8, ptr %i.cf, i64 %.idx
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load146 = load <2 x double>, ptr %i.ci, align 8, !tbaa !41, !alias.scope !1432
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load147 = load <2 x double>, ptr %i.cj, align 8, !tbaa !41, !alias.scope !1433
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.ck, align 8, !tbaa !41, !alias.scope !1434
  %i.cl = shufflevector <2 x double> %wide.load, <2 x double> %wide.load146, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <2 x double> %wide.load147, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cl, <4 x double> %i.cm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ch, align 8, !tbaa !41, !alias.scope !1435, !noalias !1436
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !1424

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !41
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cp, ptr %i.cq, align 8, !tbaa !41
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !41
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !41
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us.ph
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !41
  %i.cw = getelementptr i8, ptr %i.cq, i64 16
  store double %i.cv, ptr %i.cw, align 8, !tbaa !41
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us.ph
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !41
  %i.cz = getelementptr i8, ptr %i.cq, i64 24
  store double %i.cy, ptr %i.cz, align 8, !tbaa !41
  %i.da = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.db = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.db, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.da, %scalar.ph.prol ]
  %i.dc = icmp eq i64 %3, %.neg
  br i1 %i.dc, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.ee, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.ed, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.de = load double, ptr %i.dd, align 8, !tbaa !41
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.de, ptr %i.df, align 8, !tbaa !41
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !41
  %i.di = getelementptr i8, ptr %i.df, i64 8
  store double %i.dh, ptr %i.di, align 8, !tbaa !41
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !41
  %i.dl = getelementptr i8, ptr %i.df, i64 16
  store double %i.dk, ptr %i.dl, align 8, !tbaa !41
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !41
  %i.do = getelementptr i8, ptr %i.df, i64 24
  store double %i.dn, ptr %i.do, align 8, !tbaa !41
  %i.dp = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !41
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  store double %i.dr, ptr %i.dt, align 8, !tbaa !41
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dp
  %i.dv = load double, ptr %i.du, align 8, !tbaa !41
  %i.dw = getelementptr i8, ptr %i.ds, i64 40
  store double %i.dv, ptr %i.dw, align 8, !tbaa !41
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dp
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !41
  %i.dz = getelementptr i8, ptr %i.ds, i64 48
  store double %i.dy, ptr %i.dz, align 8, !tbaa !41
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !41
  %i.ec = getelementptr i8, ptr %i.ds, i64 56
  store double %i.eb, ptr %i.ec, align 8, !tbaa !41
  %i.ed = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.ee = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ee, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1425

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.ce, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.ed, %scalar.ph ]
  %i.ef = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.eg = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.c
  br i1 %i.eh, label %.lr.ph.us, label %.preheader, !llvm.loop !1426

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.ei = add nsw i64 %smax, -4
  %i.ej = lshr exact i64 %i.ei, 2
  %i.ek = mul i64 %i.ej, %invariant.op
  %i.el = shl i64 %5, 2
  %i.em = add i64 %i.ek, %i.el
  %i.en = shl i64 %3, 2
  %i.eo = sub i64 %i.em, %i.en
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.eo, %.lr.ph78.split ], [ %i.ef, %._crit_edge.us ]
  %i.ep = icmp slt i64 %i.c, %4
  br i1 %i.ep, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.eq = load ptr, ptr %2, align 8, !tbaa !240   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !241 ; 3 uses
  %i.et = icmp sgt i64 %3, 0
  %i.eu = add i64 %3, %6
  %i.ev = sub i64 %5, %i.eu
  br i1 %i.et, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ew = ptrtoaddr ptr %i.eq to i64
  %i.ex = mul i64 %i.es, -8
  %i.ey = mul i64 %i.es, %i.b
end_hunk_2
