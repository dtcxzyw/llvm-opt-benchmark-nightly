Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openexr/original/ImathMatrixAlgo?download=true
inline.NumInlined: 1133
inline.NumDeleted: 144
loop-unroll.NumCompletelyUnrolled: 108
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 109
begin_hunk_0_@_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
bb.f:                                             ; preds = %.thread.i88.i, %bb.e
  %.1123142.i96.i = phi double [ %.1123144.i91.i, %.thread.i88.i ], [ %.0122.i101.i, %bb.e ] ; 2 uses
  %.0124139.i97.i = phi double [ %.0124141.i92.i, %.thread.i88.i ], [ %i.hw, %bb.e ]
  %.0118129.i98.i = phi double [ %i.jg, %.thread.i88.i ], [ 0.000000e+00, %bb.e ] ; 2 uses
  %.0119128.i99.i = phi double [ %i.jl, %.thread.i88.i ], [ %.sroa.39.1, %bb.e ]
  %i.jm = phi <2 x double> [ %i.ji, %.thread.i88.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.e ] ; 11 uses
  %i.jn = phi <2 x double> [ %i.jk, %.thread.i88.i ], [ <double 1.000000e+00, double 0.000000e+00>, %bb.e ] ; 2 uses
  %i.jo = fneg double %.1123142.i96.i
  %i.jp = fneg double %.0118129.i98.i             ; 2 uses
  %i.jq = insertelement <2 x double> poison, double %.sroa.57.1, i64 0
  %i.jr = insertelement <2 x double> %i.jq, double %.sroa.39.1, i64 1
  %i.js = fneg <2 x double> %i.jr
  %i.jt = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %.1123142.i96.i, i64 1 ; 2 uses
  %i.jv = insertelement <2 x double> %i.jm, double %i.jp, i64 0
  %i.jw = fmul <2 x double> %i.ju, %i.jv
  %i.jx = insertelement <2 x double> %i.ju, double %i.jo, i64 1
  %i.jy = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.jz = fmul <2 x double> %i.jx, %i.jy
  %i.ka = insertelement <2 x double> poison, double %.sroa.0.2, i64 0
  %i.kb = insertelement <2 x double> %i.ka, double %.0124139.i97.i, i64 1 ; 2 uses
  %i.kc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.jy, <2 x double> %i.jw) ; 5 uses
  %i.kd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> %i.jm, <2 x double> %i.jz) ; 5 uses
  %i.ke = shufflevector <2 x double> %i.kd, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kf = extractelement <2 x double> %i.kc, i64 1
  %i.kg = extractelement <2 x double> %i.kd, i64 1
  %i.kh = insertelement <2 x double> poison, double %.sroa.66.1, i64 0
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = shufflevector <2 x double> %i.jn, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.kk = insertelement <2 x double> %i.kj, double %i.jp, i64 0
  %i.kl = fmul <2 x double> %i.ki, %i.kk
  %i.km = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.kn = shufflevector <2 x double> %i.km, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ko = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kn, <2 x double> %i.jn, <2 x double> %i.kl) ; 2 uses
  %i.kp = extractelement <2 x double> %i.ko, i64 0
  %i.kq = fneg double %i.kp
  %i.kr = shufflevector <2 x double> %i.kc, <2 x double> %i.kd, <2 x i32> <i32 1, i32 3> ; 4 uses
  %i.ks = insertelement <2 x double> %i.ko, double %i.kq, i64 0
  %i.kt = fmul <2 x double> %i.kr, %i.ks
  %i.ku = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ke, <2 x double> %i.kc, <2 x double> %i.kt)
  %i.kv = fmul double %.sroa.57.1, %i.kg
  %i.kw = tail call double @llvm.fmuladd.f64(double %i.kf, double 0.000000e+00, double %i.kv)
  %i.kx = shufflevector <2 x double> %i.kc, <2 x double> %i.jm, <2 x i32> <i32 1, i32 2>
  %i.ky = fmul <2 x double> %i.kx, %i.js
  %i.kz = shufflevector <2 x double> %i.kd, <2 x double> %i.jm, <2 x i32> <i32 1, i32 3>
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kz, <2 x double> zeroinitializer, <2 x double> %i.ky)
  %i.lb = tail call double @llvm.fmuladd.f64(double %.0118129.i98.i, double 0.000000e+00, double %.0119128.i99.i)
  %i.lc = load double, ptr %1, align 8, !tbaa !9  ; 2 uses
  %i.ld = load <2 x double>, ptr %i.au, align 8, !tbaa !9 ; 3 uses
  %i.le = load double, ptr %i.ao, align 8, !tbaa !9
  %i.lf = extractelement <2 x double> %i.ld, i64 0
  %i.lg = fneg double %i.lf
  %i.lh = shufflevector <2 x double> %i.kd, <2 x double> %i.kc, <2 x i32> <i32 1, i32 3> ; 3 uses
  %i.li = insertelement <2 x double> %i.ld, double %i.lc, i64 0
  %i.lj = load double, ptr %i.u, align 8, !tbaa !9 ; 2 uses
  %i.lk = fneg double %i.lj
  %i.ll = load <2 x double>, ptr %i.t, align 8, !tbaa !9 ; 3 uses
  %i.lm = load double, ptr %i.ap, align 8, !tbaa !9
  %i.ln = fneg <2 x double> %i.ll
  %i.lo = shufflevector <2 x double> %i.ld, <2 x double> %i.ln, <2 x i32> <i32 0, i32 2>
  %i.lp = fmul <2 x double> %i.lh, %i.lo
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> %i.li, <2 x double> %i.lp)
  store <2 x double> %i.lq, ptr %i.au, align 8, !tbaa !9
  %i.lr = insertelement <2 x double> %i.ll, double %i.lk, i64 1
  %i.ls = fmul <2 x double> %i.lh, %i.lr
  %i.lt = insertelement <2 x double> %i.ll, double %i.le, i64 0
  %i.lu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kr, <2 x double> %i.lt, <2 x double> %i.ls)
  store <2 x double> %i.lu, ptr %i.t, align 8, !tbaa !9
  %i.lv = insertelement <2 x double> poison, double %i.lg, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.lj, i64 1
  %i.lx = fmul <2 x double> %i.kr, %i.lw
  %i.ly = insertelement <2 x double> poison, double %i.lc, i64 0
  %i.lz = insertelement <2 x double> %i.ly, double %i.lm, i64 1
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lh, <2 x double> %i.lz, <2 x double> %i.lx) ; 2 uses
  %i.mb = extractelement <2 x double> %i.ma, i64 0
  store double %i.mb, ptr %1, align 8, !tbaa !9
  %i.mc = extractelement <2 x double> %i.ma, i64 1
  store double %i.mc, ptr %i.u, align 8, !tbaa !9
  %i.md = load double, ptr %3, align 8, !tbaa !9  ; 2 uses
  %i.me = load <2 x double>, ptr %i.av, align 8, !tbaa !9 ; 3 uses
  %i.mf = load double, ptr %i.ar, align 8, !tbaa !9
  %i.mg = extractelement <2 x double> %i.me, i64 0
  %i.mh = fneg double %i.mg
  %i.mi = insertelement <2 x double> %i.me, double %i.md, i64 0
  %i.mj = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.mk = fneg double %i.mj
  %i.ml = load <2 x double>, ptr %i.x, align 8, !tbaa !9 ; 3 uses
  %i.mm = load <2 x double>, ptr %i.as, align 8
  %i.mn = fneg <2 x double> %i.ml
  %i.mo = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mp = shufflevector <2 x double> %i.me, <2 x double> %i.mn, <2 x i32> <i32 0, i32 2>
  %i.mq = fmul <2 x double> %i.mo, %i.mp
  %i.mr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.mi, <2 x double> %i.mq)
  store <2 x double> %i.mr, ptr %i.av, align 8, !tbaa !9
  %i.ms = shufflevector <2 x double> %i.ml, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.mt = insertelement <2 x double> %i.ms, double %i.mk, i64 0
  %i.mu = fmul <2 x double> %i.jm, %i.mt
  %i.mv = shufflevector <2 x double> %i.mu, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mw = insertelement <2 x double> %i.ml, double %i.mf, i64 0
  %i.mx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.mw, <2 x double> %i.mv)
  store <2 x double> %i.mx, ptr %i.x, align 8, !tbaa !9
  %i.my = insertelement <2 x double> poison, double %i.mh, i64 0
  %i.mz = insertelement <2 x double> %i.my, double %i.mj, i64 1
  %i.na = fmul <2 x double> %i.jm, %i.mz
  %i.nb = shufflevector <2 x double> %i.na, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.nc = insertelement <2 x double> %i.mm, double %i.md, i64 1
  %i.nd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jm, <2 x double> %i.nc, <2 x double> %i.nb) ; 2 uses
  %i.ne = extractelement <2 x double> %i.nd, i64 1
  store double %i.ne, ptr %3, align 8, !tbaa !9
  %i.nf = extractelement <2 x double> %i.nd, i64 0
  store double %i.nf, ptr %i.y, align 8, !tbaa !9
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.f
  %.sroa.57.2 = phi double [ %i.kw, %bb.f ], [ %.sroa.57.1, %.thread134.i85.i ] ; 5 uses
  %.sroa.39.2 = phi double [ %i.lb, %bb.f ], [ %.sroa.39.1, %.thread134.i85.i ] ; 6 uses
  %.1130.i87.i = phi i1 [ true, %bb.f ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.ng = phi <2 x double> [ %i.la, %bb.f ], [ zeroinitializer, %.thread134.i85.i ] ; 3 uses
  %i.nh = phi <2 x double> [ %i.ku, %bb.f ], [ %i.iw, %.thread134.i85.i ] ; 5 uses
  %i.ni = extractelement <2 x double> %i.nh, i64 1 ; 6 uses
  %i.nj = fadd double %.sroa.33.2, %i.ni          ; 2 uses
  %i.nk = fsub double %.sroa.39.2, %.sroa.57.2    ; 2 uses
  %i.nl = tail call noundef double @llvm.fabs.f64(double %i.nk)
  %i.nm = tail call noundef double @llvm.fabs.f64(double %i.nj)
  %i.nn = fmul double %4, %i.nm
  %i.no = fcmp ugt double %i.nl, %i.nn
  br i1 %i.no, label %bb.g, label %.thread134.i102.i

bb.g:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.np = fdiv double %i.nj, %i.nk                ; 4 uses
  %i.nq = tail call double @llvm.fmuladd.f64(double %i.np, double %i.np, double 1.000000e+00)
  %sqrt.i117.i = tail call double @llvm.sqrt.f64(double %i.nq)
  %i.nr = fdiv double 1.000000e+00, %sqrt.i117.i  ; 2 uses
  %i.ns = fcmp olt double %i.np, 0.000000e+00
  %i.nt = fneg double %i.nr
  %.0122.i118.i = select i1 %i.ns, double %i.nt, double %i.nr ; 5 uses
  %i.nu = fsub double %i.ni, %.sroa.33.2
  %i.nv = fneg double %i.ni
  %i.nw = fmul double %i.np, %.0122.i118.i        ; 4 uses
  %i.nx = fadd double %.sroa.57.2, %.sroa.39.2
  %i.ny = fmul double %i.nu, %i.nw
  %i.nz = fmul double %.0122.i118.i, %i.nv
  %i.oa = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.ob = insertelement <2 x double> %i.oa, double %i.nw, i64 1
  %i.oc = insertelement <2 x double> poison, double %.0122.i118.i, i64 0
  %i.od = insertelement <2 x double> %i.oc, double %.sroa.39.2, i64 1
  %i.oe = insertelement <2 x double> poison, double %i.ny, i64 0
  %i.of = insertelement <2 x double> %i.oe, double %i.nz, i64 1
  %i.og = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ob, <2 x double> %i.od, <2 x double> %i.of) ; 2 uses
  %i.oh = fmul <2 x double> %i.og, <double 1.000000e+00, double 2.000000e+00> ; 2 uses
  %i.oi = tail call <2 x double> @llvm.fabs.v2f64(<2 x double> %i.oh) ; 2 uses
  %i.oj = extractelement <2 x double> %i.oi, i64 0
  %i.ok = fmul double %4, %i.oj
  %i.ol = extractelement <2 x double> %i.oi, i64 1
  %i.om = fcmp ugt double %i.ol, %i.ok
  %i.on = extractelement <2 x double> %i.oh, i64 1
  %i.oo = extractelement <2 x double> %i.og, i64 0
  br i1 %i.om, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.op = fsub double %i.ni, %.sroa.33.2          ; 2 uses
  %i.oq = fadd double %.sroa.57.2, %.sroa.39.2    ; 2 uses
  %i.or = tail call noundef double @llvm.fabs.f64(double %i.oq)
  %i.os = tail call noundef double @llvm.fabs.f64(double %i.op)
  %i.ot = fmul double %4, %i.os
  %i.ou = fcmp ugt double %i.or, %i.ot
  br i1 %i.ou, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.g
  %.0120146.i106.i = phi double [ %i.op, %.thread134.i102.i ], [ %i.oo, %bb.g ]
  %.0121145.i107.i = phi double [ %i.oq, %.thread134.i102.i ], [ %i.on, %bb.g ]
  %.1123144.i108.i = phi double [ 0.000000e+00, %.thread134.i102.i ], [ %.0122.i118.i, %bb.g ]
  %.0124141.i109.i = phi double [ 1.000000e+00, %.thread134.i102.i ], [ %i.nw, %bb.g ]
  %i.ov = fdiv double %.0120146.i106.i, %.0121145.i107.i ; 4 uses
  %i.ow = tail call noundef double @llvm.fabs.f64(double %i.ov)
  %i.ox = tail call double @llvm.fmuladd.f64(double %i.ov, double %i.ov, double 1.000000e+00)
  %sqrt133.i110.i = tail call double @llvm.sqrt.f64(double %i.ox)
  %i.oy = fadd double %i.ow, %sqrt133.i110.i
  %i.oz = fdiv double 1.000000e+00, %i.oy         ; 2 uses
  %i.pa = fcmp olt double %i.ov, 0.000000e+00
  %i.pb = fneg double %i.oz
  %.0117.i111.i = select i1 %i.pa, double %i.pb, double %i.oz ; 3 uses
  %i.pc = tail call double @llvm.fmuladd.f64(double %.0117.i111.i, double %.0117.i111.i, double 1.000000e+00)
  %sqrt132.i112.i = tail call double @llvm.sqrt.f64(double %i.pc)
  %i.pd = fdiv double 1.000000e+00, %sqrt132.i112.i ; 3 uses
  %i.pe = fmul double %.0117.i111.i, %i.pd        ; 2 uses
  %i.pf = insertelement <2 x double> poison, double %i.pe, i64 0
  %i.pg = insertelement <2 x double> %i.pf, double %i.pd, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.g
  %.1123142.i113.i = phi double [ %.1123144.i108.i, %.thread.i105.i ], [ %.0122.i118.i, %bb.g ] ; 2 uses
  %.0124139.i114.i = phi double [ %.0124141.i109.i, %.thread.i105.i ], [ %i.nw, %bb.g ]
  %.0118129.i115.i = phi double [ %i.pe, %.thread.i105.i ], [ 0.000000e+00, %bb.g ] ; 2 uses
  %.0119128.i116.i = phi double [ %i.pd, %.thread.i105.i ], [ 1.000000e+00, %bb.g ] ; 5 uses
  %i.ph = phi <2 x double> [ %i.pg, %.thread.i105.i ], [ <double 0.000000e+00, double 1.000000e+00>, %bb.g ] ; 8 uses
  %i.pi = fneg double %.1123142.i113.i
  %i.pj = fneg double %.0118129.i115.i            ; 2 uses
  %i.pk = fmul double %i.ni, %i.pj
  %i.pl = tail call double @llvm.fmuladd.f64(double %.sroa.57.2, double %.0119128.i116.i, double %i.pk)
  %6 = fneg double %i.pl
  %i.pm = fmul double %i.ni, %.0119128.i116.i
  %i.pn = fmul double %.1123142.i113.i, %.0119128.i116.i
  %i.po = fmul double %.sroa.39.2, %i.pj
  %i.pp = insertelement <2 x double> poison, double %.0124139.i114.i, i64 0
  %i.pq = insertelement <2 x double> %i.pp, double %.sroa.33.2, i64 1 ; 2 uses
  %i.pr = insertelement <2 x double> %i.ph, double %.0119128.i116.i, i64 1 ; 3 uses
  %i.ps = insertelement <2 x double> poison, double %i.pn, i64 0
  %i.pt = insertelement <2 x double> %i.ps, double %i.po, i64 1
  %i.pu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.pr, <2 x double> %i.pt) ; 4 uses
  %i.pv = insertelement <2 x double> poison, double %i.pi, i64 0
  %i.pw = insertelement <2 x double> %i.pv, double %.sroa.39.2, i64 1
  %i.px = fmul <2 x double> %i.pr, %i.pw
  %i.py = shufflevector <2 x double> %i.pr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pq, <2 x double> %i.py, <2 x double> %i.px) ; 3 uses
  %i.qa = shufflevector <2 x double> %i.pz, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.qb = tail call double @llvm.fmuladd.f64(double %.sroa.57.2, double %.0118129.i115.i, double %i.pm)
  %i.qc = shufflevector <2 x double> %i.pz, <2 x double> %i.pu, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.qd = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.qe = insertelement <2 x double> %i.qd, double %6, i64 1
  %i.qf = fmul <2 x double> %i.qc, %i.qe
  %i.qg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.qa, <2 x double> %i.qf)
  %i.qh = shufflevector <2 x double> %i.ph, <2 x double> %i.pu, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.qi = fmul <2 x double> %i.qh, splat (double -0.000000e+00)
  %i.qj = insertelement <2 x double> %i.qa, double %.0119128.i116.i, i64 0 ; 2 uses
  %i.qk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qj, <2 x double> %i.ng, <2 x double> %i.qi)
  %i.ql = fmul <2 x double> %i.qj, zeroinitializer
  %i.qm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qh, <2 x double> %i.ng, <2 x double> %i.ql)
  %i.qn = load <2 x double>, ptr %i.r, align 8
  %i.qo = load double, ptr %i.au, align 8, !tbaa !9 ; 2 uses
  %i.qp = fneg double %i.qo
  %i.qq = shufflevector <2 x double> %i.pu, <2 x double> %i.pz, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.qr = insertelement <2 x double> poison, double %i.qp, i64 0
  %i.qs = insertelement <2 x double> %i.qr, double %i.qo, i64 1
  %i.qt = fmul <2 x double> %i.qq, %i.qs
  %i.qu = shufflevector <2 x double> %i.qn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.qu, <2 x double> %i.qt)
  store <2 x double> %i.qv, ptr %i.r, align 8, !tbaa !9
  %i.qw = load <2 x double>, ptr %i.s, align 8
  %i.qx = load double, ptr %i.t, align 8, !tbaa !9 ; 2 uses
  %i.qy = fneg double %i.qx
  %i.qz = insertelement <2 x double> poison, double %i.qy, i64 0
  %i.ra = insertelement <2 x double> %i.qz, double %i.qx, i64 1
  %i.rb = fmul <2 x double> %i.qq, %i.ra
  %i.rc = shufflevector <2 x double> %i.qw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.rc, <2 x double> %i.rb)
  store <2 x double> %i.rd, ptr %i.s, align 8, !tbaa !9
  %i.re = load <2 x double>, ptr %i.aq, align 8
  %i.rf = load double, ptr %i.u, align 8, !tbaa !9 ; 2 uses
  %i.rg = fneg double %i.rf
  %i.rh = insertelement <2 x double> poison, double %i.rg, i64 0
  %i.ri = insertelement <2 x double> %i.rh, double %i.rf, i64 1
  %i.rj = fmul <2 x double> %i.qq, %i.ri
  %i.rk = shufflevector <2 x double> %i.re, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qc, <2 x double> %i.rk, <2 x double> %i.rj)
  store <2 x double> %i.rl, ptr %i.aq, align 8, !tbaa !9
  %i.rm = load <2 x double>, ptr %i.v, align 8
  %i.rn = load double, ptr %i.av, align 8, !tbaa !9 ; 2 uses
  %i.ro = fneg double %i.rn
  %i.rp = insertelement <2 x double> poison, double %i.ro, i64 0
  %i.rq = insertelement <2 x double> %i.rp, double %i.rn, i64 1
  %i.rr = fmul <2 x double> %i.ph, %i.rq
  %i.rs = shufflevector <2 x double> %i.rr, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.rt = shufflevector <2 x double> %i.rm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ru = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.rt, <2 x double> %i.rs)
  %i.rv = shufflevector <2 x double> %i.ru, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.rv, ptr %i.v, align 8, !tbaa !9
  %i.rw = load <2 x double>, ptr %i.w, align 8
  %i.rx = load double, ptr %i.x, align 8, !tbaa !9 ; 2 uses
  %i.ry = fneg double %i.rx
  %i.rz = insertelement <2 x double> poison, double %i.ry, i64 0
  %i.sa = insertelement <2 x double> %i.rz, double %i.rx, i64 1
  %i.sb = fmul <2 x double> %i.ph, %i.sa
  %i.sc = shufflevector <2 x double> %i.sb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sd = shufflevector <2 x double> %i.rw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.se = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.sd, <2 x double> %i.sc)
  %i.sf = shufflevector <2 x double> %i.se, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sf, ptr %i.w, align 8, !tbaa !9
  %i.sg = load <2 x double>, ptr %i.at, align 8
  %i.sh = load double, ptr %i.y, align 8, !tbaa !9 ; 2 uses
  %i.si = fneg double %i.sh
  %i.sj = insertelement <2 x double> poison, double %i.si, i64 0
  %i.sk = insertelement <2 x double> %i.sj, double %i.sh, i64 1
  %i.sl = fmul <2 x double> %i.ph, %i.sk
  %i.sm = shufflevector <2 x double> %i.sl, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sn = shufflevector <2 x double> %i.sg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.so = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ph, <2 x double> %i.sn, <2 x double> %i.sm)
  %i.sp = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.sp, ptr %i.at, align 8, !tbaa !9
  br label %bb.h

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.sq = shufflevector <2 x double> %i.nh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.sr = insertelement <2 x double> %i.sq, double %.sroa.33.2, i64 1 ; 2 uses
  br i1 %.1130.i87.i, label %bb.h, label %.loopexit130.i.loopexit.split.loop.exit

