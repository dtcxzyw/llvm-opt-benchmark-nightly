Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/libigl/original/direct_delta_mush?download=true
inline.NumInlined: 8135
inline.NumDeleted: 4104
loop-unroll.NumCompletelyUnrolled: 23
loop-unroll.NumRuntimeUnrolled: 44
loop-unroll.NumUnrolled: 67
begin_hunk_0_@_ZN5Eigen9JacobiSVDINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEELi2EE7computeERKS2_j:bb.a
  store double %i.ko, ptr %i.ki, align 8, !tbaa !56
  %i.kp = getelementptr inbounds nuw i8, ptr %i.kb, i64 16 ; 2 uses
  %i.kq = load double, ptr %i.mm, align 8, !tbaa !56 ; 2 uses
  %i.kr = load double, ptr %i.kp, align 8, !tbaa !56 ; 2 uses
  %i.ks = fmul double %i.kr, %i.gq
  %i.kt = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.kq, double %i.ks)
  store double %i.kt, ptr %i.mm, align 8, !tbaa !56
  %i.ku = fmul double %.sink.i.i.i.us, %i.kr
  %i.kv = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.kq, double %i.ku)
  store double %i.kv, ptr %i.kp, align 8, !tbaa !56
  %i.kw = load i8, ptr %i.dz, align 1, !tbaa !104, !range !96, !noundef !97
  %i.kx = trunc nuw i8 %i.kw to i1
  %i.ky = load i8, ptr %i.ea, align 2, !range !96
  %i.kz = trunc nuw i8 %i.ky to i1
  %i.la = select i1 %i.kx, i1 true, i1 %i.kz
  br i1 %i.la, label %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us: ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us
  %i.lb = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i.us ; 4 uses
  %i.lc = load double, ptr %i.mn, align 8, !tbaa !56 ; 2 uses
  %i.ld = load double, ptr %i.lb, align 8, !tbaa !56 ; 2 uses
  %i.le = fmul double %i.ld, %i.gq
  %i.lf = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lc, double %i.le)
  store double %i.lf, ptr %i.mn, align 8, !tbaa !56
  %i.lg = fmul double %.sink.i.i.i.us, %i.ld
  %i.lh = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.lc, double %i.lg)
  store double %i.lh, ptr %i.lb, align 8, !tbaa !56
  %i.li = getelementptr inbounds nuw i8, ptr %i.lb, i64 8 ; 2 uses
  %i.lj = load double, ptr %i.mo, align 8, !tbaa !56 ; 2 uses
  %i.lk = load double, ptr %i.li, align 8, !tbaa !56 ; 2 uses
  %i.ll = fmul double %i.lk, %i.gq
  %i.lm = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lj, double %i.ll)
  store double %i.lm, ptr %i.mo, align 8, !tbaa !56
  %i.ln = fmul double %.sink.i.i.i.us, %i.lk
  %i.lo = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.lj, double %i.ln)
  store double %i.lo, ptr %i.li, align 8, !tbaa !56
  %i.lp = getelementptr inbounds nuw i8, ptr %i.lb, i64 16 ; 2 uses
  %i.lq = load double, ptr %i.mp, align 8, !tbaa !56 ; 2 uses
  %i.lr = load double, ptr %i.lp, align 8, !tbaa !56 ; 2 uses
  %i.ls = fmul double %i.lr, %i.gq
  %i.lt = tail call double @llvm.fmuladd.f64(double %.sink.i.i.i.us, double %i.lq, double %i.ls)
  store double %i.lt, ptr %i.mp, align 8, !tbaa !56
  %i.lu = fmul double %.sink.i.i.i.us, %i.lr
  %i.lv = tail call double @llvm.fmuladd.f64(double %.sink20.i.i.i.us, double %i.lq, double %i.lu)
  store double %i.lv, ptr %i.lp, align 8, !tbaa !56
  br label %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us

_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us: ; preds = %_ZN5Eigen8internal36apply_rotation_in_the_plane_selectorIddLi3ELi0ELb0EE3runEPdlS3_lldd.exit.loopexit.i.i74.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit72.thread.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit.us
  %i.lw = load double, ptr %i.mf, align 8, !tbaa !56
  %i.lx = tail call noundef double @llvm.fabs.f64(double %i.lw) ; 2 uses
  %i.ly = load double, ptr %i.ev, align 8, !tbaa !56
  %i.lz = tail call noundef double @llvm.fabs.f64(double %i.ly) ; 2 uses
  %i.ma = fcmp olt double %i.lx, %i.lz
  %.sroa.speculated.us = select i1 %i.ma, double %i.lz, double %i.lx ; 2 uses
  %i.mb = fcmp olt double %.2187205.us, %.sroa.speculated.us
  %.sroa.speculated135.us = select i1 %i.mb, double %.sroa.speculated.us, double %.2187205.us
  br label %bb.s

bb.s:                                             ; preds = %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us, %bb.n
  %.3188.us = phi double [ %.sroa.speculated135.us, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2187205.us, %bb.n ] ; 2 uses
  %.3.us = phi i1 [ false, %_ZN5Eigen10MatrixBaseINS_6MatrixIdLi3ELi3ELi0ELi3ELi3EEEE15applyOnTheRightIdEEvllRKNS_14JacobiRotationIT_EE.exit77.us ], [ %.2206.us, %bb.n ] ; 3 uses
  %i.mc = add nuw nsw i64 %.056207.us, 1          ; 2 uses
  %exitcond.not = icmp eq i64 %i.mc, %.057210.us
  br i1 %exitcond.not, label %bb.t, label %bb.m, !llvm.loop !107

bb.t:                                             ; preds = %bb.s
  %i.md = add nuw nsw i64 %.057210.us, 1          ; 2 uses
  %exitcond219.not = icmp eq i64 %i.md, %i.dv     ; 3 uses
  %brmerge.not = select i1 %exitcond219.not, i1 %.3.us, i1 false
  %.mux = select i1 %exitcond219.not, i64 1, i64 %i.md
  %.3.us.mux = select i1 %exitcond219.not, i1 true, i1 %.3.us
  br i1 %brmerge.not, label %.preheader, label %.preheader201.us, !llvm.loop !108

