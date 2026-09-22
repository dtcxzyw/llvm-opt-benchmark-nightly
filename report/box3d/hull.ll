Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d/original/hull?download=true
inline.NumInlined: 449
inline.NumDeleted: 105
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 14
begin_hunk_0_@b3MakeTransformedBoxHull:bb.a
  %i.mx = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.my = insertelement <4 x float> %i.mx, float 0.000000e+00, i64 0
  %i.mz = insertelement <4 x float> %i.my, float %.sroa.2.0.copyload.i, i64 3
  %i.na = fmul <4 x float> %i.mw, %i.mz           ; 5 uses
  %i.nb = extractelement <4 x float> %i.na, i64 0
  %i.nc = fadd float %i.cg, %i.nb
  %i.nd = fadd float %i.ko, %i.nc                 ; 2 uses
  %i.ne = fadd float %i.kq, %.sroa.11.8.vec.extract.i.i361
  %i.nf = fmul float %.sroa.11.8.vec.extract.i.i361, -0.000000e+00
  %i.ng = fsub float %i.nf, %i.ku
  %i.nh = fsub float %i.mc, %.sroa.0.0.vec.extract.i.i359
  %i.ni = fsub float %i.ne, %i.jy                 ; 2 uses
  %i.nj = fsub float %i.ng, %.sroa.11.12.vec.extract.i.i362 ; 2 uses
  %i.nk = fadd float %i.kz, %i.nh                 ; 2 uses
  %i.nl = fmul float %.sroa.0.4.vec.extract.i.i360, %i.nk
  %i.nm = fmul float %.sroa.11.8.vec.extract.i.i361, %i.nj
  %i.nn = fsub float %i.nl, %i.nm
  %i.no = fmul float %.sroa.11.8.vec.extract.i.i361, %i.ni
  %i.np = fmul float %.sroa.0.0.vec.extract.i.i359, %i.nk
  %i.nq = fsub float %i.no, %i.np
  %i.nr = fmul float %.sroa.0.0.vec.extract.i.i359, %i.nj
  %i.ns = fmul float %.sroa.0.4.vec.extract.i.i360, %i.ni
  %i.nt = fsub float %i.nr, %i.ns
  %i.nu = fmul float %i.nn, 2.000000e+00          ; 2 uses
  %.sroa.010.0.vec.insert.i60.i.i416 = insertelement <2 x float> poison, float %i.nu, i64 0
  %i.nv = fmul float %i.nq, 2.000000e+00
  %i.nw = fadd float %i.nv, -1.000000e+00         ; 2 uses
  %.sroa.010.4.vec.insert.i63.i.i417 = insertelement <2 x float> %.sroa.010.0.vec.insert.i60.i.i416, float %i.nw, i64 1
  %i.nx = fmul float %i.nt, 2.000000e+00          ; 2 uses
  %.sroa.211.8.vec.insert.i418 = insertelement <2 x float> poison, float %i.nx, i64 0
  %i.ny = fmul float %i.nu, %.sroa.01.0.vec.extract.i.i373
  %i.nz = fmul float %i.nw, %.sroa.01.4.vec.extract.i.i374
  %i.oa = fadd float %i.ny, %i.nz
  %i.ob = fmul float %i.nx, %.sroa.2.0.copyload.i
  %i.oc = fadd float %i.ob, %i.oa
  %i.od = fadd float %i.nd, %i.oc
  %.sroa.211.12.vec.insert.i425 = insertelement <2 x float> %.sroa.211.8.vec.insert.i418, float %i.od, i64 1
  store <2 x float> %.sroa.010.4.vec.insert.i63.i.i417, ptr %i.dx, align 8
  store <2 x float> %.sroa.211.12.vec.insert.i425, ptr %.sroa.4130.0..sroa_idx, align 8
  %i.oe = shufflevector <4 x float> %i.mw, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.of = shufflevector <4 x float> %i.mw, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %shift777 = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 poison, i32 2, i32 poison, i32 poison>
  %foldExtExtBinop778 = fadd <4 x float> %i.na, %shift777
  %shift780 = shufflevector <4 x float> %i.na, <4 x float> poison, <4 x i32> <i32 poison, i32 3, i32 poison, i32 poison>
  %foldExtExtBinop781 = fadd <4 x float> %shift780, %foldExtExtBinop778
  %i.og = extractelement <4 x float> %foldExtExtBinop781, i64 1
  %i.oh = fadd float %i.nd, %i.og
  %.sroa.211.12.vec.insert.i448 = insertelement <2 x float> %i.of, float %i.oh, i64 1
  store <2 x float> %i.oe, ptr %i.dy, align 8
  %.sroa.4114.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 400 ; 2 uses
  store <2 x float> %.sroa.211.12.vec.insert.i448, ptr %.sroa.4114.0..sroa_idx, align 8
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 408 ; 2 uses
  %foldExtExtBinop783 = fadd <4 x float> %i.na, %i.kl
  %i.oj = extractelement <4 x float> %foldExtExtBinop783, i64 0
  %i.ok = fadd float %i.cf, %i.oj                 ; 2 uses
  %i.ol = fsub float %i.kr, %.sroa.0.4.vec.extract.i.i360
  %i.om = fsub float %.sroa.0.0.vec.extract.i.i359, %i.kr
  %i.on = fadd float %i.ku, %i.mc
  %i.oo = fsub float %i.ol, %i.jy                 ; 2 uses
  %i.op = fsub float %i.om, %i.jy                 ; 2 uses
  %i.oq = fsub float %i.on, %.sroa.11.12.vec.extract.i.i362 ; 2 uses
  %i.or = fmul float %.sroa.0.4.vec.extract.i.i360, %i.oq
  %i.os = fmul float %.sroa.11.8.vec.extract.i.i361, %i.op
  %i.ot = fsub float %i.or, %i.os
  %i.ou = fmul float %.sroa.11.8.vec.extract.i.i361, %i.oo
  %i.ov = fmul float %.sroa.0.0.vec.extract.i.i359, %i.oq
  %i.ow = fsub float %i.ou, %i.ov
  %i.ox = fmul float %.sroa.0.0.vec.extract.i.i359, %i.op
  %i.oy = fmul float %.sroa.0.4.vec.extract.i.i360, %i.oo
  %i.oz = fsub float %i.ox, %i.oy
  %i.pa = fmul float %i.ot, 2.000000e+00          ; 2 uses
  %.sroa.010.0.vec.insert.i60.i.i466 = insertelement <2 x float> poison, float %i.pa, i64 0
  %i.pb = fmul float %i.ow, 2.000000e+00          ; 2 uses
  %.sroa.010.4.vec.insert.i63.i.i467 = insertelement <2 x float> %.sroa.010.0.vec.insert.i60.i.i466, float %i.pb, i64 1
  %i.pc = fmul float %i.oz, 2.000000e+00
  %i.pd = fadd float %i.pc, -1.000000e+00         ; 2 uses
  %.sroa.211.8.vec.insert.i468 = insertelement <2 x float> poison, float %i.pd, i64 0
  %i.pe = fmul float %i.pa, %.sroa.01.0.vec.extract.i.i373
  %i.pf = fmul float %i.pb, %.sroa.01.4.vec.extract.i.i374
  %i.pg = fadd float %i.pe, %i.pf
  %i.ph = fmul float %i.pd, %.sroa.2.0.copyload.i
  %i.pi = fadd float %i.ph, %i.pg
  %i.pj = fadd float %i.ok, %i.pi
  %.sroa.211.12.vec.insert.i475 = insertelement <2 x float> %.sroa.211.8.vec.insert.i468, float %i.pj, i64 1
  store <2 x float> %.sroa.010.4.vec.insert.i63.i.i467, ptr %i.oi, align 8
  %.sroa.4106.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 416 ; 2 uses
  store <2 x float> %.sroa.211.12.vec.insert.i475, ptr %.sroa.4106.0..sroa_idx, align 8
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 424 ; 2 uses
  %i.pl = fsub float %.sroa.0.4.vec.extract.i.i360, %i.kr
  %i.pm = fsub float %i.jw, %i.mc
  %i.pn = fsub float %i.kr, %.sroa.0.0.vec.extract.i.i359
  %i.po = fadd float %i.jy, %i.pl                 ; 2 uses
  %i.pp = fadd float %.sroa.11.12.vec.extract.i.i362, %i.pm ; 2 uses
  %i.pq = fadd float %i.jy, %i.pn                 ; 2 uses
  %i.pr = fmul float %.sroa.11.8.vec.extract.i.i361, %i.po
  %i.ps = fmul float %.sroa.0.4.vec.extract.i.i360, %i.pp
  %i.pt = fmul float %.sroa.0.0.vec.extract.i.i359, %i.pp
  %i.pu = fmul float %.sroa.11.8.vec.extract.i.i361, %i.pq
  %i.pv = fsub float %i.pr, %i.pt
  %i.pw = fsub float %i.ps, %i.pu
  %i.px = fmul float %.sroa.0.0.vec.extract.i.i359, %i.pq
  %i.py = fmul float %.sroa.0.4.vec.extract.i.i360, %i.po
  %i.pz = fsub float %i.px, %i.py
  %i.qa = insertelement <2 x float> poison, float %i.pw, i64 0
  %i.qb = insertelement <2 x float> %i.qa, float %i.pv, i64 1
  %i.qc = fmul <2 x float> %i.qb, splat (float 2.000000e+00)
  %i.qd = fadd <2 x float> %i.qc, zeroinitializer ; 2 uses
  %i.qe = fmul float %i.pz, 2.000000e+00
  %i.qf = fadd float %i.qe, 1.000000e+00          ; 2 uses
  %.sroa.211.8.vec.insert.i491 = insertelement <2 x float> poison, float %i.qf, i64 0
  %i.qg = fmul <2 x float> %i.qd, %.sroa.0.0.copyload.i ; 2 uses
  %shift785 = shufflevector <2 x float> %i.qg, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop786 = fadd <2 x float> %i.qg, %shift785
  %i.qh = extractelement <2 x float> %foldExtExtBinop786, i64 0
  %i.qi = fmul float %i.qf, %.sroa.2.0.copyload.i
  %i.qj = fadd float %i.qi, %i.qh
  %i.qk = fadd float %i.ok, %i.qj
  %.sroa.211.12.vec.insert.i498 = insertelement <2 x float> %.sroa.211.8.vec.insert.i491, float %i.qk, i64 1
  store <2 x float> %i.qd, ptr %i.pk, align 8
  %.sroa.490.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 432 ; 2 uses
  store <2 x float> %.sroa.211.12.vec.insert.i498, ptr %.sroa.490.0..sroa_idx, align 8
  %i.ql = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.qm = fmul float %i.cf, %.sroa.11.12.vec.extract.i.i362 ; 4 uses
  %.sroa.482.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 160
  %i.qn = getelementptr inbounds nuw i8, ptr %0, i64 164
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 172
  %i.qo = getelementptr inbounds nuw i8, ptr %0, i64 176
  %.sroa.460.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 184
  %i.qp = getelementptr inbounds nuw i8, ptr %0, i64 188
  %.sroa.449.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 196
  %i.qq = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.qr = fmul float %.sroa.0.4.vec.extract.i.i360, %i.ci
  %.sroa.438.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 208
  %i.qs = getelementptr inbounds nuw i8, ptr %0, i64 212
  %.sroa.427.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 220
  %i.qt = getelementptr inbounds nuw i8, ptr %0, i64 224
  %.sroa.416.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  %i.qu = getelementptr inbounds nuw i8, ptr %0, i64 236
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 244
  %i.qv = getelementptr inbounds nuw i8, ptr %0, i64 448
  %i.qw = getelementptr inbounds nuw i8, ptr %0, i64 464
  %i.qx = insertelement <2 x float> %i.j, float %i.ea, i64 1 ; 2 uses
  %i.qy = fmul <2 x float> %i.qx, %i.eu           ; 2 uses
  %i.qz = insertelement <2 x float> %i.m, float %i.ch, i64 1 ; 3 uses
  %i.ra = fmul <2 x float> %i.qz, %i.ew           ; 2 uses
  %i.rb = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.rc = shufflevector <2 x float> %i.qx, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.rd = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.re = fmul <4 x float> %i.rc, %i.rd
  %i.rf = shufflevector <2 x float> %i.el, <2 x float> poison, <2 x i32> zeroinitializer ; 3 uses
  %i.rg = fmul <2 x float> %i.qz, %i.rf
  %i.rh = shufflevector <2 x float> %i.rg, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 1, i32 1>
  %i.ri = fsub <4 x float> %i.rh, %i.re           ; 5 uses
  %i.rj = extractelement <4 x float> %i.ri, i64 0
  %i.rk = fadd float %i.qm, %i.rj                 ; 2 uses
  %i.rl = extractelement <4 x float> %i.ri, i64 1
  %i.rm = fadd float %i.qm, %i.rl                 ; 2 uses
  %i.rn = extractelement <4 x float> %i.ri, i64 2
  %i.ro = fadd float %i.qm, %i.rn                 ; 2 uses
  %i.rp = extractelement <4 x float> %i.ri, i64 3
  %i.rq = fadd float %i.qm, %i.rp                 ; 2 uses
  %i.rr = fmul float %.sroa.0.0.vec.extract.i.i359, %i.ci
  %i.rs = fmul float %.sroa.11.12.vec.extract.i.i362, %i.ci
  %i.rt = insertelement <4 x float> poison, float %i.rs, i64 0
  %i.ru = shufflevector <4 x float> %i.rt, <4 x float> poison, <4 x i32> zeroinitializer
  %i.rv = fadd <4 x float> %i.ru, %i.ri           ; 3 uses
  %i.rw = insertelement <2 x float> poison, float %i.rr, i64 0
  %i.rx = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.ry = shufflevector <2 x float> %i.rw, <2 x float> poison, <4 x i32> zeroinitializer
  %i.rz = fsub <4 x float> %i.rx, %i.ry
  %i.sa = fadd <4 x float> %i.rb, %i.rz           ; 2 uses
  %i.sb = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1> ; 3 uses
  %i.sc = fmul <4 x float> %i.sb, %i.rv
  %i.sd = shufflevector <2 x float> %i.em, <2 x float> poison, <4 x i32> zeroinitializer
  %i.se = fmul <4 x float> %i.sd, %i.sa
  %i.sf = fsub <4 x float> %i.sc, %i.se
  %i.sg = fmul <4 x float> %i.sf, splat (float 2.000000e+00) ; 2 uses
  %i.sh = shufflevector <2 x float> %i.j, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.si = fadd <4 x float> %i.sg, %i.sh
  %i.sj = fsub <4 x float> %i.sg, %i.sh
  %i.sk = shufflevector <4 x float> %i.si, <4 x float> %i.sj, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.sl = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <4 x i32> zeroinitializer
  %i.sm = fadd <4 x float> %i.sk, %i.sl           ; 5 uses
  %i.sn = shufflevector <4 x float> %i.sm, <4 x float> poison, <2 x i32> <i32 0, i32 poison>
  %i.so = shufflevector <4 x float> %i.sm, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.sp = shufflevector <4 x float> %i.sm, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.sq = shufflevector <4 x float> %i.sm, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  store <4 x float> %i.sm, ptr %i.qw, align 8, !tbaa !23
  %i.sr = getelementptr inbounds nuw i8, ptr %0, i64 156
  %i.ss = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.st = getelementptr inbounds nuw i8, ptr %0, i64 204
  %i.su = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.sv = shufflevector <2 x float> %.sroa.04.0.vec.insert.i, <2 x float> %i.j, <2 x i32> <i32 0, i32 2>
  %i.sw = fmul <2 x float> %i.ew, %i.sv           ; 3 uses
  %i.sx = shufflevector <2 x float> %i.sw, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 0, i32 1>
  %i.sy = shufflevector <4 x float> %i.rv, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  %i.sz = fmul <2 x float> %i.rf, %i.sy
  %i.ta = shufflevector <2 x float> %i.j, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tb = shufflevector <2 x float> %.sroa.0.0.copyload.i, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.tc = getelementptr inbounds nuw i8, ptr %0, i64 512
  %i.td = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.te = shufflevector <2 x float> %i.td, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tf = fmul <2 x float> %i.te, %i.el           ; 2 uses
  %i.tg = fmul <2 x float> %i.qz, %i.eu           ; 2 uses
  %i.th = shufflevector <2 x float> %i.tf, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.ti = shufflevector <2 x float> %i.tg, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.tj = fsub <4 x float> %i.th, %i.ti
  %i.tk = insertelement <2 x float> poison, float %i.qr, i64 0
  %i.tl = shufflevector <2 x float> %i.tk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.tm = fsub <2 x float> %i.tl, %i.tg           ; 2 uses
  %i.tn = shufflevector <2 x float> %i.qy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 0>
  %i.to = shufflevector <2 x float> %i.tf, <2 x float> poison, <4 x i32> zeroinitializer
  %i.tp = fsub <4 x float> %i.tn, %i.to
  %i.tq = shufflevector <2 x float> %i.ra, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 1>
  %i.tr = fadd <4 x float> %i.tq, %i.tp           ; 5 uses
  %i.ts = extractelement <4 x float> %i.tr, i64 0
  %i.tt = shufflevector <2 x float> %i.el, <2 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.tu = fmul <4 x float> %i.tt, %i.tr
  %i.tv = fadd <4 x float> %i.sx, %i.tj           ; 5 uses
  %i.tw = fmul <4 x float> %i.sb, %i.tv
  %i.tx = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ty = fadd <2 x float> %i.sw, %i.tx           ; 2 uses
  %i.tz = shufflevector <2 x float> %i.ty, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ua = shufflevector <2 x float> %i.tm, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ub = fadd <2 x float> %i.sw, %i.ua           ; 2 uses
  %i.uc = fmul <2 x float> %i.eu, %i.ub
  %i.ud = fmul float %.sroa.0.0.vec.extract.i.i359, %i.rk
  %i.ue = fmul float %.sroa.11.8.vec.extract.i.i361, %i.ts
  %i.uf = insertelement <2 x float> poison, float %i.ue, i64 0
  %i.ug = insertelement <2 x float> %i.uf, float %i.ud, i64 1
  %i.uh = fsub <4 x float> %i.tu, %i.tw
  %i.ui = fmul <4 x float> %i.uh, splat (float 2.000000e+00)
  %6 = insertelement <4 x float> poison, float %i.cf, i64 0
  %i.uj = shufflevector <4 x float> %6, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.uk = fadd <4 x float> %i.uj, %i.ui
  %i.ul = insertelement <4 x float> poison, float %.sroa.2.0.copyload.i, i64 0
  %i.um = shufflevector <4 x float> %i.ul, <4 x float> poison, <4 x i32> zeroinitializer ; 2 uses
  %i.un = fadd <4 x float> %i.uk, %i.um           ; 5 uses
  %i.uo = extractelement <4 x float> %i.un, i64 0
  store float %i.uo, ptr %.sroa.482.0..sroa_idx, align 8, !tbaa !23
  %i.up = shufflevector <4 x float> %i.tr, <4 x float> poison, <2 x i32> <i32 2, i32 poison>
  %i.uq = insertelement <2 x float> %i.up, float %i.rm, i64 1
  %i.ur = fmul <2 x float> %i.ka, %i.uq
  %i.us = shufflevector <4 x float> %i.tv, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.ut = insertelement <2 x float> %i.us, float %i.rm, i64 0
  %i.uu = fmul <2 x float> %i.jq, %i.ut
  %i.uv = fsub <2 x float> %i.uu, %i.ur
  %i.uw = fmul <2 x float> %i.uv, splat (float 2.000000e+00) ; 2 uses
  %i.ux = fsub <2 x float> %i.uw, %i.j
  %i.uy = fadd <2 x float> %i.uw, %i.j
  %i.uz = shufflevector <2 x float> %i.ux, <2 x float> %i.uy, <2 x i32> <i32 0, i32 3>
  %i.va = fadd <2 x float> %i.uz, %.sroa.0.0.copyload.i
  store <2 x float> %i.va, ptr %i.qn, align 4
  %i.vb = extractelement <4 x float> %i.un, i64 2
  store float %i.vb, ptr %.sroa.471.0..sroa_idx, align 4, !tbaa !23
  %i.vc = shufflevector <4 x float> %i.tr, <4 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.vd = insertelement <2 x float> %i.vc, float %i.ro, i64 1
  %i.ve = fmul <2 x float> %i.ka, %i.vd
  %i.vf = shufflevector <4 x float> %i.tv, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.vg = insertelement <2 x float> %i.vf, float %i.ro, i64 0
  %i.vh = fmul <2 x float> %i.jq, %i.vg
  %i.vi = fsub <2 x float> %i.vh, %i.ve
  %i.vj = fmul <2 x float> %i.vi, splat (float 2.000000e+00)
  %i.vk = fsub <2 x float> %i.vj, %i.j
  %i.vl = fadd <2 x float> %i.vk, %.sroa.0.0.copyload.i
  store <2 x float> %i.vl, ptr %i.qo, align 8
  %i.vm = extractelement <4 x float> %i.un, i64 1
  store float %i.vm, ptr %.sroa.460.0..sroa_idx, align 8, !tbaa !23
  %i.vn = shufflevector <4 x float> %i.tr, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.vo = insertelement <2 x float> %i.vn, float %i.rq, i64 1
  %i.vp = fmul <2 x float> %i.ka, %i.vo
  %i.vq = shufflevector <4 x float> %i.tv, <4 x float> poison, <2 x i32> <i32 poison, i32 3>
  %i.vr = insertelement <2 x float> %i.vq, float %i.rq, i64 0
  %i.vs = fmul <2 x float> %i.jq, %i.vr
  %i.vt = fsub <2 x float> %i.vs, %i.vp
  %i.vu = fmul <2 x float> %i.vt, splat (float 2.000000e+00) ; 2 uses
  %i.vv = fadd <2 x float> %i.vu, %i.j
  %i.vw = fsub <2 x float> %i.vu, %i.j
  %i.vx = shufflevector <2 x float> %i.vv, <2 x float> %i.vw, <2 x i32> <i32 0, i32 3>
  %i.vy = fadd <2 x float> %i.vx, %.sroa.0.0.copyload.i
  store <2 x float> %i.vy, ptr %i.qp, align 4
  %i.vz = extractelement <4 x float> %i.un, i64 3
  store float %i.vz, ptr %.sroa.449.0..sroa_idx, align 4, !tbaa !23
  %i.wa = shufflevector <4 x float> %i.rv, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.wb = fmul <2 x float> %i.rf, %i.wa
  %i.wc = fmul <2 x float> %i.eu, %i.tz
  %i.wd = fsub <2 x float> %i.wc, %i.wb
  %i.we = shufflevector <2 x float> %i.em, <2 x float> %i.el, <4 x i32> <i32 0, i32 3, i32 poison, i32 poison>
  %i.wf = shufflevector <4 x float> %i.we, <4 x float> <float poison, float poison, float 2.000000e+00, float 2.000000e+00>, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.wg = insertelement <4 x float> %i.tv, float %i.rk, i64 1
  %i.wh = shufflevector <2 x float> %i.wd, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.wi = shufflevector <4 x float> %i.wg, <4 x float> %i.wh, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.wj = fmul <4 x float> %i.wf, %i.wi           ; 3 uses
  %i.wk = shufflevector <4 x float> %i.wj, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.wl = fsub <2 x float> %i.wk, %i.ug
  %i.wm = fmul <2 x float> %i.wl, splat (float 2.000000e+00)
  %i.wn = fadd <2 x float> %i.j, %i.wm
  %i.wo = fadd <2 x float> %i.wn, %.sroa.0.0.copyload.i
  store <2 x float> %i.wo, ptr %i.ql, align 8
  %i.wp = extractelement <4 x float> %i.wj, i64 2
  %i.wq = fadd float %i.cg, %i.wp
  %i.wr = fadd float %i.wq, %.sroa.01.4.vec.extract.i.i374
  %.sroa.08.4.vec.insert.i588 = insertelement <2 x float> %i.sn, float %i.wr, i64 1
  store <2 x float> %.sroa.08.4.vec.insert.i588, ptr %i.qq, align 8
  %i.ws = extractelement <4 x float> %i.wj, i64 3
  %i.wt = fadd float %i.cg, %i.ws
  %i.wu = fadd float %i.wt, %.sroa.01.4.vec.extract.i.i374
  %.sroa.08.4.vec.insert.i606 = insertelement <2 x float> %i.so, float %i.wu, i64 1
  store <2 x float> %.sroa.08.4.vec.insert.i606, ptr %i.qs, align 4
  %i.wv = fsub <2 x float> %i.uc, %i.sz
  %i.ww = fmul <2 x float> %i.wv, splat (float 2.000000e+00)
  %i.wx = fsub <2 x float> %i.ww, %i.ta
  %i.wy = fadd <2 x float> %i.wx, %i.tb           ; 3 uses
  %i.wz = shufflevector <2 x float> %i.sp, <2 x float> %i.wy, <2 x i32> <i32 0, i32 2>
  store <2 x float> %i.wz, ptr %i.qt, align 8
  %i.xa = shufflevector <2 x float> %i.sq, <2 x float> %i.wy, <2 x i32> <i32 0, i32 3>
  store <2 x float> %i.xa, ptr %i.qu, align 4
  %i.xb = load <10 x float>, ptr %i.ql, align 8, !tbaa !87
  %i.xc = shufflevector <10 x float> %i.xb, <10 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  store <4 x float> %i.xc, ptr %i.qv, align 8, !tbaa !23
  %i.xd = load <10 x float>, ptr %i.sr, align 4, !tbaa !128
  %i.xe = shufflevector <10 x float> %i.xd, <10 x float> poison, <4 x i32> <i32 0, i32 3, i32 6, i32 9>
  store <4 x float> %i.xe, ptr %i.ss, align 8, !tbaa !23
  %i.xf = shufflevector <4 x float> %i.un, <4 x float> poison, <4 x i32> <i32 0, i32 2, i32 1, i32 3>
  store <4 x float> %i.xf, ptr %i.tc, align 8, !tbaa !23
  %i.xg = getelementptr inbounds nuw i8, ptr %0, i64 528
  %i.xh = fmul <4 x float> %i.tt, %i.sa
  %i.xi = shufflevector <2 x float> %i.ty, <2 x float> %i.ub, <4 x i32> <i32 1, i32 0, i32 2, i32 3>
  %i.xj = fmul <4 x float> %i.sb, %i.xi
  %i.xk = fsub <4 x float> %i.xh, %i.xj
  %i.xl = fmul <4 x float> %i.xk, splat (float 2.000000e+00)
  %i.xm = fsub <4 x float> %i.xl, %i.uj
  %i.xn = fadd <4 x float> %i.xm, %i.um           ; 5 uses
  %i.xo = extractelement <4 x float> %i.xn, i64 0
  store float %i.xo, ptr %.sroa.438.0..sroa_idx, align 8, !tbaa !23
  %i.xp = extractelement <4 x float> %i.xn, i64 1
  store float %i.xp, ptr %.sroa.427.0..sroa_idx, align 4, !tbaa !23
  %i.xq = extractelement <4 x float> %i.xn, i64 2
  store float %i.xq, ptr %.sroa.416.0..sroa_idx, align 8, !tbaa !23
  %i.xr = extractelement <4 x float> %i.xn, i64 3
  store float %i.xr, ptr %.sroa.4.0..sroa_idx, align 4, !tbaa !23
  %i.xs = load <4 x float>, ptr %i.st, align 4, !tbaa !128
  %i.xt = shufflevector <4 x float> %i.xs, <4 x float> poison, <2 x i32> <i32 0, i32 3>
  %i.xu = shufflevector <2 x float> %i.xt, <2 x float> %i.wy, <4 x i32> <i32 0, i32 1, i32 2, i32 3>
  store <4 x float> %i.xu, ptr %i.su, align 8, !tbaa !23
  store <4 x float> %i.xn, ptr %i.xg, align 8, !tbaa !23
  %i.xv = load float, ptr %i.cd, align 8, !tbaa !314
  %i.xw = getelementptr inbounds nuw i8, ptr %0, i64 544
  store float %i.xv, ptr %i.xw, align 8, !tbaa !23
  %i.xx = load float, ptr %i.ce, align 8, !tbaa !314
  %i.xy = getelementptr inbounds nuw i8, ptr %0, i64 548
  store float %i.xx, ptr %i.xy, align 4, !tbaa !23
  %i.xz = load float, ptr %i.dx, align 8, !tbaa !314
  %i.ya = getelementptr inbounds nuw i8, ptr %0, i64 552
  store float %i.xz, ptr %i.ya, align 8, !tbaa !23
  %i.yb = load float, ptr %i.dy, align 8, !tbaa !314
  %i.yc = getelementptr inbounds nuw i8, ptr %0, i64 556
  store float %i.yb, ptr %i.yc, align 4, !tbaa !23
  %i.yd = load float, ptr %i.oi, align 8, !tbaa !314
  %i.ye = getelementptr inbounds nuw i8, ptr %0, i64 560
  store float %i.yd, ptr %i.ye, align 8, !tbaa !23
  %i.yf = load float, ptr %i.pk, align 8, !tbaa !314
  %i.yg = getelementptr inbounds nuw i8, ptr %0, i64 564
  store float %i.yf, ptr %i.yg, align 4, !tbaa !23
  %i.yh = getelementptr inbounds nuw i8, ptr %0, i64 568
  store <2 x float> zeroinitializer, ptr %i.yh, align 8, !tbaa !23
  %i.yi = getelementptr inbounds nuw i8, ptr %0, i64 348
  %i.yj = load float, ptr %i.yi, align 4, !tbaa !315
  %i.yk = getelementptr inbounds nuw i8, ptr %0, i64 576
  store float %i.yj, ptr %i.yk, align 8, !tbaa !23
  %i.yl = getelementptr inbounds nuw i8, ptr %0, i64 364
  %i.ym = load float, ptr %i.yl, align 4, !tbaa !315
  %i.yn = getelementptr inbounds nuw i8, ptr %0, i64 580
  store float %i.ym, ptr %i.yn, align 4, !tbaa !23
  %i.yo = getelementptr inbounds nuw i8, ptr %0, i64 380
  %i.yp = load float, ptr %i.yo, align 4, !tbaa !315
  %i.yq = getelementptr inbounds nuw i8, ptr %0, i64 584
  store float %i.yp, ptr %i.yq, align 8, !tbaa !23
  %i.yr = getelementptr inbounds nuw i8, ptr %0, i64 396
  %i.ys = load float, ptr %i.yr, align 4, !tbaa !315
  %i.yt = getelementptr inbounds nuw i8, ptr %0, i64 588
  store float %i.ys, ptr %i.yt, align 4, !tbaa !23
  %i.yu = getelementptr inbounds nuw i8, ptr %0, i64 412
  %i.yv = load float, ptr %i.yu, align 4, !tbaa !315
  %i.yw = getelementptr inbounds nuw i8, ptr %0, i64 592
  store float %i.yv, ptr %i.yw, align 8, !tbaa !23
  %i.yx = getelementptr inbounds nuw i8, ptr %0, i64 428
  %i.yy = load float, ptr %i.yx, align 4, !tbaa !315
  %i.yz = getelementptr inbounds nuw i8, ptr %0, i64 596
  store float %i.yy, ptr %i.yz, align 4, !tbaa !23
  %i.za = getelementptr inbounds nuw i8, ptr %0, i64 600
  store <2 x float> zeroinitializer, ptr %i.za, align 8, !tbaa !23
  %i.zb = load float, ptr %.sroa.4154.0..sroa_idx, align 8, !tbaa !316
  %i.zc = getelementptr inbounds nuw i8, ptr %0, i64 608
  store float %i.zb, ptr %i.zc, align 8, !tbaa !23
  %i.zd = load float, ptr %.sroa.4138.0..sroa_idx, align 8, !tbaa !316
  %i.ze = getelementptr inbounds nuw i8, ptr %0, i64 612
  store float %i.zd, ptr %i.ze, align 4, !tbaa !23
  %i.zf = load float, ptr %.sroa.4130.0..sroa_idx, align 8, !tbaa !316
  %i.zg = getelementptr inbounds nuw i8, ptr %0, i64 616
  store float %i.zf, ptr %i.zg, align 8, !tbaa !23
  %i.zh = load float, ptr %.sroa.4114.0..sroa_idx, align 8, !tbaa !316
  %i.zi = getelementptr inbounds nuw i8, ptr %0, i64 620
  store float %i.zh, ptr %i.zi, align 4, !tbaa !23
  %i.zj = load float, ptr %.sroa.4106.0..sroa_idx, align 8, !tbaa !316
  %i.zk = getelementptr inbounds nuw i8, ptr %0, i64 624
  store float %i.zj, ptr %i.zk, align 8, !tbaa !23
  %i.zl = load float, ptr %.sroa.490.0..sroa_idx, align 8, !tbaa !316
  %i.zm = getelementptr inbounds nuw i8, ptr %0, i64 628
  store float %i.zl, ptr %i.zm, align 4, !tbaa !23
  %i.zn = getelementptr inbounds nuw i8, ptr %0, i64 632
  store <2 x float> zeroinitializer, ptr %i.zn, align 8, !tbaa !23
  %i.zo = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  store i64 0, ptr %i.zo, align 8, !tbaa !317
  %i.zp = getelementptr inbounds nuw i8, ptr %0, i64 140
  %i.zq = load i32, ptr %i.zp, align 4, !tbaa !318
  %i.zr = call i64 @b3Hash64NonZero(ptr noundef %0, i32 noundef %i.zq) #24
  store i64 %i.zr, ptr %i.zo, align 8, !tbaa !317
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  ret void
}

