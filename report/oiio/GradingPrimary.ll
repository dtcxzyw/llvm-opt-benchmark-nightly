inline.NumInlined: 186
inline.NumDeleted: 59
begin_hunk_0_@_ZN16OpenColorIO_v2_523GradingPrimaryPreRender6updateENS_12GradingStyleENS_18TransformDirectionERKNS_14GradingPrimaryE:bb.a
  %i.hj = fadd double %i.hb, %i.hi
  %i.hk = fptrunc double %i.hj to float
  %exp2f243 = tail call float @exp2f(float %i.hk) #10
  %i.hl = fdiv float 1.000000e+00, %exp2f243
  %i.hm = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.hl, ptr %i.hm, align 8, !tbaa !31
  %i.hn = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.ho = load double, ptr %i.hn, align 8, !tbaa !11
  %i.hp = fadd double %i.hb, %i.ho
  %i.hq = fptrunc double %i.hp to float
  %exp2f244 = tail call float @exp2f(float %i.hq) #10
  %i.hr = fdiv float 1.000000e+00, %exp2f244
  %i.hs = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.hr, ptr %i.hs, align 4, !tbaa !31
  %i.ht = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !12 ; 3 uses
  %i.hv = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hw = load <2 x double>, ptr %i.er, align 8, !tbaa !33 ; 2 uses
  %i.hx = insertelement <2 x double> %i.hw, double %i.hu, i64 1
  %i.hy = insertelement <2 x double> %i.hw, double %i.hu, i64 0
  %i.hz = fmul <2 x double> %i.hx, %i.hy
  %i.ia = fdiv <2 x double> splat (double 1.000000e+00), %i.hz
  %i.ib = fptrunc <2 x double> %i.ia to <2 x float> ; 3 uses
  store <2 x float> %i.ib, ptr %i.hv, align 4, !tbaa !31
  %i.ic = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.id = load double, ptr %i.ic, align 8, !tbaa !11
  %i.ie = fmul double %i.hu, %i.id
  %i.if = fdiv double 1.000000e+00, %i.ie
  %i.ig = fptrunc double %i.if to float           ; 2 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ig, ptr %i.ih, align 4, !tbaa !31
  %i.ii = extractelement <2 x float> %i.ib, i64 0
  %i.ij = extractelement <2 x float> %i.ib, i64 1
  br label %bb.l

bb.l:                                             ; preds = %._crit_edge251, %bb.k, %bb.j
  %i.ik = phi float [ %.pre257, %._crit_edge251 ], [ %i.ig, %bb.k ], [ %i.gj, %bb.j ]
  %i.il = phi float [ %.pre255, %._crit_edge251 ], [ %i.ij, %bb.k ], [ %i.ge, %bb.j ]
  %i.im = phi float [ %.pre253, %._crit_edge251 ], [ %i.ii, %bb.k ], [ %i.fz, %bb.j ]
  %i.in = fcmp oeq float %i.im, 1.000000e+00
  %i.io = fcmp oeq float %i.il, 1.000000e+00
  %or.cond221 = select i1 %i.in, i1 %i.io, i1 false
  %i.ip = fcmp oeq float %i.ik, 1.000000e+00
  %narrow248 = select i1 %or.cond221, i1 %i.ip, i1 false
  %i.iq = zext i1 %narrow248 to i8
  %i.ir = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 %i.iq, ptr %i.ir, align 8, !tbaa !34
  %i.is = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.it = load double, ptr %i.is, align 8, !tbaa !13
  %exp2 = tail call double @exp2(double %i.it) #10
  %i.iu = fmul double %exp2, 1.800000e-01
  %i.iv = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.iu, ptr %i.iv, align 8, !tbaa !35
  %i.iw = load i8, ptr %i.k, align 1, !tbaa !27, !range !36, !noundef !37
  %i.ix = trunc nuw i8 %i.iw to i1
  %i.iy = load i8, ptr %i.ir, align 8, !range !36
  %i.iz = trunc nuw i8 %i.iy to i1
  %or.cond194 = select i1 %i.ix, i1 %i.iz, i1 false
  br i1 %or.cond194, label %bb.m, label %.sink.split

