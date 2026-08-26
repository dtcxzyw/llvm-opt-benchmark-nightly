Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@process:bb.a
  %i.ni = fadd reassoc nsz arcp contract afn <4 x float> %i.lk, %i.nh
  %i.nj = shufflevector <2 x float> %i.jb, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nk = fmul reassoc nsz arcp contract afn <4 x float> %i.ni, %i.nj
  %i.nl = load <4 x float>, ptr %i.dr, align 16, !tbaa !14
  %i.nm = shufflevector <2 x float> %i.iy, <2 x float> poison, <4 x i32> zeroinitializer
  %i.nn = fmul reassoc nsz arcp contract afn <4 x float> %i.nl, %i.nm
  %i.no = fadd reassoc nsz arcp contract afn <4 x float> %i.nk, %i.nn
  %i.np = fmul reassoc nsz arcp contract afn <4 x float> %i.no, %i.ng ; 3 uses
  %i.nq = extractelement <4 x float> %i.np, i64 0
  %i.nr = fcmp reassoc nsz arcp contract afn olt float %i.nq, 0.000000e+00
  %i.ns = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.np)
  %i.nt = insertelement <4 x float> poison, float %i.ll, i64 0
  %i.nu = shufflevector <4 x float> %i.nt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.nv = fdiv reassoc nsz arcp contract afn <4 x float> %i.ns, %i.nu
  %i.nw = bitcast <4 x float> %i.nv to <4 x i32>  ; 2 uses
  %i.nx = and <4 x i32> %i.nw, splat (i32 8388607)
  %i.ny = or disjoint <4 x i32> %i.nx, splat (i32 1065353216)
  %i.nz = bitcast <4 x i32> %i.ny to <4 x float>  ; 5 uses
  %i.oa = lshr <4 x i32> %i.nw, splat (i32 23)
  %i.ob = and <4 x i32> %i.oa, splat (i32 255)
  %i.oc = add nsw <4 x i32> %i.ob, splat (i32 -127)
  %i.od = sitofp <4 x i32> %i.oc to <4 x float>
  %i.oe = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.nz, splat (float f0x3D74552F)
  %i.of = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.oe, splat (float f0xBEEE7397)
  %i.og = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.of, %i.nz
  %i.oh = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.og, splat (float f0x3FBD96DD)
  %i.oi = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.oh, %i.nz
  %i.oj = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.oi, splat (float f0xC02153F6)
  %i.ok = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.oj, %i.nz
  %i.ol = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ok, splat (float f0x4038D96C)
  %i.om = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.nz, splat (float -1.000000e+00)
  %i.on = fmul reassoc nsz arcp contract afn <4 x float> %i.ol, %i.om
  %i.oo = fadd reassoc nsz arcp contract afn <4 x float> %i.on, %i.od
  %i.op = load <4 x float>, ptr %i.dt, align 16, !tbaa !14
  %i.oq = fmul reassoc nsz arcp contract afn <4 x float> %i.oo, %i.op
  %i.or = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.oq, <4 x float> splat (float 1.290000e+02))
  %i.os = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.or, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.ot = fadd reassoc nsz arcp contract afn <4 x float> %i.os, splat (float -5.000000e-01)
  %i.ou = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.ot)
  %i.ov = sitofp reassoc nsz arcp contract afn <4 x i32> %i.ou to <4 x float> ; 3 uses
  %.sroa.014.0.vec.extract.i.i = extractelement <4 x float> %i.ov, i64 0
  %foldExtExtBinop766 = fsub reassoc nsz arcp contract afn <4 x float> %i.os, %i.ov
  %i.ow = extractelement <4 x float> %foldExtExtBinop766, i64 0 ; 4 uses
  %i.ox = fptosi float %.sroa.014.0.vec.extract.i.i to i32
  %i.oy = shl i32 %i.ox, 23
  %i.oz = add i32 %i.oy, 1065353216
  %i.pa = fmul reassoc nsz arcp contract afn float %i.ow, f0x3C5DBE69
  %i.pb = fadd reassoc nsz arcp contract afn float %i.pa, f0x3D5509F9
  %i.pc = fmul reassoc nsz arcp contract afn float %i.pb, %i.ow
  %i.pd = fadd reassoc nsz arcp contract afn float %i.pc, f0x3E773CC5
  %i.pe = fmul reassoc nsz arcp contract afn float %i.pd, %i.ow
  %i.pf = fadd reassoc nsz arcp contract afn float %i.pe, f0x3F3168B3
  %i.pg = fmul reassoc nsz arcp contract afn float %i.pf, %i.ow
  %i.ph = fadd reassoc nsz arcp contract afn float %i.pg, f0x3F800016
  %i.pi = bitcast i32 %i.oz to float
  %i.pj = fmul reassoc nsz arcp contract afn float %i.ph, %i.pi ; 2 uses
  %i.pk = load float, ptr %i.es, align 8, !tbaa !147 ; 4 uses
  %i.pl = fneg reassoc nsz arcp contract afn float %i.pj
  %i.pm = select reassoc nsz arcp contract afn i1 %i.nr, float %i.pl, float %i.pj
  %i.pn = fmul reassoc nsz arcp contract afn float %i.pm, %i.pk ; 3 uses
  %i.po = fmul reassoc nsz arcp contract afn float %i.pn, f0x3F733333
  %i.pp = fmul reassoc nsz arcp contract afn float %i.pn, 5.000000e-02
  %i.pq = shufflevector <4 x float> %i.np, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pr = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.pq, zeroinitializer
  %i.ps = shufflevector <4 x float> %i.os, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pt = shufflevector <4 x float> %i.ov, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pu = fsub reassoc nsz arcp contract afn <2 x float> %i.ps, %i.pt ; 4 uses
  %i.pv = fptosi <2 x float> %i.pt to <2 x i32>
  %i.pw = shl <2 x i32> %i.pv, splat (i32 23)
  %i.px = add <2 x i32> %i.pw, splat (i32 1065353216)
  %i.py = fmul reassoc nsz arcp contract afn <2 x float> %i.pu, splat (float f0x3C5DBE69)
  %i.pz = fadd reassoc nsz arcp contract afn <2 x float> %i.py, splat (float f0x3D5509F9)
  %i.qa = fmul reassoc nsz arcp contract afn <2 x float> %i.pz, %i.pu
  %i.qb = fadd reassoc nsz arcp contract afn <2 x float> %i.qa, splat (float f0x3E773CC5)
  %i.qc = fmul reassoc nsz arcp contract afn <2 x float> %i.qb, %i.pu
  %i.qd = fadd reassoc nsz arcp contract afn <2 x float> %i.qc, splat (float f0x3F3168B3)
  %i.qe = fmul reassoc nsz arcp contract afn <2 x float> %i.qd, %i.pu
  %i.qf = fadd reassoc nsz arcp contract afn <2 x float> %i.qe, splat (float f0x3F800016)
  %i.qg = bitcast <2 x i32> %i.px to <2 x float>
  %i.qh = fmul reassoc nsz arcp contract afn <2 x float> %i.qf, %i.qg ; 2 uses
  %i.qi = fneg reassoc nsz arcp contract afn <2 x float> %i.qh
  %i.qj = select <2 x i1> %i.pr, <2 x float> %i.qi, <2 x float> %i.qh
  %i.qk = insertelement <2 x float> poison, float %i.pk, i64 0
  %i.ql = shufflevector <2 x float> %i.qk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qm = fmul reassoc nsz arcp contract afn <2 x float> %i.qj, %i.ql ; 3 uses
  %i.qn = extractelement <2 x float> %i.qm, i64 0 ; 2 uses
  %i.qo = fmul reassoc nsz arcp contract afn float %i.qn, 3.800000e-01
  %i.qp = fadd reassoc nsz arcp contract afn float %i.qo, %i.po
  %i.qq = extractelement <2 x float> %i.qm, i64 1 ; 2 uses
  %i.qr = fmul reassoc nsz arcp contract afn float %i.qq, 0.000000e+00
  %i.qs = fadd reassoc nsz arcp contract afn float %i.qp, %i.qr ; 3 uses
  %i.qt = fmul reassoc nsz arcp contract afn <2 x float> %i.qm, <float 6.200000e-01, float 3.000000e-02> ; 2 uses
  %i.qu = extractelement <2 x float> %i.qt, i64 0
  %i.qv = fadd reassoc nsz arcp contract afn float %i.qu, %i.pp
  %i.qw = extractelement <2 x float> %i.qt, i64 1
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qv, %i.qw ; 3 uses
  %i.qy = fadd reassoc nsz arcp contract afn float %i.qn, %i.pn
  %i.qz = fmul reassoc nsz arcp contract afn float %i.qy, 0.000000e+00
  %i.ra = fmul reassoc nsz arcp contract afn float %i.qq, 9.700000e-01
  %i.rb = fadd reassoc nsz arcp contract afn float %i.qz, %i.ra ; 2 uses
  %i.rc = fadd reassoc nsz arcp contract afn float %i.qx, %i.qs
  %i.rd = fadd reassoc nsz arcp contract afn float %i.rc, %i.rb ; 4 uses
  %i.re = fcmp reassoc nsz arcp contract afn oeq float %i.rd, 0.000000e+00 ; 3 uses
  %i.rf = fdiv reassoc nsz arcp contract afn float %i.qs, %i.rd
  %i.rg = fdiv reassoc nsz arcp contract afn float %i.qx, %i.rd
  %i.rh = fdiv reassoc nsz arcp contract afn float %i.rb, %i.rd
  %.sroa.0.0.i338 = select nsz i1 %i.re, float 0.000000e+00, float %i.rf ; 2 uses
  %.sroa.6.0.i339 = select nsz i1 %i.re, float 0.000000e+00, float %i.rg ; 2 uses
  %.sroa.8.0.i340 = select nsz i1 %i.re, float 0.000000e+00, float %i.rh ; 2 uses
  %i.ri = fmul reassoc nsz arcp contract afn float %i.qs, f0x3F309D77
  %i.rj = fmul reassoc nsz arcp contract afn float %i.qx, f0x3EB2573F
  %i.rk = fadd reassoc nsz arcp contract afn float %i.rj, %i.ri
  %i.rl = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i338, f0x3F8B3A63
  %i.rm = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i339, f0x3F2AAAAB
  %i.rn = fsub reassoc nsz arcp contract afn float %i.rl, %i.rm
  %i.ro = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i340, f0x3CA8E841
  %i.rp = fadd reassoc nsz arcp contract afn float %i.rn, %i.ro ; 3 uses
  %i.rq = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i338, f0x3DB3A62D
  %i.rr = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i339, f0x3FD55555
  %i.rs = fsub reassoc nsz arcp contract afn float %i.rr, %i.rq
  %i.rt = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i340, f0xBD53224F
  %i.ru = fadd reassoc nsz arcp contract afn float %i.rs, %i.rt ; 3 uses
  %i.rv = fdiv reassoc nsz arcp contract afn float %i.rk, %i.pk ; 2 uses
  %i.rw = fcmp reassoc nsz arcp contract afn ogt float %i.rv, 0.000000e+00
  %i.rx = select reassoc nsz arcp contract afn i1 %i.rw, float %i.rv, float 0.000000e+00
  %i.ry = load float, ptr %i.fs, align 16, !tbaa !161
  %i.rz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.rx, float %i.ry)
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rz, %i.pk
  %i.sb = load float, ptr %i.ft, align 16, !tbaa !162 ; 2 uses
  %i.sc = fdiv reassoc nsz arcp contract afn float %i.sa, %i.sb
  %i.sd = load float, ptr %i.fu, align 8, !tbaa !163
  %i.se = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.sc, float %i.sd)
  %i.sf = fmul reassoc nsz arcp contract afn float %i.se, %i.sb
  %i.sg = fadd reassoc nsz arcp contract afn float %i.ru, %i.rp ; 2 uses
  %i.sh = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.sg ; 3 uses
  %i.si = fmul reassoc nsz arcp contract afn float %i.rp, f0x3F733333
  %i.sj = fmul reassoc nsz arcp contract afn float %i.ru, 3.800000e-01
  %i.sk = fadd reassoc nsz arcp contract afn float %i.sj, %i.si
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sh, 0.000000e+00
  %i.sm = fadd reassoc nsz arcp contract afn float %i.sk, %i.sl ; 2 uses
  %i.sn = fmul reassoc nsz arcp contract afn float %i.rp, 5.000000e-02
  %i.so = fmul reassoc nsz arcp contract afn float %i.ru, 6.200000e-01
  %i.sp = fadd reassoc nsz arcp contract afn float %i.so, %i.sn
  %i.sq = fmul reassoc nsz arcp contract afn float %i.sh, 3.000000e-02
  %i.sr = fadd reassoc nsz arcp contract afn float %i.sp, %i.sq ; 2 uses
  %i.ss = fmul reassoc nsz arcp contract afn float %i.sg, 0.000000e+00
  %i.st = fmul reassoc nsz arcp contract afn float %i.sh, 9.700000e-01
  %i.su = fadd reassoc nsz arcp contract afn float %i.st, %i.ss
  %i.sv = fmul reassoc nsz arcp contract afn float %i.sm, f0x3F309D77
  %i.sw = fmul reassoc nsz arcp contract afn float %i.sr, f0x3EB2573F
  %i.sx = fadd reassoc nsz arcp contract afn float %i.sv, %i.sw ; 2 uses
  %i.sy = fcmp reassoc nsz arcp contract afn oeq float %i.sx, 0.000000e+00
  %i.sz = fdiv reassoc nsz arcp contract afn float %i.sf, %i.sx
  %i.ta = select reassoc nsz arcp contract afn i1 %i.sy, float 0.000000e+00, float %i.sz ; 3 uses
  %i.tb = fmul reassoc nsz arcp contract afn float %i.ta, %i.sm ; 4 uses
  %i.tc = fmul reassoc nsz arcp contract afn float %i.ta, %i.sr ; 4 uses
  %i.td = fmul reassoc nsz arcp contract afn float %i.ta, %i.su ; 4 uses
  %i.te = fmul reassoc nsz arcp contract afn float %i.tb, f0x3FE76ACB
  %i.tf = fmul reassoc nsz arcp contract afn float %i.tc, f0x3FA65D1D
  %i.tg = fsub reassoc nsz arcp contract afn float %i.te, %i.tf
  %i.th = fmul reassoc nsz arcp contract afn float %i.td, f0x3EB21A8C
  %i.ti = fadd reassoc nsz arcp contract afn float %i.tg, %i.th ; 3 uses
  %.sroa.0404.0.vec.insert = insertelement <4 x float> poison, float %i.ti, i64 0
  %i.tj = fmul reassoc nsz arcp contract afn float %i.tb, f0x3F1E2ABC
  %i.tk = fmul reassoc nsz arcp contract afn float %i.tc, f0x3ECABA8D
  %i.tl = fadd reassoc nsz arcp contract afn float %i.tk, %i.tj
  %i.tm = fmul reassoc nsz arcp contract afn float %i.td, f0xBD2820C3
  %i.tn = fadd reassoc nsz arcp contract afn float %i.tl, %i.tm ; 2 uses
  %.sroa.0404.4.vec.insert = insertelement <4 x float> %.sroa.0404.0.vec.insert, float %i.tn, i64 1
  %i.to = fmul reassoc nsz arcp contract afn float %i.tb, f0x3E007B1A
  %i.tp = fmul reassoc nsz arcp contract afn float %i.tc, f0x3E51B1F3
  %i.tq = fsub reassoc nsz arcp contract afn float %i.tp, %i.to
  %i.tr = fmul reassoc nsz arcp contract afn float %i.td, f0x3FDF122A
  %i.ts = fadd reassoc nsz arcp contract afn float %i.tq, %i.tr ; 4 uses
  %.sroa.0404.8.vec.insert = insertelement <4 x float> %.sroa.0404.4.vec.insert, float %i.ts, i64 2
  %i.tt = fadd reassoc nsz arcp contract afn float %i.tc, %i.tb
  %i.tu = fadd reassoc nsz arcp contract afn float %i.tt, %i.td
  %i.tv = fmul reassoc nsz arcp contract afn float %i.tu, 0.000000e+00
  %.sroa.0404.12.vec.insert = insertelement <4 x float> %.sroa.0404.8.vec.insert, float %i.tv, i64 3 ; 3 uses
  %i.tw = load i32, ptr %i.fv, align 16, !tbaa !164
  %i.tx = icmp eq i32 %i.tw, 0
  br i1 %i.tx, label %bb.h, label %bb.r

