Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/g2o/original/solver_pcg?download=true
inline.NumInlined: 27367
inline.NumDeleted: 13763
loop-unroll.NumCompletelyUnrolled: 35
loop-unroll.NumRuntimeUnrolled: 156
loop-unroll.NumUnrolled: 191
begin_hunk_0_@_ZN5Eigen8internal10redux_implINS0_13scalar_max_opIddLi0EEENS0_15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEEELi0ELi0EE3runISG_EEdRKSH_RKS3_RKT_:bb.a
  %prol.iter178.next = add i64 %prol.iter178, 1   ; 2 uses
  %prol.iter178.cmp.not = icmp eq i64 %prol.iter178.next, %xtraiter176
  br i1 %prol.iter178.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.us81.prol, !llvm.loop !1336

.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit:      ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us81.prol, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80
  %.lcssa165.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80 ], [ %i.fk, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol ]
  %.05283.i.i.i.i.i.i.i23.us82.unr = phi i64 [ %i.bu, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80 ], [ %i.fl, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol ]
  %.182.i.i.i.i.i.i.i24.us83.unr = phi double [ %i.fg, %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80 ], [ %i.fk, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol ]
  br i1 %i.fb, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85, label %.lr.ph85.i.i.i.i.i.i.i22.us81

.lr.ph85.i.i.i.i.i.i.i22.us81:                    ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.us81
  %.05283.i.i.i.i.i.i.i23.us82 = phi i64 [ %i.gf, %.lr.ph85.i.i.i.i.i.i.i22.us81 ], [ %.05283.i.i.i.i.i.i.i23.us82.unr, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.us83 = phi double [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i22.us81 ], [ %.182.i.i.i.i.i.i.i24.us83.unr, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit ]
  %i.fm = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !127
  %i.fo = tail call noundef double @llvm.fabs.f64(double %i.fn)
  %i.fp = fadd double %.182.i.i.i.i.i.i.i24.us83, %i.fo
  %i.fq = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.fr = getelementptr i8, ptr %i.fq, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !127
  %i.ft = tail call noundef double @llvm.fabs.f64(double %i.fs)
  %i.fu = fadd double %i.fp, %i.ft
  %i.fv = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.fw = getelementptr i8, ptr %i.fv, i64 16
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !127
  %i.fy = tail call noundef double @llvm.fabs.f64(double %i.fx)
  %i.fz = fadd double %i.fu, %i.fy
  %i.ga = getelementptr [8 x i8], ptr %i.fd, i64 %.05283.i.i.i.i.i.i.i23.us82
  %i.gb = getelementptr i8, ptr %i.ga, i64 24
  %i.gc = load double, ptr %i.gb, align 8, !tbaa !127
  %i.gd = tail call noundef double @llvm.fabs.f64(double %i.gc)
  %i.ge = fadd double %i.fz, %i.gd                ; 2 uses
  %i.gf = add nsw i64 %.05283.i.i.i.i.i.i.i23.us82, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.us84.3 = icmp eq i64 %i.gf, %i.c
  br i1 %exitcond.not.i.i.i.i.i.i.i25.us84.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85, label %.lr.ph85.i.i.i.i.i.i.i22.us81, !llvm.loop !1333

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.us81, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit
  %.lcssa165 = phi double [ %.lcssa165.unr, %.lr.ph85.i.i.i.i.i.i.i22.us81.prol.loopexit ], [ %i.ge, %.lr.ph85.i.i.i.i.i.i.i22.us81 ] ; 2 uses
  %i.gg = fcmp olt double %.05864.us79, %.lcssa165
  %i.gh = select i1 %i.gg, double %.lcssa165, double %.05864.us79 ; 2 uses
  %i.gi = add nuw nsw i64 %.01765.us78, 1         ; 2 uses
  %exitcond106.not = icmp eq i64 %i.gi, %i.bp
  br i1 %exitcond106.not, label %._crit_edge, label %.lr.ph85.i.i.i.i.i.i.i22.preheader.us80, !llvm.loop !1334

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new
  %.01765 = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %i.gy, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ] ; 3 uses
  %.05864 = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %i.gx, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader.new ], [ %niter.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35 ]
  %i.gj = mul nsw i64 %.01765, %i.c
  %i.gk = getelementptr [8 x i8], ptr %i.ce, i64 %i.gj
  %i.gl = load <2 x double>, ptr %i.gk, align 1, !tbaa !80
  %i.gm = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gl) ; 2 uses
  %shift154 = shufflevector <2 x double> %i.gm, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155 = fadd <2 x double> %i.gm, %shift154
  %i.gn = extractelement <2 x double> %foldExtExtBinop155, i64 0 ; 2 uses
  %i.go = fcmp olt double %.05864, %i.gn
  %i.gp = select i1 %i.go, double %i.gn, double %.05864 ; 2 uses
  %i.gq = add nuw nsw i64 %.01765, 1
  %i.gr = mul nsw i64 %i.gq, %i.c
  %i.gs = getelementptr [8 x i8], ptr %i.ce, i64 %i.gr
  %i.gt = load <2 x double>, ptr %i.gs, align 1, !tbaa !80
  %i.gu = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.gt) ; 2 uses
  %shift154.1 = shufflevector <2 x double> %i.gu, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155.1 = fadd <2 x double> %i.gu, %shift154.1
  %i.gv = extractelement <2 x double> %foldExtExtBinop155.1, i64 0 ; 2 uses
  %i.gw = fcmp olt double %i.gp, %i.gv
  %i.gx = select i1 %i.gw, double %i.gv, double %i.gp ; 3 uses
  %i.gy = add nuw nsw i64 %.01765, 2              ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %._crit_edge.loopexit167.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35, !llvm.loop !1334

._crit_edge.loopexit.unr-lcssa:                   ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us
  %lcmp.mod189.not = icmp eq i64 %xtraiter188, 0
  br i1 %lcmp.mod189.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader: ; preds = %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader
  %.05864.us.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.preheader ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ]
  %lcmp.mod191 = icmp ne i64 %xtraiter188, 0
  tail call void @llvm.assume(i1 %lcmp.mod191)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader
  %.05864.us.epil = phi double [ %i.ha, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ %.05864.us.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil.preheader ]
  %i.gz = fcmp olt double %.05864.us.epil, 0.000000e+00
  %i.ha = select i1 %i.gz, double 0.000000e+00, double %.05864.us.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter188
  br i1 %epil.iter.cmp.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, !llvm.loop !1337

._crit_edge.loopexit157.unr-lcssa:                ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68
  %lcmp.mod183.not = icmp eq i64 %xtraiter182, 0
  br i1 %lcmp.mod183.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader: ; preds = %._crit_edge.loopexit157.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader
  %.01765.us66.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader ], [ %i.cu, %._crit_edge.loopexit157.unr-lcssa ]
  %.05864.us67.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.preheader ], [ %i.ct, %._crit_edge.loopexit157.unr-lcssa ] ; 2 uses
  %lcmp.mod185 = trunc i64 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod185)
  %i.hb = mul nsw i64 %.01765.us66.epil.init, %i.c
  %i.hc = getelementptr [8 x i8], ptr %i.ce, i64 %i.hb
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !127
  %i.he = tail call noundef double @llvm.fabs.f64(double %i.hd) ; 2 uses
  %i.hf = fcmp olt double %.05864.us67.epil.init, %i.he
  %i.hg = select i1 %i.hf, double %i.he, double %.05864.us67.epil.init
  br label %._crit_edge

._crit_edge.loopexit167.unr-lcssa:                ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35
  %lcmp.mod173.not = icmp eq i64 %xtraiter172, 0
  br i1 %lcmp.mod173.not, label %._crit_edge, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader: ; preds = %._crit_edge.loopexit167.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader
  %.01765.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader ], [ %i.gy, %._crit_edge.loopexit167.unr-lcssa ]
  %.05864.epil.init = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.preheader ], [ %i.gx, %._crit_edge.loopexit167.unr-lcssa ] ; 2 uses
  %lcmp.mod175 = trunc i64 %i.ex to i1
  tail call void @llvm.assume(i1 %lcmp.mod175)
  %i.hh = mul nsw i64 %.01765.epil.init, %i.c
  %i.hi = getelementptr [8 x i8], ptr %i.ce, i64 %i.hh
  %i.hj = load <2 x double>, ptr %i.hi, align 1, !tbaa !80
  %i.hk = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.hj) ; 2 uses
  %shift154.epil = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop155.epil = fadd <2 x double> %i.hk, %shift154.epil
  %i.hl = extractelement <2 x double> %foldExtExtBinop155.epil, i64 0 ; 2 uses
  %i.hm = fcmp olt double %.05864.epil.init, %i.hl
  %i.hn = select i1 %i.hm, double %i.hl, double %.05864.epil.init
  br label %._crit_edge