bb.m:                                             ; preds = %bb.l
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.jb = load float, ptr %i.ja, align 4, !tbaa !31
  %i.jc = fcmp oeq float %i.jb, 1.000000e+00
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.je = load float, ptr %i.jd, align 8
  %i.jf = fcmp oeq float %i.je, 1.000000e+00
  %or.cond224 = select i1 %i.jc, i1 %i.jf, i1 false
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.jh = load float, ptr %i.jg, align 4
  %i.ji = fcmp oeq float %i.jh, 1.000000e+00
  %or.cond227 = select i1 %or.cond224, i1 %i.ji, i1 false
  br i1 %or.cond227, label %bb.n, label %.sink.split

bb.n:                                             ; preds = %bb.m
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jk = load float, ptr %i.jj, align 8, !tbaa !31
  %i.jl = fcmp oeq float %i.jk, 0.000000e+00
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jn = load float, ptr %i.jm, align 4
  %i.jo = fcmp oeq float %i.jn, 0.000000e+00
  %or.cond230 = select i1 %i.jl, i1 %i.jo, i1 false
  br i1 %or.cond230, label %bb.o, label %.sink.split

bb.o:                                             ; preds = %bb.n
  %i.jp = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jq = load float, ptr %i.jp, align 8, !tbaa !31
  %i.jr = fcmp oeq float %i.jq, 0.000000e+00
  br label %.sink.split

bb.p:                                             ; preds = %bb.a
  %i.js = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.ju = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.jv = load double, ptr %i.ju, align 8, !tbaa !38
  %i.jw = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.jx = load double, ptr %i.jw, align 8, !tbaa !39
  %i.jy = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.jz = load <2 x double>, ptr %i.jy, align 8, !tbaa !33 ; 3 uses
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kb = extractelement <2 x double> %i.jz, i64 1
  %i.kc = fmul double %i.kb, %i.jv                ; 2 uses
  %i.kd = insertelement <2 x double> %i.jz, double %i.jx, i64 0
  %i.ke = fmul <2 x double> %i.kd, %i.ka          ; 2 uses
  %i.kf = fcmp oeq double %i.kc, 0.000000e+00
  %i.kg = select i1 %i.kf, double 1.000000e+00, double %i.kc ; 2 uses
  %i.kh = fcmp oeq <2 x double> %i.ke, zeroinitializer
  %i.ki = select <2 x i1> %i.kh, <2 x double> splat (double 1.000000e+00), <2 x double> %i.ke ; 3 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  switch i32 %2, label %._crit_edge [
    i32 0, label %bb.q
    i32 1, label %bb.r
  ]

._crit_edge:                                      ; preds = %bb.p
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !31
  %.phi.trans.insert249 = getelementptr inbounds nuw i8, ptr %0, i64 28
  %.pre250 = load float, ptr %.phi.trans.insert249, align 4
  br label %bb.s

