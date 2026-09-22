Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/darktable/original/introspection_colorbalancergb?download=true
inline.NumInlined: 213
inline.NumDeleted: 80
loop-unroll.NumCompletelyUnrolled: 45
loop-unroll.NumRuntimeUnrolled: 3
loop-unroll.NumUnrolled: 49
begin_hunk_0_@process:bb.a
  %i.km = fadd reassoc nsz arcp contract afn float %i.kl, %i.kb
  %i.kn = fadd reassoc nsz arcp contract afn float %i.km, %i.kf
  %i.ko = fadd reassoc nsz arcp contract afn float %i.kn, %i.kd
  %i.kp = fadd reassoc nsz arcp contract afn float %i.ko, %i.kk ; 2 uses
  %i.kq = fcmp reassoc nsz arcp contract afn ogt float %i.kp, 0.000000e+00
  %i.kr = select reassoc nsz arcp contract afn i1 %i.kq, float %i.kp, float 0.000000e+00
  %i.ks = fmul reassoc nsz arcp contract afn float %i.kr, %i.ih ; 4 uses
  %i.kt = extractelement <2 x float> %i.jw, i64 0 ; 3 uses
  %i.ku = fmul reassoc nsz arcp contract afn float %i.ks, %i.kt
  %i.kv = fadd reassoc nsz arcp contract afn float %i.ku, f0x3E604727 ; 2 uses
  %i.kw = extractelement <2 x float> %i.jx, i64 1 ; 3 uses
  %i.kx = fmul reassoc nsz arcp contract afn float %i.ks, %i.kw
  %i.ky = fadd reassoc nsz arcp contract afn float %i.kx, 5.437140e-01 ; 2 uses
  %i.kz = fcmp reassoc nsz arcp contract afn olt float %i.kv, 0.000000e+00
  %i.la = fdiv reassoc nsz arcp contract afn float f0xBE604727, %i.kt
  %i.lb = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.la, float %i.ks)
  %.0.i = select nsz i1 %i.kz, float %i.lb, float %i.ks ; 2 uses
  %i.lc = fcmp reassoc nsz arcp contract afn olt float %i.ky, 0.000000e+00
  %i.ld = fdiv reassoc nsz arcp contract afn float -5.437140e-01, %i.kw
  %i.le = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.ld, float %.0.i)
  %.1.i = select nsz i1 %i.lc, float %i.le, float %.0.i ; 2 uses
  %i.lf = fadd reassoc nsz arcp contract afn float %i.ky, %i.kv
  %i.lg = fcmp reassoc nsz arcp contract afn ogt float %i.lf, 1.000000e+00
  br i1 %i.lg, label %bb.g, label %gamut_check_Yrg.exit

bb.g:                                             ; preds = %bb.f
  %i.lh = fadd reassoc nsz arcp contract afn float %i.kw, %i.kt
  %i.li = fdiv reassoc nsz arcp contract afn float f0x3E72F57C, %i.lh
  %i.lj = tail call reassoc nsz arcp contract afn float @llvm.minnum.f32(float %i.li, float %.1.i)
  br label %gamut_check_Yrg.exit