declare void @b3BoxInertia(ptr dead_on_unwind writable sret(%struct.b3Matrix3) align 4, float noundef, <2 x float>, float, <2 x float>, float) local_unnamed_addr #4

; Function Attrs: nounwind uwtable
define void @b3MakeCubeHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1) local_unnamed_addr #6 {
bb.a:
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %1, float noundef %1, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity)
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3MakeBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1, float noundef %2, float noundef %3) local_unnamed_addr #6 {
bb.a:
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 @b3Transform_identity)
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3MakeOffsetBoxHull(ptr dead_on_unwind noalias writable sret(%struct.b3BoxHull) align 8 initializes((0, 640)) %0, float noundef %1, float noundef %2, float noundef %3, <2 x float> %4, float %5) local_unnamed_addr #3 {
bb.a:
  %6 = alloca %struct.b3Transform, align 8        ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #24
  store <2 x float> %4, ptr %6, align 8
  %.sroa.24.0..sroa_idx = getelementptr inbounds nuw i8, ptr %6, i64 8
  store float %5, ptr %.sroa.24.0..sroa_idx, align 8, !tbaa !23
  %i.a = getelementptr inbounds nuw i8, ptr %6, i64 12
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(16) %i.a, ptr noundef nonnull align 4 dereferenceable(16) @b3Quat_identity, i64 16, i1 false), !tbaa.struct !85
  tail call void @b3MakeTransformedBoxHull(ptr dead_on_unwind writable sret(%struct.b3BoxHull) align 8 %0, float noundef %1, float noundef %2, float noundef %3, ptr noundef nonnull byval(%struct.b3Transform) align 8 %6)
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #24
  ret void
}

