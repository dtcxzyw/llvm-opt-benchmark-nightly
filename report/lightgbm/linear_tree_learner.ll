Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/lightgbm/original/linear_tree_learner?download=true
inline.NumInlined: 6309
inline.NumDeleted: 2630
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 72
loop-unroll.NumUnrolled: 73
begin_hunk_0_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  %i.ca = select i1 %i.bz, double 0.000000e+00, double %.05864.us.i.i.i.i ; 3 uses
  %niter492.next.3 = add i64 %niter492, 4         ; 2 uses
  %niter492.ncmp.3 = icmp eq i64 %niter492.next.3, %unroll_iter491
  br i1 %niter492.ncmp.3, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us.i.i.i.i, !llvm.loop !583

.lr.ph.split.i.i.i.i:                             ; preds = %.lr.ph.i.i.i.i
  %.off.i.i.i.i.i.i.i18.i.i.i.i = add i64 %i.b, 1
  %.not.i.i.i.i.i.i.i19.i.i.i.i = icmp ult i64 %.off.i.i.i.i.i.i.i18.i.i.i.i, 3
  %i.cb = load ptr, ptr %0, align 8, !tbaa !307   ; 4 uses
  br i1 %.not.i.i.i.i.i.i.i19.i.i.i.i, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader, label %.lr.ph.split.split.i.i.i.i.preheader

.lr.ph.split.split.i.i.i.i.preheader:             ; preds = %.lr.ph.split.i.i.i.i
  %i.cc = sub i64 %i.b, %i.br
  %xtraiter480 = and i64 %i.cc, 3                 ; 2 uses
  %lcmp.mod481.not = icmp eq i64 %xtraiter480, 0
  %i.cd = sub i64 %i.br, %i.b
  %i.ce = icmp ugt i64 %i.cd, -4
  br label %.lr.ph.split.split.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader: ; preds = %.lr.ph.split.i.i.i.i
  %i.cf = add nsw i64 %i.bm, -1                   ; 3 uses
  %xtraiter483 = and i64 %i.cf, 1
  %i.cg = icmp eq i64 %i.bm, 2
  br i1 %i.cg, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.epil.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader
  %unroll_iter = and i64 %i.cf, -2
  br label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i

_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i: ; preds = %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new
  %.01765.us66.i.i.i.i = phi i64 [ 1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.cu, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 3 uses
  %.05864.us67.i.i.i.i = phi double [ %.0.i.i.i.i.i.i.i.i.i, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %i.ct, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i.preheader.new ], [ %niter.next.1, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i ]
  %i.ch = mul nsw i64 %.01765.us66.i.i.i.i, %i.b
  %i.ci = getelementptr [8 x i8], ptr %i.cb, i64 %i.ch
  %i.cj = load double, ptr %i.ci, align 8, !tbaa !189
  %i.ck = tail call noundef double @llvm.fabs.f64(double %i.cj) ; 2 uses
  %i.cl = fcmp olt double %.05864.us67.i.i.i.i, %i.ck
  %i.cm = select i1 %i.cl, double %i.ck, double %.05864.us67.i.i.i.i ; 2 uses
  %i.cn = add nuw nsw i64 %.01765.us66.i.i.i.i, 1
  %i.co = mul nsw i64 %i.cn, %i.b
  %i.cp = getelementptr [8 x i8], ptr %i.cb, i64 %i.co
  %i.cq = load double, ptr %i.cp, align 8, !tbaa !189
  %i.cr = tail call noundef double @llvm.fabs.f64(double %i.cq) ; 2 uses
  %i.cs = fcmp olt double %i.cm, %i.cr
  %i.ct = select i1 %i.cs, double %i.cr, double %i.cm ; 3 uses
  %i.cu = add nuw nsw i64 %.01765.us66.i.i.i.i, 2 ; 2 uses
  %niter.next.1 = add nuw i64 %niter, 2           ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS_8internal13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_10member_sumIddEELi0EEEE8maxCoeffEv.exit.loopexit470.unr-lcssa, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.us68.i.i.i.i, !llvm.loop !583

.lr.ph.split.split.i.i.i.i:                       ; preds = %.lr.ph.split.split.i.i.i.i.preheader, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i
  %.01765.i.i.i.i = phi i64 [ %i.et, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ 1, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %.05864.i.i.i.i = phi double [ %i.es, %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i, %.lr.ph.split.split.i.i.i.i.preheader ] ; 2 uses
  %i.cv = mul nsw i64 %.01765.i.i.i.i, %i.b
  %i.cw = getelementptr [8 x i8], ptr %i.cb, i64 %i.cv ; 10 uses
  %i.cx = load <2 x double>, ptr %i.cw, align 1, !tbaa !182
  %i.cy = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.cx) ; 3 uses
  br i1 %i.bs, label %bb.h, label %bb.j

bb.h:                                             ; preds = %.lr.ph.split.split.i.i.i.i
  %i.cz = getelementptr i8, ptr %i.cw, i64 16
  %i.da = load <2 x double>, ptr %i.cz, align 1, !tbaa !182
  %i.db = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.da) ; 2 uses
  br i1 %i.bt, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i

