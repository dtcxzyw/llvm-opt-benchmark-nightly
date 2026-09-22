Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rho?download=true
inline.NumInlined: 221
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv13RHO_HEST_REFC6refineEv:bb.a
  store float %i.ly, ptr %i.is, align 4, !tbaa !76
  %i.lz = fmul float %i.jr, %i.kf                 ; 3 uses
  %i.ma = load <2 x float>, ptr %i.hp, align 4, !tbaa !76 ; 3 uses
  %i.mb = load float, ptr %i.io, align 4, !tbaa !76 ; 3 uses
  %i.mc = load float, ptr %i.iq, align 4, !tbaa !76 ; 3 uses
  %i.md = load float, ptr %i.hr, align 4, !tbaa !76 ; 3 uses
  %i.me = load <2 x float>, ptr %i.hu, align 4, !tbaa !76 ; 3 uses
  %i.mf = load <2 x float>, ptr %i.hx, align 4, !tbaa !76
  %i.mg = fmul float %i.kk, %i.in
  %i.mh = fmul float %i.kl, %i.ik                 ; 2 uses
  %i.mi = fneg float %i.ku                        ; 3 uses
  %i.mj = fmul float %i.ia, %i.mi
  %i.mk = fmul float %i.jk, %i.kv                 ; 2 uses
  %i.ml = fmul float %i.jj, %i.mj                 ; 8 uses
  %i.mm = fmul float %i.mk, %i.mi                 ; 6 uses
  %i.mn = insertelement <4 x float> %i.ld, float %i.ml, i64 0
  %i.mo = insertelement <4 x float> poison, float %i.mk, i64 0
  %i.mp = insertelement <4 x float> %i.mo, float %i.ky, i64 1
  %i.mq = insertelement <4 x float> %i.mp, float %i.kx, i64 2
  %i.mr = insertelement <4 x float> %i.mq, float %i.la, i64 3
  %i.ms = fmul <4 x float> %i.mn, %i.mr
  %i.mt = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.lh, <4 x float> %i.lj, <4 x float> %i.ms) ; 5 uses
  %i.mu = shufflevector <4 x float> %i.mt, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.mv = shufflevector <2 x float> %i.mu, <2 x float> %i.kc, <2 x i32> <i32 0, i32 3>
  %i.mw = shufflevector <4 x float> %i.mt, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.mx = tail call float @llvm.fmuladd.f32(float %i.lc, float %i.ik, float %i.mg) ; 2 uses
  store float %i.ml, ptr %i.hh, align 4, !tbaa !76
  %i.my = extractelement <4 x float> %i.mt, i64 0
  %i.mz = fneg float %i.my                        ; 5 uses
  store float %i.mz, ptr %i.hk, align 4, !tbaa !76
  store float %i.mm, ptr %i.ig, align 4, !tbaa !76
  %i.na = insertelement <2 x float> %i.kg, float %i.ml, i64 0
  %i.nb = fmul <2 x float> %i.na, %i.mv
  %i.nc = fmul float %i.kt, %i.md
  %i.nd = extractelement <2 x float> %i.ma, i64 0 ; 3 uses
  %i.ne = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.nd, float %i.nc)
  %i.nf = fmul float %i.kt, %i.mc
  %i.ng = tail call float @llvm.fmuladd.f32(float %i.lp, float %i.mb, float %i.nf) ; 2 uses
  %i.nh = fmul float %i.ml, %i.ng
  %i.ni = tail call float @llvm.fmuladd.f32(float %i.ne, float %i.jj, float %i.nh)
  %i.nj = tail call float @llvm.fmuladd.f32(float %i.lw, float %i.mz, float %i.ni)
  %i.nk = fmul float %i.mm, %i.lw
  %i.nl = tail call float @llvm.fmuladd.f32(float %i.ng, float %i.ku, float %i.nk)
  %i.nm = extractelement <4 x float> %i.mt, i64 2
  %i.nn = fmul float %i.nm, %i.mi                 ; 6 uses
  %i.no = insertelement <2 x float> %i.ji, float %i.nn, i64 0
  %i.np = insertelement <2 x float> poison, float %i.nl, i64 0
  %i.nq = shufflevector <2 x float> %i.np, <2 x float> %foldExtExtBinop, <2 x i32> <i32 0, i32 2>
  %i.nr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lv, <2 x float> %i.no, <2 x float> %i.nq)
  %i.ns = fneg <2 x float> %i.nr                  ; 5 uses
  %i.nt = extractelement <2 x float> %i.ns, i64 1
  store float %i.nt, ptr %i.ir, align 4, !tbaa !76
  %i.nu = fmul float %i.lp, %i.mh
  %i.nv = tail call float @llvm.fmuladd.f32(float %i.lk, float %i.jr, float %i.nu)
  %i.nw = fneg float %i.nv                        ; 6 uses
  store float %i.nw, ptr %i.ii, align 4, !tbaa !76
  %i.nx = fmul float %i.mx, %i.ln                 ; 6 uses
  %i.ny = fmul float %i.mh, %i.ln                 ; 6 uses
  store float %i.ny, ptr %i.ij, align 4, !tbaa !76
  %i.nz = fmul float %i.ny, %i.md
  %i.oa = tail call float @llvm.fmuladd.f32(float %i.nw, float %i.nd, float %i.nz)
  %i.ob = extractelement <2 x float> %i.me, i64 0
  %i.oc = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.ob, float %i.oa)
  %i.od = fmul float %i.lp, %i.mx
  %i.oe = extractelement <4 x float> %i.mt, i64 3
  %i.of = tail call float @llvm.fmuladd.f32(float %i.oe, float %i.jr, float %i.od)
  %i.og = fneg float %i.of                        ; 5 uses
  %i.oh = fmul float %i.nx, %i.mc
  %i.oi = fmul float %i.nx, %i.md
  %i.oj = fmul float %i.ny, %i.mc
  %i.ok = tail call float @llvm.fmuladd.f32(float %i.og, float %i.mb, float %i.oh)
  %i.ol = tail call float @llvm.fmuladd.f32(float %i.og, float %i.nd, float %i.oi)
  %i.om = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.nw, i64 0
  %i.on = insertelement <4 x float> %i.om, float %i.lc, i64 1
  %i.oo = shufflevector <4 x float> %i.on, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.op = shufflevector <2 x float> %i.ma, <2 x float> %i.me, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.oq = insertelement <4 x float> %i.op, float -0.000000e+00, i64 3
  %i.or = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.oj, i64 0
  %i.os = insertelement <4 x float> %i.or, float %i.ol, i64 1
  %i.ot = insertelement <4 x float> %i.os, float %i.ok, i64 2
  %i.ou = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oo, <4 x float> %i.oq, <4 x float> %i.ot)
  %i.ov = shufflevector <2 x float> %i.me, <2 x float> %i.mf, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.ow = shufflevector <2 x float> %i.ma, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.ox = shufflevector <4 x float> %i.ov, <4 x float> %i.ow, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.oy = shufflevector <2 x float> %i.kj, <2 x float> %i.jp, <4 x i32> <i32 0, i32 1, i32 1, i32 3>
  %i.oz = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ox, <4 x float> %i.oy, <4 x float> %i.ou) ; 3 uses
  %i.pa = extractelement <4 x float> %i.oz, i64 0
  %i.pb = fmul float %i.ml, %i.pa
  %i.pc = tail call float @llvm.fmuladd.f32(float %i.oc, float %i.jj, float %i.pb)
  store float %i.nn, ptr %i.ih, align 4, !tbaa !76
  store float %i.og, ptr %i.il, align 4, !tbaa !76
  store float %i.nx, ptr %i.im, align 4, !tbaa !76
  %i.pd = insertelement <2 x float> poison, float %i.ny, i64 0
  %i.pe = shufflevector <2 x float> %i.pd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pf = fmul <2 x float> %i.pe, %i.jx
  %i.pg = insertelement <2 x float> poison, float %i.nw, i64 0
  %i.ph = shufflevector <2 x float> %i.pg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pi = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ph, <2 x float> %i.ka, <2 x float> %i.pf)
  %i.pj = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kp, <2 x float> %i.jy, <2 x float> %i.pi) ; 4 uses
  %i.pk = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.pl = shufflevector <2 x float> %i.pk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pm = fmul <2 x float> %i.pl, %i.jx
  %i.pn = insertelement <2 x float> poison, float %i.og, i64 0 ; 2 uses
  %i.po = shufflevector <2 x float> %i.pn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.po, <2 x float> %i.ka, <2 x float> %i.pm)
  %i.pq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lm, <2 x float> %i.jy, <2 x float> %i.pp)
  %i.pr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ko, <2 x float> %i.jz, <2 x float> %i.pq) ; 4 uses
  %i.ps = extractelement <2 x float> %i.pj, i64 0
  %i.pt = tail call float @llvm.fmuladd.f32(float %i.ps, float %i.mz, float %i.pc)
  %i.pu = extractelement <2 x float> %i.pj, i64 1 ; 3 uses
  %i.pv = fmul float %i.ke, %i.pu
  %i.pw = insertelement <2 x float> %i.jv, float %i.nn, i64 1 ; 2 uses
  %i.px = insertelement <4 x float> poison, float %i.pv, i64 0
  %i.py = extractelement <2 x float> %i.pr, i64 0
  %i.pz = fmul float %i.jr, %i.mb                 ; 2 uses
  %i.qa = insertelement <4 x float> poison, float %i.mm, i64 0
  %i.qb = insertelement <4 x float> %i.qa, float %i.ml, i64 1
  %i.qc = shufflevector <4 x float> %i.qb, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qd = shufflevector <2 x float> %i.pj, <2 x float> %i.pr, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.qe = shufflevector <4 x float> %i.qd, <4 x float> %i.oz, <4 x i32> <i32 0, i32 6, i32 2, i32 poison>
  %i.qf = insertelement <4 x float> %i.qe, float %i.pz, i64 3
  %i.qg = fmul <4 x float> %i.qc, %i.qf
  %i.qh = shufflevector <2 x float> %i.ks, <2 x float> %i.ji, <4 x i32> <i32 0, i32 2, i32 0, i32 2>
  %i.qi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.oz, <4 x float> %i.qh, <4 x float> %i.qg) ; 4 uses
  %i.qj = shufflevector <4 x float> %i.qi, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.qk = shufflevector <4 x float> %i.px, <4 x float> %i.qi, <2 x i32> <i32 0, i32 4>
  %i.ql = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pj, <2 x float> %i.pw, <2 x float> %i.qk)
  %i.qm = extractelement <4 x float> %i.qi, i64 1
  %i.qn = tail call float @llvm.fmuladd.f32(float %i.py, float %i.mz, float %i.qm)
  %i.qo = extractelement <2 x float> %i.pr, i64 1 ; 3 uses
  %i.qp = fmul float %i.ke, %i.qo
  %i.qq = insertelement <2 x float> %i.qj, float %i.qp, i64 0
  %i.qr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pr, <2 x float> %i.pw, <2 x float> %i.qq)
  %i.qs = insertelement <2 x float> %i.mw, float %i.lz, i64 1
  %i.qt = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qs, <2 x float> %i.ji, <2 x float> %i.nb)
  %i.qu = fneg <2 x float> %i.qt                  ; 6 uses
  %i.qv = extractelement <2 x float> %i.qu, i64 0 ; 4 uses
  store float %i.qv, ptr %i.hn, align 4, !tbaa !76
  %i.qw = fmul float %i.mm, %i.lz
  %i.qx = insertelement <2 x float> poison, float %i.lz, i64 0
  %i.qy = insertelement <2 x float> %i.qx, float %i.pz, i64 1
  %i.qz = insertelement <2 x float> poison, float %i.mz, i64 0
  %i.ra = shufflevector <2 x float> %i.qz, <2 x float> %i.ks, <2 x i32> <i32 0, i32 2> ; 3 uses
  %i.rb = shufflevector <4 x float> %i.qi, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.rc = insertelement <2 x float> %i.rb, float %i.qw, i64 1
  %i.rd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qy, <2 x float> %i.ra, <2 x float> %i.rc)
  %i.re = shufflevector <2 x float> %i.kc, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rf = insertelement <2 x float> %i.qu, float %i.nn, i64 1
  %i.rg = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.re, <2 x float> %i.rf, <2 x float> %i.rd)
  %i.rh = fneg <2 x float> %i.rg                  ; 4 uses
  %i.ri = extractelement <2 x float> %i.rh, i64 0
  store float %i.ri, ptr %i.hp, align 4, !tbaa !76
  %i.rj = shufflevector <2 x float> %i.qu, <2 x float> %i.kd, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.rj, ptr %i.ip, align 4, !tbaa !76
  %i.rk = tail call float @llvm.fmuladd.f32(float %i.lx, float %i.qv, float %i.nj)
  %i.rl = fneg float %i.rk                        ; 3 uses
  store float %i.rl, ptr %i.hr, align 4, !tbaa !76
  %i.rm = tail call float @llvm.fmuladd.f32(float %i.pu, float %i.qv, float %i.pt)
  %i.rn = tail call float @llvm.fmuladd.f32(float %i.qo, float %i.qv, float %i.qn)
  %i.ro = extractelement <2 x float> %i.rh, i64 1 ; 2 uses
  store float %i.ro, ptr %i.io, align 4, !tbaa !76
  %i.rp = extractelement <2 x float> %i.ns, i64 0
  store float %i.rp, ptr %i.iq, align 4, !tbaa !76
  %i.rq = fneg float %i.rm                        ; 3 uses
  store float %i.rq, ptr %i.hu, align 4, !tbaa !76
  %i.rr = fneg <2 x float> %i.ql                  ; 4 uses
  %i.rs = extractelement <2 x float> %i.rr, i64 1 ; 2 uses
  store float %i.rs, ptr %i.it, align 4, !tbaa !76
  %i.rt = extractelement <2 x float> %i.rr, i64 0
  store float %i.rt, ptr %i.iu, align 4, !tbaa !76
  %i.ru = fmul float %i.pu, %i.js                 ; 3 uses
  store float %i.ru, ptr %i.iv, align 4, !tbaa !76
  %i.rv = fneg float %i.rn                        ; 3 uses
  store float %i.rv, ptr %i.hx, align 4, !tbaa !76
  %i.rw = fneg <2 x float> %i.qr                  ; 4 uses
  %i.rx = extractelement <2 x float> %i.rw, i64 1 ; 2 uses
  store float %i.rx, ptr %i.iw, align 4, !tbaa !76
  %i.ry = extractelement <2 x float> %i.rw, i64 0
  store float %i.ry, ptr %i.ix, align 4, !tbaa !76
  %i.rz = fmul float %i.qo, %i.js                 ; 3 uses
  store float %i.rz, ptr %i.iy, align 4, !tbaa !76
  %i.sa = load float, ptr %i.iz, align 4, !tbaa !76 ; 5 uses
  %i.sb = fmul float %i.jj, %i.sa
  %i.sc = load float, ptr %i.ja, align 4, !tbaa !76 ; 6 uses
  %i.sd = fmul float %i.mm, %i.sc
  %i.se = insertelement <2 x float> poison, float %i.sa, i64 0
  %i.sf = insertelement <2 x float> %i.se, float %i.sc, i64 1 ; 3 uses
  %i.sg = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.sd, i64 0
  %i.sh = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.ra, <2 x float> %i.sg)
  %i.si = load <2 x float>, ptr %i.jb, align 4, !tbaa !76 ; 5 uses
  %i.sj = insertelement <2 x float> %i.jw, float %i.ml, i64 1
  %i.sk = insertelement <2 x float> %i.si, float %i.sa, i64 1 ; 3 uses
  %i.sl = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sj, <2 x float> %i.sk, <2 x float> %i.sh) ; 4 uses
  %i.sm = fmul float %i.sc, %i.ro
  %i.sn = insertelement <2 x float> %i.rh, float %i.nn, i64 1
  %i.so = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.sm, i64 0
  %i.sp = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sf, <2 x float> %i.sn, <2 x float> %i.so)
  %i.sq = shufflevector <2 x float> %i.sp, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.sr = shufflevector <2 x float> %i.sk, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ss = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.qu, <2 x float> %i.sr, <2 x float> %i.sq)
  %i.st = load <2 x float>, ptr %i.jc, align 4, !tbaa !76 ; 5 uses
  %i.su = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kd, <2 x float> %i.si, <2 x float> %i.ss)
  %i.sv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jp, <2 x float> %i.st, <2 x float> %i.su) ; 4 uses
  %i.sw = shufflevector <2 x float> %i.sv, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.sx = fmul float %i.sc, %i.rs
  %i.sy = fmul float %i.sc, %i.rx
  %i.sz = tail call float @llvm.fmuladd.f32(float %i.rv, float %i.sa, float %i.sy)
  %i.ta = shufflevector <2 x float> %i.sf, <2 x float> %i.si, <3 x i32> <i32 0, i32 1, i32 2>
  %i.tb = insertelement <3 x float> poison, float %i.rq, i64 0
  %i.tc = shufflevector <2 x float> %i.ns, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.td = shufflevector <3 x float> %i.tb, <3 x float> %i.tc, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.te = shufflevector <2 x float> %i.rw, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.tf = shufflevector <3 x float> %i.td, <3 x float> %i.te, <3 x i32> <i32 0, i32 1, i32 3>
  %i.tg = insertelement <3 x float> <float poison, float -0.000000e+00, float poison>, float %i.sx, i64 0
  %i.th = insertelement <3 x float> %i.tg, float %i.sz, i64 2
  %i.ti = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ta, <3 x float> %i.tf, <3 x float> %i.th)
  %i.tj = shufflevector <2 x float> %i.rr, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.tk = insertelement <3 x float> %i.tj, float %i.rl, i64 1
  %i.tl = insertelement <3 x float> %i.tk, float %i.rz, i64 2
  %i.tm = shufflevector <2 x float> %i.sk, <2 x float> %i.st, <3 x i32> <i32 0, i32 1, i32 2>
  %i.tn = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.tl, <3 x float> %i.tm, <3 x float> %i.ti)
  %i.to = shufflevector <3 x float> %i.tn, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 2>
  %i.tp = shufflevector <2 x float> %i.ns, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.tq = insertelement <3 x float> %i.tp, float %i.ru, i64 1
  %i.tr = insertelement <3 x float> %i.tq, float %i.og, i64 2
  %i.ts = shufflevector <2 x float> %i.si, <2 x float> %i.st, <3 x i32> <i32 0, i32 2, i32 3> ; 3 uses
  %i.tt = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.tr, <3 x float> %i.ts, <3 x float> %i.to)
  %i.tu = load <3 x float>, ptr %i.jd, align 4, !tbaa !76 ; 5 uses
  %i.tv = load float, ptr %i.je, align 4, !tbaa !76
  %i.tw = insertelement <3 x float> poison, float %i.ly, i64 0
  %i.tx = insertelement <3 x float> %i.tw, float %i.nw, i64 1
  %i.ty = insertelement <3 x float> %i.tx, float %i.nx, i64 2
  %1 = shufflevector <3 x float> %i.ts, <3 x float> %i.tu, <3 x i32> <i32 1, i32 2, i32 3>
  %i.tz = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ty, <3 x float> %1, <3 x float> %i.tt)
  %i.ua = insertelement <3 x float> poison, float %i.lp, i64 0
  %i.ub = insertelement <3 x float> %i.ua, float %i.ny, i64 1
  %i.uc = insertelement <3 x float> %i.ub, float %i.lc, i64 2
  %2 = shufflevector <3 x float> %i.ts, <3 x float> %i.tu, <3 x i32> <i32 2, i32 3, i32 4>
  %i.ud = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.uc, <3 x float> %2, <3 x float> %i.tz)
  %i.ue = shufflevector <2 x float> %i.ks, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.uf = shufflevector <2 x float> %i.kj, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.ug = shufflevector <3 x float> %i.ue, <3 x float> %i.uf, <3 x i32> <i32 0, i32 3, i32 4>
  %i.uh = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ug, <3 x float> %i.tu, <3 x float> %i.ud) ; 8 uses
  %i.ui = extractelement <2 x float> %i.sl, i64 1
  %i.uj = fmul float %i.ml, %i.ui
  %i.uk = tail call float @llvm.fmuladd.f32(float %i.jj, float %i.sb, float %i.uj)
  %i.ul = insertelement <2 x float> %i.kg, float %i.mm, i64 0
  %i.um = shufflevector <2 x float> %i.sl, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.un = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uo = shufflevector <4 x float> %i.un, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.up = shufflevector <4 x float> %i.um, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uq = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.uk, i64 0
  %i.ur = shufflevector <2 x float> %i.ul, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.us = shufflevector <2 x float> %i.sl, <2 x float> %i.sv, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.ut = fmul <4 x float> %i.ur, %i.us
  %i.uu = shufflevector <4 x float> %i.uq, <4 x float> %i.ut, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.uv = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uo, <4 x float> %i.up, <4 x float> %i.uu)
  %i.uw = extractelement <2 x float> %i.sv, i64 1
  %i.ux = shufflevector <2 x float> %i.qu, <2 x float> %i.ji, <4 x i32> <i32 0, i32 poison, i32 3, i32 poison>
  %i.uy = shufflevector <2 x float> %i.kd, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.uz = shufflevector <4 x float> %i.ux, <4 x float> %i.uy, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.va = insertelement <4 x float> %i.uz, float %i.nn, i64 1
  %i.vb = shufflevector <2 x float> %i.sv, <2 x float> %i.sl, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.vc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.va, <4 x float> %i.vb, <4 x float> %i.uv)
  %i.vd = shufflevector <2 x float> %i.rh, <2 x float> %i.qu, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.ve = shufflevector <2 x float> %i.jp, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.vf = shufflevector <4 x float> %i.vd, <4 x float> %i.ve, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vf, <4 x float> %i.sw, <4 x float> %i.vc)
  %i.vh = insertelement <4 x float> poison, float %i.rl, i64 0
  %i.vi = shufflevector <2 x float> %i.ns, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vj = shufflevector <4 x float> %i.vh, <4 x float> %i.vi, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.vk = insertelement <4 x float> %i.vj, float %i.ly, i64 3
  %i.vl = shufflevector <3 x float> %i.uh, <3 x float> poison, <4 x i32> zeroinitializer
  %i.vm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vk, <4 x float> %i.vl, <4 x float> %i.vg)
  %i.vn = insertelement <4 x float> poison, float %i.rq, i64 0
  %i.vo = shufflevector <2 x float> %i.rr, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.vp = shufflevector <4 x float> %i.vn, <4 x float> %i.vo, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.vq = insertelement <4 x float> %i.vp, float %i.ru, i64 3
  %i.vr = shufflevector <3 x float> %i.uh, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.vs = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vq, <4 x float> %i.vr, <4 x float> %i.vm)
  %i.vt = insertelement <4 x float> poison, float %i.rv, i64 0
  %i.vu = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.vv = shufflevector <4 x float> %i.vt, <4 x float> %i.vu, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.vw = insertelement <4 x float> %i.vv, float %i.rz, i64 3
  %i.vx = shufflevector <3 x float> %i.uh, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.vy = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vw, <4 x float> %i.vx, <4 x float> %i.vs) ; 5 uses
  %i.vz = extractelement <3 x float> %i.uh, i64 0
  %i.wa = fmul float %i.lp, %i.vz
  %i.wb = extractelement <3 x float> %i.uh, i64 1 ; 2 uses
  %i.wc = extractelement <3 x float> %i.uh, i64 2 ; 2 uses
  %i.wd = fmul float %i.lc, %i.wc
  %i.we = tail call float @llvm.fmuladd.f32(float %i.kl, float %i.wb, float %i.wd) ; 4 uses
  %i.wf = load <4 x float>, ptr %i.jf, align 4, !tbaa !76
  %i.wg = fsub <4 x float> %i.wf, %i.vy           ; 5 uses
  %i.wh = getelementptr inbounds nuw i8, ptr %i.jf, i64 16 ; 2 uses
  %i.wi = fmul float %i.ny, %i.wb
  %i.wj = tail call float @llvm.fmuladd.f32(float %i.jr, float %i.uw, float %i.wa)
  %i.wk = insertelement <2 x float> %i.ks, float %i.nw, i64 0
  %i.wl = shufflevector <3 x float> %i.uh, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wm = insertelement <2 x float> poison, float %i.wj, i64 0
  %i.wn = insertelement <2 x float> %i.wm, float %i.wi, i64 1
  %i.wo = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wk, <2 x float> %i.wl, <2 x float> %i.wn)
  %i.wp = insertelement <2 x float> %i.pn, float %i.nx, i64 1
  %i.wq = shufflevector <3 x float> %i.uh, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.wr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wp, <2 x float> %i.wq, <2 x float> %i.wo) ; 3 uses
  %i.ws = fmul float %i.kk, %i.wc                 ; 4 uses
  %i.wt = load <4 x float>, ptr %i.wh, align 4, !tbaa !76
  %i.wu = insertelement <4 x float> poison, float %i.we, i64 2
  %i.wv = insertelement <4 x float> %i.wu, float %i.ws, i64 3
  %i.ww = shufflevector <2 x float> %i.wr, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wx = shufflevector <4 x float> %i.ww, <4 x float> %i.wv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.wy = fsub <4 x float> %i.wt, %i.wx           ; 5 uses
  %i.wz = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.xa = load ptr, ptr %i.f, align 8, !tbaa !62  ; 2 uses
  %i.xb = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.xc = load i32, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %.not197.i = icmp eq i32 %i.xc, 0
  br i1 %.not197.i, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %wide.trip.count203.i = zext i32 %i.xc to i64
  %i.xd = extractelement <4 x float> %i.wg, i64 0
  %i.xe = extractelement <4 x float> %i.wg, i64 1
  %i.xf = extractelement <4 x float> %i.wg, i64 2
  %i.xg = extractelement <4 x float> %i.wg, i64 3
  %i.xh = extractelement <4 x float> %i.wy, i64 0
  %i.xi = extractelement <4 x float> %i.wy, i64 1
  %i.xj = extractelement <4 x float> %i.wy, i64 2
  %i.xk = extractelement <4 x float> %i.wy, i64 3
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.h, %.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %bb.h ], [ 0, %.lr.ph.i14 ] ; 3 uses
  %.0196.i = phi float [ %.1.i, %bb.h ], [ 0.000000e+00, %.lr.ph.i14 ] ; 2 uses
  %i.xl = getelementptr inbounds nuw i8, ptr %i.xb, i64 %indvars.iv.i15
  %i.xm = load i8, ptr %i.xl, align 1, !tbaa !58
  %.not.i16 = icmp eq i8 %i.xm, 0
  br i1 %.not.i16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.xn = trunc nuw i64 %indvars.iv.i15 to i32
  %i.xo = shl i32 %i.xn, 1                        ; 2 uses
  %i.xp = zext i32 %i.xo to i64                   ; 2 uses
  %i.xq = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.xp
  %i.xr = load float, ptr %i.xq, align 4, !tbaa !76 ; 3 uses
  %i.xs = or disjoint i32 %i.xo, 1
  %i.xt = zext i32 %i.xs to i64                   ; 2 uses
  %i.xu = getelementptr inbounds nuw [4 x i8], ptr %i.wz, i64 %i.xt
  %i.xv = load float, ptr %i.xu, align 4, !tbaa !76 ; 3 uses
  %i.xw = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %i.xp
  %i.xx = load float, ptr %i.xw, align 4, !tbaa !76
  %i.xy = getelementptr inbounds nuw [4 x i8], ptr %i.xa, i64 %i.xt
  %i.xz = load float, ptr %i.xy, align 4, !tbaa !76
  %i.ya = fmul float %i.xk, %i.xv
  %i.yb = tail call float @llvm.fmuladd.f32(float %i.xj, float %i.xr, float %i.ya)
  %i.yc = fadd float %i.yb, 1.000000e+00          ; 2 uses
  %i.yd = tail call noundef float @llvm.fabs.f32(float %i.yc)
  %i.ye = fcmp ogt float %i.yd, f0x34000000
  %i.yf = fdiv float 1.000000e+00, %i.yc
  %i.yg = select i1 %i.ye, float %i.yf, float 0.000000e+00 ; 2 uses
  %i.yh = fmul float %i.xe, %i.xv
  %i.yi = tail call float @llvm.fmuladd.f32(float %i.xd, float %i.xr, float %i.yh)
  %i.yj = fadd float %i.xf, %i.yi
  %i.yk = fmul float %i.yj, %i.yg
  %i.yl = fmul float %i.xh, %i.xv
  %i.ym = tail call float @llvm.fmuladd.f32(float %i.xg, float %i.xr, float %i.yl)
  %i.yn = fadd float %i.xi, %i.ym
  %i.yo = fmul float %i.yn, %i.yg
  %i.yp = fsub float %i.yk, %i.xx                 ; 2 uses
  %i.yq = fsub float %i.yo, %i.xz                 ; 2 uses
  %i.yr = fmul float %i.yq, %i.yq
  %i.ys = tail call float @llvm.fmuladd.f32(float %i.yp, float %i.yp, float %i.yr)
  %i.yt = fadd float %.0196.i, %i.ys
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.i
  %.1.i = phi float [ %.0196.i, %.lr.ph.split.i ], [ %i.yt, %bb.g ] ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count203.i
  br i1 %exitcond.not.i18, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.split.i, !llvm.loop !1

