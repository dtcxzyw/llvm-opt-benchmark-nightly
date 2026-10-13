Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/eigs?download=true
inline.NumInlined: 14241
inline.NumDeleted: 6065
loop-unroll.NumCompletelyUnrolled: 5
loop-unroll.NumRuntimeUnrolled: 188
loop-unroll.NumUnrolled: 193
begin_hunk_0_@_ZNK7Spectra17UpperHessenbergQRIdE11matrix_QtHQERN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEE:bb.a
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
  br i1 %niter.ncmp.3, label %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit.loopexit.unr-lcssa, label %.lr.ph.i.i.i.i.i.i34, !llvm.loop !1551

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
  br i1 %epil.iter.cmp.not, label %_ZN5Eigen9ArrayBaseINS_12ArrayWrapperINS_8DiagonalINS_6MatrixIdLin1ELin1ELi0ELin1ELin1EEELi0EEEEEEpLERKd.exit, label %.lr.ph.i.i.i.i.i.i34.epil, !llvm.loop !1552

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
  %wide.load63 = load <2 x double>, ptr %i.eb, align 8, !tbaa !56, !alias.scope !1560, !noalias !1561 ; 2 uses
  %i.ec = getelementptr inbounds nuw [8 x i8], ptr %i.dy, i64 %index62 ; 2 uses
  %wide.load64 = load <2 x double>, ptr %i.ec, align 8, !tbaa !56, !alias.scope !1561 ; 2 uses
  %i.ed = fneg <2 x double> %wide.load64
  %i.ee = fmul <2 x double> %broadcast.splat60, %i.ed
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat, <2 x double> %wide.load63, <2 x double> %i.ee)
  store <2 x double> %i.ef, ptr %i.eb, align 8, !tbaa !56, !alias.scope !1560, !noalias !1561
  %i.eg = fmul <2 x double> %broadcast.splat, %wide.load64
  %i.eh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %broadcast.splat60, <2 x double> %wide.load63, <2 x double> %i.eg)
  store <2 x double> %i.eh, ptr %i.ec, align 8, !tbaa !56, !alias.scope !1561
  %index.next65 = add nuw i64 %index62, 2         ; 2 uses
  %i.ei = icmp eq i64 %index.next65, %n.vec58
  br i1 %i.ei, label %middle.block66, label %vector.body61, !llvm.loop !1556

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
  br i1 %exitcond44.not, label %._crit_edge, label %vector.memcheck54, !llvm.loop !1557

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
  %i.fb = add nuw nsw i64 %.041, 1                ; 2 uses
  %exitcond.not = icmp eq i64 %i.fb, %indvars.iv
  br i1 %exitcond.not, label %.loopexit, label %scalar.ph56, !llvm.loop !1558
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
  %5 = fneg double %i.o
  %6 = extractelement <2 x double> %i.aa, i64 0
  %i.ab = fneg double %6
  %i.ac = shufflevector <2 x double> %i.aa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ac, <2 x double> <double -3.750000e-01, double -1.250000e-01>, <2 x double> <double 5.000000e-01, double 2.500000e-01>) ; 2 uses
  %i.ae = insertelement <2 x double> %i.ad, double %i.o, i64 1
  %i.af = fmul <2 x double> %i.aa, %i.ae          ; 2 uses
  %i.ag = extractelement <2 x double> %i.af, i64 0
  %i.ah = fsub double 1.000000e+00, %i.ag
  %i.ai = extractelement <2 x double> %i.ad, i64 1
  %i.aj = tail call double @llvm.fmuladd.f64(double %i.ab, double %i.ai, double 1.000000e+00)
  %i.ak = insertelement <2 x double> %i.y, double %i.d, i64 1
  %i.al = insertelement <2 x double> poison, double %5, i64 0
  %i.am = insertelement <2 x double> %i.al, double %i.aj, i64 1
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.am, <2 x double> %i.af, <2 x double> %i.ak)
  br label %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit

_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit: ; preds = %bb.g, %bb.h
  %.sink48 = phi double [ %i.ah, %bb.h ], [ %i.r, %bb.g ]
  %i.ao = phi <2 x double> [ %i.an, %bb.h ], [ %i.w, %bb.g ] ; 2 uses
  store double %.sink48, ptr %3, align 8, !tbaa !56
  %i.ap = extractelement <2 x double> %i.ao, i64 0
  store double %i.ap, ptr %4, align 8, !tbaa !56
  %i.aq = extractelement <2 x double> %i.ao, i64 1
  br label %bb.l

bb.i:                                             ; preds = %bb.e
  %i.ar = fdiv double %i.d, %i.k                  ; 9 uses
  %i.as = fcmp ult double %i.ar, f0x3EE999999999999A
  br i1 %i.as, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.at = tail call double @llvm.fmuladd.f64(double %i.ar, double %i.ar, double 1.000000e+00)
  %sqrt.i33 = tail call double @llvm.sqrt.f64(double %i.at) ; 2 uses
  %i.au = fdiv double 1.000000e+00, %sqrt.i33     ; 2 uses
  %i.av = fmul double %i.ar, %i.au
  %i.aw = fmul double %i.k, %sqrt.i33
  br label %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35

bb.k:                                             ; preds = %bb.i
  %i.ax = fmul double %i.ar, %i.ar                ; 4 uses
  %i.ay = tail call double @llvm.fmuladd.f64(double %i.ax, double -3.750000e-01, double 5.000000e-01)
  %i.az = fmul double %i.ax, %i.ay                ; 2 uses
  %i.ba = fsub double 1.000000e+00, %i.az
  %i.bb = fneg double %i.ar
  %i.bc = tail call double @llvm.fmuladd.f64(double %i.bb, double %i.az, double %i.ar)
  %i.bd = fmul double %i.d, 5.000000e-01
  %i.be = fmul double %i.bd, %i.ar
  %i.bf = tail call double @llvm.fmuladd.f64(double %i.ax, double -1.250000e-01, double 2.500000e-01)
  %i.bg = fneg double %i.ax
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.bg, double %i.bf, double 1.000000e+00)
  %i.bi = tail call double @llvm.fmuladd.f64(double %i.be, double %i.bh, double %i.k)
  br label %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35

_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35: ; preds = %bb.j, %bb.k
  %.sink50 = phi double [ %i.ba, %bb.k ], [ %i.au, %bb.j ]
  %.sink49 = phi double [ %i.bc, %bb.k ], [ %i.av, %bb.j ]
  %storemerge.i34 = phi double [ %i.bi, %bb.k ], [ %i.aw, %bb.j ]
  store double %.sink50, ptr %4, align 8, !tbaa !56
  store double %.sink49, ptr %3, align 8, !tbaa !56
  br label %bb.l

bb.l:                                             ; preds = %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35, %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit
  %storemerge.i34.sink = phi double [ %storemerge.i34, %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit35 ], [ %i.aq, %_ZN7Spectra17UpperHessenbergQRIdE14stable_scalingERKdS3_RdS4_S4_.exit ]
  store double %storemerge.i34.sink, ptr %2, align 8, !tbaa !56
  %i.bj = load double, ptr %3, align 8, !tbaa !56
  %i.bk = fmul double %i.c, %i.bj
  store double %i.bk, ptr %3, align 8, !tbaa !56
  %i.bl = fneg double %i.j
  %i.bm = load double, ptr %4, align 8, !tbaa !56
  %i.bn = fmul double %i.bm, %i.bl
  store double %i.bn, ptr %4, align 8, !tbaa !56
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

.lr.ph50.i:                                       ; preds = %.lr.ph50.i.preheader, %._crit_edge.i
  %.03148.i = phi i64 [ %i.bf, %._crit_edge.i ], [ 0, %.lr.ph50.i.preheader ] ; 8 uses
  %.03247.i = phi i64 [ %.sroa.speculated.i, %._crit_edge.i ], [ 0, %.lr.ph50.i.preheader ] ; 6 uses
  %i.ab = mul i64 %i.aa, %.03148.i
  %i.ac = sub i64 %i.s, %.03247.i                 ; 2 uses
  %i.ad = and i64 %i.ac, -2                       ; 2 uses
  %i.ae = add nsw i64 %i.ad, %.03247.i            ; 5 uses
  %i.af = icmp sgt i64 %.03247.i, 0
  br i1 %i.af, label %.preheader39.loopexit.i, label %.preheader39.i