._crit_edge:                                      ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader, %._crit_edge.loopexit167.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader, %._crit_edge.loopexit157.unr-lcssa, %._crit_edge.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit
  %.058.lcssa = phi double [ %.0.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit ], [ %i.ha, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.epil ], [ %i.hg, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.epil.preheader ], [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us74 ], [ %i.gh, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.loopexit.us85 ], [ %i.cd, %._crit_edge.loopexit.unr-lcssa ], [ %i.ct, %._crit_edge.loopexit157.unr-lcssa ], [ %i.gx, %._crit_edge.loopexit167.unr-lcssa ], [ %i.hn, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.epil.preheader ]
  ret double %.058.lcssa
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #24

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %0, i64 noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4, ptr noundef nonnull align 4 dereferenceable(4) %5, i64 noundef %6) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"struct.Eigen::internal::evaluator.523", align 8 ; 10 uses
  %8 = alloca %"struct.Eigen::internal::evaluator.526", align 8 ; 5 uses
  %9 = alloca %"class.Eigen::internal::restricted_packet_dense_assignment_kernel", align 8 ; 7 uses
  %10 = alloca %"struct.Eigen::internal::sub_assign_op", align 1 ; 3 uses
  %i.a = alloca double, align 8                   ; 4 uses
  %11 = alloca %"class.Eigen::Ref", align 8       ; 7 uses
  %12 = alloca %"class.Eigen::Ref", align 8       ; 7 uses
  %13 = alloca %"class.Eigen::Ref", align 8       ; 10 uses
  %14 = alloca %"class.Eigen::Ref", align 8       ; 9 uses
  %15 = alloca %"class.Eigen::Ref", align 8       ; 9 uses
  %i.b = alloca i32, align 4                      ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #35
  %i.c = icmp eq i64 %3, 0
  %i.d = icmp eq i64 %1, 1
  %i.e = or i1 %i.d, %i.c
  %i.f = select i1 %i.e, i64 %0, i64 %3           ; 12 uses
  store ptr %2, ptr %11, align 8, !tbaa !558
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i64 %0, ptr %i.g, align 8, !tbaa !543
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 %1, ptr %i.h, align 8, !tbaa !543
  %i.i = getelementptr inbounds nuw i8, ptr %11, i64 24
  store i64 %i.f, ptr %i.i, align 8, !tbaa !543
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
  store i32 0, ptr %5, align 4, !tbaa !90
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
  %i.am = shl i64 %i.f, 3
  %16 = shl i64 %.sroa.speculated161, 3
  %17 = mul i64 %.sroa.speculated156, -8
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
  %i.az = mul i64 %.sroa.speculated156, %indvar
  %i.ba = sub i64 %.sroa.speculated161, %i.az
  %smin207 = call i64 @llvm.smin.i64(i64 %smin, i64 %i.ba) ; 2 uses
  %18 = shl i64 %smin207, 3
  %19 = add i64 %smin207, %storemerge187          ; 2 uses
  %20 = mul i64 %i.am, %19                        ; 2 uses
  %21 = mul i64 %17, %indvar
  %22 = add i64 %16, %21
  %i.bb = mul i64 %i.f, %19
  %i.bc = add i64 %.sroa.speculated161, %i.bb
  %i.bd = shl i64 %i.bc, 3
  %scevgep208 = getelementptr i8, ptr %scevgep, i64 %i.bd
  %i.be = mul i64 %i.an, %indvar
  %scevgep209 = getelementptr i8, ptr %2, i64 %i.be
  %scevgep210 = getelementptr i8, ptr %scevgep209, i64 %20
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
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #35
  %i.bs = getelementptr inbounds [8 x i8], ptr %2, i64 %storemerge187 ; 2 uses
  %i.bt = mul nsw i64 %i.f, %storemerge187        ; 3 uses
  %i.bu = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bt
  %i.bv = icmp eq i64 %.sroa.speculated, 1
  %i.bw = or i1 %i.bv, %i.al                      ; 2 uses
  %i.bx = select i1 %i.bw, i64 %.sroa.speculated, i64 %i.f
  store ptr %i.bu, ptr %12, align 8, !tbaa !558
  store i64 %.sroa.speculated, ptr %i.p, align 8, !tbaa !543
  store i64 %.sroa.speculated, ptr %i.q, align 8, !tbaa !543
  store i64 %i.bx, ptr %i.r, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #35
  %i.by = getelementptr inbounds [8 x i8], ptr %i.bs, i64 %i.bn
  %i.bz = select i1 %i.bq, i64 %.sroa.speculated, i64 %i.f
  store ptr %i.by, ptr %13, align 8, !tbaa !558
  store i64 %.sroa.speculated, ptr %i.s, align 8, !tbaa !543
  store i64 %i.bj, ptr %i.t, align 8, !tbaa !543
  store i64 %i.bz, ptr %i.u, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #35
  %i.ca = getelementptr inbounds [8 x i8], ptr %2, i64 %i.bi ; 2 uses
  %i.cb = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bt
  %i.cc = select i1 %i.bw, i64 %i.bh, i64 %i.f
  store ptr %i.cb, ptr %14, align 8, !tbaa !558
  store i64 %i.bh, ptr %i.v, align 8, !tbaa !543
  store i64 %.sroa.speculated, ptr %i.w, align 8, !tbaa !543
  store i64 %i.cc, ptr %i.x, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %15) #35
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.ca, i64 %i.bn
  %i.ce = select i1 %i.bq, i64 %i.bh, i64 %i.f
  store ptr %i.cd, ptr %15, align 8, !tbaa !558
  store i64 %i.bh, ptr %i.y, align 8, !tbaa !543
  store i64 %i.bj, ptr %i.z, align 8, !tbaa !543
  store i64 %i.ce, ptr %i.aa, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #35
  %i.cf = getelementptr [8 x i8], ptr %2, i64 %i.bt
  %i.cg = getelementptr [8 x i8], ptr %i.cf, i64 %storemerge187
  %i.ch = getelementptr inbounds [4 x i8], ptr %4, i64 %storemerge187
  %i.ci = call noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE10blocked_luEllPdlPiRil(i64 noundef %i.bg, i64 noundef %.sroa.speculated, ptr noundef nonnull %i.cg, i64 noundef %3, ptr noundef %i.ch, ptr noundef nonnull align 4 dereferenceable(4) %i.b, i64 noundef 16) ; 2 uses
  %i.cj = icmp sgt i64 %i.ci, -1
  %i.ck = icmp eq i64 %.053190, -1
  %or.cond = select i1 %i.cj, i1 %i.ck, i1 false
  %i.cl = add nsw i64 %i.ci, %storemerge187
  %.1 = select i1 %or.cond, i64 %i.cl, i64 %.053190 ; 2 uses
  %i.cm = load i32, ptr %i.b, align 4, !tbaa !90
  %i.cn = load i32, ptr %5, align 4, !tbaa !90
  %i.co = add nsw i32 %i.cn, %i.cm
  store i32 %i.co, ptr %5, align 4, !tbaa !90
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
  %wide.load255 = load <4 x i32>, ptr %i.cv, align 4, !tbaa !90
  %wide.load256 = load <4 x i32>, ptr %i.cw, align 4, !tbaa !90
  %i.cx = add nsw <4 x i32> %wide.load255, %broadcast.splat
  %i.cy = add nsw <4 x i32> %wide.load256, %broadcast.splat
  store <4 x i32> %i.cx, ptr %i.cv, align 4, !tbaa !90
  store <4 x i32> %i.cy, ptr %i.cw, align 4, !tbaa !90
  %index.next257 = add nuw i64 %index254, 8       ; 2 uses
  %i.cz = icmp eq i64 %index.next257, %n.vec252
  br i1 %i.cz, label %middle.block258, label %vector.body253, !llvm.loop !1342

middle.block258:                                  ; preds = %vector.body253
  %cmp.n259 = icmp eq i64 %.sroa.speculated, %n.vec252
  br i1 %cmp.n259, label %._crit_edge, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader, %middle.block258
  %.052183.ph = phi i64 [ %storemerge187, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader ], [ %i.ct, %middle.block258 ]
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit

