Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ocio/original/GradingPrimary?download=true
inline.NumInlined: 186
inline.NumDeleted: 59
begin_hunk_0_@_ZN16OpenColorIO_v2_523GradingPrimaryPreRender6updateENS_12GradingStyleENS_18TransformDirectionERKNS_14GradingPrimaryE:bb.a
  %i.fq = fptrunc double %i.fp to float
  %exp2f203 = tail call float @exp2f(float %i.fq) #10
  %i.fr = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %exp2f203, ptr %i.fr, align 4, !tbaa !33
  %i.fs = load double, ptr %i.eo, align 8, !tbaa !10
  %i.ft = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.fu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.fv = load double, ptr %i.fu, align 8, !tbaa !11
  %i.fw = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.fx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.fy = load <2 x double>, ptr %i.fx, align 8, !tbaa !34 ; 3 uses
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ga = extractelement <2 x double> %i.fy, i64 1
  %i.gb = fmul double %i.ga, %i.fs
  %i.gc = fptrunc double %i.gb to float           ; 2 uses
  store float %i.gc, ptr %i.ft, align 4, !tbaa !33
  %i.gd = insertelement <2 x double> %i.fy, double %i.fv, i64 0
  %i.ge = fmul <2 x double> %i.gd, %i.fz
  %i.gf = fptrunc <2 x double> %i.ge to <2 x float>
  store <2 x float> %i.gf, ptr %i.fw, align 8, !tbaa !33
  br label %bb.q

bb.p:                                             ; preds = %bb.n
  %i.gg = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.gh = load double, ptr %i.gg, align 8, !tbaa !13 ; 3 uses
  %i.gi = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.gj = load <2 x double>, ptr %i.em, align 8, !tbaa !34 ; 2 uses
  %i.gk = insertelement <2 x double> %i.gj, double %i.gh, i64 1
  %i.gl = insertelement <2 x double> %i.gj, double %i.gh, i64 0
  %i.gm = fadd <2 x double> %i.gk, %i.gl
  %i.gn = fptrunc <2 x double> %i.gm to <2 x float>
  %i.go = fneg <2 x float> %i.gn
  store <2 x float> %i.go, ptr %i.gi, align 8, !tbaa !33
  %i.gp = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !12
  %i.gr = fadd double %i.gh, %i.gq
  %i.gs = fptrunc double %i.gr to float
  %i.gt = fneg float %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.gt, ptr %i.gu, align 8, !tbaa !33
  %i.gv = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !13 ; 3 uses
  %i.gx = load double, ptr %i.en, align 8, !tbaa !10
  %i.gy = fadd double %i.gw, %i.gx
  %i.gz = fptrunc double %i.gy to float
  %exp2f = tail call float @exp2f(float %i.gz) #10
  %i.ha = fdiv float 1.000000e+00, %exp2f
  %i.hb = getelementptr inbounds nuw i8, ptr %0, i64 36
  store float %i.ha, ptr %i.hb, align 4, !tbaa !33
  %i.hc = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !11
  %i.he = fadd double %i.gw, %i.hd
  %i.hf = fptrunc double %i.he to float
  %exp2f199 = tail call float @exp2f(float %i.hf) #10
  %i.hg = fdiv float 1.000000e+00, %exp2f199
  %i.hh = getelementptr inbounds nuw i8, ptr %0, i64 40
  store float %i.hg, ptr %i.hh, align 8, !tbaa !33
  %i.hi = getelementptr inbounds nuw i8, ptr %3, i64 144
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !12
  %i.hk = fadd double %i.gw, %i.hj
  %i.hl = fptrunc double %i.hk to float
  %exp2f200 = tail call float @exp2f(float %i.hl) #10
  %i.hm = fdiv float 1.000000e+00, %exp2f200
  %i.hn = getelementptr inbounds nuw i8, ptr %0, i64 44
  store float %i.hm, ptr %i.hn, align 4, !tbaa !33
  %i.ho = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.hp = load double, ptr %i.ho, align 8, !tbaa !13 ; 3 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.hr = load <2 x double>, ptr %i.eo, align 8, !tbaa !34 ; 2 uses
  %i.hs = insertelement <2 x double> %i.hr, double %i.hp, i64 1
  %i.ht = insertelement <2 x double> %i.hr, double %i.hp, i64 0
  %i.hu = fmul <2 x double> %i.hs, %i.ht
  %i.hv = fdiv <2 x double> splat (double 1.000000e+00), %i.hu
  %i.hw = fptrunc <2 x double> %i.hv to <2 x float> ; 2 uses
  store <2 x float> %i.hw, ptr %i.hq, align 4, !tbaa !33
  %i.hx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.hy = load double, ptr %i.hx, align 8, !tbaa !12
  %i.hz = fmul double %i.hp, %i.hy
  %i.ia = fdiv double 1.000000e+00, %i.hz
  %i.ib = fptrunc double %i.ia to float
  %i.ic = getelementptr inbounds nuw i8, ptr %0, i64 20
  store float %i.ib, ptr %i.ic, align 4, !tbaa !33
  %i.id = extractelement <2 x float> %i.hw, i64 0
  br label %bb.q

