Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/rho?download=true
inline.NumInlined: 221
inline.NumDeleted: 125
loop-unroll.NumCompletelyUnrolled: 11
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 12
begin_hunk_0_@_ZN2cv13RHO_HEST_REFC6refineEv:bb.a
  %i.pg = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pa, <4 x float> %i.pc, <4 x float> %i.pf)
  %i.ph = shufflevector <2 x float> %i.mu, <2 x float> %i.mv, <4 x i32> <i32 1, i32 2, i32 3, i32 poison>
  %i.pi = shufflevector <2 x float> %i.ms, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.pj = shufflevector <4 x float> %i.ph, <4 x float> %i.pi, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.pk = shufflevector <3 x float> %i.km, <3 x float> %i.ln, <4 x i32> <i32 1, i32 2, i32 2, i32 4>
  %i.pl = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pj, <4 x float> %i.pk, <4 x float> %i.pg) ; 3 uses
  %i.pm = extractelement <4 x float> %i.pl, i64 0
  %i.pn = fmul float %i.mw, %i.pm
  %i.po = tail call float @llvm.fmuladd.f32(float %i.ot, float %i.jl, float %i.pn)
  store float %i.no, ptr %i.ij, align 4, !tbaa !76
  store float %i.nw, ptr %i.in, align 4, !tbaa !76
  %i.pp = insertelement <2 x float> poison, float %i.ns, i64 0 ; 2 uses
  %i.pq = shufflevector <2 x float> %i.pp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pq, <2 x float> %i.kc, <2 x float> %i.mn)
  %i.ps = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kt, <2 x float> %i.ka, <2 x float> %i.pr) ; 4 uses
  %i.pt = insertelement <2 x float> poison, float %i.nw, i64 0 ; 2 uses
  %i.pu = shufflevector <2 x float> %i.pt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.pv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.pu, <2 x float> %i.kc, <2 x float> %i.mq)
  %i.pw = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.lx, <2 x float> %i.ka, <2 x float> %i.pv)
  %i.px = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ks, <2 x float> %i.kb, <2 x float> %i.pw) ; 4 uses
  %i.py = extractelement <2 x float> %i.ps, i64 0
  %i.pz = tail call float @llvm.fmuladd.f32(float %i.py, float %i.ng, float %i.po)
  %i.qa = extractelement <2 x float> %i.ps, i64 1 ; 3 uses
  %i.qb = fmul float %i.kg, %i.qa
  %i.qc = insertelement <2 x float> %i.jx, float %i.no, i64 1 ; 2 uses
  %i.qd = insertelement <4 x float> poison, float %i.qb, i64 0
  %i.qe = extractelement <2 x float> %i.px, i64 0
  %i.qf = fmul float %i.jt, %i.mt                 ; 2 uses
  %i.qg = insertelement <4 x float> poison, float %i.nh, i64 0
  %i.qh = insertelement <4 x float> %i.qg, float %i.mw, i64 1
  %i.qi = shufflevector <4 x float> %i.qh, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.qj = shufflevector <2 x float> %i.ps, <2 x float> %i.px, <4 x i32> <i32 0, i32 poison, i32 2, i32 poison>
  %i.qk = shufflevector <4 x float> %i.qj, <4 x float> %i.pl, <4 x i32> <i32 0, i32 6, i32 2, i32 poison>
  %i.ql = insertelement <4 x float> %i.qk, float %i.qf, i64 3
  %i.qm = fmul <4 x float> %i.qi, %i.ql
  %i.qn = shufflevector <2 x float> %i.jk, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %i.qo = insertelement <4 x float> poison, float %i.hk, i64 0
  %i.qp = shufflevector <4 x float> %i.qo, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.qq = shufflevector <4 x float> %i.qp, <4 x float> %i.qn, <4 x i32> <i32 0, i32 5, i32 2, i32 7>
  %i.qr = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pl, <4 x float> %i.qq, <4 x float> %i.qm) ; 4 uses
  %i.qs = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.qt = shufflevector <4 x float> %i.qd, <4 x float> %i.qr, <2 x i32> <i32 0, i32 4>
  %i.qu = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ps, <2 x float> %i.qc, <2 x float> %i.qt)
  %i.qv = extractelement <4 x float> %i.qr, i64 1
  %i.qw = tail call float @llvm.fmuladd.f32(float %i.qe, float %i.ng, float %i.qv)
  %i.qx = extractelement <2 x float> %i.px, i64 1 ; 3 uses
  %i.qy = fmul float %i.kg, %i.qx
  %i.qz = insertelement <2 x float> %i.qs, float %i.qy, i64 0
  %i.ra = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.px, <2 x float> %i.qc, <2 x float> %i.qz)
  %i.rb = fmul float %i.jt, %i.kh                 ; 3 uses
  %i.rc = insertelement <2 x float> %i.nm, float %i.rb, i64 1
  %i.rd = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.rc, <2 x float> %i.jk, <2 x float> %i.nl)
  %i.re = fneg <2 x float> %i.rd                  ; 6 uses
  %i.rf = extractelement <2 x float> %i.re, i64 0 ; 4 uses
  store float %i.rf, ptr %i.ho, align 4, !tbaa !76
  %i.rg = fmul float %i.nh, %i.rb
  %i.rh = insertelement <2 x float> poison, float %i.rb, i64 0
  %i.ri = insertelement <2 x float> %i.rh, float %i.qf, i64 1
  %i.rj = insertelement <2 x float> poison, float %i.ng, i64 0
  %i.rk = insertelement <2 x float> %i.rj, float %i.hk, i64 1 ; 3 uses
  %i.rl = shufflevector <4 x float> %i.qr, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.rm = insertelement <2 x float> %i.rl, float %i.rg, i64 1
  %i.rn = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ri, <2 x float> %i.rk, <2 x float> %i.rm)
  %i.ro = shufflevector <2 x float> %i.ke, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.rp = insertelement <2 x float> %i.re, float %i.no, i64 1
  %i.rq = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ro, <2 x float> %i.rp, <2 x float> %i.rn)
  %i.rr = fneg <2 x float> %i.rq                  ; 4 uses
  %i.rs = extractelement <2 x float> %i.rr, i64 0
  store float %i.rs, ptr %i.hq, align 4, !tbaa !76
  %i.rt = shufflevector <2 x float> %i.re, <2 x float> %i.kf, <2 x i32> <i32 1, i32 3>
  store <2 x float> %i.rt, ptr %i.ir, align 4, !tbaa !76
  %i.ru = tail call float @llvm.fmuladd.f32(float %i.mf, float %i.rf, float %i.oh)
  %i.rv = fneg float %i.ru                        ; 3 uses
  store float %i.rv, ptr %i.hs, align 4, !tbaa !76
  %i.rw = tail call float @llvm.fmuladd.f32(float %i.qa, float %i.rf, float %i.pz)
  %i.rx = tail call float @llvm.fmuladd.f32(float %i.qx, float %i.rf, float %i.qw)
  %i.ry = extractelement <2 x float> %i.rr, i64 1 ; 2 uses
  store float %i.ry, ptr %i.iq, align 4, !tbaa !76
  %i.rz = extractelement <2 x float> %i.om, i64 0
  store float %i.rz, ptr %i.is, align 4, !tbaa !76
  %i.sa = fneg float %i.rw                        ; 3 uses
  store float %i.sa, ptr %i.hv, align 4, !tbaa !76
  %i.sb = fneg <2 x float> %i.qu                  ; 4 uses
  %i.sc = extractelement <2 x float> %i.sb, i64 1 ; 2 uses
  store float %i.sc, ptr %i.iv, align 4, !tbaa !76
  %i.sd = extractelement <2 x float> %i.sb, i64 0
  store float %i.sd, ptr %i.iw, align 4, !tbaa !76
  %i.se = fmul float %i.qa, %i.ju                 ; 3 uses
  store float %i.se, ptr %i.ix, align 4, !tbaa !76
  %i.sf = fneg float %i.rx                        ; 3 uses
  store float %i.sf, ptr %i.hy, align 4, !tbaa !76
  %i.sg = fneg <2 x float> %i.ra                  ; 4 uses
  %i.sh = extractelement <2 x float> %i.sg, i64 1 ; 2 uses
  store float %i.sh, ptr %i.iy, align 4, !tbaa !76
  %i.si = extractelement <2 x float> %i.sg, i64 0
  store float %i.si, ptr %i.iz, align 4, !tbaa !76
  %i.sj = fmul float %i.qx, %i.ju                 ; 3 uses
  store float %i.sj, ptr %i.ja, align 4, !tbaa !76
  %i.sk = load float, ptr %i.jb, align 4, !tbaa !76 ; 5 uses
  %i.sl = fmul float %i.jl, %i.sk
  %i.sm = load float, ptr %i.jc, align 4, !tbaa !76 ; 6 uses
  %i.sn = fmul float %i.nh, %i.sm
  %i.so = insertelement <2 x float> poison, float %i.sk, i64 0
  %i.sp = insertelement <2 x float> %i.so, float %i.sm, i64 1 ; 3 uses
  %i.sq = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.sn, i64 0
  %i.sr = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> %i.rk, <2 x float> %i.sq)
  %i.ss = load <2 x float>, ptr %i.jd, align 4, !tbaa !76 ; 5 uses
  %i.st = insertelement <2 x float> %i.jy, float %i.mw, i64 1
  %i.su = insertelement <2 x float> %i.ss, float %i.sk, i64 1 ; 3 uses
  %i.sv = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.st, <2 x float> %i.su, <2 x float> %i.sr) ; 4 uses
  %i.sw = fmul float %i.sm, %i.ry
  %i.sx = insertelement <2 x float> %i.rr, float %i.no, i64 1
  %i.sy = insertelement <2 x float> <float poison, float -0.000000e+00>, float %i.sw, i64 0
  %i.sz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.sp, <2 x float> %i.sx, <2 x float> %i.sy)
  %i.ta = shufflevector <2 x float> %i.sz, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tb = shufflevector <2 x float> %i.su, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.tc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.re, <2 x float> %i.tb, <2 x float> %i.ta)
  %i.td = load <2 x float>, ptr %i.je, align 4, !tbaa !76 ; 6 uses
  %i.te = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.kf, <2 x float> %i.ss, <2 x float> %i.tc)
  %i.tf = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jr, <2 x float> %i.td, <2 x float> %i.te) ; 4 uses
  %i.tg = shufflevector <2 x float> %i.tf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.th = fmul float %i.sm, %i.sc
  %i.ti = fmul float %i.sm, %i.sh
  %i.tj = tail call float @llvm.fmuladd.f32(float %i.sf, float %i.sk, float %i.ti)
  %i.tk = shufflevector <2 x float> %i.sp, <2 x float> %i.ss, <3 x i32> <i32 0, i32 1, i32 2>
  %i.tl = insertelement <3 x float> poison, float %i.sa, i64 0
  %i.tm = shufflevector <2 x float> %i.om, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.tn = shufflevector <3 x float> %i.tl, <3 x float> %i.tm, <3 x i32> <i32 0, i32 3, i32 poison>
  %i.to = shufflevector <2 x float> %i.sg, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.tp = shufflevector <3 x float> %i.tn, <3 x float> %i.to, <3 x i32> <i32 0, i32 1, i32 3>
  %i.tq = insertelement <3 x float> <float poison, float -0.000000e+00, float poison>, float %i.th, i64 0
  %i.tr = insertelement <3 x float> %i.tq, float %i.tj, i64 2
  %i.ts = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.tk, <3 x float> %i.tp, <3 x float> %i.tr)
  %i.tt = shufflevector <2 x float> %i.sb, <2 x float> poison, <3 x i32> <i32 0, i32 poison, i32 poison>
  %i.tu = insertelement <3 x float> %i.tt, float %i.rv, i64 1
  %i.tv = insertelement <3 x float> %i.tu, float %i.sj, i64 2
  %i.tw = shufflevector <2 x float> %i.su, <2 x float> %i.td, <3 x i32> <i32 0, i32 1, i32 2>
  %i.tx = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.tv, <3 x float> %i.tw, <3 x float> %i.ts)
  %i.ty = shufflevector <3 x float> %i.tx, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 2>
  %i.tz = shufflevector <2 x float> %i.om, <2 x float> poison, <3 x i32> <i32 1, i32 poison, i32 poison>
  %i.ua = insertelement <3 x float> %i.tz, float %i.se, i64 1
  %i.ub = insertelement <3 x float> %i.ua, float %i.nw, i64 2
  %i.uc = shufflevector <2 x float> %i.ss, <2 x float> %i.td, <3 x i32> <i32 0, i32 2, i32 3>
  %i.ud = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ub, <3 x float> %i.uc, <3 x float> %i.ty)
  %i.ue = load <3 x float>, ptr %i.jf, align 4, !tbaa !76 ; 5 uses
  %i.uf = load float, ptr %i.jg, align 4, !tbaa !76
  %i.ug = insertelement <3 x float> poison, float %i.mg, i64 0
  %i.uh = insertelement <3 x float> %i.ug, float %i.ns, i64 1
  %i.ui = insertelement <3 x float> %i.uh, float %i.ml, i64 2
  %i.uj = shufflevector <2 x float> %i.td, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison> ; 2 uses
  %i.uk = shufflevector <3 x float> %i.uj, <3 x float> %i.ue, <3 x i32> <i32 0, i32 1, i32 3>
  %i.ul = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.ui, <3 x float> %i.uk, <3 x float> %i.ud)
  %i.um = insertelement <3 x float> poison, float %i.lz, i64 0
  %i.un = shufflevector <2 x float> %i.ld, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.uo = shufflevector <3 x float> %i.um, <3 x float> %i.un, <3 x i32> <i32 0, i32 3, i32 4>
  %i.up = shufflevector <3 x float> %i.uj, <3 x float> %i.ue, <3 x i32> <i32 1, i32 3, i32 4>
  %i.uq = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.uo, <3 x float> %i.up, <3 x float> %i.ul)
  %i.ur = tail call <3 x float> @llvm.fmuladd.v3f32(<3 x float> %i.km, <3 x float> %i.ue, <3 x float> %i.uq) ; 8 uses
  %i.us = extractelement <2 x float> %i.sv, i64 1
  %i.ut = fmul float %i.mw, %i.us
  %i.uu = tail call float @llvm.fmuladd.f32(float %i.jl, float %i.sl, float %i.ut)
  %i.uv = insertelement <2 x float> %i.ki, float %i.nh, i64 0
  %i.uw = shufflevector <2 x float> %i.sv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ux = shufflevector <2 x float> %i.rk, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.uy = shufflevector <4 x float> %i.ux, <4 x float> <float poison, float poison, float 0.000000e+00, float -0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.uz = shufflevector <4 x float> %i.uw, <4 x float> <float poison, float poison, float -0.000000e+00, float 0.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.va = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.uu, i64 0
  %i.vb = shufflevector <2 x float> %i.uv, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vc = shufflevector <2 x float> %i.sv, <2 x float> %i.tf, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.vd = fmul <4 x float> %i.vb, %i.vc
  %i.ve = shufflevector <4 x float> %i.va, <4 x float> %i.vd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.vf = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.uy, <4 x float> %i.uz, <4 x float> %i.ve)
  %i.vg = extractelement <2 x float> %i.tf, i64 1
  %i.vh = shufflevector <2 x float> %i.re, <2 x float> %i.jk, <4 x i32> <i32 0, i32 poison, i32 3, i32 poison>
  %i.vi = shufflevector <2 x float> %i.kf, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.vj = shufflevector <4 x float> %i.vh, <4 x float> %i.vi, <4 x i32> <i32 0, i32 poison, i32 2, i32 5>
  %i.vk = insertelement <4 x float> %i.vj, float %i.no, i64 1
  %i.vl = shufflevector <2 x float> %i.tf, <2 x float> %i.sv, <4 x i32> <i32 0, i32 0, i32 2, i32 1>
  %i.vm = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vk, <4 x float> %i.vl, <4 x float> %i.vf)
  %i.vn = shufflevector <2 x float> %i.rr, <2 x float> %i.re, <4 x i32> <i32 0, i32 1, i32 3, i32 poison>
  %i.vo = shufflevector <2 x float> %i.jr, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.vp = shufflevector <4 x float> %i.vn, <4 x float> %i.vo, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.vq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vp, <4 x float> %i.tg, <4 x float> %i.vm)
  %i.vr = insertelement <4 x float> poison, float %i.rv, i64 0
  %i.vs = shufflevector <2 x float> %i.om, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.vt = shufflevector <4 x float> %i.vr, <4 x float> %i.vs, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.vu = insertelement <4 x float> %i.vt, float %i.mg, i64 3
  %i.vv = shufflevector <3 x float> %i.ur, <3 x float> poison, <4 x i32> zeroinitializer
  %i.vw = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.vu, <4 x float> %i.vv, <4 x float> %i.vq)
  %i.vx = insertelement <4 x float> poison, float %i.sa, i64 0
  %i.vy = shufflevector <2 x float> %i.sb, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.vz = shufflevector <4 x float> %i.vx, <4 x float> %i.vy, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.wa = insertelement <4 x float> %i.vz, float %i.se, i64 3
  %i.wb = shufflevector <3 x float> %i.ur, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.wc = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wa, <4 x float> %i.wb, <4 x float> %i.vw)
  %i.wd = insertelement <4 x float> poison, float %i.sf, i64 0
  %i.we = shufflevector <2 x float> %i.sg, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.wf = shufflevector <4 x float> %i.wd, <4 x float> %i.we, <4 x i32> <i32 0, i32 4, i32 5, i32 poison>
  %i.wg = insertelement <4 x float> %i.wf, float %i.sj, i64 3
  %i.wh = shufflevector <3 x float> %i.ur, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.wi = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.wg, <4 x float> %i.wh, <4 x float> %i.wc) ; 5 uses
  %i.wj = extractelement <3 x float> %i.ur, i64 0
  %i.wk = fmul float %i.lz, %i.wj
  %i.wl = extractelement <3 x float> %i.ur, i64 1 ; 2 uses
  %i.wm = extractelement <3 x float> %i.ur, i64 2 ; 2 uses
  %i.wn = fmul float %i.lf, %i.wm
  %i.wo = tail call float @llvm.fmuladd.f32(float %i.ko, float %i.wl, float %i.wn) ; 4 uses
  %i.wp = load <4 x float>, ptr %i.jh, align 4, !tbaa !76
  %i.wq = fsub <4 x float> %i.wp, %i.wi           ; 5 uses
  %i.wr = getelementptr inbounds nuw i8, ptr %i.jh, i64 16 ; 2 uses
  %i.ws = tail call float @llvm.fmuladd.f32(float %i.jt, float %i.vg, float %i.wk)
  %i.wt = fmul float %i.mj, %i.wl
  %i.wu = shufflevector <3 x float> %i.km, <3 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.wv = shufflevector <2 x float> %i.pp, <2 x float> %i.wu, <2 x i32> <i32 0, i32 2>
  %i.ww = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wx = insertelement <2 x float> poison, float %i.ws, i64 0
  %i.wy = insertelement <2 x float> %i.wx, float %i.wt, i64 1
  %i.wz = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.wv, <2 x float> %i.ww, <2 x float> %i.wy)
  %i.xa = insertelement <2 x float> %i.pt, float %i.ml, i64 1
  %i.xb = shufflevector <3 x float> %i.ur, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.xc = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.xa, <2 x float> %i.xb, <2 x float> %i.wz) ; 3 uses
  %i.xd = fmul float %i.kn, %i.wm                 ; 4 uses
  %i.xe = load <4 x float>, ptr %i.wr, align 4, !tbaa !76
  %i.xf = insertelement <4 x float> poison, float %i.wo, i64 2
  %i.xg = insertelement <4 x float> %i.xf, float %i.xd, i64 3
  %i.xh = shufflevector <2 x float> %i.xc, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.xi = shufflevector <4 x float> %i.xh, <4 x float> %i.xg, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.xj = fsub <4 x float> %i.xe, %i.xi           ; 5 uses
  %i.xk = load ptr, ptr %i.d, align 8, !tbaa !61  ; 2 uses
  %i.xl = load ptr, ptr %i.f, align 8, !tbaa !62  ; 2 uses
  %i.xm = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.xn = load i32, ptr %i.j, align 8, !tbaa !63  ; 2 uses
  %.not197.i = icmp eq i32 %i.xn, 0
  br i1 %.not197.i, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.i14

