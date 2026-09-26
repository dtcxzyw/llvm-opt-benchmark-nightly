Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 189
loop-unroll.NumUnrolled: 194
begin_hunk_0_@_ZNK7Spectra17UpperHessenbergQRIdE11matrix_QtHQERN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE:bb.a
  %i.bl = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bj
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !56
  store double %i.bm, ptr %i.bk, align 8, !tbaa !56
  %i.bn = add nsw i64 %.05.i.i.i.i.i.i, 3         ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %i.af, i64 %i.bn
  %i.bp = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.bn
  %i.bq = load double, ptr %i.bp, align 8, !tbaa !56
  store double %i.bq, ptr %i.bo, align 8, !tbaa !56
  %i.br = add nsw i64 %.05.i.i.i.i.i.i, 4         ; 2 uses
  %exitcond.not.i.i.i.i.i.i.3 = icmp eq i64 %i.br, %i.ah
  br i1 %exitcond.not.i.i.i.i.i.i.3, label %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !1549

.lr.ph.i.i.i.i.i:                                 ; preds = %bb.j, %.lr.ph.i.i.i.i.i
  %.011.i.i.i.i.i = phi i64 [ %i.bv, %.lr.ph.i.i.i.i.i ], [ 0, %bb.j ] ; 3 uses
  %i.bs = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %.011.i.i.i.i.i
  %i.bt = getelementptr inbounds nuw [8 x i8], ptr %i.n, i64 %.011.i.i.i.i.i
  %i.bu = load <2 x double>, ptr %i.bt, align 16, !tbaa !131
  store <2 x double> %i.bu, ptr %i.bs, align 16, !tbaa !131
  %i.bv = add nuw nsw i64 %.011.i.i.i.i.i, 2      ; 2 uses
  %i.bw = icmp slt i64 %i.bv, %i.aj
  br i1 %i.bw, label %.lr.ph.i.i.i.i.i, label %._crit_edge.i.i.i.i.i, !llvm.loop !0

_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit: ; preds = %.lr.ph.i.i.i.i.i.i.prol.loopexit, %.lr.ph.i.i.i.i.i.i, %middle.block, %._crit_edge.i.i.i.i.i
  %i.bx = load i64, ptr %i.f, align 8, !tbaa !307 ; 4 uses
  %i.by = icmp sgt i64 %i.bx, 1
  %.pre = load i64, ptr %i.t, align 8, !tbaa !125 ; 8 uses
  %.pre45 = load ptr, ptr %1, align 8, !tbaa !124 ; 8 uses
  br i1 %i.by, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit
  %i.bz = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !119
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.cc = load ptr, ptr %i.cb, align 8, !tbaa !119
  %i.cd = add nsw i64 %i.bx, -2
  %i.ce = shl i64 %.pre, 3
  %i.cf = add i64 %i.ce, 8
  %i.cg = shl nuw nsw i64 %i.bx, 3
  %i.ch = getelementptr i8, ptr %.pre45, i64 %i.cg
  %i.ci = getelementptr i8, ptr %i.ch, i64 16
  br label %vector.memcheck54

._crit_edge:                                      ; preds = %.loopexit, %_ZN5Eigen7NoAliasINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_10MatrixBaseEEaSIS2_EERS2_RKNS3_IT_EE.exit
  %i.cj = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.ck = load i64, ptr %i.v, align 8, !tbaa !126
  %i.cl = load double, ptr %i.cj, align 8, !tbaa !56, !noalias !1560 ; 5 uses
  %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i = tail call noundef i64 @llvm.smin.i64(i64 %i.ck, i64 %.pre) ; 4 uses
  %i.cm = icmp sgt i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 0
  br i1 %i.cm, label %.lr.ph.i.i.i.i.i.i34.preheader, label %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit

.lr.ph.i.i.i.i.i.i34.preheader:                   ; preds = %._crit_edge
  %xtraiter70 = and i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 3 ; 3 uses
  %i.cn = icmp ult i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 4
  br i1 %i.cn, label %.lr.ph.i.i.i.i.i.i34.epil.preheader, label %.lr.ph.i.i.i.i.i.i34.preheader.new

.lr.ph.i.i.i.i.i.i34.preheader.new:               ; preds = %.lr.ph.i.i.i.i.i.i34.preheader
  %unroll_iter = and i64 %.sroa.speculated.i.i.i.i.i.i.i.i.i.i.i, 9223372036854775804
  br label %.lr.ph.i.i.i.i.i.i34

