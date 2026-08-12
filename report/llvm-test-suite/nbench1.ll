inline.NumInlined: 76
inline.NumDeleted: 47
loop-unroll.NumCompletelyUnrolled: 43
loop-unroll.NumRuntimeUnrolled: 19
loop-unroll.NumUnrolled: 86
begin_hunk_0_@DoNNetIteration:bb.a
  %i.ng = extractelement <2 x double> %i.ne, i64 0
  %i.nh = tail call double @llvm.fmuladd.f64(double %i.ng, double %i.nf, double %i.nc)
  %i.ni = extractelement <2 x double> %i.nd, i64 1 ; 8 uses
  %i.nj = extractelement <2 x double> %i.ne, i64 1
  %i.nk = tail call double @llvm.fmuladd.f64(double %i.nj, double %i.ni, double %i.nh)
  %i.nl = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_out, i64 32), align 16, !tbaa !80 ; 6 uses
  %i.nm = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 32), align 16, !tbaa !80 ; 3 uses
  %i.nn = extractelement <2 x double> %i.nl, i64 0 ; 8 uses
  %i.no = extractelement <2 x double> %i.nm, i64 0
  %i.np = tail call double @llvm.fmuladd.f64(double %i.no, double %i.nn, double %i.nk)
  %i.nq = extractelement <2 x double> %i.nl, i64 1 ; 8 uses
  %i.nr = extractelement <2 x double> %i.nm, i64 1
  %i.ns = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.nq, double %i.np)
  %i.nt = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @mid_out, i64 48), align 16, !tbaa !80 ; 6 uses
  %i.nu = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 48), align 16, !tbaa !80 ; 3 uses
  %i.nv = extractelement <2 x double> %i.nt, i64 0 ; 8 uses
  %i.nw = extractelement <2 x double> %i.nu, i64 0
  %i.nx = tail call double @llvm.fmuladd.f64(double %i.nw, double %i.nv, double %i.ns)
  %i.ny = extractelement <2 x double> %i.nt, i64 1 ; 8 uses
  %i.nz = extractelement <2 x double> %i.nu, i64 1
  %i.oa = tail call double @llvm.fmuladd.f64(double %i.nz, double %i.ny, double %i.nx)
  %i.ob = fneg double %i.oa
  %i.oc = tail call double @exp(double noundef %i.ob) #11, !tbaa !4
  %i.od = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 64), align 16, !tbaa !80 ; 3 uses
  %i.oe = extractelement <2 x double> %i.od, i64 0
  %i.of = tail call double @llvm.fmuladd.f64(double %i.oe, double %i.mx, double 0.000000e+00)
  %i.og = extractelement <2 x double> %i.od, i64 1
  %i.oh = tail call double @llvm.fmuladd.f64(double %i.og, double %i.na, double %i.of)
  %i.oi = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 80), align 16, !tbaa !80 ; 3 uses
  %i.oj = extractelement <2 x double> %i.oi, i64 0
  %i.ok = tail call double @llvm.fmuladd.f64(double %i.oj, double %i.nf, double %i.oh)
  %i.ol = extractelement <2 x double> %i.oi, i64 1
  %i.om = tail call double @llvm.fmuladd.f64(double %i.ol, double %i.ni, double %i.ok)
  %i.on = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 96), align 16, !tbaa !80 ; 3 uses
  %i.oo = extractelement <2 x double> %i.on, i64 0
  %i.op = tail call double @llvm.fmuladd.f64(double %i.oo, double %i.nn, double %i.om)
  %i.oq = extractelement <2 x double> %i.on, i64 1
  %i.or = tail call double @llvm.fmuladd.f64(double %i.oq, double %i.nq, double %i.op)
  %i.os = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 112), align 16, !tbaa !80 ; 3 uses
  %i.ot = extractelement <2 x double> %i.os, i64 0
  %i.ou = tail call double @llvm.fmuladd.f64(double %i.ot, double %i.nv, double %i.or)
  %i.ov = extractelement <2 x double> %i.os, i64 1
  %i.ow = tail call double @llvm.fmuladd.f64(double %i.ov, double %i.ny, double %i.ou)
  %i.ox = fneg double %i.ow
  %i.oy = tail call double @exp(double noundef %i.ox) #11, !tbaa !4
  %i.oz = insertelement <2 x double> poison, double %i.oc, i64 0
  %i.pa = insertelement <2 x double> %i.oz, double %i.oy, i64 1
  %i.pb = fadd <2 x double> %i.pa, splat (double 1.000000e+00)
  %i.pc = fdiv <2 x double> splat (double 1.000000e+00), %i.pb ; 3 uses
  store <2 x double> %i.pc, ptr @out_out, align 16, !tbaa !80
  %i.pd = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 128), align 16, !tbaa !80 ; 3 uses
  %i.pe = extractelement <2 x double> %i.pd, i64 0
  %i.pf = tail call double @llvm.fmuladd.f64(double %i.pe, double %i.mx, double 0.000000e+00)
  %i.pg = extractelement <2 x double> %i.pd, i64 1
  %i.ph = tail call double @llvm.fmuladd.f64(double %i.pg, double %i.na, double %i.pf)
  %i.pi = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 144), align 16, !tbaa !80 ; 3 uses
  %i.pj = extractelement <2 x double> %i.pi, i64 0
  %i.pk = tail call double @llvm.fmuladd.f64(double %i.pj, double %i.nf, double %i.ph)
  %i.pl = extractelement <2 x double> %i.pi, i64 1
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.pl, double %i.ni, double %i.pk)
  %i.pn = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 160), align 16, !tbaa !80 ; 3 uses
  %i.po = extractelement <2 x double> %i.pn, i64 0
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.po, double %i.nn, double %i.pm)
  %i.pq = extractelement <2 x double> %i.pn, i64 1
  %i.pr = tail call double @llvm.fmuladd.f64(double %i.pq, double %i.nq, double %i.pp)
  %i.ps = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 176), align 16, !tbaa !80 ; 3 uses
  %i.pt = extractelement <2 x double> %i.ps, i64 0
  %i.pu = tail call double @llvm.fmuladd.f64(double %i.pt, double %i.nv, double %i.pr)
  %i.pv = extractelement <2 x double> %i.ps, i64 1
  %i.pw = tail call double @llvm.fmuladd.f64(double %i.pv, double %i.ny, double %i.pu)
  %i.px = fneg double %i.pw
  %i.py = tail call double @exp(double noundef %i.px) #11, !tbaa !4
  %i.pz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 192), align 16, !tbaa !80 ; 3 uses
  %i.qa = extractelement <2 x double> %i.pz, i64 0
  %i.qb = tail call double @llvm.fmuladd.f64(double %i.qa, double %i.mx, double 0.000000e+00)
  %i.qc = extractelement <2 x double> %i.pz, i64 1
  %i.qd = tail call double @llvm.fmuladd.f64(double %i.qc, double %i.na, double %i.qb)
  %i.qe = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 208), align 16, !tbaa !80 ; 3 uses
  %i.qf = extractelement <2 x double> %i.qe, i64 0
  %i.qg = tail call double @llvm.fmuladd.f64(double %i.qf, double %i.nf, double %i.qd)
  %i.qh = extractelement <2 x double> %i.qe, i64 1
  %i.qi = tail call double @llvm.fmuladd.f64(double %i.qh, double %i.ni, double %i.qg)
  %i.qj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 224), align 16, !tbaa !80 ; 3 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 0
  %i.ql = tail call double @llvm.fmuladd.f64(double %i.qk, double %i.nn, double %i.qi)
  %i.qm = extractelement <2 x double> %i.qj, i64 1
  %i.qn = tail call double @llvm.fmuladd.f64(double %i.qm, double %i.nq, double %i.ql)
  %i.qo = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 240), align 16, !tbaa !80 ; 3 uses
  %i.qp = extractelement <2 x double> %i.qo, i64 0
  %i.qq = tail call double @llvm.fmuladd.f64(double %i.qp, double %i.nv, double %i.qn)
  %i.qr = extractelement <2 x double> %i.qo, i64 1
  %i.qs = tail call double @llvm.fmuladd.f64(double %i.qr, double %i.ny, double %i.qq)
  %i.qt = fneg double %i.qs
  %i.qu = tail call double @exp(double noundef %i.qt) #11, !tbaa !4
  %i.qv = insertelement <2 x double> poison, double %i.py, i64 0
  %i.qw = insertelement <2 x double> %i.qv, double %i.qu, i64 1
  %i.qx = fadd <2 x double> %i.qw, splat (double 1.000000e+00)
  %i.qy = fdiv <2 x double> splat (double 1.000000e+00), %i.qx ; 3 uses
  store <2 x double> %i.qy, ptr getelementptr inbounds nuw (i8, ptr @out_out, i64 16), align 16, !tbaa !80
  %i.qz = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 256), align 16, !tbaa !80 ; 3 uses
  %i.ra = extractelement <2 x double> %i.qz, i64 0
  %i.rb = tail call double @llvm.fmuladd.f64(double %i.ra, double %i.mx, double 0.000000e+00)
  %i.rc = extractelement <2 x double> %i.qz, i64 1
  %i.rd = tail call double @llvm.fmuladd.f64(double %i.rc, double %i.na, double %i.rb)
  %i.re = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 272), align 16, !tbaa !80 ; 3 uses
  %i.rf = extractelement <2 x double> %i.re, i64 0
  %i.rg = tail call double @llvm.fmuladd.f64(double %i.rf, double %i.nf, double %i.rd)
  %i.rh = extractelement <2 x double> %i.re, i64 1
  %i.ri = tail call double @llvm.fmuladd.f64(double %i.rh, double %i.ni, double %i.rg)
  %i.rj = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 288), align 16, !tbaa !80 ; 3 uses
  %i.rk = extractelement <2 x double> %i.rj, i64 0
  %i.rl = tail call double @llvm.fmuladd.f64(double %i.rk, double %i.nn, double %i.ri)
  %i.rm = extractelement <2 x double> %i.rj, i64 1
  %i.rn = tail call double @llvm.fmuladd.f64(double %i.rm, double %i.nq, double %i.rl)
  %i.ro = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 304), align 16, !tbaa !80 ; 3 uses
  %i.rp = extractelement <2 x double> %i.ro, i64 0
  %i.rq = tail call double @llvm.fmuladd.f64(double %i.rp, double %i.nv, double %i.rn)
  %i.rr = extractelement <2 x double> %i.ro, i64 1
  %i.rs = tail call double @llvm.fmuladd.f64(double %i.rr, double %i.ny, double %i.rq)
  %i.rt = fneg double %i.rs
  %i.ru = tail call double @exp(double noundef %i.rt) #11, !tbaa !4
  %i.rv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 320), align 16, !tbaa !80 ; 3 uses
  %i.rw = extractelement <2 x double> %i.rv, i64 0
  %i.rx = tail call double @llvm.fmuladd.f64(double %i.rw, double %i.mx, double 0.000000e+00)
  %i.ry = extractelement <2 x double> %i.rv, i64 1
  %i.rz = tail call double @llvm.fmuladd.f64(double %i.ry, double %i.na, double %i.rx)
  %i.sa = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 336), align 16, !tbaa !80 ; 3 uses
  %i.sb = extractelement <2 x double> %i.sa, i64 0
  %i.sc = tail call double @llvm.fmuladd.f64(double %i.sb, double %i.nf, double %i.rz)
  %i.sd = extractelement <2 x double> %i.sa, i64 1
  %i.se = tail call double @llvm.fmuladd.f64(double %i.sd, double %i.ni, double %i.sc)
  %i.sf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 352), align 16, !tbaa !80 ; 3 uses
  %i.sg = extractelement <2 x double> %i.sf, i64 0
  %i.sh = tail call double @llvm.fmuladd.f64(double %i.sg, double %i.nn, double %i.se)
  %i.si = extractelement <2 x double> %i.sf, i64 1
  %i.sj = tail call double @llvm.fmuladd.f64(double %i.si, double %i.nq, double %i.sh)
  %i.sk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 368), align 16, !tbaa !80 ; 3 uses
  %i.sl = extractelement <2 x double> %i.sk, i64 0
  %i.sm = tail call double @llvm.fmuladd.f64(double %i.sl, double %i.nv, double %i.sj)
  %i.sn = extractelement <2 x double> %i.sk, i64 1
  %i.so = tail call double @llvm.fmuladd.f64(double %i.sn, double %i.ny, double %i.sm)
  %i.sp = fneg double %i.so
  %i.sq = tail call double @exp(double noundef %i.sp) #11, !tbaa !4
  %i.sr = insertelement <2 x double> poison, double %i.ru, i64 0
  %i.ss = insertelement <2 x double> %i.sr, double %i.sq, i64 1
  %i.st = fadd <2 x double> %i.ss, splat (double 1.000000e+00)
  %i.su = fdiv <2 x double> splat (double 1.000000e+00), %i.st ; 3 uses
  store <2 x double> %i.su, ptr getelementptr inbounds nuw (i8, ptr @out_out, i64 32), align 16, !tbaa !80
  %i.sv = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 384), align 16, !tbaa !80 ; 3 uses
  %i.sw = extractelement <2 x double> %i.sv, i64 0
  %i.sx = tail call double @llvm.fmuladd.f64(double %i.sw, double %i.mx, double 0.000000e+00)
  %i.sy = extractelement <2 x double> %i.sv, i64 1
  %i.sz = tail call double @llvm.fmuladd.f64(double %i.sy, double %i.na, double %i.sx)
  %i.ta = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 400), align 16, !tbaa !80 ; 3 uses
  %i.tb = extractelement <2 x double> %i.ta, i64 0
  %i.tc = tail call double @llvm.fmuladd.f64(double %i.tb, double %i.nf, double %i.sz)
  %i.td = extractelement <2 x double> %i.ta, i64 1
  %i.te = tail call double @llvm.fmuladd.f64(double %i.td, double %i.ni, double %i.tc)
  %i.tf = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 416), align 16, !tbaa !80 ; 3 uses
  %i.tg = extractelement <2 x double> %i.tf, i64 0
  %i.th = tail call double @llvm.fmuladd.f64(double %i.tg, double %i.nn, double %i.te)
  %i.ti = extractelement <2 x double> %i.tf, i64 1
  %i.tj = tail call double @llvm.fmuladd.f64(double %i.ti, double %i.nq, double %i.th)
  %i.tk = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 432), align 16, !tbaa !80 ; 3 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 0
  %i.tm = tail call double @llvm.fmuladd.f64(double %i.tl, double %i.nv, double %i.tj)
  %i.tn = extractelement <2 x double> %i.tk, i64 1
  %i.to = tail call double @llvm.fmuladd.f64(double %i.tn, double %i.ny, double %i.tm)
  %i.tp = fneg double %i.to
  %i.tq = tail call double @exp(double noundef %i.tp) #11, !tbaa !4
  %i.tr = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 448), align 16, !tbaa !80 ; 3 uses
  %i.ts = extractelement <2 x double> %i.tr, i64 0
  %i.tt = tail call double @llvm.fmuladd.f64(double %i.ts, double %i.mx, double 0.000000e+00)
  %i.tu = extractelement <2 x double> %i.tr, i64 1
  %i.tv = tail call double @llvm.fmuladd.f64(double %i.tu, double %i.na, double %i.tt)
  %i.tw = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 464), align 16, !tbaa !80 ; 3 uses
  %i.tx = extractelement <2 x double> %i.tw, i64 0
  %i.ty = tail call double @llvm.fmuladd.f64(double %i.tx, double %i.nf, double %i.tv)
  %i.tz = extractelement <2 x double> %i.tw, i64 1
  %i.ua = tail call double @llvm.fmuladd.f64(double %i.tz, double %i.ni, double %i.ty)
  %i.ub = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 480), align 16, !tbaa !80 ; 3 uses
  %i.uc = extractelement <2 x double> %i.ub, i64 0
  %i.ud = tail call double @llvm.fmuladd.f64(double %i.uc, double %i.nn, double %i.ua)
  %i.ue = extractelement <2 x double> %i.ub, i64 1
  %i.uf = tail call double @llvm.fmuladd.f64(double %i.ue, double %i.nq, double %i.ud)
  %i.ug = load <2 x double>, ptr getelementptr inbounds nuw (i8, ptr @out_wts, i64 496), align 16, !tbaa !80 ; 3 uses
  %i.uh = extractelement <2 x double> %i.ug, i64 0
  %i.ui = tail call double @llvm.fmuladd.f64(double %i.uh, double %i.nv, double %i.uf)
  %i.uj = extractelement <2 x double> %i.ug, i64 1
  %i.uk = tail call double @llvm.fmuladd.f64(double %i.uj, double %i.ny, double %i.ui)
  %i.ul = fneg double %i.uk
  %i.um = tail call double @exp(double noundef %i.ul) #11, !tbaa !4
  %i.un = insertelement <2 x double> poison, double %i.tq, i64 0
  %i.uo = insertelement <2 x double> %i.un, double %i.um, i64 1
  %i.up = fadd <2 x double> %i.uo, splat (double 1.000000e+00)
  %i.uq = fdiv <2 x double> splat (double 1.000000e+00), %i.up ; 3 uses
  store <2 x double> %i.uq, ptr getelementptr inbounds nuw (i8, ptr @out_out, i64 48), align 16, !tbaa !80
  %i.ur = getelementptr inbounds nuw [64 x i8], ptr @out_pats, i64 %indvars.iv ; 8 uses
  %i.us = load double, ptr %i.ur, align 16, !tbaa !80
  %i.ut = extractelement <2 x double> %i.pc, i64 0
  %i.uu = fsub double %i.us, %i.ut                ; 7 uses
  store double %i.uu, ptr @out_error, align 16, !tbaa !80
  %i.uv = fcmp olt double %i.uu, 0.000000e+00
  br i1 %i.uv, label %bb.c, label %bb.d