.lr.ph.i.i.i.i.i.i.preheader.us:                  ; preds = %.lr.ph.i.i.i.i.i.i.preheader.us.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us
  %.052183.us = phi i64 [ %i.eg, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us ], [ %storemerge187, %.lr.ph.i.i.i.i.i.i.preheader.us.preheader ] ; 3 uses
  %i.da = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %.052183.us ; 2 uses
  %i.db = load i32, ptr %i.da, align 4, !tbaa !90
  %i.dc = add nsw i32 %i.db, %i.cq                ; 2 uses
  store i32 %i.dc, ptr %i.da, align 4, !tbaa !90
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
  %wide.load241 = load <2 x double>, ptr %i.di, align 8, !tbaa !127, !alias.scope !1357, !noalias !1358
  %wide.load242 = load <2 x double>, ptr %i.dk, align 8, !tbaa !127, !alias.scope !1357, !noalias !1358
  %i.dl = getelementptr inbounds nuw i8, ptr %i.dj, i64 16 ; 2 uses
  %wide.load243 = load <2 x double>, ptr %i.dj, align 8, !tbaa !127, !alias.scope !1358
  %wide.load244 = load <2 x double>, ptr %i.dl, align 8, !tbaa !127, !alias.scope !1358
  store <2 x double> %wide.load243, ptr %i.di, align 8, !tbaa !127, !alias.scope !1357, !noalias !1358
  store <2 x double> %wide.load244, ptr %i.dk, align 8, !tbaa !127, !alias.scope !1357, !noalias !1358
  store <2 x double> %wide.load241, ptr %i.dj, align 8, !tbaa !127, !alias.scope !1358
  store <2 x double> %wide.load242, ptr %i.dl, align 8, !tbaa !127, !alias.scope !1358
  %index.next245 = add nuw i64 %index240, 4       ; 2 uses
  %i.dm = icmp eq i64 %index.next245, %n.vec238
  br i1 %i.dm, label %middle.block246, label %vector.body239, !llvm.loop !1346

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
  %i.dq = load double, ptr %i.do, align 8, !tbaa !127
  %i.dr = load double, ptr %i.dp, align 8, !tbaa !127
  store double %i.dr, ptr %i.do, align 8, !tbaa !127
  store double %i.dq, ptr %i.dp, align 8, !tbaa !127
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
  %i.dx = load double, ptr %i.dv, align 8, !tbaa !127
  %i.dy = load double, ptr %i.dw, align 8, !tbaa !127
  store double %i.dy, ptr %i.dv, align 8, !tbaa !127
  store double %i.dx, ptr %i.dw, align 8, !tbaa !127
  %i.dz = add nuw nsw i64 %.05.i.i.i.i.i.i.us, 1
  %i.ea = mul nsw i64 %i.dz, %i.bm                ; 2 uses
  %i.eb = getelementptr inbounds [8 x i8], ptr %i.de, i64 %i.ea ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.df, i64 %i.ea ; 2 uses
  %i.ed = load double, ptr %i.eb, align 8, !tbaa !127
  %i.ee = load double, ptr %i.ec, align 8, !tbaa !127
  store double %i.ee, ptr %i.eb, align 8, !tbaa !127
  store double %i.ed, ptr %i.ec, align 8, !tbaa !127
  %i.ef = add nuw nsw i64 %.05.i.i.i.i.i.i.us, 2  ; 2 uses
  %exitcond.not.i.i.i.i.i.i.us.1 = icmp eq i64 %i.ef, %storemerge187
  br i1 %exitcond.not.i.i.i.i.i.i.us.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us, label %.lr.ph.i.i.i.i.i.i.us, !llvm.loop !1347

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.loopexit.us: ; preds = %.lr.ph.i.i.i.i.i.i.us.prol.loopexit, %.lr.ph.i.i.i.i.i.i.us, %middle.block246
  %i.eg = add nuw nsw i64 %.052183.us, 1          ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.bi
  br i1 %i.eh, label %.lr.ph.i.i.i.i.i.i.preheader.us, label %._crit_edge, !llvm.loop !1348

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
  %23 = add i64 %22, %20
  %invariant.op = sub i64 %23, %18
  %n.vec = and i64 %i.bj, 9223372036854775804     ; 3 uses
  %cmp.n = icmp eq i64 %i.bj, %n.vec
  %i.ej = sub i64 %i.bf, %.sroa.speculated
  %xtraiter266 = and i64 %i.ej, 1
  %lcmp.mod267.not = icmp eq i64 %xtraiter266, 0
  br label %.lr.ph.i.i.i.i.i.i59.preheader

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit
  %.052183 = phi i64 [ %i.en, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit ], [ %.052183.ph, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit.preheader264 ] ; 2 uses
  %i.ek = getelementptr inbounds [4 x i8], ptr %4, i64 %.052183 ; 2 uses
  %i.el = load i32, ptr %i.ek, align 4, !tbaa !90
  %i.em = add nsw i32 %i.el, %i.cq
  store i32 %i.em, ptr %i.ek, align 4, !tbaa !90
  %i.en = add nsw i64 %.052183, 1                 ; 2 uses
  %i.eo = icmp slt i64 %i.en, %i.bi
  br i1 %i.eo, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %._crit_edge, !llvm.loop !1349

._crit_edge186.split:                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, %.preheader
  %i.ep = load i64, ptr %i.q, align 8, !tbaa !543
  %i.eq = icmp eq i64 %i.ep, 0
  br i1 %i.eq, label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit, label %bb.e

bb.e:                                             ; preds = %._crit_edge186.split
  call void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %12, ptr noundef nonnull align 8 dereferenceable(40) %13)
  br label %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit

_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit: ; preds = %._crit_edge186.split, %bb.e
  %i.er = load i64, ptr %i.s, align 8, !tbaa !543 ; 2 uses
  %i.es = load i64, ptr %i.y, align 8, !tbaa !543
  %i.et = add nsw i64 %i.es, %i.er
  %i.eu = load i64, ptr %i.z, align 8, !tbaa !543
  %i.ev = add nsw i64 %i.et, %i.eu
  %i.ew = icmp slt i64 %i.ev, 20
  %i.ex = icmp sgt i64 %i.er, 0
  %or.cond.i.i.i.i = and i1 %i.ex, %i.ew
  br i1 %or.cond.i.i.i.i, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #35
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #35
  store ptr %14, ptr %7, align 8, !tbaa !1359
  store ptr %13, ptr %i.ab, align 8, !tbaa !1359
  %i.ey = load ptr, ptr %14, align 8, !tbaa !558
  store ptr %i.ey, ptr %i.ac, align 8, !tbaa !562
  %i.ez = load i64, ptr %i.x, align 8, !tbaa !543
  store i64 %i.ez, ptr %i.ad, align 8, !tbaa !543
  %i.fa = load ptr, ptr %13, align 8, !tbaa !558
  store ptr %i.fa, ptr %i.ae, align 8, !tbaa !562
  %i.fb = load i64, ptr %i.u, align 8, !tbaa !543
  store i64 %i.fb, ptr %i.af, align 8, !tbaa !543
  %i.fc = load i64, ptr %i.w, align 8, !tbaa !543
  store i64 %i.fc, ptr %i.ag, align 8, !tbaa !565
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #35
  %i.fd = load ptr, ptr %15, align 8, !tbaa !558
  store ptr %i.fd, ptr %8, align 8, !tbaa !562
  %i.fe = load i64, ptr %i.aa, align 8, !tbaa !543
  store i64 %i.fe, ptr %i.ah, align 8, !tbaa !543
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #35
  store ptr %8, ptr %9, align 8, !tbaa !1360
  store ptr %7, ptr %i.ai, align 8, !tbaa !1361
  store ptr %10, ptr %i.aj, align 8, !tbaa !569
  store ptr %15, ptr %i.ak, align 8, !tbaa !1359
  call void @_ZN5Eigen8internal21dense_assignment_loopINS0_41restricted_packet_dense_assignment_kernelINS0_9evaluatorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEEENS3_INS_7ProductIS9_S9_Li1EEEEENS0_13sub_assign_opIddEEEELi4ELi0EE3runERSG_(ptr noundef nonnull align 8 dereferenceable(32) %9)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %8) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %10) #35
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