gamut_check_Yrg.exit:                             ; preds = %bb.f, %bb.g
  %.2.i = phi nsz float [ %i.lj, %bb.g ], [ %.1.i, %bb.f ]
  %i.lk = insertelement <2 x float> poison, float %.2.i, i64 0
  %i.ll = shufflevector <2 x float> %i.lk, <2 x float> poison, <2 x i32> zeroinitializer
  %i.lm = fmul reassoc nsz arcp contract afn <2 x float> %i.ll, %i.jy
  %i.ln = load <4 x float>, ptr %i.ds, align 16, !tbaa !12
  %i.lo = shufflevector <2 x float> %i.je, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.lp = fmul reassoc nsz arcp contract afn <4 x float> %i.ln, %i.lo
  %i.lq = load float, ptr %i.es, align 8, !tbaa !130
  %i.lr = fadd reassoc nsz arcp contract afn <2 x float> %i.lm, <float f0x3E604727, float 5.437140e-01> ; 3 uses
  %i.ls = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.lr) ; 2 uses
  %i.lt = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.ls ; 2 uses
  %i.lu = fmul reassoc nsz arcp contract afn <2 x float> %i.lr, <float 5.000000e-02, float 3.800000e-01>
  %i.lv = shufflevector <2 x float> %i.lu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.lw = fmul reassoc nsz arcp contract afn <2 x float> %i.lr, <float f0x3F733333, float 6.200000e-01>
  %i.lx = fadd reassoc nsz arcp contract afn <2 x float> %i.lw, %i.lv
  %i.ly = insertelement <2 x float> poison, float %i.lt, i64 0
  %i.lz = shufflevector <2 x float> %i.ly, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ma = fmul reassoc nsz arcp contract afn <2 x float> %i.lz, <float 0.000000e+00, float 3.000000e-02>
  %i.mb = fadd reassoc nsz arcp contract afn <2 x float> %i.lx, %i.ma ; 3 uses
  %i.mc = fmul reassoc nsz arcp contract afn float %i.ls, 0.000000e+00
  %i.md = fmul reassoc nsz arcp contract afn float %i.lt, 9.700000e-01
  %i.me = fadd reassoc nsz arcp contract afn float %i.md, %i.mc
  %i.mf = extractelement <2 x float> %i.mb, i64 0
  %i.mg = fmul reassoc nsz arcp contract afn float %i.mf, f0x3F309D77
  %i.mh = extractelement <2 x float> %i.mb, i64 1
  %i.mi = fmul reassoc nsz arcp contract afn float %i.mh, f0x3EB2573F
  %i.mj = fadd reassoc nsz arcp contract afn float %i.mg, %i.mi ; 2 uses
  %i.mk = fcmp reassoc nsz arcp contract afn oeq float %i.mj, 0.000000e+00
  %i.ml = fdiv reassoc nsz arcp contract afn float %i.io, %i.mj
  %i.mm = select reassoc nsz arcp contract afn i1 %i.mk, float 0.000000e+00, float %i.ml ; 2 uses
  %i.mn = insertelement <2 x float> poison, float %i.mm, i64 0
  %i.mo = shufflevector <2 x float> %i.mn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.mp = fmul reassoc nsz arcp contract afn <2 x float> %i.mo, %i.mb ; 3 uses
  %i.mq = fmul reassoc nsz arcp contract afn float %i.mm, %i.me ; 2 uses
  %i.mr = fmul reassoc nsz arcp contract afn <2 x float> %i.mp, <float f0xBDB3A62D, float f0xBF2AAAAB>
  %i.ms = shufflevector <2 x float> %i.mr, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.mt = fmul reassoc nsz arcp contract afn <2 x float> %i.mp, <float f0x3F8B3A63, float f0x3FD55555>
  %i.mu = fadd reassoc nsz arcp contract afn <2 x float> %i.mt, %i.ms
  %i.mv = tail call reassoc nsz arcp contract afn float @llvm.vector.reduce.fadd.v2f32(float 0.000000e+00, <2 x float> %i.mp) ; 2 uses
  %i.mw = fmul reassoc nsz arcp contract afn float %i.mq, f0x3F83F572
  %i.mx = insertelement <4 x float> poison, float %i.mq, i64 0
  %i.my = insertelement <4 x float> %i.mx, float %i.mv, i64 2
  %i.mz = shufflevector <4 x float> %i.my, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 2, i32 0> ; 2 uses
  %i.na = insertelement <4 x float> <float f0x3CA8E841, float f0xBD53224F, float 0.000000e+00, float poison>, float %i.mv, i64 3 ; 2 uses
  %i.nb = fmul reassoc nsz arcp contract afn <4 x float> %i.mz, %i.na
  %i.nc = fadd reassoc nsz arcp contract afn <4 x float> %i.mz, %i.na
  %i.nd = shufflevector <4 x float> %i.nb, <4 x float> %i.nc, <4 x i32> <i32 0, i32 1, i32 2, i32 7> ; 2 uses
  %i.ne = insertelement <4 x float> <float poison, float poison, float poison, float 0.000000e+00>, float %i.mw, i64 2
  %i.nf = shufflevector <2 x float> %i.mu, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ng = shufflevector <4 x float> %i.nf, <4 x float> %i.ne, <4 x i32> <i32 0, i32 1, i32 6, i32 7> ; 2 uses
  %i.nh = fadd reassoc nsz arcp contract afn <4 x float> %i.nd, %i.ng
  %i.ni = fmul reassoc nsz arcp contract afn <4 x float> %i.nd, %i.ng
  %i.nj = shufflevector <4 x float> %i.nh, <4 x float> %i.ni, <4 x i32> <i32 0, i32 1, i32 2, i32 7>
  %i.nk = load <4 x float>, ptr %i.c, align 16, !tbaa !12
  %i.nl = fadd reassoc nsz arcp contract afn <4 x float> %i.nj, %i.nk
  %i.nm = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.nn = fadd reassoc nsz arcp contract afn <4 x float> %i.lp, %i.nm
  %i.no = shufflevector <2 x float> %i.jh, <2 x float> poison, <4 x i32> zeroinitializer
  %i.np = fmul reassoc nsz arcp contract afn <4 x float> %i.nn, %i.no
  %i.nq = load <4 x float>, ptr %i.dr, align 16, !tbaa !12
  %i.nr = shufflevector <2 x float> %i.je, <2 x float> poison, <4 x i32> zeroinitializer
  %i.ns = fmul reassoc nsz arcp contract afn <4 x float> %i.nq, %i.nr
  %i.nt = fadd reassoc nsz arcp contract afn <4 x float> %i.np, %i.ns
  %i.nu = fmul reassoc nsz arcp contract afn <4 x float> %i.nt, %i.nl ; 3 uses
  %i.nv = extractelement <4 x float> %i.nu, i64 0
  %i.nw = fcmp reassoc nsz arcp contract afn olt float %i.nv, 0.000000e+00
  %i.nx = tail call reassoc nsz arcp contract afn <4 x float> @llvm.fabs.v4f32(<4 x float> %i.nu)
  %i.ny = insertelement <4 x float> poison, float %i.lq, i64 0
  %i.nz = shufflevector <4 x float> %i.ny, <4 x float> poison, <4 x i32> zeroinitializer
  %i.oa = fdiv reassoc nsz arcp contract afn <4 x float> %i.nx, %i.nz
  %i.ob = bitcast <4 x float> %i.oa to <4 x i32>  ; 2 uses
  %i.oc = and <4 x i32> %i.ob, splat (i32 8388607)
  %i.od = or disjoint <4 x i32> %i.oc, splat (i32 1065353216)
  %i.oe = bitcast <4 x i32> %i.od to <4 x float>  ; 5 uses
  %i.of = lshr <4 x i32> %i.ob, splat (i32 23)
  %i.og = and <4 x i32> %i.of, splat (i32 255)
  %i.oh = add nsw <4 x i32> %i.og, splat (i32 -127)
  %i.oi = sitofp <4 x i32> %i.oh to <4 x float>
  %i.oj = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.oe, splat (float f0x3D74552F)
  %i.ok = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.oj, splat (float f0xBEEE7397)
  %i.ol = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.ok, %i.oe
  %i.om = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.ol, splat (float f0x3FBD96DD)
  %i.on = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.om, %i.oe
  %i.oo = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.on, splat (float f0xC02153F6)
  %i.op = fmul reassoc nnan nsz arcp contract afn <4 x float> %i.oo, %i.oe
  %i.oq = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.op, splat (float f0x4038D96C)
  %i.or = fadd reassoc nnan nsz arcp contract afn <4 x float> %i.oe, splat (float -1.000000e+00)
  %i.os = fmul reassoc nsz arcp contract afn <4 x float> %i.oq, %i.or
  %i.ot = fadd reassoc nsz arcp contract afn <4 x float> %i.os, %i.oi
  %i.ou = load <4 x float>, ptr %i.dt, align 16, !tbaa !12
  %i.ov = fmul reassoc nsz arcp contract afn <4 x float> %i.ot, %i.ou
  %i.ow = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.min.ps(<4 x float> %i.ov, <4 x float> splat (float 1.290000e+02))
  %i.ox = tail call reassoc nsz arcp contract afn <4 x float> @llvm.x86.sse.max.ps(<4 x float> %i.ow, <4 x float> splat (float f0xC2FDFFFF)) ; 3 uses
  %i.oy = fadd reassoc nsz arcp contract afn <4 x float> %i.ox, splat (float -5.000000e-01)
  %i.oz = tail call <4 x i32> @llvm.x86.sse2.cvtps2dq(<4 x float> %i.oy)
  %i.pa = sitofp reassoc nsz arcp contract afn <4 x i32> %i.oz to <4 x float> ; 3 uses
  %.sroa.014.0.vec.extract.i.i = extractelement <4 x float> %i.pa, i64 0
  %foldExtExtBinop766 = fsub reassoc nsz arcp contract afn <4 x float> %i.ox, %i.pa
  %i.pb = extractelement <4 x float> %foldExtExtBinop766, i64 0 ; 4 uses
  %i.pc = fptosi float %.sroa.014.0.vec.extract.i.i to i32
  %i.pd = shl i32 %i.pc, 23
  %i.pe = add i32 %i.pd, 1065353216
  %i.pf = fmul reassoc nsz arcp contract afn float %i.pb, f0x3C5DBE69
  %i.pg = fadd reassoc nsz arcp contract afn float %i.pf, f0x3D5509F9
  %i.ph = fmul reassoc nsz arcp contract afn float %i.pg, %i.pb
  %i.pi = fadd reassoc nsz arcp contract afn float %i.ph, f0x3E773CC5
  %i.pj = fmul reassoc nsz arcp contract afn float %i.pi, %i.pb
  %i.pk = fadd reassoc nsz arcp contract afn float %i.pj, f0x3F3168B3
  %i.pl = fmul reassoc nsz arcp contract afn float %i.pk, %i.pb
  %i.pm = fadd reassoc nsz arcp contract afn float %i.pl, f0x3F800016
  %i.pn = bitcast i32 %i.pe to float
  %i.po = fmul reassoc nsz arcp contract afn float %i.pm, %i.pn ; 2 uses
  %i.pp = load float, ptr %i.es, align 8, !tbaa !130 ; 4 uses
  %i.pq = fneg reassoc nsz arcp contract afn float %i.po
  %i.pr = select reassoc nsz arcp contract afn i1 %i.nw, float %i.pq, float %i.po
  %i.ps = fmul reassoc nsz arcp contract afn float %i.pr, %i.pp ; 3 uses
  %i.pt = fmul reassoc nsz arcp contract afn float %i.ps, f0x3F733333
  %i.pu = fmul reassoc nsz arcp contract afn float %i.ps, 5.000000e-02
  %i.pv = shufflevector <4 x float> %i.nu, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.pw = fcmp reassoc nsz arcp contract afn olt <2 x float> %i.pv, zeroinitializer
  %i.px = shufflevector <4 x float> %i.ox, <4 x float> poison, <2 x i32> <i32 1, i32 2>
  %i.py = shufflevector <4 x float> %i.pa, <4 x float> poison, <2 x i32> <i32 1, i32 2> ; 2 uses
  %i.pz = fsub reassoc nsz arcp contract afn <2 x float> %i.px, %i.py ; 4 uses
  %i.qa = fptosi <2 x float> %i.py to <2 x i32>
  %i.qb = shl <2 x i32> %i.qa, splat (i32 23)
  %i.qc = add <2 x i32> %i.qb, splat (i32 1065353216)
  %i.qd = fmul reassoc nsz arcp contract afn <2 x float> %i.pz, splat (float f0x3C5DBE69)
  %i.qe = fadd reassoc nsz arcp contract afn <2 x float> %i.qd, splat (float f0x3D5509F9)
  %i.qf = fmul reassoc nsz arcp contract afn <2 x float> %i.qe, %i.pz
  %i.qg = fadd reassoc nsz arcp contract afn <2 x float> %i.qf, splat (float f0x3E773CC5)
  %i.qh = fmul reassoc nsz arcp contract afn <2 x float> %i.qg, %i.pz
  %i.qi = fadd reassoc nsz arcp contract afn <2 x float> %i.qh, splat (float f0x3F3168B3)
  %i.qj = fmul reassoc nsz arcp contract afn <2 x float> %i.qi, %i.pz
  %i.qk = fadd reassoc nsz arcp contract afn <2 x float> %i.qj, splat (float f0x3F800016)
  %i.ql = bitcast <2 x i32> %i.qc to <2 x float>
  %i.qm = fmul reassoc nsz arcp contract afn <2 x float> %i.qk, %i.ql ; 2 uses
  %i.qn = fneg reassoc nsz arcp contract afn <2 x float> %i.qm
  %i.qo = select <2 x i1> %i.pw, <2 x float> %i.qn, <2 x float> %i.qm
  %i.qp = insertelement <2 x float> poison, float %i.pp, i64 0
  %i.qq = shufflevector <2 x float> %i.qp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.qr = fmul reassoc nsz arcp contract afn <2 x float> %i.qo, %i.qq ; 3 uses
  %i.qs = extractelement <2 x float> %i.qr, i64 0 ; 2 uses
  %i.qt = fmul reassoc nsz arcp contract afn float %i.qs, 3.800000e-01
  %i.qu = fadd reassoc nsz arcp contract afn float %i.qt, %i.pt
  %i.qv = extractelement <2 x float> %i.qr, i64 1 ; 2 uses
  %i.qw = fmul reassoc nsz arcp contract afn float %i.qv, 0.000000e+00
  %i.qx = fadd reassoc nsz arcp contract afn float %i.qu, %i.qw ; 3 uses
  %i.qy = fmul reassoc nsz arcp contract afn <2 x float> %i.qr, <float 6.200000e-01, float 3.000000e-02> ; 2 uses
  %i.qz = extractelement <2 x float> %i.qy, i64 0
  %i.ra = fadd reassoc nsz arcp contract afn float %i.qz, %i.pu
  %i.rb = extractelement <2 x float> %i.qy, i64 1
  %i.rc = fadd reassoc nsz arcp contract afn float %i.ra, %i.rb ; 3 uses
  %i.rd = fadd reassoc nsz arcp contract afn float %i.qs, %i.ps
  %i.re = fmul reassoc nsz arcp contract afn float %i.rd, 0.000000e+00
  %i.rf = fmul reassoc nsz arcp contract afn float %i.qv, 9.700000e-01
  %i.rg = fadd reassoc nsz arcp contract afn float %i.re, %i.rf ; 2 uses
  %i.rh = fadd reassoc nsz arcp contract afn float %i.rc, %i.qx
  %i.ri = fadd reassoc nsz arcp contract afn float %i.rh, %i.rg ; 4 uses
  %i.rj = fcmp reassoc nsz arcp contract afn oeq float %i.ri, 0.000000e+00 ; 3 uses
  %i.rk = fdiv reassoc nsz arcp contract afn float %i.qx, %i.ri
  %i.rl = fdiv reassoc nsz arcp contract afn float %i.rc, %i.ri
  %i.rm = fdiv reassoc nsz arcp contract afn float %i.rg, %i.ri
  %.sroa.0.0.i339 = select nsz i1 %i.rj, float 0.000000e+00, float %i.rk ; 2 uses
  %.sroa.6.0.i340 = select nsz i1 %i.rj, float 0.000000e+00, float %i.rl ; 2 uses
  %.sroa.8.0.i341 = select nsz i1 %i.rj, float 0.000000e+00, float %i.rm ; 2 uses
  %i.rn = fmul reassoc nsz arcp contract afn float %i.qx, f0x3F309D77
  %i.ro = fmul reassoc nsz arcp contract afn float %i.rc, f0x3EB2573F
  %i.rp = fadd reassoc nsz arcp contract afn float %i.ro, %i.rn
  %6 = fdiv reassoc nsz arcp contract afn float %i.rp, %i.pp ; 2 uses
  %7 = fcmp reassoc nsz arcp contract afn ogt float %6, 0.000000e+00
  %spec.select = select reassoc nsz arcp contract afn i1 %7, float %6, float 0.000000e+00
  %8 = load float, ptr %i.fs, align 16, !tbaa !138
  %9 = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %spec.select, float %8)
  %i.rq = fmul reassoc nsz arcp contract afn float %9, %i.pp
  %10 = load float, ptr %i.ft, align 16, !tbaa !139 ; 2 uses
  %11 = fdiv reassoc nsz arcp contract afn float %i.rq, %10
  %12 = load float, ptr %i.fu, align 8, !tbaa !140
  %13 = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %11, float %12)
  %14 = fmul reassoc nsz arcp contract afn float %13, %10
  %15 = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i339, f0x3DB3A62D
  %16 = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i340, f0x3F2AAAAB
  %17 = fmul reassoc nsz arcp contract afn float %.sroa.6.0.i340, f0x3FD55555
  %18 = fmul reassoc nsz arcp contract afn float %.sroa.0.0.i339, f0x3F8B3A63
  %19 = fsub reassoc nsz arcp contract afn float %17, %15
  %20 = fsub reassoc nsz arcp contract afn float %18, %16
  %21 = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i341, f0xBD53224F
  %22 = fmul reassoc nsz arcp contract afn float %.sroa.8.0.i341, f0x3CA8E841
  %23 = fadd reassoc nsz arcp contract afn float %19, %21 ; 3 uses
  %24 = fadd reassoc nsz arcp contract afn float %20, %22 ; 3 uses
  %i.rr = fadd reassoc nsz arcp contract afn float %23, %24 ; 2 uses
  %i.rs = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.rr ; 3 uses
  %i.rt = fmul reassoc nsz arcp contract afn float %24, 5.000000e-02
  %i.ru = fmul reassoc nsz arcp contract afn float %23, 3.800000e-01
  %25 = fmul reassoc nsz arcp contract afn float %23, 6.200000e-01
  %i.rv = fmul reassoc nsz arcp contract afn float %24, f0x3F733333
  %i.rw = fadd reassoc nsz arcp contract afn float %25, %i.rt
  %26 = fadd reassoc nsz arcp contract afn float %i.ru, %i.rv
  %i.rx = fmul reassoc nsz arcp contract afn float %i.rs, 3.000000e-02
  %27 = fmul reassoc nsz arcp contract afn float %i.rs, 0.000000e+00
  %28 = fadd reassoc nsz arcp contract afn float %i.rw, %i.rx ; 2 uses
  %i.ry = fadd reassoc nsz arcp contract afn float %26, %27 ; 2 uses
  %i.rz = fmul reassoc nsz arcp contract afn float %i.rr, 0.000000e+00
  %i.sa = fmul reassoc nsz arcp contract afn float %i.rs, 9.700000e-01
  %i.sb = fadd reassoc nsz arcp contract afn float %i.sa, %i.rz
  %i.sc = fmul reassoc nsz arcp contract afn float %i.ry, f0x3F309D77
  %i.sd = fmul reassoc nsz arcp contract afn float %28, f0x3EB2573F
  %i.se = fadd reassoc nsz arcp contract afn float %i.sc, %i.sd ; 2 uses
  %i.sf = fcmp reassoc nsz arcp contract afn oeq float %i.se, 0.000000e+00
  %i.sg = fdiv reassoc nsz arcp contract afn float %14, %i.se
  %i.sh = select reassoc nsz arcp contract afn i1 %i.sf, float 0.000000e+00, float %i.sg ; 3 uses
  %i.si = fmul reassoc nsz arcp contract afn float %i.sh, %28 ; 4 uses
  %i.sj = fmul reassoc nsz arcp contract afn float %i.sh, %i.ry ; 4 uses
  %i.sk = fmul reassoc nsz arcp contract afn float %i.sh, %i.sb ; 4 uses
  %i.sl = fmul reassoc nsz arcp contract afn float %i.sj, f0x3F1E2ABC
  %i.sm = fmul reassoc nsz arcp contract afn float %i.si, f0x3ECABA8D
  %i.sn = fmul reassoc nsz arcp contract afn float %i.si, f0x3FA65D1D
  %29 = fmul reassoc nsz arcp contract afn float %i.sj, f0x3E007B1A
  %i.so = fmul reassoc nsz arcp contract afn float %i.sj, f0x3FE76ACB
  %i.sp = fmul reassoc nsz arcp contract afn float %i.si, f0x3E51B1F3
  %i.sq = fadd reassoc nsz arcp contract afn float %i.sm, %i.sl
  %i.sr = fmul reassoc nsz arcp contract afn float %i.sk, f0xBD2820C3
  %30 = fsub reassoc nsz arcp contract afn float %i.so, %i.sn
  %31 = fsub reassoc nsz arcp contract afn float %i.sp, %29
  %i.ss = fmul reassoc nsz arcp contract afn float %i.sk, f0x3EB21A8C
  %i.st = fmul reassoc nsz arcp contract afn float %i.sk, f0x3FDF122A
  %32 = fadd reassoc nsz arcp contract afn float %i.sq, %i.sr ; 2 uses
  %33 = fadd reassoc nsz arcp contract afn float %30, %i.ss ; 3 uses
  %i.su = fadd reassoc nsz arcp contract afn float %31, %i.st ; 4 uses
  %.sroa.0404.0.vec.insert = insertelement <4 x float> poison, float %33, i64 0
  %.sroa.0404.4.vec.insert = insertelement <4 x float> %.sroa.0404.0.vec.insert, float %32, i64 1
  %.sroa.0404.8.vec.insert = insertelement <4 x float> %.sroa.0404.4.vec.insert, float %i.su, i64 2
  %i.sv = fadd reassoc nsz arcp contract afn float %i.si, %i.sj
  %i.sw = fadd reassoc nsz arcp contract afn float %i.sv, %i.sk
  %i.sx = fmul reassoc nsz arcp contract afn float %i.sw, 0.000000e+00
  %.sroa.0404.12.vec.insert = insertelement <4 x float> %.sroa.0404.8.vec.insert, float %i.sx, i64 3 ; 3 uses
  %i.sy = load i32, ptr %i.fv, align 16, !tbaa !141
  %i.sz = icmp eq i32 %i.sy, 0
  br i1 %i.sz, label %bb.h, label %bb.r