bb.c:                                             ; preds = %do_forward_pass.exit
  %i.uw = fneg double %i.uu                       ; 2 uses
  br label %bb.f

bb.d:                                             ; preds = %do_forward_pass.exit
  %i.ux = fadd double %i.uu, 0.000000e+00         ; 2 uses
  %i.uy = fcmp ogt double %i.uu, 0.000000e+00
  br i1 %i.uy, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.c
  %.122.i.i = phi double [ %i.uw, %bb.c ], [ 0.000000e+00, %bb.d ], [ %i.uu, %bb.e ] ; 4 uses
  %.1.i.i = phi double [ %i.uw, %bb.c ], [ %i.ux, %bb.d ], [ %i.ux, %bb.e ] ; 2 uses
  %i.uz = getelementptr inbounds nuw i8, ptr %i.ur, i64 8
  %i.va = load double, ptr %i.uz, align 8, !tbaa !80
  %i.vb = extractelement <2 x double> %i.pc, i64 1
  %i.vc = fsub double %i.va, %i.vb                ; 8 uses
  store double %i.vc, ptr getelementptr inbounds nuw (i8, ptr @out_error, i64 8), align 8, !tbaa !80
  %i.vd = fcmp olt double %i.vc, 0.000000e+00
  br i1 %i.vd, label %bb.i, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ve = fadd double %.1.i.i, %i.vc              ; 2 uses
  %i.vf = fcmp ogt double %i.vc, %.122.i.i
  br i1 %i.vf, label %bb.h, label %bb.k