bb.g:                                             ; preds = %_ZNK5Eigen18TriangularViewImplINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELj5ENS_5DenseEE12solveInPlaceIS6_EEvRKNS_10MatrixBaseIT_EE.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store double -1.000000e+00, ptr %i.a, align 8, !tbaa !127
  call void @_ZN5Eigen8internal20generic_product_implINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_NS_10DenseShapeES8_Li8EE13scaleAndAddToIS7_EEvRT_RKS7_SE_RKd(ptr noundef nonnull align 8 dereferenceable(40) %15, ptr noundef nonnull align 8 dereferenceable(40) %14, ptr noundef nonnull align 8 dereferenceable(40) %13, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  br label %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit

.lr.ph.i.i.i.i.i.i59.preheader:                   ; preds = %.lr.ph.i.i.i.i.i.i59.preheader.preheader, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit
  %.0184 = phi i64 [ %i.gl, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit ], [ %storemerge187, %.lr.ph.i.i.i.i.i.i59.preheader.preheader ] ; 3 uses
  %i.ff = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %.0184 ; 4 uses
  %i.fg = getelementptr inbounds [4 x i8], ptr %4, i64 %.0184
  %i.fh = load i32, ptr %i.fg, align 4, !tbaa !90
  %i.fi = sext i32 %i.fh to i64                   ; 2 uses
  %i.fj = getelementptr inbounds [8 x i8], ptr %i.bo, i64 %i.fi ; 5 uses
  br i1 %or.cond262, label %vector.memcheck, label %.lr.ph.i.i.i.i.i.i59.preheader263

vector.memcheck:                                  ; preds = %.lr.ph.i.i.i.i.i.i59.preheader
  %i.fk = shl nsw i64 %i.fi, 3
  %.reass = add i64 %i.fk, %invariant.op
  %i.fl = getelementptr i8, ptr %2, i64 %.reass
  %bound0 = icmp ult ptr %scevgep210, %i.fl
  %bound1 = icmp ult ptr %i.fj, %scevgep208
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i.i.i.i.i.i59.preheader263, label %vector.body

vector.body:                                      ; preds = %vector.memcheck, %vector.body
  %index = phi i64 [ %index.next, %vector.body ], [ 0, %vector.memcheck ] ; 3 uses
  %i.fm = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %index ; 3 uses
  %i.fn = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %index ; 3 uses
  %i.fo = getelementptr inbounds nuw i8, ptr %i.fm, i64 16 ; 2 uses
  %wide.load = load <2 x double>, ptr %i.fm, align 8, !tbaa !127, !alias.scope !1362, !noalias !1363
  %wide.load211 = load <2 x double>, ptr %i.fo, align 8, !tbaa !127, !alias.scope !1362, !noalias !1363
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fn, i64 16 ; 2 uses
  %wide.load212 = load <2 x double>, ptr %i.fn, align 8, !tbaa !127, !alias.scope !1363
  %wide.load213 = load <2 x double>, ptr %i.fp, align 8, !tbaa !127, !alias.scope !1363
  store <2 x double> %wide.load212, ptr %i.fm, align 8, !tbaa !127, !alias.scope !1362, !noalias !1363
  store <2 x double> %wide.load213, ptr %i.fo, align 8, !tbaa !127, !alias.scope !1362, !noalias !1363
  store <2 x double> %wide.load, ptr %i.fn, align 8, !tbaa !127, !alias.scope !1363
  store <2 x double> %wide.load211, ptr %i.fp, align 8, !tbaa !127, !alias.scope !1363
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.fq = icmp eq i64 %index.next, %n.vec
  br i1 %i.fq, label %middle.block, label %vector.body, !llvm.loop !1353

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
  %i.fv = load double, ptr %i.ft, align 8, !tbaa !127
  %i.fw = load double, ptr %i.fu, align 8, !tbaa !127
  store double %i.fw, ptr %i.ft, align 8, !tbaa !127
  store double %i.fv, ptr %i.fu, align 8, !tbaa !127
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
  %i.gc = load double, ptr %i.ga, align 8, !tbaa !127
  %i.gd = load double, ptr %i.gb, align 8, !tbaa !127
  store double %i.gd, ptr %i.ga, align 8, !tbaa !127
  store double %i.gc, ptr %i.gb, align 8, !tbaa !127
  %i.ge = add nuw nsw i64 %.05.i.i.i.i.i.i60, 1
  %i.gf = mul nsw i64 %i.ge, %i.br                ; 2 uses
  %i.gg = getelementptr inbounds [8 x i8], ptr %i.ff, i64 %i.gf ; 2 uses
  %i.gh = getelementptr inbounds [8 x i8], ptr %i.fj, i64 %i.gf ; 2 uses
  %i.gi = load double, ptr %i.gg, align 8, !tbaa !127
  %i.gj = load double, ptr %i.gh, align 8, !tbaa !127
  store double %i.gj, ptr %i.gg, align 8, !tbaa !127
  store double %i.gi, ptr %i.gh, align 8, !tbaa !127
  %i.gk = add nuw nsw i64 %.05.i.i.i.i.i.i60, 2   ; 2 uses
  %exitcond.not.i.i.i.i.i.i61.1 = icmp eq i64 %i.gk, %i.bj
  br i1 %exitcond.not.i.i.i.i.i.i61.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit, label %.lr.ph.i.i.i.i.i.i59, !llvm.loop !1354

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit62.loopexit: ; preds = %.lr.ph.i.i.i.i.i.i59.prol.loopexit, %.lr.ph.i.i.i.i.i.i59, %middle.block
  %i.gl = add nsw i64 %.0184, 1                   ; 2 uses
  %i.gm = icmp slt i64 %i.gl, %i.bi
  br i1 %i.gm, label %.lr.ph.i.i.i.i.i.i59.preheader, label %._crit_edge186.split, !llvm.loop !1355

_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit: ; preds = %bb.g, %bb.f, %._crit_edge
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %12) #35
  %i.gn = add nsw i64 %storemerge187, %.sroa.speculated156 ; 2 uses
  %i.go = icmp slt i64 %i.gn, %.sroa.speculated161
  %indvar.next = add i64 %indvar, 1
  br i1 %i.go, label %bb.d, label %.loopexit, !llvm.loop !1356

.loopexit:                                        ; preds = %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit, %bb.b
  %.051 = phi i64 [ %i.k, %bb.b ], [ %.1, %_ZN5Eigen7NoAliasINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEENS_10MatrixBaseEEmIINS_7ProductIS6_S6_Li0EEEEERS6_RKNS7_IT_EE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #35
  ret i64 %.051
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef i64 @_ZN5Eigen8internal15partial_lu_implIdLi0EiLin1EE12unblocked_luERNS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEEPiRi(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1, ptr noundef nonnull align 4 dereferenceable(4) %2) local_unnamed_addr #13 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !543  ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !543  ; 2 uses
  %.sroa.speculated = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %i.b) ; 2 uses
  store i32 0, ptr %2, align 4, !tbaa !90
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
  %i.x = load ptr, ptr %0, align 8, !tbaa !558, !noalias !1402 ; 5 uses
  %i.y = load i64, ptr %i.f, align 8, !tbaa !543, !noalias !1402 ; 5 uses
  %i.z = mul nsw i64 %i.y, %.043169
  %i.aa = getelementptr [8 x i8], ptr %i.x, i64 %i.z ; 3 uses
  %i.ab = load i64, ptr %i.a, align 8, !tbaa !543, !noalias !1402 ; 2 uses
  %i.ac = sub nsw i64 %i.b, %.043169              ; 2 uses
  %i.ad = sub nsw i64 %i.ab, %i.ac
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ad ; 4 uses
  %i.af = load double, ptr %i.ae, align 8, !tbaa !127 ; 2 uses
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
  %i.al = load double, ptr %i.ak, align 8, !tbaa !127
  %i.am = tail call noundef double @llvm.fabs.f64(double %i.al) ; 3 uses
  %i.an = fcmp ogt double %i.am, %i.aj            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.an, i64 %.02125.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.an, double %i.am, double %.sroa.7.0.i.i
  %i.ao = select i1 %i.an, double %i.am, double %i.aj ; 2 uses
  %i.ap = add nuw nsw i64 %.02125.i.i.i.i, 1      ; 2 uses
  %i.aq = getelementptr [8 x i8], ptr %i.ae, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !127
  %i.as = tail call noundef double @llvm.fabs.f64(double %i.ar) ; 3 uses
  %i.at = fcmp ogt double %i.as, %i.ao            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.at, i64 %i.ap, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.at, double %i.as, double %.sroa.7.1.i.i ; 3 uses
  %i.au = select i1 %i.at, double %i.as, double %i.ao ; 2 uses
  %i.av = add nuw nsw i64 %.02125.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !1366

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
  %i.ax = load double, ptr %i.aw, align 8, !tbaa !127
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
  br i1 %i.bv, label %middle.block269, label %vector.body262, !llvm.loop !1372

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
  %i.bz = load double, ptr %i.bx, align 8, !tbaa !127
  %i.ca = load double, ptr %i.by, align 8, !tbaa !127
  store double %i.ca, ptr %i.bx, align 8, !tbaa !127
  store double %i.bz, ptr %i.by, align 8, !tbaa !127
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
  %i.cg = load double, ptr %i.ce, align 8, !tbaa !127
  %i.ch = load double, ptr %i.cf, align 8, !tbaa !127
  store double %i.ch, ptr %i.ce, align 8, !tbaa !127
  store double %i.cg, ptr %i.cf, align 8, !tbaa !127
  %i.ci = add nuw nsw i64 %.05.i.i.i.i.i.i, 1
  %i.cj = mul nsw i64 %i.ci, %i.y                 ; 2 uses
  %i.ck = getelementptr inbounds [8 x i8], ptr %i.bh, i64 %i.cj ; 2 uses
  %i.cl = getelementptr inbounds [8 x i8], ptr %i.bj, i64 %i.cj ; 2 uses
  %i.cm = load double, ptr %i.ck, align 8, !tbaa !127
  %i.cn = load double, ptr %i.cl, align 8, !tbaa !127
  store double %i.cn, ptr %i.ck, align 8, !tbaa !127
  store double %i.cm, ptr %i.cl, align 8, !tbaa !127
  %i.co = add nuw nsw i64 %.05.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i.i.i.i.i.i.1 = icmp eq i64 %i.co, %i.bi
  br i1 %exitcond.not.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1373

