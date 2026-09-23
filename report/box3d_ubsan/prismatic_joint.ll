Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/box3d_ubsan/original/prismatic_joint?download=true
inline.NumInlined: 265
inline.NumDeleted: 34
begin_hunk_0_@b3WarmStartPrismaticJoint:bb.a
  %i.fr = fmul <4 x float> %i.fp, %i.fq
  %i.fs = fsub <4 x float> %i.fn, %i.fr
  %i.ft = fmul <4 x float> %i.fs, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.fu = shufflevector <2 x float> %.sroa.0229.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.fv = insertelement <4 x float> %i.fu, float 1.000000e+00, i64 3
  %i.fw = insertelement <4 x float> %i.fv, float %.sroa.2230.0.copyload, i64 0
  %i.fx = fadd <4 x float> %i.fw, %i.ft           ; 6 uses
  %i.fy = fmul <4 x float> %i.ev, %i.fx
  %i.fz = shufflevector <4 x float> %i.fx, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ga = fmul <4 x float> %i.fa, %i.fz
  %i.gb = fsub <4 x float> %i.fy, %i.ga
  %i.gc = fmul <2 x float> %i.fb, %.sroa.0189.0.copyload
  %i.gd = fmul <2 x float> %i.bv, %i.da
  %i.ge = fsub <2 x float> %i.gc, %i.gd
  %i.gf = shufflevector <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x float> %i.di, <4 x i32> <i32 6, i32 poison, i32 poison, i32 3>
  %i.gg = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gh = shufflevector <4 x float> %i.gf, <4 x float> %i.gg, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gi = insertelement <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, float %i.cy, i64 2
  %i.gj = shufflevector <2 x float> %i.ge, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gk = shufflevector <4 x float> %i.gj, <4 x float> %i.gi, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.gl = fadd <4 x float> %i.gh, %i.gk           ; 2 uses
  %i.gm = fmul <4 x float> %i.fm, %i.gl
  %i.gn = shufflevector <4 x float> %i.gl, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.go = fmul <4 x float> %i.fp, %i.gn
  %i.gp = fsub <4 x float> %i.gm, %i.go
  %i.gq = fmul <4 x float> %i.gp, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.gr = shufflevector <2 x float> %.sroa.0189.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.gs = insertelement <4 x float> %i.gr, float 1.000000e+00, i64 3
  %i.gt = insertelement <4 x float> %i.gs, float %.sroa.2190.0.copyload, i64 0
  %i.gu = fadd <4 x float> %i.gt, %i.gq           ; 6 uses
  %i.gv = shufflevector <4 x float> <float poison, float poison, float poison, float -0.000000e+00>, <4 x float> %i.di, <4 x i32> <i32 7, i32 poison, i32 poison, i32 3>
  %i.gw = shufflevector <2 x float> %i.dm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gx = shufflevector <4 x float> %i.gv, <4 x float> %i.gw, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.gy = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.dj, i64 0
  %i.gz = shufflevector <2 x float> %i.dn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ha = shufflevector <4 x float> %i.gy, <4 x float> %i.gz, <4 x i32> <i32 0, i32 4, i32 5, i32 3>
  %i.hb = fsub <4 x float> %i.gx, %i.ha
  %i.hc = shufflevector <2 x float> %i.bx, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 poison>
  %i.hd = insertelement <4 x float> %i.hc, float 1.000000e+00, i64 3
  %i.he = shufflevector <2 x float> %.sroa.0183.0.copyload, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %i.hf = insertelement <4 x float> %i.he, float 1.000000e+00, i64 3
  %i.hg = insertelement <4 x float> %i.hf, float %.sroa.2184.0.copyload, i64 1
  %i.hh = fmul <4 x float> %i.hd, %i.hg
  %i.hi = fadd <4 x float> %i.hh, %i.hb           ; 2 uses
  %i.hj = fmul <4 x float> %i.fm, %i.hi
  %i.hk = shufflevector <4 x float> %i.hi, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hl = fmul <4 x float> %i.fp, %i.hk
  %i.hm = fsub <4 x float> %i.hj, %i.hl
  %i.hn = fmul <4 x float> %i.hm, <float 2.000000e+00, float 2.000000e+00, float 2.000000e+00, float -0.000000e+00>
  %i.ho = shufflevector <2 x float> %.sroa.0183.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.hp = insertelement <4 x float> %i.ho, float 1.000000e+00, i64 3
  %i.hq = insertelement <4 x float> %i.hp, float %.sroa.2184.0.copyload, i64 0
  %i.hr = fadd <4 x float> %i.hq, %i.hn           ; 6 uses
  %i.hs = extractelement <4 x float> %i.gu, i64 0
  %i.ht = fmul <4 x float> %i.ev, %i.gu
  %i.hu = shufflevector <4 x float> %i.ev, <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, <4 x i32> <i32 1, i32 2, i32 0, i32 7> ; 2 uses
  %i.hv = shufflevector <4 x float> %i.gu, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.hw = fmul <4 x float> %i.hu, %i.hv
  %i.hx = fsub <4 x float> %i.ht, %i.hw
  %i.hy = extractelement <4 x float> %i.hr, i64 0
  %i.hz = fmul <4 x float> %i.ev, %i.hr
  %i.ia = shufflevector <4 x float> %i.hr, <4 x float> <float poison, float poison, float poison, float 1.000000e+00>, <4 x i32> <i32 2, i32 0, i32 1, i32 7>
  %i.ib = fmul <4 x float> %i.hu, %i.ia
  %i.ic = fsub <4 x float> %i.hz, %i.ib
  %.scalar = fsub float %i.dw, %i.dx
  %i.id = insertelement <2 x float> <float poison, float 1.000000e+00>, float %.scalar, i64 0 ; 3 uses
  %i.ie = shufflevector <2 x float> %i.id, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.if = load <2 x float>, ptr %i.p, align 4     ; 5 uses
  %i.ig = load float, ptr %.sroa_idx, align 4     ; 3 uses
  %foldExtExtBinop592 = fmul <4 x float> %i.fx, %i.ie
  %i.ih = extractelement <4 x float> %foldExtExtBinop592, i64 0
  %i.ii = extractelement <2 x float> %i.if, i64 0
  %i.ij = fmul float %i.hs, %i.ii
  %i.ik = fadd float %i.ih, %i.ij
  %i.il = fmul float %i.hy, %i.ig
  %i.im = fadd float %i.ik, %i.il                 ; 2 uses
  %i.in = fmul <4 x float> %i.gb, %i.ie
  %i.io = shufflevector <2 x float> %i.if, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.ip = fmul <4 x float> %i.io, %i.hx
  %i.iq = fadd <4 x float> %i.in, %i.ip
  %i.ir = shufflevector <2 x float> %i.if, <2 x float> <float poison, float -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.is = fmul <4 x float> %i.ir, %i.ic
  %i.it = fadd <4 x float> %i.iq, %i.is
  %i.iu = shufflevector <2 x float> %.sroa.095.0.copyload, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.iv = insertelement <4 x float> %i.iu, float -0.000000e+00, i64 3
  %i.iw = insertelement <4 x float> %i.iv, float %.sroa.296.0.copyload, i64 2
  %i.ix = fadd <4 x float> %i.it, %i.iw           ; 4 uses
  %i.iy = shufflevector <4 x float> %i.fx, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.iz = shufflevector <2 x float> %i.id, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ja = fmul <2 x float> %i.iy, %i.iz
  %i.jb = shufflevector <4 x float> %i.gu, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.jc = shufflevector <2 x float> %i.if, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jd = fmul <2 x float> %i.jb, %i.jc
  %i.je = fadd <2 x float> %i.ja, %i.jd
  %i.jf = shufflevector <4 x float> %i.hr, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.jg = insertelement <2 x float> poison, float %i.ig, i64 0
  %i.jh = shufflevector <2 x float> %i.jg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ji = fmul <2 x float> %i.jf, %i.jh
  %i.jj = fadd <2 x float> %i.je, %i.ji           ; 2 uses
  %i.jk = insertelement <2 x float> poison, float %i.i, i64 0
  %i.jl = shufflevector <2 x float> %i.jk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.jm = fmul <2 x float> %i.jl, %i.jj
  %i.jn = fadd <2 x float> %i.jm, %.sroa.056.0.copyload
  %i.jo = fmul float %i.i, %i.im
  %i.jp = fadd float %i.jo, %.sroa.658.0.copyload
  %i.jq = extractelement <4 x float> %i.ix, i64 0 ; 2 uses
  %i.jr = fmul float %.sroa.5567.0.copyload, %i.jq
  %i.js = extractelement <4 x float> %i.ix, i64 1 ; 2 uses
  %i.jt = fmul float %.sroa.8.0.copyload, %i.js
  %i.ju = fadd float %i.jr, %i.jt
  %i.jv = fmul float %.sroa.0566.0.copyload, %i.jq
  %i.jw = fmul float %.sroa.6568.0.copyload, %i.js
  %i.jx = extractelement <4 x float> %i.ix, i64 2 ; 2 uses
  %i.jy = fmul float %.sroa.9.0.copyload, %i.jx
  %i.jz = shufflevector <2 x float> %.sroa.052.0.copyload, <2 x float> poison, <4 x i32> <i32 poison, i32 poison, i32 poison, i32 1>
  %i.ka = insertelement <4 x float> %i.jz, float %.sroa.4.0.copyload, i64 0
  %i.kb = insertelement <4 x float> %i.ka, float %.sroa.7.0.copyload, i64 1
  %i.kc = insertelement <4 x float> %i.kb, float %.sroa.10.0.copyload, i64 2
  %i.kd = fmul <4 x float> %i.kc, %i.ix           ; 3 uses
  %i.ke = fmul float %.sroa.11.0.copyload, %i.jx
  %i.kf = fadd float %i.ke, %i.ju
  %i.kg = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 poison, i32 0>
  %i.kh = insertelement <2 x float> %i.kg, float %i.jv, i64 0
  %i.ki = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 poison, i32 1>
  %i.kj = insertelement <2 x float> %i.ki, float %i.jw, i64 0
  %i.kk = fadd <2 x float> %i.kh, %i.kj
  %i.kl = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 poison, i32 2>
  %i.km = insertelement <2 x float> %i.kl, float %i.jy, i64 0
  %i.kn = fadd <2 x float> %i.km, %i.kk
  %i.ko = fadd <2 x float> %i.kn, %.sroa.052.0.copyload
  %i.kp = fadd float %i.kf, %.sroa.6.0.copyload
  %i.kq = getelementptr inbounds nuw i8, ptr %i.am, i64 52
  %i.kr = load i32, ptr %i.kq, align 4, !tbaa !120
  %i.ks = and i32 %i.kr, 4096
  %.not = icmp eq i32 %i.ks, 0
  br i1 %.not, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  %.sroa.066.0.copyload = load <2 x float>, ptr %i.am, align 4
  %i.kt = insertelement <2 x float> poison, float %i.g, i64 0
  %i.ku = shufflevector <2 x float> %i.kt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.kv = fmul <2 x float> %i.ku, %i.jj
  %i.kw = fsub <2 x float> %.sroa.066.0.copyload, %i.kv
  %.sroa.663.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 20 ; 2 uses
  %.sroa.663.0.copyload = load float, ptr %.sroa.663.0..sroa_idx, align 4, !tbaa !90
  %i.kx = getelementptr inbounds nuw i8, ptr %0, i64 256
  %.sroa.0291.0.copyload = load <2 x float>, ptr %i.kx, align 4 ; 5 uses
  %i.ky = shufflevector <2 x float> %.sroa.0291.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2292.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 264
  %.sroa.2292.0.copyload = load float, ptr %.sroa.2292.0..sroa_idx, align 4 ; 4 uses
  %i.kz = insertelement <3 x float> %i.ky, float %.sroa.2292.0.copyload, i64 2
  %i.la = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <3 x i32> <i32 1, i32 2, i32 0>
  %.sroa.2.12.vec.extract.i = extractelement <2 x float> %i.bx, i64 1
  %i.lb = fmul float %.sroa.2.12.vec.extract.i, %.sroa.2292.0.copyload
  %i.lc = insertelement <3 x float> poison, float %i.lb, i64 0
  %i.ld = fmul <2 x float> %i.by, %.sroa.0291.0.copyload
  %i.le = shufflevector <2 x float> %i.ld, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %i.lf = shufflevector <3 x float> %i.lc, <3 x float> %i.le, <3 x i32> <i32 0, i32 3, i32 4>
  %i.lg = shufflevector <2 x float> %.sroa.0291.0.copyload, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.lh = insertelement <2 x float> %i.lg, float %.sroa.2292.0.copyload, i64 1
  %i.li = fmul <2 x float> %i.bv, %i.lh
  %i.lj = fmul <2 x float> %i.bz, %.sroa.0291.0.copyload
  %i.lk = fsub <2 x float> %i.li, %i.lj
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %i.bx, %.sroa.0291.0.copyload
  %i.lm = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.ln = fmul float %.sroa.09.0.vec.extract.i.i, %.sroa.2292.0.copyload
  %i.lo = fsub float %i.lm, %i.ln
  %i.lp = insertelement <3 x float> %i.ll, float %i.lo, i64 2
  %i.lq = fadd <3 x float> %i.lf, %i.lp           ; 2 uses
  %i.lr = fmul <3 x float> %i.la, %i.lq
  %i.ls = shufflevector <2 x float> %i.bv, <2 x float> %i.bx, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lt = shufflevector <3 x float> %i.lq, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.lu = fmul <3 x float> %i.ls, %i.lt
  %i.lv = fsub <3 x float> %i.lr, %i.lu
  %i.lw = fmul <3 x float> %i.lv, splat (float 2.000000e+00)
  %i.lx = fadd <3 x float> %i.kz, %i.lw           ; 2 uses
  %i.ly = getelementptr inbounds nuw i8, ptr %i.bj, i64 24
  %.sroa.0267.0.copyload = load <2 x float>, ptr %i.ly, align 4
  %i.lz = shufflevector <2 x float> %.sroa.0267.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2268.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.bj, i64 32
  %.sroa.2268.0.copyload = load float, ptr %.sroa.2268.0..sroa_idx, align 4
  %i.ma = insertelement <3 x float> %i.lz, float %.sroa.2268.0.copyload, i64 2
  %i.mb = getelementptr inbounds nuw i8, ptr %i.am, i64 24
  %.sroa.0265.0.copyload = load <2 x float>, ptr %i.mb, align 4
  %i.mc = shufflevector <2 x float> %.sroa.0265.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2266.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 32
  %.sroa.2266.0.copyload = load float, ptr %.sroa.2266.0..sroa_idx, align 4
  %i.md = insertelement <3 x float> %i.mc, float %.sroa.2266.0.copyload, i64 2
  %i.me = fsub <3 x float> %i.ma, %i.md
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 348
  %.sroa.0257.0.copyload = load <2 x float>, ptr %i.mf, align 4
  %i.mg = shufflevector <2 x float> %.sroa.0257.0.copyload, <2 x float> poison, <3 x i32> <i32 0, i32 1, i32 poison>
  %.sroa.2258.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 356
  %.sroa.2258.0.copyload = load float, ptr %.sroa.2258.0..sroa_idx, align 4
  %i.mh = insertelement <3 x float> %i.mg, float %.sroa.2258.0.copyload, i64 2
  %i.mi = fadd <3 x float> %i.me, %i.mh
  %i.mj = shufflevector <4 x float> %i.ev, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mk = fsub <3 x float> %i.mj, %i.lx
  %i.ml = fadd <3 x float> %i.mi, %i.mk
  %i.mm = fadd <3 x float> %i.lx, %i.ml           ; 6 uses
  %i.mn = shufflevector <4 x float> %i.fx, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mo = fmul <3 x float> %i.mm, %i.mn
  %i.mp = shufflevector <4 x float> %i.fx, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.mq = fmul <3 x float> %i.mm, %i.mp
  %i.mr = shufflevector <3 x float> %i.mq, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.ms = fsub <3 x float> %i.mo, %i.mr
  %i.mt = shufflevector <2 x float> %i.id, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mu = fmul <3 x float> %i.ms, %i.mt
  %i.mv = shufflevector <4 x float> %i.gu, <4 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %i.mw = fmul <3 x float> %i.mm, %i.mv
  %3 = shufflevector <4 x float> %i.gu, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %4 = fmul <3 x float> %i.mm, %3
  %5 = shufflevector <3 x float> %4, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.mx = fsub <3 x float> %i.mw, %5
  %i.my = shufflevector <2 x float> %i.if, <2 x float> poison, <3 x i32> zeroinitializer
  %i.mz = fmul <3 x float> %i.mx, %i.my
  %i.na = fadd <3 x float> %i.mu, %i.mz
  %i.nb = shufflevector <3 x float> %i.mm, <3 x float> poison, <3 x i32> <i32 2, i32 0, i32 1>
  %6 = shufflevector <4 x float> %i.hr, <4 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.nc = fmul <3 x float> %i.nb, %6
  %7 = shufflevector <4 x float> %i.hr, <4 x float> poison, <3 x i32> <i32 0, i32 1, i32 2>
  %i.nd = fmul <3 x float> %i.mm, %7
  %i.ne = fsub <3 x float> %i.nc, %i.nd
  %8 = shufflevector <3 x float> %i.ne, <3 x float> poison, <3 x i32> <i32 1, i32 2, i32 0>
  %i.nf = insertelement <3 x float> poison, float %i.ig, i64 0
  %i.ng = shufflevector <3 x float> %i.nf, <3 x float> poison, <3 x i32> zeroinitializer
  %i.nh = fmul <3 x float> %8, %i.ng
  %i.ni = fadd <3 x float> %i.na, %i.nh
  %i.nj = shufflevector <2 x float> %.sroa.095.0.copyload, <2 x float> poison, <3 x i32> <i32 poison, i32 0, i32 1>
  %i.nk = insertelement <3 x float> %i.nj, float %.sroa.296.0.copyload, i64 0
  %i.nl = fadd <3 x float> %i.ni, %i.nk           ; 6 uses
  %i.nm = extractelement <3 x float> %i.nl, i64 0
  %i.nn = fmul float %.sroa.11577.0.copyload, %i.nm
  %i.no = extractelement <3 x float> %i.nl, i64 1
  %i.np = fmul float %.sroa.5571.0.copyload, %i.no
  %i.nq = extractelement <3 x float> %i.nl, i64 2
  %i.nr = fmul float %.sroa.8574.0.copyload, %i.nq
  %i.ns = fadd float %i.np, %i.nr
  %i.nt = fadd float %i.nn, %i.ns
  %i.nu = fsub float %.sroa.663.0.copyload, %i.nt
  %i.nv = getelementptr inbounds nuw i8, ptr %i.am, i64 12 ; 2 uses
  %.sroa.061.0.copyload = load <2 x float>, ptr %i.nv, align 4
  %i.nw = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> zeroinitializer
  %i.nx = fmul <2 x float> %i.m, %i.nw
  %i.ny = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.nz = fmul <2 x float> %i.k, %i.ny
  %i.oa = shufflevector <3 x float> %i.nl, <3 x float> poison, <2 x i32> <i32 2, i32 2>
  %i.ob = fmul <2 x float> %i.l, %i.oa
  %i.oc = fadd <2 x float> %i.nz, %i.ob
  %i.od = fadd <2 x float> %i.nx, %i.oc
  %i.oe = fsub <2 x float> %.sroa.061.0.copyload, %i.od
  %.sroa.668.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.am, i64 8 ; 2 uses
  %.sroa.668.0.copyload = load float, ptr %.sroa.668.0..sroa_idx, align 4, !tbaa !90
  %i.of = fmul float %i.g, %i.im
  %i.og = fsub float %.sroa.668.0.copyload, %i.of
  store <2 x float> %i.kw, ptr %i.am, align 4
  store float %i.og, ptr %.sroa.668.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.oe, ptr %i.nv, align 4
  store float %i.nu, ptr %.sroa.663.0..sroa_idx, align 4, !tbaa !90
  br label %bb.s

