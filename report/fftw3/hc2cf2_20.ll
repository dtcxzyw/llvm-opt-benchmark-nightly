Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cf2_20?download=true
begin_hunk_0_@hc2cf2_20:bb.a
  %i.oz = fadd double %i.oi, %i.oy                ; 2 uses
  %foldExtExtBinop886 = fadd <2 x double> %i.oj, %i.ok
  %i.pa = extractelement <2 x double> %foldExtExtBinop886, i64 1 ; 2 uses
  %i.pb = fadd double %i.pa, %i.or                ; 2 uses
  %i.pc = fsub <2 x double> %i.ou, %i.ox          ; 4 uses
  %i.pd = fsub <2 x double> %i.oh, %i.oe          ; 4 uses
  %foldExtExtBinop888 = fadd <2 x double> %i.pd, %i.pc ; 2 uses
  %i.pe = extractelement <2 x double> %foldExtExtBinop888, i64 1
  %i.pf = fadd <2 x double> %i.pc, %i.pd
  %i.pg = fsub <2 x double> %i.pc, %i.pd          ; 2 uses
  %i.ph = shufflevector <2 x double> %i.pf, <2 x double> %i.pg, <2 x i32> <i32 0, i32 3> ; 3 uses
  %i.pi = shufflevector <2 x double> %i.ol, <2 x double> %i.pg, <2 x i32> <i32 1, i32 3>
  %i.pj = fsub <2 x double> %i.pi, %i.oq          ; 3 uses
  %i.pk = shufflevector <2 x double> %i.ny, <2 x double> %i.pj, <2 x i32> <i32 0, i32 2>
  %i.pl = fmul <2 x double> %i.pk, <double 1.000000e+00, double f0xBFE2CF2304755A5E>
  %i.pm = fmul double %i.pe, f0x3FE2CF2304755A5E
  %i.pn = insertelement <2 x double> poison, double %i.pm, i64 0
  %i.po = insertelement <2 x double> %i.pn, double %i.ob, i64 1
  %i.pp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pj, <2 x double> <double f0x3FEE6F0E134454FF, double 2.500000e-01>, <2 x double> %i.po) ; 4 uses
  %i.pq = extractelement <2 x double> %i.pj, i64 1
  %i.pr = fsub double %i.pq, %i.ob
  %i.ps = fsub <2 x double> %i.op, %i.ph
  %i.pt = fadd <2 x double> %i.op, %i.ph
  %i.pu = shufflevector <2 x double> %i.ps, <2 x double> %i.pt, <2 x i32> <i32 0, i32 3>
  %i.pv = fmul <2 x double> %i.pu, splat (double f0x3FE1E3779B97F4A8) ; 4 uses
  %foldExtExtBinop890 = fsub <2 x double> %i.pp, %i.pv
  %i.pw = extractelement <2 x double> %foldExtExtBinop890, i64 1 ; 2 uses
  %i.px = fsub double %i.pa, %i.or                ; 2 uses
  %i.py = fsub double %i.oi, %i.oy                ; 2 uses
  %i.pz = fmul double %i.py, f0x3FE2CF2304755A5E
  %i.qa = tail call double @llvm.fmuladd.f64(double %i.px, double f0x3FEE6F0E134454FF, double %i.pz) ; 2 uses
  %i.qb = fmul double %i.px, f0xBFE2CF2304755A5E
  %i.qc = fadd double %i.oz, %i.pb                ; 2 uses
  %i.qd = insertelement <2 x double> poison, double %i.py, i64 0
  %i.qe = insertelement <2 x double> %i.qd, double %i.qc, i64 1
  %i.qf = insertelement <2 x double> poison, double %i.qb, i64 0
  %i.qg = insertelement <2 x double> %i.qf, double %i.oa, i64 1
  %i.qh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qe, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.qg) ; 2 uses
  %i.qi = extractelement <2 x double> %i.qh, i64 0 ; 2 uses
  %i.qj = fsub double %i.pb, %i.oz
  %i.qk = fmul double %i.qj, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop892 = fadd <2 x double> %i.ou, %i.ox ; 2 uses
  %foldExtExtBinop894 = fadd <2 x double> %i.oe, %i.oh ; 2 uses
  %foldExtExtBinop896 = fadd <2 x double> %foldExtExtBinop892, %foldExtExtBinop894 ; 2 uses
  %foldExtExtBinop898 = fadd <2 x double> %i.oj, %i.ok ; 2 uses
  %foldExtExtBinop900 = fadd <2 x double> %i.om, %i.on ; 2 uses
  %foldExtExtBinop902 = fadd <2 x double> %foldExtExtBinop898, %foldExtExtBinop900 ; 2 uses
  %foldExtExtBinop904 = fadd <2 x double> %i.ph, %i.op ; 2 uses
  %i.ql = extractelement <2 x double> %foldExtExtBinop904, i64 0
  %i.qm = fadd double %i.nw, %i.ql
  store double %i.qm, ptr %i.bw, align 8, !tbaa !13
  %foldExtExtBinop906 = fsub <2 x double> %i.oo, %i.ol
  %foldExtExtBinop908 = fsub <2 x double> %i.pc, %i.pd
  %i.qn = shufflevector <2 x double> %foldExtExtBinop908, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qo = fmul <2 x double> %i.qn, <double f0x3FEE6F0E134454FF, double f0xBFE2CF2304755A5E>
  %i.qp = shufflevector <2 x double> %foldExtExtBinop906, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qp, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEE6F0E134454FF>, <2 x double> %i.qo) ; 3 uses
  %i.qr = extractelement <2 x double> %i.qq, i64 0 ; 2 uses
  %foldExtExtBinop910 = fsub <2 x double> %foldExtExtBinop902, %foldExtExtBinop896
  %i.qs = extractelement <2 x double> %foldExtExtBinop910, i64 0
  %i.qt = fmul double %i.qs, f0x3FE1E3779B97F4A8  ; 2 uses
  %foldExtExtBinop912 = fadd <2 x double> %foldExtExtBinop896, %foldExtExtBinop902
  %i.qu = extractelement <2 x double> %foldExtExtBinop912, i64 0 ; 2 uses
  %i.qv = tail call double @llvm.fmuladd.f64(double %i.qu, double -2.500000e-01, double %i.nx) ; 2 uses
  %i.qw = fadd double %i.nx, %i.qu
  %i.qx = fsub double %i.qv, %i.qt                ; 2 uses
  %i.qy = fadd double %i.qt, %i.qv                ; 2 uses
  %i.qz = shufflevector <2 x double> %foldExtExtBinop904, <2 x double> %foldExtExtBinop888, <2 x i32> <i32 0, i32 3>
  %i.ra = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qz, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.pl) ; 4 uses
  %foldExtExtBinop914 = fadd <2 x double> %i.pv, %i.ra ; 2 uses
  %foldExtExtBinop916 = fsub <2 x double> %foldExtExtBinop914, %i.pp
  %i.rb = extractelement <2 x double> %foldExtExtBinop916, i64 0
  store double %i.rb, ptr %i.ae, align 8, !tbaa !13
  %foldExtExtBinop918 = fadd <2 x double> %i.pp, %foldExtExtBinop914
  %i.rc = extractelement <2 x double> %foldExtExtBinop918, i64 0
  store double %i.rc, ptr %i.dv, align 8, !tbaa !13
  %i.rd = shufflevector <2 x double> %i.ra, <2 x double> %i.pp, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.re = fsub <2 x double> %i.rd, %i.pv          ; 2 uses
  %i.rf = fadd <2 x double> %i.rd, %i.pv          ; 2 uses
  %i.rg = shufflevector <2 x double> %i.re, <2 x double> %i.rf, <2 x i32> <i32 0, i32 3>
  %i.rh = shufflevector <2 x double> %i.ra, <2 x double> %i.qq, <2 x i32> <i32 1, i32 3>
  %i.ri = fadd <2 x double> %i.rh, %i.rg          ; 2 uses
  %i.rj = extractelement <2 x double> %i.ri, i64 0
  %i.rk = shufflevector <2 x double> %i.re, <2 x double> %i.qq, <2 x i32> <i32 0, i32 3>
  %i.rl = shufflevector <2 x double> %i.ra, <2 x double> %i.rf, <2 x i32> <i32 1, i32 3>
  %i.rm = fsub <2 x double> %i.rk, %i.rl          ; 2 uses
  %i.rn = extractelement <2 x double> %i.rm, i64 0
  store double %i.rn, ptr %i.en, align 8, !tbaa !13
  store double %i.rj, ptr %i.eg, align 8, !tbaa !13
  store double %i.pr, ptr %i.il, align 8, !tbaa !13
  %i.ro = extractelement <2 x double> %i.rm, i64 1
  store double %i.ro, ptr %i.ht, align 8, !tbaa !13
  %i.rp = extractelement <2 x double> %i.ri, i64 1
  store double %i.rp, ptr %i.db, align 8, !tbaa !13
  %i.rq = fsub double %i.qr, %i.pw
  store double %i.rq, ptr %i.do, align 8, !tbaa !13
  %i.rr = fadd double %i.qr, %i.pw
  store double %i.rr, ptr %i.an, align 8, !tbaa !13
  store double %i.qw, ptr %.0875, align 8, !tbaa !13
  %i.rs = fsub double %i.qx, %i.qi
  store double %i.rs, ptr %i.ha, align 8, !tbaa !13
  %i.rt = fadd double %i.qi, %i.qx
  store double %i.rt, ptr %i.iu, align 8, !tbaa !13
  %i.ru = fsub double %i.qy, %i.qa
  store double %i.ru, ptr %i.bj, align 8, !tbaa !13
  %i.rv = fadd double %i.qa, %i.qy
  store double %i.rv, ptr %i.jk, align 8, !tbaa !13
  %foldExtExtBinop920 = fsub <2 x double> %foldExtExtBinop898, %foldExtExtBinop900
  %foldExtExtBinop922 = fsub <2 x double> %foldExtExtBinop892, %foldExtExtBinop894
  %i.rw = shufflevector <2 x double> %foldExtExtBinop922, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rx = fmul <2 x double> %i.rw, <double f0x3FE2CF2304755A5E, double f0xBFEE6F0E134454FF>
  %i.ry = shufflevector <2 x double> %foldExtExtBinop920, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ry, <2 x double> <double f0x3FEE6F0E134454FF, double f0x3FE2CF2304755A5E>, <2 x double> %i.rx) ; 2 uses
  %i.sa = fadd double %i.oa, %i.qc
  store double %i.sa, ptr %.0863874, align 8, !tbaa !13
  %i.sb = extractelement <2 x double> %i.qh, i64 1 ; 2 uses
  %i.sc = fsub double %i.sb, %i.qk                ; 2 uses
  %i.sd = extractelement <2 x double> %i.rz, i64 1 ; 2 uses
  %i.se = fsub double %i.sd, %i.sc
  store double %i.se, ptr %i.ba, align 8, !tbaa !13
  %i.sf = fadd double %i.sd, %i.sc
  store double %i.sf, ptr %i.cf, align 8, !tbaa !13
  %i.sg = fadd double %i.qk, %i.sb                ; 2 uses
  %i.sh = extractelement <2 x double> %i.rz, i64 0 ; 2 uses
  %i.si = fsub double %i.sh, %i.sg
  store double %i.si, ptr %i.cs, align 8, !tbaa !13
  %i.sj = fadd double %i.sh, %i.sg
  store double %i.sj, ptr %i.ia, align 8, !tbaa !13
  %foldExtExtBinop924 = fsub <2 x double> %i.kk, %i.fz
  %i.sk = extractelement <2 x double> %foldExtExtBinop924, i64 1 ; 2 uses
  %foldExtExtBinop926 = fsub <2 x double> %i.mm, %i.gk
  %i.sl = extractelement <2 x double> %foldExtExtBinop926, i64 0 ; 2 uses
  %i.sm = fadd double %i.sk, %i.sl                ; 2 uses
  %i.sn = shufflevector <2 x double> %i.kk, <2 x double> %i.gx, <2 x i32> <i32 0, i32 2>
  %i.so = shufflevector <2 x double> %i.fz, <2 x double> %i.mx, <2 x i32> <i32 0, i32 2>
  %i.sp = fsub <2 x double> %i.sn, %i.so          ; 2 uses
  %i.sq = shufflevector <2 x double> %i.mm, <2 x double> %i.nj, <2 x i32> <i32 1, i32 3>
  %i.sr = shufflevector <2 x double> %i.gk, <2 x double> %i.it, <2 x i32> <i32 1, i32 3>
  %i.ss = fsub <2 x double> %i.sq, %i.sr          ; 2 uses
  %i.st = shufflevector <2 x double> %i.ge, <2 x double> %i.hq, <2 x i32> <i32 1, i32 3>
  %i.su = shufflevector <2 x double> %i.mg, <2 x double> %i.nd, <2 x i32> <i32 1, i32 3>
  %i.sv = fsub <2 x double> %i.st, %i.su          ; 2 uses
  %i.sw = shufflevector <2 x double> %i.ms, <2 x double> %i.jh, <2 x i32> <i32 0, i32 2>
  %i.sx = shufflevector <2 x double> %i.gp, <2 x double> %i.nt, <2 x i32> <i32 0, i32 2>
  %i.sy = fsub <2 x double> %i.sw, %i.sx          ; 2 uses
  %i.sz = fsub <2 x double> %i.sp, %i.ss          ; 3 uses
  %i.ta = fsub <2 x double> %i.sy, %i.sv          ; 3 uses
  %foldExtExtBinop928 = fadd <2 x double> %i.sz, %i.ta
  %i.tb = extractelement <2 x double> %foldExtExtBinop928, i64 0 ; 2 uses
  %foldExtExtBinop930 = fadd <2 x double> %i.sz, %i.ta
  %i.tc = extractelement <2 x double> %foldExtExtBinop930, i64 1 ; 2 uses
  %i.td = fsub double %i.tc, %i.tb
  %i.te = fmul double %i.td, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.tf = fadd double %i.tb, %i.tc                ; 2 uses
  %i.tg = insertelement <2 x double> poison, double %i.tf, i64 0
  %i.th = fsub <2 x double> %i.sz, %i.ta          ; 2 uses
  %i.ti = fmul <2 x double> %i.th, <double f0x3FE2CF2304755A5E, double f0xBFE2CF2304755A5E>
  %i.tj = shufflevector <2 x double> %i.ti, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.tk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.th, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.tj) ; 2 uses
  %i.tl = extractelement <2 x double> %i.tk, i64 0 ; 2 uses
  %i.tm = extractelement <2 x double> %i.tk, i64 1 ; 2 uses
  %foldExtExtBinop932 = fsub <2 x double> %i.nd, %i.hq
  %i.tn = extractelement <2 x double> %foldExtExtBinop932, i64 0 ; 2 uses
  %foldExtExtBinop934 = fsub <2 x double> %i.jh, %i.nt
  %i.to = extractelement <2 x double> %foldExtExtBinop934, i64 1 ; 2 uses
  %i.tp = fsub double %i.y, %i.kd                 ; 2 uses
  %i.tq = fsub double %i.ly, %i.lz                ; 2 uses
  %i.tr = fsub double %i.tp, %i.tq                ; 2 uses
  %i.ts = fadd double %i.tp, %i.tq                ; 2 uses
  %i.tt = fsub double %i.sk, %i.sl                ; 2 uses
  %i.tu = fsub double %i.tn, %i.to                ; 2 uses
  %i.tv = insertelement <2 x double> poison, double %i.tr, i64 0
  %foldExtExtBinop936 = fsub <2 x double> %i.gx, %i.mx
  %i.tw = extractelement <2 x double> %foldExtExtBinop936, i64 1 ; 2 uses
  %foldExtExtBinop938 = fsub <2 x double> %i.nj, %i.it
  %i.tx = extractelement <2 x double> %foldExtExtBinop938, i64 0 ; 2 uses
  %i.ty = fadd double %i.tw, %i.tx                ; 2 uses
  %i.tz = fsub double %i.tu, %i.ty                ; 2 uses
  %i.ua = fadd double %i.ty, %i.tu                ; 2 uses
  %i.ub = insertelement <2 x double> %i.tv, double %i.ua, i64 1
  %i.uc = fmul <2 x double> %i.ub, <double 1.000000e+00, double f0xBFE2CF2304755A5E>
  %i.ud = insertelement <2 x double> poison, double %i.ua, i64 0
  %i.ue = fadd double %i.tr, %i.tf
  store double %i.ue, ptr %i.bl, align 8, !tbaa !13
  %i.uf = insertelement <2 x double> poison, double %i.ts, i64 0
  %foldExtExtBinop940 = fsub <2 x double> %i.ge, %i.mg
  %i.ug = extractelement <2 x double> %foldExtExtBinop940, i64 0 ; 2 uses
  %foldExtExtBinop942 = fsub <2 x double> %i.ms, %i.gp
  %i.uh = extractelement <2 x double> %foldExtExtBinop942, i64 1 ; 2 uses
  %i.ui = fsub double %i.z, %i.ke                 ; 2 uses
  %i.uj = fadd double %i.ui, %i.lx                ; 2 uses
  %i.uk = fadd double %i.ug, %i.uh                ; 2 uses
  %i.ul = fadd double %i.sm, %i.uk                ; 2 uses
  %i.um = fsub double %i.sm, %i.uk                ; 2 uses
  %i.un = fmul double %i.um, f0x3FE2CF2304755A5E
  %i.uo = insertelement <2 x double> poison, double %i.un, i64 0
  %i.up = insertelement <2 x double> %i.uo, double %i.uj, i64 1
  %i.uq = insertelement <2 x double> %i.tg, double %i.um, i64 1
  %i.ur = fadd double %i.tn, %i.to                ; 2 uses
  %i.us = fsub double %i.uh, %i.ug                ; 2 uses
  %9 = fadd double %i.tt, %i.us                   ; 2 uses
  %i.ut = fsub double %i.tw, %i.tx                ; 2 uses
  %10 = fadd double %i.ut, %i.ur                  ; 2 uses
  %i.uu = fsub double %i.tz, %i.ul                ; 2 uses
  %i.uv = insertelement <2 x double> %i.ud, double %i.uu, i64 1
  %i.uw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uv, <2 x double> <double f0x3FEE6F0E134454FF, double 2.500000e-01>, <2 x double> %i.up) ; 2 uses
  %i.ux = extractelement <2 x double> %i.uw, i64 0 ; 2 uses
  %i.uy = fadd double %i.ul, %i.tz
  %i.uz = fmul double %i.uy, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.va = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.uq, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.uc) ; 2 uses
  %i.vb = extractelement <2 x double> %i.va, i64 0 ; 2 uses
  %i.vc = fadd double %i.te, %i.vb                ; 2 uses
  %i.vd = fadd double %i.ux, %i.vc
  store double %i.vd, ptr %i.iw, align 8, !tbaa !13
  %i.ve = fsub double %i.vc, %i.ux
  store double %i.ve, ptr %.0864873, align 8, !tbaa !13
  %i.vf = fsub double %i.vb, %i.te                ; 2 uses
  %i.vg = extractelement <2 x double> %i.va, i64 1 ; 2 uses
  %i.vh = fadd double %i.vg, %i.vf
  store double %i.vh, ptr %i.ji, align 8, !tbaa !13
  %i.vi = fsub double %i.vf, %i.vg
  store double %i.vi, ptr %i.gy, align 8, !tbaa !13
  %i.vj = fsub double %i.uu, %i.uj
  store double %i.vj, ptr %i.ic, align 8, !tbaa !13
  %i.vk = extractelement <2 x double> %i.uw, i64 1 ; 2 uses
  %i.vl = fadd double %i.uz, %i.vk                ; 2 uses
  %i.vm = fsub double %i.vl, %i.tl
  store double %i.vm, ptr %i.cq, align 8, !tbaa !13
  %i.vn = fadd double %i.tl, %i.vl
  store double %i.vn, ptr %i.ay, align 8, !tbaa !13
  %i.vo = fsub double %i.uz, %i.vk                ; 2 uses
  %i.vp = fadd double %i.tm, %i.vo
  store double %i.vp, ptr %i.ch, align 8, !tbaa !13
  %i.vq = fsub double %i.vo, %i.tm
  store double %i.vq, ptr %.0865872, align 8, !tbaa !13
  %i.vr = insertelement <2 x double> poison, double %i.ut, i64 0
  %i.vs = insertelement <2 x double> %i.vr, double %i.ui, i64 1
  %i.vt = insertelement <2 x double> poison, double %i.ur, i64 0
  %i.vu = shufflevector <2 x double> %i.vt, <2 x double> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.vv = fsub <2 x double> %i.vs, %i.vu          ; 3 uses
  %i.vw = fsub double %i.tt, %i.us                ; 2 uses
  %i.vx = insertelement <2 x double> %i.uf, double %i.vw, i64 1
  %i.vy = fmul <2 x double> %i.vx, <double 1.000000e+00, double f0x3FE2CF2304755A5E>
  %i.vz = fmul <2 x double> %i.vv, <double f0xBFE2CF2304755A5E, double 1.000000e+00>
  %11 = fadd double %9, %10                       ; 2 uses
  %12 = insertelement <2 x double> poison, double %i.vw, i64 0
  %i.wa = insertelement <2 x double> %12, double %11, i64 1
  %13 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wa, <2 x double> <double f0x3FEE6F0E134454FF, double -2.500000e-01>, <2 x double> %i.vz) ; 2 uses
  %14 = extractelement <2 x double> %13, i64 0    ; 2 uses
  %15 = fsub double %10, %9
  %16 = fmul double %15, f0x3FE1E3779B97F4A8      ; 2 uses
  %17 = fadd <2 x double> %i.sp, %i.ss            ; 3 uses
  %18 = fadd <2 x double> %i.sv, %i.sy            ; 3 uses
  %foldExtExtBinop944.a = fadd <2 x double> %17, %18
  %19 = extractelement <2 x double> %foldExtExtBinop944.a, i64 0 ; 2 uses
  %foldExtExtBinop946 = fadd <2 x double> %17, %18
  %20 = extractelement <2 x double> %foldExtExtBinop946, i64 1 ; 2 uses
  %21 = fsub double %20, %19
  %22 = fmul double %21, f0x3FE1E3779B97F4A8      ; 2 uses
  %23 = fadd double %19, %20                      ; 2 uses
  %24 = insertelement <2 x double> poison, double %23, i64 0
  %i.wb = fadd double %i.ts, %23
  %i.wc = shufflevector <2 x double> %24, <2 x double> %i.vv, <2 x i32> <i32 0, i32 2>
  %i.wd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.wc, <2 x double> <double -2.500000e-01, double f0x3FEE6F0E134454FF>, <2 x double> %i.vy) ; 2 uses
  store double %i.wb, ptr %i.ac, align 8, !tbaa !13
  %25 = extractelement <2 x double> %i.wd, i64 0  ; 2 uses
  %26 = fsub double %25, %22                      ; 2 uses
  %27 = fadd double %14, %26
  store double %27, ptr %i.dx, align 8, !tbaa !13
  %28 = fsub double %26, %14
  store double %28, ptr %i.ep, align 8, !tbaa !13
  %29 = fadd double %22, %25                      ; 2 uses
  %30 = extractelement <2 x double> %i.wd, i64 1  ; 2 uses
  %31 = fadd double %30, %29
  store double %31, ptr %i.ee, align 8, !tbaa !13
  %32 = fsub double %29, %30
  store double %32, ptr %i.bu, align 8, !tbaa !13
  %33 = fsub <2 x double> %17, %18                ; 2 uses
  %34 = fmul <2 x double> %33, <double f0x3FE2CF2304755A5E, double f0xBFE2CF2304755A5E>
  %35 = shufflevector <2 x double> %34, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %36 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %33, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %35) ; 2 uses
  %37 = extractelement <2 x double> %i.vv, i64 1
  %38 = fadd double %37, %11
  store double %38, ptr %i.hr, align 8, !tbaa !13
  %i.we = extractelement <2 x double> %13, i64 1  ; 2 uses
  %39 = fadd double %16, %i.we                    ; 2 uses
  %40 = extractelement <2 x double> %36, i64 1    ; 2 uses
  %41 = fsub double %39, %40
  store double %41, ptr %i.dm, align 8, !tbaa !13
  %42 = fadd double %40, %39
  store double %42, ptr %i.ij, align 8, !tbaa !13
  %43 = fsub double %16, %i.we                    ; 2 uses
  %i.wf = extractelement <2 x double> %36, i64 0  ; 2 uses
  %i.wg = fadd double %i.wf, %43
  store double %i.wg, ptr %i.dd, align 8, !tbaa !13
  %i.wh = fsub double %43, %i.wf
  store double %i.wh, ptr %i.ap, align 8, !tbaa !13
  %i.wi = add nsw i64 %.0868869, 1                ; 2 uses
  %i.wj = getelementptr inbounds [8 x i8], ptr %.0875, i64 %8
  %i.wk = getelementptr inbounds [8 x i8], ptr %.0863874, i64 %8
  %i.wl = getelementptr inbounds [8 x i8], ptr %.0864873, i64 %i.d
  %i.wm = getelementptr inbounds [8 x i8], ptr %.0865872, i64 %i.d
  %i.wn = getelementptr inbounds nuw i8, ptr %.0866871, i64 64
  %i.wo = getelementptr inbounds [8 x i8], ptr %.0867870, i64 %i.e
  %exitcond.not = icmp eq i64 %i.wi, %7
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #3

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #2 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="icelake-server" }
attributes #3 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #4 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = distinct !{!9, !14}
!10 = !{!"long", !5, i64 0}
!11 = !{!10, !10, i64 0}
!12 = !{!"double", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