bb.h:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.ss = phi <2 x double> [ %i.qg, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.sr, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.st = phi <2 x double> [ %i.qm, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ zeroinitializer, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 2 uses
  %i.su = phi <2 x double> [ %i.qk, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.ng, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 4 uses
  %i.sv = extractelement <2 x double> %i.su, i64 0 ; 3 uses
  %i.sw = tail call noundef double @llvm.fabs.f64(double %i.sv)
  %i.sx = fcmp one double %i.sv, 0.000000e+00
  %.sroa.speculated28.i119.i = select i1 %i.sx, double %i.sw, double 0.000000e+00 ; 2 uses
  %i.sy = extractelement <2 x double> %i.st, i64 0 ; 2 uses
  %i.sz = tail call noundef double @llvm.fabs.f64(double %i.sy) ; 2 uses
  %i.ta = fcmp olt double %.sroa.speculated28.i119.i, %i.sz
  %.sroa.speculated24.i120.i = select i1 %i.ta, double %i.sz, double %.sroa.speculated28.i119.i ; 2 uses
  %i.tb = extractelement <2 x double> %i.su, i64 1 ; 2 uses
  %i.tc = tail call noundef double @llvm.fabs.f64(double %i.tb) ; 2 uses
  %i.td = fcmp olt double %.sroa.speculated24.i120.i, %i.tc
  %.sroa.speculated20.i121.i = select i1 %i.td, double %i.tc, double %.sroa.speculated24.i120.i ; 2 uses
  %i.te = extractelement <2 x double> %i.st, i64 1 ; 2 uses
  %i.tf = tail call noundef double @llvm.fabs.f64(double %i.te) ; 2 uses
  %i.tg = fcmp olt double %.sroa.speculated20.i121.i, %i.tf
  %.sroa.speculated12.i123.i = select i1 %i.tg, double %i.tf, double %.sroa.speculated20.i121.i
  %i.th = fcmp ogt double %.sroa.speculated12.i123.i, %i.al
  %i.ti = icmp samesign ult i32 %.082.i, 19
  %i.tj = select i1 %i.th, i1 %i.ti, i1 false
  %i.tk = extractelement <2 x double> %i.ss, i64 0
  %i.tl = extractelement <2 x double> %i.nh, i64 0 ; 2 uses
  %i.tm = shufflevector <2 x double> %i.su, <2 x double> %i.nh, <2 x i32> <i32 1, i32 2>
  %i.tn = shufflevector <2 x double> %i.ss, <2 x double> %i.su, <2 x i32> <i32 1, i32 2>
  br i1 %i.tj, label %bb.b, label %.loopexit130.i, !llvm.loop !45

.loopexit130.i.loopexit.split.loop.exit:          ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIdLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.to = extractelement <2 x double> %i.nh, i64 0
  br label %.loopexit130.i

.loopexit130.i:                                   ; preds = %.loopexit130.i.loopexit.split.loop.exit, %bb.h, %bb.a
  %.sroa.0.0 = phi double [ %i.f, %bb.a ], [ %i.to, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.tl, %bb.h ] ; 3 uses
  %i.tp = phi <2 x double> [ %i.an, %bb.a ], [ %i.sr, %.loopexit130.i.loopexit.split.loop.exit ], [ %i.ss, %bb.h ] ; 2 uses
  store double %.sroa.0.0, ptr %2, align 8, !tbaa !13
  %i.tq = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 9 uses
  %i.tr = getelementptr inbounds nuw i8, ptr %2, i64 16 ; 8 uses
  %i.ts = shufflevector <2 x double> %i.tp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  store <2 x double> %i.ts, ptr %i.tq, align 8, !tbaa !9
  %i.tt = fcmp olt double %.sroa.0.0, 0.000000e+00
  %i.tu = extractelement <2 x double> %i.tp, i64 1
  br i1 %i.tt, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.tv = fneg double %.sroa.0.0
  store double %i.tv, ptr %2, align 8, !tbaa !9
  %i.tw = load double, ptr %1, align 8, !tbaa !9
  %i.tx = fneg double %i.tw
  store double %i.tx, ptr %1, align 8, !tbaa !9
  %gep.1.i = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 2 uses
  %i.ty = load double, ptr %gep.1.i, align 8, !tbaa !9
  %i.tz = fneg double %i.ty
  store double %i.tz, ptr %gep.1.i, align 8, !tbaa !9
  %gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 2 uses
  %i.ua = load double, ptr %gep.2.i, align 8, !tbaa !9
  %i.ub = fneg double %i.ua
  store double %i.ub, ptr %gep.2.i, align 8, !tbaa !9
  %.pre153.i = load double, ptr %i.tq, align 8, !tbaa !9
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.uc = phi double [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.tu, %.loopexit130.i ] ; 2 uses
  %i.ud = fcmp olt double %i.uc, 0.000000e+00
  br i1 %i.ud, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.ue = fneg double %i.uc
  store double %i.ue, ptr %i.tq, align 8, !tbaa !9
  %i.uf = load double, ptr %i.r, align 8, !tbaa !9
  %i.ug = fneg double %i.uf
  store double %i.ug, ptr %i.r, align 8, !tbaa !9
  %i.uh = load double, ptr %i.s, align 8, !tbaa !9
  %i.ui = fneg double %i.uh
  store double %i.ui, ptr %i.s, align 8, !tbaa !9
  %gep.2.1.i = getelementptr inbounds nuw i8, ptr %1, i64 56 ; 2 uses
  %i.uj = load double, ptr %gep.2.1.i, align 8, !tbaa !9
  %i.uk = fneg double %i.uj
  store double %i.uk, ptr %gep.2.1.i, align 8, !tbaa !9
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.ul = load double, ptr %i.tr, align 8, !tbaa !9 ; 2 uses
  %i.um = fcmp olt double %i.ul, 0.000000e+00
  br i1 %i.um, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.un = fneg double %i.ul
  store double %i.un, ptr %i.tr, align 8, !tbaa !9
  %invariant.gep.2.i = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.uo = load double, ptr %invariant.gep.2.i, align 8, !tbaa !9
  %i.up = fneg double %i.uo
  store double %i.up, ptr %invariant.gep.2.i, align 8, !tbaa !9
  %i.uq = load double, ptr %i.t, align 8, !tbaa !9
  %i.ur = fneg double %i.uq
  store double %i.ur, ptr %i.t, align 8, !tbaa !9
  %i.us = load double, ptr %i.u, align 8, !tbaa !9
  %i.ut = fneg double %i.us
  store double %i.ut, ptr %i.u, align 8, !tbaa !9
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.uu = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 5 uses
  %i.uv = getelementptr inbounds nuw i8, ptr %1, i64 48 ; 5 uses
  %i.uw = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 5 uses
  %i.ux = getelementptr inbounds nuw i8, ptr %3, i64 48 ; 5 uses
  %i.uy = load double, ptr %2, align 8, !tbaa !9  ; 2 uses
  %i.uz = load double, ptr %i.tq, align 8, !tbaa !9 ; 3 uses
  %i.va = fcmp olt double %i.uy, %i.uz
  br i1 %i.va, label %bb.j, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.k, %.lr.ph.1145.i
  %i.vb = phi double [ %.pre, %bb.k ], [ %i.wc, %.lr.ph.1145.i ] ; 2 uses
  %i.vc = load double, ptr %2, align 8, !tbaa !9  ; 2 uses
  %i.vd = fcmp olt double %i.vc, %i.vb
  br i1 %i.vd, label %bb.i, label %._crit_edge.1.i

bb.i:                                             ; preds = %.lr.ph.preheader.1.i
  store double %i.vb, ptr %2, align 8, !tbaa !9
end_hunk_0
begin_hunk_1_@_ZN9Imath_3_29jacobiSVDIdEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b:bb.a
  %i.ys = shufflevector <2 x double> %i.yl, <2 x double> %i.yd, <2 x i32> <i32 1, i32 2>
  %i.yt = fmul <2 x double> %i.yr, %i.ys
  %i.yu = insertelement <2 x double> %i.yp, double %i.yc, i64 1
  %i.yv = shufflevector <2 x double> %i.yl, <2 x double> %i.ye, <2 x i32> <i32 0, i32 2>
  %i.yw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.yu, <2 x double> %i.yv, <2 x double> %i.yt) ; 2 uses
  %i.yx = extractelement <2 x double> %i.yw, i64 0
  %i.yy = extractelement <2 x double> %i.yw, i64 1
  %i.yz = tail call noundef double @llvm.fmuladd.f64(double %i.yn, double %i.yy, double %i.yx)
  %i.za = fcmp olt double %i.yz, 0.000000e+00
  br i1 %i.za, label %.preheader.preheader.i, label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

.preheader.preheader.i:                           ; preds = %bb.m
  %i.zb = fneg double %i.yn
  store double %i.zb, ptr %i.ym, align 8, !tbaa !9
  %i.zc = extractelement <2 x double> %i.yd, i64 1
  %i.zd = fneg double %i.zc
  store double %i.zd, ptr %i.x, align 8, !tbaa !9
  %i.ze = extractelement <2 x double> %i.yf, i64 1
  store double %i.ze, ptr %i.y, align 8, !tbaa !9
  %i.zf = load double, ptr %i.tr, align 8, !tbaa !11
  %i.zg = fneg double %i.zf
  store double %i.zg, ptr %i.tr, align 8, !tbaa !11
  br label %_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit

_ZN9Imath_3_212_GLOBAL__N_117twoSidedJacobiSVDIdEEvNS_8Matrix33IT_EERS4_RNS_4Vec3IS3_EES5_S3_b.exit: ; preds = %._crit_edge.1.i, %bb.m, %.preheader.preheader.i
  ret void
}

; Function Attrs: mustprogress uwtable
define weak_odr void @_ZN9Imath_3_29jacobiSVDIfEEvRKNS_8Matrix33IT_EERS3_RNS_4Vec3IS2_EES6_S2_b(ptr noundef nonnull align 4 dereferenceable(36) %0, ptr noundef nonnull align 4 dereferenceable(36) %1, ptr noundef nonnull align 4 dereferenceable(12) %2, ptr noundef nonnull align 4 dereferenceable(36) %3, float noundef %4, i1 noundef zeroext %5) local_unnamed_addr #0 comdat {
bb.a:
  %i.a = load float, ptr %0, align 4, !tbaa !15   ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.c = load float, ptr %i.b, align 4, !tbaa !15 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.e = load float, ptr %i.d, align 4, !tbaa !15 ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.g = load float, ptr %i.f, align 4, !tbaa !15 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load float, ptr %i.h, align 4, !tbaa !15 ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load <2 x float>, ptr %i.j, align 4, !tbaa !15 ; 3 uses
  %i.m = load float, ptr %i.k, align 4, !tbaa !15
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.o = load float, ptr %i.n, align 4, !tbaa !15 ; 2 uses
  %i.p = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.q = load float, ptr %i.p, align 4, !tbaa !15 ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %1, i64 4 ; 8 uses
  %i.s = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 7 uses
  %i.t = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 10 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %1, align 4, !tbaa !15
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 9 uses
  %i.v = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 7 uses
  %i.w = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 10 uses
  %i.x = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.u, align 4, !tbaa !15
  %i.y = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 8 uses
  store float 1.000000e+00, ptr %i.y, align 4, !tbaa !15
  %i.z = getelementptr inbounds nuw i8, ptr %3, i64 4 ; 6 uses
  %i.aa = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %3, i64 12 ; 8 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %3, align 4, !tbaa !15
  %i.ac = getelementptr inbounds nuw i8, ptr %3, i64 16 ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %3, i64 20 ; 5 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %3, i64 24 ; 8 uses
  %i.af = getelementptr inbounds nuw i8, ptr %3, i64 28 ; 6 uses
  store <4 x float> <float 1.000000e+00, float 0.000000e+00, float 0.000000e+00, float 0.000000e+00>, ptr %i.ac, align 4, !tbaa !15
  %i.ag = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 6 uses
  store float 1.000000e+00, ptr %i.ag, align 4, !tbaa !15
  %i.ah = tail call noundef float @llvm.fabs.f32(float %i.c)
  %i.ai = fcmp one float %i.c, 0.000000e+00
  %.sroa.speculated28.i.i = select i1 %i.ai, float %i.ah, float 0.000000e+00 ; 2 uses
  %i.aj = tail call noundef float @llvm.fabs.f32(float %i.e) ; 2 uses
  %i.ak = fcmp olt float %.sroa.speculated28.i.i, %i.aj
  %.sroa.speculated24.i.i = select i1 %i.ak, float %i.aj, float %.sroa.speculated28.i.i ; 2 uses
  %i.al = tail call noundef float @llvm.fabs.f32(float %i.g) ; 2 uses
  %i.am = fcmp olt float %.sroa.speculated24.i.i, %i.al
  %.sroa.speculated20.i.i = select i1 %i.am, float %i.al, float %.sroa.speculated24.i.i ; 2 uses
  %i.an = extractelement <2 x float> %i.l, i64 0
  %i.ao = tail call noundef float @llvm.fabs.f32(float %i.an) ; 2 uses
  %i.ap = fcmp olt float %.sroa.speculated20.i.i, %i.ao
  %.sroa.speculated16.i.i = select i1 %i.ap, float %i.ao, float %.sroa.speculated20.i.i ; 2 uses
  %i.aq = tail call noundef float @llvm.fabs.f32(float %i.m) ; 2 uses
  %i.ar = fcmp olt float %.sroa.speculated16.i.i, %i.aq
  %.sroa.speculated12.i.i = select i1 %i.ar, float %i.aq, float %.sroa.speculated16.i.i ; 2 uses
  %i.as = tail call noundef float @llvm.fabs.f32(float %i.o) ; 2 uses
  %i.at = fcmp olt float %.sroa.speculated12.i.i, %i.as
  %.sroa.speculated.i.i = select i1 %i.at, float %i.as, float %.sroa.speculated12.i.i
  %i.au = fmul float %4, %.sroa.speculated.i.i    ; 2 uses
  %i.av = fcmp une float %i.au, 0.000000e+00
  %i.aw = insertelement <2 x float> poison, float %i.q, i64 0
  %i.ax = insertelement <2 x float> %i.aw, float %i.i, i64 1
  br i1 %i.av, label %.preheader129.i.preheader, label %.loopexit130.i

.preheader129.i.preheader:                        ; preds = %bb.a
  %i.ay = shufflevector <2 x float> %i.l, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.az = insertelement <4 x float> %i.ay, float %i.o, i64 0
  %i.ba = insertelement <4 x float> %i.az, float %i.e, i64 3
  %i.bb = shufflevector <2 x float> %i.l, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.bc = insertelement <2 x float> %i.bb, float %i.e, i64 1
  br label %.preheader129.i

.preheader129.i:                                  ; preds = %.preheader129.i.preheader, %bb.g
  %.sroa.66.1 = phi float [ %i.rs, %bb.g ], [ %i.q, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.33.1 = phi float [ %i.rt, %bb.g ], [ %i.i, %.preheader129.i.preheader ] ; 7 uses
  %.sroa.0.1 = phi float [ %.sroa.0.3, %bb.g ], [ %i.a, %.preheader129.i.preheader ] ; 6 uses
  %i.bd = phi float [ %i.rj, %bb.g ], [ %i.g, %.preheader129.i.preheader ] ; 5 uses
  %i.be = phi float [ %i.rd, %bb.g ], [ %i.c, %.preheader129.i.preheader ] ; 6 uses
  %.082.i = phi i32 [ %i.bi, %bb.g ], [ 0, %.preheader129.i.preheader ] ; 2 uses
  %i.bf = phi <2 x float> [ %i.ru, %bb.g ], [ %i.bc, %.preheader129.i.preheader ]
  %i.bg = phi <4 x float> [ %i.rv, %bb.g ], [ %i.ba, %.preheader129.i.preheader ] ; 3 uses
  %i.bh = shufflevector <2 x float> %i.bf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.bi = add nuw nsw i32 %.082.i, 1
  %i.bj = fadd float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.bk = fsub float %i.be, %i.bd                 ; 2 uses
  %i.bl = tail call noundef float @llvm.fabs.f32(float %i.bk)
  %i.bm = tail call noundef float @llvm.fabs.f32(float %i.bj)
  %i.bn = fmul float %4, %i.bm
  %i.bo = fcmp ugt float %i.bl, %i.bn
  br i1 %i.bo, label %bb.b, label %.thread134.i.i

bb.b:                                             ; preds = %.preheader129.i
  %i.bp = fdiv float %i.bj, %i.bk                 ; 4 uses
  %i.bq = tail call float @llvm.fmuladd.f32(float %i.bp, float %i.bp, float 1.000000e+00)
  %sqrt.i.i = tail call float @llvm.sqrt.f32(float %i.bq)
  %i.br = fdiv float 1.000000e+00, %sqrt.i.i      ; 2 uses
  %i.bs = fcmp olt float %i.bp, 0.000000e+00
  %i.bt = fneg float %i.br
  %.0122.i.i = select i1 %i.bs, float %i.bt, float %i.br ; 5 uses
  %i.bu = fmul float %i.bp, %.0122.i.i            ; 4 uses
  %i.bv = fadd float %i.bd, %i.be
  %i.bw = fsub float %.sroa.33.1, %.sroa.0.1
  %i.bx = fmul float %i.bw, %i.bu
  %i.by = tail call float @llvm.fmuladd.f32(float %.0122.i.i, float %i.bv, float %i.bx) ; 2 uses
  %i.bz = fneg float %.sroa.33.1
  %i.ca = fmul float %.0122.i.i, %i.bz
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.bu, float %i.be, float %i.ca)
  %i.cc = fmul float %i.cb, 2.000000e+00          ; 2 uses
  %i.cd = tail call noundef float @llvm.fabs.f32(float %i.cc)
  %i.ce = tail call noundef float @llvm.fabs.f32(float %i.by)
  %i.cf = fmul float %4, %i.ce
  %i.cg = fcmp ugt float %i.cd, %i.cf
  br i1 %i.cg, label %.thread.i.i, label %bb.c

.thread134.i.i:                                   ; preds = %.preheader129.i
  %i.ch = fsub float %.sroa.33.1, %.sroa.0.1      ; 2 uses
  %i.ci = fadd float %i.bd, %i.be                 ; 2 uses
  %i.cj = tail call noundef float @llvm.fabs.f32(float %i.ci)
  %i.ck = tail call noundef float @llvm.fabs.f32(float %i.ch)
  %i.cl = fmul float %4, %i.ck
  %i.cm = fcmp ugt float %i.cj, %i.cl
  br i1 %i.cm, label %.thread.i.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i.i:                                      ; preds = %.thread134.i.i, %bb.b
  %.0120146.i.i = phi float [ %i.ch, %.thread134.i.i ], [ %i.by, %bb.b ]
  %.0121145.i.i = phi float [ %i.ci, %.thread134.i.i ], [ %i.cc, %bb.b ]
  %.1123144.i.i = phi float [ 0.000000e+00, %.thread134.i.i ], [ %.0122.i.i, %bb.b ]
  %.0124141.i.i = phi float [ 1.000000e+00, %.thread134.i.i ], [ %i.bu, %bb.b ]
  %i.cn = fdiv float %.0120146.i.i, %.0121145.i.i ; 4 uses
  %i.co = tail call noundef float @llvm.fabs.f32(float %i.cn)
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.cn, float %i.cn, float 1.000000e+00)
  %sqrt133.i.i = tail call float @llvm.sqrt.f32(float %i.cp)
  %i.cq = fadd float %i.co, %sqrt133.i.i
  %i.cr = fdiv float 1.000000e+00, %i.cq          ; 2 uses
  %i.cs = fcmp olt float %i.cn, 0.000000e+00
  %i.ct = fneg float %i.cr
  %.0117.i.i = select i1 %i.cs, float %i.ct, float %i.cr ; 3 uses
  %i.cu = tail call float @llvm.fmuladd.f32(float %.0117.i.i, float %.0117.i.i, float 1.000000e+00)
  %sqrt132.i.i = tail call float @llvm.sqrt.f32(float %i.cu)
  %i.cv = fdiv float 1.000000e+00, %sqrt132.i.i   ; 3 uses
  %i.cw = fmul float %.0117.i.i, %i.cv            ; 2 uses
  %i.cx = insertelement <2 x float> poison, float %i.cw, i64 0
  %i.cy = insertelement <2 x float> %i.cx, float %i.cv, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.thread.i.i, %bb.b
  %.1123142.i.i = phi float [ %.1123144.i.i, %.thread.i.i ], [ %.0122.i.i, %bb.b ] ; 2 uses
  %.0124139.i.i = phi float [ %.0124141.i.i, %.thread.i.i ], [ %i.bu, %bb.b ] ; 2 uses
  %.0118129.i.i = phi float [ %i.cw, %.thread.i.i ], [ 0.000000e+00, %bb.b ] ; 3 uses
  %.0119128.i.i = phi float [ %i.cv, %.thread.i.i ], [ 1.000000e+00, %bb.b ] ; 4 uses
  %i.cz = phi <2 x float> [ %i.cy, %.thread.i.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.b ] ; 10 uses
  %i.da = fmul float %.1123142.i.i, %.0119128.i.i
  %i.db = fneg float %.1123142.i.i
  %i.dc = fneg float %.0118129.i.i                ; 2 uses
  %i.dd = fmul float %i.be, %i.dc
  %i.de = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0119128.i.i, float %i.dd)
  %i.df = fmul float %.sroa.33.1, %i.dc
  %i.dg = tail call float @llvm.fmuladd.f32(float %i.bd, float %.0119128.i.i, float %i.df)
  %i.dh = fneg float %i.dg
  %i.di = fmul float %i.be, %.0119128.i.i
  %i.dj = tail call float @llvm.fmuladd.f32(float %.sroa.0.1, float %.0118129.i.i, float %i.di)
  %i.dk = insertelement <2 x float> poison, float %i.db, i64 0
  %i.dl = insertelement <2 x float> %i.dk, float %.sroa.33.1, i64 1
  %i.dm = fmul <2 x float> %i.cz, %i.dl
  %i.dn = shufflevector <2 x float> %i.dm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.do = insertelement <2 x float> poison, float %i.bd, i64 0
  %i.dp = insertelement <2 x float> %i.do, float %.0124139.i.i, i64 1
  %i.dq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dp, <2 x float> %i.cz, <2 x float> %i.dn) ; 5 uses
  %i.dr = shufflevector <2 x float> %i.dq, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %6 = extractelement <2 x float> %i.dq, i64 1    ; 2 uses
  %i.ds = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.dt = shufflevector <4 x float> %i.bg, <4 x float> %i.ds, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.du = shufflevector <2 x float> %i.cz, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %7 = shufflevector <4 x float> %i.du, <4 x float> %i.dr, <4 x i32> <i32 0, i32 5, i32 poison, i32 poison> ; 2 uses
  %i.dv = fneg <4 x float> %i.bg
  %8 = shufflevector <4 x float> %7, <4 x float> %i.dv, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.dw = extractelement <2 x float> %i.dq, i64 0
  %9 = fmul float %6, %i.dw
  %i.dx = load <4 x float>, ptr %1, align 4
  %i.dy = load float, ptr %i.r, align 4, !tbaa !15 ; 2 uses
  %i.dz = fneg float %i.dy
  %i.ea = insertelement <2 x float> poison, float %i.dz, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %i.dy, i64 1
  %i.ec = shufflevector <2 x float> %i.dq, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ed = shufflevector <4 x float> %i.dx, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ee = load <4 x float>, ptr %i.t, align 4
  %i.ef = load float, ptr %i.u, align 4, !tbaa !15 ; 2 uses
  %i.eg = fneg float %i.ef
  %i.eh = insertelement <2 x float> poison, float %i.eg, i64 0
  %i.ei = insertelement <2 x float> %i.eh, float %i.ef, i64 1
  %i.ej = shufflevector <4 x float> %i.ee, <4 x float> poison, <2 x i32> zeroinitializer
  %i.ek = load float, ptr %i.w, align 4, !tbaa !15
  %i.el = load float, ptr %i.x, align 4, !tbaa !15 ; 2 uses
  %i.em = fneg float %i.el
  %i.en = tail call float @llvm.fmuladd.f32(float %.0118129.i.i, float %.0124139.i.i, float %i.da) ; 5 uses
  %i.eo = insertelement <4 x float> %i.dt, float %i.en, i64 3 ; 2 uses
  %i.ep = fmul <4 x float> %i.eo, %8
  %i.eq = fmul float %i.en, %i.dh
  %i.er = tail call float @llvm.fmuladd.f32(float %6, float %i.de, float %i.eq)
  %i.es = tail call float @llvm.fmuladd.f32(float %i.en, float %i.dj, float %9)
  %i.et = shufflevector <4 x float> %i.eo, <4 x float> %7, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.eu = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.bh, <4 x float> %i.ep)
  %i.ev = insertelement <2 x float> %i.dq, float %i.en, i64 0 ; 3 uses
  %i.ew = fmul <2 x float> %i.ev, %i.eb
  %i.ex = insertelement <2 x float> %i.ec, float %i.en, i64 1 ; 3 uses
  %i.ey = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ed, <2 x float> %i.ew)
  store <2 x float> %i.ey, ptr %1, align 4, !tbaa !15
  %i.ez = fmul <2 x float> %i.ev, %i.ei
  %i.fa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ej, <2 x float> %i.ez)
  store <2 x float> %i.fa, ptr %i.t, align 4, !tbaa !15
  %i.fb = insertelement <2 x float> poison, float %i.em, i64 0
  %i.fc = insertelement <2 x float> %i.fb, float %i.el, i64 1
  %i.fd = fmul <2 x float> %i.ev, %i.fc
  %i.fe = insertelement <2 x float> poison, float %i.ek, i64 0
  %i.ff = shufflevector <2 x float> %i.fe, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ex, <2 x float> %i.ff, <2 x float> %i.fd)
  store <2 x float> %i.fg, ptr %i.w, align 4, !tbaa !15
  %i.fh = load <4 x float>, ptr %3, align 4
  %i.fi = load float, ptr %i.z, align 4, !tbaa !15 ; 2 uses
  %i.fj = fneg float %i.fi
  %i.fk = insertelement <2 x float> poison, float %i.fj, i64 0
  %i.fl = insertelement <2 x float> %i.fk, float %i.fi, i64 1
  %i.fm = fmul <2 x float> %i.cz, %i.fl
  %i.fn = shufflevector <2 x float> %i.fm, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fo = shufflevector <4 x float> %i.fh, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.fo, <2 x float> %i.fn)
  %i.fq = shufflevector <2 x float> %i.fp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.fq, ptr %3, align 4, !tbaa !15
  %i.fr = load <4 x float>, ptr %i.ab, align 4
  %i.fs = load float, ptr %i.ac, align 4, !tbaa !15 ; 2 uses
  %i.ft = fneg float %i.fs
  %i.fu = insertelement <2 x float> poison, float %i.ft, i64 0
  %i.fv = insertelement <2 x float> %i.fu, float %i.fs, i64 1
  %i.fw = fmul <2 x float> %i.cz, %i.fv
  %i.fx = shufflevector <2 x float> %i.fw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.fy = shufflevector <4 x float> %i.fr, <4 x float> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.fy, <2 x float> %i.fx)
  %i.ga = shufflevector <2 x float> %i.fz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ga, ptr %i.ab, align 4, !tbaa !15
  %i.gb = load float, ptr %i.ae, align 4, !tbaa !15
  %i.gc = load float, ptr %i.af, align 4, !tbaa !15 ; 2 uses
  %i.gd = fneg float %i.gc
  %i.ge = insertelement <2 x float> poison, float %i.gd, i64 0
  %i.gf = insertelement <2 x float> %i.ge, float %i.gc, i64 1
  %i.gg = fmul <2 x float> %i.cz, %i.gf
  %i.gh = shufflevector <2 x float> %i.gg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.gi = insertelement <2 x float> poison, float %i.gb, i64 0
  %i.gj = shufflevector <2 x float> %i.gi, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cz, <2 x float> %i.gj, <2 x float> %i.gh)
  %i.gl = shufflevector <2 x float> %i.gk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.gl, ptr %i.ae, align 4, !tbaa !15
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i.i, %bb.c
  %.sroa.33.2 = phi float [ %i.es, %bb.c ], [ %.sroa.33.1, %.thread134.i.i ] ; 5 uses
  %.sroa.0.2 = phi float [ %i.er, %bb.c ], [ %.sroa.0.1, %.thread134.i.i ] ; 6 uses
  %.1130.i.i = phi i1 [ true, %bb.c ], [ false, %.thread134.i.i ]
  %i.gm = phi <4 x float> [ %i.eu, %bb.c ], [ %i.bg, %.thread134.i.i ] ; 7 uses
  %i.gn = fadd float %.sroa.66.1, %.sroa.0.2      ; 2 uses
  %i.go = extractelement <4 x float> %i.gm, i64 2 ; 4 uses
  %i.gp = extractelement <4 x float> %i.gm, i64 3 ; 6 uses
  %i.gq = fsub float %i.gp, %i.go                 ; 2 uses
  %i.gr = tail call noundef float @llvm.fabs.f32(float %i.gq)
  %i.gs = tail call noundef float @llvm.fabs.f32(float %i.gn)
  %i.gt = fmul float %4, %i.gs
  %i.gu = fcmp ugt float %i.gr, %i.gt
  br i1 %i.gu, label %bb.d, label %.thread134.i85.i