bb.q:                                             ; preds = %bb.p
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.kl = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.km = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.kn = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !18 ; 3 uses
  %i.kq = fdiv double %i.kp, %i.kg
  %i.kr = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.ks = load double, ptr %i.kr, align 8, !tbaa !19 ; 3 uses
  %i.kt = fsub double %i.kp, %i.ks                ; 2 uses
  %i.ku = load <2 x double>, ptr %i.js, align 8, !tbaa !33
  %i.kv = load <2 x double>, ptr %i.kn, align 8, !tbaa !33 ; 2 uses
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> <double poison, double -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.kx = shufflevector <2 x double> %i.kv, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %i.ky = insertelement <4 x double> %i.kx, double -0.000000e+00, i64 3
  %i.kz = shufflevector <2 x double> %i.ku, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.la = shufflevector <4 x double> %i.kz, <4 x double> %i.ky, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.lb = fadd <4 x double> %i.kw, %i.la
  %i.lc = load <4 x double>, ptr %i.jt, align 8, !tbaa !33 ; 3 uses
  %i.ld = load double, ptr %i.kk, align 8, !tbaa !12 ; 2 uses
  %i.le = load double, ptr %i.km, align 8, !tbaa !10
  %i.lf = fadd double %i.ld, %i.kq
  %i.lg = extractelement <4 x double> %i.lc, i64 0
  %i.lh = fadd double %i.lg, %i.lf
  %i.li = fsub double %i.lh, %i.ks                ; 2 uses
  %i.lj = fcmp oeq double %i.li, 0.000000e+00
  %i.lk = select i1 %i.lj, double 1.000000e+00, double %i.li
  %i.ll = fdiv double %i.kt, %i.lk
  %i.lm = shufflevector <4 x double> %i.lc, <4 x double> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.ln = insertelement <2 x double> %i.lm, double %i.ll, i64 1
  %i.lo = shufflevector <2 x double> %i.ln, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lp = fadd <4 x double> %i.lo, %i.lb
  %i.lq = insertelement <4 x double> %i.lc, double -0.000000e+00, i64 3
  %i.lr = fadd <4 x double> %i.lp, %i.lq
  %i.ls = fptrunc <4 x double> %i.lr to <4 x float>
  store <4 x float> %i.ls, ptr %i.kl, align 8, !tbaa !31
  %i.lt = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lu = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lw = fdiv <2 x double> %i.lv, %i.ki
  %i.lx = insertelement <2 x double> poison, double %i.ld, i64 0
  %i.ly = shufflevector <2 x double> %i.lx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lz = fadd <2 x double> %i.ly, %i.lw
  %i.ma = insertelement <2 x double> %i.lm, double %i.le, i64 0
  %i.mb = fadd <2 x double> %i.ma, %i.lz
  %i.mc = insertelement <2 x double> poison, double %i.ks, i64 0
  %i.md = shufflevector <2 x double> %i.mc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.me = fsub <2 x double> %i.mb, %i.md          ; 2 uses
  %i.mf = fcmp oeq <2 x double> %i.me, zeroinitializer
  %i.mg = select <2 x i1> %i.mf, <2 x double> splat (double 1.000000e+00), <2 x double> %i.me
  %i.mh = insertelement <2 x double> poison, double %i.kt, i64 0
  %i.mi = shufflevector <2 x double> %i.mh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mj = fdiv <2 x double> %i.mi, %i.mg
  %i.mk = fptrunc <2 x double> %i.mj to <2 x float>
  store <2 x float> %i.mk, ptr %i.lt, align 8, !tbaa !31
  %i.ml = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.mm = load double, ptr %i.ml, align 8, !tbaa !12 ; 3 uses
  %i.mn = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mo = load <2 x double>, ptr %i.kj, align 8, !tbaa !33 ; 2 uses
  %i.mp = insertelement <2 x double> %i.mo, double %i.mm, i64 1
  %i.mq = insertelement <2 x double> %i.mo, double %i.mm, i64 0
  %i.mr = fmul <2 x double> %i.mp, %i.mq
  %i.ms = fdiv <2 x double> splat (double 1.000000e+00), %i.mr
  %i.mt = fptrunc <2 x double> %i.ms to <2 x float> ; 3 uses
  store <2 x float> %i.mt, ptr %i.mn, align 8, !tbaa !31
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !11
  %i.mw = fmul double %i.mm, %i.mv
  %i.mx = fdiv double 1.000000e+00, %i.mw
  %i.my = fptrunc double %i.mx to float
  %i.mz = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.my, ptr %i.mz, align 8, !tbaa !31
  %i.na = extractelement <2 x float> %i.mt, i64 0
  %i.nb = extractelement <2 x float> %i.mt, i64 1
  br label %bb.s