bb.q:                                             ; preds = %._crit_edge204, %bb.p, %bb.o
  %i.ie = phi float [ %.pre206, %._crit_edge204 ], [ %i.id, %bb.p ], [ %i.gc, %bb.o ]
  %i.if = fcmp oeq float %i.ie, 1.000000e+00
  br i1 %i.if, label %bb.r, label %bb.t

bb.r:                                             ; preds = %bb.q
  %i.ig = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.ih = load float, ptr %i.ig, align 8, !tbaa !33
  %i.ii = fcmp oeq float %i.ih, 1.000000e+00
  br i1 %i.ii, label %bb.s, label %bb.t

bb.s:                                             ; preds = %bb.r
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 20
  %i.ik = load float, ptr %i.ij, align 4, !tbaa !33
  %i.il = fcmp oeq float %i.ik, 1.000000e+00
  %i.im = zext i1 %i.il to i8
  br label %bb.t

bb.t:                                             ; preds = %bb.s, %bb.r, %bb.q
  %i.in = phi i8 [ 0, %bb.r ], [ 0, %bb.q ], [ %i.im, %bb.s ]
  %i.io = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 2 uses
  store i8 %i.in, ptr %i.io, align 8, !tbaa !35
  %i.ip = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.iq = load double, ptr %i.ip, align 8, !tbaa !15
  %exp2 = tail call double @exp2(double %i.iq) #10
  %i.ir = fmul double %exp2, 1.800000e-01
  %i.is = getelementptr inbounds nuw i8, ptr %0, i64 72
  store double %i.ir, ptr %i.is, align 8, !tbaa !36
  %i.it = load i8, ptr %i.k, align 1, !tbaa !31, !range !37, !noundef !38
  %i.iu = trunc nuw i8 %i.it to i1
  br i1 %i.iu, label %bb.u, label %.sink.split

bb.u:                                             ; preds = %bb.t
  %i.iv = load i8, ptr %i.io, align 8, !tbaa !35, !range !37, !noundef !38
  %i.iw = trunc nuw i8 %i.iv to i1
  br i1 %i.iw, label %bb.v, label %.sink.split

bb.v:                                             ; preds = %bb.u
  %i.ix = getelementptr inbounds nuw i8, ptr %0, i64 36
  %i.iy = load float, ptr %i.ix, align 4, !tbaa !33
  %i.iz = fcmp oeq float %i.iy, 1.000000e+00
  br i1 %i.iz, label %bb.w, label %.sink.split

bb.w:                                             ; preds = %bb.v
  %i.ja = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.jb = load float, ptr %i.ja, align 8, !tbaa !33
  %i.jc = fcmp oeq float %i.jb, 1.000000e+00
  br i1 %i.jc, label %bb.x, label %.sink.split

bb.x:                                             ; preds = %bb.w
  %i.jd = getelementptr inbounds nuw i8, ptr %0, i64 44
  %i.je = load float, ptr %i.jd, align 4, !tbaa !33
  %i.jf = fcmp oeq float %i.je, 1.000000e+00
  br i1 %i.jf, label %bb.y, label %.sink.split