.preheader201.us:                                 ; preds = %bb.t, %.preheader202.us.preheader
  %.057210.us = phi i64 [ %.mux, %bb.t ], [ 1, %.preheader202.us.preheader ] ; 4 uses
  %.1209.us = phi i1 [ %.3.us.mux, %bb.t ], [ true, %.preheader202.us.preheader ]
  %.1186208.us = phi double [ %.3188.us, %bb.t ], [ %i.ei, %.preheader202.us.preheader ]
  %i.me = getelementptr [8 x i8], ptr %i.dt, i64 %.057210.us ; 6 uses
  %.idx.i64.us = mul i64 %.057210.us, 24          ; 5 uses
  %invariant.gep.us = getelementptr i8, ptr %i.dt, i64 %.idx.i64.us ; 5 uses
  %i.mf = getelementptr i8, ptr %i.me, i64 %.idx.i64.us ; 2 uses
  %i.mg = getelementptr inbounds nuw i8, ptr %i.me, i64 24 ; 2 uses
  %i.mh = getelementptr inbounds nuw i8, ptr %i.me, i64 48 ; 2 uses
  %i.mi = getelementptr inbounds i8, ptr %0, i64 %.idx.i64.us ; 4 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %i.mi, i64 8 ; 2 uses
  %i.mk = getelementptr inbounds nuw i8, ptr %i.mi, i64 16 ; 2 uses
  %i.ml = getelementptr inbounds nuw i8, ptr %invariant.gep.us, i64 8 ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %invariant.gep.us, i64 16 ; 2 uses
  %i.mn = getelementptr inbounds i8, ptr %i.eb, i64 %.idx.i64.us ; 4 uses
  %i.mo = getelementptr inbounds nuw i8, ptr %i.mn, i64 8 ; 2 uses
  %i.mp = getelementptr inbounds nuw i8, ptr %i.mn, i64 16 ; 2 uses
  %invariant.gep = getelementptr i8, ptr %i.dt, i64 %.idx.i64.us
  br label %bb.m

.preheader:                                       ; preds = %bb.t, %bb.l
  %i.mq = icmp sgt i64 %i.dv, 0
  br i1 %i.mq, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 144
  br label %bb.u

._crit_edge:                                      ; preds = %bb.w, %.preheader
  %.lcssa = phi i64 [ %i.dv, %.preheader ], [ %i.nv, %bb.w ] ; 6 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %0, i64 144 ; 5 uses
  %i.mt = insertelement <2 x double> poison, double %.0184, i64 0
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mv = load <2 x double>, ptr %i.ms, align 8, !tbaa !65
  %i.mw = fmul <2 x double> %i.mu, %i.mv
  store <2 x double> %i.mw, ptr %i.ms, align 8, !tbaa !65
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 160 ; 2 uses
  %i.my = load double, ptr %i.mx, align 8, !tbaa !56
  %i.mz = fmul double %.0184, %i.my
  store double %i.mz, ptr %i.mx, align 8, !tbaa !56
  %i.na = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  store i64 %.lcssa, ptr %i.na, align 8, !tbaa !109
  %i.nb = icmp sgt i64 %.lcssa, 0
  br i1 %i.nb, label %.lr.ph216.preheader, label %.loopexit

.lr.ph216.preheader:                              ; preds = %._crit_edge
  %i.nc = add nsw i64 %.lcssa, -2
  br label %.lr.ph216

bb.u:                                             ; preds = %.lr.ph, %bb.w
  %i.nd = phi i64 [ %i.dv, %.lr.ph ], [ %i.nv, %bb.w ]
  %.055213 = phi i64 [ 0, %.lr.ph ], [ %i.nw, %bb.w ] ; 4 uses
  %i.ne = getelementptr [8 x i8], ptr %i.dt, i64 %.055213
  %.idx.i82 = mul i64 %.055213, 24                ; 2 uses
  %i.nf = getelementptr i8, ptr %i.ne, i64 %.idx.i82
  %i.ng = load double, ptr %i.nf, align 8, !tbaa !56 ; 2 uses
  %i.nh = tail call noundef double @llvm.fabs.f64(double %i.ng)
  %i.ni = getelementptr inbounds nuw [8 x i8], ptr %i.mr, i64 %.055213
  store double %i.nh, ptr %i.ni, align 8, !tbaa !56
  %i.nj = load i8, ptr %i.dx, align 1, !tbaa !102, !range !96, !noundef !97
  %i.nk = trunc nuw i8 %i.nj to i1
  %i.nl = load i8, ptr %i.dy, align 8, !range !96
  %i.nm = trunc nuw i8 %i.nl to i1
  %i.nn = select i1 %i.nk, i1 true, i1 %i.nm
  %i.no = fcmp olt double %i.ng, 0.000000e+00
  %or.cond = and i1 %i.no, %i.nn
  br i1 %or.cond, label %bb.v, label %bb.w

bb.v:                                             ; preds = %bb.u
  %i.np = getelementptr inbounds i8, ptr %0, i64 %.idx.i82 ; 3 uses
  %i.nq = load <2 x double>, ptr %i.np, align 8, !tbaa !65
  %i.nr = fneg <2 x double> %i.nq
  store <2 x double> %i.nr, ptr %i.np, align 8, !tbaa !65
  %i.ns = getelementptr i8, ptr %i.np, i64 16     ; 2 uses
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !56
  %i.nu = fneg double %i.nt
  store double %i.nu, ptr %i.ns, align 8, !tbaa !56
  %.pre229 = load i64, ptr %i.du, align 8, !tbaa !83
  br label %bb.w

bb.w:                                             ; preds = %bb.v, %bb.u
  %i.nv = phi i64 [ %.pre229, %bb.v ], [ %i.nd, %bb.u ] ; 3 uses
  %i.nw = add nuw nsw i64 %.055213, 1             ; 2 uses
  %i.nx = icmp slt i64 %i.nw, %i.nv
  br i1 %i.nx, label %bb.u, label %._crit_edge, !llvm.loop !110

.lr.ph216:                                        ; preds = %.lr.ph216.preheader, %.thread195
  %.0214 = phi i64 [ %i.qb, %.thread195 ], [ 0, %.lr.ph216.preheader ] ; 9 uses
  %i.ny = xor i64 %.0214, -1
  %i.nz = add nsw i64 %.lcssa, %i.ny              ; 3 uses
  %i.oa = sub nsw i64 %.lcssa, %.0214             ; 2 uses
  %i.ob = sub nsw i64 3, %i.oa
  %i.oc = getelementptr inbounds [8 x i8], ptr %i.ms, i64 %i.ob ; 4 uses
  %i.od = load double, ptr %i.oc, align 8, !tbaa !56 ; 5 uses
  %i.oe = icmp sgt i64 %i.oa, 1
  br i1 %i.oe, label %.lr.ph.i.i.i.i.preheader, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191

.lr.ph.i.i.i.i.preheader:                         ; preds = %.lr.ph216
  %xtraiter = and i64 %i.nz, 1
  %i.of = icmp eq i64 %i.nc, %.0214
  br i1 %i.of, label %.lr.ph.i.i.i.i.epil.preheader, label %.lr.ph.i.i.i.i.preheader.new