bb.r:                                             ; preds = %bb.p
  %i.nc = getelementptr inbounds nuw i8, ptr %3, i64 120
  %4 = load double, ptr %i.nc, align 8, !tbaa !12 ; 3 uses
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !12 ; 3 uses
  %i.nf = getelementptr inbounds nuw i8, ptr %0, i64 48
  %5 = load <2 x double>, ptr %i.js, align 8, !tbaa !33 ; 2 uses
  %6 = insertelement <2 x double> %5, double %4, i64 1
  %7 = insertelement <2 x double> %5, double %4, i64 0
  %8 = fadd <2 x double> %6, %7
  %9 = insertelement <2 x double> poison, double %i.ne, i64 0
  %10 = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %11 = fadd <2 x double> %8, %10
  %12 = load <2 x double>, ptr %i.jt, align 8, !tbaa !33 ; 2 uses
  %13 = fadd <2 x double> %11, %12
  %14 = fptrunc <2 x double> %13 to <2 x float>
  %15 = fneg <2 x float> %14
  store <2 x float> %15, ptr %i.nf, align 8, !tbaa !31
  %16 = getelementptr inbounds nuw i8, ptr %3, i64 112
  %17 = load double, ptr %16, align 8, !tbaa !11
  %18 = fadd double %4, %17
  %19 = fadd double %i.ne, %18
  %20 = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ng = load double, ptr %20, align 8, !tbaa !11 ; 2 uses
  %21 = fadd double %i.ng, %19
  %22 = fptrunc double %21 to float
  %23 = fneg float %22
  %24 = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %23, ptr %24, align 8, !tbaa !31
  %i.nh = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.ni = load double, ptr %i.nh, align 8, !tbaa !18 ; 3 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !19 ; 3 uses
  %i.nl = fsub double %i.ni, %i.nk                ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.nn = insertelement <2 x double> poison, double %i.ni, i64 0
  %i.no = shufflevector <2 x double> %i.nn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.np = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.nq = insertelement <2 x double> %i.np, double %i.kg, i64 0
  %i.nr = fdiv <2 x double> %i.no, %i.nq
  %i.ns = fadd <2 x double> %10, %12
  %i.nt = insertelement <2 x double> poison, double %i.nk, i64 0
  %i.nu = shufflevector <2 x double> %i.nt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nv = fsub <2 x double> %i.ns, %i.nu
  %i.nw = fadd <2 x double> %i.nr, %i.nv
  %i.nx = insertelement <2 x double> poison, double %i.nl, i64 0
  %i.ny = shufflevector <2 x double> %i.nx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.nz = fdiv <2 x double> %i.nw, %i.ny
  %i.oa = fptrunc <2 x double> %i.nz to <2 x float>
  store <2 x float> %i.oa, ptr %i.nm, align 4, !tbaa !31
  %i.ob = extractelement <2 x double> %i.ki, i64 1
  %i.oc = fdiv double %i.ni, %i.ob
  %i.od = fadd double %i.ne, %i.ng
  %i.oe = fsub double %i.od, %i.nk
  %i.of = fadd double %i.oc, %i.oe
  %i.og = fdiv double %i.of, %i.nl
  %i.oh = fptrunc double %i.og to float
  %i.oi = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.oh, ptr %i.oi, align 4, !tbaa !31
  %i.oj = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.ok = load double, ptr %i.oj, align 8, !tbaa !12 ; 3 uses
  %i.ol = load double, ptr %i.kj, align 8, !tbaa !7
  %i.om = fmul double %i.ok, %i.ol
  %i.on = fptrunc double %i.om to float           ; 2 uses
  %i.oo = getelementptr inbounds nuw i8, ptr %0, i64 24
  store float %i.on, ptr %i.oo, align 8, !tbaa !31
  %i.op = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.oq = load double, ptr %i.op, align 8, !tbaa !10
  %i.or = fmul double %i.ok, %i.oq
  %i.os = fptrunc double %i.or to float           ; 2 uses
  %i.ot = getelementptr inbounds nuw i8, ptr %0, i64 28
  store float %i.os, ptr %i.ot, align 4, !tbaa !31
  %i.ou = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.ov = load double, ptr %i.ou, align 8, !tbaa !11
  %i.ow = fmul double %i.ok, %i.ov
  %i.ox = fptrunc double %i.ow to float
  %i.oy = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.ox, ptr %i.oy, align 8, !tbaa !31
  br label %bb.s

bb.s:                                             ; preds = %._crit_edge, %bb.r, %bb.q
  %i.oz = phi float [ %.pre250, %._crit_edge ], [ %i.os, %bb.r ], [ %i.nb, %bb.q ]
  %i.pa = phi float [ %.pre, %._crit_edge ], [ %i.on, %bb.r ], [ %i.na, %bb.q ]
  %i.pb = fcmp oeq float %i.pa, 1.000000e+00
  %i.pc = fcmp oeq float %i.oz, 1.000000e+00
  %or.cond233 = select i1 %i.pb, i1 %i.pc, i1 false
  br i1 %or.cond233, label %bb.t, label %.thread198

.thread198:                                       ; preds = %bb.s
  %i.pd = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.pd, align 8, !tbaa !34
  br label %.sink.split

bb.t:                                             ; preds = %bb.s
  %i.pe = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pf = load float, ptr %i.pe, align 8, !tbaa !31
  %i.pg = fcmp oeq float %i.pf, 1.000000e+00      ; 2 uses
  %i.ph = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pi = zext i1 %i.pg to i8
  store i8 %i.pi, ptr %i.ph, align 8, !tbaa !34
  %i.pj = select i1 %narrow, i1 %i.pg, i1 false
  br i1 %i.pj, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.pk = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pl = load float, ptr %i.pk, align 4, !tbaa !31
  %i.pm = fcmp oeq float %i.pl, 1.000000e+00
  %i.pn = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.po = load float, ptr %i.pn, align 8
  %i.pp = fcmp oeq float %i.po, 1.000000e+00
  %or.cond236 = select i1 %i.pm, i1 %i.pp, i1 false
  %i.pq = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.pr = load float, ptr %i.pq, align 4
  %i.ps = fcmp oeq float %i.pr, 1.000000e+00
  %or.cond239 = select i1 %or.cond236, i1 %i.ps, i1 false
  br i1 %or.cond239, label %bb.v, label %.sink.split