bb.h:                                             ; preds = %gamut_check_Yrg.exit
  %i.ta = fmul reassoc nsz arcp contract afn float %33, 1.150000e+00
  %i.tb = fmul reassoc nsz arcp contract afn float %i.su, f0x3E199998
  %.reass596.a = fmul reassoc nsz arcp contract afn float %32, 6.600000e-01
  %.reass.a = fmul reassoc nsz arcp contract afn float %33, f0x3EAE147A
  %.reass595 = fmul reassoc nsz arcp contract afn float %i.su, 1.464800e-06
  %34 = insertelement <2 x float> poison, float %i.su, i64 0
  %35 = shufflevector <2 x float> %34, <2 x float> poison, <2 x i32> zeroinitializer
  %36 = fmul reassoc nsz arcp contract afn <2 x float> %35, <float 5.310080e-06, float f0x388C30BE>
  %i.tc = fadd reassoc nsz arcp contract afn float %.reass596.a, %.reass.a ; 2 uses
  %37 = fsub reassoc nsz arcp contract afn float %i.ta, %i.tb ; 2 uses
  %.reass600 = fmul reassoc nsz arcp contract afn float %37, f0x382DF9B4
  %.reass601 = fmul reassoc nsz arcp contract afn float %i.tc, f0x387344EC
  %i.td = fadd reassoc nsz arcp contract afn float %.reass600, %.reass595
  %i.te = fadd reassoc nsz arcp contract afn float %i.td, %.reass601
  %38 = insertelement <2 x float> poison, float %37, i64 0
  %39 = shufflevector <2 x float> %38, <2 x float> poison, <2 x i32> zeroinitializer
  %40 = fmul reassoc nsz arcp contract afn <2 x float> %39, <float -2.015100e-05, float -1.660080e-06>
  %41 = insertelement <2 x float> poison, float %i.tc, i64 0
  %42 = shufflevector <2 x float> %41, <2 x float> poison, <2 x i32> zeroinitializer
  %43 = fmul reassoc nsz arcp contract afn <2 x float> %42, <float f0x38EB0462, float 2.648000e-05>
  %44 = fadd reassoc nsz arcp contract afn <2 x float> %40, %36
  %45 = fadd reassoc nsz arcp contract afn <2 x float> %44, %43
  %i.tf = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.te, float 0.000000e+00)
  %i.tg = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tf, float f0x3E232000) ; 2 uses
  %i.th = fmul reassoc nnan nsz arcp contract afn float %i.tg, f0x4196D000
  %i.ti = fadd reassoc nsz arcp contract afn float %i.th, f0x3F560000
  %i.tj = fmul reassoc nnan nsz arcp contract afn float %i.tg, 1.868750e+01
  %i.tk = fadd reassoc nsz arcp contract afn float %i.tj, 1.000000e+00
  %i.tl = fdiv reassoc nsz arcp contract afn float %i.ti, %i.tk
  %i.tm = tail call reassoc nsz arcp contract afn float @llvm.pow.f32(float %i.tl, float f0x430608CD) ; 3 uses
  %46 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.maxnum.v2f32(<2 x float> %45, <2 x float> zeroinitializer)
  %47 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %46, <2 x float> splat (float f0x3E232000)) ; 2 uses
  %48 = fmul reassoc nnan nsz arcp contract afn <2 x float> %47, splat (float f0x4196D000)
  %49 = fadd reassoc nsz arcp contract afn <2 x float> %48, splat (float f0x3F560000)
  %50 = fmul reassoc nnan nsz arcp contract afn <2 x float> %47, splat (float 1.868750e+01)
  %51 = fadd reassoc nsz arcp contract afn <2 x float> %50, splat (float 1.000000e+00)
  %52 = fdiv reassoc nsz arcp contract afn <2 x float> %49, %51
  %53 = tail call reassoc nsz arcp contract afn <2 x float> @llvm.pow.v2f32(<2 x float> %52, <2 x float> splat (float f0x430608CD)) ; 3 uses
  %54 = extractelement <2 x float> %53, i64 0     ; 2 uses
  %i.tn = fadd reassoc nsz arcp contract afn float %54, %i.tm ; 2 uses
  %i.to = fmul reassoc nsz arcp contract afn float %i.tn, 5.000000e-01
  %55 = extractelement <2 x float> %53, i64 1     ; 2 uses
  %i.tp = fmul reassoc nsz arcp contract afn float %55, 0.000000e+00 ; 2 uses
  %i.tq = fadd reassoc nsz arcp contract afn float %i.to, %i.tp ; 2 uses
  %i.tr = fmul reassoc nsz arcp contract afn float %i.tm, 3.524000e+00
  %i.ts = fmul reassoc nsz arcp contract afn float %54, f0x40822279
  %i.tt = fsub reassoc nsz arcp contract afn float %i.tr, %i.ts
  %i.tu = fmul reassoc nsz arcp contract afn float %55, 5.427080e-01
  %i.tv = fadd reassoc nsz arcp contract afn float %i.tt, %i.tu ; 2 uses
  %i.tw = fmul reassoc nsz arcp contract afn float %i.tm, 1.990760e-01
  %56 = fmul reassoc nsz arcp contract afn <2 x float> %53, <float f0x3F8C63E9, float f0xBFA5DF3B> ; 2 uses
  %57 = extractelement <2 x float> %56, i64 0
  %i.tx = fadd reassoc nsz arcp contract afn float %57, %i.tw
  %58 = extractelement <2 x float> %56, i64 1
  %i.ty = fadd reassoc nsz arcp contract afn float %i.tx, %58 ; 2 uses
  %i.tz = fmul reassoc nsz arcp contract afn float %i.tn, 0.000000e+00
  %i.ua = fadd reassoc nsz arcp contract afn float %i.tz, %i.tp
  %i.ub = fmul reassoc nsz arcp contract afn float %i.tq, 4.400000e-01
  %i.uc = fmul reassoc nsz arcp contract afn float %i.tq, 5.600000e-01
  %i.ud = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.uc
  %i.ue = fdiv reassoc nsz arcp contract afn float %i.ub, %i.ud
  %i.uf = fadd reassoc nsz arcp contract afn float %i.ue, -1.629550e-11
  %i.ug = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.uf, float 0.000000e+00) ; 2 uses
  %i.uh = tail call reassoc nsz arcp contract afn float @hypotf(float noundef %i.tv, float noundef %i.ty) #25 ; 2 uses
  %i.ui = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.ty, float %i.tv) ; 2 uses
  %sincos320 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.ui) ; 2 uses
  %sin321 = extractvalue { float, float } %sincos320, 0 ; 5 uses
  %cos322 = extractvalue { float, float } %sincos320, 1 ; 5 uses
  %i.uj = tail call reassoc nsz arcp contract afn float @llvm.atan2.f32(float %i.uh, float %i.ug) ; 4 uses
  %sincos317 = tail call reassoc nsz arcp contract afn { float, float } @llvm.sincos.f32(float %i.uj) ; 2 uses
  %sin318 = extractvalue { float, float } %sincos317, 0 ; 3 uses
  %cos319 = extractvalue { float, float } %sincos317, 1 ; 3 uses
  %i.uk = load float, ptr %i.fz, align 16, !tbaa !242
  %i.ul = load float, ptr %i.dw, align 16, !tbaa !12
  %i.um = fmul reassoc nsz arcp contract afn float %i.ul, %i.jf
  %i.un = load float, ptr %i.ga, align 8, !tbaa !12
  %i.uo = fmul reassoc nsz arcp contract afn float %i.un, %i.jo
  %i.up = load float, ptr %i.gb, align 16, !tbaa !12
  %i.uq = fmul reassoc nsz arcp contract afn float %i.up, %i.jg
  %i.ur = fadd reassoc nsz arcp contract afn float %i.uk, 1.000000e+00
  %i.us = fadd reassoc nsz arcp contract afn float %i.ur, %i.um
  %i.ut = fadd reassoc nsz arcp contract afn float %i.us, %i.uo
  %i.uu = fadd reassoc nsz arcp contract afn float %i.ut, %i.uq
  %i.uv = load float, ptr %i.fw, align 16, !tbaa !243
  %i.uw = load float, ptr %i.dv, align 16, !tbaa !12
  %i.ux = fmul reassoc nsz arcp contract afn float %i.uw, %i.jf
  %i.uy = load float, ptr %i.fx, align 16, !tbaa !12
  %i.uz = fmul reassoc nsz arcp contract afn float %i.uy, %i.jo
  %i.va = load float, ptr %i.fy, align 8, !tbaa !12
  %i.vb = fmul reassoc nsz arcp contract afn float %i.va, %i.jg
  %i.vc = fadd reassoc nsz arcp contract afn float %i.ux, %i.uv
  %i.vd = fadd reassoc nsz arcp contract afn float %i.vc, %i.uz
  %i.ve = fadd reassoc nsz arcp contract afn float %i.vd, %i.vb
  %i.vf = fmul reassoc nsz arcp contract afn float %cos319, %i.ug
  %i.vg = fmul reassoc nsz arcp contract afn float %sin318, %i.uh
  %i.vh = fadd reassoc nsz arcp contract afn float %i.vf, %i.vg ; 2 uses
  %i.vi = fmul reassoc nsz arcp contract afn float %i.ve, %i.uj ; 2 uses
  %i.vj = fneg reassoc nsz arcp contract afn float %i.uj ; 2 uses
  %i.vk = fcmp reassoc nsz arcp contract afn ogt float %i.vi, %i.vj
  %. = select reassoc nsz arcp contract afn i1 %i.vk, float %i.vi, float %i.vj ; 2 uses
  %i.vl = fsub reassoc nsz arcp contract afn float f0x3FC90FDB, %i.uj ; 2 uses
  %i.vm = fcmp reassoc nsz arcp contract afn olt float %., %i.vl
  %i.vn = select reassoc nsz arcp contract afn i1 %i.vm, float %., float %i.vl
  %i.vo = fmul reassoc nsz arcp contract afn float %i.vn, %i.vh ; 2 uses
  %i.vp = fmul reassoc nsz arcp contract afn float %i.uu, %i.vh ; 2 uses
  %i.vq = fcmp reassoc nsz arcp contract afn ogt float %i.vp, 0.000000e+00
  %i.vr = select reassoc nsz arcp contract afn i1 %i.vq, float %i.vp, float 0.000000e+00 ; 2 uses
  %i.vs = fmul reassoc nsz arcp contract afn float %i.vr, %cos319
  %i.vt = fmul reassoc nsz arcp contract afn float %i.vo, %sin318
  %i.vu = fsub reassoc nsz arcp contract afn float %i.vs, %i.vt ; 3 uses
  %i.vv = fcmp reassoc nsz arcp contract afn ogt float %i.vu, 0.000000e+00 ; 2 uses
  %i.vw = select reassoc nsz arcp contract afn i1 %i.vv, float %i.vu, float 0.000000e+00 ; 3 uses
  %i.vx = fmul reassoc nsz arcp contract afn float %i.vr, %sin318
  %i.vy = fmul reassoc nsz arcp contract afn float %i.vo, %cos319
  %i.vz = fadd reassoc nsz arcp contract afn float %i.vy, %i.vx ; 2 uses
  %i.wa = fcmp reassoc nsz arcp contract afn ogt float %i.vz, 0.000000e+00
  %i.wb = select reassoc nsz arcp contract afn i1 %i.wa, float %i.vz, float 0.000000e+00 ; 3 uses
  %i.wc = fmul reassoc nsz arcp contract afn float %i.ui, f0x42A2F983
  %i.wd = fadd reassoc nsz arcp contract afn float %i.wc, 2.560000e+02 ; 2 uses
  %i.we = fpext reassoc nsz arcp contract afn float %i.wd to double ; 2 uses
  %i.wf = tail call reassoc nsz arcp contract afn double @llvm.floor.f64(double %i.we)
  %i.wg = fptrunc reassoc nsz arcp contract afn double %i.wf to float ; 2 uses
  %i.wh = tail call reassoc nsz arcp contract afn double @llvm.ceil.f64(double %i.we)
  %i.wi = fptrunc reassoc nsz arcp contract afn double %i.wh to float
  %i.wj = fptosi float %i.wg to i32
  %i.wk = and i32 %i.wj, 511                      ; 2 uses
  %i.wl = fptosi float %i.wi to i32
  %i.wm = and i32 %i.wl, 511                      ; 2 uses
  %i.wn = zext nneg i32 %i.wk to i64
  %i.wo = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.wn
  %i.wp = load float, ptr %i.wo, align 4, !tbaa !12 ; 3 uses
  %.not.i = icmp eq i32 %i.wk, %i.wm
  br i1 %.not.i, label %lookup_gamut.exit, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.wq = fsub reassoc nsz arcp contract afn float %i.wd, %i.wg
  %i.wr = zext nneg i32 %i.wm to i64
  %i.ws = getelementptr inbounds nuw [4 x i8], ptr %i.dq, i64 %i.wr
  %i.wt = load float, ptr %i.ws, align 4, !tbaa !12
  %i.wu = fsub reassoc nsz arcp contract afn float %i.wt, %i.wp
  %i.wv = fmul reassoc nsz arcp contract afn float %i.wu, %i.wq
  %i.ww = fadd reassoc nsz arcp contract afn float %i.wv, %i.wp
  br label %lookup_gamut.exit

