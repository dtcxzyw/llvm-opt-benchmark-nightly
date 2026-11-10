Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 76
loop-unroll.NumUnrolled: 77
begin_hunk_0_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.br, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i.prol = phi double [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %prol.iter495 = phi i64 [ %prol.iter495.next, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !189
  %i.du = tail call noundef double @llvm.fabs.f64(double %i.dt)
  %i.dv = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i.prol, %i.du ; 3 uses
  %i.dw = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter495.next = add i64 %prol.iter495, 1   ; 2 uses
  %prol.iter495.cmp.not = icmp eq i64 %prol.iter495.next, %xtraiter493
  br i1 %prol.iter495.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, !llvm.loop !584

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader
  %.lcssa488.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr = phi i64 [ %i.br, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dw, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  %.182.i.i.i.i.i.i.i24.i.i.i.i.unr = phi double [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
  br i1 %i.ce, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i:                 ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i
  %.05283.i.i.i.i.i.i.i23.i.i.i.i = phi i64 [ %i.eq, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.05283.i.i.i.i.i.i.i23.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ] ; 5 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i = phi double [ %i.ep, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ], [ %.182.i.i.i.i.i.i.i24.i.i.i.i.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ]
  %i.dx = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !189
  %i.dz = tail call noundef double @llvm.fabs.f64(double %i.dy)
  %i.ea = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i, %i.dz
  %i.eb = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.ec = getelementptr i8, ptr %i.eb, i64 8
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !189
  %i.ee = tail call noundef double @llvm.fabs.f64(double %i.ed)
  %i.ef = fadd double %i.ea, %i.ee
  %i.eg = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.eh = getelementptr i8, ptr %i.eg, i64 16
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !189
  %i.ej = tail call noundef double @llvm.fabs.f64(double %i.ei)
  %i.ek = fadd double %i.ef, %i.ej
  %i.el = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i
  %i.em = getelementptr i8, ptr %i.el, i64 24
  %i.en = load double, ptr %i.em, align 8, !tbaa !189
  %i.eo = tail call noundef double @llvm.fabs.f64(double %i.en)
  %i.ep = fadd double %i.ek, %i.eo                ; 2 uses
  %i.eq = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i, 4 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3 = icmp eq i64 %i.eq, %i.b
  br i1 %exitcond.not.i.i.i.i.i.i.i25.i.i.i.i.3, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, !llvm.loop !582

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i: ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i, %bb.j
  %.0.i.i.i.i.i21.i.i.i.i = phi double [ %i.dr, %bb.j ], [ %.lcssa488.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ], [ %i.ep, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ] ; 2 uses
  %i.er = fcmp olt double %.05864.i.i.i.i, %.0.i.i.i.i.i21.i.i.i.i
  %i.es = select i1 %i.er, double %.0.i.i.i.i.i21.i.i.i.i, double %.05864.i.i.i.i ; 2 uses
  %i.et = add nuw nsw i64 %.01765.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.et, %i.bm
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %.lr.ph.split.split.i.i.i.i, !llvm.loop !583

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i
  %lcmp.mod501.not = icmp eq i64 %xtraiter500, 0
  br i1 %lcmp.mod501.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader
  %.05864.us.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader ], [ %i.ca, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod503 = icmp ne i64 %xtraiter500, 0
  tail call void @llvm.assume(i1 %lcmp.mod503)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader
  %.05864.us.i.i.i.i.epil = phi double [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %.05864.us.i.i.i.i.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ]
  %i.eu = fcmp olt double %.05864.us.i.i.i.i.epil, 0.000000e+00
  %i.ev = select i1 %i.eu, double 0.000000e+00, double %.05864.us.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter500
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, !llvm.loop !585

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit483.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i
  %lcmp.mod497.not = icmp eq i64 %xtraiter496, 0
  br i1 %lcmp.mod497.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit483.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %.01765.us66.i.i.i.i.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.cu, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit483.unr-lcssa ]
  %.05864.us67.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit483.unr-lcssa ] ; 2 uses
  %lcmp.mod499 = trunc i64 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod499)
  %i.ew = mul nsw i64 %.01765.us66.i.i.i.i.epil.init, %i.b
  %i.ex = getelementptr [8 x i8], ptr %i.cb, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !189
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey) ; 2 uses
  %i.fa = fcmp olt double %.05864.us67.i.i.i.i.epil.init, %i.ez
  %i.fb = select i1 %i.fa, double %i.ez, double %.05864.us67.i.i.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit483.unr-lcssa, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i
  %.058.lcssa.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i ], [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %i.fb, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader ], [ %i.ca, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit483.unr-lcssa ], [ %i.es, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %.058.lcssa.i.i.i.i, ptr %i.fc, align 8, !tbaa !641
  %.sroa.speculated.i = tail call noundef i64 @llvm.smin.i64(i64 %i.bm, i64 %i.b) ; 14 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 5 uses
  %i.fe = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.ff = load i64, ptr %i.fe, align 8, !tbaa !315
  %.not.i.i = icmp eq i64 %i.b, %i.ff
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit
  %i.fg = load ptr, ptr %i.fd, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.fg) #6
  %i.fh = icmp sgt i64 %i.b, 0
  br i1 %i.fh, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %bb.k
  %i.fi = icmp samesign ugt i64 %i.b, 4611686018427387903
  br i1 %i.fi, label %bb.m, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i

bb.m:                                             ; preds = %bb.l
  %i.fj = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fj, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fj, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i: ; preds = %bb.l
  %i.fk = shl nuw i64 %i.b, 2
  %i.fl = tail call noalias ptr @malloc(i64 noundef %i.fk) #38 ; 2 uses
  %i.fm = icmp eq ptr %i.fl, null
  br i1 %i.fm, label %bb.n, label %.sink.split.i.i

bb.n:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i
  %i.fn = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fn, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fn, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.fl, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.fd, align 8, !tbaa !314
  %.pre = load i64, ptr %i.bl, align 8, !tbaa !306
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, %.sink.split.i.i
  %i.fo = phi i64 [ %i.bm, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit ], [ %.pre, %.sink.split.i.i ] ; 5 uses
  store i64 %i.b, ptr %i.fe, align 8, !tbaa !315
  %i.fp = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 5 uses
  %i.fq = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  %i.fr = load i64, ptr %i.fq, align 8, !tbaa !316
  %.not.i.i66 = icmp eq i64 %i.fo, %i.fr
  br i1 %.not.i.i66, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit, label %bb.o

bb.o:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.fs = load ptr, ptr %i.fp, align 8, !tbaa !312
  tail call void @free(ptr noundef %i.fs) #6
  %i.ft = icmp sgt i64 %i.fo, 0
  br i1 %i.ft, label %bb.p, label %.sink.split.i.i67

bb.p:                                             ; preds = %bb.o
  %i.fu = icmp samesign ugt i64 %i.fo, 4611686018427387903
  br i1 %i.fu, label %bb.q, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69

bb.q:                                             ; preds = %bb.p
  %i.fv = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fv, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fv, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69: ; preds = %bb.p
  %i.fw = shl nuw i64 %i.fo, 2
  %i.fx = tail call noalias ptr @malloc(i64 noundef %i.fw) #38 ; 2 uses
  %i.fy = icmp eq ptr %i.fx, null
  br i1 %i.fy, label %bb.r, label %.sink.split.i.i67

bb.r:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69
  %i.fz = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.fz, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.fz, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i67:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69, %bb.o
  %.sink.i.i68 = phi ptr [ %i.fx, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i69 ], [ null, %bb.o ]
  store ptr %.sink.i.i68, ptr %i.fp, align 8, !tbaa !312
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, %.sink.split.i.i67
  store i64 %i.fo, ptr %i.fq, align 8, !tbaa !316
  %i.ga = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 2 uses
  store i64 %.sroa.speculated.i, ptr %i.ga, align 8, !tbaa !327
  %i.gb = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 3 uses
  store double 0.000000e+00, ptr %i.gb, align 8, !tbaa !328
  %i.gc = icmp sgt i64 %.sroa.speculated.i, 0
  br i1 %i.gc, label %.lr.ph235, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.gd = getelementptr inbounds nuw i8, ptr %0, i64 24
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.gd, i64 noundef %i.b)
  %i.ge = getelementptr inbounds nuw i8, ptr %0, i64 40
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.ge, i64 noundef %i.bm)
  br label %._crit_edge244

.lr.ph235:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIiLi1ELin1ELi1ELi1ELin1EEEE6resizeEl.exit
  %i.gf = add nsw i64 %i.b, -1
  %i.gg = add nsw i64 %.sroa.speculated.i, -1     ; 3 uses
  %i.gh = shl i64 %i.b, 3
  %i.gi = add i64 %i.gh, -8
  %i.gj = add i64 %i.b, -2                        ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph235, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread
  %.060232 = phi i64 [ 0, %.lr.ph235 ], [ %i.ws, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ] ; 31 uses
  %.061231 = phi i64 [ 0, %.lr.ph235 ], [ %.2, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ] ; 5 uses
  %i.gk = xor i64 %.060232, -1
  %i.gl = add i64 %i.b, %i.gk                     ; 4 uses
  %i.gm = shl i64 %.060232, 3
  %i.gn = add i64 %i.gm, 8                        ; 2 uses
  %i.go = shl i64 %.060232, 3
  %i.gp = sub i64 %i.gi, %i.go
  %i.gq = sub nsw i64 %i.b, %.060232              ; 8 uses
  %i.gr = sub nsw i64 %i.bm, %.060232             ; 5 uses
  %i.gs = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !642 ; 23 uses
  %i.gt = sub nsw i64 %i.gs, %i.gq
  %i.gu = load i64, ptr %i.bl, align 8, !tbaa !306, !noalias !642 ; 10 uses
  %i.gv = sub nsw i64 %i.gu, %i.gr
  %i.gw = load ptr, ptr %0, align 8, !tbaa !307, !noalias !642 ; 13 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %i.gw, i64 %i.gt
  %i.gy = mul nsw i64 %i.gv, %i.gs
  %i.gz = getelementptr inbounds [8 x i8], ptr %i.gx, i64 %i.gy ; 5 uses
  %i.ha = mul nuw nsw i64 %i.gr, %i.gq
  %i.hb = icmp eq i64 %i.ha, 0
  br i1 %i.hb, label %.lr.ph, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hc = load double, ptr %i.gz, align 8, !tbaa !189
  %i.hd = tail call noundef double @llvm.fabs.f64(double %i.hc) ; 6 uses
  %i.he = icmp sgt i64 %i.gq, 1
  br i1 %i.he, label %.lr.ph.i.i.i.i71.preheader, label %.preheader25.i.i.i.i

.lr.ph.i.i.i.i71.preheader:                       ; preds = %bb.t
  %xtraiter506 = and i64 %i.gl, 1
  %i.hf = icmp eq i64 %i.gj, %.060232
  br i1 %i.hf, label %.lr.ph.i.i.i.i71.epil.preheader, label %.lr.ph.i.i.i.i71.preheader.new

.lr.ph.i.i.i.i71.preheader.new:                   ; preds = %.lr.ph.i.i.i.i71.preheader
  %unroll_iter513 = and i64 %i.gl, -2
  br label %.lr.ph.i.i.i.i71

.preheader25.i.i.i.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i71
  %lcmp.mod508.not = icmp eq i64 %xtraiter506, 0
  br i1 %lcmp.mod508.not, label %.preheader25.i.i.i.i, label %.lr.ph.i.i.i.i71.epil.preheader

.lr.ph.i.i.i.i71.epil.preheader:                  ; preds = %.preheader25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i71.preheader
  %.sroa.0.4.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader ], [ %.sroa.0.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.10.4.i.i.epil.init = phi double [ %i.hd, %.lr.ph.i.i.i.i71.preheader ], [ %.sroa.10.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ]
  %.02127.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i71.preheader ], [ %i.hz, %.preheader25.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.hd, %.lr.ph.i.i.i.i71.preheader ], [ %i.hy, %.preheader25.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod512 = trunc i64 %i.gl to i1
  tail call void @llvm.assume(i1 %lcmp.mod512)
  %i.hg = getelementptr [8 x i8], ptr %i.gz, i64 %.02127.i.i.i.i.epil.init
  %i.hh = load double, ptr %i.hg, align 8, !tbaa !189
  %i.hi = tail call noundef double @llvm.fabs.f64(double %i.hh) ; 3 uses
  %i.hj = fcmp ogt double %i.hi, %.epil.init      ; 3 uses
  %.sroa.0.5.i.i.epil = select i1 %i.hj, i64 %.02127.i.i.i.i.epil.init, i64 %.sroa.0.4.i.i.epil.init
  %.sroa.10.5.i.i.epil = select i1 %i.hj, double %i.hi, double %.sroa.10.4.i.i.epil.init
  %i.hk = select i1 %i.hj, double %i.hi, double %.epil.init
  br label %.preheader25.i.i.i.i

.preheader25.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i71.epil.preheader, %.preheader25.i.i.i.i.loopexit.unr-lcssa, %bb.t
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.t ], [ %.sroa.0.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.0.5.i.i.epil, %.lr.ph.i.i.i.i71.epil.preheader ] ; 2 uses
  %.sroa.10.0.i.i = phi double [ %i.hd, %bb.t ], [ %.sroa.10.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.10.5.i.i.epil, %.lr.ph.i.i.i.i71.epil.preheader ] ; 2 uses
  %.promoted34.i.i.i.i = phi double [ %i.hd, %bb.t ], [ %i.hy, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %i.hk, %.lr.ph.i.i.i.i71.epil.preheader ]
  %i.hl = icmp sgt i64 %i.gr, 1
  br i1 %i.hl, label %.preheader.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit

.preheader.i.i.i.i.preheader:                     ; preds = %.preheader25.i.i.i.i
  %xtraiter515 = and i64 %i.gq, 1
  %i.hm = icmp eq i64 %i.gl, 0
  %unroll_iter525 = and i64 %i.gq, -2
  %lcmp.mod519.not = icmp eq i64 %xtraiter515, 0
  %lcmp.mod524 = trunc i64 %i.gq to i1
  br label %.preheader.i.i.i.i

.lr.ph.i.i.i.i71:                                 ; preds = %.lr.ph.i.i.i.i71, %.lr.ph.i.i.i.i71.preheader.new
  %.sroa.0.4.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader.new ], [ %.sroa.0.5.i.i.1, %.lr.ph.i.i.i.i71 ]
  %.sroa.10.4.i.i = phi double [ %i.hd, %.lr.ph.i.i.i.i71.preheader.new ], [ %.sroa.10.5.i.i.1, %.lr.ph.i.i.i.i71 ]
  %.02127.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i71.preheader.new ], [ %i.hz, %.lr.ph.i.i.i.i71 ] ; 4 uses
  %i.hn = phi double [ %i.hd, %.lr.ph.i.i.i.i71.preheader.new ], [ %i.hy, %.lr.ph.i.i.i.i71 ] ; 2 uses
  %niter514 = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader.new ], [ %niter514.next.1, %.lr.ph.i.i.i.i71 ]
  %i.ho = getelementptr [8 x i8], ptr %i.gz, i64 %.02127.i.i.i.i
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !189
  %i.hq = tail call noundef double @llvm.fabs.f64(double %i.hp) ; 3 uses
  %i.hr = fcmp ogt double %i.hq, %i.hn            ; 3 uses
  %.sroa.0.5.i.i = select i1 %i.hr, i64 %.02127.i.i.i.i, i64 %.sroa.0.4.i.i
  %.sroa.10.5.i.i = select i1 %i.hr, double %i.hq, double %.sroa.10.4.i.i
  %i.hs = select i1 %i.hr, double %i.hq, double %i.hn ; 2 uses
  %i.ht = add nuw nsw i64 %.02127.i.i.i.i, 1      ; 2 uses
  %i.hu = getelementptr [8 x i8], ptr %i.gz, i64 %i.ht
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !189
  %i.hw = tail call noundef double @llvm.fabs.f64(double %i.hv) ; 3 uses
  %i.hx = fcmp ogt double %i.hw, %i.hs            ; 3 uses
  %.sroa.0.5.i.i.1 = select i1 %i.hx, i64 %i.ht, i64 %.sroa.0.5.i.i ; 3 uses
  %.sroa.10.5.i.i.1 = select i1 %i.hx, double %i.hw, double %.sroa.10.5.i.i ; 3 uses
  %i.hy = select i1 %i.hx, double %i.hw, double %i.hs ; 3 uses
  %i.hz = add nuw nsw i64 %.02127.i.i.i.i, 2      ; 2 uses
  %niter514.next.1 = add nuw i64 %niter514, 2     ; 2 uses
  %niter514.ncmp.1 = icmp eq i64 %niter514.next.1, %unroll_iter513
  br i1 %niter514.ncmp.1, label %.preheader25.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i71, !llvm.loop !588

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %._crit_edge.i.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.sroa.10.1.i.i = phi double [ %.sroa.10.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.sroa.10.0.i.i, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.promoted3137.i.i.i.i = phi double [ %.promoted3135.i.i.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.promoted34.i.i.i.i, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %.02032.i.i.i.i = phi i64 [ %i.ig, %._crit_edge.i.i.i.i ], [ 1, %.preheader.i.i.i.i.preheader ] ; 5 uses
  %i.ia = mul nsw i64 %.02032.i.i.i.i, %i.gs
  %i.ib = getelementptr [8 x i8], ptr %i.gz, i64 %i.ia ; 3 uses
  br i1 %i.hm, label %.epil.preheader, label %.preheader.i.i.i.i.new

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1
  br i1 %lcmp.mod519.not, label %._crit_edge.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i
  %.sroa.0.2.i.i.epil.init = phi i64 [ %.sroa.0.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.0.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.sroa.10.2.i.i.epil.init = phi double [ %.sroa.10.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.10.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.sroa.7.2.i.i.epil.init = phi i64 [ %.sroa.7.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.7.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.promoted3136.i.i.i.i.epil.init = phi double [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ], [ %.promoted3135.i.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.epil.init518 = phi double [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ], [ %i.is, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.029.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.it, %._crit_edge.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod524)
  %i.ic = getelementptr [8 x i8], ptr %i.ib, i64 %.029.i.i.i.i.epil.init
  %i.id = load double, ptr %i.ic, align 8, !tbaa !189
  %i.ie = tail call noundef double @llvm.fabs.f64(double %i.id) ; 3 uses
  %i.if = fcmp ogt double %i.ie, %.epil.init518
  br i1 %i.if, label %bb.u, label %._crit_edge.i.i.i.i

bb.u:                                             ; preds = %.epil.preheader
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.epil.preheader, %bb.u, %._crit_edge.i.i.i.i.unr-lcssa
  %.sroa.0.3.i.i.lcssa = phi i64 [ %.sroa.0.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %.029.i.i.i.i.epil.init, %bb.u ], [ %.sroa.0.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.sroa.10.3.i.i.lcssa = phi double [ %.sroa.10.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.ie, %bb.u ], [ %.sroa.10.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.sroa.7.3.i.i.lcssa = phi i64 [ %.sroa.7.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %.02032.i.i.i.i, %bb.u ], [ %.sroa.7.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.promoted3135.i.i.i.i.lcssa = phi double [ %.promoted3135.i.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.ie, %bb.u ], [ %.promoted3136.i.i.i.i.epil.init, %.epil.preheader ]
  %i.ig = add nuw nsw i64 %.02032.i.i.i.i, 1      ; 2 uses
  %exitcond39.not.i.i.i.i = icmp eq i64 %i.ig, %i.gr
  br i1 %exitcond39.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit, label %.preheader.i.i.i.i, !llvm.loop !589

.preheader.i.i.i.i.new:                           ; preds = %.preheader.i.i.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.0.1.i.i, %.preheader.i.i.i.i ]
  %.sroa.10.2.i.i = phi double [ %.sroa.10.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.10.1.i.i, %.preheader.i.i.i.i ]
  %.sroa.7.2.i.i = phi i64 [ %.sroa.7.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.7.1.i.i, %.preheader.i.i.i.i ]
  %.promoted3136.i.i.i.i = phi double [ %.promoted3135.i.i.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ]
  %i.ih = phi double [ %i.is, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.029.i.i.i.i = phi i64 [ %i.it, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ 0, %.preheader.i.i.i.i ] ; 4 uses
  %niter526 = phi i64 [ %niter526.next.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ 0, %.preheader.i.i.i.i ]
  %i.ii = getelementptr [8 x i8], ptr %i.ib, i64 %.029.i.i.i.i
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !189
  %i.ik = tail call noundef double @llvm.fabs.f64(double %i.ij) ; 4 uses
  %i.il = fcmp ogt double %i.ik, %i.ih
  br i1 %i.il, label %bb.v, label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i

bb.v:                                             ; preds = %.preheader.i.i.i.i.new
  br label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i

_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i: ; preds = %bb.v, %.preheader.i.i.i.i.new
  %.sroa.0.3.i.i = phi i64 [ %.029.i.i.i.i, %bb.v ], [ %.sroa.0.2.i.i, %.preheader.i.i.i.i.new ]
  %.sroa.10.3.i.i = phi double [ %i.ik, %bb.v ], [ %.sroa.10.2.i.i, %.preheader.i.i.i.i.new ]
  %.sroa.7.3.i.i = phi i64 [ %.02032.i.i.i.i, %bb.v ], [ %.sroa.7.2.i.i, %.preheader.i.i.i.i.new ]
  %.promoted3135.i.i.i.i = phi double [ %i.ik, %bb.v ], [ %.promoted3136.i.i.i.i, %.preheader.i.i.i.i.new ]
  %i.im = phi double [ %i.ik, %bb.v ], [ %i.ih, %.preheader.i.i.i.i.new ] ; 2 uses
  %i.in = or disjoint i64 %.029.i.i.i.i, 1        ; 2 uses
  %i.io = getelementptr [8 x i8], ptr %i.ib, i64 %i.in
  %i.ip = load double, ptr %i.io, align 8, !tbaa !189
  %i.iq = tail call noundef double @llvm.fabs.f64(double %i.ip) ; 4 uses
  %i.ir = fcmp ogt double %i.iq, %i.im
  br i1 %i.ir, label %bb.w, label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1

bb.w:                                             ; preds = %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i
  br label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1

_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1: ; preds = %bb.w, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i
  %.sroa.0.3.i.i.1 = phi i64 [ %i.in, %bb.w ], [ %.sroa.0.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.sroa.10.3.i.i.1 = phi double [ %i.iq, %bb.w ], [ %.sroa.10.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.sroa.7.3.i.i.1 = phi i64 [ %.02032.i.i.i.i, %bb.w ], [ %.sroa.7.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.promoted3135.i.i.i.i.1 = phi double [ %i.iq, %bb.w ], [ %.promoted3135.i.i.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %i.is = phi double [ %i.iq, %bb.w ], [ %i.im, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 2 uses
  %i.it = add nuw nsw i64 %.029.i.i.i.i, 2        ; 2 uses
  %niter526.next.1 = add i64 %niter526, 2         ; 2 uses
  %niter526.ncmp.1 = icmp eq i64 %niter526.next.1, %unroll_iter525
  br i1 %niter526.ncmp.1, label %._crit_edge.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.new, !llvm.loop !590

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit: ; preds = %._crit_edge.i.i.i.i, %.preheader25.i.i.i.i
  %.sroa.0.6.i.i = phi i64 [ %.sroa.0.0.i.i, %.preheader25.i.i.i.i ], [ %.sroa.0.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.10.6.i.i = phi double [ %.sroa.10.0.i.i, %.preheader25.i.i.i.i ], [ %.sroa.10.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.7.6.i.i = phi i64 [ 0, %.preheader25.i.i.i.i ], [ %.sroa.7.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.iu = add i64 %.sroa.0.6.i.i, %.060232        ; 3 uses
  %i.iv = add i64 %.sroa.7.6.i.i, %.060232        ; 4 uses
  %i.iw = fcmp une double %.sroa.10.6.i.i, 0.000000e+00
  br i1 %i.iw, label %bb.x, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit, %bb.s
  store i64 %.060232, ptr %i.ga, align 8, !tbaa !327
  %i.ix = load ptr, ptr %i.fd, align 8, !tbaa !314 ; 7 uses
  %i.iy = load ptr, ptr %i.fp, align 8, !tbaa !312 ; 7 uses
  %i.iz = sub nsw i64 %.sroa.speculated.i, %.060232 ; 3 uses
  %min.iters.check457 = icmp ult i64 %i.iz, 8
  %i.ja = ptrtoaddr ptr %i.iy to i64
  %i.jb = ptrtoaddr ptr %i.ix to i64
  %i.jc = sub i64 %i.jb, %i.ja
  %diff.check = icmp ugt i64 %i.jc, -32
  %or.cond = select i1 %min.iters.check457, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph456.preheader, label %vector.ph459

vector.ph459:                                     ; preds = %.lr.ph
  %n.vec460 = and i64 %i.iz, -8                   ; 3 uses
  %i.jd = add i64 %.060232, %n.vec460
  %i.je = trunc i64 %.060232 to i32
  %broadcast.splatinsert461 = insertelement <4 x i32> poison, i32 %i.je, i64 0
  %broadcast.splat462 = shufflevector <4 x i32> %broadcast.splatinsert461, <4 x i32> poison, <4 x i32> zeroinitializer
  %induction = add <4 x i32> %broadcast.splat462, <i32 0, i32 1, i32 2, i32 3>
  br label %vector.body463

vector.body463:                                   ; preds = %vector.body463, %vector.ph459
  %index464 = phi i64 [ 0, %vector.ph459 ], [ %index.next465, %vector.body463 ] ; 2 uses
  %vec.ind = phi <4 x i32> [ %induction, %vector.ph459 ], [ %vec.ind.next, %vector.body463 ] ; 4 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4) ; 2 uses
  %i.jf = add nuw i64 %.060232, %index464         ; 2 uses
  %i.jg = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %i.jf ; 2 uses
  %i.jh = getelementptr inbounds nuw i8, ptr %i.jg, i64 16
  store <4 x i32> %vec.ind, ptr %i.jg, align 4, !tbaa !166
  store <4 x i32> %step.add, ptr %i.jh, align 4, !tbaa !166
  %i.ji = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %i.jf ; 2 uses
  %i.jj = getelementptr inbounds nuw i8, ptr %i.ji, i64 16
  store <4 x i32> %vec.ind, ptr %i.ji, align 4, !tbaa !166
  store <4 x i32> %step.add, ptr %i.jj, align 4, !tbaa !166
  %index.next465 = add nuw i64 %index464, 8       ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.jk = icmp eq i64 %index.next465, %n.vec460
  br i1 %i.jk, label %middle.block466, label %vector.body463, !llvm.loop !591

middle.block466:                                  ; preds = %vector.body463
  %cmp.n467 = icmp eq i64 %i.iz, %n.vec460
  br i1 %cmp.n467, label %._crit_edge, label %scalar.ph456.preheader

scalar.ph456.preheader:                           ; preds = %.lr.ph, %middle.block466
  %storemerge230.ph = phi i64 [ %.060232, %.lr.ph ], [ %i.jd, %middle.block466 ] ; 4 uses
  %i.jl = sub i64 %.sroa.speculated.i, %storemerge230.ph
  %xtraiter542 = and i64 %i.jl, 3                 ; 2 uses
  %lcmp.mod543.not = icmp eq i64 %xtraiter542, 0
  br i1 %lcmp.mod543.not, label %scalar.ph456.prol.loopexit, label %scalar.ph456.prol

scalar.ph456.prol:                                ; preds = %scalar.ph456.preheader, %scalar.ph456.prol
  %storemerge230.prol = phi i64 [ %i.jp, %scalar.ph456.prol ], [ %storemerge230.ph, %scalar.ph456.preheader ] ; 4 uses
  %prol.iter544 = phi i64 [ %prol.iter544.next, %scalar.ph456.prol ], [ 0, %scalar.ph456.preheader ]
  %i.jm = trunc i64 %storemerge230.prol to i32    ; 2 uses
  %i.jn = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %storemerge230.prol
  store i32 %i.jm, ptr %i.jn, align 4, !tbaa !166
  %i.jo = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %storemerge230.prol
  store i32 %i.jm, ptr %i.jo, align 4, !tbaa !166
  %i.jp = add nuw nsw i64 %storemerge230.prol, 1  ; 2 uses
  %prol.iter544.next = add i64 %prol.iter544, 1   ; 2 uses
  %prol.iter544.cmp.not = icmp eq i64 %prol.iter544.next, %xtraiter542
  br i1 %prol.iter544.cmp.not, label %scalar.ph456.prol.loopexit, label %scalar.ph456.prol, !llvm.loop !592

scalar.ph456.prol.loopexit:                       ; preds = %scalar.ph456.prol, %scalar.ph456.preheader
  %storemerge230.unr = phi i64 [ %storemerge230.ph, %scalar.ph456.preheader ], [ %i.jp, %scalar.ph456.prol ]
  %i.jq = sub i64 %storemerge230.ph, %.sroa.speculated.i
  %i.jr = icmp ugt i64 %i.jq, -4
  br i1 %i.jr, label %._crit_edge, label %scalar.ph456

scalar.ph456:                                     ; preds = %scalar.ph456.prol.loopexit, %scalar.ph456
  %storemerge230 = phi i64 [ %i.kh, %scalar.ph456 ], [ %storemerge230.unr, %scalar.ph456.prol.loopexit ] ; 7 uses
  %i.js = trunc i64 %storemerge230 to i32         ; 2 uses
  %i.jt = getelementptr inbounds nuw [4 x i8], ptr %i.ix, i64 %storemerge230
  store i32 %i.js, ptr %i.jt, align 4, !tbaa !166
  %i.ju = getelementptr inbounds nuw [4 x i8], ptr %i.iy, i64 %storemerge230
  store i32 %i.js, ptr %i.ju, align 4, !tbaa !166
end_hunk_0
begin_hunk_1_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  %i.ov = sub i64 %i.gs, %.05.i18.i.i.i.i.i.i.ph
  %.neg556 = add i64 %.05.i18.i.i.i.i.i.i.ph, 1
  %xtraiter533 = and i64 %i.ov, 1
  %lcmp.mod534.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod534.not, label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.prol:                      ; preds = %.lr.ph.i17.i.i.i.i.i.i.preheader476
  %i.ow = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.ox = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %.05.i18.i.i.i.i.i.i.ph ; 2 uses
  %i.oy = load double, ptr %i.ow, align 8, !tbaa !189
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !189
  store double %i.oz, ptr %i.ow, align 8, !tbaa !189
  store double %i.oy, ptr %i.ox, align 8, !tbaa !189
  %i.pa = add nsw i64 %.05.i18.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.prol.loopexit:             ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.preheader476
  %.05.i18.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.preheader476 ], [ %i.pa, %.lr.ph.i17.i.i.i.i.i.i.prol ]
  %i.pb = icmp eq i64 %i.gs, %.neg556
  br i1 %i.pb, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i:                           ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i = phi i64 [ %i.pl, %.lr.ph.i17.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.pc = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.pd = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %.05.i18.i.i.i.i.i.i ; 2 uses
  %i.pe = load double, ptr %i.pc, align 8, !tbaa !189
  %i.pf = load double, ptr %i.pd, align 8, !tbaa !189
  store double %i.pf, ptr %i.pc, align 8, !tbaa !189
  store double %i.pe, ptr %i.pd, align 8, !tbaa !189
  %i.pg = add nsw i64 %.05.i18.i.i.i.i.i.i, 1     ; 2 uses
  %i.ph = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %i.pg ; 2 uses
  %i.pi = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %i.pg ; 2 uses
  %i.pj = load double, ptr %i.ph, align 8, !tbaa !189
  %i.pk = load double, ptr %i.pi, align 8, !tbaa !189
  store double %i.pk, ptr %i.ph, align 8, !tbaa !189
  store double %i.pj, ptr %i.pi, align 8, !tbaa !189
  %i.pl = add nsw i64 %.05.i18.i.i.i.i.i.i, 2     ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.1 = icmp eq i64 %i.pl, %i.gs
  br i1 %exitcond.not.i19.i.i.i.i.i.i.1, label %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit, label %.lr.ph.i17.i.i.i.i.i.i, !llvm.loop !608

.lr.ph.i.i.i.i.i.i73:                             ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, %.lr.ph.i.i.i.i.i.i73
  %.021.i.i.i.i.i.i = phi i64 [ %i.pq, %.lr.ph.i.i.i.i.i.i73 ], [ %.0.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEEESA_NS0_14swap_assign_opIdEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i ] ; 3 uses
  %i.pm = getelementptr inbounds [8 x i8], ptr %i.mb, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.pn = load <2 x double>, ptr %i.pm, align 1, !tbaa !182
  %i.po = getelementptr inbounds [8 x i8], ptr %i.ma, i64 %.021.i.i.i.i.i.i ; 2 uses
  %i.pp = load <2 x double>, ptr %i.po, align 16, !tbaa !182
  store <2 x double> %i.pp, ptr %i.pm, align 1, !tbaa !182
  store <2 x double> %i.pn, ptr %i.po, align 16, !tbaa !182
  %i.pq = add nsw i64 %.021.i.i.i.i.i.i, 2        ; 2 uses
  %i.pr = icmp slt i64 %i.pq, %i.mk
  br i1 %i.pr, label %.lr.ph.i.i.i.i.i.i73, label %._crit_edge.i.i.i.i.i.i, !llvm.loop !609

_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i, %middle.block404, %._crit_edge.i.i.i.i.i.i
  %i.ps = add nsw i64 %.1, 1
  br label %bb.ae

bb.ae:                                            ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit, %bb.ab
  %.2 = phi i64 [ %i.ps, %_ZN5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEEE4swapIS4_EEvRKNS0_IT_EE.exit ], [ %.1, %bb.ab ] ; 2 uses
  %i.pt = icmp slt i64 %.060232, %i.gf
  br i1 %i.pt, label %bb.af, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

bb.af:                                            ; preds = %bb.ae
  %i.pu = load ptr, ptr %0, align 8, !tbaa !307   ; 2 uses
  %i.pv = load i64, ptr %i.a, align 8, !tbaa !305 ; 2 uses
  %i.pw = mul nsw i64 %i.pv, %.060232             ; 2 uses
  %i.px = getelementptr [8 x i8], ptr %i.pu, i64 %.060232
  %i.py = getelementptr [8 x i8], ptr %i.px, i64 %i.pw
  %i.pz = getelementptr inbounds [8 x i8], ptr %i.pu, i64 %i.pw
  %i.qa = add nsw i64 %i.gq, -1                   ; 7 uses
  %i.qb = sub nsw i64 %i.pv, %i.qa
  %i.qc = getelementptr inbounds [8 x i8], ptr %i.pz, i64 %i.qb ; 6 uses
  %i.qd = load double, ptr %i.py, align 8, !tbaa !189, !noalias !649 ; 5 uses
  %i.qe = ptrtoint ptr %i.qc to i64               ; 2 uses
  %i.qf = and i64 %i.qe, 7
  %.not.i.i.i.i.i.i.i74 = icmp eq i64 %i.qf, 0
  br i1 %.not.i.i.i.i.i.i.i74, label %bb.ag, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75

bb.ag:                                            ; preds = %bb.af
  %i.qg = lshr exact i64 %i.qe, 3
  %i.qh = and i64 %i.qg, 1
  %i.qi = tail call i64 @llvm.smin.i64(i64 %i.qh, i64 %i.qa)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75: ; preds = %bb.ag, %bb.af
  %.0.i.i.i.i.i.i.i76 = phi i64 [ %i.qi, %bb.ag ], [ %i.qa, %bb.af ] ; 9 uses
  %i.qj = sub nsw i64 %i.qa, %.0.i.i.i.i.i.i.i76  ; 2 uses
  %i.qk = sdiv i64 %i.qj, 2
  %i.ql = shl nsw i64 %i.qk, 1                    ; 2 uses
  %i.qm = add nsw i64 %i.ql, %.0.i.i.i.i.i.i.i76  ; 5 uses
  %i.qn = icmp sgt i64 %.0.i.i.i.i.i.i.i76, 0
  br i1 %i.qn, label %.lr.ph.i.i.i.i.i.i.i83.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i83.preheader:                 ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75
  %min.iters.check369 = icmp eq i64 %.0.i.i.i.i.i.i.i76, 1
  br i1 %min.iters.check369, label %.lr.ph.i.i.i.i.i.i.i83.preheader475, label %vector.ph370

vector.ph370:                                     ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader
  %n.vec371 = and i64 %.0.i.i.i.i.i.i.i76, 9223372036854775806 ; 3 uses
  %broadcast.splatinsert372 = insertelement <2 x double> poison, double %i.qd, i64 0
  %broadcast.splat373 = shufflevector <2 x double> %broadcast.splatinsert372, <2 x double> poison, <2 x i32> zeroinitializer
  br label %vector.body374

vector.body374:                                   ; preds = %vector.body374, %vector.ph370
  %index375 = phi i64 [ 0, %vector.ph370 ], [ %index.next377, %vector.body374 ] ; 2 uses
  %i.qo = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %index375 ; 2 uses
  %wide.load376 = load <2 x double>, ptr %i.qo, align 8, !tbaa !189
  %i.qp = fdiv <2 x double> %wide.load376, %broadcast.splat373
  store <2 x double> %i.qp, ptr %i.qo, align 8, !tbaa !189
  %index.next377 = add nuw i64 %index375, 2       ; 2 uses
  %i.qq = icmp eq i64 %index.next377, %n.vec371
  br i1 %i.qq, label %middle.block378, label %vector.body374, !llvm.loop !612

middle.block378:                                  ; preds = %vector.body374
  %cmp.n379 = icmp eq i64 %.0.i.i.i.i.i.i.i76, %n.vec371
  br i1 %cmp.n379, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i83.preheader475

.lr.ph.i.i.i.i.i.i.i83.preheader475:              ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader, %middle.block378
  %.05.i.i.i.i.i.i.i84.ph = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i.i83.preheader ], [ %n.vec371, %middle.block378 ]
  br label %.lr.ph.i.i.i.i.i.i.i83

.lr.ph.i.i.i.i.i.i.i83:                           ; preds = %.lr.ph.i.i.i.i.i.i.i83.preheader475, %.lr.ph.i.i.i.i.i.i.i83
  %.05.i.i.i.i.i.i.i84 = phi i64 [ %i.qu, %.lr.ph.i.i.i.i.i.i.i83 ], [ %.05.i.i.i.i.i.i.i84.ph, %.lr.ph.i.i.i.i.i.i.i83.preheader475 ] ; 2 uses
  %i.qr = getelementptr inbounds nuw [8 x i8], ptr %i.qc, i64 %.05.i.i.i.i.i.i.i84 ; 2 uses
  %i.qs = load double, ptr %i.qr, align 8, !tbaa !189
  %i.qt = fdiv double %i.qs, %i.qd
  store double %i.qt, ptr %i.qr, align 8, !tbaa !189
  %i.qu = add nuw nsw i64 %.05.i.i.i.i.i.i.i84, 1 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i85 = icmp eq i64 %i.qu, %.0.i.i.i.i.i.i.i76
  br i1 %exitcond.not.i.i.i.i.i.i.i85, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i83, !llvm.loop !613

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i83, %middle.block378, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i75
  %i.qv = icmp sgt i64 %i.qj, 1
  br i1 %i.qv, label %.lr.ph.i.preheader.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i77

.lr.ph.i.preheader.i.i.i.i.i:                     ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.qw = insertelement <2 x double> poison, double %i.qd, i64 0
  %i.qx = shufflevector <2 x double> %i.qw, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i81

._crit_edge.i.i.i.i.i.i77:                        ; preds = %.lr.ph.i.i.i.i.i.i81, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEENS5_INS_14CwiseNullaryOpINS0_18scalar_constant_opIdEENS7_IdLin1ELi1ELi0ELin1ELi1EEEEEEENS0_13div_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i
  %i.qy = icmp slt i64 %i.qm, %i.qa
  br i1 %i.qy, label %.lr.ph.i17.i.i.i.i.i.i78.preheader, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit

.lr.ph.i17.i.i.i.i.i.i78.preheader:               ; preds = %._crit_edge.i.i.i.i.i.i77
  %i.qz = add i64 %.0.i.i.i.i.i.i.i76, %i.ql
  %i.ra = sub i64 %i.qa, %i.qz                    ; 3 uses
  %min.iters.check356 = icmp ult i64 %i.ra, 2
  br i1 %min.iters.check356, label %.lr.ph.i17.i.i.i.i.i.i78.preheader474, label %vector.ph357

vector.ph357:                                     ; preds = %.lr.ph.i17.i.i.i.i.i.i78.preheader
  %n.vec358 = and i64 %i.ra, -2                   ; 3 uses
  %i.rb = add i64 %i.qm, %n.vec358
  %broadcast.splatinsert359 = insertelement <2 x double> poison, double %i.qd, i64 0
  %broadcast.splat360 = shufflevector <2 x double> %broadcast.splatinsert359, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rc = getelementptr [8 x i8], ptr %i.qc, i64 %i.qm
  br label %vector.body361

vector.body361:                                   ; preds = %vector.body361, %vector.ph357
  %index362 = phi i64 [ 0, %vector.ph357 ], [ %index.next364, %vector.body361 ] ; 2 uses
  %i.rd = getelementptr [8 x i8], ptr %i.rc, i64 %index362 ; 2 uses
  %wide.load363 = load <2 x double>, ptr %i.rd, align 8, !tbaa !189
  %i.re = fdiv <2 x double> %wide.load363, %broadcast.splat360
  store <2 x double> %i.re, ptr %i.rd, align 8, !tbaa !189
  %index.next364 = add nuw i64 %index362, 2       ; 2 uses
  %i.rf = icmp eq i64 %index.next364, %n.vec358
  br i1 %i.rf, label %middle.block365, label %vector.body361, !llvm.loop !614

middle.block365:                                  ; preds = %vector.body361
  %cmp.n366 = icmp eq i64 %i.ra, %n.vec358
  br i1 %cmp.n366, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i78.preheader474

.lr.ph.i17.i.i.i.i.i.i78.preheader474:            ; preds = %.lr.ph.i17.i.i.i.i.i.i78.preheader, %middle.block365
  %.05.i18.i.i.i.i.i.i79.ph = phi i64 [ %i.qm, %.lr.ph.i17.i.i.i.i.i.i78.preheader ], [ %i.rb, %middle.block365 ]
  br label %.lr.ph.i17.i.i.i.i.i.i78

.lr.ph.i17.i.i.i.i.i.i78:                         ; preds = %.lr.ph.i17.i.i.i.i.i.i78.preheader474, %.lr.ph.i17.i.i.i.i.i.i78
  %.05.i18.i.i.i.i.i.i79 = phi i64 [ %i.rj, %.lr.ph.i17.i.i.i.i.i.i78 ], [ %.05.i18.i.i.i.i.i.i79.ph, %.lr.ph.i17.i.i.i.i.i.i78.preheader474 ] ; 2 uses
  %i.rg = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %.05.i18.i.i.i.i.i.i79 ; 2 uses
  %i.rh = load double, ptr %i.rg, align 8, !tbaa !189
  %i.ri = fdiv double %i.rh, %i.qd
  store double %i.ri, ptr %i.rg, align 8, !tbaa !189
  %i.rj = add nsw i64 %.05.i18.i.i.i.i.i.i79, 1   ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i80 = icmp eq i64 %i.rj, %i.qa
  br i1 %exitcond.not.i19.i.i.i.i.i.i80, label %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit, label %.lr.ph.i17.i.i.i.i.i.i78, !llvm.loop !615

.lr.ph.i.i.i.i.i.i81:                             ; preds = %.lr.ph.i.i.i.i.i.i81, %.lr.ph.i.preheader.i.i.i.i.i
  %.021.i.i.i.i.i.i82 = phi i64 [ %i.rn, %.lr.ph.i.i.i.i.i.i81 ], [ %.0.i.i.i.i.i.i.i76, %.lr.ph.i.preheader.i.i.i.i.i ] ; 2 uses
  %i.rk = getelementptr inbounds [8 x i8], ptr %i.qc, i64 %.021.i.i.i.i.i.i82 ; 2 uses
  %i.rl = load <2 x double>, ptr %i.rk, align 16, !tbaa !182
  %i.rm = fdiv <2 x double> %i.rl, %i.qx
  store <2 x double> %i.rm, ptr %i.rk, align 16, !tbaa !182
  %i.rn = add nsw i64 %.021.i.i.i.i.i.i82, 2      ; 2 uses
  %i.ro = icmp slt i64 %i.rn, %i.qm
  br i1 %i.ro, label %.lr.ph.i.i.i.i.i.i81, label %._crit_edge.i.i.i.i.i.i77, !llvm.loop !616

_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit: ; preds = %.lr.ph.i17.i.i.i.i.i.i78, %middle.block365, %._crit_edge.i.i.i.i.i.i77, %bb.ae
  %i.rp = icmp slt i64 %.060232, %i.gg
  br i1 %i.rp, label %.lr.ph.i.i.i.i.i.preheader, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread

.lr.ph.i.i.i.i.i.preheader:                       ; preds = %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.rq = load ptr, ptr %0, align 8, !tbaa !307, !noalias !650 ; 5 uses
  %i.rr = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !650 ; 7 uses
  %i.rs = mul i64 %i.rr, %.060232
  %i.rt = getelementptr [8 x i8], ptr %i.rq, i64 %i.rs
  %i.ru = add i64 %i.gq, -1                       ; 8 uses
  %i.rv = sub i64 %i.rr, %i.ru
  %i.rw = getelementptr [8 x i8], ptr %i.rt, i64 %i.rv ; 12 uses
  %i.rx = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %.060232
  %i.ry = load i64, ptr %i.bl, align 8, !tbaa !306, !noalias !651
  %i.rz = add nsw i64 %i.gr, -1                   ; 2 uses
  %i.sa = sub nsw i64 %i.ry, %i.rz
  %i.sb = mul nsw i64 %i.sa, %i.rr
  %i.sc = getelementptr inbounds [8 x i8], ptr %i.rx, i64 %i.sb
  %i.sd = add nuw nsw i64 %.060232, 1             ; 2 uses
  %i.se = getelementptr inbounds nuw [8 x i8], ptr %i.rq, i64 %i.sd
  %i.sf = mul nsw i64 %i.rr, %i.sd
  %i.sg = getelementptr inbounds [8 x i8], ptr %i.se, i64 %i.sf ; 3 uses
  %i.sh = mul i64 %i.rr, %i.gn
  %scevgep = getelementptr i8, ptr %i.rq, i64 %i.sh
  %i.si = add i64 %i.rr, 1
  %i.sj = mul i64 %i.gn, %i.si
  %i.sk = getelementptr i8, ptr %i.rq, i64 %i.gp
  %i.sl = getelementptr i8, ptr %i.sk, i64 %i.sj
  br label %.lr.ph.i.i.i.i.i

.lr.ph.i.i.i.i.i:                                 ; preds = %.lr.ph.i.i.i.i.i.preheader, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i
  %.029.i.i.i.i.i = phi i64 [ %i.wr, %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i ], [ 0, %.lr.ph.i.i.i.i.i.preheader ] ; 5 uses
  %i.sm = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !652 ; 3 uses
  %i.sn = mul nsw i64 %i.sm, %.029.i.i.i.i.i
  %i.so = getelementptr inbounds [8 x i8], ptr %i.sg, i64 %i.sn ; 11 uses
  %i.sp = mul nsw i64 %.029.i.i.i.i.i, %i.rr
  %i.sq = getelementptr [8 x i8], ptr %i.sc, i64 %i.sp
  %i.sr = load double, ptr %i.sq, align 8, !tbaa !189, !noalias !653 ; 9 uses
  %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i = insertelement <2 x double> poison, double %i.sr, i64 0
  %i.ss = ptrtoint ptr %i.so to i64               ; 2 uses
  %i.st = and i64 %i.ss, 7
  %.not.i.i.i.i.i.i.i.i.i.i.i.i.i = icmp eq i64 %i.st, 0
  br i1 %.not.i.i.i.i.i.i.i.i.i.i.i.i.i, label %bb.ah, label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

bb.ah:                                            ; preds = %.lr.ph.i.i.i.i.i
  %i.su = lshr exact i64 %i.ss, 3
  %i.sv = and i64 %i.su, 1
  %i.sw = tail call i64 @llvm.smin.i64(i64 %i.sv, i64 %i.ru)
  br label %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i

_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %bb.ah, %.lr.ph.i.i.i.i.i
  %.0.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.sw, %bb.ah ], [ %i.ru, %.lr.ph.i.i.i.i.i ] ; 13 uses
  %i.sx = sub nsw i64 %i.ru, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.sy = sdiv i64 %i.sx, 2                       ; 2 uses
  %i.sz = shl nsw i64 %i.sy, 1                    ; 2 uses
  %i.ta = add nsw i64 %i.sz, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i ; 6 uses
  %i.tb = icmp sgt i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.tb, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader:       ; preds = %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %min.iters.check336 = icmp ult i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %min.iters.check336, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473, label %vector.memcheck337

vector.memcheck337:                               ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.tc = shl i64 %.029.i.i.i.i.i, 3
  %i.td = mul i64 %i.sm, %i.tc
  %i.te = shl i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %gep = getelementptr i8, ptr %i.sg, i64 %i.td
  %i.tf = getelementptr i8, ptr %gep, i64 %i.te
  %i.tg = getelementptr i8, ptr %i.rw, i64 %i.te
  %bound0338 = icmp ult ptr %i.so, %i.tg
  %bound1339 = icmp ult ptr %i.rw, %i.tf
  %found.conflict340 = and i1 %bound0338, %bound1339
  br i1 %found.conflict340, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473, label %vector.ph341

vector.ph341:                                     ; preds = %vector.memcheck337
  %n.vec342 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804 ; 3 uses
  %broadcast.splatinsert343 = insertelement <2 x double> poison, double %i.sr, i64 0
  %broadcast.splat344 = shufflevector <2 x double> %broadcast.splatinsert343, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body345

vector.body345:                                   ; preds = %vector.body345, %vector.ph341
  %index346 = phi i64 [ 0, %vector.ph341 ], [ %index.next351, %vector.body345 ] ; 3 uses
  %i.th = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %index346 ; 3 uses
  %i.ti = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %index346 ; 2 uses
  %i.tj = getelementptr inbounds nuw i8, ptr %i.ti, i64 16
  %wide.load347 = load <2 x double>, ptr %i.ti, align 8, !tbaa !189, !alias.scope !654
  %wide.load348 = load <2 x double>, ptr %i.tj, align 8, !tbaa !189, !alias.scope !654
  %i.tk = fmul <2 x double> %broadcast.splat344, %wide.load347
  %i.tl = fmul <2 x double> %broadcast.splat344, %wide.load348
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 2 uses
  %wide.load349 = load <2 x double>, ptr %i.th, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %wide.load350 = load <2 x double>, ptr %i.tm, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %i.tn = fsub <2 x double> %wide.load349, %i.tk
  %i.to = fsub <2 x double> %wide.load350, %i.tl
  store <2 x double> %i.tn, ptr %i.th, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  store <2 x double> %i.to, ptr %i.tm, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %index.next351 = add nuw i64 %index346, 4       ; 2 uses
  %i.tp = icmp eq i64 %index.next351, %n.vec342
  br i1 %i.tp, label %middle.block352, label %vector.body345, !llvm.loop !628

middle.block352:                                  ; preds = %vector.body345
  %cmp.n353 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec342
  br i1 %cmp.n353, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473:    ; preds = %vector.memcheck337, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block352
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck337 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec342, %middle.block352 ] ; 5 uses
  %.neg557 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter536 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod537.not = icmp eq i64 %xtraiter536, 0
  br i1 %lcmp.mod537.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !189
  %i.tt = fmul double %i.sr, %i.ts
  %i.tu = load double, ptr %i.tq, align 8, !tbaa !189
  %i.tv = fsub double %i.tu, %i.tt
  store double %i.tv, ptr %i.tq, align 8, !tbaa !189
  %i.tw = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader473 ], [ %i.tw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.tx = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg557
  br i1 %i.tx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ul, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !189
  %i.ub = fmul double %i.sr, %i.ua
  %i.uc = load double, ptr %i.ty, align 8, !tbaa !189
  %i.ud = fsub double %i.uc, %i.ub
  store double %i.ud, ptr %i.ty, align 8, !tbaa !189
  %i.ue = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.so, i64 %i.ue ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.rw, i64 %i.ue
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !189
  %i.ui = fmul double %i.sr, %i.uh
  %i.uj = load double, ptr %i.uf, align 8, !tbaa !189
  %i.uk = fsub double %i.uj, %i.ui
  store double %i.uk, ptr %i.uf, align 8, !tbaa !189
  %i.ul = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ul, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !629

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block352, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.um = icmp sgt i64 %i.sx, 1
  br i1 %i.um, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.un = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uo = icmp slt i64 %i.ta, %i.ru
  br i1 %i.uo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.sz
  %i.uq = sub i64 %i.ru, %i.up                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.uq, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ur = shl i64 %.029.i.i.i.i.i, 3
  %i.us = mul i64 %i.sm, %i.ur                    ; 2 uses
  %i.ut = shl i64 %i.sy, 4                        ; 2 uses
  %i.uu = shl i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %gep582 = getelementptr i8, ptr %i.sg, i64 %i.us
  %i.uv = getelementptr i8, ptr %gep582, i64 %i.ut
  %i.uw = getelementptr i8, ptr %i.uv, i64 %i.uu
  %i.ux = getelementptr i8, ptr %i.sl, i64 %i.us
  %i.uy = getelementptr i8, ptr %i.rw, i64 %i.ut
  %i.uz = getelementptr i8, ptr %i.uy, i64 %i.uu
  %bound0 = icmp ult ptr %i.uw, %scevgep
  %bound1 = icmp ult ptr %i.uz, %i.ux
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uq, -4                      ; 3 uses
  %i.va = add i64 %i.ta, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.sr, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.vb = add i64 %i.ta, %index                   ; 2 uses
  %i.vc = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.vb ; 3 uses
  %i.vd = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.vb ; 2 uses
  %i.ve = getelementptr inbounds nuw i8, ptr %i.vd, i64 16
  %wide.load = load <2 x double>, ptr %i.vd, align 8, !tbaa !189, !alias.scope !656
  %wide.load324 = load <2 x double>, ptr %i.ve, align 8, !tbaa !189, !alias.scope !656
  %i.vf = fmul <2 x double> %broadcast.splat, %wide.load
  %i.vg = fmul <2 x double> %broadcast.splat, %wide.load324
  %i.vh = getelementptr inbounds nuw i8, ptr %i.vc, i64 16 ; 2 uses
  %wide.load325 = load <2 x double>, ptr %i.vc, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %wide.load326 = load <2 x double>, ptr %i.vh, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %i.vi = fsub <2 x double> %wide.load325, %i.vf
  %i.vj = fsub <2 x double> %wide.load326, %i.vg
  store <2 x double> %i.vi, ptr %i.vc, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  store <2 x double> %i.vj, ptr %i.vh, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vk = icmp eq i64 %index.next, %n.vec
  br i1 %i.vk, label %middle.block, label %vector.body, !llvm.loop !633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uq, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.ta, %vector.memcheck ], [ %i.ta, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.va, %middle.block ] ; 6 uses
  %i.vl = sub i64 %i.ru, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vm = add i64 %.060232, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter539 = and i64 %i.vl, 1
  %lcmp.mod540.not = icmp eq i64 %xtraiter539, 0
  br i1 %lcmp.mod540.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472
  %i.vn = getelementptr inbounds [8 x i8], ptr %i.so, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.vo = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vp = load double, ptr %i.vo, align 8, !tbaa !189
  %i.vq = fmul double %i.sr, %i.vp
  %i.vr = load double, ptr %i.vn, align 8, !tbaa !189
  %i.vs = fsub double %i.vr, %i.vq
  store double %i.vs, ptr %i.vn, align 8, !tbaa !189
  %i.vt = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader472 ], [ %i.vt, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.vu = icmp eq i64 %i.gj, %i.vm
  br i1 %i.vu, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wi, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.vv = getelementptr inbounds [8 x i8], ptr %i.so, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.vw = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vx = load double, ptr %i.vw, align 8, !tbaa !189
  %i.vy = fmul double %i.sr, %i.vx
  %i.vz = load double, ptr %i.vv, align 8, !tbaa !189
  %i.wa = fsub double %i.vz, %i.vy
  store double %i.wa, ptr %i.vv, align 8, !tbaa !189
  %i.wb = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.wc = getelementptr inbounds [8 x i8], ptr %i.so, i64 %i.wb ; 2 uses
  %i.wd = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %i.wb
  %i.we = load double, ptr %i.wd, align 8, !tbaa !189
  %i.wf = fmul double %i.sr, %i.we
  %i.wg = load double, ptr %i.wc, align 8, !tbaa !189
  %i.wh = fsub double %i.wg, %i.wf
  store double %i.wh, ptr %i.wc, align 8, !tbaa !189
  %i.wi = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.wi, %i.ru
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !634

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wp, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wj = getelementptr inbounds [8 x i8], ptr %i.so, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wk = getelementptr inbounds [8 x i8], ptr %i.rw, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wl = load <2 x double>, ptr %i.wk, align 1, !tbaa !182
  %i.wm = fmul <2 x double> %i.un, %i.wl
  %i.wn = load <2 x double>, ptr %i.wj, align 16, !tbaa !182
  %i.wo = fsub <2 x double> %i.wn, %i.wm
  store <2 x double> %i.wo, ptr %i.wj, align 16, !tbaa !182
  %i.wp = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wq = icmp slt i64 %i.wp, %i.ta
  br i1 %i.wq, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !635

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wr = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.wr, %i.rz
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !636

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.ws = add nuw nsw i64 %.060232, 1             ; 2 uses
  %exitcond257.not = icmp eq i64 %i.ws, %.sroa.speculated.i
  br i1 %exitcond257.not, label %._crit_edge, label %bb.s, !llvm.loop !637

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, %scalar.ph456.prol.loopexit, %scalar.ph456, %middle.block466
  %.4.ph = phi i64 [ %.061231, %middle.block466 ], [ %.061231, %scalar.ph456.prol.loopexit ], [ %.061231, %scalar.ph456 ], [ %.2, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ]
  %i.wt = and i64 %.4.ph, 1
  %i.wu = icmp eq i64 %i.wt, 0
  %i.wv = select i1 %i.wu, i8 1, i8 -1            ; 2 uses
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.ww, i64 noundef %i.b)
  %i.wx = load ptr, ptr %i.fd, align 8, !tbaa !314 ; 3 uses
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !314 ; 6 uses
  %xtraiter545 = and i64 %.sroa.speculated.i, 1
  %lcmp.mod546.not = icmp eq i64 %xtraiter545, 0
  br i1 %lcmp.mod546.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge
  %.058.prol = add nsw i64 %.sroa.speculated.i, -1 ; 3 uses
  %i.wz = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.058.prol
  %i.xa = load i32, ptr %i.wz, align 4, !tbaa !166
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.058.prol ; 2 uses
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xb ; 2 uses
  %i.xe = load i32, ptr %i.xc, align 4, !tbaa !166
  %i.xf = load i32, ptr %i.xd, align 4, !tbaa !166
  store i32 %i.xf, ptr %i.xc, align 4, !tbaa !166
  store i32 %i.xe, ptr %i.xd, align 4, !tbaa !166
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge
  %.058.in237.unr = phi i64 [ %.sroa.speculated.i, %._crit_edge ], [ %.058.prol, %.prol.loopexit.unr-lcssa ]
  %i.xg = icmp eq i64 %i.gg, 0
  br i1 %i.xg, label %.lr.ph243, label %._crit_edge.new

.lr.ph243:                                        ; preds = %._crit_edge.new, %.prol.loopexit
  %i.xh = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.xh, i64 noundef %i.bm)
  %i.xi = load ptr, ptr %i.fp, align 8, !tbaa !312 ; 3 uses
  %i.xj = load ptr, ptr %i.xh, align 8, !tbaa !314 ; 6 uses
  %xtraiter549 = and i64 %.sroa.speculated.i, 1
  %i.xk = icmp eq i64 %i.gg, 0
  br i1 %i.xk, label %.epil.preheader548, label %.lr.ph243.new

.lr.ph243.new:                                    ; preds = %.lr.ph243
  %unroll_iter553 = and i64 %.sroa.speculated.i, 9223372036854775806
  br label %bb.ai

._crit_edge.new:                                  ; preds = %.prol.loopexit, %._crit_edge.new
  %.058.in237 = phi i64 [ %.058.1, %._crit_edge.new ], [ %.058.in237.unr, %.prol.loopexit ] ; 3 uses
  %.058 = add nsw i64 %.058.in237, -1             ; 2 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.wx, i64 %.058
  %i.xm = load i32, ptr %i.xl, align 4, !tbaa !166
  %i.xn = sext i32 %i.xm to i64
  %i.xo = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %.058 ; 2 uses
  %i.xp = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xn ; 2 uses
  %i.xq = load i32, ptr %i.xo, align 4, !tbaa !166
  %i.xr = load i32, ptr %i.xp, align 4, !tbaa !166
  store i32 %i.xr, ptr %i.xo, align 4, !tbaa !166
  store i32 %i.xq, ptr %i.xp, align 4, !tbaa !166
  %.058.1 = add nsw i64 %.058.in237, -2           ; 3 uses
  %i.xs = getelementptr inbounds [4 x i8], ptr %i.wx, i64 %.058.1
  %i.xt = load i32, ptr %i.xs, align 4, !tbaa !166
  %i.xu = sext i32 %i.xt to i64
  %i.xv = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %.058.1 ; 2 uses
  %i.xw = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xu ; 2 uses
  %i.xx = load i32, ptr %i.xv, align 4, !tbaa !166
  %i.xy = load i32, ptr %i.xw, align 4, !tbaa !166
  store i32 %i.xy, ptr %i.xv, align 4, !tbaa !166
  store i32 %i.xx, ptr %i.xw, align 4, !tbaa !166
  %i.xz = icmp sgt i64 %.058.in237, 2
  br i1 %i.xz, label %._crit_edge.new, label %.lr.ph243, !llvm.loop !638

._crit_edge244.loopexit.unr-lcssa:                ; preds = %bb.ai
  %lcmp.mod551.not = icmp eq i64 %xtraiter549, 0
  br i1 %lcmp.mod551.not, label %._crit_edge244, label %.epil.preheader548

.epil.preheader548:                               ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243
  %.0241.epil.init = phi i64 [ 0, %.lr.ph243 ], [ %i.yy, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod552 = trunc i64 %.sroa.speculated.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod552)
  %i.ya = getelementptr inbounds nuw [4 x i8], ptr %i.xi, i64 %.0241.epil.init
  %i.yb = load i32, ptr %i.ya, align 4, !tbaa !166
  %i.yc = sext i32 %i.yb to i64
  %i.yd = getelementptr inbounds nuw [4 x i8], ptr %i.xj, i64 %.0241.epil.init ; 2 uses
  %i.ye = getelementptr inbounds [4 x i8], ptr %i.xj, i64 %i.yc ; 2 uses
  %i.yf = load i32, ptr %i.yd, align 4, !tbaa !166
  %i.yg = load i32, ptr %i.ye, align 4, !tbaa !166
  store i32 %i.yg, ptr %i.yd, align 4, !tbaa !166
  store i32 %i.yf, ptr %i.ye, align 4, !tbaa !166
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %.epil.preheader548, %._crit_edge244.loopexit.unr-lcssa, %._crit_edge.thread
  %.4287289 = phi i8 [ 1, %._crit_edge.thread ], [ %i.wv, %._crit_edge244.loopexit.unr-lcssa ], [ %i.wv, %.epil.preheader548 ]
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.4287289, ptr %i.yh, align 8, !tbaa !658
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.yi, align 1, !tbaa !325
end_hunk_1
begin_hunk_2_@_ZN5Eigen8internal27queryCacheSizes_intel_codesERiS1_S1_:bb.a
bb.aj:                                            ; preds = %bb.ai
  store i32 4096, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ak:                                            ; preds = %bb.c
  store i32 6144, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.al:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.am:                                            ; preds = %bb.c
  store i32 12288, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.an:                                            ; preds = %bb.c
  store i32 16384, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.ao:                                            ; preds = %bb.c
  store i32 6144, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ap:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.aq:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ar:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.as:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.at:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.au:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.av:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.aw:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ax:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ay:                                            ; preds = %bb.c
  store i32 128, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.az:                                            ; preds = %bb.c
  store i32 256, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.ba:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bb:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bc:                                            ; preds = %bb.c
  store i32 2048, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bd:                                            ; preds = %bb.c
  store i32 512, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.be:                                            ; preds = %bb.c
  store i32 1024, ptr %1, align 4, !tbaa !166
  br label %bb.bj

bb.bf:                                            ; preds = %bb.c
  store i32 2048, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bg:                                            ; preds = %bb.c
  store i32 4096, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bh:                                            ; preds = %bb.c
  store i32 8192, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bi:                                            ; preds = %bb.c
  store i32 3072, ptr %2, align 4, !tbaa !166
  br label %bb.bj

bb.bj:                                            ; preds = %bb.d, %bb.e, %bb.f, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %bb.n, %bb.o, %bb.p, %bb.q, %bb.r, %bb.s, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.ab, %bb.ac, %bb.ad, %bb.ae, %bb.af, %bb.ag, %bb.ah, %bb.ak, %bb.al, %bb.am, %bb.an, %bb.ao, %bb.ap, %bb.aq, %bb.ar, %bb.as, %bb.at, %bb.au, %bb.av, %bb.aw, %bb.ax, %bb.ay, %bb.az, %bb.ba, %bb.bb, %bb.bc, %bb.bd, %bb.be, %bb.bf, %bb.bg, %bb.bh, %bb.bi, %bb.aj, %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 14
  br i1 %exitcond.not, label %bb.b, label %bb.c, !llvm.loop !789

.thread:                                          ; preds = %bb.ai
  store i32 4096, ptr %1, align 4, !tbaa !166
  store i32 4096, ptr %2, align 4, !tbaa !166
  %indvars.iv.next77 = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not78 = icmp eq i64 %indvars.iv.next77, 14
  br i1 %exitcond.not78, label %.thread80, label %.outer, !llvm.loop !789

.thread80:                                        ; preds = %.thread, %bb.b
  %i.n = load i32, ptr %1, align 4, !tbaa !166
  %i.o = load i32, ptr %2, align 4, !tbaa !166
  %i.p = icmp eq i32 %i.n, %i.o
  br i1 %i.p, label %bb.bk, label %bb.bl

bb.bk:                                            ; preds = %.thread80
  store i32 0, ptr %2, align 4, !tbaa !166
  br label %bb.bl

bb.bl:                                            ; preds = %bb.bk, %.thread80, %bb.b
  %i.q = load i32, ptr %0, align 4, !tbaa !166
  %i.r = shl nsw i32 %i.q, 10
  store i32 %i.r, ptr %0, align 4, !tbaa !166
  %i.s = load i32, ptr %1, align 4, !tbaa !166
  %i.t = shl nsw i32 %i.s, 10
  store i32 %i.t, ptr %1, align 4, !tbaa !166
  %i.u = load i32, ptr %2, align 4, !tbaa !166
  %i.v = shl nsw i32 %i.u, 10
  store i32 %i.v, ptr %2, align 4, !tbaa !166
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #6
  ret void
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi0ELb0ELb1EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !389
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 5 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph78, label %.preheader

.lr.ph78:                                         ; preds = %bb.a
  %i.e = shl i64 %6, 2                            ; 2 uses
  %i.f = load ptr, ptr %2, align 8, !tbaa !391    ; 12 uses
  %i.g = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.h = load i64, ptr %i.g, align 8, !tbaa !392  ; 12 uses
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
  %i.al = add i64 %6, %3
  %i.am = shl i64 %i.al, 5
  %scevgep135 = getelementptr i8, ptr %1, i64 %i.am
  %scevgep136 = getelementptr i8, ptr %1, i64 %i.ak
  %i.an = insertelement <4 x ptr> poison, ptr %scevgep133, i64 0
  %i.ao = insertelement <4 x ptr> %i.an, ptr %scevgep131, i64 1
  %i.ap = insertelement <4 x ptr> %i.ao, ptr %scevgep129, i64 2
  %i.aq = insertelement <4 x ptr> %i.ap, ptr %scevgep128, i64 3
  %i.ar = insertelement <4 x ptr> poison, ptr %scevgep134, i64 0
  %i.as = insertelement <4 x ptr> %i.ar, ptr %scevgep132, i64 1
  %i.at = insertelement <4 x ptr> %i.as, ptr %scevgep130, i64 2
  %i.au = insertelement <4 x ptr> %i.at, ptr %i.f, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.m, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.m, 576460752303423487
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
  %i.bt = getelementptr i8, ptr %scevgep136, i64 %i.bs
  %i.bu = getelementptr i8, ptr %scevgep135, i64 %i.bs
  %i.bv = insertelement <4 x ptr> poison, ptr %i.bt, i64 0
  %i.bw = shufflevector <4 x ptr> %i.bv, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bx = icmp ult <4 x ptr> %i.bw, %i.aq
  %i.by = insertelement <4 x ptr> poison, ptr %i.bu, i64 0
  %i.bz = shufflevector <4 x ptr> %i.by, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.ca = icmp ult <4 x ptr> %i.au, %i.bz
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
  %wide.load = load <2 x double>, ptr %i.cg, align 8, !tbaa !189, !alias.scope !804
  %.idx = shl i64 %index, 5
  %i.ch = getelementptr i8, ptr %i.cf, i64 %.idx
  %i.ci = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %index
  %wide.load146 = load <2 x double>, ptr %i.ci, align 8, !tbaa !189, !alias.scope !805
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %index
  %wide.load147 = load <2 x double>, ptr %i.cj, align 8, !tbaa !189, !alias.scope !806
  %i.ck = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %index
  %wide.load148 = load <2 x double>, ptr %i.ck, align 8, !tbaa !189, !alias.scope !807
  %i.cl = shufflevector <2 x double> %wide.load, <2 x double> %wide.load146, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cm = shufflevector <2 x double> %wide.load147, <2 x double> %wide.load148, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.cl, <4 x double> %i.cm, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.ch, align 8, !tbaa !189, !alias.scope !808, !noalias !809
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cn = icmp eq i64 %index.next, %n.vec
  br i1 %i.cn, label %middle.block, label %vector.body, !llvm.loop !797

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04974.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.173.us.ph = phi i64 [ %i.aw, %vector.memcheck ], [ %i.aw, %vector.scevcheck ], [ %i.aw, %.lr.ph.us ], [ %i.ce, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04974.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.co = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %.04974.us.ph
  %i.cp = load double, ptr %i.co, align 8, !tbaa !189
  %i.cq = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us.ph ; 4 uses
  store double %i.cp, ptr %i.cq, align 8, !tbaa !189
  %i.cr = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us.ph
  %i.cs = load double, ptr %i.cr, align 8, !tbaa !189
  %i.ct = getelementptr i8, ptr %i.cq, i64 8
  store double %i.cs, ptr %i.ct, align 8, !tbaa !189
  %i.cu = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us.ph
  %i.cv = load double, ptr %i.cu, align 8, !tbaa !189
  %i.cw = getelementptr i8, ptr %i.cq, i64 16
  store double %i.cv, ptr %i.cw, align 8, !tbaa !189
  %i.cx = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us.ph
  %i.cy = load double, ptr %i.cx, align 8, !tbaa !189
  %i.cz = getelementptr i8, ptr %i.cq, i64 24
  store double %i.cy, ptr %i.cz, align 8, !tbaa !189
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
  %i.de = load double, ptr %i.dd, align 8, !tbaa !189
  %i.df = getelementptr inbounds [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  store double %i.de, ptr %i.df, align 8, !tbaa !189
  %i.dg = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %.04974.us
  %i.dh = load double, ptr %i.dg, align 8, !tbaa !189
  %i.di = getelementptr i8, ptr %i.df, i64 8
  store double %i.dh, ptr %i.di, align 8, !tbaa !189
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %.04974.us
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = getelementptr i8, ptr %i.df, i64 16
  store double %i.dk, ptr %i.dl, align 8, !tbaa !189
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %.04974.us
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !189
  %i.do = getelementptr i8, ptr %i.df, i64 24
  store double %i.dn, ptr %i.do, align 8, !tbaa !189
  %i.dp = add nuw nsw i64 %.04974.us, 1           ; 4 uses
  %i.dq = getelementptr inbounds nuw [8 x i8], ptr %i.ay, i64 %i.dp
  %i.dr = load double, ptr %i.dq, align 8, !tbaa !189
  %i.ds = getelementptr [8 x i8], ptr %1, i64 %.173.us ; 4 uses
  %i.dt = getelementptr i8, ptr %i.ds, i64 32
  store double %i.dr, ptr %i.dt, align 8, !tbaa !189
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.bb, i64 %i.dp
  %i.dv = load double, ptr %i.du, align 8, !tbaa !189
  %i.dw = getelementptr i8, ptr %i.ds, i64 40
  store double %i.dv, ptr %i.dw, align 8, !tbaa !189
  %i.dx = getelementptr inbounds nuw [8 x i8], ptr %i.be, i64 %i.dp
  %i.dy = load double, ptr %i.dx, align 8, !tbaa !189
  %i.dz = getelementptr i8, ptr %i.ds, i64 48
  store double %i.dy, ptr %i.dz, align 8, !tbaa !189
  %i.ea = getelementptr inbounds nuw [8 x i8], ptr %i.bh, i64 %i.dp
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !189
  %i.ec = getelementptr i8, ptr %i.ds, i64 56
  store double %i.eb, ptr %i.ec, align 8, !tbaa !189
  %i.ed = add nsw i64 %.173.us, 8                 ; 2 uses
  %i.ee = add nuw nsw i64 %.04974.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.ee, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !798

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa97 = phi i64 [ %i.ce, %middle.block ], [ %.lcssa166.unr, %scalar.ph.prol.loopexit ], [ %i.ed, %scalar.ph ]
  %i.ef = add nsw i64 %.lcssa97, %i.l             ; 2 uses
  %i.eg = add nuw nsw i64 %.05076.us, 4           ; 2 uses
  %i.eh = icmp slt i64 %i.eg, %i.c
  br i1 %i.eh, label %.lr.ph.us, label %.preheader, !llvm.loop !799

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
  %i.eq = load ptr, ptr %2, align 8, !tbaa !391   ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !392 ; 3 uses
  %i.et = icmp sgt i64 %3, 0
  %i.eu = add i64 %3, %6
  %i.ev = sub i64 %5, %i.eu
  br i1 %i.et, label %.lr.ph.preheader, label %._crit_edge85.split

.lr.ph.preheader:                                 ; preds = %.lr.ph84
  %i.ew = ptrtoaddr ptr %i.eq to i64
  %i.ex = mul i64 %i.es, -8
  %i.ey = mul i64 %i.es, %i.b
  %i.ez = shl i64 %i.ey, 5
  %i.fa = add i64 %i.ez, %i.ew
  %i.fb = sub i64 %i.a, %i.fa
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
  %.04883 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fz, %._crit_edge ] ; 2 uses
  %.282 = phi i64 [ %.051.lcssa, %.lr.ph.preheader ], [ %i.fy, %._crit_edge ]
  %i.fc = add i64 %.282, %6                       ; 5 uses
  %i.fd = mul nsw i64 %i.es, %.04883
  %i.fe = getelementptr [8 x i8], ptr %i.eq, i64 %i.fd ; 6 uses
  br i1 %min.iters.check152, label %scalar.ph151.preheader, label %vector.memcheck153

vector.memcheck153:                               ; preds = %.lr.ph
  %i.ff = mul i64 %indvar, %i.ex
  %i.fg = add i64 %i.fb, %i.ff
  %i.fh = shl i64 %i.fc, 3
  %i.fi = add i64 %i.fg, %i.fh
  %i.fj = add i64 %i.fi, -1
  %diff.check = icmp ult i64 %i.fj, 31
  br i1 %diff.check, label %scalar.ph151.preheader, label %vector.ph154

vector.ph154:                                     ; preds = %vector.memcheck153
  %i.fk = add i64 %i.fc, %n.vec155                ; 2 uses
  %i.fl = getelementptr [8 x i8], ptr %1, i64 %i.fc
  br label %vector.body156

vector.body156:                                   ; preds = %vector.body156, %vector.ph154
  %index157 = phi i64 [ 0, %vector.ph154 ], [ %index.next160, %vector.body156 ] ; 3 uses
  %i.fm = getelementptr inbounds nuw [8 x i8], ptr %i.fe, i64 %index157 ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fm, i64 16
  %wide.load158 = load <2 x double>, ptr %i.fm, align 8, !tbaa !189
  %wide.load159 = load <2 x double>, ptr %i.fn, align 8, !tbaa !189
  %i.fo = getelementptr [8 x i8], ptr %i.fl, i64 %index157 ; 2 uses
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fo, i64 16
  store <2 x double> %wide.load158, ptr %i.fo, align 8, !tbaa !189
  store <2 x double> %wide.load159, ptr %i.fp, align 8, !tbaa !189
  %index.next160 = add nuw i64 %index157, 4       ; 2 uses
end_hunk_2
begin_hunk_3_@_ZN5Eigen8internal29general_matrix_matrix_productIldLi0ELb0EdLi0ELb0ELi0ELi1EE3runElllPKdlS4_lPdlldRNS0_15level3_blockingIddEEPNS0_16GemmParallelInfoIlEE:bb.a
.lr.ph183.split.us.split.us.us.us:                ; preds = %.lr.ph183.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %.077182.us.us.us.us = phi i64 [ %i.bf, %..loopexit_crit_edge.split.us.us.us.us.us ], [ 0, %.lr.ph183.us.us ] ; 4 uses
  %i.bf = add nsw i64 %.077182.us.us.us.us, %i.b  ; 3 uses
  %.sroa.speculated124.us.us.us.us = call i64 @llvm.smin.i64(i64 %2, i64 %i.bf)
  %i.bg = sub nsw i64 %.sroa.speculated124.us.us.us.us, %.077182.us.us.us.us ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  %i.bh = mul nsw i64 %.077182.us.us.us.us, %4
  %i.bi = getelementptr [8 x i8], ptr %i.as, i64 %i.bh
  store ptr %i.bi, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.bg, i64 noundef %i.ar, i64 noundef 0, i64 noundef 0)
          to label %.lr.ph.us.us.us.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.lr.ph.us.us.us.us:                               ; preds = %.lr.ph183.split.us.split.us.us.us
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.bj = getelementptr [8 x i8], ptr %5, i64 %.077182.us.us.us.us
  br label %bb.m

bb.m:                                             ; preds = %bb.o, %.lr.ph.us.us.us.us
  %.0178.us.us.us.us.us = phi i64 [ 0, %.lr.ph.us.us.us.us ], [ %i.bk, %bb.o ] ; 4 uses
  %i.bk = add nsw i64 %.0178.us.us.us.us.us, %.sroa.speculated140 ; 3 uses
  %.sroa.speculated.us.us.us.us.us = call i64 @llvm.smin.i64(i64 %1, i64 %i.bk)
  %i.bl = sub nsw i64 %.sroa.speculated.us.us.us.us.us, %.0178.us.us.us.us.us ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %17) #6
  %i.bm = mul nsw i64 %.0178.us.us.us.us.us, %6
  %i.bn = getelementptr [8 x i8], ptr %i.bj, i64 %i.bm
  store ptr %i.bn, ptr %17, align 8
  store i64 %6, ptr %i.an, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %14, ptr noundef nonnull %i.ag, ptr noundef nonnull align 8 dereferenceable(16) %17, i64 noundef %i.bg, i64 noundef %i.bl, i64 noundef 0, i64 noundef 0)
          to label %bb.n unwind label %.split.us.split.us.split.us.split.us.split.us

bb.n:                                             ; preds = %bb.m
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  call void @llvm.lifetime.start.p0(ptr nonnull %18) #6
  %i.bo = mul nsw i64 %.0178.us.us.us.us.us, %9
  %i.bp = getelementptr [8 x i8], ptr %i.au, i64 %i.bo
  store ptr %i.bp, ptr %18, align 8
  store i64 %9, ptr %i.ao, align 8
  invoke void @_ZN5Eigen8internal11gebp_kernelIddlNS0_16blas_data_mapperIdlLi0ELi0ELi1EEELi4ELi4ELb0ELb0EEclERKS3_PKdS8_llldllll(ptr noundef nonnull align 1 dereferenceable(1) %15, ptr noundef nonnull align 8 dereferenceable(16) %18, ptr noundef nonnull %i.t, ptr noundef nonnull %i.ag, i64 noundef %i.ar, i64 noundef %i.bg, i64 noundef %i.bl, double noundef %10, i64 noundef -1, i64 noundef -1, i64 noundef 0, i64 noundef 0)
          to label %bb.o unwind label %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  %i.bq = icmp slt i64 %i.bk, %1
  br i1 %i.bq, label %bb.m, label %..loopexit_crit_edge.split.us.us.us.us.us, !llvm.loop !997

..loopexit_crit_edge.split.us.us.us.us.us:        ; preds = %bb.o
  %i.br = icmp slt i64 %i.bf, %2
  br i1 %i.br, label %.lr.ph183.split.us.split.us.us.us, label %..loopexit177_crit_edge.split.us.us.us, !llvm.loop !998

..loopexit177_crit_edge.split.us.us.us:           ; preds = %..loopexit_crit_edge.split.us187.us.us, %..loopexit_crit_edge.split.us.us.us.us.us
  %i.bs = icmp slt i64 %i.aq, %0
  br i1 %i.bs, label %.lr.ph183.us.us, label %._crit_edge, !llvm.loop !999

.split.us.split.us.split.us.split.us.split.us:    ; preds = %bb.m
  %i.bt = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %17) #6
  br label %bb.t

.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.n, %bb.k
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %18) #6
  br label %bb.t

.lr.ph183.us:                                     ; preds = %.lr.ph.split.us, %..loopexit177_crit_edge.split.us199
  %.078195.us = phi i64 [ %i.bu, %..loopexit177_crit_edge.split.us199 ], [ 0, %.lr.ph.split.us ] ; 3 uses
  %i.bu = add nsw i64 %.078195.us, %.sroa.speculated145 ; 3 uses
  %.sroa.speculated128.us = call i64 @llvm.smin.i64(i64 %0, i64 %i.bu)
  %i.bv = sub nsw i64 %.sroa.speculated128.us, %.078195.us
  %i.bw = getelementptr [8 x i8], ptr %3, i64 %.078195.us
  br label %bb.p

bb.p:                                             ; preds = %.loopexit.us, %.lr.ph183.us
  %.077182.us197 = phi i64 [ 0, %.lr.ph183.us ], [ %i.bx, %.loopexit.us ] ; 3 uses
  %i.bx = add nsw i64 %.077182.us197, %i.b        ; 3 uses
  %.sroa.speculated124.us198 = call i64 @llvm.smin.i64(i64 %2, i64 %i.bx)
  %i.by = sub nsw i64 %.sroa.speculated124.us198, %.077182.us197
  call void @llvm.lifetime.start.p0(ptr nonnull %16) #6
  %i.bz = mul nsw i64 %.077182.us197, %4
  %i.ca = getelementptr [8 x i8], ptr %i.bw, i64 %i.bz
  store ptr %i.ca, ptr %16, align 8
  store i64 %4, ptr %i.am, align 8
  invoke void @_ZN5Eigen8internal13gemm_pack_lhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi2EDv2_dLi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %13, ptr noundef nonnull %i.t, ptr noundef nonnull align 8 dereferenceable(16) %16, i64 noundef %i.by, i64 noundef %i.bv, i64 noundef 0, i64 noundef 0)
          to label %.loopexit.us unwind label %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.loopexit.us:                                     ; preds = %bb.p
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  %i.cb = icmp slt i64 %i.bx, %2
  br i1 %i.cb, label %bb.p, label %..loopexit177_crit_edge.split.us199, !llvm.loop !998

..loopexit177_crit_edge.split.us199:              ; preds = %.loopexit.us
  %i.cc = icmp slt i64 %i.bu, %0
  br i1 %i.cc, label %.lr.ph183.us, label %._crit_edge, !llvm.loop !999

.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %.lr.ph183.split.us.split.us.us.us, %.lr.ph183.split.us.split.us200.us, %bb.p
  %lpad.loopexit.split-lp254 = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %16) #6
  br label %bb.t

._crit_edge:                                      ; preds = %..loopexit177_crit_edge.split.us199, %..loopexit177_crit_edge.split.us.us.us, %.lr.ph, %bb.j
  br i1 %i.ah, label %bb.q, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.q:                                             ; preds = %._crit_edge
  call void @free(ptr noundef %i.af) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %._crit_edge, %bb.q
  br i1 %i.u, label %bb.r, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

bb.r:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit
  call void @free(ptr noundef %i.s) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit116: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  ret void

bb.s:                                             ; preds = %.invoke
  %i.cd = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.t:                                             ; preds = %.split.us.split.us.split.us.split.us.split.us, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp
  %.pn.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp254, %.split.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %lpad.loopexit.split-lp, %.split180.us.split.us.split.us.split.us.split.us.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.bt, %.split.us.split.us.split.us.split.us.split.us ] ; 2 uses
  br i1 %i.ah, label %bb.u, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

bb.u:                                             ; preds = %bb.t
  call void @free(ptr noundef %i.af) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120: ; preds = %bb.t, %bb.u, %bb.s
  %.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.cd, %bb.s ], [ %.pn.pn, %bb.u ], [ %.pn.pn, %bb.t ]
  br i1 %i.u, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

bb.v:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120
  call void @free(ptr noundef %i.s) #6
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit121: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit120, %bb.v
  call void @llvm.lifetime.end.p0(ptr nonnull %15) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %14) #6
  call void @llvm.lifetime.end.p0(ptr nonnull %13) #6
  resume { ptr, i32 } %.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN5Eigen8internal13gemm_pack_rhsIdlNS0_22const_blas_data_mapperIdlLi0EEELi4ELi0ELb0ELb0EEclEPdRKS3_llll(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(16) %2, i64 noundef %3, i64 noundef %4, i64 noundef %5, i64 noundef %6) local_unnamed_addr #27 comdat align 2 {
bb.a:
  %i.a = ptrtoaddr ptr %1 to i64
  tail call void asm sideeffect "#EIGEN PRODUCT PACK RHS COLMAJOR", "~{dirflag},~{fpsr},~{flags}"() #6, !srcloc !389
  %i.b = sdiv i64 %4, 4                           ; 2 uses
  %i.c = shl nsw i64 %i.b, 2                      ; 4 uses
  %i.d = icmp sgt i64 %4, 3
  br i1 %i.d, label %.lr.ph62, label %.preheader

.lr.ph62:                                         ; preds = %bb.a
  %i.e = load ptr, ptr %2, align 8, !tbaa !394    ; 12 uses
  %i.f = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !395  ; 12 uses
  %i.h = icmp sgt i64 %3, 0
  br i1 %i.h, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %.lr.ph62
  %i.i = add nsw i64 %3, -1                       ; 2 uses
  %scevgep = getelementptr i8, ptr %1, i64 8
  %scevgep81 = getelementptr i8, ptr %1, i64 16
  %scevgep83 = getelementptr i8, ptr %1, i64 24
  %smax = tail call i64 @llvm.smax.i64(i64 %i.c, i64 4)
  %i.j = add nsw i64 %smax, -4                    ; 2 uses
  %i.k = lshr exact i64 %i.j, 2
  %i.l = mul i64 %i.g, %i.k
  %i.m = shl i64 %i.l, 5
  %i.n = shl i64 %3, 3                            ; 4 uses
  %i.o = getelementptr i8, ptr %i.e, i64 %i.m
  %scevgep106 = getelementptr i8, ptr %i.o, i64 %i.n
  %i.p = shl i64 %i.j, 3                          ; 3 uses
  %i.q = or disjoint i64 %i.p, 8
  %i.r = mul i64 %i.g, %i.q
  %i.s = getelementptr i8, ptr %i.e, i64 %i.r
  %scevgep107 = getelementptr i8, ptr %i.s, i64 %i.n
  %i.t = shl i64 %i.g, 3
  %scevgep108 = getelementptr i8, ptr %i.e, i64 %i.t
  %i.u = or disjoint i64 %i.p, 16
  %i.v = mul i64 %i.g, %i.u
  %i.w = getelementptr i8, ptr %i.e, i64 %i.v
  %scevgep109 = getelementptr i8, ptr %i.w, i64 %i.n
  %i.x = shl i64 %i.g, 4
  %scevgep110 = getelementptr i8, ptr %i.e, i64 %i.x
  %i.y = or disjoint i64 %i.p, 24
  %i.z = mul i64 %i.g, %i.y
  %i.aa = getelementptr i8, ptr %i.e, i64 %i.z
  %scevgep111 = getelementptr i8, ptr %i.aa, i64 %i.n
  %i.ab = mul i64 %i.g, 24
  %scevgep112 = getelementptr i8, ptr %i.e, i64 %i.ab
  %i.ac = shl i64 %3, 5
  %scevgep113 = getelementptr i8, ptr %1, i64 %i.ac
  %i.ad = insertelement <4 x ptr> poison, ptr %scevgep111, i64 0
  %i.ae = insertelement <4 x ptr> %i.ad, ptr %scevgep109, i64 1
  %i.af = insertelement <4 x ptr> %i.ae, ptr %scevgep107, i64 2
  %i.ag = insertelement <4 x ptr> %i.af, ptr %scevgep106, i64 3
  %i.ah = insertelement <4 x ptr> poison, ptr %scevgep112, i64 0
  %i.ai = insertelement <4 x ptr> %i.ah, ptr %scevgep110, i64 1
  %i.aj = insertelement <4 x ptr> %i.ai, ptr %scevgep108, i64 2
  %i.ak = insertelement <4 x ptr> %i.aj, ptr %i.e, i64 3
  %min.iters.check = icmp ult i64 %3, 28
  %mul.result = shl i64 %i.i, 5                   ; 3 uses
  %mul.overflow = icmp ugt i64 %i.i, 576460752303423487
  %.mask = and i64 %i.g, 288230376151711744
  %stride.check = icmp ne i64 %.mask, 0
  %n.vec = and i64 %3, 1152921504606846974        ; 4 uses
  %i.al = shl nuw nsw i64 %n.vec, 2
  %cmp.n = icmp eq i64 %3, %n.vec
  %xtraiter = and i64 %3, 1
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
  %.04460.us = phi i64 [ %i.du, %._crit_edge.us ], [ 0, %.lr.ph.us.preheader ] ; 5 uses
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
  %i.bi = getelementptr i8, ptr %1, i64 %i.bh
  %i.bj = getelementptr i8, ptr %scevgep113, i64 %i.bh
  %i.bk = insertelement <4 x ptr> poison, ptr %i.bi, i64 0
  %i.bl = shufflevector <4 x ptr> %i.bk, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bm = icmp ult <4 x ptr> %i.bl, %i.ag
  %i.bn = insertelement <4 x ptr> poison, ptr %i.bj, i64 0
  %i.bo = shufflevector <4 x ptr> %i.bn, <4 x ptr> poison, <4 x i32> zeroinitializer
  %i.bp = icmp ult <4 x ptr> %i.ak, %i.bo
  %i.bq = and <4 x i1> %i.bm, %i.bp
  %i.br = bitcast <4 x i1> %i.bq to i4
  %i.bs = icmp ne i4 %i.br, 0
  %op.rdx = or i1 %i.bs, %stride.check
  br i1 %op.rdx, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %i.bt = add i64 %.04559.us, %i.al               ; 2 uses
  %i.bu = getelementptr [8 x i8], ptr %1, i64 %.04559.us
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 6 uses
  %i.bv = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %index
  %wide.load = load <2 x double>, ptr %i.bv, align 8, !tbaa !189, !alias.scope !1013
  %.idx = shl i64 %index, 5
  %i.bw = getelementptr i8, ptr %i.bu, i64 %.idx
  %i.bx = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %index
  %wide.load124 = load <2 x double>, ptr %i.bx, align 8, !tbaa !189, !alias.scope !1014
  %i.by = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %index
  %wide.load125 = load <2 x double>, ptr %i.by, align 8, !tbaa !189, !alias.scope !1015
  %i.bz = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %index
  %wide.load126 = load <2 x double>, ptr %i.bz, align 8, !tbaa !189, !alias.scope !1016
  %i.ca = shufflevector <2 x double> %wide.load, <2 x double> %wide.load124, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %i.cb = shufflevector <2 x double> %wide.load125, <2 x double> %wide.load126, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  %interleaved.vec = shufflevector <4 x double> %i.ca, <4 x double> %i.cb, <8 x i32> <i32 0, i32 2, i32 4, i32 6, i32 1, i32 3, i32 5, i32 7>
  store <8 x double> %interleaved.vec, ptr %i.bw, align 8, !tbaa !189, !alias.scope !1017, !noalias !1018
  %index.next = add nuw i64 %index, 2             ; 2 uses
  %i.cc = icmp eq i64 %index.next, %n.vec
  br i1 %i.cc, label %middle.block, label %vector.body, !llvm.loop !1006

middle.block:                                     ; preds = %vector.body
  br i1 %cmp.n, label %._crit_edge.us, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %vector.memcheck, %vector.scevcheck, %.lr.ph.us, %middle.block
  %.04358.us.ph = phi i64 [ 0, %vector.memcheck ], [ 0, %vector.scevcheck ], [ 0, %.lr.ph.us ], [ %n.vec, %middle.block ] ; 7 uses
  %.157.us.ph = phi i64 [ %.04559.us, %vector.memcheck ], [ %.04559.us, %vector.scevcheck ], [ %.04559.us, %.lr.ph.us ], [ %i.bt, %middle.block ] ; 3 uses
  %.neg = or disjoint i64 %.04358.us.ph, 1
  br i1 %lcmp.mod.not, label %scalar.ph.prol.loopexit, label %scalar.ph.prol

scalar.ph.prol:                                   ; preds = %scalar.ph.preheader
  %i.cd = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us.ph
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !189
  %i.cf = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us.ph ; 4 uses
  store double %i.ce, ptr %i.cf, align 8, !tbaa !189
  %i.cg = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us.ph
  %i.ch = load double, ptr %i.cg, align 8, !tbaa !189
  %i.ci = getelementptr i8, ptr %i.cf, i64 8
  store double %i.ch, ptr %i.ci, align 8, !tbaa !189
  %i.cj = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us.ph
  %i.ck = load double, ptr %i.cj, align 8, !tbaa !189
  %i.cl = getelementptr i8, ptr %i.cf, i64 16
  store double %i.ck, ptr %i.cl, align 8, !tbaa !189
  %i.cm = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us.ph
  %i.cn = load double, ptr %i.cm, align 8, !tbaa !189
  %i.co = getelementptr i8, ptr %i.cf, i64 24
  store double %i.cn, ptr %i.co, align 8, !tbaa !189
  %i.cp = add nsw i64 %.157.us.ph, 4              ; 2 uses
  %i.cq = or disjoint i64 %.04358.us.ph, 1
  br label %scalar.ph.prol.loopexit

scalar.ph.prol.loopexit:                          ; preds = %scalar.ph.prol, %scalar.ph.preheader
  %.lcssa144.unr.a = phi i64 [ poison, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %.04358.us.unr = phi i64 [ %.04358.us.ph, %scalar.ph.preheader ], [ %i.cq, %scalar.ph.prol ]
  %.157.us.unr = phi i64 [ %.157.us.ph, %scalar.ph.preheader ], [ %i.cp, %scalar.ph.prol ]
  %i.cr = icmp eq i64 %3, %.neg
  br i1 %i.cr, label %._crit_edge.us, label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.prol.loopexit, %scalar.ph
  %.04358.us = phi i64 [ %i.dt, %scalar.ph ], [ %.04358.us.unr, %scalar.ph.prol.loopexit ] ; 6 uses
  %.157.us = phi i64 [ %i.ds, %scalar.ph ], [ %.157.us.unr, %scalar.ph.prol.loopexit ] ; 3 uses
  %i.cs = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %.04358.us
  %i.ct = load double, ptr %i.cs, align 8, !tbaa !189
  %i.cu = getelementptr inbounds [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  store double %i.ct, ptr %i.cu, align 8, !tbaa !189
  %i.cv = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %.04358.us
  %i.cw = load double, ptr %i.cv, align 8, !tbaa !189
  %i.cx = getelementptr i8, ptr %i.cu, i64 8
  store double %i.cw, ptr %i.cx, align 8, !tbaa !189
  %i.cy = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %.04358.us
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !189
  %i.da = getelementptr i8, ptr %i.cu, i64 16
  store double %i.cz, ptr %i.da, align 8, !tbaa !189
  %i.db = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %.04358.us
  %i.dc = load double, ptr %i.db, align 8, !tbaa !189
  %i.dd = getelementptr i8, ptr %i.cu, i64 24
  store double %i.dc, ptr %i.dd, align 8, !tbaa !189
  %i.de = add nuw nsw i64 %.04358.us, 1           ; 4 uses
  %i.df = getelementptr inbounds nuw [8 x i8], ptr %i.an, i64 %i.de
  %i.dg = load double, ptr %i.df, align 8, !tbaa !189
  %i.dh = getelementptr [8 x i8], ptr %1, i64 %.157.us ; 4 uses
  %i.di = getelementptr i8, ptr %i.dh, i64 32
  store double %i.dg, ptr %i.di, align 8, !tbaa !189
  %i.dj = getelementptr inbounds nuw [8 x i8], ptr %i.aq, i64 %i.de
  %i.dk = load double, ptr %i.dj, align 8, !tbaa !189
  %i.dl = getelementptr i8, ptr %i.dh, i64 40
  store double %i.dk, ptr %i.dl, align 8, !tbaa !189
  %i.dm = getelementptr inbounds nuw [8 x i8], ptr %i.at, i64 %i.de
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !189
  %i.do = getelementptr i8, ptr %i.dh, i64 48
  store double %i.dn, ptr %i.do, align 8, !tbaa !189
  %i.dp = getelementptr inbounds nuw [8 x i8], ptr %i.aw, i64 %i.de
  %i.dq = load double, ptr %i.dp, align 8, !tbaa !189
  %i.dr = getelementptr i8, ptr %i.dh, i64 56
  store double %i.dq, ptr %i.dr, align 8, !tbaa !189
  %i.ds = add nsw i64 %.157.us, 8                 ; 2 uses
  %i.dt = add nuw nsw i64 %.04358.us, 2           ; 2 uses
  %exitcond.not.1 = icmp eq i64 %i.dt, %3
  br i1 %exitcond.not.1, label %._crit_edge.us, label %scalar.ph, !llvm.loop !1007

._crit_edge.us:                                   ; preds = %scalar.ph.prol.loopexit, %scalar.ph, %middle.block
  %.lcssa79 = phi i64 [ %i.bt, %middle.block ], [ %.lcssa144.unr.a, %scalar.ph.prol.loopexit ], [ %i.ds, %scalar.ph ] ; 2 uses
  %i.du = add nuw nsw i64 %.04460.us, 4           ; 2 uses
  %i.dv = icmp slt i64 %i.du, %i.c
  br i1 %i.dv, label %.lr.ph.us, label %.preheader, !llvm.loop !1008

.preheader:                                       ; preds = %._crit_edge.us, %.lr.ph62, %bb.a
  %.045.lcssa = phi i64 [ 0, %bb.a ], [ 0, %.lr.ph62 ], [ %.lcssa79, %._crit_edge.us ]
  %i.dw = icmp slt i64 %i.c, %4
  br i1 %i.dw, label %.lr.ph68, label %._crit_edge69.split

.lr.ph68:                                         ; preds = %.preheader
  %i.dx = load ptr, ptr %2, align 8, !tbaa !394   ; 2 uses
  %i.dy = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !395 ; 3 uses
  %i.ea = icmp sgt i64 %3, 0
  br i1 %i.ea, label %.lr.ph.preheader, label %._crit_edge69.split

.lr.ph.preheader:                                 ; preds = %.lr.ph68
  %i.eb = ptrtoaddr ptr %i.dx to i64
  %i.ec = mul i64 %i.dz, -8
  %i.ed = mul i64 %i.dz, %i.b
  %i.ee = shl i64 %i.ed, 5
  %i.ef = add i64 %i.ee, %i.eb
  %i.eg = sub i64 %i.a, %i.ef
  %min.iters.check130 = icmp ult i64 %3, 4
  %n.vec133 = and i64 %3, 9223372036854775804     ; 4 uses
  %cmp.n140 = icmp eq i64 %3, %n.vec133
  %xtraiter145 = and i64 %3, 3                    ; 2 uses
  %lcmp.mod146.not = icmp eq i64 %xtraiter145, 0
  br label %.lr.ph

._crit_edge69.split:                              ; preds = %._crit_edge, %.lr.ph68, %.preheader
  ret void

.lr.ph:                                           ; preds = %.lr.ph.preheader, %._crit_edge
  %indvar = phi i64 [ 0, %.lr.ph.preheader ], [ %indvar.next, %._crit_edge ] ; 2 uses
  %.04267 = phi i64 [ %i.c, %.lr.ph.preheader ], [ %i.fc, %._crit_edge ] ; 2 uses
  %.266 = phi i64 [ %.045.lcssa, %.lr.ph.preheader ], [ %.lcssa, %._crit_edge ] ; 5 uses
  %i.eh = mul nsw i64 %i.dz, %.04267
  %i.ei = getelementptr [8 x i8], ptr %i.dx, i64 %i.eh ; 6 uses
  br i1 %min.iters.check130, label %scalar.ph129.preheader, label %vector.memcheck131

vector.memcheck131:                               ; preds = %.lr.ph
  %i.ej = mul i64 %indvar, %i.ec
  %i.ek = add i64 %i.eg, %i.ej
  %i.el = shl i64 %.266, 3
  %i.em = add i64 %i.ek, %i.el
  %i.en = add i64 %i.em, -1
  %diff.check = icmp ult i64 %i.en, 31
  br i1 %diff.check, label %scalar.ph129.preheader, label %vector.ph132

vector.ph132:                                     ; preds = %vector.memcheck131
  %i.eo = add i64 %.266, %n.vec133                ; 2 uses
  %i.ep = getelementptr [8 x i8], ptr %1, i64 %.266
  br label %vector.body134

vector.body134:                                   ; preds = %vector.body134, %vector.ph132
  %index135 = phi i64 [ 0, %vector.ph132 ], [ %index.next138, %vector.body134 ] ; 3 uses
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %index135 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %i.eq, i64 16
  %wide.load136 = load <2 x double>, ptr %i.eq, align 8, !tbaa !189
  %wide.load137 = load <2 x double>, ptr %i.er, align 8, !tbaa !189
  %i.es = getelementptr [8 x i8], ptr %i.ep, i64 %index135 ; 2 uses
  %i.et = getelementptr inbounds nuw i8, ptr %i.es, i64 16
  store <2 x double> %wide.load136, ptr %i.es, align 8, !tbaa !189
  store <2 x double> %wide.load137, ptr %i.et, align 8, !tbaa !189
  %index.next138 = add nuw i64 %index135, 4       ; 2 uses
  %i.eu = icmp eq i64 %index.next138, %n.vec133
  br i1 %i.eu, label %middle.block139, label %vector.body134, !llvm.loop !1009

middle.block139:                                  ; preds = %vector.body134
  br i1 %cmp.n140, label %._crit_edge, label %scalar.ph129.preheader

scalar.ph129.preheader:                           ; preds = %vector.memcheck131, %.lr.ph, %middle.block139
  %.065.ph = phi i64 [ 0, %vector.memcheck131 ], [ 0, %.lr.ph ], [ %n.vec133, %middle.block139 ] ; 3 uses
  %.364.ph = phi i64 [ %.266, %vector.memcheck131 ], [ %.266, %.lr.ph ], [ %i.eo, %middle.block139 ] ; 2 uses
  br i1 %lcmp.mod146.not, label %scalar.ph129.prol.loopexit, label %scalar.ph129.prol

scalar.ph129.prol:                                ; preds = %scalar.ph129.preheader, %scalar.ph129.prol
  %.065.prol = phi i64 [ %i.ez, %scalar.ph129.prol ], [ %.065.ph, %scalar.ph129.preheader ] ; 2 uses
  %.364.prol = phi i64 [ %i.ey, %scalar.ph129.prol ], [ %.364.ph, %scalar.ph129.preheader ] ; 2 uses
  %prol.iter = phi i64 [ %prol.iter.next, %scalar.ph129.prol ], [ 0, %scalar.ph129.preheader ]
  %i.ev = getelementptr inbounds nuw [8 x i8], ptr %i.ei, i64 %.065.prol
end_hunk_3