bb.v:                                             ; preds = %bb.u
  %i.pt = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.pu = load float, ptr %i.pt, align 8, !tbaa !31
  %i.pv = fcmp oeq float %i.pu, 0.000000e+00
  %i.pw = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.px = load float, ptr %i.pw, align 4
  %i.py = fcmp oeq float %i.px, 0.000000e+00
  %or.cond242 = select i1 %i.pv, i1 %i.py, i1 false
  br i1 %or.cond242, label %bb.w, label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.pz = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.qa = load float, ptr %i.pz, align 8, !tbaa !31
  %i.qb = fcmp oeq float %i.qa, 0.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %bb.u, %bb.v, %bb.w, %bb.t, %.thread198, %bb.l, %bb.m, %bb.n, %bb.o, %bb.f, %bb.g, %bb.h, %.thread
  %.sink.shrunk = phi i1 [ false, %bb.l ], [ false, %bb.f ], [ false, %.thread ], [ false, %bb.g ], [ %i.eo, %bb.h ], [ false, %bb.m ], [ false, %bb.n ], [ %i.jr, %bb.o ], [ %i.qb, %bb.w ], [ false, %bb.v ], [ false, %bb.t ], [ false, %.thread198 ], [ false, %bb.u ]
  %.sink = zext i1 %.sink.shrunk to i8
  store i8 %.sink, ptr %i.k, align 1, !tbaa !27
  br label %bb.x

bb.x:                                             ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare double @exp2(double) local_unnamed_addr

declare float @exp2f(float) local_unnamed_addr

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { cold noreturn }
attributes #7 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #9 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { builtin nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260310081906+9c464ee5f9df-1~exp1~20260310202043.1510)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN16OpenColorIO_v2_511GradingRGBME", !9, i64 0, !9, i64 8, !9, i64 16, !9, i64 24}
!9 = !{!"double", !5, i64 0}
!10 = !{!8, !9, i64 8}
!11 = !{!8, !9, i64 16}
!12 = !{!8, !9, i64 24}
!13 = !{!14, !9, i64 232}
!14 = !{!"_ZTSN16OpenColorIO_v2_514GradingPrimaryE", !8, i64 0, !8, i64 32, !8, i64 64, !8, i64 96, !8, i64 128, !8, i64 160, !8, i64 192, !9, i64 224, !9, i64 232, !9, i64 240, !9, i64 248, !9, i64 256, !9, i64 264}
!15 = !{!14, !9, i64 224}
!16 = !{!14, !9, i64 264}
!17 = !{!14, !9, i64 256}
!18 = !{!14, !9, i64 248}
!19 = !{!14, !9, i64 240}
!20 = !{!21, !23, i64 0}
!21 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE", !22, i64 0, !25, i64 8, !5, i64 16}
!22 = !{!"_ZTSNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE12_Alloc_hiderE", !23, i64 0}
!23 = !{!"p1 omnipotent char", !24, i64 0}
!24 = !{!"any pointer", !5, i64 0}
!25 = !{!"long", !5, i64 0}
!26 = !{!5, !5, i64 0}
!27 = !{!28, !30, i64 81}
!28 = !{!"_ZTSN16OpenColorIO_v2_523GradingPrimaryPreRenderE", !29, i64 0, !29, i64 12, !29, i64 24, !29, i64 36, !29, i64 48, !29, i64 60, !9, i64 72, !30, i64 80, !30, i64 81}
!29 = !{!"_ZTSSt5arrayIfLm3EE", !5, i64 0}
!30 = !{!"bool", !5, i64 0}
!31 = !{!32, !32, i64 0}
!32 = !{!"float", !5, i64 0}
!33 = !{!9, !9, i64 0}
!34 = !{!28, !30, i64 80}
!35 = !{!28, !9, i64 72}
!36 = !{i8 0, i8 2}
!37 = !{}
!38 = !{!14, !9, i64 192}
!39 = !{!14, !9, i64 200}
end_hunk_0