bb.h:                                             ; preds = %bb.g
  br label %bb.k

bb.i:                                             ; preds = %bb.f
  %i.vg = fneg double %i.vc                       ; 2 uses
  %i.vh = fsub double %.1.i.i, %i.vc              ; 2 uses
  %i.vi = fcmp olt double %.122.i.i, %i.vg
  br i1 %i.vi, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i, %bb.h, %bb.g
  %.122.1.i.i = phi double [ %i.vg, %bb.j ], [ %.122.i.i, %bb.i ], [ %i.vc, %bb.h ], [ %.122.i.i, %bb.g ] ; 4 uses
  %.1.1.i.i = phi double [ %i.vh, %bb.j ], [ %i.vh, %bb.i ], [ %i.ve, %bb.h ], [ %i.ve, %bb.g ] ; 2 uses
  %i.vj = getelementptr inbounds nuw i8, ptr %i.ur, i64 16
  %i.vk = load double, ptr %i.vj, align 16, !tbaa !80
  %i.vl = extractelement <2 x double> %i.qy, i64 0
  %i.vm = fsub double %i.vk, %i.vl                ; 8 uses
  store double %i.vm, ptr getelementptr inbounds nuw (i8, ptr @out_error, i64 16), align 16, !tbaa !80
  %i.vn = fcmp olt double %i.vm, 0.000000e+00
  br i1 %i.vn, label %bb.n, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.vo = fadd double %.1.1.i.i, %i.vm            ; 2 uses
  %i.vp = fcmp ogt double %i.vm, %.122.1.i.i
  br i1 %i.vp, label %bb.m, label %bb.p