_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block269, %bb.d
  %i.cp = load i32, ptr %2, align 4, !tbaa !90
  %i.cq = add nsw i32 %i.cp, 1
  store i32 %i.cq, ptr %2, align 4, !tbaa !90
  br label %.thread

.thread:                                          ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZN5Eigen9DenseBaseINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELi1ELin1ELb0EEEE4swapIS8_EEvRKNS0_IT_EE.exit, %bb.c
  %i.cr = getelementptr [8 x i8], ptr %i.aa, i64 %.043169
  %sext = shl i64 %i.v, 32
  %i.cs = ashr exact i64 %sext, 32                ; 7 uses
  %i.ct = sub nsw i64 %i.ab, %i.cs
  %i.cu = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ct ; 6 uses
  %i.cv = load double, ptr %i.cr, align 8, !tbaa !127, !noalias !1406 ; 5 uses
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
  %wide.load242 = load <2 x double>, ptr %i.dg, align 8, !tbaa !127
  %i.dh = fdiv <2 x double> %wide.load242, %broadcast.splat239
  store <2 x double> %i.dh, ptr %i.dg, align 8, !tbaa !127
  %index.next243 = add nuw i64 %index241, 2       ; 2 uses
  %i.di = icmp eq i64 %index.next243, %n.vec237
  br i1 %i.di, label %middle.block244, label %vector.body240, !llvm.loop !1376

middle.block244:                                  ; preds = %vector.body240
  %cmp.n245 = icmp eq i64 %.0.i.i.i.i.i.i.i, %n.vec237
  br i1 %cmp.n245, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.preheader275

.lr.ph.i.i.i.i.i.i.i.preheader275:                ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader, %middle.block244
  %.05.i.i.i.i.i.i.i.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i.preheader ], [ %n.vec237, %middle.block244 ]
  br label %.lr.ph.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i.i.i.i.preheader275, %.lr.ph.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i = phi i64 [ %i.dm, %.lr.ph.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.preheader275 ] ; 2 uses
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.cu, i64 %.05.i.i.i.i.i.i.i ; 2 uses
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !127
  %i.dl = fdiv double %i.dk, %i.cv
  store double %i.dl, ptr %i.dj, align 8, !tbaa !127
  %i.dm = add nuw nsw i64 %.05.i.i.i.i.i.i.i, 1   ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i = icmp eq i64 %i.dm, %.0.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS8_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i, !llvm.loop !1377

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
  %wide.load229 = load <2 x double>, ptr %i.dv, align 8, !tbaa !127
  %i.dw = fdiv <2 x double> %wide.load229, %broadcast.splat226
  store <2 x double> %i.dw, ptr %i.dv, align 8, !tbaa !127
  %index.next230 = add nuw i64 %index228, 2       ; 2 uses
  %i.dx = icmp eq i64 %index.next230, %n.vec224
  br i1 %i.dx, label %middle.block231, label %vector.body227, !llvm.loop !1378

middle.block231:                                  ; preds = %vector.body227
  %cmp.n232 = icmp eq i64 %i.ds, %n.vec224
  br i1 %cmp.n232, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i.preheader274

.lr.ph.i17.i.i.i.i.i.i.preheader274:              ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader, %middle.block231
  %.05.i18.i.i.i.i.i.i.ph = phi i64 [ %i.de, %.lr.ph.i17.i.i.i.i.i.i.preheader ], [ %i.dt, %middle.block231 ]
  br label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader274, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.eb, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader274 ] ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !127
  %i.ea = fdiv double %i.dz, %i.cv
  store double %i.ea, ptr %i.dy, align 8, !tbaa !127
  %i.eb = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i = icmp eq i64 %i.eb, %i.cs
  br i1 %exitcond.not.i19.i.i.i.i.i.i, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !1379