._crit_edge.i.i.i.i.i.i.i26.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, %bb.h
  %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i = phi <2 x double> [ %i.db, %bb.h ], [ %i.dl, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i = phi <2 x double> [ %i.cy, %bb.h ], [ %i.dg, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ]
  %i.dc = fadd <2 x double> %.075.lcssa.i.i.i.i.i.i.i27.i.i.i.i, %.072.lcssa.i.i.i.i.i.i.i28.i.i.i.i ; 2 uses
  br i1 %i.bu, label %bb.i, label %bb.j

.lr.ph.i.i.i.i.i.i.i29.i.i.i.i:                   ; preds = %bb.h, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i
  %.05480.i.i.i.i.i.i.i30.i.i.i.i = phi i64 [ %.054.i.i.i.i.i.i.i34.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 4, %bb.h ] ; 3 uses
  %.054.in79.i.i.i.i.i.i.i31.i.i.i.i = phi i64 [ %.05480.i.i.i.i.i.i.i30.i.i.i.i, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ 0, %bb.h ]
  %.07278.i.i.i.i.i.i.i32.i.i.i.i = phi <2 x double> [ %i.dg, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.cy, %bb.h ]
  %.07577.i.i.i.i.i.i.i33.i.i.i.i = phi <2 x double> [ %i.dl, %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i ], [ %i.db, %bb.h ]
  %i.dd = getelementptr [8 x i8], ptr %i.cw, i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i
  %i.de = load <2 x double>, ptr %i.dd, align 1, !tbaa !182
  %i.df = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.de)
  %i.dg = fadd <2 x double> %.07278.i.i.i.i.i.i.i32.i.i.i.i, %i.df ; 2 uses
  %i.dh = getelementptr [8 x i8], ptr %i.cw, i64 %.054.in79.i.i.i.i.i.i.i31.i.i.i.i
  %i.di = getelementptr i8, ptr %i.dh, i64 48
  %i.dj = load <2 x double>, ptr %i.di, align 1, !tbaa !182
  %i.dk = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.dj)
  %i.dl = fadd <2 x double> %.07577.i.i.i.i.i.i.i33.i.i.i.i, %i.dk ; 2 uses
  %.054.i.i.i.i.i.i.i34.i.i.i.i = add nuw nsw i64 %.05480.i.i.i.i.i.i.i30.i.i.i.i, 4 ; 2 uses
  %i.dm = icmp slt i64 %.054.i.i.i.i.i.i.i34.i.i.i.i, %i.bp
  br i1 %i.dm, label %.lr.ph.i.i.i.i.i.i.i29.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, !llvm.loop !580

bb.i:                                             ; preds = %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i
  %i.dn = getelementptr [8 x i8], ptr %i.cw, i64 %i.bp
  %i.do = load <2 x double>, ptr %i.dn, align 1, !tbaa !182
  %i.dp = tail call noundef <2 x double> @llvm.fabs.v2f64(<2 x double> %i.do)
  %i.dq = fadd <2 x double> %i.dc, %i.dp
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i, %.lr.ph.split.split.i.i.i.i
  %.274.i.i.i.i.i.i.i20.i.i.i.i = phi <2 x double> [ %i.cy, %.lr.ph.split.split.i.i.i.i ], [ %i.dq, %bb.i ], [ %i.dc, %._crit_edge.i.i.i.i.i.i.i26.i.i.i.i ] ; 2 uses
  %shift456 = shufflevector <2 x double> %.274.i.i.i.i.i.i.i20.i.i.i.i, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop457 = fadd <2 x double> %.274.i.i.i.i.i.i.i20.i.i.i.i, %shift456
  %i.dr = extractelement <2 x double> %foldExtExtBinop457, i64 0 ; 3 uses
  br i1 %i.bv, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, label %_ZNK5Eigen8internal15redux_evaluatorINS_16PartialReduxExprIKNS_12CwiseUnaryOpINS0_13scalar_abs_opIdEEKNS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS0_10member_sumIddEELi0EEEE17coeffByOuterInnerEll.exit35.i.i.i.i

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader:       ; preds = %bb.j
  br i1 %lcmp.mod481.not, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol.loopexit, label %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol

.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol:            ; preds = %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol
  %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol = phi i64 [ %i.dw, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.br, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ] ; 2 uses
  %.182.i.i.i.i.i.i.i24.i.i.i.i.prol = phi double [ %i.dv, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ %i.dr, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %prol.iter482 = phi i64 [ %prol.iter482.next, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.prol ], [ 0, %.lr.ph85.i.i.i.i.i.i.i22.i.i.i.i.preheader ]
  %i.ds = getelementptr [8 x i8], ptr %i.cw, i64 %.05283.i.i.i.i.i.i.i23.i.i.i.i.prol
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
end_hunk_0
begin_hunk_1_@_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE14computeInPlaceEv:bb.a
  %i.tl = fmul <2 x double> %broadcast.splat340, %wide.load344
  %i.tm = getelementptr inbounds nuw i8, ptr %i.th, i64 16 ; 2 uses
  %wide.load345 = load <2 x double>, ptr %i.th, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %wide.load346 = load <2 x double>, ptr %i.tm, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %i.tn = fsub <2 x double> %wide.load345, %i.tk
  %i.to = fsub <2 x double> %wide.load346, %i.tl
  store <2 x double> %i.tn, ptr %i.th, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  store <2 x double> %i.to, ptr %i.tm, align 8, !tbaa !189, !alias.scope !655, !noalias !654
  %index.next347 = add nuw i64 %index342, 4       ; 2 uses
  %i.tp = icmp eq i64 %index.next347, %n.vec338
  br i1 %i.tp, label %middle.block348, label %vector.body341, !llvm.loop !628

middle.block348:                                  ; preds = %vector.body341
  %cmp.n349 = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %n.vec338
  br i1 %cmp.n349, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader460

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader460:    ; preds = %vector.memcheck327, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block348
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ 0, %vector.memcheck327 ], [ 0, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %n.vec338, %middle.block348 ] ; 5 uses
  %.neg541 = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  %xtraiter523 = and i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 1
  %lcmp.mod524.not = icmp eq i64 %xtraiter523, 0
  br i1 %lcmp.mod524.not, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol:            ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader460
  %i.tq = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.tr = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.ts = load double, ptr %i.tr, align 8, !tbaa !189
  %i.tt = fmul double %i.st, %i.ts
  %i.tu = load double, ptr %i.tq, align 8, !tbaa !189
  %i.tv = fsub double %i.tu, %i.tt
  store double %i.tv, ptr %i.tq, align 8, !tbaa !189
  %i.tw = or disjoint i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit:   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader460
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.preheader460 ], [ %i.tw, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.tx = icmp eq i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.neg541
  br i1 %i.tx, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i:                 ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.ul, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.ty = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.tz = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i
  %i.ua = load double, ptr %i.tz, align 8, !tbaa !189
  %i.ub = fmul double %i.st, %i.ua
  %i.uc = load double, ptr %i.ty, align 8, !tbaa !189
  %i.ud = fsub double %i.uc, %i.ub
  store double %i.ud, ptr %i.ty, align 8, !tbaa !189
  %i.ue = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.uf = getelementptr inbounds nuw [8 x i8], ptr %i.sq, i64 %i.ue ; 2 uses
  %i.ug = getelementptr inbounds nuw [8 x i8], ptr %i.rp, i64 %i.ue
  %i.uh = load double, ptr %i.ug, align 8, !tbaa !189
  %i.ui = fmul double %i.st, %i.uh
  %i.uj = load double, ptr %i.uf, align 8, !tbaa !189
  %i.uk = fsub double %i.uj, %i.ui
  store double %i.uk, ptr %i.uf, align 8, !tbaa !189
  %i.ul = add nuw nsw i64 %.05.i.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.ul, %.0.i.i.i.i.i.i.i.i.i.i.i.i.i
  br i1 %exitcond.not.i.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !629

_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block348, %_ZN5Eigen8internal13first_alignedILi16EdlEET1_PKT0_S2_.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.um = icmp sgt i64 %i.sz, 1
  br i1 %i.um, label %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i:         ; preds = %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.un = shufflevector <2 x double> %.sroa.3.8.vec.insert.i.i.i.i.i.i.i.i.i.i.i, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i

._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i:              ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %_ZN5Eigen8internal31unaligned_dense_assignment_loopILb0EE3runINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_5BlockINS6_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEELin1ELi1ELb1EEEEENS5_INS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS7_IdLin1ELi1ELi0ELin1ELi1EEEEEKNS6_INS6_IS8_Lin1ELi1ELb1EEELin1ELi1ELb0EEEEEEENS0_13sub_assign_opIddEELi0EEEEEvRT_ll.exit.i.i.i.i.i.i.i.i.i.i.i.i
  %i.uo = icmp slt i64 %i.tc, %i.rn
  br i1 %i.uo, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader:     ; preds = %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.up = add i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %i.tb
  %i.uq = sub i64 %i.rn, %i.up                    ; 3 uses
  %min.iters.check = icmp ult i64 %i.uq, 6
  br i1 %min.iters.check, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader459, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader
  %i.ur = mul i64 %i.so, %i.sn                    ; 2 uses
  %i.us = shl i64 %i.ta, 4                        ; 2 uses
  %i.ut = shl i64 %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, 3 ; 2 uses
  %i.uu = getelementptr i8, ptr %scevgep, i64 %i.ur
  %i.uv = getelementptr i8, ptr %i.uu, i64 %i.us
  %scevgep318 = getelementptr i8, ptr %i.uv, i64 %i.ut
  %scevgep320 = getelementptr i8, ptr %scevgep319, i64 %i.ur
  %i.uw = getelementptr i8, ptr %scevgep321, i64 %i.us
  %scevgep322 = getelementptr i8, ptr %i.uw, i64 %i.ut
  %bound0 = icmp ult ptr %scevgep318, %scevgep323
  %bound1 = icmp ult ptr %scevgep322, %scevgep320
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader459, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.uq, -4                      ; 3 uses
  %i.ux = add i64 %i.tc, %n.vec
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.st, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.uy = add i64 %i.tc, %index                   ; 2 uses
  %i.uz = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %i.uy ; 3 uses
  %i.va = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.uy ; 2 uses
  %i.vb = getelementptr inbounds nuw i8, ptr %i.va, i64 16
  %wide.load = load <2 x double>, ptr %i.va, align 8, !tbaa !189, !alias.scope !656
  %wide.load324 = load <2 x double>, ptr %i.vb, align 8, !tbaa !189, !alias.scope !656
  %i.vc = fmul <2 x double> %broadcast.splat, %wide.load
  %i.vd = fmul <2 x double> %broadcast.splat, %wide.load324
  %i.ve = getelementptr inbounds nuw i8, ptr %i.uz, i64 16 ; 2 uses
  %wide.load325 = load <2 x double>, ptr %i.uz, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %wide.load326 = load <2 x double>, ptr %i.ve, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %i.vf = fsub <2 x double> %wide.load325, %i.vc
  %i.vg = fsub <2 x double> %wide.load326, %i.vd
  store <2 x double> %i.vf, ptr %i.uz, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  store <2 x double> %i.vg, ptr %i.ve, align 8, !tbaa !189, !alias.scope !657, !noalias !656
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.vh = icmp eq i64 %index.next, %n.vec
  br i1 %i.vh, label %middle.block, label %vector.body, !llvm.loop !633

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.uq, %n.vec
  br i1 %cmp.n, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader459

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader459:  ; preds = %vector.memcheck, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader, %middle.block
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph = phi i64 [ %i.tc, %vector.memcheck ], [ %i.tc, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader ], [ %i.ux, %middle.block ] ; 6 uses
  %i.vi = sub i64 %i.rn, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vj = add i64 %.060232, %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %xtraiter526 = and i64 %i.vi, 1
  %lcmp.mod527.not = icmp eq i64 %xtraiter526, 0
  br i1 %lcmp.mod527.not, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol:          ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader459
  %i.vk = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph ; 2 uses
  %i.vl = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph
  %i.vm = load double, ptr %i.vl, align 8, !tbaa !189
  %i.vn = fmul double %i.st, %i.vm
  %i.vo = load double, ptr %i.vk, align 8, !tbaa !189
  %i.vp = fsub double %i.vo, %i.vn
  store double %i.vp, ptr %i.vk, align 8, !tbaa !189
  %i.vq = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, 1
  br label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader459
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr = phi i64 [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.ph, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.preheader459 ], [ %i.vq, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol ]
  %i.vr = icmp eq i64 %i.gj, %i.vj
  br i1 %i.vr, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i

.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i:               ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i
  %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wf, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i.unr, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit ] ; 4 uses
  %i.vs = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.vt = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !189
  %i.vv = fmul double %i.st, %i.vu
  %i.vw = load double, ptr %i.vs, align 8, !tbaa !189
  %i.vx = fsub double %i.vw, %i.vv
  store double %i.vx, ptr %i.vs, align 8, !tbaa !189
  %i.vy = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 1 ; 2 uses
  %i.vz = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %i.vy ; 2 uses
  %i.wa = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %i.vy
  %i.wb = load double, ptr %i.wa, align 8, !tbaa !189
  %i.wc = fmul double %i.st, %i.wb
  %i.wd = load double, ptr %i.vz, align 8, !tbaa !189
  %i.we = fsub double %i.wd, %i.wc
  store double %i.we, ptr %i.vz, align 8, !tbaa !189
  %i.wf = add nsw i64 %.05.i18.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1 = icmp eq i64 %i.wf, %i.rn
  br i1 %exitcond.not.i19.i.i.i.i.i.i.i.i.i.i.i.i.1, label %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, label %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !634