bb.h:                                             ; preds = %gamut_check_Yrg.exit
  %i.ty = fmul reassoc nsz arcp contract afn float %i.ti, 1.150000e+00
  %i.tz = fmul reassoc nsz arcp contract afn float %i.ts, f0x3E199998
  %i.ua = fsub reassoc nsz arcp contract afn float %i.ty, %i.tz ; 2 uses
  %i.ub = fmul reassoc nsz arcp contract afn float %i.tn, 6.600000e-01
  %i.uc = fmul reassoc nsz arcp contract afn float %i.ti, f0x3EAE147A
  %i.ud = fadd reassoc nsz arcp contract afn float %i.ub, %i.uc ; 2 uses
  %.reass594 = fmul reassoc nsz arcp contract afn float %i.ua, f0x382DF9B4
  %.reass = fmul reassoc nsz arcp contract afn float %i.ud, f0x387344EC
  %.reass593 = fmul reassoc nsz arcp contract afn float %i.ts, 1.464800e-06
  %i.ue = fadd reassoc nsz arcp contract afn float %.reass594, %.reass593
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ue, %.reass
  %i.ug = insertelement <2 x float> poison, float %i.ts, i64 0
  %i.uh = shufflevector <2 x float> %i.ug, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ui = fmul reassoc nsz arcp contract afn <2 x float> %i.uh, <float 5.310080e-06, float f0x388C30BE>
  %i.uj = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uf, float 0.000000e+00)
  %i.uk = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.uj, float f0x3E232000) ; 2 uses
  %i.ul = fmul reassoc nsz arcp contract afn float %i.uk, f0x4196D000
  %i.um = fadd reassoc nsz arcp contract afn float %i.ul, f0x3F560000
  %i.un = fmul reassoc nsz arcp contract afn float %i.uk, 1.868750e+01
  %i.uo = fadd reassoc nsz arcp contract afn float %i.un, 1.000000e+00
  %i.up = fdiv reassoc nsz arcp contract afn float %i.um, %i.uo
  %i.uq = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.up, float f0x430608CD) ; 3 uses
  %i.ur = fmul reassoc nsz arcp contract afn float %i.uq, 3.524000e+00
  %i.us = fmul reassoc nsz arcp contract afn float %i.uq, 1.990760e-01
  %i.ut = insertelement <2 x float> poison, float %i.ua, i64 0
  %i.uu = shufflevector <2 x float> %i.ut, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uv = fmul reassoc nsz arcp contract afn <2 x float> %i.uu, <float -2.015100e-05, float -1.660080e-06>
  %i.uw = insertelement <2 x float> poison, float %i.ud, i64 0
  %i.ux = shufflevector <2 x float> %i.uw, <2 x float> poison, <2 x i32> zeroinitializer
  %i.uy = fmul reassoc nsz arcp contract afn <2 x float> %i.ux, <float f0x38EB0462, float 2.648000e-05>
  %i.uz = fadd reassoc nsz arcp contract afn <2 x float> %i.uv, %i.ui
  %i.va = fadd reassoc nsz arcp contract afn <2 x float> %i.uz, %i.uy
  %i.vb = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.va, <2 x float> zeroinitializer)
  %i.vc = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vb, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.vd = fmul reassoc nsz arcp contract afn <2 x float> %i.vc, splat (float f0x4196D000)
  %i.ve = fadd reassoc nsz arcp contract afn <2 x float> %i.vd, splat (float f0x3F560000)
  %i.vf = fmul reassoc nsz arcp contract afn <2 x float> %i.vc, splat (float 1.868750e+01)
  %i.vg = fadd reassoc nsz arcp contract afn <2 x float> %i.vf, splat (float 1.000000e+00)
  %i.vh = fdiv reassoc nsz arcp contract afn <2 x float> %i.ve, %i.vg
  %i.vi = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vh, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.vj = extractelement <2 x float> %i.vi, i64 0 ; 2 uses
  %i.vk = fadd reassoc nsz arcp contract afn float %i.vj, %i.uq ; 2 uses
  %i.vl = fmul reassoc nsz arcp contract afn float %i.vk, 5.000000e-01
  %i.vm = extractelement <2 x float> %i.vi, i64 1 ; 2 uses
  %i.vn = fmul reassoc nsz arcp contract afn float %i.vm, 0.000000e+00 ; 2 uses
  %i.vo = fadd reassoc nsz arcp contract afn float %i.vl, %i.vn ; 2 uses
  %i.vp = fmul reassoc nsz arcp contract afn float %i.vj, f0x40822279
  %i.vq = fsub reassoc nsz arcp contract afn float %i.ur, %i.vp
  %i.vr = fmul reassoc nsz arcp contract afn float %i.vm, 5.427080e-01
  %i.vs = fadd reassoc nsz arcp contract afn float %i.vq, %i.vr ; 2 uses
  %i.vt = fmul reassoc nsz arcp contract afn <2 x float> %i.vi, <float f0x3F8C63E9, float f0xBFA5DF3B> ; 2 uses
  %i.vu = extractelement <2 x float> %i.vt, i64 0
  %i.vv = fadd reassoc nsz arcp contract afn float %i.vu, %i.us
  %i.vw = extractelement <2 x float> %i.vt, i64 1
  %i.vx = fadd reassoc nsz arcp contract afn float %i.vv, %i.vw ; 2 uses
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vk, 0.000000e+00
  %i.vz = fadd reassoc nsz arcp contract afn float %i.vy, %i.vn
  %i.wa = fmul reassoc nsz arcp contract afn float %i.vo, 4.400000e-01
  %i.wb = fmul reassoc nsz arcp contract afn float %i.vo, 5.600000e-01
  %i.wc = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wb
  %i.wd = fdiv reassoc nsz arcp contract afn float %i.wa, %i.wc
  %i.we = fadd reassoc nsz arcp contract afn float %i.wd, -1.629550e-11
  %i.wf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.we, float 0.000000e+00) ; 2 uses
  %i.wg = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.vs, float noundef %i.vx) #25 ; 2 uses
  %i.wh = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.vx, float %i.vs) ; 2 uses
  %sincos320 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wh) ; 2 uses
  %sin321 = extractvalue { float, float } %sincos320, 0 ; 5 uses
  %cos322 = extractvalue { float, float } %sincos320, 1 ; 5 uses
  %i.wi = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.wg, float %i.wf) ; 4 uses
  %sincos317 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.wi) ; 2 uses
  %sin318 = extractvalue { float, float } %sincos317, 0 ; 3 uses
  %cos319 = extractvalue { float, float } %sincos317, 1 ; 3 uses
  %i.wj = load float, ptr %i.fz, align 16, !tbaa !165
  %i.wk = fadd reassoc nsz arcp contract afn float %i.wj, 1.000000e+00
  %i.wl = load float, ptr %i.dw, align 16, !tbaa !14
  %i.wm = fmul reassoc nsz arcp contract afn float %i.wl, %i.iz
  %i.wn = load float, ptr %i.ga, align 8, !tbaa !14
  %i.wo = fmul reassoc nsz arcp contract afn float %i.wn, %i.ji
  %i.wp = fadd reassoc nsz arcp contract afn float %i.wm, %i.wo
  %i.wq = load float, ptr %i.gb, align 16, !tbaa !14
  %i.wr = fmul reassoc nsz arcp contract afn float %i.wq, %i.ja
  %i.ws = fadd reassoc nsz arcp contract afn float %i.wr, %i.wp
  %i.wt = fadd reassoc nsz arcp contract afn float %i.wk, %i.ws
  %i.wu = load float, ptr %i.fw, align 16, !tbaa !166
  %i.wv = load float, ptr %i.dv, align 16, !tbaa !14
  %i.ww = fmul reassoc nsz arcp contract afn float %i.wv, %i.iz
  %i.wx = load float, ptr %i.fx, align 16, !tbaa !14
  %i.wy = fmul reassoc nsz arcp contract afn float %i.wx, %i.ji
  %i.wz = fadd reassoc nsz arcp contract afn float %i.ww, %i.wy
  %i.xa = load float, ptr %i.fy, align 8, !tbaa !14
  %i.xb = fmul reassoc nsz arcp contract afn float %i.xa, %i.ja
  %i.xc = fadd reassoc nsz arcp contract afn float %i.xb, %i.wz
  %i.xd = fadd reassoc nsz arcp contract afn float %i.xc, %i.wu
  %i.xe = fmul reassoc nsz arcp contract afn float %cos319, %i.wf
  %i.xf = fmul reassoc nsz arcp contract afn float %sin318, %i.wg
  %i.xg = fadd reassoc nsz arcp contract afn float %i.xe, %i.xf ; 2 uses
  %i.xh = fmul reassoc nsz arcp contract afn float %i.xd, %i.wi ; 2 uses
  %i.xi = fneg reassoc nsz arcp contract afn float %i.wi ; 2 uses
  %i.xj = fcmp reassoc nsz arcp contract afn ogt float %i.xh, %i.xi
  %. = select reassoc nsz arcp contract afn i1 %i.xj, float %i.xh, float %i.xi ; 2 uses
  %i.xk = fsub reassoc nsz arcp contract afn float f0x3FC90FDB, %i.wi ; 2 uses
  %i.xl = fcmp reassoc nsz arcp contract afn olt float %., %i.xk
  %i.xm = select reassoc nsz arcp contract afn i1 %i.xl, float %., float %i.xk
  %i.xn = fmul reassoc nsz arcp contract afn float %i.xm, %i.xg ; 2 uses
  %i.xo = fmul reassoc nsz arcp contract afn float %i.wt, %i.xg ; 2 uses
  %i.xp = fcmp reassoc nsz arcp contract afn ogt float %i.xo, 0.000000e+00
  %i.xq = select reassoc nsz arcp contract afn i1 %i.xp, float %i.xo, float 0.000000e+00 ; 2 uses
  %i.xr = fmul reassoc nsz arcp contract afn float %i.xq, %cos319
  %i.xs = fmul reassoc nsz arcp contract afn float %i.xn, %sin318
  %i.xt = fsub reassoc nsz arcp contract afn float %i.xr, %i.xs ; 3 uses
  %i.xu = fcmp reassoc nsz arcp contract afn ogt float %i.xt, 0.000000e+00 ; 2 uses
  %i.xv = select reassoc nsz arcp contract afn i1 %i.xu, float %i.xt, float 0.000000e+00 ; 3 uses
  %i.xw = fmul reassoc nsz arcp contract afn float %i.xq, %sin318
  %i.xx = fmul reassoc nsz arcp contract afn float %i.xn, %cos319
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xx, %i.xw ; 2 uses
  %i.xz = fcmp reassoc nsz arcp contract afn ogt float %i.xy, 0.000000e+00
  %i.ya = select reassoc nsz arcp contract afn i1 %i.xz, float %i.xy, float 0.000000e+00 ; 3 uses
  %i.yb = fmul reassoc nsz arcp contract afn float %i.wh, f0x42A2F983
  %i.yc = fadd reassoc nsz arcp contract afn float %i.yb, 2.560000e+02 ; 2 uses
  %i.yd = fpext reassoc nsz arcp contract afn float %i.yc to double ; 2 uses
  %i.ye = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.yd)
  %i.yf = fptrunc reassoc nsz arcp contract afn double %i.ye to float ; 2 uses
  %i.yg = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.yd)
  %i.yh = fptrunc reassoc nsz arcp contract afn double %i.yg to float
  %i.yi = fptosi float %i.yf to i32
  %i.yj = and i32 %i.yi, 511                      ; 2 uses
  %i.yk = fptosi float %i.yh to i32
  %i.yl = and i32 %i.yk, 511                      ; 2 uses
  %i.ym = zext nneg i32 %i.yj to i64
  %i.yn = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ym
  %i.yo = load float, ptr %i.yn, align 4, !tbaa !14 ; 3 uses
  %.not.i = icmp eq i32 %i.yj, %i.yl
  br i1 %.not.i, label %lookup_gamut.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.yp = fsub reassoc nsz arcp contract afn float %i.yc, %i.yf
  %i.yq = zext nneg i32 %i.yl to i64
  %i.yr = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.yq
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !14
  %i.yt = fsub reassoc nsz arcp contract afn float %i.ys, %i.yo
  %i.yu = fmul reassoc nsz arcp contract afn float %i.yt, %i.yp
  %i.yv = fadd reassoc nsz arcp contract afn float %i.yu, %i.yo
  br label %lookup_gamut.exit