bb.d:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.gv = fdiv float %i.gn, %i.gq                 ; 4 uses
  %i.gw = tail call float @llvm.fmuladd.f32(float %i.gv, float %i.gv, float 1.000000e+00)
  %sqrt.i100.i = tail call float @llvm.sqrt.f32(float %i.gw)
  %i.gx = fdiv float 1.000000e+00, %sqrt.i100.i   ; 2 uses
  %i.gy = fcmp olt float %i.gv, 0.000000e+00
  %i.gz = fneg float %i.gx
  %.0122.i101.i = select i1 %i.gy, float %i.gz, float %i.gx ; 5 uses
  %i.ha = fmul float %i.gv, %.0122.i101.i         ; 4 uses
  %i.hb = fadd float %i.go, %i.gp
  %i.hc = fsub float %.sroa.66.1, %.sroa.0.2
  %i.hd = fmul float %i.hc, %i.ha
  %i.he = tail call float @llvm.fmuladd.f32(float %.0122.i101.i, float %i.hb, float %i.hd) ; 2 uses
  %i.hf = fneg float %.sroa.66.1
  %i.hg = fmul float %.0122.i101.i, %i.hf
  %i.hh = tail call float @llvm.fmuladd.f32(float %i.ha, float %i.gp, float %i.hg)
  %i.hi = fmul float %i.hh, 2.000000e+00          ; 2 uses
  %i.hj = tail call noundef float @llvm.fabs.f32(float %i.hi)
  %i.hk = tail call noundef float @llvm.fabs.f32(float %i.he)
  %i.hl = fmul float %4, %i.hk
  %i.hm = fcmp ugt float %i.hj, %i.hl
  br i1 %i.hm, label %.thread.i88.i, label %bb.e