bb.m:                                             ; preds = %bb.l
  br label %bb.p

bb.n:                                             ; preds = %bb.k
  %i.vq = fneg double %i.vm                       ; 2 uses
  %i.vr = fsub double %.1.1.i.i, %i.vm            ; 2 uses
  %i.vs = fcmp olt double %.122.1.i.i, %i.vq
  br i1 %i.vs, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n, %bb.m, %bb.l
  %.122.2.i.i = phi double [ %i.vq, %bb.o ], [ %.122.1.i.i, %bb.n ], [ %i.vm, %bb.m ], [ %.122.1.i.i, %bb.l ] ; 4 uses
  %.1.2.i.i = phi double [ %i.vr, %bb.o ], [ %i.vr, %bb.n ], [ %i.vo, %bb.m ], [ %i.vo, %bb.l ] ; 2 uses
  %i.vt = getelementptr inbounds nuw i8, ptr %i.ur, i64 24
  %i.vu = load double, ptr %i.vt, align 8, !tbaa !80
  %i.vv = extractelement <2 x double> %i.qy, i64 1
  %i.vw = fsub double %i.vu, %i.vv                ; 8 uses
  store double %i.vw, ptr getelementptr inbounds nuw (i8, ptr @out_error, i64 24), align 8, !tbaa !80
  %i.vx = fcmp olt double %i.vw, 0.000000e+00
  br i1 %i.vx, label %bb.s, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.vy = fadd double %.1.2.i.i, %i.vw            ; 2 uses
  %i.vz = fcmp ogt double %i.vw, %.122.2.i.i
  br i1 %i.vz, label %bb.r, label %bb.u