lookup_gamut.exit:                                ; preds = %bb.h, %bb.i
  %i.yw = phi float [ %i.yv, %bb.i ], [ %i.yo, %bb.h ] ; 3 uses
  br i1 %i.xu, label %bb.j, label %soft_clip.exit

bb.j:                                             ; preds = %lookup_gamut.exit
  %i.yx = fdiv reassoc nsz arcp contract afn float %i.ya, %i.xt ; 3 uses
  %i.yy = fmul reassoc nsz arcp contract afn float %i.yw, 8.000000e-01 ; 3 uses
  %i.yz = fcmp reassoc nsz arcp contract afn ogt float %i.yx, %i.yy
  br i1 %i.yz, label %bb.k, label %soft_clip.exit

bb.k:                                             ; preds = %bb.j
  %i.za = fmul reassoc nsz arcp contract afn float %i.yw, f0x3E4CCCCC ; 2 uses
  %i.zb = fsub reassoc nsz arcp contract afn float %i.yy, %i.yx
  %i.zc = fdiv reassoc nsz arcp contract afn float %i.zb, %i.za
  %i.zd = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.zc)
  %i.ze = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.zd
  %i.zf = fmul reassoc nsz arcp contract afn float %i.ze, %i.za
  %i.zg = fadd reassoc nsz arcp contract afn float %i.zf, %i.yy
  br label %soft_clip.exit

soft_clip.exit:                                   ; preds = %bb.k, %bb.j, %lookup_gamut.exit
  %i.zh = phi reassoc nsz arcp contract afn float [ %i.yw, %lookup_gamut.exit ], [ %i.zg, %bb.k ], [ %i.yx, %bb.j ] ; 3 uses
  %i.zi = fmul reassoc nsz arcp contract afn float %i.zh, %i.xv
  %i.zj = fcmp reassoc nsz arcp contract afn ogt float %i.zh, 0.000000e+00
  %i.zk = fdiv reassoc nsz arcp contract afn float %i.ya, %i.zh
  %i.zl = select reassoc nsz arcp contract afn i1 %i.zj, float %i.zk, float %i.xv
  %i.zm = fadd reassoc nsz arcp contract afn float %i.zl, %i.xv
  %i.zn = fmul reassoc nsz arcp contract afn float %i.zm, 5.000000e-01
  %i.zo = fadd reassoc nsz arcp contract afn float %i.zi, %i.ya
  %i.zp = fmul reassoc nsz arcp contract afn float %i.zo, 5.000000e-01 ; 5 uses
  %i.zq = fadd reassoc nsz arcp contract afn float %i.zn, 1.629550e-11 ; 2 uses
  %i.zr = fmul reassoc nsz arcp contract afn float %i.zq, 5.600000e-01
  %i.zs = fadd reassoc nsz arcp contract afn float %i.zr, 4.400000e-01
  %i.zt = fdiv reassoc nsz arcp contract afn float %i.zq, %i.zs ; 3 uses
  %i.zu = fcmp reassoc nsz arcp contract afn ogt float %i.zt, 0.000000e+00
  %i.zv = select reassoc nsz arcp contract afn i1 %i.zu, float %i.zt, float 0.000000e+00 ; 6 uses
  %i.zw = fmul reassoc nsz arcp contract afn float %i.zp, %cos322 ; 3 uses
  %i.zx = fmul reassoc nsz arcp contract afn float %i.zp, %sin321 ; 3 uses
  %i.zy = fmul reassoc nsz arcp contract afn float %i.zw, f0x3E0DEE7B
  %i.zz = fadd reassoc nsz arcp contract afn float %i.zy, %i.zv
  %i.aaa = fmul reassoc nsz arcp contract afn float %i.zx, f0x3D6DC306
  %i.aab = fadd reassoc nsz arcp contract afn float %i.zz, %i.aaa
  %i.aac = fmul reassoc nsz arcp contract afn float %i.zw, f0xBE0DEE7B
  %i.aad = fadd reassoc nsz arcp contract afn float %i.aac, %i.zv
  %i.aae = fmul reassoc nsz arcp contract afn float %i.zx, f0xBD6DC306
  %i.aaf = fadd reassoc nsz arcp contract afn float %i.aad, %i.aae
  %i.aag = fmul reassoc nsz arcp contract afn float %i.zw, f0xBDC4A5BD
  %i.aah = fadd reassoc nsz arcp contract afn float %i.aag, %i.zv
  %i.aai = fmul reassoc nsz arcp contract afn float %i.zx, f0xBF4FD826
  %i.aaj = fadd reassoc nsz arcp contract afn float %i.aah, %i.aai
  %i.aak = fcmp reassoc nsz arcp contract afn olt float %i.aab, 0.000000e+00
  br i1 %i.aak, label %bb.l, label %bb.m

bb.l:                                             ; preds = %soft_clip.exit
  %i.aal = fneg reassoc nsz arcp contract afn float %i.zv
  %i.aam = fmul reassoc nsz arcp contract afn float %cos322, f0x3E0DEE7B
  %i.aan = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.aao = fadd reassoc nsz arcp contract afn float %i.aam, %i.aan
  %i.aap = fdiv reassoc nsz arcp contract afn float %i.aal, %i.aao ; 2 uses
  %i.aaq = fcmp reassoc nsz arcp contract afn olt float %i.aap, %i.zp
  %.324 = select reassoc nsz arcp contract afn i1 %i.aaq, float %i.aap, float %i.zp
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %soft_clip.exit
  %.0299 = phi nsz float [ %.324, %bb.l ], [ %i.zp, %soft_clip.exit ] ; 3 uses
  %i.aar = fcmp reassoc nsz arcp contract afn olt float %i.aaf, 0.000000e+00
  br i1 %i.aar, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.aas = fneg reassoc nsz arcp contract afn float %i.zv
  %i.aat = fmul reassoc nsz arcp contract afn float %cos322, f0xBE0DEE7B
  %i.aau = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.aav = fsub reassoc nsz arcp contract afn float %i.aat, %i.aau
  %i.aaw = fdiv reassoc nsz arcp contract afn float %i.aas, %i.aav ; 2 uses
  %i.aax = fcmp reassoc nsz arcp contract afn olt float %i.aaw, %.0299
  %..0299 = select reassoc nsz arcp contract afn i1 %i.aax, float %i.aaw, float %.0299
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi nsz float [ %..0299, %bb.n ], [ %.0299, %bb.m ] ; 3 uses
  %i.aay = fcmp reassoc nsz arcp contract afn olt float %i.aaj, 0.000000e+00
  br i1 %i.aay, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.aaz = fneg reassoc nsz arcp contract afn float %i.zv
  %i.aba = fmul reassoc nsz arcp contract afn float %cos322, f0xBDC4A5BD
  %i.abb = fmul reassoc nsz arcp contract afn float %sin321, f0x3F4FD826
  %i.abc = fsub reassoc nsz arcp contract afn float %i.aba, %i.abb
  %i.abd = fdiv reassoc nsz arcp contract afn float %i.aaz, %i.abc ; 2 uses
  %i.abe = fcmp reassoc nsz arcp contract afn olt float %i.abd, %.1
  %..1 = select reassoc nsz arcp contract afn i1 %i.abe, float %i.abd, float %.1
  br label %bb.q