.lr.ph.i.i.i.i.i.i34:                             ; preds = %.lr.ph.i.i.i.i.i.i34, %.lr.ph.i.i.i.i.i.i34.preheader.new
  %.05.i.i.i.i.i.i35 = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i34.preheader.new ], [ %i.dl, %.lr.ph.i.i.i.i.i.i34 ] ; 6 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i34.preheader.new ], [ %niter.next.3, %.lr.ph.i.i.i.i.i.i34 ]
  %i.co = mul nuw nsw i64 %.05.i.i.i.i.i.i35, %.pre
  %i.cp = getelementptr [8 x i8], ptr %.pre45, i64 %.05.i.i.i.i.i.i35
  %i.cq = getelementptr [8 x i8], ptr %i.cp, i64 %i.co ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !56
  %i.cs = fadd double %i.cl, %i.cr
  store double %i.cs, ptr %i.cq, align 8, !tbaa !56
  %i.ct = or disjoint i64 %.05.i.i.i.i.i.i35, 1   ; 2 uses
  %i.cu = mul nuw nsw i64 %i.ct, %.pre
  %i.cv = getelementptr [8 x i8], ptr %.pre45, i64 %i.ct
  %i.cw = getelementptr [8 x i8], ptr %i.cv, i64 %i.cu ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !56
  %i.cy = fadd double %i.cl, %i.cx
  store double %i.cy, ptr %i.cw, align 8, !tbaa !56
  %i.cz = or disjoint i64 %.05.i.i.i.i.i.i35, 2   ; 2 uses
  %i.da = mul nuw nsw i64 %i.cz, %.pre
  %i.db = getelementptr [8 x i8], ptr %.pre45, i64 %i.cz
  %i.dc = getelementptr [8 x i8], ptr %i.db, i64 %i.da ; 2 uses
  %i.dd = load double, ptr %i.dc, align 8, !tbaa !56
  %i.de = fadd double %i.cl, %i.dd
  store double %i.de, ptr %i.dc, align 8, !tbaa !56
  %i.df = or disjoint i64 %.05.i.i.i.i.i.i35, 3   ; 2 uses
  %i.dg = mul nuw nsw i64 %i.df, %.pre
  %i.dh = getelementptr [8 x i8], ptr %.pre45, i64 %i.df
  %i.di = getelementptr [8 x i8], ptr %i.dh, i64 %i.dg ; 2 uses
  %i.dj = load double, ptr %i.di, align 8, !tbaa !56
  %i.dk = fadd double %i.cl, %i.dj
  store double %i.dk, ptr %i.di, align 8, !tbaa !56
  %i.dl = add nuw nsw i64 %.05.i.i.i.i.i.i35, 4   ; 2 uses
  %niter.next.3 = add i64 %niter, 4               ; 2 uses
  %niter.ncmp.3 = icmp eq i64 %niter.next.3, %unroll_iter
  br i1 %niter.ncmp.3, label %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i34, !llvm.loop !1552

_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit.loopexit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i.i.i34
  %lcmp.mod71.not = icmp eq i64 %xtraiter70, 0
  br i1 %lcmp.mod71.not, label %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit, label %.lr.ph.i.i.i.i.i.i34.epil.preheader

.lr.ph.i.i.i.i.i.i34.epil.preheader:              ; preds = %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i34.preheader
  %.05.i.i.i.i.i.i35.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.i.i34.preheader ], [ %i.dl, %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit.loopexit.unr-lcssa ]
  %lcmp.mod72 = icmp ne i64 %xtraiter70, 0
  tail call void @llvm.assume(i1 %lcmp.mod72)
  br label %.lr.ph.i.i.i.i.i.i34.epil