bb.r:                                             ; preds = %bb.q
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.wa = fneg double %i.vw                       ; 2 uses
  %i.wb = fsub double %.1.2.i.i, %i.vw            ; 2 uses
  %i.wc = fcmp olt double %.122.2.i.i, %i.wa
  br i1 %i.wc, label %bb.t, label %bb.u

bb.t:                                             ; preds = %bb.s
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s, %bb.r, %bb.q
  %.122.3.i.i = phi double [ %i.wa, %bb.t ], [ %.122.2.i.i, %bb.s ], [ %i.vw, %bb.r ], [ %.122.2.i.i, %bb.q ] ; 4 uses
  %.1.3.i.i = phi double [ %i.wb, %bb.t ], [ %i.wb, %bb.s ], [ %i.vy, %bb.r ], [ %i.vy, %bb.q ] ; 2 uses
  %i.wd = getelementptr inbounds nuw i8, ptr %i.ur, i64 32
  %i.we = load double, ptr %i.wd, align 16, !tbaa !80
  %i.wf = extractelement <2 x double> %i.su, i64 0
  %i.wg = fsub double %i.we, %i.wf                ; 8 uses
  store double %i.wg, ptr getelementptr inbounds nuw (i8, ptr @out_error, i64 32), align 16, !tbaa !80
  %i.wh = fcmp olt double %i.wg, 0.000000e+00
  br i1 %i.wh, label %bb.x, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.wi = fadd double %.1.3.i.i, %i.wg            ; 2 uses
  %i.wj = fcmp ogt double %i.wg, %.122.3.i.i
  br i1 %i.wj, label %bb.w, label %bb.z