.lr.ph.i14:                                       ; preds = %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %wide.trip.count203.i = zext i32 %i.xn to i64
  %i.xo = extractelement <4 x float> %i.wq, i64 0
  %i.xp = extractelement <4 x float> %i.wq, i64 1
  %i.xq = extractelement <4 x float> %i.wq, i64 2
  %i.xr = extractelement <4 x float> %i.wq, i64 3
  %i.xs = extractelement <4 x float> %i.xj, i64 0
  %i.xt = extractelement <4 x float> %i.xj, i64 1
  %i.xu = extractelement <4 x float> %i.xj, i64 2
  %i.xv = extractelement <4 x float> %i.xj, i64 3
  br label %.lr.ph.split.i

.lr.ph.split.i:                                   ; preds = %bb.h, %.lr.ph.i14
  %indvars.iv.i15 = phi i64 [ %indvars.iv.next.i17, %bb.h ], [ 0, %.lr.ph.i14 ] ; 3 uses
  %.0196.i = phi float [ %.1.i, %bb.h ], [ 0.000000e+00, %.lr.ph.i14 ] ; 2 uses
  %i.xw = getelementptr inbounds nuw i8, ptr %i.xm, i64 %indvars.iv.i15
  %i.xx = load i8, ptr %i.xw, align 1, !tbaa !58
  %.not.i16 = icmp eq i8 %i.xx, 0
  br i1 %.not.i16, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph.split.i
  %i.xy = trunc nuw i64 %indvars.iv.i15 to i32
  %i.xz = shl i32 %i.xy, 1                        ; 2 uses
  %i.ya = zext i32 %i.xz to i64                   ; 2 uses
  %i.yb = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.ya
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !76 ; 3 uses
  %i.yd = or disjoint i32 %i.xz, 1
  %i.ye = zext i32 %i.yd to i64                   ; 2 uses
  %i.yf = getelementptr inbounds nuw [4 x i8], ptr %i.xk, i64 %i.ye
  %i.yg = load float, ptr %i.yf, align 4, !tbaa !76 ; 3 uses
  %i.yh = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.ya
  %i.yi = load float, ptr %i.yh, align 4, !tbaa !76
  %i.yj = getelementptr inbounds nuw [4 x i8], ptr %i.xl, i64 %i.ye
  %i.yk = load float, ptr %i.yj, align 4, !tbaa !76
  %i.yl = fmul float %i.xv, %i.yg
  %i.ym = tail call float @llvm.fmuladd.f32(float %i.xu, float %i.yc, float %i.yl)
  %i.yn = fadd float %i.ym, 1.000000e+00          ; 2 uses
  %i.yo = tail call noundef float @llvm.fabs.f32(float %i.yn)
  %i.yp = fcmp ogt float %i.yo, f0x34000000
  %i.yq = fdiv float 1.000000e+00, %i.yn
  %i.yr = select i1 %i.yp, float %i.yq, float 0.000000e+00 ; 2 uses
  %i.ys = fmul float %i.xp, %i.yg
  %i.yt = tail call float @llvm.fmuladd.f32(float %i.xo, float %i.yc, float %i.ys)
  %i.yu = fadd float %i.xq, %i.yt
  %i.yv = fmul float %i.yu, %i.yr
  %i.yw = fmul float %i.xs, %i.yg
  %i.yx = tail call float @llvm.fmuladd.f32(float %i.xr, float %i.yc, float %i.yw)
  %i.yy = fadd float %i.xt, %i.yx
  %i.yz = fmul float %i.yy, %i.yr
  %i.za = fsub float %i.yv, %i.yi                 ; 2 uses
  %i.zb = fsub float %i.yz, %i.yk                 ; 2 uses
  %i.zc = fmul float %i.zb, %i.zb
  %i.zd = tail call float @llvm.fmuladd.f32(float %i.za, float %i.za, float %i.zc)
  %i.ze = fadd float %.0196.i, %i.zd
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph.split.i
  %.1.i = phi float [ %.0196.i, %.lr.ph.split.i ], [ %i.ze, %bb.g ] ; 2 uses
  %indvars.iv.next.i17 = add nuw nsw i64 %indvars.iv.i15, 1 ; 2 uses
  %exitcond.not.i18 = icmp eq i64 %indvars.iv.next.i17, %wide.trip.count203.i
  br i1 %exitcond.not.i18, label %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit, label %.lr.ph.split.i, !llvm.loop !1