end_hunk_0
begin_hunk_1_@process:bb.a
  %i.adr = fadd reassoc nsz arcp contract afn float %i.adq, %i.adp
  %i.ads = fmul reassoc nsz arcp contract afn float %i.adh, f0x3EA32D9A
  %i.adt = fmul reassoc nsz arcp contract afn float %i.adj, f0x400AB749
  %i.adu = fadd reassoc nsz arcp contract afn float %i.ads, f0x3E9527F8
  %i.adv = fadd reassoc nsz arcp contract afn float %i.adu, %i.adt ; 5 uses
  %i.adw = fcmp reassoc nsz arcp contract afn ult float %i.adv, 0.000000e+00
  %i.adx = fcmp reassoc nsz arcp contract afn olt float %i.adv, f0x00800000
  %i.ady = select reassoc nsz arcp contract afn i1 %i.adx, float f0x00800000, float %i.adv
  %i.adz = fcmp reassoc nsz arcp contract afn ogt float %i.adv, f0x80800000
  %i.aea = select reassoc nsz arcp contract afn i1 %i.adz, float f0x80800000, float %i.adv
  %i.aeb = select reassoc nsz arcp contract afn i1 %i.adw, float %i.aea, float %i.ady ; 2 uses
  %i.aec = fdiv reassoc nsz arcp contract afn float %i.adn, %i.aeb ; 2 uses
  %i.aed = fdiv reassoc nsz arcp contract afn float %i.adr, %i.aeb ; 2 uses
  %i.aee = fmul reassoc nsz arcp contract afn float %i.aec, f0x3FB2C28D
  %i.aef = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aec)
  %i.aeg = fadd reassoc nsz arcp contract afn float %i.aef, f0x3FBEFF8B
  %i.aeh = fdiv reassoc nsz arcp contract afn float %i.aee, %i.aeg ; 2 uses
  %i.aei = fmul reassoc nsz arcp contract afn float %i.aed, f0x3FB9C753
  %i.aej = tail call reassoc nsz arcp contract afn float @llvm.fabs.f32(float %i.aed)
  %i.aek = fadd reassoc nsz arcp contract afn float %i.aej, f0x3FC32F7A
  %i.ael = fdiv reassoc nsz arcp contract afn float %i.aei, %i.aek ; 2 uses
  %i.aem = fmul reassoc nsz arcp contract afn float %i.aeh, f0xBF8FFF79
  %i.aen = fmul reassoc nsz arcp contract afn float %i.ael, f0x3F7B00FB
  %i.aeo = fsub reassoc nsz arcp contract afn float %i.aem, %i.aen ; 3 uses
  %i.aep = fmul reassoc nsz arcp contract afn float %i.aeh, f0x3FEE7E6D
  %i.aeq = fmul reassoc nsz arcp contract afn float %i.ael, f0x3FFC65AF
  %i.aer = fadd reassoc nsz arcp contract afn float %i.aeq, %i.aep ; 3 uses
  %i.aes = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %.sroa.0.4.vec.extract4.i, float f0x3F21B3E7) ; 2 uses
  %i.aet = fmul reassoc nsz arcp contract afn float %i.aes, f0x4006541D
  %i.aeu = fadd reassoc nsz arcp contract afn float %i.aes, f0x3F8FE801
  %i.aev = fdiv reassoc nsz arcp contract afn float %i.aet, %i.aeu ; 2 uses
  %i.aew = fmul reassoc nsz arcp contract afn float %i.aeo, %i.aeo
  %i.aex = fmul reassoc nsz arcp contract afn float %i.aer, %i.aer
  %i.aey = fadd reassoc nsz arcp contract afn float %i.aex, %i.aew
  %i.aez = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aev, float f0x3F2703AC)
  %i.afa = fmul reassoc nsz arcp contract afn float %i.aez, f0x417EED8B
  %i.afb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aey, float f0x3F19CB20)
  %i.afc = fmul reassoc nsz arcp contract afn float %i.afa, %i.afb
  %i.afd = fmul reassoc nsz arcp contract afn float %i.afc, %i.gk ; 6 uses
  %i.afe = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.aer, float %i.aeo) ; 2 uses
  %i.aff = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.afd, float f0x3FAB13D1)
  %i.afg = fadd reassoc nsz arcp contract afn float %i.aff, 1.000000e+00
  %i.afh = fmul reassoc nsz arcp contract afn float %i.afg, %i.aev
  %i.afi = fmul reassoc nsz arcp contract afn float %i.afh, %i.gl ; 3 uses
  %i.afj = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.afd, float noundef %i.afi) #25 ; 3 uses
  %i.afk = fcmp reassoc nsz arcp contract afn ogt float %i.afj, 0.000000e+00 ; 2 uses
  %i.afl = fdiv reassoc nsz arcp contract afn float %i.afd, %i.afj
  %i.afm = select reassoc nsz arcp contract afn i1 %i.afk, float %i.afl, float 0.000000e+00 ; 3 uses
  %i.afn = fdiv reassoc nsz arcp contract afn float %i.afi, %i.afj
  %i.afo = select reassoc nsz arcp contract afn i1 %i.afk, float %i.afn, float 0.000000e+00 ; 3 uses
  %i.afp = fcmp reassoc nsz arcp contract afn olt float %i.afd, f0x00800000
  %i.afq = select reassoc nsz arcp contract afn i1 %i.afp, float f0x00800000, float %i.afd ; 5 uses
  %i.afr = fmul reassoc nsz arcp contract afn float %i.afm, %i.afd
  %i.afs = fmul reassoc nsz arcp contract afn float %i.afo, %i.afi
  %i.aft = fadd reassoc nsz arcp contract afn float %i.afs, %i.afr ; 3 uses
  %i.afu = load float, ptr %i.fw, align 16, !tbaa !166
  %i.afv = fadd reassoc nsz arcp contract afn float %i.afu, 1.000000e+00
  %i.afw = load float, ptr %i.dv, align 16, !tbaa !14
  %i.afx = fmul reassoc nsz arcp contract afn float %i.afw, %i.iz
  %i.afy = load float, ptr %i.fx, align 16, !tbaa !14
  %i.afz = fmul reassoc nsz arcp contract afn float %i.afy, %i.ji
  %i.aga = fadd reassoc nsz arcp contract afn float %i.afx, %i.afz
  %i.agb = load float, ptr %i.fy, align 8, !tbaa !14
  %i.agc = fmul reassoc nsz arcp contract afn float %i.agb, %i.ja
  %i.agd = fadd reassoc nsz arcp contract afn float %i.agc, %i.aga
  %i.age = fadd reassoc nsz arcp contract afn float %i.afv, %i.agd ; 2 uses
  %i.agf = fcmp reassoc nsz arcp contract afn ogt float %i.age, 0.000000e+00
  %i.agg = select reassoc nsz arcp contract afn i1 %i.agf, float %i.age, float 0.000000e+00 ; 3 uses
  %i.agh = load float, ptr %i.fz, align 16, !tbaa !165
  %i.agi = fadd reassoc nsz arcp contract afn float %i.agh, 1.000000e+00
  %i.agj = load float, ptr %i.dw, align 16, !tbaa !14
  %i.agk = fmul reassoc nsz arcp contract afn float %i.agj, %i.iz
  %i.agl = load float, ptr %i.ga, align 8, !tbaa !14
  %i.agm = fmul reassoc nsz arcp contract afn float %i.agl, %i.ji
  %i.agn = fadd reassoc nsz arcp contract afn float %i.agk, %i.agm
  %i.ago = load float, ptr %i.gb, align 16, !tbaa !14
  %i.agp = fmul reassoc nsz arcp contract afn float %i.ago, %i.ja
  %i.agq = fadd reassoc nsz arcp contract afn float %i.agp, %i.agn
  %i.agr = fadd reassoc nsz arcp contract afn float %i.agi, %i.agq ; 2 uses
  %i.ags = fcmp reassoc nsz arcp contract afn ogt float %i.agr, 0.000000e+00
  %i.agt = select reassoc nsz arcp contract afn i1 %i.ags, float %i.agr, float 0.000000e+00
  %i.agu = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.afq, float noundef %i.aft) #25
  %i.agv = fmul reassoc nsz arcp contract afn float %i.agu, 5.000000e-01
  %i.agw = fdiv reassoc nsz arcp contract afn float %i.agv, %i.afq ; 5 uses
  %i.agx = fcmp reassoc nsz arcp contract afn ogt float %i.agg, %i.agw
  br i1 %i.agx, label %bb.s, label %soft_clip.exit341

bb.s:                                             ; preds = %bb.r
  %i.agy = fsub reassoc nsz arcp contract afn float %i.agw, %i.agg
  %i.agz = fdiv reassoc nsz arcp contract afn float %i.agy, %i.agw
  %i.aha = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.agz)
  %i.ahb = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.aha
  %i.ahc = fmul reassoc nsz arcp contract afn float %i.ahb, %i.agw
  %i.ahd = fadd reassoc nsz arcp contract afn float %i.ahc, %i.agw
  br label %soft_clip.exit341

soft_clip.exit341:                                ; preds = %bb.r, %bb.s
  %i.ahe = phi reassoc nsz arcp contract afn float [ %i.ahd, %bb.s ], [ %i.agg, %bb.r ] ; 3 uses
  %i.ahf = fadd reassoc nsz arcp contract afn float %i.ahe, -1.000000e+00
  %i.ahg = fmul reassoc nsz arcp contract afn float %i.ahf, %i.afq ; 2 uses
  %i.ahh = fmul reassoc nsz arcp contract afn float %i.afq, %i.afq
  %i.ahi = fmul reassoc nsz arcp contract afn float %i.ahe, %i.ahe
  %i.ahj = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ahi
  %i.ahk = fmul reassoc nsz arcp contract afn float %i.ahh, %i.ahj
  %i.ahl = fmul reassoc nsz arcp contract afn float %i.aft, %i.aft
  %i.ahm = fadd reassoc nsz arcp contract afn float %i.ahk, %i.ahl
  %i.ahn = tail call reassoc nsz arcp contract afn float @llvm.sqrt.f32(float %i.ahm)
  %i.aho = fmul reassoc nsz arcp contract afn float %i.ahn, %i.agt ; 2 uses
  %i.ahp = fmul reassoc nsz arcp contract afn float %i.ahg, %i.afo
  %i.ahq = fmul reassoc nsz arcp contract afn float %i.aho, %i.afm
  %i.ahr = fadd reassoc nsz arcp contract afn float %i.ahq, %i.ahp ; 2 uses
  %i.ahs = fcmp reassoc nsz arcp contract afn ogt float %i.ahr, 0.000000e+00
  %i.aht = select reassoc nsz arcp contract afn i1 %i.ahs, float %i.ahr, float 0.000000e+00 ; 2 uses
  %i.ahu = fmul reassoc nsz arcp contract afn float %i.aho, %i.afo
  %i.ahv = fmul reassoc nsz arcp contract afn float %i.ahg, %i.afm
  %i.ahw = fsub reassoc nsz arcp contract afn float %i.ahu, %i.ahv ; 3 uses
  %i.ahx = fcmp reassoc nsz arcp contract afn ogt float %i.ahw, 0.000000e+00 ; 2 uses
  %i.ahy = select reassoc nsz arcp contract afn i1 %i.ahx, float %i.ahw, float 0.000000e+00 ; 3 uses
  %i.ahz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aht, float f0x3FAB13D1)
  %i.aia = fadd reassoc nsz arcp contract afn float %i.ahz, 1.000000e+00
  %i.aib = fdiv reassoc nsz arcp contract afn float %i.ahy, %i.aia ; 2 uses
  %i.aic = fmul reassoc nsz arcp contract afn float %i.afe, f0x42A2F983
  %i.aid = fadd reassoc nsz arcp contract afn float %i.aic, 2.560000e+02 ; 2 uses
  %i.aie = fpext reassoc nsz arcp contract afn float %i.aid to double ; 2 uses
  %i.aif = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.aie)
  %i.aig = fptrunc reassoc nsz arcp contract afn double %i.aif to float ; 2 uses
  %i.aih = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.aie)
  %i.aii = fptrunc reassoc nsz arcp contract afn double %i.aih to float
  %i.aij = fptosi float %i.aig to i32
  %i.aik = and i32 %i.aij, 511                    ; 2 uses
  %i.ail = fptosi float %i.aii to i32
  %i.aim = and i32 %i.ail, 511                    ; 2 uses
  %i.ain = zext nneg i32 %i.aik to i64
  %i.aio = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.ain
  %i.aip = load float, ptr %i.aio, align 4, !tbaa !14 ; 3 uses
  %.not.i342 = icmp eq i32 %i.aik, %i.aim
  br i1 %.not.i342, label %lookup_gamut.exit343, label %bb.t

bb.t:                                             ; preds = %soft_clip.exit341
  %i.aiq = fsub reassoc nsz arcp contract afn float %i.aid, %i.aig
  %i.air = zext nneg i32 %i.aim to i64
  %i.ais = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.air
  %i.ait = load float, ptr %i.ais, align 4, !tbaa !14
  %i.aiu = fsub reassoc nsz arcp contract afn float %i.ait, %i.aip
  %i.aiv = fmul reassoc nsz arcp contract afn float %i.aiu, %i.aiq
  %i.aiw = fadd reassoc nsz arcp contract afn float %i.aiv, %i.aip
  br label %lookup_gamut.exit343

lookup_gamut.exit343:                             ; preds = %soft_clip.exit341, %bb.t
  %i.aix = phi float [ %i.aiw, %bb.t ], [ %i.aip, %soft_clip.exit341 ]
  %i.aiy = fmul reassoc nsz arcp contract afn float %i.aib, %i.ex
  %i.aiz = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aiy, float f0x3F2703AC)
  %i.aja = fmul reassoc nsz arcp contract afn float %i.aiz, f0x417EED8B
  %i.ajb = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aix, float f0x3F19CB20)
  %i.ajc = fmul reassoc nsz arcp contract afn float %i.aja, %i.ajb
  %i.ajd = fmul reassoc nsz arcp contract afn float %i.ajc, %i.gm ; 2 uses
  %i.aje = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ajd, float f0x3FAB13D1)
  %i.ajf = fadd reassoc nsz arcp contract afn float %i.aje, 1.000000e+00
  %i.ajg = fmul reassoc nsz arcp contract afn float %i.ajf, %i.aib ; 2 uses
  %i.ajh = fcmp reassoc nsz arcp contract afn ogt float %i.ajg, 0.000000e+00
  %i.aji = fdiv reassoc nsz arcp contract afn float %i.ajd, %i.ajg
  %i.ajj = select reassoc nsz arcp contract afn i1 %i.ajh, float %i.aji, float 0.000000e+00 ; 2 uses
  %i.ajk = fdiv reassoc nsz arcp contract afn float %i.aht, %i.ahw
  %i.ajl = select reassoc nsz arcp contract afn i1 %i.ahx, float %i.ajk, float 0.000000e+00 ; 3 uses
  %i.ajm = fmul reassoc nsz arcp contract afn float %i.ajj, 8.000000e-01 ; 3 uses
  %i.ajn = fcmp reassoc nsz arcp contract afn ogt float %i.ajl, %i.ajm
  br i1 %i.ajn, label %bb.u, label %soft_clip.exit344

bb.u:                                             ; preds = %lookup_gamut.exit343
  %i.ajo = fmul reassoc nsz arcp contract afn float %i.ajj, f0x3E4CCCCC ; 2 uses
  %i.ajp = fsub reassoc nsz arcp contract afn float %i.ajm, %i.ajl
  %i.ajq = fdiv reassoc nsz arcp contract afn float %i.ajp, %i.ajo
  %i.ajr = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.ajq)
  %i.ajs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ajr
  %i.ajt = fmul reassoc nsz arcp contract afn float %i.ajs, %i.ajo
  %i.aju = fadd reassoc nsz arcp contract afn float %i.ajt, %i.ajm
  br label %soft_clip.exit344

soft_clip.exit344:                                ; preds = %lookup_gamut.exit343, %bb.u
  %i.ajv = phi reassoc nsz arcp contract afn float [ %i.aju, %bb.u ], [ %i.ajl, %lookup_gamut.exit343 ]
  %i.ajw = fmul reassoc nsz arcp contract afn float %i.ajv, %i.ahy ; 2 uses
  %i.ajx = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ajw, float f0x3FAB13D1)
  %i.ajy = fadd reassoc nsz arcp contract afn float %i.ajx, 1.000000e+00
  %i.ajz = fmul reassoc nsz arcp contract afn float %i.ahy, %i.ex
  %i.aka = fdiv reassoc nsz arcp contract afn float %i.ajz, %i.ajy ; 5 uses
  %i.akb = fcmp reassoc nsz arcp contract afn ult float %i.aka, 0.000000e+00
  br i1 %i.akb, label %dt_UCS_JCH_to_xyY.exit, label %bb.v

bb.v:                                             ; preds = %soft_clip.exit344
  %i.akc = fcmp reassoc nsz arcp contract afn ugt float %i.aka, 2.098850e+00
  br i1 %i.akc, label %.thread.i, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.akd = fcmp reassoc nsz arcp contract afn une float %i.aka, 0.000000e+00
  br i1 %i.akd, label %.thread.i, label %dt_UCS_JCH_to_xyY.exit