.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i:                   ; preds = %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i
  %.021.i.i.i.i.i.i.i.i.i.i.i.i = phi i64 [ %i.wm, %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i ], [ %.0.i.i.i.i.i.i.i.i.i.i.i.i.i, %.lr.ph.i.preheader.i.i.i.i.i.i.i.i.i.i.i ] ; 3 uses
  %i.wg = getelementptr inbounds [8 x i8], ptr %i.sq, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i ; 2 uses
  %i.wh = getelementptr inbounds [8 x i8], ptr %i.rp, i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wi = load <2 x double>, ptr %i.wh, align 1, !tbaa !182
  %i.wj = fmul <2 x double> %i.un, %i.wi
  %i.wk = load <2 x double>, ptr %i.wg, align 16, !tbaa !182
  %i.wl = fsub <2 x double> %i.wk, %i.wj
  store <2 x double> %i.wl, ptr %i.wg, align 16, !tbaa !182
  %i.wm = add nsw i64 %.021.i.i.i.i.i.i.i.i.i.i.i.i, 2 ; 2 uses
  %i.wn = icmp slt i64 %i.wm, %i.tc
  br i1 %i.wn, label %.lr.ph.i.i.i.i.i.i.i.i.i.i.i.i, label %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i, !llvm.loop !635