_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit: ; preds = %bb.h, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit
  %.0.lcssa.i20 = phi float [ 0.000000e+00, %_ZN2cvL16sacChol8x8DampedEPA8_KffPA8_f.exit ], [ %.1.i, %bb.h ] ; 2 uses
  %i.zf = load float, ptr %i.a, align 4, !tbaa !76
  %i.zg = extractelement <4 x float> %i.wi, i64 0 ; 3 uses
  %1 = tail call float @llvm.fmuladd.f32(float %i.zg, float %i.zg, float 0.000000e+00)
  %i.zh = extractelement <4 x float> %i.wi, i64 1 ; 3 uses
  %i.zi = tail call float @llvm.fmuladd.f32(float %i.zh, float %i.zh, float %1)
  %i.zj = extractelement <4 x float> %i.wi, i64 2 ; 3 uses
  %i.zk = tail call float @llvm.fmuladd.f32(float %i.zj, float %i.zj, float %i.zi)
  %i.zl = extractelement <4 x float> %i.wi, i64 3 ; 3 uses
  %i.zm = tail call float @llvm.fmuladd.f32(float %i.zl, float %i.zl, float %i.zk)
  %i.zn = extractelement <2 x float> %i.xc, i64 0 ; 3 uses
  %i.zo = tail call float @llvm.fmuladd.f32(float %i.zn, float %i.zn, float %i.zm)
  %i.zp = extractelement <2 x float> %i.xc, i64 1 ; 3 uses
  %i.zq = tail call float @llvm.fmuladd.f32(float %i.zp, float %i.zp, float %i.zo)
  %i.zr = tail call float @llvm.fmuladd.f32(float %i.wo, float %i.wo, float %i.zq)
  %i.zs = tail call float @llvm.fmuladd.f32(float %i.xd, float %i.xd, float %i.zr)
  %i.zt = fmul float %.1, %i.zs
  %i.zu = tail call float @llvm.fmuladd.f32(float %i.zg, float %i.sk, float %i.zt)
  %i.zv = tail call float @llvm.fmuladd.f32(float %i.zh, float %i.sm, float %i.zu)
  %i.zw = extractelement <2 x float> %i.ss, i64 0
  %i.zx = tail call float @llvm.fmuladd.f32(float %i.zj, float %i.zw, float %i.zv)
  %i.zy = extractelement <2 x float> %i.td, i64 0
  %i.zz = tail call float @llvm.fmuladd.f32(float %i.zl, float %i.zy, float %i.zx)
  %i.aaa = extractelement <2 x float> %i.td, i64 1
  %i.aab = tail call float @llvm.fmuladd.f32(float %i.zn, float %i.aaa, float %i.zz)
  %i.aac = extractelement <3 x float> %i.ue, i64 0
  %i.aad = tail call float @llvm.fmuladd.f32(float %i.zp, float %i.aac, float %i.aab)
  %i.aae = tail call float @llvm.fmuladd.f32(float %i.wo, float %i.uf, float %i.aad)
  %i.aaf = extractelement <3 x float> %i.ue, i64 2
  %i.aag = tail call float @llvm.fmuladd.f32(float %i.xd, float %i.aaf, float %i.aae)
  %i.aah = fsub float %i.zf, %.0.lcssa.i20        ; 2 uses
  %i.aai = fmul float %i.aag, 5.000000e-01        ; 2 uses
  %i.aaj = tail call noundef float @llvm.fabs.f32(float %i.aai)
  %i.aak = fcmp olt float %i.aaj, f0x34000000
  %i.aal = fdiv float %i.aah, %i.aai
  %i.aam = select i1 %i.aak, float %i.aah, float %i.aal ; 3 uses
  %i.aan = fcmp olt float %i.aam, 2.500000e-01
  br i1 %i.aan, label %bb.i, label %bb.j