.lr.ph.i.i.i.i.i.i34.epil:                        ; preds = %.lr.ph.i.i.i.i.i.i34.epil, %.lr.ph.i.i.i.i.i.i34.epil.preheader
  %.05.i.i.i.i.i.i35.epil = phi i64 [ %i.dr, %.lr.ph.i.i.i.i.i.i34.epil ], [ %.05.i.i.i.i.i.i35.epil.init, %.lr.ph.i.i.i.i.i.i34.epil.preheader ] ; 3 uses
  %epil.iter = phi i64 [ %epil.iter.next, %.lr.ph.i.i.i.i.i.i34.epil ], [ 0, %.lr.ph.i.i.i.i.i.i34.epil.preheader ]
  %i.dm = mul nuw nsw i64 %.05.i.i.i.i.i.i35.epil, %.pre
  %i.dn = getelementptr [8 x i8], ptr %.pre45, i64 %.05.i.i.i.i.i.i35.epil
  %i.do = getelementptr [8 x i8], ptr %i.dn, i64 %i.dm ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !56
  %i.dq = fadd double %i.cl, %i.dp
  store double %i.dq, ptr %i.do, align 8, !tbaa !56
  %i.dr = add nuw nsw i64 %.05.i.i.i.i.i.i35.epil, 1
  %epil.iter.next = add i64 %epil.iter, 1         ; 2 uses
  %epil.iter.cmp.not = icmp eq i64 %epil.iter.next, %xtraiter70
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit, label %.lr.ph.i.i.i.i.i.i34.epil, !llvm.loop !1553

_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit: ; preds = %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit.loopexit.unr-lcssa, %.lr.ph.i.i.i.i.i.i34.epil, %._crit_edge
  ret void

vector.memcheck54:                                ; preds = %.lr.ph, %.loopexit
  %indvars.iv = phi i64 [ 2, %.lr.ph ], [ %indvars.iv.next, %.loopexit ] ; 4 uses
  %.03342 = phi i64 [ 0, %.lr.ph ], [ %i.en, %.loopexit ] ; 6 uses
  %i.ds = getelementptr inbounds nuw [8 x i8], ptr %i.ca, i64 %.03342
  %i.dt = load double, ptr %i.ds, align 8, !tbaa !56 ; 3 uses
  %i.du = getelementptr inbounds nuw [8 x i8], ptr %i.cc, i64 %.03342
  %i.dv = load double, ptr %i.du, align 8, !tbaa !56 ; 3 uses
  %i.dw = mul nsw i64 %.pre, %.03342
  %i.dx = getelementptr [8 x i8], ptr %.pre45, i64 %i.dw ; 4 uses
  %i.dy = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %i.bx ; 3 uses
  %i.dz = mul i64 %i.cf, %.03342                  ; 2 uses
  %scevgep55 = getelementptr i8, ptr %i.ci, i64 %i.dz
  %i.ea = getelementptr i8, ptr %.pre45, i64 %i.dz
  %scevgep = getelementptr i8, ptr %i.ea, i64 16
  %bound0 = icmp ult ptr %i.dx, %scevgep55
  %bound1 = icmp ult ptr %i.dy, %scevgep
  %found.conflict = and i1 %bound0, %bound1
  br i1 %found.conflict, label %scalar.ph56.preheader, label %vector.ph57

vector.ph57:                                      ; preds = %vector.memcheck54
  %n.vec58 = and i64 %indvars.iv, -2              ; 3 uses
  %broadcast.splatinsert = insertelement <2 x double> poison, double %i.dt, i64 0
  %broadcast.splat = shufflevector <2 x double> %broadcast.splatinsert, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %broadcast.splatinsert59 = insertelement <2 x double> poison, double %i.dv, i64 0
  %broadcast.splat60 = shufflevector <2 x double> %broadcast.splatinsert59, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  br label %vector.body61

vector.body61:                                    ; preds = %vector.body61, %vector.ph57
  %index62 = phi i64 [ 0, %vector.ph57 ], [ %index.next65, %vector.body61 ] ; 3 uses
  %i.eb = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %index62 ; 2 uses
  %wide.load63 = load <2 x double>, ptr %i.eb, align 8, !tbaa !56, !alias.scope !1561, !noalias !1562 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index62 ; 2 uses
  %wide.load64 = load <2 x double>, ptr %i.ec, align 8, !tbaa !56, !alias.scope !1562 ; 2 uses
  %i.ed = fneg <2 x double> %wide.load64
  %i.ee = fmul <2 x double> %broadcast.splat60, %i.ed
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load63, <2 x double> %i.ee)
  store <2 x double> %i.ef, ptr %i.eb, align 8, !tbaa !56, !alias.scope !1561, !noalias !1562
  %i.eg = fmul <2 x double> %broadcast.splat, %wide.load64
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat60, <2 x double> %wide.load63, <2 x double> %i.eg)
  store <2 x double> %i.eh, ptr %i.ec, align 8, !tbaa !56, !alias.scope !1562
  %index.next65 = add nuw i64 %index62, 2         ; 2 uses
  %i.ei = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.ei, label %middle.block66, label %vector.body61, !llvm.loop !1557