lookup_gamut.exit:                                ; preds = %bb.h, %bb.i
  %i.wx = phi float [ %i.ww, %bb.i ], [ %i.wp, %bb.h ] ; 3 uses
  br i1 %i.vv, label %bb.j, label %soft_clip.exit

bb.j:                                             ; preds = %lookup_gamut.exit
  %i.wy = fdiv reassoc nsz arcp contract afn float %i.wb, %i.vu ; 3 uses
  %i.wz = fmul reassoc nsz arcp contract afn float %i.wx, 8.000000e-01 ; 3 uses
  %i.xa = fcmp reassoc nsz arcp contract afn ogt float %i.wy, %i.wz
  br i1 %i.xa, label %bb.k, label %soft_clip.exit

bb.k:                                             ; preds = %bb.j
  %i.xb = fmul reassoc nsz arcp contract afn float %i.wx, f0x3E4CCCCC ; 2 uses
  %i.xc = fsub reassoc nsz arcp contract afn float %i.wz, %i.wy
  %i.xd = fdiv reassoc nsz arcp contract afn float %i.xc, %i.xb
  %i.xe = tail call reassoc nsz arcp contract afn float @llvm.exp.f32(float %i.xd)
  %i.xf = fsub reassoc nsz arcp contract afn float 1.000000e+00, %i.xe
  %i.xg = fmul reassoc nsz arcp contract afn float %i.xf, %i.xb
  %i.xh = fadd reassoc nsz arcp contract afn float %i.xg, %i.wz
  br label %soft_clip.exit