bb.i:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.aao = fmul float %.1, 8.000000e+00           ; 2 uses
  %i.aap = fcmp ogt float %i.aao, f0x4FFA0000
  br i1 %i.aap, label %bb.o, label %bb.l

bb.j:                                             ; preds = %_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_.exit
  %i.aaq = fcmp ogt float %i.aam, 7.500000e-01
  br i1 %i.aaq, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %i.aar = fmul float %.1, 5.000000e-01
  br label %bb.l

bb.l:                                             ; preds = %bb.j, %bb.k, %bb.i
  %.2 = phi float [ %i.aao, %bb.i ], [ %i.aar, %bb.k ], [ %.1, %bb.j ]
  %i.aas = fcmp ogt float %i.aam, 0.000000e+00
  br i1 %i.aas, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  store float %.0.lcssa.i20, ptr %i.a, align 4, !tbaa !76
  store <4 x float> %i.wq, ptr %i.jh, align 4
  store <4 x float> %i.xj, ptr %i.wr, align 4
  %i.aat = load ptr, ptr %i.b, align 8, !tbaa !79
  %i.aau = load ptr, ptr %i.d, align 8, !tbaa !61
  %i.aav = load ptr, ptr %i.f, align 8, !tbaa !62
  %i.aaw = load ptr, ptr %i.h, align 8, !tbaa !80
  %i.aax = load i32, ptr %i.j, align 8, !tbaa !63
  %i.aay = load ptr, ptr %i.l, align 8, !tbaa !115
  %i.aaz = load ptr, ptr %i.n, align 8, !tbaa !116
  call fastcc void @_ZN2cvL21sacCalcJacobianErrorsEPKfS1_S1_PKcjPA8_fPfS6_(ptr noundef %i.aat, ptr noundef %i.aau, ptr noundef %i.aav, ptr noundef %i.aaw, i32 noundef %i.aax, ptr noundef %i.aay, ptr noundef %i.aaz, ptr noundef %i.a)
  br label %bb.n