bb.s:                                             ; preds = %bb.r, %bb.q
  %i.oh = getelementptr inbounds nuw i8, ptr %i.bj, i64 52
  %i.oi = load i32, ptr %i.oh, align 4, !tbaa !120
  %i.oj = and i32 %i.oi, 4096
  %.not349 = icmp eq i32 %i.oj, 0
  br i1 %.not349, label %bb.u, label %bb.t

bb.t:                                             ; preds = %bb.s
  store <2 x float> %i.jn, ptr %i.bj, align 4
  store float %i.jp, ptr %.sroa.658.0..sroa_idx, align 4, !tbaa !90
  store <2 x float> %i.ko, ptr %i.dz, align 4
  store float %i.kp, ptr %.sroa.6.0..sroa_idx, align 4, !tbaa !90
  br label %bb.u

bb.u:                                             ; preds = %bb.t, %bb.s
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: nounwind uwtable
define hidden void @b3SolvePrismaticJoint(ptr noundef %0, ptr noundef %1, i1 noundef zeroext %2) local_unnamed_addr #5 !func_sanitize !147 {
bb.a:
  %3 = alloca %struct.b3BodyState, align 4        ; 6 uses
  %i.a = icmp ne ptr %0, null, !nosanitize !10
  %i.b = ptrtoint ptr %0 to i64, !nosanitize !10  ; 2 uses
  %i.c = and i64 %i.b, 3, !nosanitize !10
  %i.d = icmp eq i64 %i.c, 0, !nosanitize !10
  %i.e = and i1 %i.a, %i.d, !nosanitize !10
  br i1 %i.e, label %bb.c, label %bb.b, !prof !11, !nosanitize !10