bb.y:                                             ; preds = %bb.x
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.jh = load float, ptr %i.jg, align 8, !tbaa !33
  %i.ji = fcmp oeq float %i.jh, 0.000000e+00
  br i1 %i.ji, label %bb.z, label %.sink.split

bb.z:                                             ; preds = %bb.y
  %i.jj = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.jk = load float, ptr %i.jj, align 4, !tbaa !33
  %i.jl = fcmp oeq float %i.jk, 0.000000e+00
  br i1 %i.jl, label %bb.aa, label %.sink.split

bb.aa:                                            ; preds = %bb.z
  %i.jm = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.jn = load float, ptr %i.jm, align 8, !tbaa !33
  %i.jo = fcmp oeq float %i.jn, 0.000000e+00
  br label %.sink.split

bb.ab:                                            ; preds = %bb.a
  %i.jp = getelementptr inbounds nuw i8, ptr %3, i64 96 ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %3, i64 160 ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.js = load double, ptr %i.jr, align 8, !tbaa !39
  %i.jt = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.ju = load double, ptr %i.jt, align 8, !tbaa !40
  %i.jv = getelementptr inbounds nuw i8, ptr %3, i64 208
  %i.jw = load <2 x double>, ptr %i.jv, align 8, !tbaa !34 ; 3 uses
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.jy = extractelement <2 x double> %i.jw, i64 1
  %i.jz = fmul double %i.jy, %i.js                ; 2 uses
  %i.ka = insertelement <2 x double> %i.jw, double %i.ju, i64 0
  %i.kb = fmul <2 x double> %i.ka, %i.jx          ; 2 uses
  %i.kc = fcmp oeq double %i.jz, 0.000000e+00
  %i.kd = select i1 %i.kc, double 1.000000e+00, double %i.jz ; 2 uses
  %i.ke = fcmp oeq <2 x double> %i.kb, zeroinitializer
  %i.kf = select <2 x i1> %i.ke, <2 x double> splat (double 1.000000e+00), <2 x double> %i.kb ; 3 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %3, i64 64 ; 2 uses
  switch i32 %2, label %._crit_edge [
    i32 0, label %bb.ac
    i32 1, label %bb.ad
  ]

._crit_edge:                                      ; preds = %bb.ab
  %.phi.trans.insert = getelementptr inbounds nuw i8, ptr %0, i64 24
  %.pre = load float, ptr %.phi.trans.insert, align 8, !tbaa !33
  br label %bb.ae