.lr.ph.i.i.i.i.i.i44:                             ; preds = %.lr.ph.i.i.i.i.i.i44, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i = phi i64 [ %i.ef, %.lr.ph.i.i.i.i.i.i44 ], [ %.0.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %i.cu, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.ed = load <2 x double>, ptr %i.ec, align 16, !tbaa !80
  %i.ee = fdiv <2 x double> %i.ed, %i.dp
  store <2 x double> %i.ee, ptr %i.ec, align 16, !tbaa !80
  %i.ef = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.eg = icmp slt i64 %i.ef, %i.de
  br i1 %i.eg, label %.lr.ph.i.i.i.i.i.i44, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !1380

bb.f:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit.thread, %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS5_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEEE8maxCoeffIlEEdPT_.exit
  %i.eh = icmp eq i64 %.0170, -1
  %spec.select = select i1 %i.eh, i64 %.043169, i64 %.0170
  br label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i, %middle.block231, %._crit_edge.i.i.i.i.i.i, %bb.f
  %.1 = phi i64 [ %spec.select, %bb.f ], [ %.0170, %._crit_edge.i.i.i.i.i.i ], [ %.0170, %middle.block231 ], [ %.0170, %.lr.ph.i17.i.i.i.i.i.i ] ; 2 uses
  %i.ei = icmp slt i64 %.043169, %i.g
  br i1 %i.ei, label %bb.g, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

bb.g:                                             ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.ej = load ptr, ptr %0, align 8, !tbaa !558, !noalias !1407 ; 9 uses
  %i.ek = load i64, ptr %i.f, align 8, !tbaa !543, !noalias !1407 ; 6 uses
  %i.el = mul i64 %i.ek, %.043169
  %i.em = getelementptr [8 x i8], ptr %i.ej, i64 %i.el
  %i.en = load i64, ptr %i.a, align 8, !tbaa !543, !noalias !1407 ; 2 uses
  %i.eo = shl i64 %i.v, 32
  %i.ep = ashr exact i64 %i.eo, 32                ; 8 uses
  %i.eq = sub i64 %i.en, %i.ep                    ; 2 uses
  %i.er = getelementptr [8 x i8], ptr %i.em, i64 %i.eq ; 10 uses
  %i.es = getelementptr inbounds nuw [8 x i8], ptr %i.ej, i64 %.043169
  %i.et = load i64, ptr %i.c, align 8, !tbaa !543, !noalias !1408
  %i.eu = shl i64 %i.w, 32
  %i.ev = ashr exact i64 %i.eu, 32                ; 3 uses
  %i.ew = sub i64 %i.et, %i.ev                    ; 2 uses
  %i.ex = mul nsw i64 %i.ew, %i.ek                ; 2 uses
  %i.ey = getelementptr inbounds [8 x i8], ptr %i.es, i64 %i.ex
  %i.ez = getelementptr inbounds [8 x i8], ptr %i.ej, i64 %i.eq
  %i.fa = getelementptr inbounds [8 x i8], ptr %i.ez, i64 %i.ex
  %i.fb = icmp sgt i64 %i.ev, 0
  br i1 %i.fb, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %bb.g
  %i.fc = mul i64 %i.ek, %i.q                     ; 2 uses
  %i.fd = shl i64 %i.en, 3                        ; 6 uses
  %i.fe = getelementptr i8, ptr %i.ej, i64 %i.fc
  %scevgep = getelementptr i8, ptr %i.fe, i64 %i.fd
  %i.ff = shl i64 %i.ek, 3
  %i.fg = mul i64 %i.ff, %i.ew                    ; 2 uses
  %i.fh = mul i64 %i.ek, %i.m
  %invariant.op = sub i64 %i.fd, %i.p
  %invariant.op289 = add i64 %i.fh, %i.fd
  %invariant.op291 = sub i64 %invariant.op289, %i.p
  %invariant.op293 = sub i64 %i.fd, %i.t
  %invariant.gep = getelementptr i8, ptr %i.ej, i64 %i.fd
  %invariant.op295 = sub i64 %i.fd, %i.t
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.jj, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.fi = load i64, ptr %i.f, align 8, !tbaa !543, !noalias !1409 ; 3 uses
  %i.fj = mul nsw i64 %i.fi, %.029.i.i.i.i.i
  %i.fk = getelementptr inbounds [8 x i8], ptr %i.fa, i64 %i.fj ; 11 uses
  %i.fl = mul nsw i64 %.029.i.i.i.i.i, %i.ek
  %i.fm = getelementptr [8 x i8], ptr %i.ey, i64 %i.fl
  %i.fn = load double, ptr %i.fm, align 8, !tbaa !127, !noalias !1410 ; 9 uses
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
  %min.iters.check202 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 6
  br i1 %min.iters.check202, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader273, label %vector.memcheck203

vector.memcheck203:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.fy = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.fz = mul i64 %i.fi, %i.fy
  %i.ga = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %3 = add i64 %i.fg, %i.fz
  %4 = add i64 %3, %i.ga
  %.reass = add i64 %4, %invariant.op
  %i.gb = getelementptr i8, ptr %i.ej, i64 %.reass
  %.reass292 = add i64 %i.ga, %invariant.op291
  %i.gc = getelementptr i8, ptr %i.ej, i64 %.reass292
  %bound0204 = icmp ult ptr %i.fk, %i.gc
  %bound1205 = icmp ult ptr %i.er, %i.gb
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
  %wide.load213 = load <2 x double>, ptr %i.ge, align 8, !tbaa !127, !alias.scope !1411
  %wide.load214 = load <2 x double>, ptr %i.gf, align 8, !tbaa !127, !alias.scope !1411
  %i.gg = fmul <2 x double> %broadcast.splat210, %wide.load213
  %i.gh = fmul <2 x double> %broadcast.splat210, %wide.load214
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gd, i64 16 ; 2 uses
  %wide.load215 = load <2 x double>, ptr %i.gd, align 8, !tbaa !127, !alias.scope !1412, !noalias !1411
  %wide.load216 = load <2 x double>, ptr %i.gi, align 8, !tbaa !127, !alias.scope !1412, !noalias !1411
  %i.gj = fsub <2 x double> %wide.load215, %i.gg
  %i.gk = fsub <2 x double> %wide.load216, %i.gh
  store <2 x double> %i.gj, ptr %i.gd, align 8, !tbaa !127, !alias.scope !1412, !noalias !1411
  store <2 x double> %i.gk, ptr %i.gi, align 8, !tbaa !127, !alias.scope !1412, !noalias !1411
  %index.next217 = add nuw i64 %index212, 4       ; 2 uses
  %i.gl = icmp eq i64 %index.next217, %n.vec208
  br i1 %i.gl, label %middle.block218, label %vector.body211, !llvm.loop !1392

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
  %i.go = load double, ptr %i.gn, align 8, !tbaa !127
  %i.gp = fmul double %i.fn, %i.go
  %i.gq = load double, ptr %i.gm, align 8, !tbaa !127
  %i.gr = fsub double %i.gq, %i.gp
  store double %i.gr, ptr %i.gm, align 8, !tbaa !127
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
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !127
  %i.gx = fmul double %i.fn, %i.gw
  %i.gy = load double, ptr %i.gu, align 8, !tbaa !127
  %i.gz = fsub double %i.gy, %i.gx
  store double %i.gz, ptr %i.gu, align 8, !tbaa !127
  %i.ha = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.hb = getelementptr inbounds nuw [8 x i8], ptr %i.fk, i64 %i.ha ; 2 uses
  %i.hc = getelementptr inbounds nuw [8 x i8], ptr %i.er, i64 %i.ha
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !127
  %i.he = fmul double %i.fn, %i.hd
  %i.hf = load double, ptr %i.hb, align 8, !tbaa !127
  %i.hg = fsub double %i.hf, %i.he
  store double %i.hg, ptr %i.hb, align 8, !tbaa !127
  %i.hh = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.hh, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS8_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_ISC_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1393

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
  %min.iters.check = icmp ult i64 %i.hm, 8
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader272, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.hn = shl nuw nsw i64 %.029.i.i.i.i.i, 3
  %i.ho = mul i64 %i.fi, %i.hn
  %i.hp = shl i64 %i.fu, 4                        ; 2 uses
  %i.hq = shl nsw i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %5 = add i64 %i.fg, %i.ho                       ; 2 uses
  %6 = add i64 %5, %i.hp
  %7 = add i64 %6, %i.hq
  %.reass294 = add i64 %7, %invariant.op293
  %i.hr = getelementptr i8, ptr %i.ej, i64 %.reass294
  %gep = getelementptr i8, ptr %invariant.gep, i64 %5
  %8 = add i64 %i.fc, %i.hp
  %9 = add i64 %8, %i.hq
  %.reass296 = add i64 %9, %invariant.op295
  %i.hs = getelementptr i8, ptr %i.ej, i64 %.reass296
  %bound0 = icmp ult ptr %i.hr, %scevgep
  %bound1 = icmp ult ptr %i.hs, %gep
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
  %wide.load = load <2 x double>, ptr %i.hw, align 8, !tbaa !127, !alias.scope !1413
  %wide.load190 = load <2 x double>, ptr %i.hx, align 8, !tbaa !127, !alias.scope !1413
  %i.hy = fmul <2 x double> %broadcast.splat, %wide.load
  %i.hz = fmul <2 x double> %broadcast.splat, %wide.load190
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hv, i64 16 ; 2 uses
  %wide.load191 = load <2 x double>, ptr %i.hv, align 8, !tbaa !127, !alias.scope !1414, !noalias !1413
  %wide.load192 = load <2 x double>, ptr %i.ia, align 8, !tbaa !127, !alias.scope !1414, !noalias !1413
  %i.ib = fsub <2 x double> %wide.load191, %i.hy
  %i.ic = fsub <2 x double> %wide.load192, %i.hz
  store <2 x double> %i.ib, ptr %i.hv, align 8, !tbaa !127, !alias.scope !1414, !noalias !1413
  store <2 x double> %i.ic, ptr %i.ia, align 8, !tbaa !127, !alias.scope !1414, !noalias !1413
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.id = icmp eq i64 %index.next, %n.vec
  br i1 %i.id, label %middle.block, label %vector.body, !llvm.loop !1397

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
  %i.ih = load double, ptr %i.ig, align 8, !tbaa !127
  %i.ii = fmul double %i.fn, %i.ih
  %i.ij = load double, ptr %i.if, align 8, !tbaa !127
  %i.ik = fsub double %i.ij, %i.ii
  store double %i.ik, ptr %i.if, align 8, !tbaa !127
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
  %i.ip = load double, ptr %i.io, align 8, !tbaa !127
  %i.iq = fmul double %i.fn, %i.ip
  %i.ir = load double, ptr %i.in, align 8, !tbaa !127
  %i.is = fsub double %i.ir, %i.iq
  store double %i.is, ptr %i.in, align 8, !tbaa !127
  %i.it = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.iu = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %i.it ; 2 uses
  %i.iv = getelementptr inbounds [8 x i8], ptr %i.er, i64 %i.it
  %i.iw = load double, ptr %i.iv, align 8, !tbaa !127
  %i.ix = fmul double %i.fn, %i.iw
  %i.iy = load double, ptr %i.iu, align 8, !tbaa !127
  %i.iz = fsub double %i.iy, %i.ix
  store double %i.iz, ptr %i.iu, align 8, !tbaa !127
  %i.ja = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ja, %i.ep
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1398

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.jh, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.jb = getelementptr inbounds [8 x i8], ptr %i.fk, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.er, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jd = load <2 x double>, ptr %i.jc, align 1, !tbaa !80
  %i.je = fmul <2 x double> %i.hj, %i.jd
  %i.jf = load <2 x double>, ptr %i.jb, align 16, !tbaa !80
  %i.jg = fsub <2 x double> %i.jf, %i.je
  store <2 x double> %i.jg, ptr %i.jb, align 16, !tbaa !80
  %i.jh = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.ji = icmp slt i64 %i.jh, %i.fw
  br i1 %i.ji, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !1399

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.jj = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.jj, %i.ev
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit, label %.lr.ph.i.i.i.i.i, !llvm.loop !1400

_ZN5Eigen7NoAliasINS_5BlockINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS7_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS7_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS8_RKNS9_IT_EE.exit: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS8_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeESD_Li5EE3subclINS2_INS2_IS8_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS4_IdLin1ELi1ELi0ELin1ELi1EEEEEKSA_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %bb.g, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.jk = add nuw nsw i64 %.043169, 1             ; 2 uses
  %exitcond.not = icmp eq i64 %i.jk, %.sroa.speculated
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !1401
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen8internal26triangular_solver_selectorINS_3RefINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0ENS_11OuterStrideILin1EEEEES7_Li1ELi5ELi0ELin1EE3runERKS7_RS7_(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef nonnull align 8 dereferenceable(40) %1) local_unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 4 uses
  %2 = alloca %"class.Eigen::internal::gemm_blocking_space", align 8 ; 14 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i64, ptr %i.b, align 8, !tbaa !543  ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #35
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %2, i8 0, i64 16, i1 false)
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 3 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 24
  %i.h = load i64, ptr %i.d, align 8, !tbaa !543  ; 2 uses
  %i.i = load <2 x i64>, ptr %i.e, align 8, !tbaa !543
  store <2 x i64> %i.i, ptr %i.f, align 8, !tbaa !79
  %i.j = getelementptr inbounds nuw i8, ptr %2, i64 32 ; 3 uses
  store i64 %i.c, ptr %i.j, align 8, !tbaa !571
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #35
  store i64 %i.h, ptr %i.a, align 8, !tbaa !79
  call void @_ZN5Eigen8internal37evaluateProductBlockingSizesHeuristicIddLi4ElEEvRT2_S3_S3_S2_(ptr noundef nonnull align 8 dereferenceable(8) %i.j, ptr noundef nonnull align 8 dereferenceable(8) %i.f, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 1)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  %i.k = load i64, ptr %i.f, align 8, !tbaa !572
  %i.l = load i64, ptr %i.j, align 8, !tbaa !571  ; 2 uses
  %i.m = mul nsw i64 %i.l, %i.k
  %i.n = getelementptr inbounds nuw i8, ptr %2, i64 40
  store i64 %i.m, ptr %i.n, align 8, !tbaa !574
  %i.o = load i64, ptr %i.g, align 8, !tbaa !575
  %i.p = mul nsw i64 %i.o, %i.l
  %i.q = getelementptr inbounds nuw i8, ptr %2, i64 48
  store i64 %i.p, ptr %i.q, align 8, !tbaa !576
  %i.r = load ptr, ptr %0, align 8, !tbaa !558
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.t = load i64, ptr %i.s, align 8, !tbaa !543
  %i.u = load ptr, ptr %1, align 8, !tbaa !558
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.w = load i64, ptr %i.v, align 8, !tbaa !543
  invoke void @_ZN5Eigen8internal23triangular_solve_matrixIdlLi1ELi5ELb0ELi0ELi0ELi1EE3runEllPKdlPdllRNS0_15level3_blockingIddEE(i64 noundef %i.c, i64 noundef %i.h, ptr noundef nonnull %i.r, i64 noundef %i.t, ptr noundef nonnull %i.u, i64 noundef 1, i64 noundef %i.w, ptr noundef nonnull align 8 dereferenceable(40) %2)
          to label %bb.b unwind label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.x = load ptr, ptr %2, align 8, !tbaa !577
  call void @free(ptr noundef %i.x) #35
  %i.y = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !578
  call void @free(ptr noundef %i.z) #35
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #35
  ret void

