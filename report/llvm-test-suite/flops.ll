inline.NumInlined: 22
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0_@main:bb.a
._crit_edge350:                                   ; preds = %bb.g, %bb.f
  %.5278.lcssa = phi double [ 0.000000e+00, %bb.f ], [ %i.iu, %bb.g ]
  %i.iw = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.ix = load i64, ptr @tnow, align 8, !tbaa !10
  %i.iy = sitofp i64 %i.ix to double
  %i.iz = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.ja = sitofp i64 %i.iz to double
  %i.jb = tail call double @llvm.fmuladd.f64(double %i.ja, double f0x3EB0C6F7A0B5ED8D, double %i.iy) ; 2 uses
  store double %i.jb, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.jc = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8
  %i.jd = load double, ptr @nulltime, align 8, !tbaa !8
  %i.je = load double, ptr @piref, align 8, !tbaa !8
  %i.jf = load double, ptr @three, align 8, !tbaa !8
  %i.jg = fdiv double %i.je, %i.jf                ; 3 uses
  %i.jh = load double, ptr @A6, align 8, !tbaa !8
  %i.ji = load double, ptr @A5, align 8, !tbaa !8
  %i.jj = fmul double %i.jg, %i.jg                ; 6 uses
  %i.jk = fsub double %i.jb, %i.ia                ; 2 uses
  store double %i.jk, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.jl = insertelement <2 x double> poison, double %i.jd, i64 0
  %i.jm = insertelement <2 x double> %i.jl, double %i.ji, i64 1
  %i.jn = fneg <2 x double> %i.jm
  %i.jo = insertelement <2 x double> %i.jc, double %i.jh, i64 1
  %i.jp = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %i.jj, i64 1
  %i.jr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> %i.jq, <2 x double> %i.jn) ; 2 uses
  %i.js = extractelement <2 x double> %i.jr, i64 0 ; 3 uses
  store double %i.js, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8, !tbaa !8
  %i.jt = load double, ptr @A4, align 8, !tbaa !8
  %i.ju = extractelement <2 x double> %i.jr, i64 1
  %i.jv = tail call double @llvm.fmuladd.f64(double %i.ju, double %i.jj, double %i.jt)
  %i.jw = load double, ptr @A3, align 8, !tbaa !8
  %i.jx = fneg double %i.jw
  %i.jy = tail call double @llvm.fmuladd.f64(double %i.jv, double %i.jj, double %i.jx)
  %i.jz = load double, ptr @A2, align 8, !tbaa !8
  %i.ka = tail call double @llvm.fmuladd.f64(double %i.jy, double %i.jj, double %i.jz)
  %i.kb = load double, ptr @A1, align 8, !tbaa !8
  %i.kc = tail call double @llvm.fmuladd.f64(double %i.ka, double %i.jj, double %i.kb)
  %i.kd = load double, ptr @one, align 8, !tbaa !8 ; 2 uses
  %i.ke = tail call double @llvm.fmuladd.f64(double %i.kc, double %i.jj, double %i.kd)
  %i.kf = fmul double %i.jg, %i.ke
  %i.kg = fdiv double %i.js, 1.700000e+01         ; 2 uses
  store double %i.kg, ptr getelementptr inbounds nuw (i8, ptr @T, i64 80), align 16, !tbaa !8
  %i.kh = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.ki = tail call double @llvm.fmuladd.f64(double %i.kh, double %.5278.lcssa, double %i.kf)
  %i.kj = fmul double %i.ht, %i.ki
  %i.kk = fdiv double %i.kj, %i.kh                ; 2 uses
  store double %i.kk, ptr @sa, align 8, !tbaa !8
  store double 5.000000e-01, ptr @sb, align 8, !tbaa !8
  %i.kl = fadd double %i.kk, -5.000000e-01        ; 2 uses
  store double %i.kl, ptr @sc, align 8, !tbaa !8
  %i.km = fdiv double %i.kd, %i.kg                ; 2 uses
  store double %i.km, ptr getelementptr inbounds nuw (i8, ptr @T, i64 88), align 8, !tbaa !8
  %i.kn = fmul double %i.kl, 1.000000e-30
  %i.ko = fmul double %i.js, 1.000000e-30
  %i.kp = fmul double %i.km, 1.000000e-30
  %i.kq = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.6, double noundef %i.kn, double noundef %i.ko, double noundef %i.kp) ; 0 uses
  %i.kr = load double, ptr @A3, align 8, !tbaa !8
  %i.ks = fneg double %i.kr
  store double %i.ks, ptr @A3, align 8, !tbaa !8
  %i.kt = load double, ptr @A5, align 8, !tbaa !8
  %i.ku = fneg double %i.kt
  store double %i.ku, ptr @A5, align 8, !tbaa !8
  %i.kv = load double, ptr @piref, align 8, !tbaa !8
  %i.kw = load double, ptr @three, align 8, !tbaa !8
  %i.kx = fmul double %i.kw, %i.hr
  %i.ky = fdiv double %i.kv, %i.kx                ; 2 uses
  %i.kz = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.la = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.lb = load i64, ptr @tnow, align 8, !tbaa !10
  %i.lc = sitofp i64 %i.lb to double
  %i.ld = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.le = sitofp i64 %i.ld to double
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.le, double f0x3EB0C6F7A0B5ED8D, double %i.lc) ; 3 uses
  store double %i.lf, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.lg = fsub double %i.lf, %i.kz
  store double %i.lg, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  br i1 %.not300.not344, label %.lr.ph356, label %._crit_edge357

.lr.ph356:                                        ; preds = %._crit_edge350
  %i.lh = load double, ptr @B6, align 8, !tbaa !8
  %i.li = load double, ptr @B5, align 8, !tbaa !8
  %i.lj = load double, ptr @B4, align 8, !tbaa !8
  %i.lk = load double, ptr @B3, align 8, !tbaa !8
  %i.ll = load double, ptr @B2, align 8, !tbaa !8
  %i.lm = load double, ptr @B1, align 8, !tbaa !8
  %i.ln = load double, ptr @one, align 8, !tbaa !8
  br label %bb.h

bb.h:                                             ; preds = %.lr.ph356, %bb.h
  %.5354 = phi i64 [ 1, %.lr.ph356 ], [ %i.ly, %bb.h ] ; 2 uses
  %.6279353 = phi double [ 0.000000e+00, %.lr.ph356 ], [ %i.lx, %bb.h ]
  %i.lo = uitofp nneg i64 %.5354 to double
  %i.lp = fmul double %i.ky, %i.lo                ; 2 uses
  %i.lq = fmul double %i.lp, %i.lp                ; 6 uses
  %i.lr = tail call double @llvm.fmuladd.f64(double %i.lh, double %i.lq, double %i.li)
  %i.ls = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lr, double %i.lj)
  %i.lt = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.ls, double %i.lk)
  %i.lu = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lt, double %i.ll)
  %i.lv = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lu, double %i.lm)
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.lq, double %i.lv, double %.6279353)
  %i.lx = fadd double %i.ln, %i.lw                ; 2 uses
  %i.ly = add nuw nsw i64 %.5354, 1               ; 2 uses
  %exitcond408.not = icmp eq i64 %i.ly, %i.gw
  br i1 %exitcond408.not, label %._crit_edge357, label %bb.h, !llvm.loop !22