.thread.i:                                        ; preds = %bb.w, %bb.v
  %i.ake = phi float [ %i.aka, %bb.w ], [ 2.098850e+00, %bb.v ] ; 2 uses
  %i.akf = fmul reassoc nsz arcp contract afn float %i.ajw, %i.ex
  %i.akg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.ake, float f0x3F2703AC)
  %i.akh = fmul reassoc nsz arcp contract afn float %i.akg, f0x417EED8B
  %i.aki = fdiv reassoc nsz arcp contract afn float %i.akf, %i.akh
  %i.akj = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.aki, float f0x3F5510A2)
  br label %dt_UCS_JCH_to_xyY.exit

dt_UCS_JCH_to_xyY.exit:                           ; preds = %soft_clip.exit344, %bb.w, %.thread.i
  %i.akk = phi float [ %i.ake, %.thread.i ], [ %i.aka, %bb.w ], [ 0.000000e+00, %soft_clip.exit344 ] ; 2 uses
  %i.akl = phi reassoc nsz arcp contract afn float [ %i.akj, %.thread.i ], [ 0.000000e+00, %bb.w ], [ 0.000000e+00, %soft_clip.exit344 ]
  %sincos.i = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.afe) ; 2 uses
  %sin.i = extractvalue { float, float } %sincos.i, 0
  %cos.i = extractvalue { float, float } %sincos.i, 1
  %i.akm = insertelement <2 x float> poison, float %i.akl, i64 0
  %i.akn = shufflevector <2 x float> %i.akm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ako = insertelement <2 x float> poison, float %cos.i, i64 0
  %i.akp = insertelement <2 x float> %i.ako, float %sin.i, i64 1
  %i.akq = fmul reassoc nsz arcp contract afn <2 x float> %i.akn, %i.akp ; 2 uses
  %i.akr = fmul reassoc nsz arcp contract afn <2 x float> %i.akq, <float f0x40985229, float f0x40204F91>
  %i.aks = shufflevector <2 x float> %i.akr, <2 x float> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.akt = fmul reassoc nsz arcp contract afn <2 x float> %i.akq, <float f0xC0A13362, float f0x4037EFD4> ; 2 uses
  %i.aku = fsub reassoc nsz arcp contract afn <2 x float> %i.akt, %i.aks
  %i.akv = fadd reassoc nsz arcp contract afn <2 x float> %i.akt, %i.aks
  %i.akw = shufflevector <2 x float> %i.aku, <2 x float> %i.akv, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.akx = fmul reassoc nsz arcp contract afn <2 x float> %i.akw, <float f0xBFBEFF8B, float f0xBFC32F7A>
  %i.aky = tail call reassoc nsz arcp contract afn <2 x float> @llvm.fabs.v2f32(<2 x float> %i.akw)
  %i.akz = fadd reassoc nsz arcp contract afn <2 x float> %i.aky, <float f0xBFB2C28D, float f0xBFB9C753>
  %i.ala = fdiv reassoc nsz arcp contract afn <2 x float> %i.akx, %i.akz ; 3 uses
  %i.alb = extractelement <2 x float> %i.ala, i64 0 ; 2 uses
  %i.alc = fmul reassoc nsz arcp contract afn float %i.alb, f0xBE1A9505
  %i.ald = extractelement <2 x float> %i.ala, i64 1 ; 2 uses
  %i.ale = fmul reassoc nsz arcp contract afn float %i.ald, f0xBE1EE8D5
  %i.alf = fadd reassoc nsz arcp contract afn float %i.alc, f0xBC0A2B16
  %i.alg = fadd reassoc nsz arcp contract afn float %i.alf, %i.ale
  %i.alh = fmul reassoc nsz arcp contract afn float %i.alb, f0x3F70B489
  %i.ali = fadd reassoc nsz arcp contract afn float %i.ald, %i.alh
  %i.alj = fadd reassoc nsz arcp contract afn float %i.ali, f0xBCD1FB74 ; 5 uses
  %i.alk = fcmp reassoc nsz arcp contract afn ult float %i.alj, 0.000000e+00
  %i.all = fcmp reassoc nsz arcp contract afn olt float %i.alj, f0x00800000
  %i.alm = select reassoc nsz arcp contract afn i1 %i.all, float f0x00800000, float %i.alj
  %i.aln = fcmp reassoc nsz arcp contract afn ogt float %i.alj, f0x80800000
  %i.alo = select reassoc nsz arcp contract afn i1 %i.aln, float f0x80800000, float %i.alj
  %i.alp = select reassoc nsz arcp contract afn i1 %i.alk, float %i.alo, float %i.alm ; 2 uses
  %i.alq = fdiv reassoc nsz arcp contract afn float %i.alg, %i.alp ; 4 uses
  %i.alr = fcmp reassoc nsz arcp contract afn oeq float %i.alq, 0.000000e+00
  br i1 %i.alr, label %.thread.i345, label %bb.x

.thread.i345:                                     ; preds = %dt_UCS_JCH_to_xyY.exit
  %.sroa.0404.4.vec.insert427 = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float poison>, <4 x float> %.sroa.0404.12.vec.insert, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  br label %dt_xyY_to_XYZ.exit

bb.x:                                             ; preds = %dt_UCS_JCH_to_xyY.exit
  %i.als = fmul reassoc nsz arcp contract afn float %i.akk, f0x3F8FE801
  %i.alt = fsub reassoc nsz arcp contract afn float f0x4006541D, %i.akk
  %i.alu = fdiv reassoc nsz arcp contract afn float %i.als, %i.alt
  %i.alv = tail call reassoc nsz arcp contract afn noundef float @llvm.pow.f32(float %i.alu, float f0x3FCAA4B8) ; 3 uses
  %i.alw = fmul reassoc nsz arcp contract afn <2 x float> %i.ala, <float f0x3E2B2F00, float f0x3E10B0E5> ; 2 uses
  %i.alx = extractelement <2 x float> %i.alw, i64 0
  %i.aly = fadd reassoc nsz arcp contract afn float %i.alx, f0xBC0352A9
  %i.alz = extractelement <2 x float> %i.alw, i64 1
  %i.ama = fadd reassoc nsz arcp contract afn float %i.aly, %i.alz
  %i.amb = fdiv reassoc nsz arcp contract afn float %i.ama, %i.alp ; 2 uses
  %i.amc = fmul reassoc nsz arcp contract afn float %i.amb, %i.alv
  %i.amd = fdiv reassoc nsz arcp contract afn float %i.amc, %i.alq
  %.sroa.0404.0.vec.insert410 = insertelement <4 x float> %.sroa.0404.12.vec.insert, float %i.amd, i64 0
  %.sroa.0404.4.vec.insert425 = insertelement <4 x float> %.sroa.0404.0.vec.insert410, float %i.alv, i64 1
  %i.ame = fadd reassoc nsz arcp contract afn float %i.alq, %i.amb
  %i.amf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ame
  %i.amg = fmul reassoc nsz arcp contract afn float %i.amf, %i.alv
  %i.amh = fdiv reassoc nsz arcp contract afn float %i.amg, %i.alq
  br label %dt_xyY_to_XYZ.exit

dt_xyY_to_XYZ.exit:                               ; preds = %.thread.i345, %bb.x
  %.sroa.0404.2 = phi nsz <4 x float> [ %.sroa.0404.4.vec.insert427, %.thread.i345 ], [ %.sroa.0404.4.vec.insert425, %bb.x ]
  %i.ami = phi reassoc nsz arcp contract afn float [ 0.000000e+00, %.thread.i345 ], [ %i.amh, %bb.x ]
  %.sroa.0404.8.vec.insert440 = insertelement <4 x float> %.sroa.0404.2, float %i.ami, i64 2
  br label %bb.y

bb.y:                                             ; preds = %dt_xyY_to_XYZ.exit, %bb.q
  %.sroa.0404.1 = phi nsz <4 x float> [ %.sroa.0404.12.vec.insert450, %bb.q ], [ %.sroa.0404.8.vec.insert440, %dt_xyY_to_XYZ.exit ] ; 4 uses
  %i.amj = shufflevector <4 x float> %.sroa.0404.1, <4 x float> poison, <4 x i32> <i32 1, i32 0, i32 1, i32 2>
  %i.amk = fmul reassoc nsz arcp contract afn <4 x float> %i.amj, %i.dj
  %i.aml = shufflevector <4 x float> %.sroa.0404.1, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 2, i32 2, i32 2, i32 7>
  %i.amm = fmul reassoc nsz arcp contract afn <4 x float> %i.aml, %i.do ; 2 uses
  %i.amn = shufflevector <4 x float> %.sroa.0404.1, <4 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1> ; 2 uses
  %i.amo = shufflevector <4 x float> %i.gf, <4 x float> %.sroa.0404.1, <4 x i32> <i32 poison, i32 poison, i32 0, i32 4>
  %i.amp = shufflevector <4 x float> %i.gg, <4 x float> %i.amo, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.amq = fmul reassoc nsz arcp contract afn <4 x float> %i.amn, %i.amp
  %i.amr = fadd reassoc nsz arcp contract afn <4 x float> %i.amn, %i.amp
  %i.ams = shufflevector <4 x float> %i.amq, <4 x float> %i.amr, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.amt = fadd reassoc nsz arcp contract afn <4 x float> %i.ams, %i.amk ; 2 uses
  %i.amu = fadd reassoc nsz arcp contract afn <4 x float> %i.amt, %i.amm
  %i.amv = fmul reassoc nsz arcp contract afn <4 x float> %i.amt, %i.amm
  %i.amw = shufflevector <4 x float> %i.amu, <4 x float> %i.amv, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  br i1 %i.ep, label %bb.z, label %bb.ad

bb.z:                                             ; preds = %bb.y
  %i.amx = lshr exact i64 %.0292605, 2            ; 2 uses
  %i.amy = udiv i64 %i.amx, %i.fd                 ; 2 uses
  %i.amz = urem i64 %i.amx, %i.fd                 ; 2 uses
  %i.ana = urem i64 %i.amy, %i.eq
  %i.anb = urem i64 %i.amy, %i.er
  %i.anc = icmp samesign ult i64 %i.ana, %i.anb
  %i.and = urem i64 %i.amz, %i.eq
  %i.ane = urem i64 %i.amz, %i.er
  %i.anf = icmp samesign ult i64 %i.and, %i.ane   ; 6 uses
  br i1 %i.anc, label %bb.aa, label %bb.ab

bb.aa:                                            ; preds = %bb.z
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v = select i1 %i.anf, i64 216, i64 200
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v = select i1 %i.anf, i64 212, i64 196
  %.755 = select i1 %i.anf, ptr %i.gc, ptr %i.gd
  br label %bb.ac

bb.ab:                                            ; preds = %bb.z
  %.sroa.8.0..sroa_idx618..sroa.8.0..sroa_idx620.v = select i1 %i.anf, i64 200, i64 216
  %.sroa.7.0..sroa_idx612..sroa.7.0..sroa_idx614.v = select i1 %i.anf, i64 196, i64 212
  %.756 = select i1 %i.anf, ptr %i.gd, ptr %i.gc
  br label %bb.ac

bb.ac:                                            ; preds = %bb.ab, %bb.aa
  %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v.pn = phi i64 [ %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v, %bb.aa ], [ %.sroa.8.0..sroa_idx618..sroa.8.0..sroa_idx620.v, %bb.ab ]
  %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v.pn = phi i64 [ %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v, %bb.aa ], [ %.sroa.7.0..sroa_idx612..sroa.7.0..sroa_idx614.v, %bb.ab ]
  %.sroa.0.0.in = phi ptr [ %.755, %bb.aa ], [ %.756, %bb.ab ]
  %.sroa.7.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.7.0..sroa_idx..sroa.7.0..sroa_idx610.v.pn
  %.sroa.8.0.in = getelementptr inbounds nuw i8, ptr %i.c, i64 %.sroa.8.0..sroa_idx..sroa.8.0..sroa_idx616.v.pn
  %.sroa.0.0 = load float, ptr %.sroa.0.0.in, align 4, !tbaa !14 ; 2 uses
  %.sroa.7.0 = load float, ptr %.sroa.7.0.in, align 4, !tbaa !14 ; 2 uses
  %.sroa.8.0 = load float, ptr %.sroa.8.0.in, align 4, !tbaa !14 ; 2 uses
  %i.ang = load i32, ptr %i.ge, align 4, !tbaa !167
  %i.anh = zext i32 %i.ang to i64
  %i.ani = getelementptr inbounds nuw [4 x i8], ptr %i.a, i64 %i.anh
  %i.anj = load float, ptr %i.ani, align 4, !tbaa !14 ; 3 uses
  %i.ank = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.amw, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0628.0.vec.extract = extractelement <4 x float> %i.ank, i64 0
  %i.anl = fsub reassoc nsz arcp contract afn float %.sroa.0628.0.vec.extract, %.sroa.0.0
  %i.anm = fmul reassoc nsz arcp contract afn float %i.anl, %i.anj
  %i.ann = fadd reassoc nsz arcp contract afn float %i.anm, %.sroa.0.0
  %.sroa.0628.4.vec.extract = extractelement <4 x float> %i.ank, i64 1
  %i.ano = fsub reassoc nsz arcp contract afn float %.sroa.0628.4.vec.extract, %.sroa.7.0
  %i.anp = fmul reassoc nsz arcp contract afn float %i.ano, %i.anj
  %i.anq = fadd reassoc nsz arcp contract afn float %i.anp, %.sroa.7.0
  %.sroa.0628.8.vec.extract = extractelement <4 x float> %i.ank, i64 2
  %i.anr = fsub reassoc nsz arcp contract afn float %.sroa.0628.8.vec.extract, %.sroa.8.0
  %i.ans = fmul reassoc nsz arcp contract afn float %i.anr, %i.anj
  %i.ant = fadd reassoc nsz arcp contract afn float %i.ans, %.sroa.8.0
  %i.anu = insertelement <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, float %i.ann, i64 0
  %i.anv = insertelement <4 x float> %i.anu, float %i.anq, i64 1
  %.sroa.0628.12.vec.insert642 = insertelement <4 x float> %i.anv, float %i.ant, i64 2
  br label %bb.ae