.lr.ph.i.i.i.i.preheader.new:                     ; preds = %.lr.ph.i.i.i.i.preheader
  %unroll_iter = and i64 %i.nz, -2
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %.lr.ph.i.i.i.i, %.lr.ph.i.i.i.i.preheader.new
  %.sroa.0.0.i.i = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.0.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.sroa.7.0.i.i = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader.new ], [ %.sroa.7.1.i.i.1, %.lr.ph.i.i.i.i ]
  %.02123.i.i.i.i = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader.new ], [ %i.oq, %.lr.ph.i.i.i.i ] ; 4 uses
  %i.og = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader.new ], [ %i.op, %.lr.ph.i.i.i.i ] ; 2 uses
  %niter = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader.new ], [ %niter.next.1, %.lr.ph.i.i.i.i ]
  %i.oh = getelementptr [8 x i8], ptr %i.oc, i64 %.02123.i.i.i.i
  %i.oi = load double, ptr %i.oh, align 8, !tbaa !56 ; 3 uses
  %i.oj = fcmp ogt double %i.oi, %i.og            ; 3 uses
  %.sroa.0.1.i.i = select i1 %i.oj, i64 %.02123.i.i.i.i, i64 %.sroa.0.0.i.i
  %.sroa.7.1.i.i = select i1 %i.oj, double %i.oi, double %.sroa.7.0.i.i
  %i.ok = select i1 %i.oj, double %i.oi, double %i.og ; 2 uses
  %i.ol = add nuw nsw i64 %.02123.i.i.i.i, 1      ; 2 uses
  %i.om = getelementptr [8 x i8], ptr %i.oc, i64 %i.ol
  %i.on = load double, ptr %i.om, align 8, !tbaa !56 ; 3 uses
  %i.oo = fcmp ogt double %i.on, %i.ok            ; 3 uses
  %.sroa.0.1.i.i.1 = select i1 %i.oo, i64 %i.ol, i64 %.sroa.0.1.i.i ; 3 uses
  %.sroa.7.1.i.i.1 = select i1 %i.oo, double %i.on, double %.sroa.7.1.i.i ; 3 uses
  %i.op = select i1 %i.oo, double %i.on, double %i.ok ; 2 uses
  %i.oq = add nuw nsw i64 %.02123.i.i.i.i, 2      ; 2 uses
  %niter.next.1 = add nuw nsw i64 %niter, 2       ; 2 uses
  %niter.ncmp.1 = icmp eq i64 %niter.next.1, %unroll_iter
  br i1 %niter.ncmp.1, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, label %.lr.ph.i.i.i.i, !llvm.loop !111

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa: ; preds = %.lr.ph.i.i.i.i
  %lcmp.mod.not = icmp eq i64 %xtraiter, 0
  br i1 %lcmp.mod.not, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, label %.lr.ph.i.i.i.i.epil.preheader