bb.w:                                             ; preds = %bb.v
  br label %bb.z

bb.x:                                             ; preds = %bb.u
  %i.wk = fneg double %i.wg                       ; 2 uses
  %i.wl = fsub double %.1.3.i.i, %i.wg            ; 2 uses
  %i.wm = fcmp olt double %.122.3.i.i, %i.wk
  br i1 %i.wm, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  br label %bb.z

bb.z:                                             ; preds = %bb.y, %bb.x, %bb.w, %bb.v
  %.122.4.i.i = phi double [ %i.wk, %bb.y ], [ %.122.3.i.i, %bb.x ], [ %i.wg, %bb.w ], [ %.122.3.i.i, %bb.v ] ; 4 uses
  %.1.4.i.i = phi double [ %i.wl, %bb.y ], [ %i.wl, %bb.x ], [ %i.wi, %bb.w ], [ %i.wi, %bb.v ] ; 2 uses
  %i.wn = getelementptr inbounds nuw i8, ptr %i.ur, i64 40
  %i.wo = load double, ptr %i.wn, align 8, !tbaa !80
  %i.wp = extractelement <2 x double> %i.su, i64 1
  %i.wq = fsub double %i.wo, %i.wp                ; 8 uses
  store double %i.wq, ptr getelementptr inbounds nuw (i8, ptr @out_error, i64 40), align 8, !tbaa !80
  %i.wr = fcmp olt double %i.wq, 0.000000e+00
  br i1 %i.wr, label %bb.ac, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.ws = fadd double %.1.4.i.i, %i.wq            ; 2 uses
  %i.wt = fcmp ogt double %i.wq, %.122.4.i.i
  br i1 %i.wt, label %bb.ab, label %bb.ae