.thread134.i85.i:                                 ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi1ELi2EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.hn = fsub float %.sroa.66.1, %.sroa.0.2      ; 2 uses
  %i.ho = fadd float %i.go, %i.gp                 ; 2 uses
  %i.hp = tail call noundef float @llvm.fabs.f32(float %i.ho)
  %i.hq = tail call noundef float @llvm.fabs.f32(float %i.hn)
  %i.hr = fmul float %4, %i.hq
  %i.hs = fcmp ugt float %i.hp, %i.hr
  %i.ht = extractelement <4 x float> %i.gm, i64 0
  %i.hu = extractelement <4 x float> %i.gm, i64 1
  br i1 %i.hs, label %.thread.i88.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i88.i:                                    ; preds = %.thread134.i85.i, %bb.d
  %.0120146.i89.i = phi float [ %i.hn, %.thread134.i85.i ], [ %i.he, %bb.d ]
  %.0121145.i90.i = phi float [ %i.ho, %.thread134.i85.i ], [ %i.hi, %bb.d ]
  %.1123144.i91.i = phi float [ 0.000000e+00, %.thread134.i85.i ], [ %.0122.i101.i, %bb.d ]
  %.0124141.i92.i = phi float [ 1.000000e+00, %.thread134.i85.i ], [ %i.ha, %bb.d ]
  %i.hv = fdiv float %.0120146.i89.i, %.0121145.i90.i ; 4 uses
  %i.hw = tail call noundef float @llvm.fabs.f32(float %i.hv)
  %i.hx = tail call float @llvm.fmuladd.f32(float %i.hv, float %i.hv, float 1.000000e+00)
  %sqrt133.i93.i = tail call float @llvm.sqrt.f32(float %i.hx)
  %i.hy = fadd float %i.hw, %sqrt133.i93.i
  %i.hz = fdiv float 1.000000e+00, %i.hy          ; 2 uses
  %i.ia = fcmp olt float %i.hv, 0.000000e+00
  %i.ib = fneg float %i.hz
  %.0117.i94.i = select i1 %i.ia, float %i.ib, float %i.hz ; 3 uses
  %i.ic = tail call float @llvm.fmuladd.f32(float %.0117.i94.i, float %.0117.i94.i, float 1.000000e+00)
  %sqrt132.i95.i = tail call float @llvm.sqrt.f32(float %i.ic)
  %i.id = fdiv float 1.000000e+00, %sqrt132.i95.i ; 3 uses
  %i.ie = fmul float %.0117.i94.i, %i.id          ; 2 uses
  %i.if = insertelement <2 x float> poison, float %i.ie, i64 0
  %i.ig = insertelement <2 x float> %i.if, float %i.id, i64 1
  br label %bb.e