.lr.ph.i.i.i.i.epil.preheader:                    ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.preheader
  %.sroa.0.0.i.i.epil.init = phi i64 [ 0, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.sroa.7.0.i.i.epil.init = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader ], [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %.02123.i.i.i.i.epil.init = phi i64 [ 1, %.lr.ph.i.i.i.i.preheader ], [ %i.oq, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ] ; 2 uses
  %.epil.init = phi double [ %i.od, %.lr.ph.i.i.i.i.preheader ], [ %i.op, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ]
  %lcmp.mod253 = trunc i64 %i.nz to i1
  tail call void @llvm.assume(i1 %lcmp.mod253)
  %i.or = getelementptr [8 x i8], ptr %i.oc, i64 %.02123.i.i.i.i.epil.init
  %i.os = load double, ptr %i.or, align 8, !tbaa !56 ; 2 uses
  %i.ot = fcmp ogt double %i.os, %.epil.init      ; 2 uses
  %.sroa.0.1.i.i.epil = select i1 %i.ot, i64 %.02123.i.i.i.i.epil.init, i64 %.sroa.0.0.i.i.epil.init
  %.sroa.7.1.i.i.epil = select i1 %i.ot, double %i.os, double %.sroa.7.0.i.i.epil.init
  br label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa, %.lr.ph.i.i.i.i.epil.preheader
  %.sroa.0.1.i.i.lcssa = phi i64 [ %.sroa.0.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.0.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ] ; 2 uses
  %.sroa.7.1.i.i.lcssa = phi double [ %.sroa.7.1.i.i.1, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.unr-lcssa ], [ %.sroa.7.1.i.i.epil, %.lr.ph.i.i.i.i.epil.preheader ]
  %i.ou = fcmp une double %.sroa.7.1.i.i.lcssa, 0.000000e+00
  br i1 %i.ou, label %bb.x, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191: ; preds = %.lr.ph216
  %i.ov = fcmp une double %i.od, 0.000000e+00
  br i1 %i.ov, label %.thread195, label %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread

bb.x:                                             ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit
  %.not63 = icmp eq i64 %.sroa.0.1.i.i.lcssa, 0
  br i1 %.not63, label %.thread195, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.ow = add nuw nsw i64 %.sroa.0.1.i.i.lcssa, %.0214 ; 3 uses
  %i.ox = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %.0214 ; 2 uses
  %i.oy = getelementptr inbounds nuw [8 x i8], ptr %i.ms, i64 %i.ow ; 2 uses
  %i.oz = load double, ptr %i.ox, align 8, !tbaa !56
  %i.pa = load double, ptr %i.oy, align 8, !tbaa !56
  store double %i.pa, ptr %i.ox, align 8, !tbaa !56
  store double %i.oz, ptr %i.oy, align 8, !tbaa !56
  %i.pb = load i8, ptr %i.dx, align 1, !tbaa !102, !range !96, !noundef !97
  %i.pc = trunc nuw i8 %i.pb to i1
  %i.pd = load i8, ptr %i.dy, align 8, !range !96
  %i.pe = trunc nuw i8 %i.pd to i1
  %i.pf = select i1 %i.pc, i1 true, i1 %i.pe
  br i1 %i.pf, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %.idx.i.i.i.i84 = mul nuw nsw i64 %i.ow, 24
  %i.pg = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i84 ; 3 uses
  %.idx.i.i.i.i85 = mul nuw nsw i64 %.0214, 24
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 %.idx.i.i.i.i85 ; 3 uses
  %i.pi = load <2 x double>, ptr %i.ph, align 8, !tbaa !65
  %i.pj = load <2 x double>, ptr %i.pg, align 8, !tbaa !65
  store <2 x double> %i.pj, ptr %i.ph, align 8, !tbaa !65
  store <2 x double> %i.pi, ptr %i.pg, align 8, !tbaa !65
  %i.pk = getelementptr i8, ptr %i.pg, i64 16     ; 2 uses
  %i.pl = getelementptr i8, ptr %i.ph, i64 16     ; 2 uses
  %i.pm = load double, ptr %i.pk, align 8, !tbaa !56
  %i.pn = load double, ptr %i.pl, align 8, !tbaa !56
  store double %i.pn, ptr %i.pk, align 8, !tbaa !56
  store double %i.pm, ptr %i.pl, align 8, !tbaa !56
  br label %bb.aa

bb.aa:                                            ; preds = %bb.z, %bb.y
  %i.po = load i8, ptr %i.dz, align 1, !tbaa !104, !range !96, !noundef !97
  %i.pp = trunc nuw i8 %i.po to i1
  %i.pq = load i8, ptr %i.ea, align 2, !range !96
  %i.pr = trunc nuw i8 %i.pq to i1
  %i.ps = select i1 %i.pp, i1 true, i1 %i.pr
  br i1 %i.ps, label %bb.ab, label %.thread195

bb.ab:                                            ; preds = %bb.aa
  %.idx.i.i.i.i86 = mul nuw nsw i64 %i.ow, 24
  %i.pt = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i86 ; 3 uses
  %.idx.i.i.i.i87 = mul nuw nsw i64 %.0214, 24
  %i.pu = getelementptr inbounds nuw i8, ptr %i.eb, i64 %.idx.i.i.i.i87 ; 3 uses
  %i.pv = load <2 x double>, ptr %i.pu, align 8, !tbaa !65
  %i.pw = load <2 x double>, ptr %i.pt, align 8, !tbaa !65
  store <2 x double> %i.pw, ptr %i.pu, align 8, !tbaa !65
  store <2 x double> %i.pv, ptr %i.pt, align 8, !tbaa !65
  %i.px = getelementptr i8, ptr %i.pt, i64 16     ; 2 uses
  %i.py = getelementptr i8, ptr %i.pu, i64 16     ; 2 uses
  %i.pz = load double, ptr %i.px, align 8, !tbaa !56
  %i.qa = load double, ptr %i.py, align 8, !tbaa !56
  store double %i.qa, ptr %i.px, align 8, !tbaa !56
  store double %i.pz, ptr %i.py, align 8, !tbaa !56
  br label %.thread195

_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread: ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191
  store i64 %.0214, ptr %i.na, align 8, !tbaa !109
  br label %.loopexit

.thread195:                                       ; preds = %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread191, %bb.x, %bb.ab, %bb.aa
  %i.qb = add nuw nsw i64 %.0214, 1               ; 2 uses
  %exitcond220.not = icmp eq i64 %i.qb, %.lcssa
  br i1 %exitcond220.not, label %.loopexit, label %.lr.ph216, !llvm.loop !112

.loopexit:                                        ; preds = %.thread195, %._crit_edge, %_ZNK5Eigen9DenseBaseINS_5BlockINS_6MatrixIdLi3ELi1ELi0ELi3ELi1EEELin1ELi1ELb0EEEE8maxCoeffIlEEdPT_.exit.thread
  %i.qc = getelementptr inbounds nuw i8, ptr %0, i64 172
  store i8 1, ptr %i.qc, align 4, !tbaa !101
  br label %bb.ac

bb.ac:                                            ; preds = %.loopexit, %bb.c
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local void @_ZN3igl32direct_delta_mush_precomputationIN5Eigen6MatrixIdLin1ELin1ELi0ELin1ELin1EEENS2_IiLin1ELin1ELi0ELin1ELin1EEES3_S3_EEvRKNS1_10MatrixBaseIT_EERKNS5_IT0_EERKNS5_IT1_EEiNS6_6ScalarESI_SI_RNS1_15PlainObjectBaseIT2_EE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 1 %1, ptr noundef nonnull align 1 dereferenceable(1) %2, i32 noundef %3, double noundef %4, double noundef %5, double noundef %6, ptr noundef nonnull align 8 dereferenceable(24) %7) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %8 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %9 = alloca %"struct.Eigen::internal::evaluator", align 8 ; 5 uses
  %10 = alloca %"struct.Eigen::internal::evaluator.416", align 8 ; 5 uses
  %11 = alloca %"class.Eigen::internal::generic_dense_assignment_kernel", align 8 ; 7 uses
  %12 = alloca %"struct.Eigen::internal::assign_op", align 1 ; 3 uses
  %13 = alloca %"class.Eigen::Block.405", align 8 ; 9 uses
  %14 = alloca %"class.Eigen::Matrix", align 8    ; 13 uses
  %15 = alloca %"class.Eigen::SparseMatrix", align 8 ; 16 uses
  %16 = alloca %"class.Eigen::SparseMatrix", align 8 ; 18 uses
  %17 = alloca %"class.Eigen::CwiseUnaryOp", align 8 ; 6 uses
  %18 = alloca %"class.Eigen::Matrix.206", align 8 ; 9 uses
  %19 = alloca %"class.Eigen::Diagonal", align 8  ; 5 uses
  %20 = alloca %"class.Eigen::SparseMatrix", align 8 ; 16 uses
  %21 = alloca %"class.Eigen::SparseView", align 8 ; 7 uses
  %22 = alloca %"class.Eigen::Matrix.222", align 8 ; 7 uses
  %23 = alloca %"class.Eigen::DiagonalWrapper", align 8 ; 5 uses
  %24 = alloca %"class.Eigen::SparseMatrix", align 8 ; 17 uses
  %25 = alloca %"class.Eigen::Product.224", align 8 ; 7 uses
  %26 = alloca %"class.Eigen::SimplicialLDLT", align 8 ; 18 uses
  %27 = alloca %"class.Eigen::SparseMatrix", align 8 ; 16 uses
  %28 = alloca %"class.Eigen::CwiseBinaryOp.238", align 8 ; 10 uses
  %29 = alloca %"class.Eigen::Matrix.222", align 8 ; 14 uses
  %30 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %31 = alloca %"class.Eigen::Transpose.253", align 8 ; 6 uses
  %32 = alloca %"class.Eigen::Matrix.262", align 8 ; 11 uses
  %33 = alloca %"class.Eigen::Matrix.222", align 8 ; 11 uses
  %34 = alloca %"class.Eigen::Matrix.206", align 8 ; 11 uses
  %35 = alloca %"class.Eigen::Matrix.222", align 8 ; 16 uses
  %36 = alloca %"class.Eigen::SparseView", align 8 ; 7 uses
  %37 = alloca %"class.Eigen::SparseMatrix", align 8 ; 13 uses
  %38 = alloca %"class.Eigen::Transpose.347", align 8 ; 11 uses
  %39 = alloca %"class.Eigen::SimplicialLDLT", align 8 ; 18 uses
  %40 = alloca %"class.Eigen::Matrix.262", align 8 ; 11 uses
  %41 = alloca %"class.Eigen::Matrix.75", align 16 ; 10 uses
  %42 = alloca %"class.Eigen::Matrix.15", align 16 ; 16 uses
  %43 = alloca %"class.Eigen::Product.97", align 8 ; 6 uses
  %44 = alloca %"class.Eigen::Block.64", align 8  ; 10 uses
  %45 = alloca %"class.Eigen::Matrix.29", align 16 ; 13 uses
  %46 = alloca %"class.Eigen::Matrix.29", align 16 ; 13 uses
  %.sroa.3435 = alloca <2 x double>, align 16     ; 5 uses
  %.sroa.6436 = alloca <2 x double>, align 16     ; 5 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load i64, ptr %i.a, align 8, !tbaa !9    ; 6 uses
  %i.c = trunc i64 %i.b to i32                    ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 5 uses
  %i.f = trunc i64 %i.e to i32                    ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %14) #24
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %14, i8 0, i64 16, i1 false)
  %sext = shl i64 %i.b, 32                        ; 4 uses
  %i.g = ashr exact i64 %sext, 32                 ; 16 uses
  invoke void @_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi4ELi0ELin1ELi4EEEE6resizeEll(ptr noundef nonnull align 8 dereferenceable(16) %14, i64 noundef %i.g, i64 noundef 4)
          to label %_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit unwind label %bb.b

common.resume:                                    ; preds = %bb.dc, %bb.b
  %common.resume.op = phi { ptr, i32 } [ %i.h, %bb.b ], [ %.pn182.pn.pn.pn.pn.pn.pn, %bb.dc ]
  resume { ptr, i32 } %common.resume.op

bb.b:                                             ; preds = %bb.a
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = load ptr, ptr %14, align 8, !tbaa !18
  call void @free(ptr noundef %i.i) #24
  br label %common.resume