bb.ac:                                            ; preds = %bb.ab
  %i.kh = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.ki = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.kj = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.kk = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.kl = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.km = load double, ptr %i.kl, align 8, !tbaa !19 ; 3 uses
  %i.kn = fdiv double %i.km, %i.kd
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !20 ; 3 uses
  %i.kq = fsub double %i.km, %i.kp                ; 2 uses
  %i.kr = load <2 x double>, ptr %i.jp, align 8, !tbaa !34
  %i.ks = load <2 x double>, ptr %i.kk, align 8, !tbaa !34 ; 2 uses
  %4 = shufflevector <2 x double> %i.ks, <2 x double> <double poison, double -0.000000e+00>, <4 x i32> <i32 1, i32 1, i32 1, i32 3>
  %i.kt = shufflevector <2 x double> %i.ks, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 poison>
  %5 = insertelement <4 x double> %i.kt, double -0.000000e+00, i64 3
  %i.ku = shufflevector <2 x double> %i.kr, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %6 = shufflevector <4 x double> %i.ku, <4 x double> %5, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.kv = fadd <4 x double> %4, %6
  %i.kw = load <4 x double>, ptr %i.jq, align 8, !tbaa !34 ; 3 uses
  %i.kx = load double, ptr %i.kh, align 8, !tbaa !13 ; 2 uses
  %i.ky = load double, ptr %i.kj, align 8, !tbaa !11
  %i.kz = fadd double %i.kx, %i.kn
  %i.la = extractelement <4 x double> %i.kw, i64 0
  %i.lb = fadd double %i.la, %i.kz
  %i.lc = fsub double %i.lb, %i.kp                ; 2 uses
  %i.ld = fcmp oeq double %i.lc, 0.000000e+00
  %i.le = select i1 %i.ld, double 1.000000e+00, double %i.lc
  %i.lf = fdiv double %i.kq, %i.le
  %i.lg = shufflevector <4 x double> %i.kw, <4 x double> poison, <2 x i32> <i32 3, i32 2> ; 2 uses
  %i.lh = insertelement <2 x double> %i.lg, double %i.lf, i64 1
  %i.li = shufflevector <2 x double> %i.lh, <2 x double> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.lj = fadd <4 x double> %i.li, %i.kv
  %7 = insertelement <4 x double> %i.kw, double -0.000000e+00, i64 3
  %8 = fadd <4 x double> %i.lj, %7
  %i.lk = fptrunc <4 x double> %8 to <4 x float>
  store <4 x float> %i.lk, ptr %i.ki, align 8, !tbaa !33
  %i.ll = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.lm = insertelement <2 x double> poison, double %i.km, i64 0
  %i.ln = shufflevector <2 x double> %i.lm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lo = fdiv <2 x double> %i.ln, %i.kf
  %i.lp = insertelement <2 x double> poison, double %i.kx, i64 0
  %i.lq = shufflevector <2 x double> %i.lp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lr = fadd <2 x double> %i.lq, %i.lo
  %i.ls = insertelement <2 x double> %i.lg, double %i.ky, i64 0
  %i.lt = fadd <2 x double> %i.ls, %i.lr
  %i.lu = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.lv = shufflevector <2 x double> %i.lu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.lw = fsub <2 x double> %i.lt, %i.lv          ; 2 uses
  %i.lx = fcmp oeq <2 x double> %i.lw, zeroinitializer
  %i.ly = select <2 x i1> %i.lx, <2 x double> splat (double 1.000000e+00), <2 x double> %i.lw
  %i.lz = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ma = shufflevector <2 x double> %i.lz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.mb = fdiv <2 x double> %i.ma, %i.ly
  %i.mc = fptrunc <2 x double> %i.mb to <2 x float>
  store <2 x float> %i.mc, ptr %i.ll, align 8, !tbaa !33
  %i.md = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.me = load double, ptr %i.md, align 8, !tbaa !13 ; 3 uses
  %i.mf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.mg = load <2 x double>, ptr %i.kg, align 8, !tbaa !34 ; 2 uses
  %i.mh = insertelement <2 x double> %i.mg, double %i.me, i64 1
  %i.mi = insertelement <2 x double> %i.mg, double %i.me, i64 0
  %i.mj = fmul <2 x double> %i.mh, %i.mi
  %i.mk = fdiv <2 x double> splat (double 1.000000e+00), %i.mj
  %i.ml = fptrunc <2 x double> %i.mk to <2 x float> ; 2 uses
  store <2 x float> %i.ml, ptr %i.mf, align 8, !tbaa !33
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !12
  %i.mo = fmul double %i.me, %i.mn
  %i.mp = fdiv double 1.000000e+00, %i.mo
  %i.mq = fptrunc double %i.mp to float
  %i.mr = getelementptr inbounds nuw i8, ptr %0, i64 32
  store float %i.mq, ptr %i.mr, align 8, !tbaa !33
  %i.ms = extractelement <2 x float> %i.ml, i64 0
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.mt = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.mu = load double, ptr %i.mt, align 8, !tbaa !13 ; 3 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !13 ; 3 uses
  %i.mx = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.my = load <2 x double>, ptr %i.jp, align 8, !tbaa !34 ; 2 uses
  %i.mz = insertelement <2 x double> %i.my, double %i.mu, i64 1
  %i.na = insertelement <2 x double> %i.my, double %i.mu, i64 0
  %i.nb = fadd <2 x double> %i.mz, %i.na
  %i.nc = insertelement <2 x double> poison, double %i.mw, i64 0
  %i.nd = shufflevector <2 x double> %i.nc, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ne = fadd <2 x double> %i.nb, %i.nd
  %i.nf = load <2 x double>, ptr %i.jq, align 8, !tbaa !34 ; 2 uses
  %i.ng = fadd <2 x double> %i.ne, %i.nf
  %i.nh = fptrunc <2 x double> %i.ng to <2 x float>
  %i.ni = fneg <2 x float> %i.nh
  store <2 x float> %i.ni, ptr %i.mx, align 8, !tbaa !33
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !12
  %i.nl = fadd double %i.mu, %i.nk
  %i.nm = fadd double %i.mw, %i.nl
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.no = load double, ptr %i.nn, align 8, !tbaa !12 ; 2 uses
  %i.np = fadd double %i.no, %i.nm
  %i.nq = fptrunc double %i.np to float
  %i.nr = fneg float %i.nq
  %i.ns = getelementptr inbounds nuw i8, ptr %0, i64 56
  store float %i.nr, ptr %i.ns, align 8, !tbaa !33
  %i.nt = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.nu = load double, ptr %i.nt, align 8, !tbaa !19 ; 3 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !20 ; 3 uses
  %i.nx = fsub double %i.nu, %i.nw                ; 2 uses
  %i.ny = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.nz = insertelement <2 x double> poison, double %i.nu, i64 0
  %i.oa = shufflevector <2 x double> %i.nz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ob = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.oc = insertelement <2 x double> %i.ob, double %i.kd, i64 0
  %i.od = fdiv <2 x double> %i.oa, %i.oc
  %i.oe = fadd <2 x double> %i.nd, %i.nf
  %i.of = insertelement <2 x double> poison, double %i.nw, i64 0
  %i.og = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> zeroinitializer
  %i.oh = fsub <2 x double> %i.oe, %i.og
  %i.oi = fadd <2 x double> %i.od, %i.oh
  %i.oj = insertelement <2 x double> poison, double %i.nx, i64 0
  %i.ok = shufflevector <2 x double> %i.oj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ol = fdiv <2 x double> %i.oi, %i.ok
  %i.om = fptrunc <2 x double> %i.ol to <2 x float>
  store <2 x float> %i.om, ptr %i.ny, align 4, !tbaa !33
  %i.on = extractelement <2 x double> %i.kf, i64 1
  %i.oo = fdiv double %i.nu, %i.on
  %i.op = fadd double %i.mw, %i.no
  %i.oq = fsub double %i.op, %i.nw
  %i.or = fadd double %i.oo, %i.oq
  %i.os = fdiv double %i.or, %i.nx
  %i.ot = fptrunc double %i.os to float
  %i.ou = getelementptr inbounds nuw i8, ptr %0, i64 68
  store float %i.ot, ptr %i.ou, align 4, !tbaa !33
  %i.ov = load double, ptr %i.kg, align 8, !tbaa !10
  %i.ow = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ox = getelementptr inbounds nuw i8, ptr %3, i64 72
  %i.oy = load double, ptr %i.ox, align 8, !tbaa !11
  %i.oz = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.pa = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.pb = load <2 x double>, ptr %i.pa, align 8, !tbaa !34 ; 3 uses
  %i.pc = shufflevector <2 x double> %i.pb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pd = extractelement <2 x double> %i.pb, i64 1
  %i.pe = fmul double %i.pd, %i.ov
  %i.pf = fptrunc double %i.pe to float           ; 2 uses
  store float %i.pf, ptr %i.ow, align 8, !tbaa !33
  %i.pg = insertelement <2 x double> %i.pb, double %i.oy, i64 0
  %i.ph = fmul <2 x double> %i.pg, %i.pc
  %i.pi = fptrunc <2 x double> %i.ph to <2 x float>
  store <2 x float> %i.pi, ptr %i.oz, align 4, !tbaa !33
  br label %bb.ae