bb.e:                                             ; preds = %.thread.i88.i, %bb.d
  %.1123142.i96.i = phi float [ %.1123144.i91.i, %.thread.i88.i ], [ %.0122.i101.i, %bb.d ] ; 2 uses
  %.0124139.i97.i = phi float [ %.0124141.i92.i, %.thread.i88.i ], [ %i.ha, %bb.d ] ; 2 uses
  %.0118129.i98.i = phi float [ %i.ie, %.thread.i88.i ], [ 0.000000e+00, %bb.d ] ; 7 uses
  %.0119128.i99.i = phi float [ %i.id, %.thread.i88.i ], [ 1.000000e+00, %bb.d ] ; 7 uses
  %i.ih = phi <2 x float> [ %i.ig, %.thread.i88.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.d ] ; 7 uses
  %i.ii = fmul float %.1123142.i96.i, %.0119128.i99.i
  %i.ij = fneg float %.1123142.i96.i
  %i.ik = fneg float %.0118129.i98.i              ; 2 uses
  %i.il = fmul float %i.gp, %i.ik
  %i.im = tail call float @llvm.fmuladd.f32(float %.sroa.0.2, float %.0119128.i99.i, float %i.il)
  %i.in = fmul float %.sroa.66.1, %i.ik
  %i.io = tail call float @llvm.fmuladd.f32(float %i.go, float %.0119128.i99.i, float %i.in)
  %i.ip = fneg float %i.io
  %i.iq = fmul float %i.gp, %.0119128.i99.i
  %i.ir = tail call float @llvm.fmuladd.f32(float %.sroa.0.2, float %.0118129.i98.i, float %i.iq)
  %i.is = extractelement <4 x float> %i.gm, i64 0 ; 2 uses
  %i.it = fneg float %i.is
  %i.iu = extractelement <4 x float> %i.gm, i64 1 ; 2 uses
  %i.iv = fneg float %i.iu
  %i.iw = insertelement <2 x float> poison, float %i.ij, i64 0
  %i.ix = insertelement <2 x float> %i.iw, float %.sroa.66.1, i64 1
  %i.iy = fmul <2 x float> %i.ih, %i.ix
  %i.iz = shufflevector <2 x float> %i.iy, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ja = shufflevector <4 x float> %i.gm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.jb = insertelement <2 x float> %i.ja, float %.0124139.i97.i, i64 1
  %i.jc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jb, <2 x float> %i.ih, <2 x float> %i.iz) ; 4 uses
  %10 = extractelement <2 x float> %i.jc, i64 1   ; 7 uses
  %i.jd = extractelement <2 x float> %i.jc, i64 0
  %11 = fmul float %10, %i.jd
  %12 = fmul float %i.is, %10
  %i.je = fmul float %.0118129.i98.i, %i.iv
  %13 = shufflevector <2 x float> %i.jc, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %14 = shufflevector <2 x float> %13, <2 x float> %i.ih, <2 x i32> <i32 0, i32 3>
  %i.jf = fmul float %i.iu, %.0119128.i99.i
  %i.jg = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float 0.000000e+00, float %i.jf)
  %i.jh = load float, ptr %1, align 4, !tbaa !15  ; 2 uses
  %i.ji = load <2 x float>, ptr %i.s, align 4, !tbaa !15 ; 2 uses
  %i.jj = load float, ptr %i.t, align 4, !tbaa !15
  %i.jk = extractelement <2 x float> %i.ji, i64 0 ; 2 uses
  %i.jl = fneg float %i.jk
  %15 = fmul float %10, %i.jk
  %16 = insertelement <2 x float> %i.ji, float %i.jh, i64 0
  %i.jm = insertelement <2 x float> poison, float %15, i64 0
  %i.jn = load float, ptr %i.y, align 4, !tbaa !15 ; 2 uses
  %i.jo = fneg float %i.jn
  %i.jp = load <2 x float>, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.jq = load float, ptr %i.w, align 4, !tbaa !15
  %i.jr = extractelement <2 x float> %i.jp, i64 0 ; 2 uses
  %i.js = fneg float %i.jr
  %i.jt = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float %.0124139.i97.i, float %i.ii) ; 9 uses
  %i.ju = fmul float %i.jt, %i.ip
  %i.jv = tail call float @llvm.fmuladd.f32(float %10, float %i.im, float %i.ju)
  %i.jw = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.ir, float %11)
  %i.jx = fmul float %i.jt, %i.it
  %i.jy = tail call float @llvm.fmuladd.f32(float %i.jt, float 0.000000e+00, float %12)
  %i.jz = insertelement <2 x float> poison, float %i.jx, i64 0
  %i.ka = insertelement <2 x float> %i.jz, float %i.je, i64 1
  %i.kb = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %14, <2 x float> zeroinitializer, <2 x float> %i.ka)
  %i.kc = fmul float %i.jt, %i.jl
  %i.kd = tail call float @llvm.fmuladd.f32(float %10, float %i.jh, float %i.kc)
  store float %i.kd, ptr %1, align 4, !tbaa !15
  %i.ke = fmul float %i.jt, %i.js
  %i.kf = insertelement <2 x float> %i.jc, float %i.jt, i64 0 ; 2 uses
  %i.kg = insertelement <2 x float> %i.jm, float %i.ke, i64 1
  %i.kh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %16, <2 x float> %i.kg)
  store <2 x float> %i.kh, ptr %i.s, align 4, !tbaa !15
  %i.ki = fmul float %10, %i.jr
  %i.kj = fmul float %i.jt, %i.jo
  %i.kk = insertelement <2 x float> %i.jp, float %i.jj, i64 0
  %i.kl = insertelement <2 x float> poison, float %i.ki, i64 0
  %i.km = insertelement <2 x float> %i.kl, float %i.kj, i64 1
  %i.kn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.kk, <2 x float> %i.km)
  store <2 x float> %i.kn, ptr %i.v, align 4, !tbaa !15
  %i.ko = fmul float %10, %i.jn
  %i.kp = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.jq, float %i.ko)
  store float %i.kp, ptr %i.y, align 4, !tbaa !15
  %i.kq = load float, ptr %3, align 4, !tbaa !15  ; 2 uses
  %i.kr = load <2 x float>, ptr %i.aa, align 4, !tbaa !15 ; 3 uses
  %i.ks = load float, ptr %i.ab, align 4, !tbaa !15
  %i.kt = extractelement <2 x float> %i.kr, i64 0
  %i.ku = fneg float %i.kt
  %i.kv = fmul float %.0118129.i98.i, %i.ku
  %i.kw = tail call float @llvm.fmuladd.f32(float %.0119128.i99.i, float %i.kq, float %i.kv)
  store float %i.kw, ptr %3, align 4, !tbaa !15
  %i.kx = shufflevector <2 x float> %i.kr, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.ky = insertelement <2 x float> %i.kr, float %i.kq, i64 0
  %i.kz = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.la = fneg float %i.kz
  %i.lb = load <2 x float>, ptr %i.ad, align 4, !tbaa !15 ; 3 uses
  %i.lc = load float, ptr %i.ae, align 4, !tbaa !15
  %i.ld = extractelement <2 x float> %i.lb, i64 0
  %i.le = fneg float %i.ld
  %i.lf = insertelement <2 x float> %i.kx, float %i.le, i64 0
  %i.lg = fmul <2 x float> %i.ih, %i.lf
  %i.lh = shufflevector <2 x float> %i.lg, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.li = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ky, <2 x float> %i.lh)
  store <2 x float> %i.li, ptr %i.aa, align 4, !tbaa !15
  %i.lj = shufflevector <2 x float> %i.lb, <2 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.lk = insertelement <2 x float> %i.lj, float %i.la, i64 0
  %i.ll = fmul <2 x float> %i.ih, %i.lk
  %i.lm = shufflevector <2 x float> %i.ll, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ln = insertelement <2 x float> %i.lb, float %i.ks, i64 0
  %i.lo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ih, <2 x float> %i.ln, <2 x float> %i.lm)
  store <2 x float> %i.lo, ptr %i.ad, align 4, !tbaa !15
  %i.lp = fmul float %.0119128.i99.i, %i.kz
  %i.lq = tail call float @llvm.fmuladd.f32(float %.0118129.i98.i, float %i.lc, float %i.lp)
  store float %i.lq, ptr %i.ag, align 4, !tbaa !15
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i85.i, %bb.e
  %.sroa.66.2 = phi float [ %i.jw, %bb.e ], [ %.sroa.66.1, %.thread134.i85.i ] ; 7 uses
  %.sroa.57.2 = phi float [ %i.jy, %bb.e ], [ %i.ht, %.thread134.i85.i ] ; 5 uses
  %.sroa.39.2 = phi float [ %i.jg, %bb.e ], [ %i.hu, %.thread134.i85.i ] ; 6 uses
  %.sroa.0.3 = phi float [ %i.jv, %bb.e ], [ %.sroa.0.2, %.thread134.i85.i ] ; 3 uses
  %.1130.i87.i = phi i1 [ true, %bb.e ], [ %.1130.i.i, %.thread134.i85.i ]
  %i.lr = phi <2 x float> [ %i.kb, %bb.e ], [ zeroinitializer, %.thread134.i85.i ] ; 2 uses
  %i.ls = shufflevector <2 x float> %i.lr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 0>
  %i.lt = fadd float %.sroa.33.2, %.sroa.66.2     ; 2 uses
  %i.lu = fsub float %.sroa.39.2, %.sroa.57.2     ; 2 uses
  %i.lv = tail call noundef float @llvm.fabs.f32(float %i.lu)
  %i.lw = tail call noundef float @llvm.fabs.f32(float %i.lt)
  %i.lx = fmul float %4, %i.lw
  %i.ly = fcmp ugt float %i.lv, %i.lx
  br i1 %i.ly, label %bb.f, label %.thread134.i102.i