._crit_edge357:                                   ; preds = %bb.h, %._crit_edge350
  %.6279.lcssa = phi double [ 0.000000e+00, %._crit_edge350 ], [ %i.lx, %bb.h ]
  %i.lz = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.ma = load i64, ptr @tnow, align 8, !tbaa !10
  %i.mb = sitofp i64 %i.ma to double
  %i.mc = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.md = sitofp i64 %i.mc to double
  %i.me = tail call double @llvm.fmuladd.f64(double %i.md, double f0x3EB0C6F7A0B5ED8D, double %i.mb) ; 2 uses
  store double %i.me, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.mf = fsub double %i.me, %i.lf                ; 2 uses
  store double %i.mf, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.mg = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !8
  %i.mh = load double, ptr @nulltime, align 8, !tbaa !8
  %i.mi = fneg double %i.mh
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.mg, double %i.mf, double %i.mi) ; 3 uses
  store double %i.mj, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16, !tbaa !8
  %i.mk = load double, ptr @piref, align 8, !tbaa !8
  %i.ml = load double, ptr @three, align 8, !tbaa !8
  %i.mm = fdiv double %i.mk, %i.ml                ; 3 uses
  %i.mn = fmul double %i.mm, %i.mm                ; 12 uses
  %i.mo = load double, ptr @B6, align 8, !tbaa !8
  %i.mp = load double, ptr @B5, align 8, !tbaa !8
  %i.mq = tail call double @llvm.fmuladd.f64(double %i.mo, double %i.mn, double %i.mp)
  %i.mr = load double, ptr @B4, align 8, !tbaa !8
  %i.ms = tail call double @llvm.fmuladd.f64(double %i.mn, double %i.mq, double %i.mr)
  %i.mt = load double, ptr @B3, align 8, !tbaa !8
  %i.mu = tail call double @llvm.fmuladd.f64(double %i.mn, double %i.ms, double %i.mt)
  %i.mv = load double, ptr @B2, align 8, !tbaa !8
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mn, double %i.mu, double %i.mv)
  %i.mx = load double, ptr @B1, align 8, !tbaa !8
  %i.my = tail call double @llvm.fmuladd.f64(double %i.mn, double %i.mw, double %i.mx)
  %i.mz = load double, ptr @one, align 8, !tbaa !8 ; 3 uses
  %i.na = tail call double @llvm.fmuladd.f64(double %i.mn, double %i.my, double %i.mz)
  %i.nb = fdiv double %i.mj, 1.500000e+01         ; 2 uses
  store double %i.nb, ptr getelementptr inbounds nuw (i8, ptr @T, i64 104), align 8, !tbaa !8
  %i.nc = fadd double %i.mz, %i.na
  %i.nd = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.ne = tail call double @llvm.fmuladd.f64(double %i.nd, double %.6279.lcssa, double %i.nc)
  %i.nf = fmul double %i.ky, %i.ne
  %i.ng = fdiv double %i.nf, %i.nd                ; 2 uses
  store double %i.ng, ptr @sa, align 8, !tbaa !8
  %i.nh = load double, ptr @A6, align 8, !tbaa !8
  %i.ni = load double, ptr @A5, align 8, !tbaa !8
  %i.nj = tail call double @llvm.fmuladd.f64(double %i.nh, double %i.mn, double %i.ni)
  %i.nk = load double, ptr @A4, align 8, !tbaa !8
  %i.nl = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.mn, double %i.nk)
  %i.nm = load double, ptr @A3, align 8, !tbaa !8
  %i.nn = tail call double @llvm.fmuladd.f64(double %i.nl, double %i.mn, double %i.nm)
  %i.no = load double, ptr @A2, align 8, !tbaa !8
  %i.np = tail call double @llvm.fmuladd.f64(double %i.nn, double %i.mn, double %i.no)
  %i.nq = load double, ptr @A1, align 8, !tbaa !8
  %i.nr = tail call double @llvm.fmuladd.f64(double %i.np, double %i.mn, double %i.nq)
  %i.ns = load double, ptr @A0, align 8, !tbaa !8
  %i.nt = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.mn, double %i.ns)
  %i.nu = fmul double %i.mm, %i.nt                ; 2 uses
  store double %i.nu, ptr @sb, align 8, !tbaa !8
  %i.nv = fsub double %i.ng, %i.nu                ; 2 uses
  store double %i.nv, ptr @sc, align 8, !tbaa !8
  %i.nw = fdiv double %i.mz, %i.nb                ; 2 uses
  store double %i.nw, ptr getelementptr inbounds nuw (i8, ptr @T, i64 112), align 16, !tbaa !8
  %i.nx = fmul double %i.nv, 1.000000e-30
  %i.ny = fmul double %i.mj, 1.000000e-30
  %i.nz = fmul double %i.nw, 1.000000e-30
  %i.oa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.7, double noundef %i.nx, double noundef %i.ny, double noundef %i.nz) ; 0 uses
  %i.ob = load double, ptr @piref, align 8, !tbaa !8
  %i.oc = load double, ptr @three, align 8, !tbaa !8
  %i.od = fmul double %i.oc, %i.hr
  %i.oe = fdiv double %i.ob, %i.od                ; 2 uses
  %i.of = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.og = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.oh = load i64, ptr @tnow, align 8, !tbaa !10
  %i.oi = sitofp i64 %i.oh to double
  %i.oj = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.ok = sitofp i64 %i.oj to double
  %i.ol = tail call double @llvm.fmuladd.f64(double %i.ok, double f0x3EB0C6F7A0B5ED8D, double %i.oi) ; 3 uses
  store double %i.ol, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.om = fsub double %i.ol, %i.of
  store double %i.om, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  br i1 %.not300.not344, label %.lr.ph363, label %._crit_edge364

.lr.ph363:                                        ; preds = %._crit_edge357
  %i.on = load double, ptr @A6, align 8, !tbaa !8
  %i.oo = load double, ptr @A5, align 8, !tbaa !8
  %i.op = load double, ptr @A4, align 8, !tbaa !8
  %i.oq = load double, ptr @A3, align 8, !tbaa !8
  %i.or = load double, ptr @A2, align 8, !tbaa !8
  %i.os = load double, ptr @A1, align 8, !tbaa !8
  %i.ot = load double, ptr @one, align 8, !tbaa !8 ; 2 uses
  %i.ou = load double, ptr @B6, align 8, !tbaa !8
  %i.ov = load double, ptr @B5, align 8, !tbaa !8
  %i.ow = load double, ptr @B4, align 8, !tbaa !8
  %i.ox = load double, ptr @B3, align 8, !tbaa !8
  %i.oy = load double, ptr @B2, align 8, !tbaa !8
  %i.oz = load double, ptr @B1, align 8, !tbaa !8
  %0 = insertelement <2 x double> poison, double %i.ot, i64 0
  %i.pa = insertelement <2 x double> %0, double %i.ov, i64 1
  %i.pb = insertelement <2 x double> poison, double %i.ou, i64 1
  br label %bb.i