middle.block66:                                   ; preds = %vector.body61
  %cmp.n67 = icmp eq i64 %indvars.iv, %n.vec58
  br i1 %cmp.n67, label %.loopexit, label %scalar.ph56.preheader

scalar.ph56.preheader:                            ; preds = %vector.memcheck54, %middle.block66
  %.041.ph = phi i64 [ 0, %vector.memcheck54 ], [ %n.vec58, %middle.block66 ]
  %i.ej = insertelement <2 x double> poison, double %i.dt, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.dv, i64 1
  %i.el = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.dt, i64 1
  br label %scalar.ph56

.loopexit:                                        ; preds = %scalar.ph56, %middle.block66
  %i.en = add nuw nsw i64 %.03342, 1
  %indvars.iv.next = add nuw i64 %indvars.iv, 1
  %exitcond44.not = icmp eq i64 %.03342, %i.cd
  br i1 %exitcond44.not, label %._crit_edge, label %vector.memcheck54, !llvm.loop !1558

scalar.ph56:                                      ; preds = %scalar.ph56.preheader, %scalar.ph56
  %.041 = phi i64 [ %i.fb, %scalar.ph56 ], [ %.041.ph, %scalar.ph56.preheader ] ; 3 uses
  %i.eo = getelementptr inbounds nuw [8 x i8], ptr %i.dx, i64 %.041 ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !56
  %i.eq = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %.041 ; 2 uses
  %i.er = load double, ptr %i.eq, align 8, !tbaa !56 ; 2 uses
  %i.es = fneg double %i.er
  %i.et = insertelement <2 x double> poison, double %i.er, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.es, i64 1
  %i.ev = fmul <2 x double> %i.ek, %i.eu
  %i.ew = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.ex = shufflevector <2 x double> %i.ew, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ey = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.em, <2 x double> %i.ex, <2 x double> %i.ev) ; 2 uses
  %i.ez = extractelement <2 x double> %i.ey, i64 1
  store double %i.ez, ptr %i.eo, align 8, !tbaa !56
  %i.fa = extractelement <2 x double> %i.ey, i64 0
  store double %i.fa, ptr %i.eq, align 8, !tbaa !56
  %i.fb = add nuw i64 %.041, 1                    ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %indvars.iv
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph56, !llvm.loop !1559
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN7Spectra17UpperHessenbergQRIdE16compute_rotationERKdS3_RdS4_S4_(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load double, ptr %0, align 8, !tbaa !56  ; 4 uses
  %i.b = fcmp ogt double %i.a, 0.000000e+00
  %i.c = select i1 %i.b, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.d = tail call noundef double @llvm.fabs.f64(double %i.a) ; 7 uses
  %i.e = load double, ptr %1, align 8, !tbaa !56  ; 3 uses
  %i.f = fcmp oeq double %i.e, 0.000000e+00
  br i1 %i.f, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = fcmp oeq double %i.a, 0.000000e+00
  %i.h = select i1 %i.g, double 1.000000e+00, double %i.c
  store double %i.h, ptr %3, align 8, !tbaa !56
  store double 0.000000e+00, ptr %4, align 8, !tbaa !56
  store double %i.d, ptr %2, align 8, !tbaa !56
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.i = fcmp ogt double %i.e, 0.000000e+00
  %i.j = select i1 %i.i, double 1.000000e+00, double -1.000000e+00 ; 2 uses
  %i.k = tail call noundef double @llvm.fabs.f64(double %i.e) ; 7 uses
  %i.l = fcmp oeq double %i.a, 0.000000e+00
  br i1 %i.l, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  store double 0.000000e+00, ptr %3, align 8, !tbaa !56
  %i.m = fneg double %i.j
  store double %i.m, ptr %4, align 8, !tbaa !56
  store double %i.k, ptr %2, align 8, !tbaa !56
  br label %bb.m

bb.e:                                             ; preds = %bb.c
  %i.n = fcmp ogt double %i.d, %i.k
  br i1 %i.n, label %bb.f, label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.o = fdiv double %i.k, %i.d                   ; 7 uses
  %i.p = fcmp ult double %i.o, f0x3EE999999999999A
  br i1 %i.p, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.q = tail call double @llvm.fmuladd.f64(double %i.o, double %i.o, double 1.000000e+00)
  %sqrt.i = tail call double @llvm.sqrt.f64(double %i.q) ; 2 uses
  %i.r = fdiv double 1.000000e+00, %sqrt.i        ; 2 uses
  %i.s = insertelement <2 x double> poison, double %i.o, i64 0
  %i.t = insertelement <2 x double> %i.s, double %i.d, i64 1
  %i.u = insertelement <2 x double> poison, double %i.r, i64 0
  %i.v = insertelement <2 x double> %i.u, double %sqrt.i, i64 1
  %i.w = fmul <2 x double> %i.t, %i.v
  br label %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit

bb.h:                                             ; preds = %bb.f
  %i.x = insertelement <2 x double> poison, double %i.o, i64 0
  %i.y = insertelement <2 x double> %i.x, double %i.k, i64 1 ; 3 uses
  %i.z = insertelement <2 x double> %i.y, double 5.000000e-01, i64 1
  %i.aa = fmul <2 x double> %i.y, %i.z            ; 3 uses
  %i.ab = fneg double %i.o
  %i.ac = extractelement <2 x double> %i.aa, i64 0
  %i.ad = fneg double %i.ac
  %i.ae = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.af = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ae, <2 x double> <double -3.750000e-01, double -1.250000e-01>, <2 x double> <double 5.000000e-01, double 2.500000e-01>) ; 2 uses
  %i.ag = insertelement <2 x double> %i.af, double %i.o, i64 1
  %i.ah = fmul <2 x double> %i.aa, %i.ag          ; 2 uses
  %i.ai = extractelement <2 x double> %i.ah, i64 0
  %i.aj = fsub double 1.000000e+00, %i.ai
  %i.ak = extractelement <2 x double> %i.af, i64 1
  %i.al = tail call double @llvm.fmuladd.f64(double %i.ad, double %i.ak, double 1.000000e+00)
  %i.am = insertelement <2 x double> %i.y, double %i.d, i64 1
  %i.an = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.ao = insertelement <2 x double> %i.an, double %i.al, i64 1
  %i.ap = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ah, <2 x double> %i.am)
  br label %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit

_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit: ; preds = %bb.g, %bb.h
  %.sink48 = phi double [ %i.aj, %bb.h ], [ %i.r, %bb.g ]
  %i.aq = phi <2 x double> [ %i.ap, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  store double %.sink48, ptr %3, align 8, !tbaa !56
  %i.ar = extractelement <2 x double> %i.aq, i64 0
  store double %i.ar, ptr %4, align 8, !tbaa !56
  %i.as = extractelement <2 x double> %i.aq, i64 1
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.at = fdiv double %i.d, %i.k                  ; 9 uses
  %i.au = fcmp ult double %i.at, f0x3EE999999999999A
  br i1 %i.au, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.av = tail call double @llvm.fmuladd.f64(double %i.at, double %i.at, double 1.000000e+00)
  %sqrt.i33 = tail call double @llvm.sqrt.f64(double %i.av) ; 2 uses
  %i.aw = fdiv double 1.000000e+00, %sqrt.i33     ; 2 uses
  %i.ax = fmul double %i.at, %i.aw
  %i.ay = fmul double %i.k, %sqrt.i33
  br label %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35

bb.k:                                             ; preds = %bb.i
  %i.az = fmul double %i.at, %i.at                ; 4 uses
  %i.ba = tail call double @llvm.fmuladd.f64(double %i.az, double -3.750000e-01, double 5.000000e-01)
  %i.bb = fmul double %i.az, %i.ba                ; 2 uses
  %i.bc = fsub double 1.000000e+00, %i.bb
  %i.bd = fneg double %i.at
  %i.be = tail call double @llvm.fmuladd.f64(double %i.bd, double %i.bb, double %i.at)
  %i.bf = fmul double %i.d, 5.000000e-01
  %i.bg = fmul double %i.bf, %i.at
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.az, double -1.250000e-01, double 2.500000e-01)
  %i.bi = fneg double %i.az
  %i.bj = tail call double @llvm.fmuladd.f64(double %i.bi, double %i.bh, double 1.000000e+00)
  %i.bk = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bj, double %i.k)
  br label %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35