bb.f:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.lz = fdiv float %i.lt, %i.lu                 ; 4 uses
  %i.ma = tail call float @llvm.fmuladd.f32(float %i.lz, float %i.lz, float 1.000000e+00)
  %sqrt.i117.i = tail call float @llvm.sqrt.f32(float %i.ma)
  %i.mb = fdiv float 1.000000e+00, %sqrt.i117.i   ; 2 uses
  %i.mc = fcmp olt float %i.lz, 0.000000e+00
  %i.md = fneg float %i.mb
  %.0122.i118.i = select i1 %i.mc, float %i.md, float %i.mb ; 5 uses
  %i.me = fmul float %i.lz, %.0122.i118.i         ; 4 uses
  %i.mf = fadd float %.sroa.57.2, %.sroa.39.2
  %i.mg = fsub float %.sroa.66.2, %.sroa.33.2
  %i.mh = fmul float %i.mg, %i.me
  %i.mi = tail call float @llvm.fmuladd.f32(float %.0122.i118.i, float %i.mf, float %i.mh) ; 2 uses
  %i.mj = fneg float %.sroa.66.2
  %i.mk = fmul float %.0122.i118.i, %i.mj
  %i.ml = tail call float @llvm.fmuladd.f32(float %i.me, float %.sroa.39.2, float %i.mk)
  %i.mm = fmul float %i.ml, 2.000000e+00          ; 2 uses
  %i.mn = tail call noundef float @llvm.fabs.f32(float %i.mm)
  %i.mo = tail call noundef float @llvm.fabs.f32(float %i.mi)
  %i.mp = fmul float %4, %i.mo
  %i.mq = fcmp ugt float %i.mn, %i.mp
  br i1 %i.mq, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