.preheader39.loopexit.i:                          ; preds = %.lr.ph50.i
  %i.ag = mul nsw i64 %.03148.i, %i.d
  %i.ah = getelementptr [8 x i8], ptr %i.a, i64 %i.ag
  %i.ai = mul nsw i64 %.03148.i, %i.s
  %invariant.gep.i = getelementptr [8 x i8], ptr %i.u, i64 %i.ai
  %i.aj = load double, ptr %i.ah, align 8, !tbaa !56
  store double %i.aj, ptr %invariant.gep.i, align 8, !tbaa !56
  br label %.preheader39.i

.preheader39.i:                                   ; preds = %.preheader39.loopexit.i, %.lr.ph50.i
  %i.ak = icmp sgt i64 %i.ac, 1
  br i1 %i.ak, label %.lr.ph42.i.preheader, label %.preheader.i

.lr.ph42.i.preheader:                             ; preds = %.preheader39.i
  %i.al = mul nsw i64 %.03148.i, %i.s
  %invariant.gep = getelementptr [8 x i8], ptr %i.u, i64 %i.al
  %i.am = mul nsw i64 %.03148.i, %i.d
  %invariant.gep28 = getelementptr [8 x i8], ptr %i.a, i64 %i.am
  br label %.lr.ph42.i

.preheader.i:                                     ; preds = %.lr.ph42.i, %.preheader39.i
  %i.an = icmp slt i64 %i.ae, %i.s
  br i1 %i.an, label %.lr.ph44.i, label %._crit_edge.i

.lr.ph44.i:                                       ; preds = %.preheader.i
  %i.ao = mul nsw i64 %.03148.i, %i.s
  %invariant.gep45.i = getelementptr [8 x i8], ptr %i.u, i64 %i.ao ; 2 uses
  %i.ap = mul nsw i64 %.03148.i, %i.d
  %i.aq = getelementptr [8 x i8], ptr %i.a, i64 %i.ap ; 2 uses
  %i.ar = add i64 %.03247.i, %i.ad
  %i.as = sub i64 %i.s, %i.ar                     ; 3 uses
  %min.iters.check = icmp ult i64 %i.as, 4
  %.reass = add i64 %i.ab, %invariant.op
  %diff.check = icmp ult i64 %.reass, 31
  %or.cond = select i1 %min.iters.check, i1 true, i1 %diff.check
  br i1 %or.cond, label %scalar.ph.preheader, label %vector.ph

vector.ph:                                        ; preds = %.lr.ph44.i
  %n.vec = and i64 %i.as, -4                      ; 3 uses
  %i.at = add i64 %i.ae, %n.vec
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 2 uses
  %i.au = add i64 %i.ae, %index                   ; 2 uses
  %i.av = getelementptr [8 x i8], ptr %invariant.gep45.i, i64 %i.au ; 2 uses
  %i.aw = getelementptr [8 x i8], ptr %i.aq, i64 %i.au ; 2 uses
  %i.ax = getelementptr i8, ptr %i.aw, i64 16
  %wide.load = load <2 x double>, ptr %i.aw, align 8, !tbaa !56
  %wide.load38 = load <2 x double>, ptr %i.ax, align 8, !tbaa !56
  %i.ay = getelementptr i8, ptr %i.av, i64 16
  store <2 x double> %wide.load, ptr %i.av, align 8, !tbaa !56
  store <2 x double> %wide.load38, ptr %i.ay, align 8, !tbaa !56
  %index.next = add nuw i64 %index, 4             ; 2 uses
  %i.az = icmp eq i64 %index.next, %n.vec
  br i1 %i.az, label %middle.block, label %vector.body, !llvm.loop !1562

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.as, %n.vec
  br i1 %cmp.n, label %._crit_edge.i, label %scalar.ph.preheader

scalar.ph.preheader:                              ; preds = %.lr.ph44.i, %middle.block
  %.043.i.ph = phi i64 [ %i.ae, %.lr.ph44.i ], [ %i.at, %middle.block ]
  br label %scalar.ph

end_hunk_0