bb.n:                                             ; preds = %bb.l, %bb.m
  %i.aba = add nuw nsw i32 %.01138, 1             ; 2 uses
  %exitcond.not = icmp eq i32 %i.aba, 100
  br i1 %exitcond.not, label %bb.o, label %.preheader, !llvm.loop !114

bb.o:                                             ; preds = %bb.i, %bb.n
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #20
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv13RHO_HEST_REFC10initializeEv(ptr noundef nonnull align 8 dereferenceable(452) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  store i32 0, ptr %i.a, align 8, !tbaa !42
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 152
  tail call void @_ZN2cv5utils10BufferArea8allocateIjEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, i64 noundef 4, i16 noundef zeroext 4)
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 160
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.d, i64 noundef 16, i16 noundef zeroext 4)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 168
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.e, i64 noundef 36, i16 noundef zeroext 4)
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 192
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.f, i64 noundef 36, i16 noundef zeroext 4)
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 328
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.g, i64 noundef 64, i16 noundef zeroext 4)
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 336
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.h, i64 noundef 64, i16 noundef zeroext 4)
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 344
  tail call void @_ZN2cv5utils10BufferArea8allocateIfEEvRPT_mt(ptr noundef nonnull align 8 dereferenceable(41) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.i, i64 noundef 8, i16 noundef zeroext 4)
  tail call void @_ZN2cv5utils10BufferArea6commitEv(ptr noundef nonnull align 8 dereferenceable(41) %i.b)
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 176
  store ptr null, ptr %i.j, align 8, !tbaa !81
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 184
  store i32 0, ptr %i.k, align 8, !tbaa !85
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 200
  store ptr null, ptr %i.l, align 8, !tbaa !80
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 208
  store i32 0, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.n, align 8, !tbaa !45
  %i.o = getelementptr inbounds nuw i8, ptr %0, i64 248
  store double 0.000000e+00, ptr %i.o, align 8, !tbaa !91
  %i.p = load ptr, ptr %0, align 8, !tbaa !11
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 48
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef -1)
  store i32 1, ptr %i.a, align 8, !tbaa !42
  ret i32 1
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden void @_ZN2cv13RHO_HEST_REFC8finalizeEv(ptr noundef nonnull align 8 dereferenceable(452) %0) unnamed_addr #8 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 448 ; 2 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !42
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 400
  tail call void @_ZN2cv5utils10BufferArea7releaseEv(ptr noundef nonnull align 8 dereferenceable(41) %i.c)
  store i32 0, ptr %i.a, align 8, !tbaa !42
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress uwtable
define linkonce_odr hidden noundef i32 @_ZN2cv13RHO_HEST_REFC14ensureCapacityEjd(ptr noundef nonnull align 8 dereferenceable(452) %0, i32 noundef %1, double noundef %2) unnamed_addr #8 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = icmp eq i32 %1, 0
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 7 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !15   ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !92
  %.not.i.i = icmp eq ptr %i.e, %i.c
  br i1 %.not.i.i, label %_ZNSt6vectorIjSaIjEE5clearEv.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i:        ; preds = %bb.b
  store ptr %i.c, ptr %i.d, align 8, !tbaa !92
  br label %_ZNSt6vectorIjSaIjEE5clearEv.exit