bb.i:                                             ; preds = %.lr.ph363, %bb.i
  %.6361 = phi i64 [ 1, %.lr.ph363 ], [ %i.py, %bb.i ] ; 2 uses
  %.7280360 = phi double [ 0.000000e+00, %.lr.ph363 ], [ %i.px, %bb.i ]
  %i.pc = uitofp nneg i64 %.6361 to double
  %i.pd = fmul double %i.oe, %i.pc                ; 3 uses
  %i.pe = fmul double %i.pd, %i.pd                ; 11 uses
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.on, double %i.pe, double %i.oo)
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.pf, double %i.pe, double %i.op)
  %i.ph = tail call double @llvm.fmuladd.f64(double %i.pg, double %i.pe, double %i.oq)
  %i.pi = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.pe, double %i.or)
  %i.pj = tail call double @llvm.fmuladd.f64(double %i.pi, double %i.pe, double %i.os)
  %i.pk = insertelement <2 x double> %i.pb, double %i.pj, i64 0
  %i.pl = insertelement <2 x double> poison, double %i.pe, i64 0
  %i.pm = shufflevector <2 x double> %i.pl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.pm, <2 x double> %i.pa) ; 2 uses
  %i.po = extractelement <2 x double> %i.pn, i64 0
  %i.pp = fmul double %i.pd, %i.po
  %i.pq = extractelement <2 x double> %i.pn, i64 1
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.pq, double %i.ow)
  %i.ps = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.pr, double %i.ox)
  %i.pt = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.ps, double %i.oy)
  %i.pu = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.pt, double %i.oz)
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.pu, double %i.ot)
  %i.pw = fdiv double %i.pp, %i.pv
  %i.px = fadd double %.7280360, %i.pw            ; 2 uses
  %i.py = add nuw nsw i64 %.6361, 1               ; 2 uses
  %exitcond409.not = icmp eq i64 %i.py, %i.gw
  br i1 %exitcond409.not, label %._crit_edge364, label %bb.i, !llvm.loop !23

._crit_edge364:                                   ; preds = %bb.i, %._crit_edge357
  %.7280.lcssa = phi double [ 0.000000e+00, %._crit_edge357 ], [ %i.px, %bb.i ]
  %i.pz = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.qa = load i64, ptr @tnow, align 8, !tbaa !10
  %i.qb = sitofp i64 %i.qa to double
  %i.qc = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.qd = sitofp i64 %i.qc to double
  %i.qe = tail call double @llvm.fmuladd.f64(double %i.qd, double f0x3EB0C6F7A0B5ED8D, double %i.qb) ; 2 uses
  store double %i.qe, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.qf = fsub double %i.qe, %i.ol                ; 2 uses
  store double %i.qf, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.qg = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !8
  %i.qh = load double, ptr @nulltime, align 8, !tbaa !8
  %i.qi = fneg double %i.qh
  %i.qj = tail call double @llvm.fmuladd.f64(double %i.qg, double %i.qf, double %i.qi) ; 3 uses
  store double %i.qj, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8, !tbaa !8
  %i.qk = load double, ptr @piref, align 8, !tbaa !8
  %i.ql = load double, ptr @three, align 8, !tbaa !8
  %i.qm = fdiv double %i.qk, %i.ql                ; 3 uses
  %i.qn = fmul double %i.qm, %i.qm                ; 12 uses
  %i.qo = load double, ptr @A6, align 8, !tbaa !8
  %i.qp = load double, ptr @A5, align 8, !tbaa !8
  %i.qq = tail call double @llvm.fmuladd.f64(double %i.qo, double %i.qn, double %i.qp)
  %i.qr = load double, ptr @A4, align 8, !tbaa !8
  %i.qs = tail call double @llvm.fmuladd.f64(double %i.qq, double %i.qn, double %i.qr)
  %i.qt = load double, ptr @A3, align 8, !tbaa !8
  %i.qu = tail call double @llvm.fmuladd.f64(double %i.qs, double %i.qn, double %i.qt)
  %i.qv = load double, ptr @A2, align 8, !tbaa !8
  %i.qw = tail call double @llvm.fmuladd.f64(double %i.qu, double %i.qn, double %i.qv)
  %i.qx = load double, ptr @A1, align 8, !tbaa !8
  %i.qy = tail call double @llvm.fmuladd.f64(double %i.qw, double %i.qn, double %i.qx)
  %i.qz = load double, ptr @one, align 8, !tbaa !8 ; 3 uses
  %i.ra = tail call double @llvm.fmuladd.f64(double %i.qy, double %i.qn, double %i.qz)
  %i.rb = fmul double %i.qm, %i.ra
  %i.rc = load double, ptr @B6, align 8, !tbaa !8
  %i.rd = load double, ptr @B5, align 8, !tbaa !8
  %i.re = tail call double @llvm.fmuladd.f64(double %i.rc, double %i.qn, double %i.rd)
  %i.rf = load double, ptr @B4, align 8, !tbaa !8
  %i.rg = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.re, double %i.rf)
  %i.rh = load double, ptr @B3, align 8, !tbaa !8
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.rg, double %i.rh)
  %i.rj = load double, ptr @B2, align 8, !tbaa !8
  %i.rk = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.ri, double %i.rj)
  %i.rl = load double, ptr @B1, align 8, !tbaa !8
  %i.rm = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.rk, double %i.rl)
  %i.rn = tail call double @llvm.fmuladd.f64(double %i.qn, double %i.rm, double %i.qz)
  %i.ro = fdiv double %i.rb, %i.rn
  %i.rp = fdiv double %i.qj, 2.900000e+01         ; 2 uses
  store double %i.rp, ptr getelementptr inbounds nuw (i8, ptr @T, i64 128), align 16, !tbaa !8
  %i.rq = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.rr = tail call double @llvm.fmuladd.f64(double %i.rq, double %.7280.lcssa, double %i.ro)
  %i.rs = fmul double %i.oe, %i.rr
  %i.rt = fdiv double %i.rs, %i.rq                ; 2 uses
  store double %i.rt, ptr @sa, align 8, !tbaa !8
  store double f0x3FE62E42FEFA39EF, ptr @sb, align 8, !tbaa !8
  %i.ru = fadd double %i.rt, f0xBFE62E42FEFA39EF  ; 2 uses
  store double %i.ru, ptr @sc, align 8, !tbaa !8
  %i.rv = fdiv double %i.qz, %i.rp                ; 2 uses
  store double %i.rv, ptr getelementptr inbounds nuw (i8, ptr @T, i64 136), align 8, !tbaa !8
  %i.rw = fmul double %i.ru, 1.000000e-30
  %i.rx = fmul double %i.qj, 1.000000e-30
  %i.ry = fmul double %i.rv, 1.000000e-30
  %i.rz = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.8, double noundef %i.rw, double noundef %i.rx, double noundef %i.ry) ; 0 uses
  %i.sa = load double, ptr @piref, align 8, !tbaa !8
  %i.sb = load double, ptr @four, align 8, !tbaa !8
  %i.sc = fmul double %i.sb, %i.hr
  %i.sd = fdiv double %i.sa, %i.sc                ; 2 uses
  %i.se = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.sf = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.sg = load i64, ptr @tnow, align 8, !tbaa !10
  %i.sh = sitofp i64 %i.sg to double
  %i.si = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.sj = sitofp i64 %i.si to double
  %i.sk = tail call double @llvm.fmuladd.f64(double %i.sj, double f0x3EB0C6F7A0B5ED8D, double %i.sh) ; 3 uses
  store double %i.sk, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.sl = fsub double %i.sk, %i.se
  store double %i.sl, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  br i1 %.not300.not344, label %.lr.ph370, label %._crit_edge371