_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i: ; preds = %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i17.i.i.i.i.i.i.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i.i.i.i.i.i.i.i
  %i.wo = add nuw nsw i64 %.029.i.i.i.i.i, 1      ; 2 uses
  %exitcond.not.i.i.i.i.i = icmp eq i64 %i.wo, %i.rs
  br i1 %exitcond.not.i.i.i.i.i, label %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, label %.lr.ph.i.i.i.i.i, !llvm.loop !636

_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread: ; preds = %_ZNK5Eigen8internal20generic_product_implINS_5BlockINS2_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEENS2_INS2_IS4_Li1ELin1ELb0EEELi1ELin1ELb0EEENS_10DenseShapeES9_Li5EE3subclINS2_INS2_IS4_Lin1ELin1ELb0EEELin1ELi1ELb1EEENS_13CwiseBinaryOpINS0_17scalar_product_opIddEEKNS_14CwiseNullaryOpINS0_18scalar_constant_opIdEEKNS3_IdLin1ELi1ELi0ELin1ELi1EEEEEKS6_EEEEvRKT_RKT0_.exit.i.i.i.i.i, %_ZN5Eigen9DenseBaseINS_5BlockINS1_INS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELi1ELb1EEELin1ELi1ELb0EEEEdVERKd.exit
  %i.wp = add nuw nsw i64 %.060232, 1             ; 2 uses
  %exitcond257.not = icmp eq i64 %i.wp, %.sroa.speculated.i
  br i1 %exitcond257.not, label %._crit_edge, label %bb.s, !llvm.loop !637

._crit_edge:                                      ; preds = %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread, %scalar.ph440.prol.loopexit, %scalar.ph440, %middle.block449
  %.4.ph = phi i64 [ %.061231, %middle.block449 ], [ %.061231, %scalar.ph440.prol.loopexit ], [ %.061231, %scalar.ph440 ], [ %.2, %_ZN5Eigen7NoAliasINS_5BlockINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELin1ELin1ELb0EEENS_10MatrixBaseEEmIINS_7ProductINS1_INS1_IS3_Lin1ELi1ELb1EEELin1ELi1ELb0EEENS1_INS1_IS3_Li1ELin1ELb0EEELi1ELin1ELb0EEELi0EEEEERS4_RKNS5_IT_EE.exit.thread ]
  %i.wq = and i64 %.4.ph, 1
  %i.wr = icmp eq i64 %i.wq, 0
  %i.ws = select i1 %i.wr, i8 1, i8 -1            ; 2 uses
  %i.wt = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.wt, i64 noundef %i.b)
  %i.wu = load ptr, ptr %i.fd, align 8, !tbaa !314 ; 3 uses
  %i.wv = load ptr, ptr %i.wt, align 8, !tbaa !314 ; 6 uses
  %xtraiter532 = and i64 %.sroa.speculated.i, 1
  %lcmp.mod533.not = icmp eq i64 %xtraiter532, 0
  br i1 %lcmp.mod533.not, label %.prol.loopexit, label %.prol.loopexit.unr-lcssa