bb.b:                                             ; preds = %bb.a
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @82, i64 %i.b) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.c:                                             ; preds = %bb.a
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 76
  %i.h = load <2 x float>, ptr %i.f, align 4, !tbaa !90 ; 10 uses
  %i.i = load float, ptr %i.g, align 4, !tbaa !113 ; 7 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 80
  %.sroa.132557.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 84
  %.sroa.232567.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 88
  %.sroa.332577.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 92
  %.sroa.532597.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 100
  %.sroa.632607.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 116
  %.sroa.23.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 124
  %.sroa.43.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 132
  %.sroa.53.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 136
  %.sroa.73.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 144
  %.sroa.83.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 148
  %i.l = load <16 x float>, ptr %i.j, align 4, !tbaa !90 ; 35 uses
  %.sroa.23.0.copyload = load float, ptr %.sroa.23.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.m = load <2 x float>, ptr %i.k, align 4, !tbaa !90 ; 9 uses
  %i.n = load <2 x float>, ptr %.sroa.632607.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.532597.0.copyload = load float, ptr %.sroa.532597.0..sroa_idx, align 4, !tbaa !90 ; 7 uses
  %.sroa.332577.0.copyload = load float, ptr %.sroa.332577.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  %i.o = load <2 x float>, ptr %.sroa.43.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %i.p = load <2 x float>, ptr %.sroa.53.0..sroa_idx, align 4, !tbaa !90 ; 11 uses
  %i.q = load <2 x float>, ptr %.sroa.132557.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.232567.0.copyload = load float, ptr %.sroa.232567.0..sroa_idx, align 4, !tbaa !90 ; 4 uses
  %i.r = load <2 x float>, ptr %.sroa.73.0..sroa_idx, align 4, !tbaa !90 ; 10 uses
  %.sroa.83.0.copyload = load float, ptr %.sroa.83.0..sroa_idx, align 4, !tbaa !90 ; 8 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 4 dereferenceable(56) %3, i8 0, i64 56, i1 false)
  %i.s = getelementptr inbounds nuw i8, ptr %3, i64 48
  store float 1.000000e+00, ptr %i.s, align 4
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 184 ; 2 uses
  %i.u = getelementptr inbounds nuw i8, ptr %0, i64 248
  %i.v = load i32, ptr %i.u, align 4, !tbaa !115  ; 3 uses
  %i.w = icmp eq i32 %i.v, -1
  br i1 %i.w, label %bb.h, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.x = icmp ne ptr %1, null, !nosanitize !10
  %i.y = ptrtoint ptr %1 to i64, !nosanitize !10  ; 2 uses
  %i.z = and i64 %i.y, 7, !nosanitize !10
  %i.aa = icmp eq i64 %i.z, 0, !nosanitize !10
  %i.ab = and i1 %i.x, %i.aa, !nosanitize !10
  br i1 %i.ab, label %bb.f, label %bb.e, !prof !11, !nosanitize !10