.lr.ph370:                                        ; preds = %._crit_edge364
  %i.sm = load double, ptr @A6, align 8, !tbaa !8
  %i.sn = load double, ptr @A5, align 8, !tbaa !8
  %i.so = load double, ptr @A4, align 8, !tbaa !8
  %i.sp = load double, ptr @A3, align 8, !tbaa !8
  %i.sq = load double, ptr @A2, align 8, !tbaa !8
  %i.sr = load double, ptr @A1, align 8, !tbaa !8
  %i.ss = load double, ptr @one, align 8, !tbaa !8 ; 2 uses
  %i.st = load double, ptr @B6, align 8, !tbaa !8
  %i.su = load double, ptr @B5, align 8, !tbaa !8
  %i.sv = load double, ptr @B4, align 8, !tbaa !8
  %i.sw = load double, ptr @B3, align 8, !tbaa !8
  %i.sx = load double, ptr @B2, align 8, !tbaa !8
  %i.sy = load double, ptr @B1, align 8, !tbaa !8
  %1 = insertelement <2 x double> poison, double %i.ss, i64 0
  %i.sz = insertelement <2 x double> %1, double %i.su, i64 1
  %i.ta = insertelement <2 x double> poison, double %i.st, i64 1
  br label %bb.j

bb.j:                                             ; preds = %.lr.ph370, %bb.j
  %.7368 = phi i64 [ 1, %.lr.ph370 ], [ %i.tw, %bb.j ] ; 2 uses
  %.8281367 = phi double [ 0.000000e+00, %.lr.ph370 ], [ %i.tv, %bb.j ]
  %i.tb = uitofp nneg i64 %.7368 to double
  %i.tc = fmul double %i.sd, %i.tb                ; 3 uses
  %i.td = fmul double %i.tc, %i.tc                ; 11 uses
  %i.te = tail call double @llvm.fmuladd.f64(double %i.sm, double %i.td, double %i.sn)
  %i.tf = tail call double @llvm.fmuladd.f64(double %i.te, double %i.td, double %i.so)
  %i.tg = tail call double @llvm.fmuladd.f64(double %i.tf, double %i.td, double %i.sp)
  %i.th = tail call double @llvm.fmuladd.f64(double %i.tg, double %i.td, double %i.sq)
  %i.ti = tail call double @llvm.fmuladd.f64(double %i.th, double %i.td, double %i.sr)
  %i.tj = insertelement <2 x double> %i.ta, double %i.ti, i64 0
  %i.tk = insertelement <2 x double> poison, double %i.td, i64 0
  %i.tl = shufflevector <2 x double> %i.tk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tj, <2 x double> %i.tl, <2 x double> %i.sz) ; 2 uses
  %i.tn = extractelement <2 x double> %i.tm, i64 0
  %i.to = fmul double %i.tc, %i.tn
  %i.tp = extractelement <2 x double> %i.tm, i64 1
  %i.tq = tail call double @llvm.fmuladd.f64(double %i.td, double %i.tp, double %i.sv)
  %i.tr = tail call double @llvm.fmuladd.f64(double %i.td, double %i.tq, double %i.sw)
  %i.ts = tail call double @llvm.fmuladd.f64(double %i.td, double %i.tr, double %i.sx)
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.td, double %i.ts, double %i.sy)
  %i.tu = tail call double @llvm.fmuladd.f64(double %i.td, double %i.tt, double %i.ss)
  %i.tv = tail call double @llvm.fmuladd.f64(double %i.to, double %i.tu, double %.8281367) ; 2 uses
  %i.tw = add nuw nsw i64 %.7368, 1               ; 2 uses
  %exitcond410.not = icmp eq i64 %i.tw, %i.gw
  br i1 %exitcond410.not, label %._crit_edge371, label %bb.j, !llvm.loop !24

