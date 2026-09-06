Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 71
loop-unroll.NumUnrolled: 72
begin_hunk_0_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !189
  %i.du = tail call noundef double @llvm.fabs.f64(double %i.dt)
  %i.dv = fadd double %.182.i.i.i.i.i.i.i24.i.i.i.i.prol, %i.du ; 3 uses
  %i.dw = add nsw i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol, 1 ; 2 uses
  %prol.iter482.next = add i64 %prol.iter482, 1   ; 2 uses
  %prol.iter482.cmp.not = icmp eq i64 %prol.iter482.next, %xtraiter480
  br i1 %prol.iter482.cmp.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, !llvm.loop !584

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader
  %.lcssa475.unr = phi double [ poison, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ], [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ]
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
  %.0.i.i.i.i.i21.i.i.i.i = phi double [ %i.dr, %bb.j ], [ %.lcssa475.unr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit ], [ %i.ep, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i ] ; 2 uses
  %i.er = fcmp olt double %.05864.i.i.i.i, %.0.i.i.i.i.i21.i.i.i.i
  %i.es = select i1 %i.er, double %.0.i.i.i.i.i21.i.i.i.i, double %.05864.i.i.i.i ; 2 uses
  %i.et = add nuw nsw i64 %.01765.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i = icmp eq i64 %i.et, %i.bm
  br i1 %exitcond.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %.lr.ph.split.split.i.i.i.i, !llvm.loop !583

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i
  %lcmp.mod488.not = icmp eq i64 %xtraiter487, 0
  br i1 %lcmp.mod488.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader
  %.05864.us.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.preheader ], [ %i.ca, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ]
  %lcmp.mod490 = icmp ne i64 %xtraiter487, 0
  tail call void @llvm.assume(i1 %lcmp.mod490)
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader
  %.05864.us.i.i.i.i.epil = phi double [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %.05864.us.i.i.i.i.epil.init, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ] ; 2 uses
  %epil.iter = phi i64 [ %epil.iter.next, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil.preheader ]
  %i.eu = fcmp olt double %.05864.us.i.i.i.i.epil, 0.000000e+00
  %i.ev = select i1 %i.eu, double 0.000000e+00, double %.05864.us.i.i.i.i.epil ; 2 uses
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter487
  br i1 %epil.iter.cmp.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, !llvm.loop !585

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i
  %lcmp.mod484.not = icmp eq i64 %xtraiter483, 0
  br i1 %lcmp.mod484.not, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader: ; preds = %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %.01765.us66.i.i.i.i.epil.init = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.cu, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa ]
  %.05864.us67.i.i.i.i.epil.init = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa ] ; 2 uses
  %lcmp.mod486 = trunc i64 %i.cf to i1
  tail call void @llvm.assume(i1 %lcmp.mod486)
  %i.ew = mul nsw i64 %.01765.us66.i.i.i.i.epil.init, %i.b
  %i.ex = getelementptr [8 x i8], ptr %i.cb, i64 %i.ew
  %i.ey = load double, ptr %i.ex, align 8, !tbaa !189
  %i.ez = tail call noundef double @llvm.fabs.f64(double %i.ey) ; 2 uses
  %i.fa = fcmp olt double %.05864.us67.i.i.i.i.epil.init, %i.ez
  %i.fb = select i1 %i.fa, double %i.ez, double %.05864.us67.i.i.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit

_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i
  %.058.lcssa.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit.i.i.i.i ], [ %i.ev, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i.epil ], [ %i.fb, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader ], [ %i.ca, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa ], [ %i.ct, %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa ], [ %i.es, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 96
  store double %.058.lcssa.i.i.i.i, ptr %i.fc, align 8, !tbaa !641
  %.sroa.speculated.i = tail call noundef i64 @llvm.smin.i64(i64 %i.bm, i64 %i.b) ; 12 uses
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
  %i.gg = add nsw i64 %.sroa.speculated.i, -1     ; 2 uses
  %i.gh = shl i64 %i.b, 3
  %i.gi = add i64 %i.gh, -8
  %i.gj = add i64 %i.b, -2                        ; 2 uses
  br label %bb.s

bb.s:                                             ; preds = %.lr.ph235, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread
  %.060232 = phi i64 [ 0, %.lr.ph235 ], [ %i.wp, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ] ; 32 uses
  %.061231 = phi i64 [ 0, %.lr.ph235 ], [ %.2, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ] ; 5 uses
  %i.gk = xor i64 %.060232, -1
  %i.gl = add i64 %i.b, %i.gk                     ; 4 uses
  %i.gm = shl i64 %.060232, 3
  %i.gn = shl i64 %.060232, 3                     ; 2 uses
  %i.go = add i64 %i.gn, 8
  %i.gp = add nuw i64 %.060232, 1
  %i.gq = shl i64 %.060232, 3                     ; 2 uses
  %i.gr = add i64 %i.gq, 8
  %i.gs = shl i64 %.060232, 3                     ; 2 uses
  %i.gt = add i64 %i.gs, 8                        ; 2 uses
  %i.gu = shl i64 %.060232, 3
  %i.gv = sub i64 %i.gi, %i.gu
  %i.gw = sub nsw i64 %i.b, %.060232              ; 8 uses
  %i.gx = sub nsw i64 %i.bm, %.060232             ; 5 uses
  %i.gy = load i64, ptr %i.a, align 8, !tbaa !305, !noalias !642 ; 22 uses
  %i.gz = sub nsw i64 %i.gy, %i.gw
  %i.ha = load i64, ptr %i.bl, align 8, !tbaa !306, !noalias !642 ; 10 uses
  %i.hb = sub nsw i64 %i.ha, %i.gx
  %i.hc = load ptr, ptr %0, align 8, !tbaa !307, !noalias !642 ; 13 uses
  %i.hd = getelementptr inbounds [8 x i8], ptr %i.hc, i64 %i.gz
  %i.he = mul nsw i64 %i.hb, %i.gy
  %i.hf = getelementptr inbounds [8 x i8], ptr %i.hd, i64 %i.he ; 5 uses
  %i.hg = mul nuw nsw i64 %i.gx, %i.gw
  %i.hh = icmp eq i64 %i.hg, 0
  br i1 %i.hh, label %.lr.ph, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.hi = load double, ptr %i.hf, align 8, !tbaa !189
  %i.hj = tail call noundef double @llvm.fabs.f64(double %i.hi) ; 6 uses
  %i.hk = icmp sgt i64 %i.gw, 1
  br i1 %i.hk, label %.lr.ph.i.i.i.i71.preheader, label %.preheader25.i.i.i.i

.lr.ph.i.i.i.i71.preheader:                       ; preds = %bb.t
  %xtraiter493 = and i64 %i.gl, 1
  %i.hl = icmp eq i64 %i.gj, %.060232
  br i1 %i.hl, label %.lr.ph.i.i.i.i71.epil.preheader, label %.lr.ph.i.i.i.i71.preheader.new

.lr.ph.i.i.i.i71.preheader.new:                   ; preds = %.lr.ph.i.i.i.i71.preheader
  %unroll_iter500 = and i64 %i.gl, -2
  br label %.lr.ph.i.i.i.i71

.preheader25.i.i.i.i.loopexit.unr-lcssa:          ; preds = %.lr.ph.i.i.i.i71
  %lcmp.mod495.not = icmp eq i64 %xtraiter493, 0
  br i1 %lcmp.mod495.not, label %.preheader25.i.i.i.i, label %.lr.ph.i.i.i.i71.epil.preheader

.lr.ph.i.i.i.i71.epil.preheader:                  ; preds = %.preheader25.i.i.i.i.loopexit.unr-lcssa, %.lr.ph.i.i.i.i71.preheader
  %.sroa.0.4.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader ], [ %.sroa.0.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ]
  %.sroa.10.4.i.i.epil.init = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader ], [ %.sroa.10.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ]
  %.02127.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i71.preheader ], [ %i.if, %.preheader25.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader ], [ %i.ie, %.preheader25.i.i.i.i.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod499 = trunc i64 %i.gl to i1
  tail call void @llvm.assume(i1 %lcmp.mod499)
  %i.hm = getelementptr [8 x i8], ptr %i.hf, i64 %.02127.i.i.i.i.epil.init
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !189
  %i.ho = tail call noundef double @llvm.fabs.f64(double %i.hn) ; 3 uses
  %i.hp = fcmp ogt double %i.ho, %.epil.init      ; 3 uses
  %.sroa.0.5.i.i.epil = select i1 %i.hp, i64 %.02127.i.i.i.i.epil.init, i64 %.sroa.0.4.i.i.epil.init
  %.sroa.10.5.i.i.epil = select i1 %i.hp, double %i.ho, double %.sroa.10.4.i.i.epil.init
  %i.hq = select i1 %i.hp, double %i.ho, double %.epil.init
  br label %.preheader25.i.i.i.i

.preheader25.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i71.epil.preheader, %.preheader25.i.i.i.i.loopexit.unr-lcssa, %bb.t
  %.sroa.0.0.i.i = phi i64 [ 0, %bb.t ], [ %.sroa.0.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.0.5.i.i.epil, %.lr.ph.i.i.i.i71.epil.preheader ] ; 2 uses
  %.sroa.10.0.i.i = phi double [ %i.hj, %bb.t ], [ %.sroa.10.5.i.i.1, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %.sroa.10.5.i.i.epil, %.lr.ph.i.i.i.i71.epil.preheader ] ; 2 uses
  %.promoted34.i.i.i.i = phi double [ %i.hj, %bb.t ], [ %i.ie, %.preheader25.i.i.i.i.loopexit.unr-lcssa ], [ %i.hq, %.lr.ph.i.i.i.i71.epil.preheader ]
  %i.hr = icmp sgt i64 %i.gx, 1
  br i1 %i.hr, label %.preheader.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit

.preheader.i.i.i.i.preheader:                     ; preds = %.preheader25.i.i.i.i
  %xtraiter502 = and i64 %i.gw, 1
  %i.hs = icmp eq i64 %i.gl, 0
  %unroll_iter512 = and i64 %i.gw, -2
  %lcmp.mod506.not = icmp eq i64 %xtraiter502, 0
  %lcmp.mod511 = trunc i64 %i.gw to i1
  br label %.preheader.i.i.i.i

.lr.ph.i.i.i.i71:                                 ; preds = %.lr.ph.i.i.i.i71, %.lr.ph.i.i.i.i71.preheader.new
  %.sroa.0.4.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader.new ], [ %.sroa.0.5.i.i.1, %.lr.ph.i.i.i.i71 ]
  %.sroa.10.4.i.i = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader.new ], [ %.sroa.10.5.i.i.1, %.lr.ph.i.i.i.i71 ]
  %.02127.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i71.preheader.new ], [ %i.if, %.lr.ph.i.i.i.i71 ] ; 4 uses
  %i.ht = phi double [ %i.hj, %.lr.ph.i.i.i.i71.preheader.new ], [ %i.ie, %.lr.ph.i.i.i.i71 ] ; 2 uses
  %niter501 = phi i64 [ 0, %.lr.ph.i.i.i.i71.preheader.new ], [ %niter501.next.1, %.lr.ph.i.i.i.i71 ]
  %i.hu = getelementptr [8 x i8], ptr %i.hf, i64 %.02127.i.i.i.i
  %i.hv = load double, ptr %i.hu, align 8, !tbaa !189
  %i.hw = tail call noundef double @llvm.fabs.f64(double %i.hv) ; 3 uses
  %i.hx = fcmp ogt double %i.hw, %i.ht            ; 3 uses
  %.sroa.0.5.i.i = select i1 %i.hx, i64 %.02127.i.i.i.i, i64 %.sroa.0.4.i.i
  %.sroa.10.5.i.i = select i1 %i.hx, double %i.hw, double %.sroa.10.4.i.i
  %i.hy = select i1 %i.hx, double %i.hw, double %i.ht ; 2 uses
  %i.hz = add nuw nsw i64 %.02127.i.i.i.i, 1      ; 2 uses
  %i.ia = getelementptr [8 x i8], ptr %i.hf, i64 %i.hz
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !189
  %i.ic = tail call noundef double @llvm.fabs.f64(double %i.ib) ; 3 uses
  %i.id = fcmp ogt double %i.ic, %i.hy            ; 3 uses
  %.sroa.0.5.i.i.1 = select i1 %i.id, i64 %i.hz, i64 %.sroa.0.5.i.i ; 3 uses
  %.sroa.10.5.i.i.1 = select i1 %i.id, double %i.ic, double %.sroa.10.5.i.i ; 3 uses
  %i.ie = select i1 %i.id, double %i.ic, double %i.hy ; 3 uses
  %i.if = add nuw nsw i64 %.02127.i.i.i.i, 2      ; 2 uses
  %niter501.next.1 = add nuw i64 %niter501, 2     ; 2 uses
  %niter501.ncmp.1 = icmp eq i64 %niter501.next.1, %unroll_iter500
  br i1 %niter501.ncmp.1, label %.preheader25.i.i.i.i.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i71, !llvm.loop !588