bb.ab:                                            ; preds = %bb.aa
  br label %bb.ae

bb.ac:                                            ; preds = %bb.z
  %i.wu = fneg double %i.wq                       ; 2 uses
  %i.wv = fsub double %.1.4.i.i, %i.wq            ; 2 uses
  %i.ww = fcmp olt double %.122.4.i.i, %i.wu
  br i1 %i.ww, label %bb.ad, label %bb.ae

bb.ad:                                            ; preds = %bb.ac
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac, %bb.ab, %bb.aa
  %.122.5.i.i = phi double [ %i.wu, %bb.ad ], [ %.122.4.i.i, %bb.ac ], [ %i.wq, %bb.ab ], [ %.122.4.i.i, %bb.aa ] ; 4 uses
  %.1.5.i.i = phi double [ %i.wv, %bb.ad ], [ %i.wv, %bb.ac ], [ %i.ws, %bb.ab ], [ %i.ws, %bb.aa ] ; 2 uses
  %i.wx = getelementptr inbounds nuw i8, ptr %i.ur, i64 48
  %i.wy = load double, ptr %i.wx, align 16, !tbaa !80
  %i.wz = extractelement <2 x double> %i.uq, i64 0
  %i.xa = fsub double %i.wy, %i.wz                ; 8 uses
  store double %i.xa, ptr getelementptr inbounds nuw (i8, ptr @out_error, i64 48), align 16, !tbaa !80
  %i.xb = fcmp olt double %i.xa, 0.000000e+00
  br i1 %i.xb, label %bb.ah, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.xc = fadd double %.1.5.i.i, %i.xa            ; 2 uses
  %i.xd = fcmp ogt double %i.xa, %.122.5.i.i
  br i1 %i.xd, label %bb.ag, label %bb.aj