._crit_edge371:                                   ; preds = %bb.j, %._crit_edge364
  %.8281.lcssa = phi double [ 0.000000e+00, %._crit_edge364 ], [ %i.tv, %bb.j ]
  %i.tx = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.ty = load i64, ptr @tnow, align 8, !tbaa !10
  %i.tz = sitofp i64 %i.ty to double
  %i.ua = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.ub = sitofp i64 %i.ua to double
  %i.uc = tail call double @llvm.fmuladd.f64(double %i.ub, double f0x3EB0C6F7A0B5ED8D, double %i.tz) ; 2 uses
  store double %i.uc, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.ud = fsub double %i.uc, %i.sk                ; 2 uses
  store double %i.ud, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.ue = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !8
  %i.uf = load double, ptr @nulltime, align 8, !tbaa !8
  %i.ug = fneg double %i.uf
  %i.uh = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.ud, double %i.ug) ; 3 uses
  store double %i.uh, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16, !tbaa !8
  %i.ui = load double, ptr @piref, align 8, !tbaa !8
  %i.uj = load double, ptr @four, align 8, !tbaa !8
  %i.uk = fdiv double %i.ui, %i.uj                ; 3 uses
  %i.ul = fmul double %i.uk, %i.uk                ; 12 uses
  %i.um = load double, ptr @A6, align 8, !tbaa !8
  %i.un = load double, ptr @A5, align 8, !tbaa !8
  %i.uo = tail call double @llvm.fmuladd.f64(double %i.um, double %i.ul, double %i.un)
  %i.up = load double, ptr @A4, align 8, !tbaa !8
  %i.uq = tail call double @llvm.fmuladd.f64(double %i.uo, double %i.ul, double %i.up)
  %i.ur = load double, ptr @A3, align 8, !tbaa !8
  %i.us = tail call double @llvm.fmuladd.f64(double %i.uq, double %i.ul, double %i.ur)
  %i.ut = load double, ptr @A2, align 8, !tbaa !8
  %i.uu = tail call double @llvm.fmuladd.f64(double %i.us, double %i.ul, double %i.ut)
  %i.uv = load double, ptr @A1, align 8, !tbaa !8
  %i.uw = tail call double @llvm.fmuladd.f64(double %i.uu, double %i.ul, double %i.uv)
  %i.ux = load double, ptr @one, align 8, !tbaa !8 ; 3 uses
  %i.uy = tail call double @llvm.fmuladd.f64(double %i.uw, double %i.ul, double %i.ux)
  %i.uz = fmul double %i.uk, %i.uy
  %i.va = load double, ptr @B6, align 8, !tbaa !8
  %i.vb = load double, ptr @B5, align 8, !tbaa !8
  %i.vc = tail call double @llvm.fmuladd.f64(double %i.va, double %i.ul, double %i.vb)
  %i.vd = load double, ptr @B4, align 8, !tbaa !8
  %i.ve = tail call double @llvm.fmuladd.f64(double %i.ul, double %i.vc, double %i.vd)
  %i.vf = load double, ptr @B3, align 8, !tbaa !8
  %i.vg = tail call double @llvm.fmuladd.f64(double %i.ul, double %i.ve, double %i.vf)
  %i.vh = load double, ptr @B2, align 8, !tbaa !8
  %i.vi = tail call double @llvm.fmuladd.f64(double %i.ul, double %i.vg, double %i.vh)
  %i.vj = load double, ptr @B1, align 8, !tbaa !8
  %i.vk = tail call double @llvm.fmuladd.f64(double %i.ul, double %i.vi, double %i.vj)
  %i.vl = tail call double @llvm.fmuladd.f64(double %i.ul, double %i.vk, double %i.ux)
  %i.vm = fmul double %i.uz, %i.vl
  %i.vn = fdiv double %i.uh, 2.900000e+01         ; 2 uses
  store double %i.vn, ptr getelementptr inbounds nuw (i8, ptr @T, i64 152), align 8, !tbaa !8
  %i.vo = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.vp = tail call double @llvm.fmuladd.f64(double %i.vo, double %.8281.lcssa, double %i.vm)
  %i.vq = fmul double %i.sd, %i.vp
  %i.vr = fdiv double %i.vq, %i.vo                ; 2 uses
  store double %i.vr, ptr @sa, align 8, !tbaa !8
  store double 2.500000e-01, ptr @sb, align 8, !tbaa !8
  %i.vs = fadd double %i.vr, -2.500000e-01        ; 2 uses
  store double %i.vs, ptr @sc, align 8, !tbaa !8
  %i.vt = fdiv double %i.ux, %i.vn                ; 2 uses
  store double %i.vt, ptr getelementptr inbounds nuw (i8, ptr @T, i64 160), align 16, !tbaa !8
  %i.vu = fmul double %i.vs, 1.000000e-30
  %i.vv = fmul double %i.uh, 1.000000e-30
  %i.vw = fmul double %i.vt, 1.000000e-30
  %i.vx = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.9, double noundef %i.vu, double noundef %i.vv, double noundef %i.vw) ; 0 uses
  %i.vy = load double, ptr @one, align 8, !tbaa !8 ; 5 uses
  store double f0x40599541F7F192A4, ptr @sa, align 8, !tbaa !8
  %i.vz = fdiv double f0x40599541F7F192A4, %i.hr  ; 2 uses
  %i.wa = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.wb = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.wc = load i64, ptr @tnow, align 8, !tbaa !10
  %i.wd = sitofp i64 %i.wc to double
  %i.we = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.wf = sitofp i64 %i.we to double
  %i.wg = tail call double @llvm.fmuladd.f64(double %i.wf, double f0x3EB0C6F7A0B5ED8D, double %i.wd) ; 3 uses
  store double %i.wg, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.wh = fsub double %i.wg, %i.wa
  store double %i.wh, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  br i1 %.not300.not344, label %.lr.ph377.preheader, label %._crit_edge378

.lr.ph377.preheader:                              ; preds = %._crit_edge371
  %i.wi = insertelement <2 x double> poison, double %i.vy, i64 0 ; 2 uses
  %i.wj = shufflevector <2 x double> %i.wi, <2 x double> poison, <2 x i32> zeroinitializer
  br label %.lr.ph377

.lr.ph377:                                        ; preds = %.lr.ph377.preheader, %.lr.ph377
  %.8375 = phi i64 [ %i.wz, %.lr.ph377 ], [ 1, %.lr.ph377.preheader ] ; 2 uses
  %.9282374 = phi double [ %i.wy, %.lr.ph377 ], [ 0.000000e+00, %.lr.ph377.preheader ]
  %i.wk = uitofp nneg i64 %.8375 to double
  %i.wl = fmul double %i.vz, %i.wk                ; 5 uses
  %i.wm = fmul double %i.wl, %i.wl                ; 3 uses
  %i.wn = insertelement <2 x double> poison, double %i.wl, i64 0
  %i.wo = insertelement <2 x double> %i.wn, double %i.wm, i64 1
  %i.wp = fadd <2 x double> %i.wj, %i.wo
  %i.wq = insertelement <2 x double> %i.wi, double %i.wl, i64 1
  %i.wr = fdiv <2 x double> %i.wq, %i.wp          ; 2 uses
  %i.ws = extractelement <2 x double> %i.wr, i64 0
  %i.wt = fsub double %.9282374, %i.ws
  %i.wu = extractelement <2 x double> %i.wr, i64 1
  %i.wv = fsub double %i.wt, %i.wu
  %i.ww = tail call double @llvm.fmuladd.f64(double %i.wl, double %i.wm, double %i.vy)
  %i.wx = fdiv double %i.wm, %i.ww
  %i.wy = fsub double %i.wv, %i.wx                ; 2 uses
  %i.wz = add nuw nsw i64 %.8375, 1               ; 2 uses
  %exitcond411.not = icmp eq i64 %i.wz, %i.gw
  br i1 %exitcond411.not, label %._crit_edge378, label %.lr.ph377, !llvm.loop !25