soft_clip.exit:                                   ; preds = %bb.k, %bb.j, %lookup_gamut.exit
  %i.xi = phi reassoc nsz arcp contract afn float [ %i.wx, %lookup_gamut.exit ], [ %i.xh, %bb.k ], [ %i.wy, %bb.j ] ; 3 uses
  %i.xj = fmul reassoc nsz arcp contract afn float %i.xi, %i.vw
  %i.xk = fcmp reassoc nsz arcp contract afn ogt float %i.xi, 0.000000e+00
  %i.xl = fdiv reassoc nsz arcp contract afn float %i.wb, %i.xi
  %i.xm = select reassoc nsz arcp contract afn i1 %i.xk, float %i.xl, float %i.vw
  %i.xn = fadd reassoc nsz arcp contract afn float %i.xm, %i.vw
  %i.xo = fmul reassoc nsz arcp contract afn float %i.xn, 5.000000e-01
  %i.xp = fadd reassoc nsz arcp contract afn float %i.xj, %i.wb
  %i.xq = fmul reassoc nsz arcp contract afn float %i.xp, 5.000000e-01 ; 5 uses
  %i.xr = fadd reassoc nsz arcp contract afn float %i.xo, 1.629550e-11 ; 2 uses
  %i.xs = fmul reassoc nsz arcp contract afn float %i.xr, 5.600000e-01
  %i.xt = fadd reassoc nsz arcp contract afn float %i.xs, 4.400000e-01
  %i.xu = fdiv reassoc nsz arcp contract afn float %i.xr, %i.xt ; 3 uses
  %i.xv = fcmp reassoc nsz arcp contract afn ogt float %i.xu, 0.000000e+00
  %i.xw = select reassoc nsz arcp contract afn i1 %i.xv, float %i.xu, float 0.000000e+00 ; 6 uses
  %i.xx = fmul reassoc nsz arcp contract afn float %i.xq, %cos322 ; 3 uses
  %i.xy = fmul reassoc nsz arcp contract afn float %i.xq, %sin321 ; 3 uses
  %i.xz = fmul reassoc nsz arcp contract afn float %i.xx, f0x3E0DEE7B
  %i.ya = fadd reassoc nsz arcp contract afn float %i.xz, %i.xw
  %i.yb = fmul reassoc nsz arcp contract afn float %i.xy, f0x3D6DC306
  %i.yc = fadd reassoc nsz arcp contract afn float %i.ya, %i.yb
  %i.yd = fmul reassoc nsz arcp contract afn float %i.xx, f0xBE0DEE7B
  %i.ye = fadd reassoc nsz arcp contract afn float %i.yd, %i.xw
  %i.yf = fmul reassoc nsz arcp contract afn float %i.xy, f0xBD6DC306
  %i.yg = fadd reassoc nsz arcp contract afn float %i.ye, %i.yf
  %i.yh = fmul reassoc nsz arcp contract afn float %i.xx, f0xBDC4A5BD
  %i.yi = fadd reassoc nsz arcp contract afn float %i.yh, %i.xw
  %i.yj = fmul reassoc nsz arcp contract afn float %i.xy, f0xBF4FD826
  %i.yk = fadd reassoc nsz arcp contract afn float %i.yi, %i.yj
  %i.yl = fcmp reassoc nsz arcp contract afn olt float %i.yc, 0.000000e+00
  br i1 %i.yl, label %bb.l, label %bb.m

bb.l:                                             ; preds = %soft_clip.exit
  %i.ym = fneg reassoc nsz arcp contract afn float %i.xw
  %i.yn = fmul reassoc nsz arcp contract afn float %cos322, f0x3E0DEE7B
  %i.yo = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.yp = fadd reassoc nsz arcp contract afn float %i.yn, %i.yo
  %i.yq = fdiv reassoc nsz arcp contract afn float %i.ym, %i.yp ; 2 uses
  %i.yr = fcmp reassoc nsz arcp contract afn olt float %i.yq, %i.xq
  %.324 = select reassoc nsz arcp contract afn i1 %i.yr, float %i.yq, float %i.xq
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %soft_clip.exit
  %.0292 = phi nsz float [ %.324, %bb.l ], [ %i.xq, %soft_clip.exit ] ; 3 uses
  %i.ys = fcmp reassoc nsz arcp contract afn olt float %i.yg, 0.000000e+00
  br i1 %i.ys, label %bb.n, label %bb.o

bb.n:                                             ; preds = %bb.m
  %i.yt = fneg reassoc nsz arcp contract afn float %i.xw
  %i.yu = fmul reassoc nsz arcp contract afn float %cos322, f0xBE0DEE7B
  %i.yv = fmul reassoc nsz arcp contract afn float %sin321, f0x3D6DC306
  %i.yw = fsub reassoc nsz arcp contract afn float %i.yu, %i.yv
  %i.yx = fdiv reassoc nsz arcp contract afn float %i.yt, %i.yw ; 2 uses
  %i.yy = fcmp reassoc nsz arcp contract afn olt float %i.yx, %.0292
  %..0292 = select reassoc nsz arcp contract afn i1 %i.yy, float %i.yx, float %.0292
  br label %bb.o

bb.o:                                             ; preds = %bb.n, %bb.m
  %.1 = phi nsz float [ %..0292, %bb.n ], [ %.0292, %bb.m ] ; 3 uses
  %i.yz = fcmp reassoc nsz arcp contract afn olt float %i.yk, 0.000000e+00
  br i1 %i.yz, label %bb.p, label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.za = fneg reassoc nsz arcp contract afn float %i.xw
  %i.zb = fmul reassoc nsz arcp contract afn float %cos322, f0xBDC4A5BD
  %i.zc = fmul reassoc nsz arcp contract afn float %sin321, f0x3F4FD826
  %i.zd = fsub reassoc nsz arcp contract afn float %i.zb, %i.zc
  %i.ze = fdiv reassoc nsz arcp contract afn float %i.za, %i.zd ; 2 uses
  %i.zf = fcmp reassoc nsz arcp contract afn olt float %i.ze, %.1
  %..1 = select reassoc nsz arcp contract afn i1 %i.zf, float %i.ze, float %.1
  br label %bb.q

bb.q:                                             ; preds = %bb.p, %bb.o
  %.2 = phi nsz float [ %..1, %bb.p ], [ %.1, %bb.o ] ; 2 uses
  %i.zg = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.xu, float 0.000000e+00) ; 2 uses
  %i.zh = fmul reassoc nsz arcp contract afn float %.2, %cos322 ; 2 uses
  %i.zi = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.zh, i64 0
  %i.zj = shufflevector <4 x float> %i.zi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zk = fmul reassoc nsz arcp contract afn <4 x float> %i.zj, <float f0x3E0DEE7B, float f0xBE0DEE7B, float f0xBDC4A5BD, float -0.000000e+00>
  %i.zl = insertelement <4 x float> <float poison, float -0.000000e+00, float poison, float poison>, float %i.zg, i64 0
  %i.zm = shufflevector <4 x float> %i.zl, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.zn = fadd reassoc nsz arcp contract afn <4 x float> %i.zm, %i.zk
  %i.zo = fadd reassoc nsz arcp contract afn float %i.zh, %i.zg
  %i.zp = fmul reassoc nsz arcp contract afn float %.2, %sin321 ; 2 uses
  %i.zq = fadd reassoc nsz arcp contract afn float %i.zo, %i.zp
  %i.zr = insertelement <4 x float> poison, float %i.zp, i64 0
  %i.zs = insertelement <4 x float> %i.zr, float %i.zq, i64 3
  %i.zt = shufflevector <4 x float> %i.zs, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 3>
  %i.zu = fmul reassoc nsz arcp contract afn <4 x float> %i.zt, <float f0x3D6DC306, float f0xBD6DC306, float f0xBF4FD826, float 0.000000e+00>