bb.ae:                                            ; preds = %._crit_edge, %bb.ad, %bb.ac
  %i.pj = phi float [ %.pre, %._crit_edge ], [ %i.pf, %bb.ad ], [ %i.ms, %bb.ac ]
  %i.pk = fcmp oeq float %i.pj, 1.000000e+00
  br i1 %i.pk, label %bb.af, label %.thread

bb.af:                                            ; preds = %bb.ae
  %i.pl = getelementptr inbounds nuw i8, ptr %0, i64 28
  %i.pm = load float, ptr %i.pl, align 4, !tbaa !33
  %i.pn = fcmp oeq float %i.pm, 1.000000e+00
  br i1 %i.pn, label %bb.ag, label %.thread

.thread:                                          ; preds = %bb.af, %bb.ae
  %i.po = getelementptr inbounds nuw i8, ptr %0, i64 80
  store i8 0, ptr %i.po, align 8, !tbaa !35
  br label %.sink.split

bb.ag:                                            ; preds = %bb.af
  %i.pp = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.pq = load float, ptr %i.pp, align 8, !tbaa !33
  %i.pr = fcmp oeq float %i.pq, 1.000000e+00      ; 2 uses
  %i.ps = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.pt = zext i1 %i.pr to i8
  store i8 %i.pt, ptr %i.ps, align 8, !tbaa !35
  %i.pu = select i1 %narrow, i1 %i.pr, i1 false
  br i1 %i.pu, label %bb.ah, label %.sink.split