bb.ag:                                            ; preds = %bb.af
  br label %bb.aj

bb.ah:                                            ; preds = %bb.ae
  %i.xe = fneg double %i.xa                       ; 2 uses
  %i.xf = fsub double %.1.5.i.i, %i.xa            ; 2 uses
  %i.xg = fcmp olt double %.122.5.i.i, %i.xe
  br i1 %i.xg, label %bb.ai, label %bb.aj

bb.ai:                                            ; preds = %bb.ah
  br label %bb.aj

bb.aj:                                            ; preds = %bb.ai, %bb.ah, %bb.ag, %bb.af
  %.122.6.i.i = phi double [ %i.xe, %bb.ai ], [ %.122.5.i.i, %bb.ah ], [ %i.xa, %bb.ag ], [ %.122.5.i.i, %bb.af ] ; 4 uses
  %.1.6.i.i = phi double [ %i.xf, %bb.ai ], [ %i.xf, %bb.ah ], [ %i.xc, %bb.ag ], [ %i.xc, %bb.af ] ; 2 uses
  %i.xh = getelementptr inbounds nuw i8, ptr %i.ur, i64 56
  %i.xi = load double, ptr %i.xh, align 8, !tbaa !80
  %i.xj = extractelement <2 x double> %i.uq, i64 1
  %i.xk = fsub double %i.xi, %i.xj                ; 8 uses
  store double %i.xk, ptr getelementptr inbounds nuw (i8, ptr @out_error, i64 56), align 8, !tbaa !80
  %i.xl = fcmp olt double %i.xk, 0.000000e+00
  br i1 %i.xl, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.xm = fadd double %.1.6.i.i, %i.xk            ; 2 uses
  %i.xn = fcmp ogt double %i.xk, %.122.6.i.i
  br i1 %i.xn, label %bb.al, label %do_out_error.exit.i

bb.al:                                            ; preds = %bb.ak
  br label %do_out_error.exit.i

bb.am:                                            ; preds = %bb.aj
  %i.xo = fneg double %i.xk                       ; 2 uses
  %i.xp = fsub double %.1.6.i.i, %i.xk            ; 2 uses
  %i.xq = fcmp olt double %.122.6.i.i, %i.xo
  br i1 %i.xq, label %bb.an, label %do_out_error.exit.i

bb.an:                                            ; preds = %bb.am
  br label %do_out_error.exit.i

do_out_error.exit.i:                              ; preds = %bb.an, %bb.am, %bb.al, %bb.ak
  %.122.7.i.i = phi double [ %i.xo, %bb.an ], [ %.122.6.i.i, %bb.am ], [ %i.xk, %bb.al ], [ %.122.6.i.i, %bb.ak ]
  %.1.7.i.i = phi double [ %i.xp, %bb.an ], [ %i.xp, %bb.am ], [ %i.xm, %bb.al ], [ %i.xm, %bb.ak ]
  %i.xr = fmul double %.1.7.i.i, 1.250000e-01
  %i.xs = getelementptr inbounds nuw [8 x i8], ptr @avg_out_error, i64 %indvars.iv
  store double %i.xr, ptr %i.xs, align 8, !tbaa !80
  %i.xt = getelementptr inbounds nuw [8 x i8], ptr @tot_out_error, i64 %indvars.iv
end_hunk_0