bb.c:                                             ; preds = %bb.a
  %i.aa = landingpad { ptr, i32 }
          cleanup
  %i.ab = load ptr, ptr %2, align 8, !tbaa !577
  call void @free(ptr noundef %i.ab) #35
  %i.ac = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !578
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
  %11 = alloca %"class.Eigen::internal::blas_data_mapper.513", align 8 ; 6 uses
  %12 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 6 uses
  %13 = alloca %"class.Eigen::internal::blas_data_mapper.513", align 8 ; 6 uses
  %14 = alloca %"class.Eigen::internal::const_blas_data_mapper", align 8 ; 11 uses
  %15 = alloca %"class.Eigen::internal::blas_data_mapper.513", align 8 ; 11 uses
  %i.a = getelementptr inbounds nuw i8, ptr %7, i64 32
  %i.b = load i64, ptr %i.a, align 8, !tbaa !571  ; 13 uses
  %i.c = getelementptr inbounds nuw i8, ptr %7, i64 16
  %i.d = load i64, ptr %i.c, align 8, !tbaa !572
  %.sroa.speculated243 = tail call i64 @llvm.smin.i64(i64 %i.d, i64 %0) ; 5 uses
  %i.e = mul nsw i64 %.sroa.speculated243, %i.b   ; 4 uses
  %i.f = mul nsw i64 %i.b, %1                     ; 4 uses
  %i.g = icmp ugt i64 %i.e, 2305843009213693951
  br i1 %i.g, label %bb.b, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169