bb.ah:                                            ; preds = %bb.ag
  %i.pv = getelementptr inbounds nuw i8, ptr %0, i64 60
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !33
  %i.px = fcmp oeq float %i.pw, 1.000000e+00
  br i1 %i.px, label %bb.ai, label %.sink.split

bb.ai:                                            ; preds = %bb.ah
  %i.py = getelementptr inbounds nuw i8, ptr %0, i64 64
  %i.pz = load float, ptr %i.py, align 8, !tbaa !33
  %i.qa = fcmp oeq float %i.pz, 1.000000e+00
  br i1 %i.qa, label %bb.aj, label %.sink.split

bb.aj:                                            ; preds = %bb.ai
  %i.qb = getelementptr inbounds nuw i8, ptr %0, i64 68
  %i.qc = load float, ptr %i.qb, align 4, !tbaa !33
  %i.qd = fcmp oeq float %i.qc, 1.000000e+00
  br i1 %i.qd, label %bb.ak, label %.sink.split

bb.ak:                                            ; preds = %bb.aj
  %i.qe = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.qf = load float, ptr %i.qe, align 8, !tbaa !33
  %i.qg = fcmp oeq float %i.qf, 0.000000e+00
  br i1 %i.qg, label %bb.al, label %.sink.split

bb.al:                                            ; preds = %bb.ak
  %i.qh = getelementptr inbounds nuw i8, ptr %0, i64 52
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !33
  %i.qj = fcmp oeq float %i.qi, 0.000000e+00
  br i1 %i.qj, label %bb.am, label %.sink.split

bb.am:                                            ; preds = %bb.al
  %i.qk = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.ql = load float, ptr %i.qk, align 8, !tbaa !33
  %i.qm = fcmp oeq float %i.ql, 0.000000e+00
  br label %.sink.split

.sink.split:                                      ; preds = %bb.ah, %bb.ai, %bb.aj, %bb.ak, %bb.al, %bb.am, %bb.ag, %.thread, %bb.t, %bb.u, %bb.v, %bb.w, %bb.x, %bb.y, %bb.z, %bb.aa, %bb.g, %bb.h, %bb.i, %bb.j, %bb.k, %bb.l, %bb.m, %.thread210
  %.sink.shrunk = phi i1 [ %i.jo, %bb.aa ], [ false, %.thread210 ], [ false, %bb.l ], [ false, %bb.k ], [ false, %bb.j ], [ false, %bb.i ], [ false, %bb.h ], [ %i.el, %bb.m ], [ false, %bb.g ], [ false, %bb.z ], [ false, %bb.y ], [ false, %bb.x ], [ false, %bb.w ], [ false, %bb.v ], [ false, %bb.u ], [ false, %bb.t ], [ false, %bb.al ], [ false, %bb.ak ], [ false, %bb.aj ], [ false, %bb.ai ], [ false, %bb.ah ], [ %i.qm, %bb.am ], [ false, %bb.ag ], [ false, %.thread ]
  %.sink = zext i1 %.sink.shrunk to i8
  store i8 %.sink, ptr %i.k, align 1, !tbaa !31
  br label %bb.an

bb.an:                                            ; preds = %.sink.split, %bb.a
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #8

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #9

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, i64 noundef) local_unnamed_addr #4

declare noundef nonnull align 8 dereferenceable(8) ptr @_ZNSo9_M_insertIdEERSoT_(ptr noundef nonnull align 8 dereferenceable(8), double noundef) local_unnamed_addr #4

declare double @exp2(double) local_unnamed_addr
end_hunk_0