.thread134.i102.i:                                ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi0ELi2ELi1EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i
  %i.mr = fsub float %.sroa.66.2, %.sroa.33.2     ; 2 uses
  %i.ms = fadd float %.sroa.57.2, %.sroa.39.2     ; 2 uses
  %i.mt = tail call noundef float @llvm.fabs.f32(float %i.ms)
  %i.mu = tail call noundef float @llvm.fabs.f32(float %i.mr)
  %i.mv = fmul float %4, %i.mu
  %i.mw = fcmp ugt float %i.mt, %i.mv
  br i1 %i.mw, label %.thread.i105.i, label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i

.thread.i105.i:                                   ; preds = %.thread134.i102.i, %bb.f
  %.0120146.i106.i = phi float [ %i.mr, %.thread134.i102.i ], [ %i.mi, %bb.f ]
  %.0121145.i107.i = phi float [ %i.ms, %.thread134.i102.i ], [ %i.mm, %bb.f ]
  %.1123144.i108.i = phi float [ 0.000000e+00, %.thread134.i102.i ], [ %.0122.i118.i, %bb.f ]
  %.0124141.i109.i = phi float [ 1.000000e+00, %.thread134.i102.i ], [ %i.me, %bb.f ]
  %i.mx = fdiv float %.0120146.i106.i, %.0121145.i107.i ; 4 uses
  %i.my = tail call noundef float @llvm.fabs.f32(float %i.mx)
  %i.mz = tail call float @llvm.fmuladd.f32(float %i.mx, float %i.mx, float 1.000000e+00)
  %sqrt133.i110.i = tail call float @llvm.sqrt.f32(float %i.mz)
  %i.na = fadd float %i.my, %sqrt133.i110.i
  %i.nb = fdiv float 1.000000e+00, %i.na          ; 2 uses
  %i.nc = fcmp olt float %i.mx, 0.000000e+00
  %i.nd = fneg float %i.nb
  %.0117.i111.i = select i1 %i.nc, float %i.nd, float %i.nb ; 3 uses
  %i.ne = tail call float @llvm.fmuladd.f32(float %.0117.i111.i, float %.0117.i111.i, float 1.000000e+00)
  %sqrt132.i112.i = tail call float @llvm.sqrt.f32(float %i.ne)
  %i.nf = fdiv float 1.000000e+00, %sqrt132.i112.i ; 3 uses
  %i.ng = fmul float %.0117.i111.i, %i.nf         ; 2 uses
  %i.nh = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.ni = insertelement <2 x float> %i.nh, float %i.nf, i64 1
  br label %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i: ; preds = %.thread.i105.i, %bb.f
  %.1123142.i113.i = phi float [ %.1123144.i108.i, %.thread.i105.i ], [ %.0122.i118.i, %bb.f ] ; 2 uses
  %.0124139.i114.i = phi float [ %.0124141.i109.i, %.thread.i105.i ], [ %i.me, %bb.f ]
  %.0118129.i115.i = phi float [ %i.ng, %.thread.i105.i ], [ 0.000000e+00, %bb.f ] ; 2 uses
  %.0119128.i116.i = phi float [ %i.nf, %.thread.i105.i ], [ 1.000000e+00, %bb.f ] ; 3 uses
  %i.nj = phi <2 x float> [ %i.ni, %.thread.i105.i ], [ <float 0.000000e+00, float 1.000000e+00>, %bb.f ] ; 10 uses
  %i.nk = fneg float %.1123142.i113.i
  %i.nl = fneg float %.0118129.i115.i             ; 2 uses
  %i.nm = fmul float %.sroa.66.2, %i.nl
  %i.nn = tail call float @llvm.fmuladd.f32(float %.sroa.57.2, float %.0119128.i116.i, float %i.nm)
  %17 = fneg float %i.nn
  %i.no = fmul float %.sroa.66.2, %.0119128.i116.i
  %i.np = fmul float %.1123142.i113.i, %.0119128.i116.i
  %i.nq = fmul float %.sroa.39.2, %i.nl
  %i.nr = insertelement <2 x float> poison, float %.0124139.i114.i, i64 0
  %i.ns = insertelement <2 x float> %i.nr, float %.sroa.33.2, i64 1 ; 2 uses
  %i.nt = insertelement <2 x float> poison, float %i.np, i64 0
  %i.nu = insertelement <2 x float> %i.nt, float %i.nq, i64 1
  %i.nv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.nj, <2 x float> %i.nu) ; 6 uses
  %i.nw = extractelement <2 x float> %i.nv, i64 0
  %i.nx = fmul float %i.nw, %17
  %i.ny = insertelement <2 x float> poison, float %i.nk, i64 0
  %i.nz = insertelement <2 x float> %i.ny, float %.sroa.39.2, i64 1
  %i.oa = fmul <2 x float> %i.nj, %i.nz
  %i.ob = shufflevector <2 x float> %i.nj, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.oc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ns, <2 x float> %i.ob, <2 x float> %i.oa) ; 5 uses
  %i.od = shufflevector <2 x float> %i.oc, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.oe = tail call float @llvm.fmuladd.f32(float %.sroa.57.2, float %.0118129.i115.i, float %i.no)
  %i.of = extractelement <2 x float> %i.oc, i64 0
  %i.og = fmul float %i.of, %i.oe
  %i.oh = insertelement <2 x float> poison, float %i.og, i64 0
  %i.oi = insertelement <2 x float> %i.oh, float %i.nx, i64 1
  %i.oj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nv, <2 x float> %i.od, <2 x float> %i.oi)
  %i.ok = shufflevector <2 x float> %i.oc, <2 x float> %i.nv, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.ol = shufflevector <2 x float> %i.nj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.om = shufflevector <4 x float> %i.ok, <4 x float> %i.ol, <4 x i32> <i32 0, i32 5, i32 2, i32 4> ; 2 uses
  %i.on = fmul <4 x float> %i.om, <float 0.000000e+00, float 0.000000e+00, float -0.000000e+00, float -0.000000e+00>
  %i.oo = shufflevector <2 x float> %i.nv, <2 x float> %i.oc, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.op = shufflevector <4 x float> %i.oo, <4 x float> %i.om, <4 x i32> <i32 0, i32 7, i32 2, i32 5>
  %i.oq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.op, <4 x float> %i.ls, <4 x float> %i.on)
  %i.or = load <4 x float>, ptr %i.r, align 4
  %i.os = load float, ptr %i.s, align 4, !tbaa !15 ; 2 uses
  %i.ot = fneg float %i.os
  %i.ou = shufflevector <2 x float> %i.nv, <2 x float> %i.od, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.ov = insertelement <2 x float> poison, float %i.ot, i64 0
  %i.ow = insertelement <2 x float> %i.ov, float %i.os, i64 1
  %i.ox = fmul <2 x float> %i.ou, %i.ow
  %i.oy = shufflevector <2 x float> %i.oc, <2 x float> %i.nv, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.oz = shufflevector <4 x float> %i.or, <4 x float> poison, <2 x i32> zeroinitializer
  %i.pa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.oz, <2 x float> %i.ox)
  store <2 x float> %i.pa, ptr %i.r, align 4, !tbaa !15
  %i.pb = load <4 x float>, ptr %i.u, align 4
  %i.pc = load float, ptr %i.v, align 4, !tbaa !15 ; 2 uses
  %i.pd = fneg float %i.pc
  %i.pe = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pf = insertelement <2 x float> %i.pe, float %i.pc, i64 1
  %i.pg = fmul <2 x float> %i.ou, %i.pf
  %i.ph = shufflevector <4 x float> %i.pb, <4 x float> poison, <2 x i32> zeroinitializer
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.ph, <2 x float> %i.pg)
  store <2 x float> %i.pi, ptr %i.u, align 4, !tbaa !15
  %i.pj = load float, ptr %i.x, align 4, !tbaa !15
  %i.pk = load float, ptr %i.y, align 4, !tbaa !15 ; 2 uses
  %i.pl = fneg float %i.pk
  %i.pm = insertelement <2 x float> poison, float %i.pl, i64 0
  %i.pn = insertelement <2 x float> %i.pm, float %i.pk, i64 1
  %i.po = fmul <2 x float> %i.ou, %i.pn
  %i.pp = insertelement <2 x float> poison, float %i.pj, i64 0
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.oy, <2 x float> %i.pq, <2 x float> %i.po)
  store <2 x float> %i.pr, ptr %i.x, align 4, !tbaa !15
  %i.ps = load <4 x float>, ptr %i.z, align 4
  %i.pt = load float, ptr %i.aa, align 4, !tbaa !15 ; 2 uses
  %i.pu = fneg float %i.pt
  %i.pv = insertelement <2 x float> poison, float %i.pu, i64 0
  %i.pw = insertelement <2 x float> %i.pv, float %i.pt, i64 1
  %i.px = fmul <2 x float> %i.nj, %i.pw
  %i.py = shufflevector <2 x float> %i.px, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.pz = shufflevector <4 x float> %i.ps, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qa = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.pz, <2 x float> %i.py)
  %i.qb = shufflevector <2 x float> %i.qa, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qb, ptr %i.z, align 4, !tbaa !15
  %i.qc = load <4 x float>, ptr %i.ac, align 4
  %i.qd = load float, ptr %i.ad, align 4, !tbaa !15 ; 2 uses
  %i.qe = fneg float %i.qd
  %i.qf = insertelement <2 x float> poison, float %i.qe, i64 0
  %i.qg = insertelement <2 x float> %i.qf, float %i.qd, i64 1
  %i.qh = fmul <2 x float> %i.nj, %i.qg
  %i.qi = shufflevector <2 x float> %i.qh, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qj = shufflevector <4 x float> %i.qc, <4 x float> poison, <2 x i32> zeroinitializer
  %i.qk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.qj, <2 x float> %i.qi)
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.ql, ptr %i.ac, align 4, !tbaa !15
  %i.qm = load float, ptr %i.af, align 4, !tbaa !15
  %i.qn = load float, ptr %i.ag, align 4, !tbaa !15 ; 2 uses
  %i.qo = fneg float %i.qn
  %i.qp = insertelement <2 x float> poison, float %i.qo, i64 0
  %i.qq = insertelement <2 x float> %i.qp, float %i.qn, i64 1
  %i.qr = fmul <2 x float> %i.nj, %i.qq
  %i.qs = shufflevector <2 x float> %i.qr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.qt = insertelement <2 x float> poison, float %i.qm, i64 0
  %i.qu = shufflevector <2 x float> %i.qt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.nj, <2 x float> %i.qu, <2 x float> %i.qs)
  %i.qw = shufflevector <2 x float> %i.qv, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.qw, ptr %i.af, align 4, !tbaa !15
  br label %bb.g