bb.e:                                             ; preds = %bb.d
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @83, i64 %i.y) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.f:                                             ; preds = %bb.d
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !118 ; 3 uses
  %i.ae = sext i32 %i.v to i64                    ; 2 uses
  %i.af = getelementptr inbounds [56 x i8], ptr %i.ad, i64 %i.ae
  %i.ag = mul nsw i64 %i.ae, 56
  %i.ah = ptrtoint ptr %i.ad to i64, !nosanitize !10 ; 3 uses
  %i.ai = add i64 %i.ag, %i.ah, !nosanitize !10   ; 3 uses
  %i.aj = icmp ne ptr %i.ad, null, !nosanitize !10
  %i.ak = icmp eq i64 %i.ai, 0
  %i.al = xor i1 %i.aj, %i.ak
  %i.am = icmp uge i64 %i.ai, %i.ah, !nosanitize !10
  %i.an = icmp slt i32 %i.v, 0
  %i.ao = xor i1 %i.an, %i.am
  %i.ap = and i1 %i.al, %i.ao, !nosanitize !10
  br i1 %i.ap, label %bb.h, label %bb.g, !prof !11, !nosanitize !10

bb.g:                                             ; preds = %bb.f
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @84, i64 %i.ah, i64 %i.ai) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.h:                                             ; preds = %bb.f, %bb.c
  %i.aq = phi ptr [ %3, %bb.c ], [ %i.af, %bb.f ] ; 12 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 252
  %i.as = load i32, ptr %i.ar, align 4, !tbaa !116 ; 3 uses
  %i.at = icmp eq i32 %i.as, -1
  br i1 %i.at, label %bb.m, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.au = icmp ne ptr %1, null, !nosanitize !10
  %i.av = ptrtoint ptr %1 to i64, !nosanitize !10 ; 2 uses
  %i.aw = and i64 %i.av, 7, !nosanitize !10
  %i.ax = icmp eq i64 %i.aw, 0, !nosanitize !10
  %i.ay = and i1 %i.au, %i.ax, !nosanitize !10
  br i1 %i.ay, label %bb.k, label %bb.j, !prof !11, !nosanitize !10