_ZN5Eigen6MatrixIdLin1ELi4ELi0ELin1ELi4EEC2IiiEERKT_RKT0_.exit: ; preds = %bb.a
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.k = load i64, ptr %i.j, align 8, !tbaa !20, !noalias !113 ; 3 uses
  %i.l = load i64, ptr %i.a, align 8, !tbaa !9, !noalias !113 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %13) #24, !noalias !113
  call void @llvm.experimental.noalias.scope.decl(metadata !116)
  %i.m = load ptr, ptr %14, align 8, !tbaa !18, !noalias !119 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %14, i64 8 ; 3 uses
  %i.o = load i64, ptr %i.n, align 8, !tbaa !28, !noalias !119 ; 2 uses
  store ptr %i.m, ptr %13, align 8, !tbaa !29, !alias.scope !116, !noalias !113
  %i.p = getelementptr inbounds nuw i8, ptr %13, i64 8
  store i64 %i.l, ptr %i.p, align 8, !tbaa !32, !alias.scope !116, !noalias !113
  %i.q = getelementptr inbounds nuw i8, ptr %13, i64 16
  store i64 %i.k, ptr %i.q, align 8, !tbaa !32, !alias.scope !116, !noalias !113
  %i.r = getelementptr inbounds nuw i8, ptr %13, i64 24
  store ptr %14, ptr %i.r, align 8, !tbaa !33, !alias.scope !116, !noalias !113
  %i.s = getelementptr inbounds nuw i8, ptr %13, i64 32
  %i.t = getelementptr inbounds nuw i8, ptr %13, i64 48
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %i.s, i8 0, i64 16, i1 false), !noalias !113
  store i64 %i.o, ptr %i.t, align 8, !tbaa !35, !alias.scope !116, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %12) #24, !noalias !113
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #24, !noalias !113
end_hunk_0
begin_hunk_1_@_ZN5Eigen22SimplicialCholeskyBaseINS_14SimplicialLDLTINS_12SparseMatrixIdLi0EiEELi1ENS_11AMDOrderingIiEEEEE20factorize_preorderedILb1EEEvRKS3_:bb.a

bb.c:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.o = add nuw nsw i64 %i.m, 15
  %i.p = alloca i8, i64 %i.o, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.d:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit
  %i.q = tail call noalias ptr @malloc(i64 noundef %i.m) #26 ; 2 uses
  %i.r = icmp eq ptr %i.q, null
  br i1 %i.r, label %bb.e, label %_ZN5Eigen8internal14aligned_mallocEm.exit