end_hunk_0
begin_hunk_1_@_YchToRGB:bb.a
  %i.ad = fadd reassoc nsz arcp contract afn float %i.ab, %i.ac ; 2 uses
  %i.ae = fcmp reassoc nsz arcp contract afn oeq float %i.ad, 0.000000e+00
  %i.af = fdiv reassoc nsz arcp contract afn float 7.500000e-01, %i.ad
  %i.ag = select reassoc nsz arcp contract afn i1 %i.ae, float 0.000000e+00, float %i.af ; 3 uses
  %i.ah = fmul reassoc nsz arcp contract afn float %i.ag, %i.w
  %i.ai = insertelement <3 x float> poison, float %i.ag, i64 0
  %i.aj = shufflevector <3 x float> %i.ai, <3 x float> poison, <3 x i32> zeroinitializer
  %i.ak = fmul reassoc nsz arcp contract afn <3 x float> %i.aj, %i.v ; 3 uses
  %i.al = fmul reassoc nsz arcp contract afn float %i.ag, %i.z ; 2 uses
  %i.am = fmul reassoc nsz arcp contract afn <3 x float> %i.ak, <float f0x3F1E2ABC, float f0x3FA65D1D, float poison>
  %i.an = shufflevector <3 x float> %i.am, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 1> ; 2 uses
  %i.ao = fmul reassoc nsz arcp contract afn <3 x float> %i.ak, <float f0x3FE76ACB, float f0x3ECABA8D, float f0x3FE76ACB> ; 2 uses
  %i.ap = fsub reassoc nsz arcp contract afn <3 x float> %i.ao, %i.an
  %i.aq = fadd reassoc nsz arcp contract afn <3 x float> %i.ao, %i.an
  %i.ar = shufflevector <3 x float> %i.ap, <3 x float> %i.aq, <3 x i32> <i32 0, i32 4, i32 2>
  %i.as = insertelement <3 x float> poison, float %i.al, i64 0
  %i.at = shufflevector <3 x float> %i.as, <3 x float> poison, <3 x i32> zeroinitializer
  %i.au = fmul reassoc nsz arcp contract afn <3 x float> %i.at, <float f0x3EB21A8C, float f0xBD2820C3, float f0x3EB21A8C>
  %i.av = fadd reassoc nsz arcp contract afn <3 x float> %i.ar, %i.au ; 2 uses
  %i.aw = extractelement <3 x float> %i.ak, i64 0
  %i.ax = fmul reassoc nsz arcp contract afn float %i.aw, f0x3E007B1A
  %i.ay = fmul reassoc nsz arcp contract afn float %i.ah, f0x3E51B1F3
  %i.az = fsub reassoc nsz arcp contract afn float %i.ay, %i.ax
  %i.ba = fmul reassoc nsz arcp contract afn float %i.al, f0x3FDF122A
  %i.bb = fadd reassoc nsz arcp contract afn float %i.az, %i.ba
  %i.bc = fmul reassoc nsz arcp contract afn <3 x float> %i.av, <float f0x3BB1DE8E, float f0x3D26BE12, float f0x39837366> ; 2 uses
  %i.bd = shufflevector <3 x float> %i.av, <3 x float> poison, <3 x i32> <i32 1, i32 0, i32 1>
  %i.be = fmul reassoc nsz arcp contract afn <3 x float> %i.bd, <float f0x3F7E5B63, float f0x3F8163AD, float f0x3C3C486C> ; 2 uses
  %i.bf = fadd reassoc nsz arcp contract afn <3 x float> %i.bc, %i.be
  %i.bg = fsub reassoc nsz arcp contract afn <3 x float> %i.bc, %i.be
  %i.bh = shufflevector <3 x float> %i.bf, <3 x float> %i.bg, <3 x i32> <i32 0, i32 1, i32 5>
  %i.bi = insertelement <3 x float> poison, float %i.bb, i64 0
  %i.bj = shufflevector <3 x float> %i.bi, <3 x float> poison, <3 x i32> zeroinitializer
  %i.bk = fmul reassoc nsz arcp contract afn <3 x float> %i.bj, <float f0x3A978241, float f0xBD0BDB31, float f0x3F44995A>
  %i.bl = fadd reassoc nsz arcp contract afn <3 x float> %i.bh, %i.bk ; 3 uses
  %i.bm = load <4 x float>, ptr %i.b, align 4, !tbaa !12
  %i.bn = shufflevector <3 x float> %i.bl, <3 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 1>
  %i.bo = fmul reassoc nsz arcp contract afn <4 x float> %i.bm, %i.bn
  %i.bp = load <4 x float>, ptr %i.c, align 4, !tbaa !12
  %i.bq = shufflevector <3 x float> %i.bl, <3 x float> poison, <4 x i32> zeroinitializer
  %i.br = fmul reassoc nsz arcp contract afn <4 x float> %i.bp, %i.bq
  %i.bs = fadd reassoc nsz arcp contract afn <4 x float> %i.br, %i.bo
  %i.bt = load <4 x float>, ptr %i.d, align 4, !tbaa !12
  %i.bu = shufflevector <3 x float> %i.bl, <3 x float> poison, <4 x i32> <i32 2, i32 2, i32 2, i32 2>
  %i.bv = fmul reassoc nsz arcp contract afn <4 x float> %i.bt, %i.bu
  %i.bw = fadd reassoc nsz arcp contract afn <4 x float> %i.bs, %i.bv ; 4 uses
  %i.bx = extractelement <4 x float> %i.bw, i64 0
  %i.by = extractelement <4 x float> %i.bw, i64 1
  %i.bz = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bx, float %i.by)
  %i.ca = extractelement <4 x float> %i.bw, i64 2
  %i.cb = tail call reassoc nsz arcp contract afn float @llvm.maxnum.f32(float %i.bz, float %i.ca)
  %i.cc = insertelement <4 x float> poison, float %i.cb, i64 0
  %i.cd = shufflevector <4 x float> %i.cc, <4 x float> poison, <4 x i32> zeroinitializer
  %i.ce = fdiv reassoc nsz arcp contract afn <4 x float> %i.bw, %i.cd ; 2 uses
  %i.cf = fcmp reassoc nsz arcp contract afn ogt <4 x float> %i.ce, zeroinitializer
  %i.cg = select <4 x i1> %i.cf, <4 x float> %i.ce, <4 x float> zeroinitializer
  store <4 x float> %i.cg, ptr %i.a, align 16, !tbaa !12
  %i.ch = getelementptr inbounds nuw i8, ptr %3, i64 852
  %i.ci = load i32, ptr %i.ch, align 4, !tbaa !172
  %.not = icmp eq i32 %i.ci, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.cj = getelementptr inbounds nuw i8, ptr %3, i64 736
  %i.ck = getelementptr inbounds nuw i8, ptr %3, i64 816
  %i.cl = getelementptr inbounds nuw i8, ptr %3, i64 704
  %i.cm = load i32, ptr %i.cl, align 64, !tbaa !173
  call fastcc void @dt_ioppr_apply_trc(ptr noundef nonnull %i.a, ptr noundef %0, ptr noundef nonnull %i.cj, ptr noundef nonnull %i.ck, i32 noundef %i.cm)
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(16) %0, ptr noundef nonnull align 16 dereferenceable(16) %i.a, i64 16, i1 false)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #19
  ret void
}