._crit_edge378:                                   ; preds = %.lr.ph377, %._crit_edge371
  %.9282.lcssa = phi double [ 0.000000e+00, %._crit_edge371 ], [ %i.wy, %.lr.ph377 ]
  %i.xa = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.xb = load i64, ptr @tnow, align 8, !tbaa !10
  %i.xc = sitofp i64 %i.xb to double
  %i.xd = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.xe = sitofp i64 %i.xd to double
  %i.xf = tail call double @llvm.fmuladd.f64(double %i.xe, double f0x3EB0C6F7A0B5ED8D, double %i.xc) ; 2 uses
  store double %i.xf, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.xg = fsub double %i.xf, %i.wg                ; 2 uses
  store double %i.xg, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.xh = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !8
  %i.xi = load double, ptr @nulltime, align 8, !tbaa !8
  %i.xj = fneg double %i.xi
  %i.xk = tail call double @llvm.fmuladd.f64(double %i.xh, double %i.xg, double %i.xj) ; 3 uses
  store double %i.xk, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8, !tbaa !8
  %i.xl = fdiv double %i.xk, 1.200000e+01         ; 2 uses
  store double %i.xl, ptr getelementptr inbounds nuw (i8, ptr @T, i64 176), align 16, !tbaa !8
  %i.xm = load double, ptr @sa, align 8, !tbaa !8 ; 5 uses
  %i.xn = fmul double %i.xm, %i.xm                ; 3 uses
  %i.xo = fneg double %i.vy
  %i.xp = insertelement <2 x double> poison, double %i.vy, i64 0 ; 2 uses
  %i.xq = shufflevector <2 x double> %i.xp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.xr = insertelement <2 x double> poison, double %i.xm, i64 0
  %i.xs = insertelement <2 x double> %i.xr, double %i.xn, i64 1
  %i.xt = fadd <2 x double> %i.xq, %i.xs
  %i.xu = insertelement <2 x double> %i.xp, double %i.xm, i64 1
  %i.xv = fdiv <2 x double> %i.xu, %i.xt          ; 2 uses
  %i.xw = extractelement <2 x double> %i.xv, i64 0
  %i.xx = fsub double %i.xo, %i.xw
  %i.xy = extractelement <2 x double> %i.xv, i64 1
  %i.xz = fsub double %i.xx, %i.xy
  %i.ya = tail call double @llvm.fmuladd.f64(double %i.xm, double %i.xn, double %i.vy)
  %i.yb = fdiv double %i.xn, %i.ya
  %i.yc = fsub double %i.xz, %i.yb
  %i.yd = fmul nnan double %i.vz, 1.800000e+01
  %i.ye = load double, ptr @two, align 8, !tbaa !8
  %i.yf = tail call double @llvm.fmuladd.f64(double %i.ye, double %.9282.lcssa, double %i.yc)
  %i.yg = fmul double %i.yd, %i.yf                ; 3 uses
  store double %i.yg, ptr @sa, align 8, !tbaa !8
  %i.yh = fptosi double %i.yg to i64
  %i.yi = mul nsw i64 %i.yh, -2000
  %i.yj = sitofp i64 %i.yi to double
  %i.yk = load double, ptr @scale, align 8, !tbaa !8
  %i.yl = fdiv double %i.yj, %i.yk
  %i.ym = fptosi double %i.yl to i64              ; 4 uses
  %i.yn = fadd double %i.yg, 5.002000e+02         ; 2 uses
  store double %i.yn, ptr @sc, align 8, !tbaa !8
  %i.yo = load double, ptr @one, align 8, !tbaa !8
  %i.yp = fdiv double %i.yo, %i.xl                ; 2 uses
  store double %i.yp, ptr getelementptr inbounds nuw (i8, ptr @T, i64 184), align 8, !tbaa !8
  %i.yq = fmul double %i.yn, 1.000000e-30
  %i.yr = fmul double %i.xk, 1.000000e-30
  %i.ys = fmul double %i.yp, 1.000000e-30
  %i.yt = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.10, double noundef %i.yq, double noundef %i.yr, double noundef %i.ys) ; 0 uses
  %i.yu = load double, ptr @piref, align 8, !tbaa !8
  %i.yv = load double, ptr @three, align 8, !tbaa !8
  %i.yw = sitofp i64 %i.ym to double
  %i.yx = fmul double %i.yv, %i.yw
  %i.yy = fdiv double %i.yu, %i.yx                ; 2 uses
  %i.yz = load double, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.za = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.zb = load i64, ptr @tnow, align 8, !tbaa !10
  %i.zc = sitofp i64 %i.zb to double
  %i.zd = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.ze = sitofp i64 %i.zd to double
  %i.zf = tail call double @llvm.fmuladd.f64(double %i.ze, double f0x3EB0C6F7A0B5ED8D, double %i.zc) ; 3 uses
  store double %i.zf, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.zg = fsub double %i.zf, %i.yz
  store double %i.zg, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %.not305.not380 = icmp sgt i64 %i.ym, 1
  br i1 %.not305.not380, label %.lr.ph384, label %._crit_edge385

.lr.ph384:                                        ; preds = %._crit_edge378
  %i.zh = load double, ptr @B6, align 8, !tbaa !8
  %i.zi = load double, ptr @B5, align 8, !tbaa !8
  %i.zj = load double, ptr @B4, align 8, !tbaa !8
  %i.zk = load double, ptr @B3, align 8, !tbaa !8
  %i.zl = load double, ptr @B2, align 8, !tbaa !8
  %i.zm = load double, ptr @B1, align 8, !tbaa !8
  %i.zn = load double, ptr @one, align 8, !tbaa !8 ; 2 uses
  %i.zo = load double, ptr @A6, align 8, !tbaa !8
  %i.zp = load double, ptr @A5, align 8, !tbaa !8
  %i.zq = load double, ptr @A4, align 8, !tbaa !8
  %i.zr = load double, ptr @A3, align 8, !tbaa !8
  %i.zs = load double, ptr @A2, align 8, !tbaa !8
  %i.zt = load double, ptr @A1, align 8, !tbaa !8
  %2 = insertelement <2 x double> poison, double %i.zn, i64 0
  %i.zu = insertelement <2 x double> %2, double %i.zp, i64 1
  %i.zv = insertelement <2 x double> poison, double %i.zo, i64 1
  br label %bb.k