_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit: ; preds = %bb.h, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %.0.lcssa.i20 = phi float [ 0.000000e+00, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit ], [ %.1.i, %bb.h ] ; 2 uses
  %i.yu = load float, ptr %i.a, align 4, !tbaa !76
  %i.yv = extractelement <4 x float> %i.vy, i64 0 ; 3 uses
  %i.yw = tail call float @llvm.fmuladd.f32(float %i.yv, float %i.yv, float 0.000000e+00)
  %i.yx = extractelement <4 x float> %i.vy, i64 1 ; 3 uses
  %i.yy = tail call float @llvm.fmuladd.f32(float %i.yx, float %i.yx, float %i.yw)
  %i.yz = extractelement <4 x float> %i.vy, i64 2 ; 3 uses
  %i.za = tail call float @llvm.fmuladd.f32(float %i.yz, float %i.yz, float %i.yy)
  %i.zb = extractelement <4 x float> %i.vy, i64 3 ; 3 uses
  %i.zc = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.zb, float %i.za)
  %i.zd = extractelement <2 x float> %i.wr, i64 0 ; 3 uses
  %i.ze = tail call float @llvm.fmuladd.f32(float %i.zd, float %i.zd, float %i.zc)
  %i.zf = extractelement <2 x float> %i.wr, i64 1 ; 3 uses
  %i.zg = tail call float @llvm.fmuladd.f32(float %i.zf, float %i.zf, float %i.ze)
  %i.zh = tail call float @llvm.fmuladd.f32(float %i.we, float %i.we, float %i.zg)
  %i.zi = tail call float @llvm.fmuladd.f32(float %i.ws, float %i.ws, float %i.zh)
  %i.zj = fmul float %.1, %i.zi
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.yv, float %i.sa, float %i.zj)
  %i.zl = tail call float @llvm.fmuladd.f32(float %i.yx, float %i.sc, float %i.zk)
  %i.zm = extractelement <2 x float> %i.si, i64 0
  %i.zn = tail call float @llvm.fmuladd.f32(float %i.yz, float %i.zm, float %i.zl)
  %i.zo = extractelement <2 x float> %i.st, i64 0
  %i.zp = tail call float @llvm.fmuladd.f32(float %i.zb, float %i.zo, float %i.zn)
  %i.zq = extractelement <2 x float> %i.st, i64 1
  %i.zr = tail call float @llvm.fmuladd.f32(float %i.zd, float %i.zq, float %i.zp)
  %i.zs = extractelement <3 x float> %i.tu, i64 0
  %i.zt = tail call float @llvm.fmuladd.f32(float %i.zf, float %i.zs, float %i.zr)
  %i.zu = tail call float @llvm.fmuladd.f32(float %i.we, float %i.tv, float %i.zt)
  %i.zv = extractelement <3 x float> %i.tu, i64 2
  %i.zw = tail call float @llvm.fmuladd.f32(float %i.ws, float %i.zv, float %i.zu)
  %i.zx = fsub float %i.yu, %.0.lcssa.i20         ; 2 uses
  %i.zy = fmul float %i.zw, 5.000000e-01          ; 2 uses
  %i.zz = tail call noundef float @llvm.fabs.f32(float %i.zy)
  %i.aaa = fcmp olt float %i.zz, f0x34000000
  %i.aab = fdiv float %i.zx, %i.zy
  %i.aac = select i1 %i.aaa, float %i.zx, float %i.aab ; 3 uses
  %i.aad = fcmp olt float %i.aac, 2.500000e-01
  br i1 %i.aad, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.aae = fmul float %.1, 8.000000e+00           ; 2 uses
  %i.aaf = fcmp ogt float %i.aae, f0x4FFA0000
  br i1 %i.aaf, label %bb.o, label %bb.l

bb.j:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.aag = fcmp ogt float %i.aac, 7.500000e-01
  br i1 %i.aag, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aah = fmul float %.1, 5.000000e-01
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.2 = phi float [ %i.aae, %bb.i ], [ %i.aah, %bb.k ], [ %.1, %bb.j ]
  %i.aai = fcmp ogt float %i.aac, 0.000000e+00
  br i1 %i.aai, label %bb.m, label %bb.n

end_hunk_0