_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35: ; preds = %bb.j, %bb.k
  %.sink50 = phi double [ %i.bc, %bb.k ], [ %i.aw, %bb.j ]
  %.sink49 = phi double [ %i.be, %bb.k ], [ %i.ax, %bb.j ]
  %storemerge.i34 = phi double [ %i.bk, %bb.k ], [ %i.ay, %bb.j ]
  store double %.sink50, ptr %4, align 8, !tbaa !56
  store double %.sink49, ptr %3, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35, %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit
  %storemerge.i34.sink = phi double [ %storemerge.i34, %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35 ], [ %i.as, %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit ]
  store double %storemerge.i34.sink, ptr %2, align 8, !tbaa !56
  %i.bl = load double, ptr %3, align 8, !tbaa !56
  %i.bm = fmul double %i.c, %i.bl
  store double %i.bm, ptr %3, align 8, !tbaa !56
  %i.bn = fneg double %i.j
  %i.bo = load double, ptr %4, align 8, !tbaa !56
  %i.bp = fmul double %i.bo, %i.bn
  store double %i.bp, ptr %4, align 8, !tbaa !56
  br label %bb.m

bb.m:                                             ; preds = %bb.d, %bb.l, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen8internal26call_dense_assignment_loopINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS_3RefIKS3_Li0ENS_11OuterStrideILin1EEEEENS0_9assign_opIddEEEEvRT_RKT0_RKT1_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(64) %1, ptr noundef nonnull align 1 dereferenceable(1) %2) local_unnamed_addr #25 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !296    ; 4 uses
  %i.b = ptrtoaddr ptr %i.a to i64
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.d = load i64, ptr %i.c, align 8, !tbaa !139  ; 4 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !139  ; 6 uses
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.h = load i64, ptr %i.g, align 8, !tbaa !139  ; 6 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.j = load i64, ptr %i.i, align 8, !tbaa !125
  %.not.i = icmp eq i64 %i.j, %i.f
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.l = load i64, ptr %i.k, align 8
  %.not8.i = icmp eq i64 %i.l, %i.h
  %or.cond.i = select i1 %.not.i, i1 %.not8.i, i1 false
  br i1 %or.cond.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.m = icmp eq i64 %i.f, 0
  %i.n = icmp eq i64 %i.h, 0
  %or.cond.i.i.i = or i1 %i.m, %i.n
  br i1 %or.cond.i.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = sdiv i64 9223372036854775807, %i.h
  %i.p = icmp sgt i64 %i.f, %i.o
  br i1 %i.p, label %.noexc, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i

.noexc:                                           ; preds = %bb.c
  %i.q = tail call ptr @__cxa_allocate_exception(i64 8) #33 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.q, align 8, !tbaa !123
  tail call void @__cxa_throw(ptr nonnull %i.q, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #34
  unreachable

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i: ; preds = %bb.c, %bb.b
  %i.r = mul nsw i64 %i.h, %i.f
  tail call void @_ZN5Eigen12DenseStorageIdLin1ELin1ELin1ELi0EE6resizeElll(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %i.r, i64 noundef %i.f, i64 noundef %i.h)
  %.pr = load i64, ptr %i.k, align 8, !tbaa !126
  %.pre = load i64, ptr %i.i, align 8, !tbaa !125
  br label %bb.d

bb.d:                                             ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i, %bb.a
  %i.s = phi i64 [ %.pre, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.f, %bb.a ] ; 10 uses
  %i.t = phi i64 [ %.pr, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEE6resizeEll.exit.i ], [ %i.h, %bb.a ] ; 2 uses
  %i.u = load ptr, ptr %0, align 8, !tbaa !124    ; 4 uses
  %i.v = and i64 %i.s, 1
  %i.w = icmp sgt i64 %i.t, 0
  br i1 %i.w, label %.lr.ph50.i.preheader, label %_ZN5Eigen8internal21dense_assignment_loopINS0_31generic_dense_assignment_kernelINS0_9evaluatorINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEEEENS3_INS_3RefIKS5_Li0ENS_11OuterStrideILin1EEEEEEENS0_9assign_opIddEELi0EEELi4ELi0EE3runERSF_.exit

.lr.ph50.i.preheader:                             ; preds = %bb.d
  %i.x = ptrtoaddr ptr %i.u to i64
  %i.y = sub i64 %i.x, %i.b
  %i.z = sub i64 %i.s, %i.d
  %i.aa = shl i64 %i.z, 3
  %invariant.op = add i64 %i.y, -1
  br label %.lr.ph50.i

end_hunk_0