_ZNSt6vectorIjSaIjEE5clearEv.exit:                ; preds = %bb.b, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 240
  store i32 0, ptr %i.f, align 8, !tbaa !45
  br label %bb.m

bb.c:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 248 ; 3 uses
  %i.h = load double, ptr %i.g, align 8, !tbaa !91 ; 4 uses
  %i.i = fcmp une double %i.h, %2
  br i1 %i.i, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.j = zext i32 %1 to i64                       ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 224 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !92   ; 2 uses
  %i.m = load ptr, ptr %i.b, align 8, !tbaa !15   ; 5 uses
  %i.n = ptrtoint ptr %i.l to i64
  %i.o = ptrtoint ptr %i.m to i64
  %i.p = sub i64 %i.n, %i.o
  %i.q = ashr exact i64 %i.p, 2                   ; 3 uses
  %i.r = icmp ult i64 %i.q, %i.j
  br i1 %i.r, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.s = sub nuw nsw i64 %i.j, %i.q
  tail call void @_ZNSt6vectorIjSaIjEE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.b, i64 noundef %i.s)
  %.pre26 = load ptr, ptr %i.b, align 8, !tbaa !15
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.f:                                             ; preds = %bb.d
  %i.t = icmp ugt i64 %i.q, %i.j
  br i1 %i.t, label %bb.g, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

bb.g:                                             ; preds = %bb.f
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.m, i64 %i.j ; 2 uses
  %.not.i.i11 = icmp eq ptr %i.l, %i.u
  br i1 %.not.i.i11, label %_ZNSt6vectorIjSaIjEE6resizeEm.exit, label %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i12

_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i12:      ; preds = %bb.g
  store ptr %i.u, ptr %i.k, align 8, !tbaa !92
  br label %_ZNSt6vectorIjSaIjEE6resizeEm.exit

_ZNSt6vectorIjSaIjEE6resizeEm.exit:               ; preds = %bb.e, %bb.f, %bb.g, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i12
  %i.v = phi ptr [ %.pre26, %bb.e ], [ %i.m, %bb.f ], [ %i.m, %bb.g ], [ %i.m, %_ZSt8_DestroyIPjjEvT_S1_RSaIT0_E.exit.i.i12 ] ; 2 uses
  store double %2, ptr %i.g, align 8, !tbaa !91
  %i.w = fsub double 1.000000e+00, %2
end_hunk_0