; Function Attrs: nounwind uwtable
define void @b3ScaleBox(ptr nofree noundef captures(none) %0, ptr nofree noundef captures(none) %1, <2 x float> %2, float %3, float noundef %4) local_unnamed_addr #3 {
bb.a:
  %5 = alloca %struct.b3Matrix3, align 8          ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 12 ; 2 uses
  %.sroa.0185.0.copyload = load <2 x float>, ptr %i.a, align 4 ; 7 uses
  %.sroa.10.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20 ; 2 uses
  %.sroa.10.0.copyload = load <2 x float>, ptr %.sroa.10.0..sroa_idx, align 4 ; 4 uses
  %i.b = fcmp olt <2 x float> %2, zeroinitializer ; 3 uses
  %i.c = extractelement <2 x i1> %i.b, i64 0      ; 2 uses
  %i.d = extractelement <2 x i1> %i.b, i64 1      ; 2 uses
  %or.cond = select i1 %i.c, i1 true, i1 %i.d
  %i.e = fcmp olt float %3, 0.000000e+00          ; 3 uses
  %or.cond5 = select i1 %or.cond, i1 true, i1 %i.e
  br i1 %or.cond5, label %bb.b, label %bb.l

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #24
  %foldExtExtBinop = fmul <2 x float> %.sroa.0185.0.copyload, %.sroa.0185.0.copyload ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %5, i64 12 ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %5, i64 20 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %5, i64 24 ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  %i.k = shufflevector <2 x float> %.sroa.0185.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.l = shufflevector <2 x float> %.sroa.0185.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.m = fmul <2 x float> %i.k, %i.l              ; 3 uses
  %i.n = shufflevector <2 x float> %.sroa.10.0.copyload, <2 x float> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.o = fmul <2 x float> %i.n, %.sroa.10.0.copyload ; 3 uses
  %i.p = fadd <2 x float> %i.m, %i.o
  %i.q = fmul <2 x float> %i.p, <float 2.000000e+00, float 1.000000e+00> ; 2 uses
  %i.r = fsub <2 x float> <float 1.000000e+00, float poison>, %i.q
  %i.s = fmul <2 x float> %i.q, <float poison, float 2.000000e+00>
  %i.t = shufflevector <2 x float> %i.r, <2 x float> %i.s, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop363 = fadd <2 x float> %foldExtExtBinop, %i.o
  %i.u = extractelement <2 x float> %foldExtExtBinop363, i64 0
  %i.v = fmul float %i.u, 2.000000e+00
  %foldExtExtBinop365 = fadd <2 x float> %foldExtExtBinop, %i.m
  %i.w = extractelement <2 x float> %foldExtExtBinop365, i64 0
  %i.x = fmul float %i.w, 2.000000e+00
  %i.y = fsub float 1.000000e+00, %i.x
  %i.z = fmul <2 x float> %2, %i.t
  store <2 x float> %i.z, ptr %5, align 8, !tbaa !23
  %i.aa = fsub float 1.000000e+00, %i.v
  %foldExtExtBinop367 = fsub <2 x float> %i.m, %i.o
  %i.ab = shufflevector <2 x float> %foldExtExtBinop367, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.ac = insertelement <2 x float> %i.ab, float %i.aa, i64 1
  %i.ad = fmul <2 x float> %i.ac, <float 2.000000e+00, float 1.000000e+00>
  %i.ae = fmul <2 x float> %2, %i.ad
  store <2 x float> %i.ae, ptr %i.g, align 4, !tbaa !23
  %i.af = fmul <2 x float> %.sroa.0185.0.copyload, %i.n ; 4 uses
  %i.ag = shufflevector <2 x float> %.sroa.0185.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ah = shufflevector <2 x float> %.sroa.10.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = fmul <2 x float> %i.ag, %i.ah           ; 4 uses
  %foldExtExtBinop369 = fsub <2 x float> %i.af, %i.ai
  %i.aj = extractelement <2 x float> %foldExtExtBinop369, i64 0
  %i.ak = fmul float %i.aj, 2.000000e+00
  %foldExtExtBinop371 = fadd <2 x float> %i.af, %i.ai
  %i.al = extractelement <2 x float> %foldExtExtBinop371, i64 1
  %i.am = fmul float %i.al, 2.000000e+00
  %i.an = fadd <2 x float> %i.af, %i.ai
  %i.ao = fsub <2 x float> %i.af, %i.ai
  %i.ap = shufflevector <2 x float> %i.an, <2 x float> %i.ao, <2 x i32> <i32 0, i32 3>
  %i.aq = fmul <2 x float> %i.ap, splat (float 2.000000e+00)
  %i.ar = fmul <2 x float> %2, %i.aq
  store <2 x float> %i.ar, ptr %i.i, align 8, !tbaa !23
  %i.as = fmul float %3, %i.ak                    ; 3 uses
  %i.at = fmul float %3, %i.am                    ; 3 uses
  %i.au = fmul float %3, %i.y                     ; 3 uses
  %.sroa.0181.0.copyload = load <2 x float>, ptr %5, align 8 ; 3 uses
  %i.av = fmul <2 x float> %.sroa.0181.0.copyload, %.sroa.0181.0.copyload ; 2 uses
  %shift = shufflevector <2 x float> %i.av, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop373 = fadd <2 x float> %i.av, %shift
  %i.aw = extractelement <2 x float> %foldExtExtBinop373, i64 0
  %i.ax = fmul float %i.as, %i.as
  %i.ay = fadd float %i.ax, %i.aw                 ; 2 uses
  %i.az = fcmp ogt float %i.ay, f0x057A0000
  br i1 %i.az, label %bb.c, label %b3Normalize.exit247

end_hunk_0