bb.ad:                                            ; preds = %bb.y
  %i.anw = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.amw, <4 x float> zeroinitializer)
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  %.sroa.0628.1 = phi nsz <4 x float> [ %.sroa.0628.12.vec.insert642, %bb.ac ], [ %i.anw, %bb.ad ]
  %i.anx = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %.0292605
  store <4 x float> %.sroa.0628.1, ptr %i.anx, align 16, !tbaa !168, !alias.scope !169, !nontemporal !172
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  %i.any = add nuw i64 %.0292605, 4               ; 2 uses
  %i.anz = icmp ult i64 %i.any, %i.ff
  br i1 %i.anz, label %bb.f, label %._crit_edge

bb.af:                                            ; preds = %bb.a, %._crit_edge
  ret void
}

declare ptr @dt_ioppr_get_pipe_current_profile_info(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.pow.f32(float, float) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fabs.f32(float) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.atan2.f32(float, float) #11

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.sqrt.f32(float) #10

; Function Attrs: nounwind uwtable
define void @commit_params(ptr noundef %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readnone captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #8 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.b = load ptr, ptr %i.a, align 16, !tbaa !34  ; 58 uses
  %i.c = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.d = fcmp reassoc nsz arcp contract afn ogt float %i.c, 1.000000e+00
  br i1 %i.d, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  %i.f = fcmp reassoc nsz arcp contract afn olt float %i.e, 0.000000e+00
  br i1 %i.f, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = tail call reassoc nsz arcp contract afn float @dt_conf_get_float(ptr noundef nonnull @.str.11) #19
  br label %bb.d

end_hunk_1
begin_hunk_2_@commit_params:bb.a
  br label %.preheader253

.preheader253:                                    ; preds = %.preheader253.preheader, %bb.ac
  %.0187268 = phi i64 [ %i.ty, %bb.ac ], [ 0, %.preheader253.preheader ] ; 2 uses
  %i.qi = uitofp reassoc nsz arcp contract afn nneg i64 %.0187268 to float
  %i.qj = fmul reassoc nnan nsz arcp contract afn float %i.qi, f0x3C340B41 ; 3 uses
  %i.qk = fmul reassoc nsz arcp contract afn float %i.qj, %i.pz
  %i.ql = fmul reassoc nsz arcp contract afn float %i.qj, %i.qa
  %i.qm = fmul reassoc nsz arcp contract afn float %i.qj, %i.qb
  br label %.preheader252

iter.check:                                       ; preds = %bb.ac
  %i.qn = load ptr, ptr %i.pv, align 8, !tbaa !63 ; 14 uses
  %scevgep300 = getelementptr nuw i8, ptr %i.qn, i64 8
  %scevgep301 = getelementptr i8, ptr %i.qn, i64 2040
  %scevgep302 = getelementptr i8, ptr %i.py, i64 2048
  %bound0303 = icmp ult ptr %scevgep300, %scevgep302
  %bound1304 = icmp ult ptr %i.py, %scevgep301
  %found.conflict305 = and i1 %bound0303, %bound1304
  br i1 %found.conflict305, label %vec.epilog.scalar.ph.preheader.new, label %vector.body308

vec.epilog.scalar.ph.preheader.new:               ; preds = %vec.epilog.vector.body, %iter.check
  %.0269.ph = phi i64 [ 2, %iter.check ], [ 506, %vec.epilog.vector.body ]
  br label %vec.epilog.scalar.ph

vector.body308:                                   ; preds = %iter.check, %vector.body308
  %index309 = phi i64 [ %index.next330, %vector.body308 ], [ 0, %iter.check ] ; 3 uses
  %i.qo = or disjoint i64 %index309, 2            ; 2 uses
  %i.qp = getelementptr [4 x i8], ptr %i.py, i64 %i.qo ; 16 uses
  %i.qq = getelementptr i8, ptr %i.qp, i64 -8
  %i.qr = getelementptr i8, ptr %i.qp, i64 24
  %i.qs = getelementptr i8, ptr %i.qp, i64 56
  %i.qt = getelementptr i8, ptr %i.qp, i64 88
  %wide.load310 = load <8 x float>, ptr %i.qq, align 64, !tbaa !14, !alias.scope !198
  %wide.load311 = load <8 x float>, ptr %i.qr, align 32, !tbaa !14, !alias.scope !198
  %wide.load312 = load <8 x float>, ptr %i.qs, align 64, !tbaa !14, !alias.scope !198
  %wide.load313 = load <8 x float>, ptr %i.qt, align 32, !tbaa !14, !alias.scope !198
  %i.qu = getelementptr i8, ptr %i.qp, i64 -4
  %i.qv = getelementptr i8, ptr %i.qp, i64 28
  %i.qw = getelementptr i8, ptr %i.qp, i64 60
  %i.qx = getelementptr i8, ptr %i.qp, i64 92
  %wide.load314 = load <8 x float>, ptr %i.qu, align 4, !tbaa !14, !alias.scope !198
  %wide.load315 = load <8 x float>, ptr %i.qv, align 4, !tbaa !14, !alias.scope !198
  %wide.load316 = load <8 x float>, ptr %i.qw, align 4, !tbaa !14, !alias.scope !198
  %wide.load317 = load <8 x float>, ptr %i.qx, align 4, !tbaa !14, !alias.scope !198
  %i.qy = fadd reassoc nsz arcp contract afn <8 x float> %wide.load314, %wide.load310
  %i.qz = fadd reassoc nsz arcp contract afn <8 x float> %wide.load315, %wide.load311
  %i.ra = fadd reassoc nsz arcp contract afn <8 x float> %wide.load316, %wide.load312
  %i.rb = fadd reassoc nsz arcp contract afn <8 x float> %wide.load317, %wide.load313
  %i.rc = getelementptr i8, ptr %i.qp, i64 32
  %i.rd = getelementptr i8, ptr %i.qp, i64 64
  %i.re = getelementptr i8, ptr %i.qp, i64 96
  %wide.load318 = load <8 x float>, ptr %i.qp, align 8, !tbaa !14, !alias.scope !198
  %wide.load319 = load <8 x float>, ptr %i.rc, align 8, !tbaa !14, !alias.scope !198
  %wide.load320 = load <8 x float>, ptr %i.rd, align 8, !tbaa !14, !alias.scope !198
  %wide.load321 = load <8 x float>, ptr %i.re, align 8, !tbaa !14, !alias.scope !198
  %i.rf = fadd reassoc nsz arcp contract afn <8 x float> %i.qy, %wide.load318
  %i.rg = fadd reassoc nsz arcp contract afn <8 x float> %i.qz, %wide.load319
  %i.rh = fadd reassoc nsz arcp contract afn <8 x float> %i.ra, %wide.load320
  %i.ri = fadd reassoc nsz arcp contract afn <8 x float> %i.rb, %wide.load321
  %i.rj = getelementptr inbounds nuw [4 x i8], ptr %i.py, i64 %index309 ; 4 uses
  %i.rk = getelementptr inbounds nuw i8, ptr %i.rj, i64 12
  %i.rl = getelementptr inbounds nuw i8, ptr %i.rj, i64 44
  %i.rm = getelementptr inbounds nuw i8, ptr %i.rj, i64 76
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rj, i64 108
  %wide.load322 = load <8 x float>, ptr %i.rk, align 4, !tbaa !14, !alias.scope !198
  %wide.load323 = load <8 x float>, ptr %i.rl, align 4, !tbaa !14, !alias.scope !198
  %wide.load324 = load <8 x float>, ptr %i.rm, align 4, !tbaa !14, !alias.scope !198
  %wide.load325 = load <8 x float>, ptr %i.rn, align 4, !tbaa !14, !alias.scope !198
  %i.ro = fadd reassoc nsz arcp contract afn <8 x float> %i.rf, %wide.load322
  %i.rp = fadd reassoc nsz arcp contract afn <8 x float> %i.rg, %wide.load323
  %i.rq = fadd reassoc nsz arcp contract afn <8 x float> %i.rh, %wide.load324
  %i.rr = fadd reassoc nsz arcp contract afn <8 x float> %i.ri, %wide.load325
  %i.rs = getelementptr inbounds nuw i8, ptr %i.qp, i64 8
  %i.rt = getelementptr inbounds nuw i8, ptr %i.qp, i64 40
  %i.ru = getelementptr inbounds nuw i8, ptr %i.qp, i64 72
  %i.rv = getelementptr inbounds nuw i8, ptr %i.qp, i64 104
  %wide.load326 = load <8 x float>, ptr %i.rs, align 16, !tbaa !14, !alias.scope !198
  %wide.load327 = load <8 x float>, ptr %i.rt, align 16, !tbaa !14, !alias.scope !198
  %wide.load328 = load <8 x float>, ptr %i.ru, align 16, !tbaa !14, !alias.scope !198
  %wide.load329 = load <8 x float>, ptr %i.rv, align 16, !tbaa !14, !alias.scope !198
  %i.rw = fadd reassoc nsz arcp contract afn <8 x float> %i.ro, %wide.load326
  %i.rx = fadd reassoc nsz arcp contract afn <8 x float> %i.rp, %wide.load327
  %i.ry = fadd reassoc nsz arcp contract afn <8 x float> %i.rq, %wide.load328
  %i.rz = fadd reassoc nsz arcp contract afn <8 x float> %i.rr, %wide.load329
  %i.sa = fmul reassoc nsz arcp contract afn <8 x float> %i.rw, splat (float 2.000000e-01)
  %i.sb = fmul reassoc nsz arcp contract afn <8 x float> %i.rx, splat (float 2.000000e-01)
  %i.sc = fmul reassoc nsz arcp contract afn <8 x float> %i.ry, splat (float 2.000000e-01)
  %i.sd = fmul reassoc nsz arcp contract afn <8 x float> %i.rz, splat (float 2.000000e-01)
  %i.se = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.qo ; 4 uses
  %i.sf = getelementptr inbounds nuw i8, ptr %i.se, i64 32
  %i.sg = getelementptr inbounds nuw i8, ptr %i.se, i64 64
  %i.sh = getelementptr inbounds nuw i8, ptr %i.se, i64 96
  store <8 x float> %i.sa, ptr %i.se, align 4, !tbaa !14, !alias.scope !201, !noalias !198
  store <8 x float> %i.sb, ptr %i.sf, align 4, !tbaa !14, !alias.scope !201, !noalias !198
  store <8 x float> %i.sc, ptr %i.sg, align 4, !tbaa !14, !alias.scope !201, !noalias !198
  store <8 x float> %i.sd, ptr %i.sh, align 4, !tbaa !14, !alias.scope !201, !noalias !198
  %index.next330 = add nuw i64 %index309, 32      ; 2 uses
  %i.si = icmp eq i64 %index.next330, 480
  br i1 %i.si, label %vec.epilog.vector.body, label %vector.body308, !llvm.loop !203

vec.epilog.vector.body:                           ; preds = %vector.body308
  %i.sj = getelementptr i8, ptr %i.py, i64 1928
  %i.sk = getelementptr i8, ptr %i.py, i64 1920
  %wide.load333 = load <8 x float>, ptr %i.sk, align 64, !tbaa !14, !alias.scope !198
  %i.sl = getelementptr i8, ptr %i.py, i64 1924
  %wide.load334 = load <8 x float>, ptr %i.sl, align 4, !tbaa !14, !alias.scope !198
  %i.sm = fadd reassoc nsz arcp contract afn <8 x float> %wide.load334, %wide.load333
  %wide.load335 = load <8 x float>, ptr %i.sj, align 8, !tbaa !14, !alias.scope !198
  %i.sn = fadd reassoc nsz arcp contract afn <8 x float> %i.sm, %wide.load335
  %i.so = getelementptr inbounds nuw i8, ptr %i.py, i64 1932
  %wide.load336 = load <8 x float>, ptr %i.so, align 4, !tbaa !14, !alias.scope !198
  %i.sp = fadd reassoc nsz arcp contract afn <8 x float> %i.sn, %wide.load336
  %i.sq = getelementptr i8, ptr %i.py, i64 1936
  %wide.load337 = load <8 x float>, ptr %i.sq, align 16, !tbaa !14, !alias.scope !198
  %i.sr = fadd reassoc nsz arcp contract afn <8 x float> %i.sp, %wide.load337
  %i.ss = fmul reassoc nsz arcp contract afn <8 x float> %i.sr, splat (float 2.000000e-01)
  %i.st = getelementptr inbounds nuw i8, ptr %i.qn, i64 1928
  store <8 x float> %i.ss, ptr %i.st, align 4, !tbaa !14, !alias.scope !201, !noalias !198
  %i.su = getelementptr i8, ptr %i.py, i64 1960
  %i.sv = getelementptr i8, ptr %i.py, i64 1952
  %wide.load333.1 = load <8 x float>, ptr %i.sv, align 32, !tbaa !14, !alias.scope !198
  %i.sw = getelementptr i8, ptr %i.py, i64 1956
  %wide.load334.1 = load <8 x float>, ptr %i.sw, align 4, !tbaa !14, !alias.scope !198
  %i.sx = fadd reassoc nsz arcp contract afn <8 x float> %wide.load334.1, %wide.load333.1
  %wide.load335.1 = load <8 x float>, ptr %i.su, align 8, !tbaa !14, !alias.scope !198
  %i.sy = fadd reassoc nsz arcp contract afn <8 x float> %i.sx, %wide.load335.1
  %i.sz = getelementptr inbounds nuw i8, ptr %i.py, i64 1964
  %wide.load336.1 = load <8 x float>, ptr %i.sz, align 4, !tbaa !14, !alias.scope !198
  %i.ta = fadd reassoc nsz arcp contract afn <8 x float> %i.sy, %wide.load336.1
  %i.tb = getelementptr i8, ptr %i.py, i64 1968
  %wide.load337.1 = load <8 x float>, ptr %i.tb, align 16, !tbaa !14, !alias.scope !198
  %i.tc = fadd reassoc nsz arcp contract afn <8 x float> %i.ta, %wide.load337.1
  %i.td = fmul reassoc nsz arcp contract afn <8 x float> %i.tc, splat (float 2.000000e-01)
  %i.te = getelementptr inbounds nuw i8, ptr %i.qn, i64 1960
  store <8 x float> %i.td, ptr %i.te, align 4, !tbaa !14, !alias.scope !201, !noalias !198
  %i.tf = getelementptr i8, ptr %i.py, i64 1992
  %i.tg = getelementptr i8, ptr %i.py, i64 1984
  %wide.load333.2 = load <8 x float>, ptr %i.tg, align 64, !tbaa !14, !alias.scope !198
  %i.th = getelementptr i8, ptr %i.py, i64 1988
  %wide.load334.2 = load <8 x float>, ptr %i.th, align 4, !tbaa !14, !alias.scope !198
  %i.ti = fadd reassoc nsz arcp contract afn <8 x float> %wide.load334.2, %wide.load333.2
  %wide.load335.2 = load <8 x float>, ptr %i.tf, align 8, !tbaa !14, !alias.scope !198
  %i.tj = fadd reassoc nsz arcp contract afn <8 x float> %i.ti, %wide.load335.2
  %i.tk = getelementptr inbounds nuw i8, ptr %i.py, i64 1996
  %wide.load336.2 = load <8 x float>, ptr %i.tk, align 4, !tbaa !14, !alias.scope !198
  %i.tl = fadd reassoc nsz arcp contract afn <8 x float> %i.tj, %wide.load336.2
  %i.tm = getelementptr i8, ptr %i.py, i64 2000
  %wide.load337.2 = load <8 x float>, ptr %i.tm, align 16, !tbaa !14, !alias.scope !198
  %i.tn = fadd reassoc nsz arcp contract afn <8 x float> %i.tl, %wide.load337.2
  %i.to = fmul reassoc nsz arcp contract afn <8 x float> %i.tn, splat (float 2.000000e-01)
  %i.tp = getelementptr inbounds nuw i8, ptr %i.qn, i64 1992
  store <8 x float> %i.to, ptr %i.tp, align 4, !tbaa !14, !alias.scope !201, !noalias !198
  br label %vec.epilog.scalar.ph.preheader.new

.preheader252:                                    ; preds = %.preheader253, %bb.ad
  %.0188267 = phi i64 [ 0, %.preheader253 ], [ %i.tz, %bb.ad ] ; 2 uses
  %i.tq = uitofp reassoc nsz arcp contract afn nneg i64 %.0188267 to float
  %i.tr = fmul reassoc nnan nsz arcp contract afn float %i.tq, f0x3C340B41 ; 3 uses
  %i.ts = fmul reassoc nsz arcp contract afn float %i.tr, %i.qc
  %i.tt = fadd reassoc nsz arcp contract afn float %i.ts, %i.qk
  %i.tu = fmul reassoc nsz arcp contract afn float %i.tr, %i.qd
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tu, %i.ql
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tr, %i.qe
  %i.tx = fadd reassoc nsz arcp contract afn float %i.tw, %i.qm
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ad
  %i.ty = add nuw nsw i64 %.0187268, 1            ; 2 uses
  %exitcond271.not = icmp eq i64 %i.ty, 92
  br i1 %exitcond271.not, label %iter.check, label %.preheader253

bb.ad:                                            ; preds = %bb.ae
  %i.tz = add nuw nsw i64 %.0188267, 1            ; 2 uses
  %exitcond270.not = icmp eq i64 %i.tz, 92
  br i1 %exitcond270.not, label %bb.ac, label %.preheader252

bb.ae:                                            ; preds = %.preheader252, %bb.ae
  %.0189266 = phi i64 [ 0, %.preheader252 ], [ %i.xf, %bb.ae ] ; 2 uses
  %i.ua = uitofp reassoc nsz arcp contract afn nneg i64 %.0189266 to float
  %i.ub = fmul reassoc nnan nsz arcp contract afn float %i.ua, f0x3C340B41 ; 3 uses
  %i.uc = fmul reassoc nsz arcp contract afn float %i.ub, %i.qh
  %i.ud = fadd reassoc nsz arcp contract afn float %i.tt, %i.uc ; 2 uses
  %i.ue = fmul reassoc nsz arcp contract afn float %i.ub, %i.qf
  %i.uf = fadd reassoc nsz arcp contract afn float %i.tv, %i.ue
  %i.ug = fmul reassoc nsz arcp contract afn float %i.ub, %i.qg
  %i.uh = fadd reassoc nsz arcp contract afn float %i.tx, %i.ug ; 3 uses
  %i.ui = fmul reassoc nsz arcp contract afn float %i.ud, 1.150000e+00
  %i.uj = fmul reassoc nsz arcp contract afn float %i.uh, f0x3E199998
  %i.uk = fsub reassoc nsz arcp contract afn float %i.ui, %i.uj ; 2 uses
  %i.ul = fmul reassoc nsz arcp contract afn float %i.uf, 6.600000e-01
  %i.um = fmul reassoc nsz arcp contract afn float %i.ud, f0x3EAE147A
  %i.un = fadd reassoc nsz arcp contract afn float %i.ul, %i.um ; 2 uses
  %.reass259 = fmul reassoc nsz arcp contract afn float %i.uk, f0x382DF9B4
  %.reass = fmul reassoc nsz arcp contract afn float %i.un, f0x387344EC
  %.reass258 = fmul reassoc nsz arcp contract afn float %i.uh, 1.464800e-06
  %i.uo = fadd reassoc nsz arcp contract afn float %.reass259, %.reass258
  %i.up = fadd reassoc nsz arcp contract afn float %i.uo, %.reass
  %i.uq = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.up, float 0.000000e+00)
  %i.ur = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.uq, float f0x3E232000) ; 2 uses
  %i.us = fmul reassoc nsz arcp contract afn float %i.ur, f0x4196D000
  %i.ut = fadd reassoc nsz arcp contract afn float %i.us, f0x3F560000
  %i.uu = fmul reassoc nsz arcp contract afn float %i.ur, 1.868750e+01
  %i.uv = fadd reassoc nsz arcp contract afn float %i.uu, 1.000000e+00
  %i.uw = fdiv reassoc nsz arcp contract afn float %i.ut, %i.uv
  %i.ux = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.uw, float f0x430608CD) ; 3 uses
  %i.uy = fmul reassoc nsz arcp contract afn float %i.ux, 3.524000e+00
  %i.uz = fmul reassoc nsz arcp contract afn float %i.ux, 1.990760e-01
  %i.va = insertelement <2 x float> poison, float %i.uk, i64 0
  %i.vb = shufflevector <2 x float> %i.va, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vc = fmul reassoc nsz arcp contract afn <2 x float> %i.vb, <float -2.015100e-05, float -1.660080e-06>
  %i.vd = insertelement <2 x float> poison, float %i.un, i64 0
  %i.ve = shufflevector <2 x float> %i.vd, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vf = fmul reassoc nsz arcp contract afn <2 x float> %i.ve, <float f0x38EB0462, float 2.648000e-05>
  %i.vg = insertelement <2 x float> poison, float %i.uh, i64 0
  %i.vh = shufflevector <2 x float> %i.vg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.vi = fmul reassoc nsz arcp contract afn <2 x float> %i.vh, <float 5.310080e-06, float f0x388C30BE>
  %i.vj = fadd reassoc nsz arcp contract afn <2 x float> %i.vc, %i.vi
  %i.vk = fadd reassoc nsz arcp contract afn <2 x float> %i.vj, %i.vf
  %i.vl = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %i.vk, <2 x float> zeroinitializer)
  %i.vm = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vl, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %i.vn = fmul reassoc nsz arcp contract afn <2 x float> %i.vm, splat (float f0x4196D000)
  %i.vo = fadd reassoc nsz arcp contract afn <2 x float> %i.vn, splat (float f0x3F560000)
  %i.vp = fmul reassoc nsz arcp contract afn <2 x float> %i.vm, splat (float 1.868750e+01)
  %i.vq = fadd reassoc nsz arcp contract afn <2 x float> %i.vp, splat (float 1.000000e+00)
  %i.vr = fdiv reassoc nsz arcp contract afn <2 x float> %i.vo, %i.vq
  %i.vs = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %i.vr, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %i.vt = extractelement <2 x float> %i.vs, i64 0 ; 2 uses
  %i.vu = fadd reassoc nsz arcp contract afn float %i.vt, %i.ux
  %i.vv = fmul reassoc nsz arcp contract afn float %i.vu, 5.000000e-01
  %i.vw = extractelement <2 x float> %i.vs, i64 1 ; 2 uses
  %i.vx = fmul reassoc nsz arcp contract afn float %i.vw, 0.000000e+00
  %i.vy = fadd reassoc nsz arcp contract afn float %i.vv, %i.vx ; 2 uses
  %i.vz = fmul reassoc nsz arcp contract afn float %i.vt, f0x40822279
  %i.wa = fsub reassoc nsz arcp contract afn float %i.uy, %i.vz
  %i.wb = fmul reassoc nsz arcp contract afn float %i.vw, 5.427080e-01
  %i.wc = fadd reassoc nsz arcp contract afn float %i.wa, %i.wb ; 2 uses
  %i.wd = fmul reassoc nsz arcp contract afn <2 x float> %i.vs, <float f0x3F8C63E9, float f0xBFA5DF3B> ; 2 uses
  %i.we = extractelement <2 x float> %i.wd, i64 0
  %i.wf = fadd reassoc nsz arcp contract afn float %i.we, %i.uz
  %i.wg = extractelement <2 x float> %i.wd, i64 1
  %i.wh = fadd reassoc nsz arcp contract afn float %i.wf, %i.wg ; 2 uses
  %i.wi = fmul reassoc nsz arcp contract afn float %i.vy, 4.400000e-01
  %i.wj = fmul reassoc nsz arcp contract afn float %i.vy, 5.600000e-01
  %i.wk = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.wj
  %i.wl = fdiv reassoc nsz arcp contract afn float %i.wi, %i.wk
  %i.wm = fadd reassoc nsz arcp contract afn float %i.wl, -1.629550e-11
  %i.wn = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.wm, float 0.000000e+00) ; 2 uses
  %i.wo = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.wh, float noundef %i.wc) #25
  %i.wp = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.wh, float %i.wc)
  %i.wq = fcmp reassoc nsz arcp contract afn ogt float %i.wn, 0.000000e+00
  %i.wr = fdiv reassoc nsz arcp contract afn float %i.wo, %i.wn
  %i.ws = select reassoc nsz arcp contract afn i1 %i.wq, float %i.wr, float 0.000000e+00
  %i.wt = fmul reassoc nsz arcp contract afn float %i.wp, f0x42A2A806
  %i.wu = fadd reassoc nsz arcp contract afn float %i.wt, 2.555000e+02
  %i.wv = tail call reassoc nsz arcp contract afn float @llvm.round.f32(float %i.wu)
  %i.ww = fptosi float %i.wv to i32               ; 2 uses
  %i.wx = lshr i32 %i.ww, 22
  %i.wy = and i32 %i.wx, 512
  %i.wz = add nsw i32 %i.wy, %i.ww                ; 2 uses
  %.inv = icmp slt i32 %i.wz, 512
  %.neg = select i1 %.inv, i32 0, i32 -512
  %i.xa = add i32 %.neg, %i.wz
  %i.xb = sext i32 %i.xa to i64
  %i.xc = getelementptr inbounds [4 x i8], ptr %i.py, i64 %i.xb ; 2 uses
  %i.xd = load float, ptr %i.xc, align 4, !tbaa !14
  %i.xe = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xd, float %i.ws)
  store float %i.xe, ptr %i.xc, align 4, !tbaa !14
  %i.xf = add nuw nsw i64 %.0189266, 1            ; 2 uses
  %exitcond.not = icmp eq i64 %i.xf, 92
  br i1 %exitcond.not, label %bb.ad, label %bb.ae