bb.j:                                             ; preds = %bb.i
  tail call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @85, i64 %i.av) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.k:                                             ; preds = %bb.i
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 72
  %i.ba = load ptr, ptr %i.az, align 8, !tbaa !118 ; 3 uses
  %i.bb = sext i32 %i.as to i64                   ; 2 uses
  %i.bc = getelementptr inbounds [56 x i8], ptr %i.ba, i64 %i.bb
  %i.bd = mul nsw i64 %i.bb, 56
  %i.be = ptrtoint ptr %i.ba to i64, !nosanitize !10 ; 3 uses
  %i.bf = add i64 %i.bd, %i.be, !nosanitize !10   ; 3 uses
  %i.bg = icmp ne ptr %i.ba, null, !nosanitize !10
  %i.bh = icmp eq i64 %i.bf, 0
  %i.bi = xor i1 %i.bg, %i.bh
  %i.bj = icmp uge i64 %i.bf, %i.be, !nosanitize !10
  %i.bk = icmp slt i32 %i.as, 0
  %i.bl = xor i1 %i.bk, %i.bj
  %i.bm = and i1 %i.bi, %i.bl, !nosanitize !10
  br i1 %i.bm, label %bb.m, label %bb.l, !prof !11, !nosanitize !10

bb.l:                                             ; preds = %bb.k
  tail call void @__ubsan_handle_pointer_overflow_abort(ptr nonnull @86, i64 %i.be, i64 %i.bf) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.m:                                             ; preds = %bb.k, %bb.h
  %i.bn = phi ptr [ %3, %bb.h ], [ %i.bc, %bb.k ] ; 12 uses
  %i.bo = icmp ne ptr %i.aq, null, !nosanitize !10
  %i.bp = ptrtoint ptr %i.aq to i64, !nosanitize !10 ; 2 uses
  %i.bq = and i64 %i.bp, 3, !nosanitize !10
  %i.br = icmp eq i64 %i.bq, 0, !nosanitize !10
  %i.bs = and i1 %i.bo, %i.br, !nosanitize !10
  br i1 %i.bs, label %bb.o, label %bb.n, !prof !11, !nosanitize !10

bb.n:                                             ; preds = %bb.m
  call void @__ubsan_handle_type_mismatch_v1_abort(ptr nonnull @87, i64 %i.bp) #8, !nosanitize !10
  unreachable, !nosanitize !10

bb.o:                                             ; preds = %bb.m
  %.sroa.01350.0.copyload = load <2 x float>, ptr %i.aq, align 4 ; 3 uses
  %.sroa.191361.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 8 ; 2 uses
  %.sroa.191361.0.copyload = load float, ptr %.sroa.191361.0..sroa_idx, align 4, !tbaa !90 ; 2 uses
  %i.bt = getelementptr inbounds nuw i8, ptr %i.aq, i64 12 ; 2 uses
  %.sroa.01334.0.copyload = load <2 x float>, ptr %i.bt, align 4 ; 3 uses
  %.sroa.221347.0..sroa_idx = getelementptr inbounds nuw i8, ptr %i.aq, i64 20 ; 2 uses
end_hunk_0