bb.k:                                             ; preds = %.lr.ph384, %bb.k
  %.9382 = phi i64 [ 1, %.lr.ph384 ], [ %i.aar, %bb.k ] ; 2 uses
  %.10381 = phi double [ 0.000000e+00, %.lr.ph384 ], [ %i.aaq, %bb.k ]
  %i.zw = uitofp nneg i64 %.9382 to double
  %i.zx = fmul double %i.yy, %i.zw                ; 3 uses
  %i.zy = fmul double %i.zx, %i.zx                ; 11 uses
  %i.zz = tail call double @llvm.fmuladd.f64(double %i.zh, double %i.zy, double %i.zi)
  %i.aaa = tail call double @llvm.fmuladd.f64(double %i.zy, double %i.zz, double %i.zj)
  %i.aab = tail call double @llvm.fmuladd.f64(double %i.zy, double %i.aaa, double %i.zk)
  %i.aac = tail call double @llvm.fmuladd.f64(double %i.zy, double %i.aab, double %i.zl)
  %i.aad = tail call double @llvm.fmuladd.f64(double %i.zy, double %i.aac, double %i.zm)
  %i.aae = insertelement <2 x double> poison, double %i.zy, i64 0
  %i.aaf = shufflevector <2 x double> %i.aae, <2 x double> poison, <2 x i32> zeroinitializer
  %i.aag = insertelement <2 x double> %i.zv, double %i.aad, i64 0
  %i.aah = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aaf, <2 x double> %i.aag, <2 x double> %i.zu) ; 3 uses
  %foldExtExtBinop = fmul <2 x double> %i.aah, %i.aah
  %i.aai = extractelement <2 x double> %foldExtExtBinop, i64 0
  %i.aaj = fmul double %i.zx, %i.aai
  %i.aak = extractelement <2 x double> %i.aah, i64 1
  %i.aal = tail call double @llvm.fmuladd.f64(double %i.aak, double %i.zy, double %i.zq)
  %i.aam = tail call double @llvm.fmuladd.f64(double %i.aal, double %i.zy, double %i.zr)
  %i.aan = tail call double @llvm.fmuladd.f64(double %i.aam, double %i.zy, double %i.zs)
  %i.aao = tail call double @llvm.fmuladd.f64(double %i.aan, double %i.zy, double %i.zt)
  %i.aap = tail call double @llvm.fmuladd.f64(double %i.aao, double %i.zy, double %i.zn)
  %i.aaq = tail call double @llvm.fmuladd.f64(double %i.aaj, double %i.aap, double %.10381) ; 2 uses
  %i.aar = add nuw nsw i64 %.9382, 1              ; 2 uses
  %exitcond412.not = icmp eq i64 %i.aar, %i.ym
  br i1 %exitcond412.not, label %._crit_edge385, label %bb.k, !llvm.loop !26