.prol.loopexit.unr-lcssa:                         ; preds = %._crit_edge
  %.058.prol = add nsw i64 %.sroa.speculated.i, -1 ; 3 uses
  %1 = getelementptr inbounds nuw [4 x i8], ptr %i.wu, i64 %.058.prol
  %2 = load i32, ptr %1, align 4, !tbaa !166
  %3 = sext i32 %2 to i64
  %4 = getelementptr inbounds nuw [4 x i8], ptr %i.wv, i64 %.058.prol ; 2 uses
  %5 = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %3 ; 2 uses
  %6 = load i32, ptr %4, align 4, !tbaa !166
  %7 = load i32, ptr %5, align 4, !tbaa !166
  store i32 %7, ptr %4, align 4, !tbaa !166
  store i32 %6, ptr %5, align 4, !tbaa !166
  br label %.prol.loopexit

.prol.loopexit:                                   ; preds = %.prol.loopexit.unr-lcssa, %._crit_edge
  %.058.in237.unr = phi i64 [ %.sroa.speculated.i, %._crit_edge ], [ %.058.prol, %.prol.loopexit.unr-lcssa ]
  %8 = icmp eq i64 %i.gg, 0
  br i1 %8, label %.lr.ph243, label %bb.ai

.lr.ph243:                                        ; preds = %bb.ai, %.prol.loopexit
  %i.ww = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  tail call void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %i.ww, i64 noundef %i.bm)
  %i.wx = load ptr, ptr %i.fp, align 8, !tbaa !312 ; 3 uses
  %i.wy = load ptr, ptr %i.ww, align 8, !tbaa !314 ; 6 uses
  %xtraiter533 = and i64 %.sroa.speculated.i, 1
  %i.wz = icmp eq i64 %i.gg, 0
  br i1 %i.wz, label %.epil.preheader532, label %.lr.ph243.new

.lr.ph243.new:                                    ; preds = %.lr.ph243
  %unroll_iter537 = and i64 %.sroa.speculated.i, 9223372036854775806
  br label %bb.aj

bb.ai:                                            ; preds = %.prol.loopexit, %bb.ai
  %.058.in237 = phi i64 [ %.058.a, %bb.ai ], [ %.058.in237.unr, %.prol.loopexit ] ; 3 uses
  %.058 = add nsw i64 %.058.in237, -1             ; 2 uses
  %9 = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.058
  %10 = load i32, ptr %9, align 4, !tbaa !166
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %.058 ; 2 uses
  %13 = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %11 ; 2 uses
  %14 = load i32, ptr %12, align 4, !tbaa !166
  %15 = load i32, ptr %13, align 4, !tbaa !166
  store i32 %15, ptr %12, align 4, !tbaa !166
  store i32 %14, ptr %13, align 4, !tbaa !166
  %.058.a = add nsw i64 %.058.in237, -2           ; 3 uses
  %i.xa = getelementptr inbounds [4 x i8], ptr %i.wu, i64 %.058.a
  %i.xb = load i32, ptr %i.xa, align 4, !tbaa !166
  %i.xc = sext i32 %i.xb to i64
  %i.xd = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %.058.a ; 2 uses
  %i.xe = getelementptr inbounds [4 x i8], ptr %i.wv, i64 %i.xc ; 2 uses
  %i.xf = load i32, ptr %i.xd, align 4, !tbaa !166
  %i.xg = load i32, ptr %i.xe, align 4, !tbaa !166
  store i32 %i.xg, ptr %i.xd, align 4, !tbaa !166
  store i32 %i.xf, ptr %i.xe, align 4, !tbaa !166
  %16 = icmp sgt i64 %.058.in237, 2
  br i1 %16, label %bb.ai, label %.lr.ph243, !llvm.loop !638

._crit_edge244.loopexit.unr-lcssa:                ; preds = %bb.aj
  %lcmp.mod535.not = icmp eq i64 %xtraiter533, 0
  br i1 %lcmp.mod535.not, label %._crit_edge244, label %.epil.preheader532

.epil.preheader532:                               ; preds = %._crit_edge244.loopexit.unr-lcssa, %.lr.ph243
  %.0241.epil.init = phi i64 [ 0, %.lr.ph243 ], [ %i.yf, %._crit_edge244.loopexit.unr-lcssa ] ; 2 uses
  %lcmp.mod536 = trunc i64 %.sroa.speculated.i to i1
  tail call void @llvm.assume(i1 %lcmp.mod536)
  %i.xh = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.0241.epil.init
  %i.xi = load i32, ptr %i.xh, align 4, !tbaa !166
  %i.xj = sext i32 %i.xi to i64
  %i.xk = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.0241.epil.init ; 2 uses
  %i.xl = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xj ; 2 uses
  %i.xm = load i32, ptr %i.xk, align 4, !tbaa !166
  %i.xn = load i32, ptr %i.xl, align 4, !tbaa !166
  store i32 %i.xn, ptr %i.xk, align 4, !tbaa !166
  store i32 %i.xm, ptr %i.xl, align 4, !tbaa !166
  br label %._crit_edge244