bb.e:                                             ; preds = %bb.d
  %i.s = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.s, align 8, !tbaa !135
  tail call void @__cxa_throw(ptr nonnull %i.s, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit:        ; preds = %bb.d, %bb.c
  %i.t = phi ptr [ %i.p, %bb.c ], [ %i.q, %bb.d ] ; 6 uses
  %i.u = icmp ugt i64 %i.m, 131072                ; 2 uses
  %i.v = ashr exact i64 %sext, 30                 ; 5 uses
  %i.w = icmp ugt i64 %i.v, 131072                ; 3 uses
  br i1 %i.w, label %bb.f, label %bb.h

bb.f:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.x = tail call noalias ptr @malloc(i64 noundef %i.v) #26 ; 3 uses
  %i.y = icmp eq ptr %i.x, null
  br i1 %i.y, label %bb.g, label %bb.i

bb.g:                                             ; preds = %bb.f
  %i.z = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.z, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.z, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc150 unwind label %bb.n

.noexc150:                                        ; preds = %bb.g
  unreachable

bb.h:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit
  %i.aa = add nuw nsw i64 %i.v, 15
  %i.ab = alloca i8, i64 %i.aa, align 16
  %i.ac = add nuw nsw i64 %i.v, 15
  %i.ad = alloca i8, i64 %i.ac, align 16
  br label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.i:                                             ; preds = %bb.f
  %i.ae = tail call noalias ptr @malloc(i64 noundef %i.v) #26 ; 2 uses
  %i.af = icmp eq ptr %i.ae, null
  br i1 %i.af, label %bb.j, label %_ZN5Eigen8internal14aligned_mallocEm.exit156

bb.j:                                             ; preds = %bb.i
  %i.ag = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ag, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.ag, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc155 unwind label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160

.noexc155:                                        ; preds = %bb.j
  unreachable

_ZN5Eigen8internal14aligned_mallocEm.exit156:     ; preds = %bb.i, %bb.h
  %i.ah = phi ptr [ %i.ab, %bb.h ], [ %i.x, %bb.i ] ; 8 uses
  %i.ai = phi ptr [ %i.ad, %bb.h ], [ %i.ae, %bb.i ] ; 5 uses
  %i.aj = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 3 uses
  %i.ak = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 2 uses
  %i.al = load i64, ptr %i.ak, align 8, !tbaa !148
  %.not.i.i = icmp eq i64 %i.j, %i.al
  br i1 %.not.i.i, label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156
  %i.am = load ptr, ptr %i.aj, align 8, !tbaa !150
  tail call void @free(ptr noundef %i.am) #24
  %.not190 = icmp eq i64 %sext, 0
  br i1 %.not190, label %.sink.split.i.i, label %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i

_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i: ; preds = %bb.k
  %i.an = tail call noalias ptr @malloc(i64 noundef %i.m) #26 ; 2 uses
  %i.ao = icmp eq ptr %i.an, null
  br i1 %i.ao, label %bb.l, label %.sink.split.i.i

bb.l:                                             ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i
  %i.ap = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.ap, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.ap, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc158 unwind label %bb.o

.noexc158:                                        ; preds = %bb.l
  unreachable

.sink.split.i.i:                                  ; preds = %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i, %bb.k
  %.sink.i.i = phi ptr [ %i.an, %_ZN5Eigen8internal23check_size_for_overflowIdEEvm.exit.i.i.i ], [ null, %bb.k ]
  store ptr %.sink.i.i, ptr %i.aj, align 8, !tbaa !150
  br label %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit

_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit: ; preds = %_ZN5Eigen8internal14aligned_mallocEm.exit156, %.sink.split.i.i
  store i64 %i.j, ptr %i.ak, align 8, !tbaa !148
  %i.aq = icmp sgt i32 %i.c, 0
  br i1 %i.aq, label %.lr.ph214, label %._crit_edge215

.lr.ph214:                                        ; preds = %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.as = load ptr, ptr %i.ar, align 8, !tbaa !289 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.au = load ptr, ptr %i.at, align 8, !tbaa !194
  %i.av = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.aw = load ptr, ptr %i.av, align 8, !tbaa !195
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ay = load ptr, ptr %i.ax, align 8, !tbaa !134
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !193 ; 2 uses
  %i.bb = icmp eq ptr %i.ba, null
  %i.bc = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.bd = getelementptr inbounds nuw i8, ptr %0, i64 176 ; 2 uses
  %i.be = getelementptr inbounds nuw i8, ptr %0, i64 168 ; 2 uses
  %i.bf = load ptr, ptr %i.aj, align 8, !tbaa !150 ; 2 uses
  %wide.trip.count231 = and i64 %i.b, 2147483647
  %wide.trip.count = and i64 %i.b, 2147483647
  br label %bb.p

bb.m:                                             ; preds = %._crit_edge211
  %indvars.iv.next229 = add nuw nsw i64 %indvars.iv228, 1 ; 2 uses
  %exitcond232.not = icmp eq i64 %indvars.iv.next229, %wide.trip.count231
  br i1 %exitcond232.not, label %._crit_edge215, label %bb.p, !llvm.loop !445

bb.n:                                             ; preds = %bb.g
  %i.bg = landingpad { ptr, i32 }
          cleanup
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.o:                                             ; preds = %bb.l
  %i.bh = landingpad { ptr, i32 }
          cleanup                                 ; 2 uses
  br i1 %i.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

bb.p:                                             ; preds = %.lr.ph214, %bb.m
  %indvars.iv228 = phi i64 [ 0, %.lr.ph214 ], [ %indvars.iv.next229, %bb.m ] ; 11 uses
  %i.bi = getelementptr inbounds nuw [8 x i8], ptr %i.t, i64 %indvars.iv228 ; 4 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !56
  %i.bj = getelementptr inbounds nuw [4 x i8], ptr %i.ai, i64 %indvars.iv228
  %i.bk = trunc nuw nsw i64 %indvars.iv228 to i32 ; 3 uses
  store i32 %i.bk, ptr %i.bj, align 4, !tbaa !273
  %i.bl = getelementptr inbounds nuw [4 x i8], ptr %i.as, i64 %indvars.iv228
  store i32 0, ptr %i.bl, align 4, !tbaa !273
  %i.bm = getelementptr inbounds nuw [4 x i8], ptr %i.ay, i64 %indvars.iv228 ; 2 uses
  %i.bn = load i32, ptr %i.bm, align 4, !tbaa !273
  %i.bo = sext i32 %i.bn to i64                   ; 3 uses
  br i1 %i.bb, label %bb.q, label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.bp = getelementptr i8, ptr %i.bm, i64 4
  %i.bq = load i32, ptr %i.bp, align 4, !tbaa !273
  %i.br = sext i32 %i.bq to i64
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

bb.r:                                             ; preds = %bb.p
  %i.bs = getelementptr inbounds nuw [4 x i8], ptr %i.ba, i64 %indvars.iv228
  %i.bt = load i32, ptr %i.bs, align 4, !tbaa !273
  %i.bu = sext i32 %i.bt to i64
  %i.bv = add nsw i64 %i.bu, %i.bo
  br label %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit

_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit: ; preds = %bb.q, %bb.r
  %.sink.i = phi i64 [ %i.br, %bb.q ], [ %i.bv, %bb.r ] ; 2 uses
  %i.bw = icmp sgt i64 %.sink.i, %i.bo
  br i1 %i.bw, label %.lr.ph200, label %._crit_edge.thread

._crit_edge.thread:                               ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit
  %i.bx = load double, ptr %i.bd, align 8, !tbaa !177
  %i.by = load double, ptr %i.be, align 8, !tbaa !446
  %i.bz = tail call double @llvm.fmuladd.f64(double %i.bx, double 0.000000e+00, double %i.by)
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !56
  br label %._crit_edge211

.lr.ph200:                                        ; preds = %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit, %.loopexit
  %.0100199 = phi i32 [ %.2, %.loopexit ], [ %i.c, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %.sroa.8.0198 = phi i64 [ %i.dn, %.loopexit ], [ %i.bo, %_ZN5Eigen20SparseCompressedBaseINS_12SparseMatrixIdLi0EiEEE13InnerIteratorC2ERKS3_l.exit ] ; 3 uses
  %i.ca = getelementptr inbounds [4 x i8], ptr %i.aw, i64 %.sroa.8.0198
  %i.cb = load i32, ptr %i.ca, align 4, !tbaa !273 ; 2 uses
  %i.cc = sext i32 %i.cb to i64                   ; 4 uses
  %.not = icmp slt i64 %indvars.iv228, %i.cc
  br i1 %.not, label %.loopexit, label %bb.s

bb.s:                                             ; preds = %.lr.ph200
  %i.cd = getelementptr inbounds [8 x i8], ptr %i.au, i64 %.sroa.8.0198
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !56
  %i.cf = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !56
  %i.ch = fadd double %i.ce, %i.cg
  store double %i.ch, ptr %i.cf, align 8, !tbaa !56
  %i.ci = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.cc ; 2 uses
  %i.cj = load i32, ptr %i.ci, align 4, !tbaa !273
  %i.ck = zext i32 %i.cj to i64
  %.not135191 = icmp eq i64 %indvars.iv228, %i.ck
  br i1 %.not135191, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.s
  %i.cl = load ptr, ptr %i.bc, align 8, !tbaa !289
  br label %bb.t

.lr.ph196.preheader:                              ; preds = %bb.t
  %i.cm = sext i32 %.0100199 to i64               ; 5 uses
  %min.iters.check = icmp samesign ult i64 %.098193, 7
  br i1 %min.iters.check, label %.lr.ph196.preheader256, label %vector.memcheck

vector.memcheck:                                  ; preds = %.lr.ph196.preheader
  %i.cn = sub i64 %.098193, %i.cm
  %reass.sub = shl i64 %i.cn, 2
  %diff.check = icmp ult i64 %reass.sub, 28
  br i1 %diff.check, label %.lr.ph196.preheader256, label %vector.ph

vector.ph:                                        ; preds = %vector.memcheck
  %n.vec = and i64 %i.db, 9223372036854775800     ; 3 uses
  %i.co = sub i64 %i.cm, %n.vec                   ; 2 uses
  %2 = and i64 %i.db, 7
  %invariant.gep = getelementptr [4 x i8], ptr %i.ah, i64 %i.cm
  br label %vector.body

vector.body:                                      ; preds = %vector.body, %vector.ph
  %index = phi i64 [ 0, %vector.ph ], [ %index.next, %vector.body ] ; 3 uses
  %i.cp = sub i64 %.098193, %index
  %i.cq = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.cp ; 2 uses
  %i.cr = getelementptr inbounds i8, ptr %i.cq, i64 -12
  %i.cs = getelementptr inbounds i8, ptr %i.cq, i64 -28
  %wide.load = load <4 x i32>, ptr %i.cr, align 4, !tbaa !273
  %wide.load254 = load <4 x i32>, ptr %i.cs, align 4, !tbaa !273
  %i.ct = xor i64 %index, -1
  %gep = getelementptr [4 x i8], ptr %invariant.gep, i64 %i.ct ; 2 uses
  %i.cu = getelementptr inbounds i8, ptr %gep, i64 -12
  %i.cv = getelementptr inbounds i8, ptr %gep, i64 -28
  store <4 x i32> %wide.load, ptr %i.cu, align 4, !tbaa !273
  store <4 x i32> %wide.load254, ptr %i.cv, align 4, !tbaa !273
  %index.next = add nuw i64 %index, 8             ; 2 uses
  %i.cw = icmp eq i64 %index.next, %n.vec
  br i1 %i.cw, label %middle.block, label %vector.body, !llvm.loop !447

middle.block:                                     ; preds = %vector.body
  %cmp.n = icmp eq i64 %i.db, %n.vec
  br i1 %cmp.n, label %.loopexit.loopexit, label %.lr.ph196.preheader256

.lr.ph196.preheader256:                           ; preds = %vector.memcheck, %.lr.ph196.preheader, %middle.block
  %indvars.iv.ph = phi i64 [ %i.cm, %vector.memcheck ], [ %i.cm, %.lr.ph196.preheader ], [ %i.co, %middle.block ]
  %.1195.ph = phi i64 [ %i.db, %vector.memcheck ], [ %i.db, %.lr.ph196.preheader ], [ %2, %middle.block ]
  br label %.lr.ph196

bb.t:                                             ; preds = %.lr.ph, %bb.t
  %i.cx = phi ptr [ %i.ci, %.lr.ph ], [ %i.de, %bb.t ]
  %i.cy = phi i64 [ %i.cc, %.lr.ph ], [ %i.dd, %bb.t ]
  %.098193 = phi i64 [ 0, %.lr.ph ], [ %i.db, %bb.t ] ; 5 uses
  %.099192 = phi i32 [ %i.cb, %.lr.ph ], [ %i.dc, %bb.t ]
  %i.cz = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %.098193
  store i32 %.099192, ptr %i.cz, align 4, !tbaa !273
  store i32 %i.bk, ptr %i.cx, align 4, !tbaa !273
  %i.da = getelementptr inbounds [4 x i8], ptr %i.cl, i64 %i.cy
  %i.db = add nuw nsw i64 %.098193, 1             ; 6 uses
  %i.dc = load i32, ptr %i.da, align 4, !tbaa !273 ; 2 uses
  %i.dd = sext i32 %i.dc to i64                   ; 2 uses
  %i.de = getelementptr inbounds [4 x i8], ptr %i.ai, i64 %i.dd ; 2 uses
  %i.df = load i32, ptr %i.de, align 4, !tbaa !273
  %i.dg = zext i32 %i.df to i64
  %.not135 = icmp eq i64 %indvars.iv228, %i.dg
  br i1 %.not135, label %.lr.ph196.preheader, label %bb.t, !llvm.loop !448

.lr.ph196:                                        ; preds = %.lr.ph196.preheader256, %.lr.ph196
  %indvars.iv = phi i64 [ %indvars.iv.next, %.lr.ph196 ], [ %indvars.iv.ph, %.lr.ph196.preheader256 ]
  %.1195 = phi i64 [ %i.dh, %.lr.ph196 ], [ %.1195.ph, %.lr.ph196.preheader256 ] ; 2 uses
  %i.dh = add nsw i64 %.1195, -1                  ; 2 uses
  %i.di = getelementptr inbounds nuw [4 x i8], ptr %i.ah, i64 %i.dh
  %i.dj = load i32, ptr %i.di, align 4, !tbaa !273
  %indvars.iv.next = add nsw i64 %indvars.iv, -1  ; 3 uses
  %i.dk = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv.next
  store i32 %i.dj, ptr %i.dk, align 4, !tbaa !273
  %i.dl = icmp sgt i64 %.1195, 1
  br i1 %i.dl, label %.lr.ph196, label %.loopexit.loopexit, !llvm.loop !449

.loopexit.loopexit:                               ; preds = %.lr.ph196, %middle.block
  %indvars.iv.next.lcssa = phi i64 [ %i.co, %middle.block ], [ %indvars.iv.next, %.lr.ph196 ]
  %i.dm = trunc nsw i64 %indvars.iv.next.lcssa to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.s, %.loopexit.loopexit, %.lr.ph200
  %.2 = phi i32 [ %.0100199, %.lr.ph200 ], [ %i.dm, %.loopexit.loopexit ], [ %.0100199, %bb.s ] ; 3 uses
  %i.dn = add nsw i64 %.sroa.8.0198, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.dn, %.sink.i
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph200, !llvm.loop !450

._crit_edge:                                      ; preds = %.loopexit
  %.pre = load double, ptr %i.bi, align 8, !tbaa !56
  %i.do = load double, ptr %i.bd, align 8, !tbaa !177
  %i.dp = load double, ptr %i.be, align 8, !tbaa !446
  %i.dq = tail call double @llvm.fmuladd.f64(double %.pre, double %i.do, double %i.dp) ; 2 uses
  store double 0.000000e+00, ptr %i.bi, align 8, !tbaa !56
  %i.dr = icmp slt i32 %.2, %i.c
  br i1 %i.dr, label %.lr.ph210, label %._crit_edge211

.lr.ph210:                                        ; preds = %._crit_edge
  %i.ds = sext i32 %.2 to i64
  br label %bb.u

bb.u:                                             ; preds = %.lr.ph210, %._crit_edge205
  %indvars.iv224 = phi i64 [ %i.ds, %.lr.ph210 ], [ %indvars.iv.next225, %._crit_edge205 ] ; 2 uses
  %.097208 = phi double [ %i.dq, %.lr.ph210 ], [ %i.ex, %._crit_edge205 ]
  %i.dt = getelementptr inbounds [4 x i8], ptr %i.ah, i64 %indvars.iv224
  %i.du = load i32, ptr %i.dt, align 4, !tbaa !273
  %i.dv = sext i32 %i.du to i64                   ; 4 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !56 ; 3 uses
  store double 0.000000e+00, ptr %i.dw, align 8, !tbaa !56
  %i.dy = getelementptr inbounds [8 x i8], ptr %i.bf, i64 %i.dv
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !56
  %i.ea = fdiv double %i.dx, %i.dz                ; 2 uses
  %i.eb = getelementptr inbounds [4 x i8], ptr %i.e, i64 %i.dv
  %i.ec = load i32, ptr %i.eb, align 4, !tbaa !273 ; 2 uses
  %i.ed = getelementptr inbounds [4 x i8], ptr %i.as, i64 %i.dv ; 3 uses
  %i.ee = load i32, ptr %i.ed, align 4, !tbaa !273 ; 2 uses
  %i.ef = add nsw i32 %i.ee, %i.ec
  %i.eg = sext i32 %i.ef to i64
  %i.eh = sext i32 %i.ec to i64                   ; 2 uses
  %i.ei = icmp sgt i32 %i.ee, 0
  br i1 %i.ei, label %.lr.ph204, label %._crit_edge205

.lr.ph204:                                        ; preds = %bb.u, %.lr.ph204
  %.0202 = phi i64 [ %i.es, %.lr.ph204 ], [ %i.eh, %bb.u ] ; 3 uses
  %i.ej = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0202
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !56
  %i.el = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0202
  %i.em = load i32, ptr %i.el, align 4, !tbaa !273
  %i.en = sext i32 %i.em to i64
  %i.eo = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.en ; 2 uses
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !56
  %i.eq = fneg double %i.ek
  %i.er = tail call double @llvm.fmuladd.f64(double %i.eq, double %i.dx, double %i.ep)
  store double %i.er, ptr %i.eo, align 8, !tbaa !56
  %i.es = add nsw i64 %.0202, 1                   ; 3 uses
  %i.et = icmp slt i64 %i.es, %i.eg
  br i1 %i.et, label %.lr.ph204, label %._crit_edge205, !llvm.loop !451

._crit_edge205:                                   ; preds = %.lr.ph204, %bb.u
  %.0.lcssa = phi i64 [ %i.eh, %bb.u ], [ %i.es, %.lr.ph204 ] ; 2 uses
  %i.eu = fmul double %i.dx, %i.ea
  %i.ev = getelementptr inbounds [4 x i8], ptr %i.g, i64 %.0.lcssa
  store i32 %i.bk, ptr %i.ev, align 4, !tbaa !273
  %i.ew = getelementptr inbounds [8 x i8], ptr %i.i, i64 %.0.lcssa
  store double %i.ea, ptr %i.ew, align 8, !tbaa !56
  %i.ex = fsub double %.097208, %i.eu             ; 2 uses
  %i.ey = load i32, ptr %i.ed, align 4, !tbaa !273
  %i.ez = add nsw i32 %i.ey, 1
  store i32 %i.ez, ptr %i.ed, align 4, !tbaa !273
  %indvars.iv.next225 = add nsw i64 %indvars.iv224, 1 ; 2 uses
  %exitcond227.not = icmp eq i64 %indvars.iv.next225, %wide.trip.count
  br i1 %exitcond227.not, label %._crit_edge211, label %bb.u, !llvm.loop !452

._crit_edge211:                                   ; preds = %._crit_edge205, %._crit_edge.thread, %._crit_edge
  %.097.lcssa = phi double [ %i.dq, %._crit_edge ], [ %i.bz, %._crit_edge.thread ], [ %i.ex, %._crit_edge205 ] ; 2 uses
  %i.fa = getelementptr inbounds nuw [8 x i8], ptr %i.bf, i64 %indvars.iv228
  store double %.097.lcssa, ptr %i.fa, align 8, !tbaa !56
  %i.fb = fcmp une double %.097.lcssa, 0.000000e+00
  br i1 %i.fb, label %bb.m, label %._crit_edge215

._crit_edge215:                                   ; preds = %._crit_edge211, %bb.m, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit
  %.2106 = phi i32 [ 0, %_ZN5Eigen15PlainObjectBaseINS_6MatrixIdLin1ELi1ELi0ELin1ELi1EEEE6resizeEl.exit ], [ 0, %bb.m ], [ 1, %._crit_edge211 ]
  %i.fc = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 %.2106, ptr %i.fc, align 4, !tbaa !167
  %i.fd = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i8 1, ptr %i.fd, align 8, !tbaa !175
  br i1 %i.w, label %bb.v, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

bb.v:                                             ; preds = %._crit_edge215
  call void @free(ptr noundef nonnull %i.ai) #24
  call void @free(ptr noundef nonnull %i.ah) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159: ; preds = %._crit_edge215, %bb.v
  br i1 %i.u, label %bb.w, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

bb.w:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159
  call void @free(ptr noundef nonnull %i.t) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit159, %bb.w
  ret void

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread: ; preds = %bb.o
  call void @free(ptr noundef nonnull %i.ai) #24
  br label %bb.x

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160: ; preds = %bb.j
  %i.fe = landingpad { ptr, i32 }
          cleanup
  br label %bb.x

bb.x:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread
  %i.ff = phi ptr [ %i.ah, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.x, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  %.pn136.pn.pn.pn.pn.pn187 = phi { ptr, i32 } [ %i.bh, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160.thread ], [ %i.fe, %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit160 ]
  call void @free(ptr noundef nonnull %i.ff) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161

_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161: ; preds = %bb.o, %bb.x, %bb.n
  %.pn136.pn.pn.pn.pn.pn.pn.pn = phi { ptr, i32 } [ %i.bg, %bb.n ], [ %i.bh, %bb.o ], [ %.pn136.pn.pn.pn.pn.pn187, %bb.x ]
  br i1 %i.u, label %bb.y, label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

bb.y:                                             ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161
  call void @free(ptr noundef nonnull %i.t) #24
  br label %_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162

_ZN5Eigen8internal28aligned_stack_memory_handlerIdED2Ev.exit162: ; preds = %_ZN5Eigen8internal28aligned_stack_memory_handlerIiED2Ev.exit161, %bb.y
  resume { ptr, i32 } %.pn136.pn.pn.pn.pn.pn.pn.pn
}

; Function Attrs: mustprogress uwtable
define linkonce_odr dso_local void @_ZN5Eigen11AMDOrderingIiEclINS_12SparseMatrixIdLi0EiEEEEvRKT_RNS_17PermutationMatrixILin1ELin1EiEE(ptr noundef nonnull align 1 dereferenceable(1) %0, ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #12 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"class.Eigen::SparseMatrix", align 8 ; 14 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  store i8 0, ptr %3, align 8, !tbaa !127
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store i64 -1, ptr %i.a, align 8, !tbaa !137
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 2 uses
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(56) %i.b, i8 0, i64 56, i1 false)
  %i.d = tail call noalias dereferenceable_or_null(4) ptr @malloc(i64 noundef 4) #26 ; 3 uses
  store ptr %i.d, ptr %i.c, align 8, !tbaa !134
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %bb.b, label %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.e = tail call ptr @__cxa_allocate_exception(i64 8) #24 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVSt9bad_alloc, i64 16), ptr %i.e, align 8, !tbaa !135
  invoke void @__cxa_throw(ptr nonnull %i.e, ptr nonnull @_ZTISt9bad_alloc, ptr nonnull @_ZNSt9bad_allocD1Ev) #27
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  unreachable

common.resume:                                    ; preds = %bb.i, %bb.c
  %common.resume.op = phi { ptr, i32 } [ %i.f, %bb.c ], [ %i.q, %bb.i ]
  resume { ptr, i32 } %common.resume.op

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = getelementptr inbounds nuw i8, ptr %3, i64 40
  call void @_ZN5Eigen8internal17CompressedStorageIdiED2Ev(ptr noundef nonnull align 8 dead_on_return(32) dereferenceable(32) %i.g) #24
  br label %common.resume

_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit:         ; preds = %bb.a
  store i64 0, ptr %i.a, align 8, !tbaa !137
  %i.h = getelementptr inbounds nuw i8, ptr %3, i64 32
  store i32 0, ptr %i.d, align 4
  invoke void @_ZN5Eigen8internal25ordering_helper_at_plus_aINS_12SparseMatrixIdLi0EiEEEEvRKT_RS4_(ptr noundef nonnull align 8 dereferenceable(72) %1, ptr noundef nonnull align 8 dereferenceable(72) %3)
          to label %bb.d unwind label %bb.i

bb.d:                                             ; preds = %_ZN5Eigen12SparseMatrixIdLi0EiEC2Ev.exit
  invoke void @_ZN5Eigen8internal23minimum_degree_orderingIdiEEvRNS_12SparseMatrixIT_Li0ET0_EERNS_17PermutationMatrixILin1ELin1ES4_EE(ptr noundef nonnull align 8 dereferenceable(72) %3, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %bb.e unwind label %bb.i
end_hunk_1