.loopexit:                                        ; preds = %vec.epilog.scalar.ph
  %i.xg = getelementptr inbounds nuw i8, ptr %i.py, i64 2040 ; 3 uses
  %i.xh = load float, ptr %i.xg, align 8, !tbaa !14
  %i.xi = getelementptr inbounds nuw i8, ptr %i.py, i64 2044 ; 4 uses
  %i.xj = load float, ptr %i.xi, align 4, !tbaa !14
  %i.xk = fadd reassoc nsz arcp contract afn float %i.xj, %i.xh
  %i.xl = load float, ptr %i.py, align 64, !tbaa !14
  %i.xm = fadd reassoc nsz arcp contract afn float %i.xk, %i.xl
  %i.xn = getelementptr inbounds nuw i8, ptr %i.py, i64 4 ; 3 uses
  %i.xo = load float, ptr %i.xn, align 4, !tbaa !14
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xm, %i.xo
  %i.xq = getelementptr inbounds nuw i8, ptr %i.py, i64 8 ; 2 uses
  %i.xr = load float, ptr %i.xq, align 8, !tbaa !14
  %i.xs = fadd reassoc nsz arcp contract afn float %i.xp, %i.xr
  %i.xt = fmul reassoc nsz arcp contract afn float %i.xs, 2.000000e-01
  store float %i.xt, ptr %i.qn, align 4, !tbaa !14
  %i.xu = load float, ptr %i.xi, align 4, !tbaa !14
  %i.xv = load float, ptr %i.py, align 64, !tbaa !14
  %i.xw = fadd reassoc nsz arcp contract afn float %i.xv, %i.xu
  %i.xx = load float, ptr %i.xn, align 4, !tbaa !14
  %i.xy = fadd reassoc nsz arcp contract afn float %i.xw, %i.xx
  %i.xz = load float, ptr %i.xq, align 8, !tbaa !14
  %i.ya = fadd reassoc nsz arcp contract afn float %i.xy, %i.xz
  %i.yb = getelementptr inbounds nuw i8, ptr %i.py, i64 12
  %i.yc = load float, ptr %i.yb, align 4, !tbaa !14
  %i.yd = fadd reassoc nsz arcp contract afn float %i.ya, %i.yc
  %i.ye = fmul reassoc nsz arcp contract afn float %i.yd, 2.000000e-01
  %i.yf = getelementptr inbounds nuw i8, ptr %i.qn, i64 4
  store float %i.ye, ptr %i.yf, align 4, !tbaa !14
  %i.yg = getelementptr inbounds nuw i8, ptr %i.py, i64 2036 ; 2 uses
  %i.yh = load float, ptr %i.yg, align 4, !tbaa !14
  %i.yi = load float, ptr %i.xg, align 8, !tbaa !14
  %i.yj = fadd reassoc nsz arcp contract afn float %i.yi, %i.yh
  %i.yk = load float, ptr %i.xi, align 4, !tbaa !14
  %i.yl = fadd reassoc nsz arcp contract afn float %i.yj, %i.yk
  %i.ym = load float, ptr %i.py, align 64, !tbaa !14
  %i.yn = fadd reassoc nsz arcp contract afn float %i.yl, %i.ym
  %i.yo = load float, ptr %i.xn, align 4, !tbaa !14
  %i.yp = fadd reassoc nsz arcp contract afn float %i.yn, %i.yo
  %i.yq = fmul reassoc nsz arcp contract afn float %i.yp, 2.000000e-01
  %i.yr = getelementptr inbounds nuw i8, ptr %i.qn, i64 2044
  store float %i.yq, ptr %i.yr, align 4, !tbaa !14
  %i.ys = getelementptr inbounds nuw i8, ptr %i.py, i64 2032
  %i.yt = load float, ptr %i.ys, align 16, !tbaa !14
  %i.yu = load float, ptr %i.yg, align 4, !tbaa !14
  %i.yv = fadd reassoc nsz arcp contract afn float %i.yu, %i.yt
  %i.yw = load float, ptr %i.xg, align 8, !tbaa !14
  %i.yx = fadd reassoc nsz arcp contract afn float %i.yv, %i.yw
  %i.yy = load float, ptr %i.xi, align 4, !tbaa !14
  %i.yz = fadd reassoc nsz arcp contract afn float %i.yx, %i.yy
  %i.za = load float, ptr %i.py, align 64, !tbaa !14
  %i.zb = fadd reassoc nsz arcp contract afn float %i.yz, %i.za
  %i.zc = fmul reassoc nsz arcp contract afn float %i.zb, 2.000000e-01
  %i.zd = getelementptr inbounds nuw i8, ptr %i.qn, i64 2040
  store float %i.zc, ptr %i.zd, align 4, !tbaa !14
  br label %.sink.split