._crit_edge244:                                   ; preds = %.epil.preheader532, %._crit_edge244.loopexit.unr-lcssa, %._crit_edge.thread
  %.4287289 = phi i8 [ 1, %._crit_edge.thread ], [ %i.ws, %._crit_edge244.loopexit.unr-lcssa ], [ %i.ws, %.epil.preheader532 ]
  %i.xo = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 %.4287289, ptr %i.xo, align 8, !tbaa !658
  %i.xp = getelementptr inbounds nuw i8, ptr %0, i64 121
  store i8 1, ptr %i.xp, align 1, !tbaa !325
  ret void

bb.aj:                                            ; preds = %bb.aj, %.lr.ph243.new
  %.0241 = phi i64 [ 0, %.lr.ph243.new ], [ %i.yf, %bb.aj ] ; 4 uses
  %niter538 = phi i64 [ 0, %.lr.ph243.new ], [ %niter538.next.1, %bb.aj ]
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %.0241
  %i.xr = load i32, ptr %i.xq, align 4, !tbaa !166
  %i.xs = sext i32 %i.xr to i64
  %i.xt = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %.0241 ; 2 uses
  %i.xu = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.xs ; 2 uses
  %i.xv = load i32, ptr %i.xt, align 4, !tbaa !166
  %i.xw = load i32, ptr %i.xu, align 4, !tbaa !166
  store i32 %i.xw, ptr %i.xt, align 4, !tbaa !166
  store i32 %i.xv, ptr %i.xu, align 4, !tbaa !166
  %i.xx = or disjoint i64 %.0241, 1               ; 2 uses
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.wx, i64 %i.xx
  %i.xz = load i32, ptr %i.xy, align 4, !tbaa !166
  %i.ya = sext i32 %i.xz to i64
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.wy, i64 %i.xx ; 2 uses
  %i.yc = getelementptr inbounds [4 x i8], ptr %i.wy, i64 %i.ya ; 2 uses
  %i.yd = load i32, ptr %i.yb, align 4, !tbaa !166
  %i.ye = load i32, ptr %i.yc, align 4, !tbaa !166
  store i32 %i.ye, ptr %i.yb, align 4, !tbaa !166
  store i32 %i.yd, ptr %i.yc, align 4, !tbaa !166
  %i.yf = add nuw nsw i64 %.0241, 2               ; 2 uses
  %niter538.next.1 = add i64 %niter538, 2         ; 2 uses
  %niter538.ncmp.1 = icmp eq i64 %niter538.next.1, %unroll_iter537
  br i1 %niter538.ncmp.1, label %._crit_edge244.loopexit.unr-lcssa, label %bb.aj, !llvm.loop !639
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEl(ptr noundef nonnull align 1 dereferenceable(1) %0, i64 noundef %1) local_unnamed_addr #1 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !315
  %.not.i.i.i = icmp eq i64 %1, %i.b
  br i1 %.not.i.i.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %0, align 8, !tbaa !314
  tail call void @free(ptr noundef %i.c) #6
  %i.d = icmp sgt i64 %1, 0
  br i1 %i.d, label %bb.c, label %.sink.split.i.i.i

bb.c:                                             ; preds = %bb.b
  %i.e = icmp samesign ugt i64 %1, 4611686018427387903
  br i1 %i.e, label %bb.d, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i

bb.d:                                             ; preds = %bb.c
  %i.f = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.f, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.f, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i: ; preds = %bb.c
  %i.g = shl nuw i64 %1, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #38 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %bb.e, label %.sink.split.i.i.i

bb.e:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !249
  tail call void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

.sink.split.i.i.i:                                ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i, %bb.b
  %.sink.i.i.i = phi ptr [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i ], [ null, %bb.b ]
  store ptr %.sink.i.i.i, ptr %0, align 8, !tbaa !314
  br label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit: ; preds = %bb.a, %.sink.split.i.i.i
  store i64 %1, ptr %i.a, align 8, !tbaa !315
  %i.k = trunc i64 %1 to i32
  %i.l = icmp sgt i32 %i.k, 0
  br i1 %i.l, label %.lr.ph.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit

.lr.ph.i:                                         ; preds = %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  %i.m = load ptr, ptr %0, align 8, !tbaa !314    ; 2 uses
  %wide.trip.count.i = and i64 %1, 2147483647     ; 3 uses
  %min.iters.check = icmp samesign ult i64 %wide.trip.count.i, 8
  br i1 %min.iters.check, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph.i
  %n.vec = and i64 %1, 2147483640                 ; 3 uses
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %vec.ind = phi <4 x i32> [ <i32 0, i32 1, i32 2, i32 3>, %vector.ph ], [ %vec.ind.next, %vector.body ] ; 3 uses
  %step.add = add <4 x i32> %vec.ind, splat (i32 4)
  %i.n = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %index ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 16
  store <4 x i32> %vec.ind, ptr %i.n, align 4, !tbaa !166
  store <4 x i32> %step.add, ptr %i.o, align 4, !tbaa !166
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %vec.ind.next = add <4 x i32> %vec.ind, splat (i32 8)
  %i.p = icmp eq i64 %index.next, %n.vec
  br i1 %i.p, label %middle.block, label %vector.body, !llvm.loop !659

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %wide.trip.count.i, %n.vec
  br i1 %cmp.n, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph.i, %middle.block
  %indvars.iv.i.ph = phi i64 [ 0, %.lr.ph.i ], [ %n.vec, %middle.block ]
  br label %scalar.ph

scalar.ph:                                        ; preds = %scalar.ph.preheader, %scalar.ph
  %indvars.iv.i = phi i64 [ %indvars.iv.next.i, %scalar.ph ], [ %indvars.iv.i.ph, %scalar.ph.preheader ] ; 3 uses
  %i.q = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %indvars.iv.i
  %i.r = trunc nuw nsw i64 %indvars.iv.i to i32
  store i32 %i.r, ptr %i.q, align 4, !tbaa !166
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit, label %scalar.ph, !llvm.loop !660

_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE11setIdentityEv.exit: ; preds = %scalar.ph, %middle.block, %_ZN5Eigen15PermutationBaseINS_17PermutationMatrixILin1ELin1EiEEE6resizeEl.exit
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #19

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr void @_ZN5Eigen9FullPivLUINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEC2ERKS3_(ptr noundef nonnull align 8 dereferenceable(123) %0, ptr noundef nonnull align 8 dereferenceable(123) %1) unnamed_addr #11 comdat align 2 personality ptr @__gxx_personality_v0 {
_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit:
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EEC2ERKS1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.d = load i64, ptr %i.c, align 8, !tbaa !315  ; 4 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i, label %bb.a

bb.a:                                             ; preds = %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %i.f = icmp ugt i64 %i.d, 4611686018427387903
  br i1 %i.f, label %.invoke, label %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i: ; preds = %bb.a
  %i.g = shl nuw i64 %i.d, 2
  %i.h = tail call noalias ptr @malloc(i64 noundef %i.g) #38 ; 2 uses
  %i.i = icmp eq ptr %i.h, null
  br i1 %i.i, label %.invoke, label %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i

.invoke:                                          ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %bb.a
  %i.j = tail call ptr @__cxa_allocate_exception(i64 8) #6 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.j, align 8, !tbaa !249
  invoke void @__cxa_throw(ptr nonnull %i.j, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
          to label %.cont unwind label %bb.i

.cont:                                            ; preds = %.invoke
  unreachable

_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i: ; preds = %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit
  %.0.i.i.i.i.i = phi ptr [ null, %_ZN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEC2ERKS1_.exit ], [ %i.h, %_ZN5Eigen8internal23check_size_for_overflowIiEEvm.exit.i.i.i.i.i ] ; 2 uses
  store ptr %.0.i.i.i.i.i, ptr %i.a, align 8, !tbaa !314
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i64 %i.d, ptr %i.k, align 8, !tbaa !315
  %i.l = load i64, ptr %i.c, align 8, !tbaa !315  ; 2 uses
  %i.m = icmp eq i64 %i.l, 0
  br i1 %i.m, label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit, label %bb.b

bb.b:                                             ; preds = %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i
  %.idx.i.i.i.i = shl nsw i64 %i.l, 2
  %i.n = load ptr, ptr %i.b, align 8, !tbaa !314
  tail call void @llvm.memcpy.p0.p0.i64(ptr align 4 %.0.i.i.i.i.i, ptr align 4 %i.n, i64 %.idx.i.i.i.i, i1 false)
  br label %_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit

_ZN5Eigen17PermutationMatrixILin1ELin1EiEC2ERKS1_.exit: ; preds = %bb.b, %_ZN5Eigen8internal28conditional_aligned_new_autoIiLb1EEEPT_m.exit.i.i.i.i
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.q = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !315  ; 4 uses
end_hunk_1