._crit_edge385:                                   ; preds = %bb.k, %._crit_edge378
  %.10.lcssa = phi double [ 0.000000e+00, %._crit_edge378 ], [ %i.aaq, %bb.k ]
  %i.aas = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.aat = load i64, ptr @tnow, align 8, !tbaa !10
  %i.aau = sitofp i64 %i.aat to double
  %i.aav = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.aaw = sitofp i64 %i.aav to double
  %i.aax = tail call double @llvm.fmuladd.f64(double %i.aaw, double f0x3EB0C6F7A0B5ED8D, double %i.aau) ; 2 uses
  store double %i.aax, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 16), align 16, !tbaa !8
  %i.aay = fsub double %i.aax, %i.zf              ; 2 uses
  store double %i.aay, ptr getelementptr inbounds nuw (i8, ptr @TimeArray, i64 8), align 8, !tbaa !8
  %i.aaz = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 8), align 8, !tbaa !8
  %i.aba = load double, ptr @nulltime, align 8, !tbaa !8
  %i.abb = fneg double %i.aba
  %i.abc = tail call double @llvm.fmuladd.f64(double %i.aaz, double %i.aay, double %i.abb) ; 3 uses
  store double %i.abc, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16, !tbaa !8
  %i.abd = load double, ptr @piref, align 8, !tbaa !8
  %i.abe = load double, ptr @three, align 8, !tbaa !8
  %i.abf = fdiv double %i.abd, %i.abe             ; 3 uses
  %i.abg = fmul double %i.abf, %i.abf             ; 12 uses
  %i.abh = load double, ptr @A6, align 8, !tbaa !8
  %i.abi = load double, ptr @A5, align 8, !tbaa !8
  %i.abj = tail call double @llvm.fmuladd.f64(double %i.abh, double %i.abg, double %i.abi)
  %i.abk = load double, ptr @A4, align 8, !tbaa !8
  %i.abl = tail call double @llvm.fmuladd.f64(double %i.abj, double %i.abg, double %i.abk)
  %i.abm = load double, ptr @A3, align 8, !tbaa !8
  %i.abn = tail call double @llvm.fmuladd.f64(double %i.abl, double %i.abg, double %i.abm)
  %i.abo = load double, ptr @A2, align 8, !tbaa !8
  %i.abp = tail call double @llvm.fmuladd.f64(double %i.abn, double %i.abg, double %i.abo)
  %i.abq = load double, ptr @A1, align 8, !tbaa !8
  %i.abr = tail call double @llvm.fmuladd.f64(double %i.abp, double %i.abg, double %i.abq)
  %i.abs = load double, ptr @one, align 8, !tbaa !8 ; 3 uses
  %i.abt = tail call double @llvm.fmuladd.f64(double %i.abr, double %i.abg, double %i.abs)
  %i.abu = fmul double %i.abf, %i.abt
  %i.abv = load double, ptr @B6, align 8, !tbaa !8
  %i.abw = load double, ptr @B5, align 8, !tbaa !8
  %i.abx = tail call double @llvm.fmuladd.f64(double %i.abv, double %i.abg, double %i.abw)
  %i.aby = load double, ptr @B4, align 8, !tbaa !8
  %i.abz = tail call double @llvm.fmuladd.f64(double %i.abg, double %i.abx, double %i.aby)
  %i.aca = load double, ptr @B3, align 8, !tbaa !8
  %i.acb = tail call double @llvm.fmuladd.f64(double %i.abg, double %i.abz, double %i.aca)
  %i.acc = load double, ptr @B2, align 8, !tbaa !8
  %i.acd = tail call double @llvm.fmuladd.f64(double %i.abg, double %i.acb, double %i.acc)
  %i.ace = load double, ptr @B1, align 8, !tbaa !8
  %i.acf = tail call double @llvm.fmuladd.f64(double %i.abg, double %i.acd, double %i.ace)
  %i.acg = tail call double @llvm.fmuladd.f64(double %i.abg, double %i.acf, double %i.abs) ; 2 uses
  %i.ach = fmul double %i.abu, %i.acg
  %i.aci = fmul double %i.acg, %i.ach
  %i.acj = fdiv double %i.abc, 3.000000e+01       ; 2 uses
  store double %i.acj, ptr getelementptr inbounds nuw (i8, ptr @T, i64 200), align 8, !tbaa !8
  %i.ack = load double, ptr @two, align 8, !tbaa !8 ; 2 uses
  %i.acl = tail call double @llvm.fmuladd.f64(double %i.ack, double %.10.lcssa, double %i.aci)
  %i.acm = fmul double %i.yy, %i.acl
  %i.acn = fdiv double %i.acm, %i.ack             ; 2 uses
  store double %i.acn, ptr @sa, align 8, !tbaa !8
  store double f0x3FD2AAAAAAAAAAAB, ptr @sb, align 8, !tbaa !8
  %i.aco = fadd double %i.acn, f0xBFD2AAAAAAAAAAAB ; 2 uses
  store double %i.aco, ptr @sc, align 8, !tbaa !8
  %i.acp = fdiv double %i.abs, %i.acj             ; 2 uses
  store double %i.acp, ptr getelementptr inbounds nuw (i8, ptr @T, i64 208), align 16, !tbaa !8
  %i.acq = fmul double %i.aco, 1.000000e-30
  %i.acr = fmul double %i.abc, 1.000000e-30
  %i.acs = fmul double %i.acp, 1.000000e-30
  %i.act = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.11, double noundef %i.acq, double noundef %i.acr, double noundef %i.acs) ; 0 uses
  %i.acu = load double, ptr @five, align 8, !tbaa !8
  %i.acv = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 48), align 16, !tbaa !8
  %i.acw = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 40), align 8, !tbaa !8
  %i.acx = fsub double %i.acv, %i.acw
  %i.acy = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 72), align 8, !tbaa !8 ; 3 uses
  %i.acz = load double, ptr @one, align 8, !tbaa !8 ; 3 uses
  %i.ada = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 16), align 16, !tbaa !8
  %i.adb = fadd double %i.acy, %i.ada
  %i.adc = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 96), align 16, !tbaa !8 ; 2 uses
  %i.add = fadd double %i.adb, %i.adc
  %i.ade = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 120), align 8, !tbaa !8
  %i.adf = fadd double %i.add, %i.ade
  %i.adg = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 144), align 16, !tbaa !8 ; 2 uses
  %i.adh = fadd double %i.adf, %i.adg             ; 2 uses
  %i.adi = load double, ptr @four, align 8, !tbaa !8
  %i.adj = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 168), align 8, !tbaa !8 ; 2 uses
  %i.adk = insertelement <2 x double> poison, double %i.acu, i64 0
  %i.adl = insertelement <2 x double> %i.adk, double %i.adi, i64 1
  %i.adm = insertelement <2 x double> poison, double %i.acx, i64 0
  %i.adn = insertelement <2 x double> %i.adm, double %i.adj, i64 1
  %i.ado = insertelement <2 x double> poison, double %i.acy, i64 0
  %i.adp = insertelement <2 x double> %i.ado, double %i.adh, i64 1
  %i.adq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.adl, <2 x double> %i.adn, <2 x double> %i.adp) ; 2 uses
  %i.adr = extractelement <2 x double> %i.adq, i64 0
  %i.ads = fdiv double %i.adr, 5.200000e+01       ; 2 uses
  store double %i.ads, ptr getelementptr inbounds nuw (i8, ptr @T, i64 216), align 8, !tbaa !8
  %i.adt = insertelement <2 x double> poison, double %i.acz, i64 0 ; 2 uses
  %i.adu = insertelement <2 x double> %i.adq, double %i.acz, i64 0
  %i.adv = insertelement <2 x double> <double poison, double 1.520000e+02>, double %i.ads, i64 0
  %i.adw = fdiv <2 x double> %i.adu, %i.adv       ; 2 uses
  store <2 x double> %i.adw, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16, !tbaa !8
  %i.adx = fadd double %i.adh, %i.adj
  %i.ady = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 192), align 16, !tbaa !8 ; 2 uses
  %i.adz = fadd double %i.adx, %i.ady
  %i.aea = insertelement <2 x double> %i.adt, double %i.adz, i64 1
  %i.aeb = shufflevector <2 x double> %i.adw, <2 x double> <double poison, double 1.460000e+02>, <2 x i32> <i32 1, i32 3>
  %i.aec = fdiv <2 x double> %i.aea, %i.aeb       ; 2 uses
  store <2 x double> %i.aec, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16, !tbaa !8
  %i.aed = fadd double %i.acy, %i.adc
  %i.aee = fadd double %i.aed, %i.adg
  %i.aef = fadd double %i.aee, %i.ady
  %i.aeg = insertelement <2 x double> %i.adt, double %i.aef, i64 1
  %i.aeh = shufflevector <2 x double> %i.aec, <2 x double> <double poison, double 9.100000e+01>, <2 x i32> <i32 1, i32 3>
  %i.aei = fdiv <2 x double> %i.aeg, %i.aeh       ; 2 uses
  store <2 x double> %i.aei, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16, !tbaa !8
  %i.aej = extractelement <2 x double> %i.aei, i64 1
  %i.aek = fdiv double %i.acz, %i.aej
  store double %i.aek, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16, !tbaa !8
  %putchar306 = tail call i32 @putchar(i32 10)    ; 0 uses
  %i.ael = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.12, i64 noundef %i.ym) ; 0 uses
  %i.aem = load double, ptr @nulltime, align 8, !tbaa !8
  %i.aen = fmul double %i.aem, 1.000000e-30
  %i.aeo = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.13, double noundef %i.aen) ; 0 uses
  %i.aep = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 224), align 16, !tbaa !8
  %i.aeq = fmul double %i.aep, 1.000000e-30
  %i.aer = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.14, double noundef %i.aeq) ; 0 uses
  %i.aes = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 240), align 16, !tbaa !8
  %i.aet = fmul double %i.aes, 1.000000e-30
  %i.aeu = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.15, double noundef %i.aet) ; 0 uses
  %i.aev = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 256), align 16, !tbaa !8
  %i.aew = fmul double %i.aev, 1.000000e-30
  %i.aex = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.16, double noundef %i.aew) ; 0 uses
  %i.aey = load double, ptr getelementptr inbounds nuw (i8, ptr @T, i64 272), align 16, !tbaa !8
  %i.aez = fmul double %i.aey, 1.000000e-30
  %i.afa = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.17, double noundef %i.aez) ; 0 uses
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @printf(ptr noundef readonly captures(none), ...) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #2

; Function Attrs: nofree nounwind uwtable
define dso_local noundef i32 @dtime(ptr nofree noundef captures(none) initializes((8, 16)) %0) local_unnamed_addr #0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.b = load double, ptr %i.a, align 8, !tbaa !8
  %i.c = tail call i32 @gettimeofday(ptr noundef nonnull @tnow, ptr noundef null) #5 ; 0 uses
  %i.d = load i64, ptr @tnow, align 8, !tbaa !10
  %i.e = sitofp i64 %i.d to double
  %i.f = load i64, ptr getelementptr inbounds nuw (i8, ptr @tnow, i64 8), align 8, !tbaa !13
  %i.g = sitofp i64 %i.f to double
  %i.h = tail call double @llvm.fmuladd.f64(double %i.g, double f0x3EB0C6F7A0B5ED8D, double %i.e) ; 2 uses
  store double %i.h, ptr %i.a, align 8, !tbaa !8
  %i.i = fsub double %i.h, %i.b
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8
  store double %i.i, ptr %i.j, align 8, !tbaa !8
  ret i32 0
}

; Function Attrs: nofree nounwind
declare noundef i32 @gettimeofday(ptr noundef captures(none), ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #3

; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #4

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nofree nounwind }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #5 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
end_hunk_0