bb.b:                                             ; preds = %bb.a
  %i.h = tail call ptr @__cxa_allocate_exception(i64 8) #35 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.h, align 8, !tbaa !89
  tail call void @__cxa_throw(ptr nonnull %i.h, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #38
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169: ; preds = %bb.a
  %i.i = load ptr, ptr %7, align 8, !tbaa !577    ; 2 uses
  %.not = icmp eq ptr %i.i, null
  br i1 %.not, label %bb.c, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit169
  %i.j = shl nuw i64 %i.e, 3                      ; 2 uses
  %i.k = icmp samesign ult i64 %i.e, 16385
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a
  store i32 4096, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.ak:                                            ; preds = %bb.c
  store i32 6144, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !90
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !90
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !1433

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !90
  store i32 4096, ptr %2, align 4, !tbaa !90
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !1433

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !90
  %i.o = load i32, ptr %2, align 4, !tbaa !90
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !90
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !90
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !90
  %i.s = load i32, ptr %1, align 4, !tbaa !90
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !90
  %i.u = load i32, ptr %2, align 4, !tbaa !90
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !90
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #35
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #24

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #25 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #35, !srcloc !583
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !585    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !586  ; 12 uses
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
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result.a = shl i64 %i.m, 5                 ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
  %7 = getelementptr i8, ptr %1, i64 %i.ak
  %8 = add i64 %6, %3
  %9 = shl i64 %8, 5
  %i.al = getelementptr i8, ptr %1, i64 %9
  %.mask = and i64 %i.h, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.am = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.05076.us = phi i64 [ %i.dp, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
  %.05175.us = phi i64 [ %i.do, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 3 uses
  %i.an = add nsw i64 %.05175.us, %i.e            ; 5 uses
  %i.ao = mul nsw i64 %i.h, %.05076.us
  %i.ap = getelementptr [8 x i8], ptr %i.f, i64 %i.ao ; 4 uses
  %i.aq = or disjoint i64 %.05076.us, 1
  %i.ar = mul nsw i64 %i.h, %i.aq
  %i.as = getelementptr [8 x i8], ptr %i.f, i64 %i.ar ; 4 uses
  %i.at = or disjoint i64 %.05076.us, 2
  %i.au = mul nsw i64 %i.h, %i.at
  %i.av = getelementptr [8 x i8], ptr %i.f, i64 %i.au ; 4 uses
  %i.aw = or disjoint i64 %.05076.us, 3
  %i.ax = mul nsw i64 %i.h, %i.aw
  %i.ay = getelementptr [8 x i8], ptr %i.f, i64 %i.ax ; 4 uses
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.scevcheck

vector.scevcheck:                                 ; preds = %.lr.ph.us
  %i.az = shl i64 %.05175.us, 3                   ; 3 uses
  %scevgep99 = getelementptr i8, ptr %scevgep, i64 %i.az ; 2 uses
  %i.ba = getelementptr i8, ptr %scevgep99, i64 %mul.result.a
  %i.bb = icmp ult ptr %i.ba, %scevgep99
  %scevgep101 = getelementptr i8, ptr %scevgep100, i64 %i.az ; 2 uses
  %i.bc = getelementptr i8, ptr %scevgep101, i64 %mul.result.a
  %i.bd = icmp ult ptr %i.bc, %scevgep101
  %scevgep103 = getelementptr i8, ptr %scevgep102, i64 %i.az ; 2 uses
  %i.be = getelementptr i8, ptr %scevgep103, i64 %mul.result.a
  %i.bf = icmp ult ptr %i.be, %scevgep103
  %i.bg = or i1 %i.bf, %mul.overflow
  %i.bh = or i1 %i.bd, %i.bb
  %i.bi = or i1 %i.bh, %i.bg
  br i1 %i.bi, label %scalar.ph.preheader, label %vector.memcheck

vector.memcheck:                                  ; preds = %vector.scevcheck
  %i.bj = shl i64 %.05175.us, 3                   ; 2 uses
  %i.bk = getelementptr i8, ptr %7, i64 %i.bj     ; 4 uses
  %i.bl = getelementptr i8, ptr %i.al, i64 %i.bj  ; 4 uses
  %bound0 = icmp ult ptr %i.bk, %scevgep133
  %bound1 = icmp ult ptr %scevgep134, %i.bl
  %found.conflict = and i1 %bound0, %bound1
  %i.bm = or i1 %found.conflict, %stride.check
  %bound0135 = icmp ult ptr %i.bk, %scevgep131
  %bound1136 = icmp ult ptr %scevgep132, %i.bl
  %found.conflict137 = and i1 %bound0135, %bound1136
  %conflict.rdx = or i1 %i.bm, %found.conflict137
  %bound0138 = icmp ult ptr %i.bk, %scevgep129
  %bound1139 = icmp ult ptr %scevgep130, %i.bl
  %found.conflict140 = and i1 %bound0138, %bound1139
  %conflict.rdx141 = or i1 %conflict.rdx, %found.conflict140
  %bound0142 = icmp ult ptr %i.bk, %scevgep128
  %bound1143 = icmp ult ptr %i.f, %i.bl
  %found.conflict144 = and i1 %bound0142, %bound1143
  %conflict.rdx145 = or i1 %conflict.rdx141, %found.conflict144
  br i1 %conflict.rdx145, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bn = add i64 %i.an, %i.am                    ; 2 uses
  %i.bo = getelementptr [8 x i8], ptr %1, i64 %i.an
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bp = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %index
  %wide.load = load <2 x double>, ptr %i.bp, align 8, !tbaa !127, !alias.scope !1448
  %.idx = shl i64 %index, 5
  %i.bq = getelementptr i8, ptr %i.bo, i64 %.idx
  %i.br = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %index
  %wide.load146 = load <2 x double>, ptr %i.br, align 8, !tbaa !127, !alias.scope !1449
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %index
  %wide.load147 = load <2 x double>, ptr %i.bs, align 8, !tbaa !127, !alias.scope !1450
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.bt, align 8, !tbaa !127, !alias.scope !1451
  %i.bu = shufflevector <2 x double> %wide.load, <2 x double> %wide.load146, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.bv = shufflevector <2 x double> %wide.load147, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.bu, <4 x double> %i.bv, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bq, align 8, !tbaa !127, !alias.scope !1452, !noalias !1453
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.bw = icmp eq i64 %index.next, %n.vec
  br i1 %i.bw, label %middle.block, label %vector.body, !llvm.loop !1441

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.an, %vector.memcheck ], [ %i.an, %vector.scevcheck ], [ %i.an, %.lr.ph.us ], [ %i.bn, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.04974.us.ph
  %i.by = load double, ptr %i.bx, align 8, !tbaa !127
  %i.bz = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.by, ptr %i.bz, align 8, !tbaa !127
  %i.ca = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us.ph
  %i.cb = load double, ptr %i.ca, align 8, !tbaa !127
  %i.cc = getelementptr i8, ptr %i.bz, i64 8
  store double %i.cb, ptr %i.cc, align 8, !tbaa !127
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us.ph
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !127
  %i.cf = getelementptr i8, ptr %i.bz, i64 16
  store double %i.ce, ptr %i.cf, align 8, !tbaa !127
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !127
  %i.ci = getelementptr i8, ptr %i.bz, i64 24
  store double %i.ch, ptr %i.ci, align 8, !tbaa !127
  %i.cj = add nsw i64 %.173.us.ph, 4              ; 2 uses
  %i.ck = or disjoint i64 %.04974.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa166.unr = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %.04974.us.unr = phi i64 [ %.04974.us.ph, %scalar.ph.preheader ], [ %i.ck, %scalar.ph.prol ]
  %.173.us.unr = phi i64 [ %.173.us.ph, %scalar.ph.preheader ], [ %i.cj, %scalar.ph.prol ]
  %i.cl = icmp eq i64 %3, %.neg
  br i1 %i.cl, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04974.us = phi i64 [ %i.dn, %scalar.ph ], [ %.04974.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.173.us = phi i64 [ %i.dm, %scalar.ph ], [ %.173.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %.04974.us
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !127
  %i.co = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.cn, ptr %i.co, align 8, !tbaa !127
  %i.cp = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %.04974.us
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !127
  %i.cr = getelementptr i8, ptr %i.co, i64 8
  store double %i.cq, ptr %i.cr, align 8, !tbaa !127
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %.04974.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !127
  %i.cu = getelementptr i8, ptr %i.co, i64 16
  store double %i.ct, ptr %i.cu, align 8, !tbaa !127
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !127
  %i.cx = getelementptr i8, ptr %i.co, i64 24
  store double %i.cw, ptr %i.cx, align 8, !tbaa !127
  %i.cy = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.cz = getelementptr inbounds nuw [8 x i8], ptr %i.ap, i64 %i.cy
  %i.da = load double, ptr %i.cz, align 8, !tbaa !127
  %i.db = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dc = getelementptr i8, ptr %i.db, i64 32
  store double %i.da, ptr %i.dc, align 8, !tbaa !127
  %i.dd = getelementptr inbounds nuw [8 x i8], ptr %i.as, i64 %i.cy
  %i.de = load double, ptr %i.dd, align 8, !tbaa !127
  %i.df = getelementptr i8, ptr %i.db, i64 40
  store double %i.de, ptr %i.df, align 8, !tbaa !127
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.av, i64 %i.cy
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !127
  %i.di = getelementptr i8, ptr %i.db, i64 48
  store double %i.dh, ptr %i.di, align 8, !tbaa !127
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.cy
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !127
  %i.dl = getelementptr i8, ptr %i.db, i64 56
  store double %i.dk, ptr %i.dl, align 8, !tbaa !127
  %i.dm = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.dn = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dn, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1442

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.bn, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.dm, %scalar.ph ]
  %i.do = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.dp = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.dq = icmp slt i64 %i.dp, %i.c
  br i1 %i.dq, label %.lr.ph.us, label %.preheader, !llvm.loop !1443

.lr.ph78.split:                                   ; preds = %.lr.ph78
  %invariant.op = add i64 %i.e, %i.l
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.dr = add nsw i64 %smax, -4
  %i.ds = lshr exact i64 %i.dr, 2
  %i.dt = mul i64 %i.ds, %invariant.op
  %i.du = shl i64 %5, 2
  %i.dv = add i64 %i.dt, %i.du
  %i.dw = shl i64 %3, 2
  %i.dx = sub i64 %i.dv, %i.dw
  br label %.preheader

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph78.split, %bb.a
  %.051.lcssa = phi i64 [ 0, %bb.a ], [ %i.dx, %.lr.ph78.split ], [ %i.do, %._crit_edge.us ]
  %i.dy = icmp slt i64 %i.c, %4
  br i1 %i.dy, label %.lr.ph84, label %._crit_edge85.split

.lr.ph84:                                         ; preds = %.preheader
  %i.dz = load ptr, ptr %2, align 8, !tbaa !585   ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.eb = load i64, ptr %i.ea, align 8, !tbaa !586 ; 3 uses
  %i.ec = icmp sgt i64 %3, 0
  %i.ed = add i64 %3, %6
  %i.ee = sub i64 %5, %i.ed
  br i1 %i.ec, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ef = ptrtoaddr ptr %i.dz to i64
  %i.eg = mul i64 %i.eb, -8
  %i.eh = mul i64 %i.eb, %i.b
  %i.ei = shl i64 %i.eh, 5
  %i.ej = add i64 %i.ei, %i.ef
  %i.ek = sub i64 %i.a, %i.ej
  %min.iters.check152 = icmp ult i64 %3, 4
  %n.vec155 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n162 = icmp eq i64 %3, %n.vec155
  %xtraiter168 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod169.not = icmp eq i64 %xtraiter168, 0
  br label %.lr.ph

._crit_edge85.split:                              ; preds = %._crit_edge, %.lr.ph84, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04883 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fi, %._crit_edge ] ; 2 uses
  %.282 = phi i64 [ %.051.lcssa, %.lr.ph.preheader ], [ %i.fh, %._crit_edge ]
  %i.el = add i64 %.282, %6                       ; 5 uses
  %i.em = mul nsw i64 %i.eb, %.04883
  %i.en = getelementptr [8 x i8], ptr %i.dz, i64 %i.em ; 6 uses
  br i1 %min.iters.check152, label %scalar.ph151.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph
  %i.eo = mul i64 %indvar, %i.eg
  %i.ep = add i64 %i.ek, %i.eo
  %i.eq = shl i64 %i.el, 3
  %i.er = add i64 %i.ep, %i.eq
  %i.es = add i64 %i.er, -1
  %diff.check = icmp ult i64 %i.es, 31
  br i1 %diff.check, label %scalar.ph151.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck153
  %i.et = add i64 %i.el, %n.vec155                ; 2 uses
  %i.eu = getelementptr [8 x i8], ptr %1, i64 %i.el
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.en, i64 %index157 ; 2 uses
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ev, i64 16
end_hunk_2