_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i: ; preds = %.thread134.i102.i
  %i.qx = insertelement <2 x float> poison, float %.sroa.66.2, i64 0
  %i.qy = insertelement <2 x float> %i.qx, float %.sroa.33.2, i64 1 ; 2 uses
  %i.qz = shufflevector <2 x float> %i.lr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ra = shufflevector <4 x float> %i.qz, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 1, i32 0>
  br i1 %.1130.i87.i, label %bb.g, label %.loopexit130.i

bb.g:                                             ; preds = %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i
  %i.rb = phi <2 x float> [ %i.oj, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.qy, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 3 uses
  %i.rc = phi <4 x float> [ %i.oq, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.thread.i ], [ %i.ra, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 6 uses
  %i.rd = extractelement <4 x float> %i.rc, i64 3 ; 3 uses
  %i.re = tail call noundef float @llvm.fabs.f32(float %i.rd)
  %i.rf = fcmp one float %i.rd, 0.000000e+00
  %.sroa.speculated28.i119.i = select i1 %i.rf, float %i.re, float 0.000000e+00 ; 2 uses
  %i.rg = extractelement <4 x float> %i.rc, i64 1
  %i.rh = tail call noundef float @llvm.fabs.f32(float %i.rg) ; 2 uses
  %i.ri = fcmp olt float %.sroa.speculated28.i119.i, %i.rh
  %.sroa.speculated24.i120.i = select i1 %i.ri, float %i.rh, float %.sroa.speculated28.i119.i ; 2 uses
  %i.rj = extractelement <4 x float> %i.rc, i64 2 ; 2 uses
  %i.rk = tail call noundef float @llvm.fabs.f32(float %i.rj) ; 2 uses
  %i.rl = fcmp olt float %.sroa.speculated24.i120.i, %i.rk
  %.sroa.speculated20.i121.i = select i1 %i.rl, float %i.rk, float %.sroa.speculated24.i120.i ; 2 uses
  %i.rm = extractelement <4 x float> %i.rc, i64 0
  %i.rn = tail call noundef float @llvm.fabs.f32(float %i.rm) ; 2 uses
  %i.ro = fcmp olt float %.sroa.speculated20.i121.i, %i.rn
  %.sroa.speculated12.i123.i = select i1 %i.ro, float %i.rn, float %.sroa.speculated20.i121.i
  %i.rp = fcmp ogt float %.sroa.speculated12.i123.i, %i.au
  %i.rq = icmp samesign ult i32 %.082.i, 19
  %i.rr = select i1 %i.rp, i1 %i.rq, i1 false
  %i.rs = extractelement <2 x float> %i.rb, i64 0
  %i.rt = extractelement <2 x float> %i.rb, i64 1
  %i.ru = shufflevector <4 x float> %i.rc, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.rv = shufflevector <4 x float> %i.rc, <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x i32> <i32 4, i32 5, i32 0, i32 1>
  br i1 %i.rr, label %.preheader129.i, label %.loopexit130.i, !llvm.loop !46

.loopexit130.i:                                   ; preds = %bb.g, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i, %bb.a
  %.sroa.0.0 = phi float [ %i.a, %bb.a ], [ %.sroa.0.3, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ], [ %.sroa.0.3, %bb.g ] ; 3 uses
  %i.rw = phi <2 x float> [ %i.ax, %bb.a ], [ %i.rb, %bb.g ], [ %i.qy, %_ZN9Imath_3_212_GLOBAL__N_122twoSidedJacobiRotationIfLi1ELi2ELi0EEEbRNS_8Matrix33IT_EES5_S5_S3_.exit.i ] ; 2 uses
  store float %.sroa.0.0, ptr %2, align 4, !tbaa !18
  %i.rx = getelementptr inbounds nuw i8, ptr %2, i64 4 ; 9 uses
  %i.ry = getelementptr inbounds nuw i8, ptr %2, i64 8 ; 8 uses
  %i.rz = shufflevector <2 x float> %i.rw, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  store <2 x float> %i.rz, ptr %i.rx, align 4, !tbaa !15
  %i.sa = fcmp olt float %.sroa.0.0, 0.000000e+00
  %i.sb = extractelement <2 x float> %i.rw, i64 1
  br i1 %i.sa, label %.loopexit.loopexit.i, label %.loopexit.i

.loopexit.loopexit.i:                             ; preds = %.loopexit130.i
  %i.sc = fneg float %.sroa.0.0
  store float %i.sc, ptr %2, align 4, !tbaa !15
  %i.sd = load float, ptr %1, align 4, !tbaa !15
  %i.se = fneg float %i.sd
  store float %i.se, ptr %1, align 4, !tbaa !15
  %i.sf = load float, ptr %i.t, align 4, !tbaa !15
  %i.sg = fneg float %i.sf
  store float %i.sg, ptr %i.t, align 4, !tbaa !15
  %i.sh = load float, ptr %i.w, align 4, !tbaa !15
  %i.si = fneg float %i.sh
  store float %i.si, ptr %i.w, align 4, !tbaa !15
  %.pre153.i = load float, ptr %i.rx, align 4, !tbaa !15
  br label %.loopexit.i

.loopexit.i:                                      ; preds = %.loopexit.loopexit.i, %.loopexit130.i
  %i.sj = phi float [ %.pre153.i, %.loopexit.loopexit.i ], [ %i.sb, %.loopexit130.i ] ; 2 uses
  %i.sk = fcmp olt float %i.sj, 0.000000e+00
  br i1 %i.sk, label %.loopexit.loopexit.1.i, label %.loopexit.1.i

.loopexit.loopexit.1.i:                           ; preds = %.loopexit.i
  %i.sl = fneg float %i.sj
  store float %i.sl, ptr %i.rx, align 4, !tbaa !15
  %i.sm = load float, ptr %i.r, align 4, !tbaa !15
  %i.sn = fneg float %i.sm
  store float %i.sn, ptr %i.r, align 4, !tbaa !15
  %i.so = load float, ptr %i.u, align 4, !tbaa !15
  %i.sp = fneg float %i.so
  store float %i.sp, ptr %i.u, align 4, !tbaa !15
  %i.sq = load float, ptr %i.x, align 4, !tbaa !15
  %i.sr = fneg float %i.sq
  store float %i.sr, ptr %i.x, align 4, !tbaa !15
  br label %.loopexit.1.i

.loopexit.1.i:                                    ; preds = %.loopexit.loopexit.1.i, %.loopexit.i
  %i.ss = load float, ptr %i.ry, align 4, !tbaa !15 ; 2 uses
  %i.st = fcmp olt float %i.ss, 0.000000e+00
  br i1 %i.st, label %.loopexit.loopexit.2.i, label %.lr.ph.preheader.i

.loopexit.loopexit.2.i:                           ; preds = %.loopexit.1.i
  %i.su = fneg float %i.ss
  store float %i.su, ptr %i.ry, align 4, !tbaa !15
  %i.sv = load float, ptr %i.s, align 4, !tbaa !15
  %i.sw = fneg float %i.sv
  store float %i.sw, ptr %i.s, align 4, !tbaa !15
  %i.sx = load float, ptr %i.v, align 4, !tbaa !15
  %i.sy = fneg float %i.sx
  store float %i.sy, ptr %i.v, align 4, !tbaa !15
  %i.sz = load float, ptr %i.y, align 4, !tbaa !15
  %i.ta = fneg float %i.sz
  store float %i.ta, ptr %i.y, align 4, !tbaa !15
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %.loopexit.loopexit.2.i, %.loopexit.1.i
  %i.tb = load float, ptr %2, align 4, !tbaa !15  ; 2 uses
  %i.tc = load float, ptr %i.rx, align 4, !tbaa !15 ; 3 uses
  %i.td = fcmp olt float %i.tb, %i.tc
  br i1 %i.td, label %bb.i, label %.lr.ph.1145.i

.lr.ph.preheader.1.i:                             ; preds = %bb.j, %.lr.ph.1145.i
  %i.te = phi float [ %.pre, %bb.j ], [ %i.uf, %.lr.ph.1145.i ] ; 2 uses
  %i.tf = load float, ptr %2, align 4, !tbaa !15  ; 2 uses
  %i.tg = fcmp olt float %i.tf, %i.te
  br i1 %i.tg, label %bb.h, label %._crit_edge.1.i

bb.h:                                             ; preds = %.lr.ph.preheader.1.i
end_hunk_1