vec.epilog.scalar.ph:                             ; preds = %vec.epilog.scalar.ph, %vec.epilog.scalar.ph.preheader.new
  %.0269 = phi i64 [ %.0269.ph, %vec.epilog.scalar.ph.preheader.new ], [ %i.aae, %vec.epilog.scalar.ph ] ; 6 uses
  %i.ze = getelementptr [4 x i8], ptr %i.py, i64 %.0269 ; 2 uses
  %i.zf = getelementptr i8, ptr %i.ze, i64 -8
  %i.zg = or disjoint i64 %.0269, 1               ; 2 uses
  %i.zh = load <4 x float>, ptr %i.zf, align 4, !tbaa !14
  %i.zi = getelementptr inbounds nuw i8, ptr %i.ze, i64 8
  %i.zj = load float, ptr %i.zi, align 4, !tbaa !14
  %op.rdx = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zj, <4 x float> %i.zh)
  %i.zk = fmul reassoc nsz arcp contract afn float %op.rdx, 2.000000e-01
  %i.zl = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %.0269
  store float %i.zk, ptr %i.zl, align 4, !tbaa !14
  %i.zm = getelementptr [4 x i8], ptr %i.py, i64 %i.zg ; 2 uses
  %i.zn = getelementptr i8, ptr %i.zm, i64 -8
  %i.zo = add nuw nsw i64 %.0269, 2               ; 2 uses
  %i.zp = load <4 x float>, ptr %i.zn, align 4, !tbaa !14
  %i.zq = getelementptr inbounds nuw i8, ptr %i.zm, i64 8
  %i.zr = load float, ptr %i.zq, align 4, !tbaa !14
  %op.rdx.1 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zr, <4 x float> %i.zp)
  %i.zs = fmul reassoc nsz arcp contract afn float %op.rdx.1, 2.000000e-01
  %i.zt = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.zg
  store float %i.zs, ptr %i.zt, align 4, !tbaa !14
  %i.zu = getelementptr [4 x i8], ptr %i.py, i64 %i.zo ; 2 uses
  %i.zv = getelementptr i8, ptr %i.zu, i64 -8
  %i.zw = add nuw nsw i64 %.0269, 3               ; 2 uses
  %i.zx = load <4 x float>, ptr %i.zv, align 4, !tbaa !14
  %i.zy = getelementptr inbounds nuw i8, ptr %i.zu, i64 8
  %i.zz = load float, ptr %i.zy, align 4, !tbaa !14
  %op.rdx.2 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.zz, <4 x float> %i.zx)
  %i.aaa = fmul reassoc nsz arcp contract afn float %op.rdx.2, 2.000000e-01
  %i.aab = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.zo
  store float %i.aaa, ptr %i.aab, align 4, !tbaa !14
  %i.aac = getelementptr [4 x i8], ptr %i.py, i64 %i.zw ; 2 uses
  %i.aad = getelementptr i8, ptr %i.aac, i64 -8
  %i.aae = add nuw nsw i64 %.0269, 4              ; 2 uses
  %i.aaf = load <4 x float>, ptr %i.aad, align 4, !tbaa !14
  %i.aag = getelementptr inbounds nuw i8, ptr %i.aac, i64 8
  %i.aah = load float, ptr %i.aag, align 4, !tbaa !14
  %op.rdx.3 = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v4f32(float %i.aah, <4 x float> %i.aaf)
  %i.aai = fmul reassoc nsz arcp contract afn float %op.rdx.3, 2.000000e-01
  %i.aaj = getelementptr inbounds nuw [4 x i8], ptr %i.qn, i64 %i.zw
  store float %i.aai, ptr %i.aaj, align 4, !tbaa !14
  %exitcond272.not.3 = icmp eq i64 %i.aae, 510
  br i1 %exitcond272.not.3, label %.loopexit, label %vec.epilog.scalar.ph, !llvm.loop !206

bb.af:                                            ; preds = %bb.z
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(2048) %i.pw, i8 0, i64 2048, i1 false), !tbaa !14
  %i.aak = tail call ptr @dt_alloc_aligned(i64 noundef 2048) #19 ; 13 uses
  call void @llvm.assume(i1 true) [ "align"(ptr %i.aak, i64 64) ]
  %.not.i.i = icmp eq ptr %i.aak, null
  br i1 %.not.i.i, label %dt_calloc_align_float.exit.i, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 64 dereferenceable(2048) %i.aak, i8 0, i64 2048, i1 false)
  br label %dt_calloc_align_float.exit.i

dt_calloc_align_float.exit.i:                     ; preds = %bb.ag, %bb.af
  %i.aal = extractelement <4 x float> %i.pu, i64 2
  %i.aam = fmul reassoc nsz arcp contract afn float %i.aal, 0.000000e+00 ; 2 uses
  %i.aan = fmul reassoc nsz arcp contract afn <8 x float> %i.ph, zeroinitializer ; 3 uses
  %i.aao = shufflevector <8 x float> %i.ph, <8 x float> poison, <8 x i32> <i32 3, i32 4, i32 5, i32 0, i32 1, i32 2, i32 3, i32 1>
  %i.aap = fmul reassoc nsz arcp contract afn <8 x float> %i.aao, <float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 1.000000e+00, float 0.000000e+00, float 0.000000e+00>
  %i.aaq = fadd reassoc nsz arcp contract afn <8 x float> %i.aan, %i.aap ; 5 uses
  %i.aar = extractelement <8 x float> %i.aaq, i64 3
  %i.aas = fadd reassoc nsz arcp contract afn float %i.aar, %i.aam
  %.sroa.0116.0.vec.insert.i = insertelement <4 x float> <float poison, float poison, float poison, float undef>, float %i.aas, i64 0
  %i.aat = extractelement <8 x float> %i.aaq, i64 4
  %i.aau = extractelement <8 x float> %i.aaq, i64 5
  %i.aav = extractelement <8 x float> %i.aaq, i64 0
  %i.aaw = fadd reassoc nsz arcp contract afn float %i.aav, %i.aam
  %.sroa.0114.0.vec.insert.i = insertelement <4 x float> <float poison, float poison, float poison, float undef>, float %i.aaw, i64 0
  %i.aax = fmul reassoc nsz arcp contract afn <4 x float> %i.pu, <float 0.000000e+00, float 0.000000e+00, float 1.000000e+00, float 1.000000e+00> ; 3 uses
  %i.aay = extractelement <4 x float> %i.aax, i64 0
  %i.aaz = fadd reassoc nsz arcp contract afn float %i.aat, %i.aay
  %.sroa.0116.4.vec.insert.i = insertelement <4 x float> %.sroa.0116.0.vec.insert.i, float %i.aaz, i64 1
  %i.aba = extractelement <4 x float> %i.aax, i64 1
  %i.abb = fadd reassoc nsz arcp contract afn float %i.aau, %i.aba
  %.sroa.0116.8.vec.insert.i = insertelement <4 x float> %.sroa.0116.4.vec.insert.i, float %i.abb, i64 2
  %i.abc = shufflevector <8 x float> %i.aaq, <8 x float> poison, <4 x i32> <i32 1, i32 2, i32 6, i32 7>
  %i.abd = fadd reassoc nsz arcp contract afn <4 x float> %i.abc, %i.aax ; 2 uses
  %i.abe = shufflevector <4 x float> %.sroa.0114.0.vec.insert.i, <4 x float> %i.abd, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.abf = shufflevector <4 x float> %i.abd, <4 x float> poison, <4 x i32> <i32 2, i32 3, i32 poison, i32 poison>
  %shift = shufflevector <8 x float> %i.aan, <8 x float> poison, <8 x i32> <i32 poison, i32 poison, i32 5, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %foldExtExtBinop = fadd reassoc nsz arcp contract afn <8 x float> %shift, %i.aan
  %i.abg = extractelement <8 x float> %foldExtExtBinop, i64 2
  %i.abh = extractelement <4 x float> %i.pu, i64 1
  %i.abi = fadd reassoc nsz arcp contract afn float %i.abg, %i.abh
  %.sroa.0112.8.vec.insert.i = insertelement <4 x float> %i.abf, float %i.abi, i64 2
  %i.abj = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %.sroa.0116.8.vec.insert.i, <4 x float> zeroinitializer) ; 3 uses
  %.sroa.0.0.vec.extract.i.i = extractelement <4 x float> %i.abj, i64 0 ; 2 uses
  %.sroa.0.4.vec.extract4.i.i = extractelement <4 x float> %i.abj, i64 1 ; 2 uses
  %i.abk = fadd reassoc nsz arcp contract afn float %.sroa.0.0.vec.extract.i.i, %.sroa.0.4.vec.extract4.i.i
  %.sroa.0.8.vec.extract.i.i = extractelement <4 x float> %i.abj, i64 2
  %i.abl = fadd reassoc nsz arcp contract afn float %i.abk, %.sroa.0.8.vec.extract.i.i ; 3 uses
  %i.abm = fcmp reassoc nsz arcp contract afn ogt float %i.abl, 0.000000e+00 ; 2 uses
end_hunk_2