.preheader.i.i.i.i:                               ; preds = %.preheader.i.i.i.i.preheader, %._crit_edge.i.i.i.i
  %.sroa.0.1.i.i = phi i64 [ %.sroa.0.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.sroa.0.0.i.i, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.sroa.10.1.i.i = phi double [ %.sroa.10.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.sroa.10.0.i.i, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.sroa.7.1.i.i = phi i64 [ %.sroa.7.3.i.i.lcssa, %._crit_edge.i.i.i.i ], [ 0, %.preheader.i.i.i.i.preheader ] ; 2 uses
  %.promoted3137.i.i.i.i = phi double [ %.promoted3135.i.i.i.i.lcssa, %._crit_edge.i.i.i.i ], [ %.promoted34.i.i.i.i, %.preheader.i.i.i.i.preheader ] ; 4 uses
  %.02032.i.i.i.i = phi i64 [ %i.im, %._crit_edge.i.i.i.i ], [ 1, %.preheader.i.i.i.i.preheader ] ; 5 uses
  %i.ig = mul nsw i64 %.02032.i.i.i.i, %i.gy
  %i.ih = getelementptr [8 x i8], ptr %i.hf, i64 %i.ig ; 3 uses
  br i1 %i.hs, label %.epil.preheader, label %.preheader.i.i.i.i.new

._crit_edge.i.i.i.i.unr-lcssa:                    ; preds = %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1
  br i1 %lcmp.mod506.not, label %._crit_edge.i.i.i.i, label %.epil.preheader

.epil.preheader:                                  ; preds = %._crit_edge.i.i.i.i.unr-lcssa, %.preheader.i.i.i.i
  %.sroa.0.2.i.i.epil.init = phi i64 [ %.sroa.0.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.0.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.sroa.10.2.i.i.epil.init = phi double [ %.sroa.10.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.10.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.sroa.7.2.i.i.epil.init = phi i64 [ %.sroa.7.1.i.i, %.preheader.i.i.i.i ], [ %.sroa.7.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.promoted3136.i.i.i.i.epil.init = phi double [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ], [ %.promoted3135.i.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.epil.init505 = phi double [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ], [ %i.iy, %._crit_edge.i.i.i.i.unr-lcssa ]
  %.029.i.i.i.i.epil.init = phi i64 [ 0, %.preheader.i.i.i.i ], [ %i.iz, %._crit_edge.i.i.i.i.unr-lcssa ] ; 2 uses
  tail call void @llvm.assume(i1 %lcmp.mod511)
  %i.ii = getelementptr [8 x i8], ptr %i.ih, i64 %.029.i.i.i.i.epil.init
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !189
  %i.ik = tail call noundef double @llvm.fabs.f64(double %i.ij) ; 3 uses
  %i.il = fcmp ogt double %i.ik, %.epil.init505
  br i1 %i.il, label %bb.u, label %._crit_edge.i.i.i.i

bb.u:                                             ; preds = %.epil.preheader
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.epil.preheader, %bb.u, %._crit_edge.i.i.i.i.unr-lcssa
  %.sroa.0.3.i.i.lcssa = phi i64 [ %.sroa.0.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %.029.i.i.i.i.epil.init, %bb.u ], [ %.sroa.0.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.sroa.10.3.i.i.lcssa = phi double [ %.sroa.10.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.ik, %bb.u ], [ %.sroa.10.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.sroa.7.3.i.i.lcssa = phi i64 [ %.sroa.7.3.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %.02032.i.i.i.i, %bb.u ], [ %.sroa.7.2.i.i.epil.init, %.epil.preheader ] ; 2 uses
  %.promoted3135.i.i.i.i.lcssa = phi double [ %.promoted3135.i.i.i.i.1, %._crit_edge.i.i.i.i.unr-lcssa ], [ %i.ik, %bb.u ], [ %.promoted3136.i.i.i.i.epil.init, %.epil.preheader ]
  %i.im = add nuw nsw i64 %.02032.i.i.i.i, 1      ; 2 uses
  %exitcond39.not.i.i.i.i = icmp eq i64 %i.im, %i.gx
  br i1 %exitcond39.not.i.i.i.i, label %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit, label %.preheader.i.i.i.i, !llvm.loop !589

.preheader.i.i.i.i.new:                           ; preds = %.preheader.i.i.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1
  %.sroa.0.2.i.i = phi i64 [ %.sroa.0.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.0.1.i.i, %.preheader.i.i.i.i ]
  %.sroa.10.2.i.i = phi double [ %.sroa.10.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.10.1.i.i, %.preheader.i.i.i.i ]
  %.sroa.7.2.i.i = phi i64 [ %.sroa.7.3.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.sroa.7.1.i.i, %.preheader.i.i.i.i ]
  %.promoted3136.i.i.i.i = phi double [ %.promoted3135.i.i.i.i.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ]
  %i.in = phi double [ %i.iy, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ %.promoted3137.i.i.i.i, %.preheader.i.i.i.i ] ; 2 uses
  %.029.i.i.i.i = phi i64 [ %i.iz, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ 0, %.preheader.i.i.i.i ] ; 4 uses
  %niter513 = phi i64 [ %niter513.next.1, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1 ], [ 0, %.preheader.i.i.i.i ]
  %i.io = getelementptr [8 x i8], ptr %i.ih, i64 %.029.i.i.i.i
  %i.ip = load double, ptr %i.io, align 8, !tbaa !189
  %i.iq = tail call noundef double @llvm.fabs.f64(double %i.ip) ; 4 uses
  %i.ir = fcmp ogt double %i.iq, %i.in
  br i1 %i.ir, label %bb.v, label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i

bb.v:                                             ; preds = %.preheader.i.i.i.i.new
  br label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i

_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i: ; preds = %bb.v, %.preheader.i.i.i.i.new
  %.sroa.0.3.i.i = phi i64 [ %.029.i.i.i.i, %bb.v ], [ %.sroa.0.2.i.i, %.preheader.i.i.i.i.new ]
  %.sroa.10.3.i.i = phi double [ %i.iq, %bb.v ], [ %.sroa.10.2.i.i, %.preheader.i.i.i.i.new ]
  %.sroa.7.3.i.i = phi i64 [ %.02032.i.i.i.i, %bb.v ], [ %.sroa.7.2.i.i, %.preheader.i.i.i.i.new ]
  %.promoted3135.i.i.i.i = phi double [ %i.iq, %bb.v ], [ %.promoted3136.i.i.i.i, %.preheader.i.i.i.i.new ]
  %i.is = phi double [ %i.iq, %bb.v ], [ %i.in, %.preheader.i.i.i.i.new ] ; 2 uses
  %i.it = or disjoint i64 %.029.i.i.i.i, 1        ; 2 uses
  %i.iu = getelementptr [8 x i8], ptr %i.ih, i64 %i.it
  %i.iv = load double, ptr %i.iu, align 8, !tbaa !189
  %i.iw = tail call noundef double @llvm.fabs.f64(double %i.iv) ; 4 uses
  %i.ix = fcmp ogt double %i.iw, %i.is
  br i1 %i.ix, label %bb.w, label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1

bb.w:                                             ; preds = %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i
  br label %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1

_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i.1: ; preds = %bb.w, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i
  %.sroa.0.3.i.i.1 = phi i64 [ %i.it, %bb.w ], [ %.sroa.0.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.sroa.10.3.i.i.1 = phi double [ %i.iw, %bb.w ], [ %.sroa.10.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.sroa.7.3.i.i.1 = phi i64 [ %.02032.i.i.i.i, %bb.w ], [ %.sroa.7.3.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %.promoted3135.i.i.i.i.1 = phi double [ %i.iw, %bb.w ], [ %.promoted3135.i.i.i.i, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 3 uses
  %i.iy = phi double [ %i.iw, %bb.w ], [ %i.is, %_ZN5Eigen8internal17max_coeff_visitorINS_12CwiseUnaryOpINS0_21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEELi0EEclERKdll.exit22.i.i.i.i ] ; 2 uses
  %i.iz = add nuw nsw i64 %.029.i.i.i.i, 2        ; 2 uses
  %niter513.next.1 = add i64 %niter513, 2         ; 2 uses
  %niter513.ncmp.1 = icmp eq i64 %niter513.next.1, %unroll_iter512
  br i1 %niter513.ncmp.1, label %._crit_edge.i.i.i.i.unr-lcssa, label %.preheader.i.i.i.i.new, !llvm.loop !590

_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit: ; preds = %._crit_edge.i.i.i.i, %.preheader25.i.i.i.i
  %.sroa.0.6.i.i = phi i64 [ %.sroa.0.0.i.i, %.preheader25.i.i.i.i ], [ %.sroa.0.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 2 uses
  %.sroa.10.6.i.i = phi double [ %.sroa.10.0.i.i, %.preheader25.i.i.i.i ], [ %.sroa.10.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 3 uses
  %.sroa.7.6.i.i = phi i64 [ 0, %.preheader25.i.i.i.i ], [ %.sroa.7.3.i.i.lcssa, %._crit_edge.i.i.i.i ] ; 3 uses
  %i.ja = add i64 %.sroa.0.6.i.i, %.060232        ; 3 uses
  %i.jb = add i64 %.sroa.7.6.i.i, %.060232        ; 4 uses
  %i.jc = fcmp une double %.sroa.10.6.i.i, 0.000000e+00
  br i1 %i.jc, label %bb.x, label %.lr.ph

.lr.ph:                                           ; preds = %_ZNK5Eigen9DenseBaseINS_12CwiseUnaryOpINS_8internal21scalar_score_coeff_opIdEEKNS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEEEEE8maxCoeffIlEEdPT_SE_.exit, %bb.s
  store i64 %.060232, ptr %i.ga, align 8, !tbaa !327
  %i.jd = load ptr, ptr %i.fd, align 8, !tbaa !314 ; 7 uses
  %i.je = load ptr, ptr %i.fp, align 8, !tbaa !312 ; 7 uses
  %i.jf = sub nsw i64 %.sroa.speculated.i, %.060232 ; 3 uses
  %min.iters.check441 = icmp ult i64 %i.jf, 8
  %i.jg = ptrtoaddr ptr %i.je to i64
  %i.jh = ptrtoaddr ptr %i.jd to i64
  %i.ji = sub i64 %i.jh, %i.jg
  %diff.check = icmp ugt i64 %i.ji, -32
  %or.cond = select i1 %min.iters.check441, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph440.preheader, label %vector.ph442

vector.ph442:                                     ; preds = %.lr.ph
  %n.vec443 = and i64 %i.jf, -8                   ; 3 uses
end_hunk_0