declare ptr @gtk_label_new(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_halign(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @gtk_label_set_xalign(ptr noundef, float noundef) local_unnamed_addr #3

declare void @gtk_label_set_ellipsize(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_gui_add_class(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_get_allocation(ptr noundef, ptr noundef) local_unnamed_addr #3

declare ptr @gtk_widget_get_style_context(ptr noundef) local_unnamed_addr #3

declare ptr @pango_font_description_copy_static(ptr noundef) local_unnamed_addr #3

declare ptr @cairo_create(ptr noundef) local_unnamed_addr #3

declare ptr @pango_cairo_create_layout(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nounwind willreturn memory(read)
declare i32 @pango_font_description_get_size(ptr noundef) local_unnamed_addr #22

declare void @pango_font_description_set_size(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_layout_set_font_description(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @pango_cairo_context_set_resolution(ptr noundef, double noundef) local_unnamed_addr #3

declare ptr @pango_layout_get_context(ptr noundef) local_unnamed_addr #3

declare void @pango_layout_set_text(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @pango_layout_get_pixel_extents(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @gtk_render_background(ptr noundef, ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare ptr @cairo_pattern_create_linear(double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_width(ptr noundef, double noundef) local_unnamed_addr #3

declare void @cairo_rectangle(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_source(ptr noundef, ptr noundef) local_unnamed_addr #3

declare void @cairo_fill(ptr noundef) local_unnamed_addr #3

declare void @cairo_pattern_destroy(ptr noundef) local_unnamed_addr #3

declare i32 @cairo_format_stride_for_width(i32 noundef, i32 noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create_for_data(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_set_source_surface(ptr noundef, ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_paint(ptr noundef) local_unnamed_addr #3

declare void @cairo_surface_destroy(ptr noundef) local_unnamed_addr #3

declare void @cairo_translate(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_line_cap(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_fill_preserve(ptr noundef) local_unnamed_addr #3

declare void @cairo_clip(ptr noundef) local_unnamed_addr #3

declare void @cairo_move_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_line_to(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_stroke(ptr noundef) local_unnamed_addr #3

declare void @cairo_restore(ptr noundef) local_unnamed_addr #3

declare void @cairo_destroy(ptr noundef) local_unnamed_addr #3

declare void @g_object_unref(ptr noundef) local_unnamed_addr #3

declare void @pango_font_description_free(ptr noundef) local_unnamed_addr #3

declare ptr @cairo_image_surface_create(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #3

declare void @cairo_surface_set_device_scale(ptr noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_pattern_add_color_stop_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @cairo_set_source_rgba(ptr noundef, double noundef, double noundef, double noundef, double noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_paint(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare void @dt_bauhaus_widget_set_quad_toggle(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_iop_request_focus(ptr noundef) local_unnamed_addr #3

declare void @gtk_toggle_button_set_active(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @dt_control_log(ptr noundef, ...) local_unnamed_addr #3

declare i32 @dt_bauhaus_widget_get_quad_active(ptr noundef) local_unnamed_addr #3

declare void @dt_iop_refresh_center(ptr noundef) local_unnamed_addr #3

declare void @gtk_color_chooser_get_rgba(ptr noundef, ptr noundef) local_unnamed_addr #3

declare float @dt_bauhaus_slider_get(ptr noundef) local_unnamed_addr #3

declare void @gtk_widget_set_hexpand(ptr noundef, i32 noundef) local_unnamed_addr #3

declare void @g_object_set(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { float, float } @llvm.sincos.f32(float) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <10 x float> @llvm.masked.load.v10f32.p0(ptr captures(none), <10 x i1>, <10 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.pow.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.maxnum.v2f32(<2 x float>, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fabs.v2f32(<2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fabs.v4f32(<4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.pow.v4f32(<4 x float>, <4 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v2f32(float, <2 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.maxnum.v8f32(<8 x float>, <8 x float>) #10

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.vector.reduce.fadd.v4f32(float, <4 x float>) #10

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.atan2.v2f32(<2 x float>, <2 x float>) #11

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <4 x float> @llvm.masked.load.v4f32.p0(ptr captures(none), <4 x i1>, <4 x float>) #23

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare <6 x float> @llvm.masked.load.v6f32.p0(ptr captures(none), <6 x i1>, <6 x float>) #23

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x float> @llvm.exp.v8f32(<8 x float>) #10

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #2 = { nounwind "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #3 = { "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #4 = { mustprogress nofree nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #5 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #6 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #7 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #8 = { nounwind uwtable "min-legal-vector-width"="128" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #11 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #12 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #13 = { mustprogress nounwind willreturn memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #14 = { mustprogress nofree norecurse nosync nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #15 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #16 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #17 = { nocallback nofree nosync nounwind willreturn memory(none) }
attributes #18 = { mustprogress nocallback nofree nosync nounwind willreturn memory(none) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #19 = { nounwind }
attributes #20 = { inlinehint mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #21 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #22 = { mustprogress nofree nounwind willreturn memory(read) "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="icelake-server" "target-features"="+64bit,+adx,+aes,+avx,+avx2,+avx512bitalg,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512ifma,+avx512vbmi,+avx512vbmi2,+avx512vl,+avx512vnni,+avx512vpopcntdq,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+gfni,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdpid,+rdrnd,+rdseed,+sahf,+sha,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+vaes,+vpclmulqdq,+wbnoinvd,+x87,+xsave,+xsavec,+xsaveopt,+xsaves,-amx-avx512,-amx-bf16,-amx-complex,-amx-fp16,-amx-fp8,-amx-int8,-amx-movrs,-amx-tile,-avx10.1,-avx10.2,-avx512bf16,-avx512bmm,-avx512fp16,-avx512vp2intersect,-avxifma,-avxneconvert,-avxvnni,-avxvnniint16,-avxvnniint8,-ccmp,-cf,-cldemote,-clzero,-cmpccxadd,-egpr,-enqcmd,-fma4,-hreset,-jmpabs,-kl,-lwp,-movdir64b,-movdiri,-movrs,-mwaitx,-ndd,-nf,-pconfig,-ppx,-prefetchi,-ptwrite,-push2pop2,-raoint,-rdpru,-rtm,-serialize,-sgx,-sha512,-shstk,-sm3,-sm4,-sse4a,-tbm,-tsxldtrk,-uintr,-usermsr,-waitpkg,-widekl,-xop,-zu" }
attributes #23 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #24 = { nounwind allocsize(0) }
attributes #25 = { nounwind willreturn memory(none) }
attributes #26 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3, !4}
!llvm.ident = !{!5}
!llvm.errno.tbaa = !{!10}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!5 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!6 = !{!"Simple C/C++ TBAA"}
!7 = !{!"omnipotent char", !6, i64 0}
!8 = !{!"int", !7, i64 0}
!9 = !{!"__libc_errno", !8, i64 0}
!10 = !{!9, !8, i64 0}
!11 = !{!"float", !7, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"any pointer", !7, i64 0}
!14 = !{!13, !13, i64 0}
!15 = !{!"dt_iop_colorbalancergb_params_t", !11, i64 0, !11, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !11, i64 40, !11, i64 44, !11, i64 48, !11, i64 52, !11, i64 56, !11, i64 60, !11, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !11, i64 80, !11, i64 84, !11, i64 88, !11, i64 92, !11, i64 96, !11, i64 100, !11, i64 104, !11, i64 108, !11, i64 112, !11, i64 116, !11, i64 120, !11, i64 124, !8, i64 128}
!16 = !{!15, !11, i64 48}
!17 = !{!15, !11, i64 56}
!18 = !{!15, !11, i64 112}
!19 = !{!15, !11, i64 120}
!20 = !{!15, !8, i64 128}
!21 = !{!15, !11, i64 68}
!22 = !{!15, !11, i64 88}
!23 = !{!"p1 omnipotent char", !13, i64 0}
!24 = !{!"p1 _ZTS8_GModule", !13, i64 0}
!25 = !{!"p1 _ZTS15dt_iop_module_t", !13, i64 0}
!26 = !{!"p1 _ZTS18dt_dev_pixelpipe_t", !13, i64 0}
!27 = !{!"p1 _ZTS18dt_histogram_roi_t", !13, i64 0}
!28 = !{!"dt_dev_histogram_collection_params_t", !27, i64 0, !8, i64 8}
!29 = !{!"p1 int", !13, i64 0}
!30 = !{!"long", !7, i64 0}
!31 = !{!"dt_dev_histogram_stats_t", !8, i64 0, !30, i64 8, !8, i64 16, !8, i64 20}
!32 = !{!"dt_iop_roi_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !11, i64 16}
!33 = !{!"short", !7, i64 0}
!34 = !{!"", !33, i64 0, !33, i64 2}
!35 = !{!"", !8, i64 0, !7, i64 16}
!36 = !{!"dt_iop_buffer_dsc_t", !8, i64 0, !8, i64 4, !8, i64 8, !7, i64 12, !34, i64 48, !35, i64 64, !7, i64 96, !8, i64 112}
!37 = !{!"p1 _ZTS11_GHashTable", !13, i64 0}
!38 = !{!"p1 float", !13, i64 0}
!39 = !{!"dt_dev_distorted_mask_cache_t", !38, i64 0, !32, i64 8, !30, i64 32, !30, i64 40}
!40 = !{!"dt_dev_pixelpipe_iop_t", !25, i64 0, !26, i64 8, !13, i64 16, !13, i64 24, !8, i64 32, !8, i64 36, !28, i64 40, !29, i64 56, !31, i64 64, !7, i64 88, !11, i64 104, !8, i64 108, !8, i64 112, !30, i64 120, !8, i64 128, !8, i64 132, !32, i64 136, !32, i64 156, !32, i64 176, !32, i64 196, !8, i64 216, !8, i64 220, !36, i64 224, !36, i64 352, !7, i64 480, !8, i64 516, !37, i64 520, !39, i64 528, !39, i64 576}
!41 = !{!40, !13, i64 16}
!42 = !{!"p1 _ZTS12dt_develop_t", !13, i64 0}
!43 = !{!"dt_pthread_mutex_t", !7, i64 0}
!44 = !{!"p1 _ZTS25dt_develop_blend_params_t", !13, i64 0}
!45 = !{!"", !37, i64 0, !37, i64 8}
!46 = !{!"", !25, i64 0, !8, i64 8}
!47 = !{!"", !45, i64 0, !46, i64 16}
!48 = !{!"p1 _ZTS10_GtkWidget", !13, i64 0}
!49 = !{!"p1 _ZTS7_GSList", !13, i64 0}
!50 = !{!"p1 _ZTS18dt_iop_module_so_t", !13, i64 0}
!51 = !{!"dt_iop_module_t", !8, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64, !13, i64 72, !13, i64 80, !13, i64 88, !13, i64 96, !13, i64 104, !13, i64 112, !13, i64 120, !13, i64 128, !13, i64 136, !13, i64 144, !13, i64 152, !13, i64 160, !13, i64 168, !13, i64 176, !13, i64 184, !13, i64 192, !13, i64 200, !13, i64 208, !13, i64 216, !13, i64 224, !13, i64 232, !13, i64 240, !13, i64 248, !13, i64 256, !13, i64 264, !13, i64 272, !13, i64 280, !13, i64 288, !13, i64 296, !13, i64 304, !13, i64 312, !13, i64 320, !13, i64 328, !13, i64 336, !13, i64 344, !13, i64 352, !13, i64 360, !13, i64 368, !13, i64 376, !13, i64 384, !13, i64 392, !13, i64 400, !13, i64 408, !13, i64 416, !13, i64 424, !13, i64 432, !13, i64 440, !24, i64 448, !7, i64 456, !8, i64 476, !8, i64 480, !8, i64 484, !8, i64 488, !8, i64 492, !8, i64 496, !8, i64 500, !8, i64 504, !7, i64 512, !7, i64 528, !7, i64 544, !7, i64 560, !7, i64 576, !7, i64 592, !29, i64 608, !31, i64 616, !7, i64 640, !8, i64 656, !8, i64 660, !42, i64 664, !8, i64 672, !8, i64 676, !13, i64 680, !13, i64 688, !8, i64 696, !13, i64 704, !43, i64 712, !13, i64 752, !13, i64 760, !44, i64 768, !44, i64 776, !13, i64 784, !47, i64 792, !48, i64 824, !48, i64 832, !48, i64 840, !48, i64 848, !48, i64 856, !48, i64 864, !48, i64 872, !8, i64 880, !48, i64 888, !48, i64 896, !48, i64 904, !49, i64 912, !49, i64 920, !48, i64 928, !48, i64 936, !8, i64 944, !50, i64 952, !8, i64 960, !7, i64 964, !8, i64 1092, !48, i64 1096, !13, i64 1104, !8, i64 1112}
!52 = !{!51, !13, i64 704}
!53 = !{!40, !26, i64 8}
!54 = !{!"p1 _ZTS30dt_iop_order_iccprofile_info_t", !13, i64 0}
!55 = !{!"dt_iop_colorbalancergb_data_t", !7, i64 0, !7, i64 16, !7, i64 32, !7, i64 48, !11, i64 64, !11, i64 68, !7, i64 72, !11, i64 88, !11, i64 92, !11, i64 96, !7, i64 100, !11, i64 116, !7, i64 120, !11, i64 136, !11, i64 140, !11, i64 144, !11, i64 148, !11, i64 152, !11, i64 156, !11, i64 160, !38, i64 168, !11, i64 176, !7, i64 192, !7, i64 208, !8, i64 224, !30, i64 232, !8, i64 240, !54, i64 248}
!56 = !{!55, !38, i64 168}
!57 = !{!"p1 _ZTS6_GList", !13, i64 0}
!58 = !{!"dt_image_raw_parameters_t", !8, i64 0, !8, i64 3}
!59 = !{!"double", !7, i64 0}
!60 = !{!"dt_image_geoloc_t", !59, i64 0, !59, i64 8, !59, i64 16}
!61 = !{!"_color_harmony_t", !8, i64 0, !8, i64 4, !8, i64 8, !8, i64 12, !7, i64 16}
!62 = !{!"p1 _ZTS16dt_cache_entry_t", !13, i64 0}
!63 = !{!"dt_image_t", !8, i64 0, !8, i64 4, !11, i64 8, !11, i64 12, !11, i64 16, !11, i64 20, !11, i64 24, !11, i64 28, !11, i64 32, !11, i64 36, !8, i64 40, !7, i64 44, !7, i64 108, !7, i64 172, !7, i64 300, !7, i64 364, !7, i64 428, !7, i64 492, !30, i64 560, !8, i64 568, !7, i64 572, !7, i64 800, !7, i64 864, !7, i64 928, !7, i64 992, !8, i64 1120, !7, i64 1124, !8, i64 1380, !8, i64 1384, !8, i64 1388, !8, i64 1392, !8, i64 1396, !8, i64 1400, !8, i64 1404, !8, i64 1408, !8, i64 1412, !8, i64 1416, !11, i64 1420, !8, i64 1424, !8, i64 1428, !8, i64 1432, !8, i64 1436, !8, i64 1440, !8, i64 1444, !30, i64 1448, !30, i64 1456, !30, i64 1464, !30, i64 1472, !8, i64 1480, !36, i64 1488, !7, i64 1616, !23, i64 1656, !8, i64 1664, !8, i64 1668, !58, i64 1672, !60, i64 1680, !61, i64 1704, !33, i64 1736, !7, i64 1738, !8, i64 1748, !8, i64 1752, !11, i64 1756, !11, i64 1760, !7, i64 1776, !7, i64 1792, !7, i64 1840, !57, i64 1856, !62, i64 1864, !8, i64 1872, !8, i64 1876}
!64 = !{!51, !42, i64 664}
!65 = !{!"p1 _ZTS15dt_masks_form_t", !13, i64 0}
!66 = !{!"p1 _ZTS19dt_masks_form_gui_t", !13, i64 0}
!67 = !{!"dt_dev_proxy_exposure_t", !25, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!68 = !{!"p1 _ZTS15dt_lib_module_t", !13, i64 0}
!69 = !{!"", !68, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32, !13, i64 40, !13, i64 48, !13, i64 56, !13, i64 64}
!70 = !{!"", !68, i64 0, !13, i64 8, !13, i64 16, !13, i64 24, !13, i64 32}
!71 = !{!"", !67, i64 0, !25, i64 40, !69, i64 48, !70, i64 120}
!72 = !{!"dt_dev_chroma_t", !25, i64 0, !25, i64 8, !7, i64 16, !7, i64 32, !7, i64 64, !8, i64 96}
!73 = !{!"", !25, i64 0, !25, i64 8, !13, i64 16}
!74 = !{!"", !48, i64 0, !48, i64 8, !8, i64 16, !8, i64 20, !11, i64 24, !11, i64 28, !8, i64 32}
!75 = !{!"", !48, i64 0, !48, i64 8, !8, i64 16, !8, i64 20, !8, i64 24, !11, i64 28}
!76 = !{!"", !48, i64 0, !48, i64 8}
!77 = !{!"", !48, i64 0, !8, i64 8}
!78 = !{!"", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32}
!79 = !{!"dt_dev_viewport_t", !48, i64 0, !8, i64 8, !8, i64 12, !8, i64 16, !8, i64 20, !8, i64 24, !59, i64 32, !59, i64 40, !59, i64 48, !8, i64 56, !8, i64 60, !8, i64 64, !11, i64 68, !11, i64 72, !11, i64 76, !26, i64 80, !48, i64 88, !42, i64 96}
!80 = !{!"dt_develop_t", !8, i64 0, !8, i64 4, !8, i64 8, !13, i64 16, !59, i64 24, !59, i64 32, !8, i64 40, !8, i64 44, !8, i64 48, !8, i64 52, !8, i64 56, !59, i64 64, !8, i64 72, !8, i64 76, !8, i64 80, !25, i64 88, !26, i64 96, !63, i64 112, !8, i64 2000, !8, i64 2004, !43, i64 2008, !8, i64 2048, !57, i64 2056, !8, i64 2064, !25, i64 2072, !8, i64 2080, !57, i64 2088, !57, i64 2096, !8, i64 2104, !57, i64 2112, !57, i64 2120, !29, i64 2128, !29, i64 2136, !8, i64 2144, !8, i64 2148, !57, i64 2152, !65, i64 2160, !66, i64 2168, !57, i64 2176, !8, i64 2184, !8, i64 2188, !8, i64 2192, !11, i64 2196, !11, i64 2200, !25, i64 2208, !8, i64 2216, !71, i64 2224, !72, i64 2384, !73, i64 2496, !74, i64 2520, !75, i64 2560, !76, i64 2592, !77, i64 2608, !78, i64 2624, !48, i64 2664, !48, i64 2672, !79, i64 2680, !79, i64 2784, !8, i64 2888, !8, i64 2892, !8, i64 2896, !8, i64 2900, !57, i64 2904, !8, i64 2912, !42, i64 2920}
!81 = !{!"p1 _ZTS15_GtkDrawingArea", !13, i64 0}
!82 = !{!"p1 _ZTS12_GtkNotebook", !13, i64 0}
!83 = !{!"dt_iop_colorbalancergb_gui_data_t", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !48, i64 32, !48, i64 40, !48, i64 48, !48, i64 56, !48, i64 64, !48, i64 72, !48, i64 80, !48, i64 88, !48, i64 96, !48, i64 104, !48, i64 112, !48, i64 120, !48, i64 128, !48, i64 136, !48, i64 144, !48, i64 152, !48, i64 160, !48, i64 168, !48, i64 176, !48, i64 184, !48, i64 192, !48, i64 200, !48, i64 208, !48, i64 216, !48, i64 224, !48, i64 232, !48, i64 240, !48, i64 248, !48, i64 256, !81, i64 264, !82, i64 272, !48, i64 280, !48, i64 288, !48, i64 296, !8, i64 304, !8, i64 308, !54, i64 312}
!84 = !{!83, !8, i64 304}
!85 = !{!55, !30, i64 232}
!86 = !{!"dt_codepath_t", !8, i64 0}
!87 = !{!"p1 _ZTS11_JsonParser", !13, i64 0}
!88 = !{!"p1 _ZTS9dt_conf_t", !13, i64 0}
!89 = !{!"p1 _ZTS8dt_lib_t", !13, i64 0}
!90 = !{!"p1 _ZTS17dt_view_manager_t", !13, i64 0}
!91 = !{!"p1 _ZTS12dt_control_t", !13, i64 0}
!92 = !{!"p1 _ZTS19dt_control_signal_t", !13, i64 0}
!93 = !{!"p1 _ZTS12dt_gui_gtk_t", !13, i64 0}
!94 = !{!"p1 _ZTS17dt_mipmap_cache_t", !13, i64 0}
!95 = !{!"p1 _ZTS16dt_image_cache_t", !13, i64 0}
!96 = !{!"p1 _ZTS12dt_bauhaus_t", !13, i64 0}
!97 = !{!"p1 _ZTS13dt_database_t", !13, i64 0}
!98 = !{!"p1 _ZTS14dt_pwstorage_t", !13, i64 0}
!99 = !{!"p1 _ZTS11dt_camctl_t", !13, i64 0}
!100 = !{!"p1 _ZTS15dt_collection_t", !13, i64 0}
!101 = !{!"p1 _ZTS14dt_selection_t", !13, i64 0}
!102 = !{!"p1 _ZTS11dt_points_t", !13, i64 0}
!103 = !{!"p1 _ZTS12dt_imageio_t", !13, i64 0}
!104 = !{!"p1 _ZTS11dt_opencl_t", !13, i64 0}
!105 = !{!"p1 _ZTS9dt_dbus_t", !13, i64 0}
!106 = !{!"p1 _ZTS9dt_undo_t", !13, i64 0}
!107 = !{!"p1 _ZTS16dt_colorspaces_t", !13, i64 0}
!108 = !{!"p1 _ZTS9dt_l10n_t", !13, i64 0}
!109 = !{!"p1 _ZTS9lua_State", !13, i64 0}
!110 = !{!"_Bool", !7, i64 0}
!111 = !{!"p1 _ZTS10_GMainLoop", !13, i64 0}
!112 = !{!"p1 _ZTS13_GMainContext", !13, i64 0}
!113 = !{!"p1 _ZTS12_GThreadPool", !13, i64 0}
!114 = !{!"p1 _ZTS12_GAsyncQueue", !13, i64 0}
!115 = !{!"", !109, i64 0, !43, i64 8, !7, i64 48, !110, i64 96, !110, i64 97, !111, i64 104, !112, i64 112, !113, i64 120, !114, i64 128, !114, i64 136, !114, i64 144}
!116 = !{!"p1 _ZTS10_GTimeZone", !13, i64 0}
!117 = !{!"p1 _ZTS10_GDateTime", !13, i64 0}
!118 = !{!"dt_sys_resources_t", !30, i64 0, !30, i64 8, !29, i64 16, !29, i64 24, !8, i64 32}
!119 = !{!"dt_backthumb_t", !59, i64 0, !59, i64 8, !8, i64 16, !8, i64 20}
!120 = !{!"dt_gimp_t", !8, i64 0, !23, i64 8, !23, i64 16, !8, i64 24, !8, i64 28}
!121 = !{!"dt_splash_t", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !8, i64 32}
!122 = !{!"darktable_t", !86, i64 0, !8, i64 4, !8, i64 8, !57, i64 16, !57, i64 24, !57, i64 32, !57, i64 40, !87, i64 48, !88, i64 56, !42, i64 64, !89, i64 72, !90, i64 80, !91, i64 88, !92, i64 96, !93, i64 104, !94, i64 112, !95, i64 120, !96, i64 128, !97, i64 136, !98, i64 144, !99, i64 152, !100, i64 160, !101, i64 168, !102, i64 176, !103, i64 184, !104, i64 192, !105, i64 200, !106, i64 208, !107, i64 216, !108, i64 224, !7, i64 232, !43, i64 2792, !43, i64 2832, !43, i64 2872, !43, i64 2912, !43, i64 2952, !43, i64 2992, !23, i64 3032, !23, i64 3040, !23, i64 3048, !23, i64 3056, !23, i64 3064, !23, i64 3072, !23, i64 3080, !23, i64 3088, !23, i64 3096, !23, i64 3104, !23, i64 3112, !23, i64 3120, !23, i64 3128, !115, i64 3136, !57, i64 3288, !59, i64 3296, !57, i64 3304, !8, i64 3312, !7, i64 3316, !8, i64 3512, !8, i64 3516, !116, i64 3520, !117, i64 3528, !118, i64 3536, !119, i64 3576, !120, i64 3600, !121, i64 3632, !8, i64 3672}
!123 = !{!122, !93, i64 104}
!124 = !{!"p1 _ZTS7dt_ui_t", !13, i64 0}
!125 = !{!"dt_gui_widgets_t", !48, i64 0, !48, i64 8, !48, i64 16, !48, i64 24, !8, i64 32, !8, i64 36, !8, i64 40}
!126 = !{!"dt_gui_scrollbars_t", !48, i64 0, !48, i64 8, !8, i64 16}
!127 = !{!"p1 _ZTS14_cairo_surface", !13, i64 0}
!128 = !{!"dt_gui_gtk_t", !124, i64 0, !125, i64 8, !126, i64 56, !127, i64 80, !8, i64 88, !23, i64 96, !7, i64 104, !7, i64 112, !8, i64 1360, !8, i64 1364, !8, i64 1368, !8, i64 1372, !8, i64 1376, !8, i64 1380, !59, i64 1384, !59, i64 1392, !59, i64 1400, !59, i64 1408, !48, i64 1416, !59, i64 1424, !59, i64 1432, !59, i64 1440, !59, i64 1448, !8, i64 1456, !8, i64 1460, !7, i64 1464, !8, i64 5560, !8, i64 5564, !8, i64 5568}
!129 = !{!128, !59, i64 1432}
!130 = !{!55, !11, i64 156}
!131 = !{!55, !11, i64 136}
!132 = !{!55, !11, i64 140}
!133 = !{!55, !11, i64 144}
!134 = !{!55, !11, i64 148}
!135 = !{!55, !11, i64 152}
!136 = !{!55, !11, i64 68}
!137 = !{!55, !11, i64 88}
!138 = !{!55, !11, i64 64}
!139 = !{!55, !11, i64 160}
!140 = !{!55, !11, i64 92}
!141 = !{!55, !8, i64 224}
!142 = !{!83, !8, i64 308}
!143 = !{!7, !7, i64 0}
!144 = !{!15, !11, i64 116}
!145 = !{!15, !11, i64 124}
!146 = !{!15, !11, i64 60}
!147 = !{!15, !11, i64 72}
!148 = !{!15, !11, i64 64}
!149 = !{!15, !11, i64 84}
!150 = !{!15, !11, i64 80}
!151 = !{!15, !11, i64 104}
!152 = !{!15, !11, i64 100}
!153 = !{!15, !11, i64 92}
!154 = !{!15, !11, i64 40}
!155 = !{!15, !11, i64 44}
end_hunk_1
