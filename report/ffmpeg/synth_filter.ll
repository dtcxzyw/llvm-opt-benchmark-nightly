Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/ffmpeg/original/synth_filter?download=true
inline.NumInlined: 14
inline.NumDeleted: 4
loop-unroll.NumCompletelyUnrolled: 6
loop-unroll.NumUnrolled: 6
begin_hunk_0_@synth_filter_float:bb.a
  %i.gz = insertelement <4 x float> %i.gy, float %i.gd, i64 3
  %i.ha = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gr, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %i.gn, i64 2
  %i.hd = insertelement <4 x float> %i.hc, float %i.gi, i64 3
  %i.he = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.hd, <4 x float> %i.fw) ; 4 uses
  %i.hf = icmp samesign ult i64 %indvars.iv142, 128
  %i.hg = extractelement <4 x float> %i.he, i64 0
  %i.hh = extractelement <4 x float> %i.he, i64 1
  %i.hi = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.hf, label %.lr.ph114.us.6, label %._crit_edge.us

.lr.ph114.us.6:                                   ; preds = %.lr.ph114.us.5
  %indvars.iv.next145.5 = add nuw nsw i64 %indvars.iv142, 384 ; 3 uses
  %i.hj = or disjoint i64 %indvars.iv.next145.5, %indvars.iv148 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hj ; 4 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !13
  %i.hm = sub nuw nsw i64 %indvars.iv.next145.5, %indvars.iv148
  %i.hn = getelementptr [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 -1988
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !13
  %i.hq = fneg nsz float %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 64
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !13
  %i.ht = getelementptr [4 x i8], ptr %i.c, i64 %i.hj
  %i.hu = getelementptr i8, ptr %i.ht, i64 -2048
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 128
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !13
  %gep160.6 = getelementptr [4 x i8], ptr %invariant.gep159, i64 %indvars.iv.next145.5
  %i.hy = getelementptr i8, ptr %gep160.6, i64 -2048
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !13
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 192
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !13
  %i.ic = getelementptr i8, ptr %i.hn, i64 -1924
  %i.id = load float, ptr %i.ic, align 4, !tbaa !13
  %i.ie = insertelement <4 x float> poison, float %i.ib, i64 0
  %i.if = insertelement <4 x float> %i.ie, float %i.hx, i64 1
  %i.ig = insertelement <4 x float> %i.if, float %i.hs, i64 2
  %i.ih = insertelement <4 x float> %i.ig, float %i.hl, i64 3
  %i.ii = insertelement <4 x float> poison, float %i.id, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.hz, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.hv, i64 2
  %i.il = insertelement <4 x float> %i.ik, float %i.hq, i64 3
  %i.im = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> %i.il, <4 x float> %i.he) ; 3 uses
  %i.in = extractelement <4 x float> %i.im, i64 0
  %i.io = extractelement <4 x float> %i.im, i64 1
  %i.ip = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph114.us.preheader, %.lr.ph114.us.1, %.lr.ph114.us.2, %.lr.ph114.us.3, %.lr.ph114.us.4, %.lr.ph114.us.5, %.lr.ph114.us.6, %..preheader_crit_edge.us
  %.189.lcssa.us = phi float [ %i.iy, %..preheader_crit_edge.us ], [ %i.kg, %.lr.ph114.us.preheader ], [ %i.cb, %.lr.ph114.us.1 ], [ %i.dj, %.lr.ph114.us.2 ], [ %i.er, %.lr.ph114.us.3 ], [ %i.fz, %.lr.ph114.us.4 ], [ %i.hh, %.lr.ph114.us.5 ], [ %i.io, %.lr.ph114.us.6 ]
  %.1.lcssa.us = phi float [ %i.ix, %..preheader_crit_edge.us ], [ %i.kf, %.lr.ph114.us.preheader ], [ %i.ca, %.lr.ph114.us.1 ], [ %i.di, %.lr.ph114.us.2 ], [ %i.eq, %.lr.ph114.us.3 ], [ %i.fy, %.lr.ph114.us.4 ], [ %i.hg, %.lr.ph114.us.5 ], [ %i.in, %.lr.ph114.us.6 ]
  %i.iq = phi <2 x float> [ %i.iz, %..preheader_crit_edge.us ], [ %i.kh, %.lr.ph114.us.preheader ], [ %i.cc, %.lr.ph114.us.1 ], [ %i.dk, %.lr.ph114.us.2 ], [ %i.es, %.lr.ph114.us.3 ], [ %i.ga, %.lr.ph114.us.4 ], [ %i.hi, %.lr.ph114.us.5 ], [ %i.ip, %.lr.ph114.us.6 ]
  %i.ir = fmul nsz <2 x float> %i.i, %i.iq        ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv148
  %i.it = extractelement <2 x float> %i.ir, i64 1
  store float %i.it, ptr %i.is, align 4, !tbaa !13
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.l
  %i.iv = extractelement <2 x float> %i.ir, i64 0
  store float %i.iv, ptr %i.iu, align 4, !tbaa !13
  store float %.189.lcssa.us, ptr %i.j, align 4, !tbaa !13
  store float %.1.lcssa.us, ptr %i.m, align 4, !tbaa !13
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next149, 16
  br i1 %exitcond151.not, label %.split121.us, label %.lr.ph.us, !llvm.loop !16

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.iw = icmp samesign ult i64 %indvars.iv138, 448
  %i.ix = extractelement <4 x float> %i.at, i64 0
  %i.iy = extractelement <4 x float> %i.at, i64 1
  %i.iz = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.iw, label %.lr.ph114.us.preheader, label %._crit_edge.us

.lr.ph114.us.preheader:                           ; preds = %..preheader_crit_edge.us
  %invariant.gep159 = getelementptr [4 x i8], ptr %i.c, i64 %i.l ; 7 uses
  %i.ja = or disjoint i64 %indvars.iv142, %indvars.iv148 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ja ; 4 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !13
  %i.jd = sub nuw nsw i64 %indvars.iv142, %indvars.iv148
  %i.je = getelementptr [4 x i8], ptr %i.c, i64 %i.jd ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 -1988
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !13
  %i.jh = fneg nsz float %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 64
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !13
  %i.jk = getelementptr [4 x i8], ptr %i.c, i64 %i.ja
  %i.jl = getelementptr i8, ptr %i.jk, i64 -2048
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 128
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !13
  %gep160 = getelementptr [4 x i8], ptr %invariant.gep159, i64 %indvars.iv142
  %i.jp = getelementptr i8, ptr %gep160, i64 -2048
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jb, i64 192
  %i.js = load float, ptr %i.jr, align 4, !tbaa !13
  %i.jt = getelementptr i8, ptr %i.je, i64 -1924
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !13
  %i.jv = insertelement <4 x float> poison, float %i.js, i64 0
  %i.jw = insertelement <4 x float> %i.jv, float %i.jo, i64 1
  %i.jx = insertelement <4 x float> %i.jw, float %i.jj, i64 2
  %i.jy = insertelement <4 x float> %i.jx, float %i.jc, i64 3
  %i.jz = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.ka = insertelement <4 x float> %i.jz, float %i.jq, i64 1
  %i.kb = insertelement <4 x float> %i.ka, float %i.jm, i64 2
  %i.kc = insertelement <4 x float> %i.kb, float %i.jh, i64 3
  %i.kd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> %i.kc, <4 x float> %i.at) ; 4 uses
  %i.ke = icmp samesign ult i64 %indvars.iv142, 448
  %i.kf = extractelement <4 x float> %i.kd, i64 0
  %i.kg = extractelement <4 x float> %i.kd, i64 1
  %i.kh = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.ke, label %.lr.ph114.us.1, label %._crit_edge.us

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 28 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !13
  %i.kk = or disjoint i64 %indvars.iv, 16         ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kk ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !13
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 4 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !13
  %i.kp = sub nsw i64 0, %indvars.iv
  %i.kq = getelementptr [4 x i8], ptr %i.c, i64 %i.kp ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 -1988
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !13
  %i.kt = fneg nsz float %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 64
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !13
  %i.kw = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.kx = getelementptr i8, ptr %i.kw, i64 -2048
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !13
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kn, i64 128
  %i.la = load float, ptr %i.kz, align 4, !tbaa !13
  %i.lb = getelementptr [4 x i8], ptr %i.c, i64 %i.kk
  %i.lc = getelementptr i8, ptr %i.lb, i64 -2048
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %i.kn, i64 192
  %i.lf = load float, ptr %i.le, align 4, !tbaa !13
  %i.lg = getelementptr i8, ptr %i.kq, i64 -1924
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !13
  %i.li = or disjoint i64 %indvars.iv, 64         ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.li ; 4 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !13
  %i.ll = sub nuw nsw i64 64, %indvars.iv
  %i.lm = getelementptr [4 x i8], ptr %i.c, i64 %i.ll ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 -1988
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !13
  %i.lp = fneg nsz float %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 64
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !13
  %i.ls = getelementptr [4 x i8], ptr %i.c, i64 %i.li
  %i.lt = getelementptr i8, ptr %i.ls, i64 -2048
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !13
  %i.lx = or i64 %indvars.iv, 80
  %i.ly = getelementptr [4 x i8], ptr %i.c, i64 %i.lx
  %i.lz = getelementptr i8, ptr %i.ly, i64 -2048
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !13
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 192
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !13
  %i.md = getelementptr i8, ptr %i.lm, i64 -1924
  %i.me = load float, ptr %i.md, align 4, !tbaa !13
  %i.mf = or disjoint i64 %indvars.iv, 128        ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.mf ; 4 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !13
  %i.mi = sub nuw nsw i64 128, %indvars.iv
  %i.mj = getelementptr [4 x i8], ptr %i.c, i64 %i.mi ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 -1988
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !13
  %i.mm = fneg nsz float %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 64
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !13
  %i.mp = getelementptr [4 x i8], ptr %i.c, i64 %i.mf
  %i.mq = getelementptr i8, ptr %i.mp, i64 -2048
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !13
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 128
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !13
  %i.mu = or i64 %indvars.iv, 144
  %i.mv = getelementptr [4 x i8], ptr %i.c, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 -2048
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 192
  %i.mz = load float, ptr %i.my, align 4, !tbaa !13
  %i.na = getelementptr i8, ptr %i.mj, i64 -1924
  %i.nb = load float, ptr %i.na, align 4, !tbaa !13
  %i.nc = or disjoint i64 %indvars.iv, 192        ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.nc ; 4 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !13
  %i.nf = sub nuw nsw i64 192, %indvars.iv
  %i.ng = getelementptr [4 x i8], ptr %i.c, i64 %i.nf ; 2 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 -1988
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !13
  %i.nj = fneg nsz float %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 64
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !13
  %i.nm = getelementptr [4 x i8], ptr %i.c, i64 %i.nc
  %i.nn = getelementptr i8, ptr %i.nm, i64 -2048
  %i.no = load float, ptr %i.nn, align 4, !tbaa !13
  %9 = fmul nsz float %i.la, %i.ld
  %10 = fmul nsz float %i.lf, %i.lh
  %11 = insertelement <2 x float> poison, float %i.ko, i64 0
  %12 = insertelement <2 x float> %11, float %i.kv, i64 1
  %13 = insertelement <2 x float> poison, float %i.kt, i64 0
  %14 = insertelement <2 x float> %13, float %i.ky, i64 1
  %15 = insertelement <2 x float> poison, float %i.kj, i64 0
  %16 = insertelement <2 x float> %15, float %i.km, i64 1
  %17 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %14, <2 x float> %16)
  %18 = insertelement <2 x float> poison, float %i.lk, i64 0
  %19 = insertelement <2 x float> %18, float %i.lr, i64 1
  %20 = insertelement <2 x float> poison, float %i.lp, i64 0
  %21 = insertelement <2 x float> %20, float %i.lu, i64 1
  %22 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %21, <2 x float> %17)
  %i.np = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.mc, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.mh, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.mo, i64 3
  %i.nt = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.me, i64 1
  %i.nv = insertelement <4 x float> %i.nu, float %i.mm, i64 2
  %i.nw = insertelement <4 x float> %i.nv, float %i.mr, i64 3
  %i.nx = insertelement <4 x float> poison, float %9, i64 0
  %i.ny = insertelement <4 x float> %i.nx, float %10, i64 1
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %i.ny, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ns, <4 x float> %i.nw, <4 x float> %24)
  %i.oa = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.ob = insertelement <4 x float> %i.oa, float %i.mz, i64 1
  %i.oc = insertelement <4 x float> %i.ob, float %i.ne, i64 2
  %i.od = insertelement <4 x float> %i.oc, float %i.nl, i64 3
  %i.oe = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.of = insertelement <4 x float> %i.oe, float %i.nb, i64 1
  %i.og = insertelement <4 x float> %i.of, float %i.nj, i64 2
  %i.oh = insertelement <4 x float> %i.og, float %i.no, i64 3
  %i.oi = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.od, <4 x float> %i.oh, <4 x float> %i.nz)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nd, i64 128
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !13
  %i.ol = or i64 %indvars.iv, 208
  %i.om = getelementptr [4 x i8], ptr %i.c, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 -2048
  %i.oo = load float, ptr %i.on, align 4, !tbaa !13
  %i.op = getelementptr inbounds nuw i8, ptr %i.nd, i64 192
  %i.oq = load float, ptr %i.op, align 4, !tbaa !13
  %i.or = getelementptr i8, ptr %i.ng, i64 -1924
  %i.os = load float, ptr %i.or, align 4, !tbaa !13
  %i.ot = or disjoint i64 %indvars.iv, 256        ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ot ; 4 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !13
  %i.ow = sub nuw nsw i64 256, %indvars.iv
  %i.ox = getelementptr [4 x i8], ptr %i.c, i64 %i.ow ; 2 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 -1988
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !13
  %i.pa = fneg nsz float %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 64
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !13
  %i.pd = getelementptr [4 x i8], ptr %i.c, i64 %i.ot
  %i.pe = getelementptr i8, ptr %i.pd, i64 -2048
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !13
  %i.pg = insertelement <4 x float> poison, float %i.ok, i64 0
  %i.ph = insertelement <4 x float> %i.pg, float %i.oq, i64 1
  %i.pi = insertelement <4 x float> %i.ph, float %i.ov, i64 2
  %i.pj = insertelement <4 x float> %i.pi, float %i.pc, i64 3
  %i.pk = insertelement <4 x float> poison, float %i.oo, i64 0
  %i.pl = insertelement <4 x float> %i.pk, float %i.os, i64 1
  %i.pm = insertelement <4 x float> %i.pl, float %i.pa, i64 2
  %i.pn = insertelement <4 x float> %i.pm, float %i.pf, i64 3
  %i.po = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pj, <4 x float> %i.pn, <4 x float> %i.oi)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ou, i64 128
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !13
  %i.pr = or i64 %indvars.iv, 272
  %i.ps = getelementptr [4 x i8], ptr %i.c, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -2048
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !13
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ou, i64 192
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !13
  %i.px = getelementptr i8, ptr %i.ox, i64 -1924
  %i.py = load float, ptr %i.px, align 4, !tbaa !13
  %i.pz = or disjoint i64 %indvars.iv, 320        ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.pz ; 4 uses
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !13
  %i.qc = sub nuw nsw i64 320, %indvars.iv
  %i.qd = getelementptr [4 x i8], ptr %i.c, i64 %i.qc ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 -1988
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !13
  %i.qg = fneg nsz float %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 64
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !13
  %i.qj = getelementptr [4 x i8], ptr %i.c, i64 %i.pz
  %i.qk = getelementptr i8, ptr %i.qj, i64 -2048
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !13
  %i.qm = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.qn = insertelement <4 x float> %i.qm, float %i.pw, i64 1
  %i.qo = insertelement <4 x float> %i.qn, float %i.qb, i64 2
  %i.qp = insertelement <4 x float> %i.qo, float %i.qi, i64 3
  %i.qq = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.qr = insertelement <4 x float> %i.qq, float %i.py, i64 1
  %i.qs = insertelement <4 x float> %i.qr, float %i.qg, i64 2
  %i.qt = insertelement <4 x float> %i.qs, float %i.ql, i64 3
  %i.qu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qp, <4 x float> %i.qt, <4 x float> %i.po)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qa, i64 128
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !13
  %i.qx = or i64 %indvars.iv, 336
  %i.qy = getelementptr [4 x i8], ptr %i.c, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 -2048
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !13
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qa, i64 192
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !13
  %i.rd = getelementptr i8, ptr %i.qd, i64 -1924
  %i.re = load float, ptr %i.rd, align 4, !tbaa !13
  %i.rf = or disjoint i64 %indvars.iv, 384        ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.rf ; 4 uses
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !13
  %i.ri = sub nuw nsw i64 384, %indvars.iv
  %i.rj = getelementptr [4 x i8], ptr %i.c, i64 %i.ri ; 2 uses
  %i.rk = getelementptr i8, ptr %i.rj, i64 -1988
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !13
  %i.rm = fneg nsz float %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rg, i64 64
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !13
  %i.rp = getelementptr [4 x i8], ptr %i.c, i64 %i.rf
  %i.rq = getelementptr i8, ptr %i.rp, i64 -2048
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !13
  %i.rs = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.rt = insertelement <4 x float> %i.rs, float %i.rc, i64 1
  %i.ru = insertelement <4 x float> %i.rt, float %i.rh, i64 2
  %i.rv = insertelement <4 x float> %i.ru, float %i.ro, i64 3
  %i.rw = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.rx = insertelement <4 x float> %i.rw, float %i.re, i64 1
  %i.ry = insertelement <4 x float> %i.rx, float %i.rm, i64 2
  %i.rz = insertelement <4 x float> %i.ry, float %i.rr, i64 3
  %i.sa = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rv, <4 x float> %i.rz, <4 x float> %i.qu)
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rg, i64 128
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !13
  %i.sd = or i64 %indvars.iv, 400
  %i.se = getelementptr [4 x i8], ptr %i.c, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -2048
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !13
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rg, i64 192
  %i.si = load float, ptr %i.sh, align 4, !tbaa !13
  %i.sj = getelementptr i8, ptr %i.rj, i64 -1924
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !13
  %i.sl = or disjoint i64 %indvars.iv, 448        ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.sl ; 4 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !13
  %i.so = sub nuw nsw i64 448, %indvars.iv
  %i.sp = getelementptr [4 x i8], ptr %i.c, i64 %i.so ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sp, i64 -1988
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !13
  %i.ss = fneg nsz float %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 64
  %i.su = load float, ptr %i.st, align 4, !tbaa !13
  %i.sv = getelementptr [4 x i8], ptr %i.c, i64 %i.sl
  %i.sw = getelementptr i8, ptr %i.sv, i64 -2048
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !13
  %i.sy = insertelement <4 x float> poison, float %i.sc, i64 0
  %i.sz = insertelement <4 x float> %i.sy, float %i.si, i64 1
  %i.ta = insertelement <4 x float> %i.sz, float %i.sn, i64 2
  %i.tb = insertelement <4 x float> %i.ta, float %i.su, i64 3
  %i.tc = insertelement <4 x float> poison, float %i.sg, i64 0
  %i.td = insertelement <4 x float> %i.tc, float %i.sk, i64 1
  %i.te = insertelement <4 x float> %i.td, float %i.ss, i64 2
  %i.tf = insertelement <4 x float> %i.te, float %i.sx, i64 3
  %i.tg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tb, <4 x float> %i.tf, <4 x float> %i.sa) ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sm, i64 128
  %i.ti = load float, ptr %i.th, align 4, !tbaa !13
  %i.tj = or i64 %indvars.iv, 464
  %i.tk = getelementptr [4 x i8], ptr %i.c, i64 %i.tj
  %i.tl = getelementptr i8, ptr %i.tk, i64 -2048
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !13
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sm, i64 192
  %i.to = load float, ptr %i.tn, align 4, !tbaa !13
  %i.tp = getelementptr i8, ptr %i.sp, i64 -1924
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !13
  %i.tr = insertelement <2 x float> poison, float %i.ti, i64 0
  %i.ts = insertelement <2 x float> %i.tr, float %i.to, i64 1
  %i.tt = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.tu = insertelement <2 x float> %i.tt, float %i.tq, i64 1
  %i.tv = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.tw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ts, <2 x float> %i.tu, <2 x float> %i.tv) ; 2 uses
  %i.tx = extractelement <4 x float> %i.tg, i64 2
  %i.ty = fmul nsz float %7, %i.tx
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store float %i.ty, ptr %i.tz, align 4, !tbaa !13
  %i.ua = extractelement <4 x float> %i.tg, i64 3
  %i.ub = fmul nsz float %7, %i.ua
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store float %i.ub, ptr %i.uc, align 4, !tbaa !13
  %i.ud = extractelement <2 x float> %i.tw, i64 0
  store float %i.ud, ptr %i.ki, align 4, !tbaa !13
  %i.ue = extractelement <2 x float> %i.tw, i64 1
  store float %i.ue, ptr %i.kl, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 16
  br i1 %exitcond.not, label %.split121.us.loopexit122, label %.preheader, !llvm.loop !16

.split121.us.loopexit122:                         ; preds = %.preheader
  %.pre = load i32, ptr %2, align 4, !tbaa !11
  br label %.split121.us

.split121.us:                                     ; preds = %._crit_edge.us, %.split121.us.loopexit122
  %i.uf = phi i32 [ %.pre, %.split121.us.loopexit122 ], [ %i.d, %._crit_edge.us ]
  %i.ug = add i32 %i.uf, 480
  %i.uh = and i32 %i.ug, 511
  store i32 %i.uh, ptr %2, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @synth_filter_float_64(ptr noundef %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6, float noundef %7, ptr nofree noundef readonly captures(none) %8) #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !11
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 44 uses
  tail call void %8(ptr noundef %0, ptr noundef %i.c, ptr noundef %6, i64 noundef 4) #3
  %i.d = load i32, ptr %2, align 4, !tbaa !11     ; 3 uses
  %i.e = icmp slt i32 %i.d, 1024
  br i1 %i.e, label %.lr.ph.us.preheader, label %.preheader

.lr.ph.us.preheader:                              ; preds = %bb.a
  %i.f = sub nsw i32 1024, %i.d
  %i.g = zext nneg i32 %i.f to i64
  %i.h = insertelement <2 x float> poison, float %7, i64 0
  %i.i = shufflevector <2 x float> %i.h, <2 x float> poison, <2 x i32> zeroinitializer
  br label %.lr.ph.us

.lr.ph.us:                                        ; preds = %.lr.ph.us.preheader, %._crit_edge.us
end_hunk_0
begin_hunk_1_@synth_filter_float_64:bb.a
  %i.gz = insertelement <4 x float> %i.gy, float %i.gd, i64 3
  %i.ha = insertelement <4 x float> poison, float %i.gv, i64 0
  %i.hb = insertelement <4 x float> %i.ha, float %i.gr, i64 1
  %i.hc = insertelement <4 x float> %i.hb, float %i.gn, i64 2
  %i.hd = insertelement <4 x float> %i.hc, float %i.gi, i64 3
  %i.he = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.gz, <4 x float> %i.hd, <4 x float> %i.fw) ; 4 uses
  %i.hf = icmp samesign ult i64 %indvars.iv142, 256
  %i.hg = extractelement <4 x float> %i.he, i64 0
  %i.hh = extractelement <4 x float> %i.he, i64 1
  %i.hi = shufflevector <4 x float> %i.he, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.hf, label %.lr.ph114.us.6, label %._crit_edge.us

.lr.ph114.us.6:                                   ; preds = %.lr.ph114.us.5
  %indvars.iv.next145.5 = add nuw nsw i64 %indvars.iv142, 768 ; 3 uses
  %i.hj = or disjoint i64 %indvars.iv.next145.5, %indvars.iv148 ; 2 uses
  %i.hk = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.hj ; 4 uses
  %i.hl = load float, ptr %i.hk, align 4, !tbaa !13
  %i.hm = sub nuw nsw i64 %indvars.iv.next145.5, %indvars.iv148
  %i.hn = getelementptr [4 x i8], ptr %i.c, i64 %i.hm ; 2 uses
  %i.ho = getelementptr i8, ptr %i.hn, i64 -3972
  %i.hp = load float, ptr %i.ho, align 4, !tbaa !13
  %i.hq = fneg nsz float %i.hp
  %i.hr = getelementptr inbounds nuw i8, ptr %i.hk, i64 128
  %i.hs = load float, ptr %i.hr, align 4, !tbaa !13
  %i.ht = getelementptr [4 x i8], ptr %i.c, i64 %i.hj
  %i.hu = getelementptr i8, ptr %i.ht, i64 -4096
  %i.hv = load float, ptr %i.hu, align 4, !tbaa !13
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 256
  %i.hx = load float, ptr %i.hw, align 4, !tbaa !13
  %gep160.6 = getelementptr [4 x i8], ptr %invariant.gep159, i64 %indvars.iv.next145.5
  %i.hy = getelementptr i8, ptr %gep160.6, i64 -4096
  %i.hz = load float, ptr %i.hy, align 4, !tbaa !13
  %i.ia = getelementptr inbounds nuw i8, ptr %i.hk, i64 384
  %i.ib = load float, ptr %i.ia, align 4, !tbaa !13
  %i.ic = getelementptr i8, ptr %i.hn, i64 -3844
  %i.id = load float, ptr %i.ic, align 4, !tbaa !13
  %i.ie = insertelement <4 x float> poison, float %i.ib, i64 0
  %i.if = insertelement <4 x float> %i.ie, float %i.hx, i64 1
  %i.ig = insertelement <4 x float> %i.if, float %i.hs, i64 2
  %i.ih = insertelement <4 x float> %i.ig, float %i.hl, i64 3
  %i.ii = insertelement <4 x float> poison, float %i.id, i64 0
  %i.ij = insertelement <4 x float> %i.ii, float %i.hz, i64 1
  %i.ik = insertelement <4 x float> %i.ij, float %i.hv, i64 2
  %i.il = insertelement <4 x float> %i.ik, float %i.hq, i64 3
  %i.im = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ih, <4 x float> %i.il, <4 x float> %i.he) ; 3 uses
  %i.in = extractelement <4 x float> %i.im, i64 0
  %i.io = extractelement <4 x float> %i.im, i64 1
  %i.ip = shufflevector <4 x float> %i.im, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br label %._crit_edge.us

._crit_edge.us:                                   ; preds = %.lr.ph114.us.preheader, %.lr.ph114.us.1, %.lr.ph114.us.2, %.lr.ph114.us.3, %.lr.ph114.us.4, %.lr.ph114.us.5, %.lr.ph114.us.6, %..preheader_crit_edge.us
  %.189.lcssa.us = phi float [ %i.iy, %..preheader_crit_edge.us ], [ %i.kg, %.lr.ph114.us.preheader ], [ %i.cb, %.lr.ph114.us.1 ], [ %i.dj, %.lr.ph114.us.2 ], [ %i.er, %.lr.ph114.us.3 ], [ %i.fz, %.lr.ph114.us.4 ], [ %i.hh, %.lr.ph114.us.5 ], [ %i.io, %.lr.ph114.us.6 ]
  %.1.lcssa.us = phi float [ %i.ix, %..preheader_crit_edge.us ], [ %i.kf, %.lr.ph114.us.preheader ], [ %i.ca, %.lr.ph114.us.1 ], [ %i.di, %.lr.ph114.us.2 ], [ %i.eq, %.lr.ph114.us.3 ], [ %i.fy, %.lr.ph114.us.4 ], [ %i.hg, %.lr.ph114.us.5 ], [ %i.in, %.lr.ph114.us.6 ]
  %i.iq = phi <2 x float> [ %i.iz, %..preheader_crit_edge.us ], [ %i.kh, %.lr.ph114.us.preheader ], [ %i.cc, %.lr.ph114.us.1 ], [ %i.dk, %.lr.ph114.us.2 ], [ %i.es, %.lr.ph114.us.3 ], [ %i.ga, %.lr.ph114.us.4 ], [ %i.hi, %.lr.ph114.us.5 ], [ %i.ip, %.lr.ph114.us.6 ]
  %i.ir = fmul nsz <2 x float> %i.i, %i.iq        ; 2 uses
  %i.is = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv148
  %i.it = extractelement <2 x float> %i.ir, i64 1
  store float %i.it, ptr %i.is, align 4, !tbaa !13
  %i.iu = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.l
  %i.iv = extractelement <2 x float> %i.ir, i64 0
  store float %i.iv, ptr %i.iu, align 4, !tbaa !13
  store float %.189.lcssa.us, ptr %i.j, align 4, !tbaa !13
  store float %.1.lcssa.us, ptr %i.m, align 4, !tbaa !13
  %indvars.iv.next149 = add nuw nsw i64 %indvars.iv148, 1 ; 2 uses
  %exitcond151.not = icmp eq i64 %indvars.iv.next149, 32
  br i1 %exitcond151.not, label %.split121.us, label %.lr.ph.us, !llvm.loop !18

..preheader_crit_edge.us:                         ; preds = %bb.b
  %i.iw = icmp samesign ult i64 %indvars.iv138, 896
  %i.ix = extractelement <4 x float> %i.at, i64 0
  %i.iy = extractelement <4 x float> %i.at, i64 1
  %i.iz = shufflevector <4 x float> %i.at, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.iw, label %.lr.ph114.us.preheader, label %._crit_edge.us

.lr.ph114.us.preheader:                           ; preds = %..preheader_crit_edge.us
  %invariant.gep159 = getelementptr [4 x i8], ptr %i.c, i64 %i.l ; 7 uses
  %i.ja = or disjoint i64 %indvars.iv142, %indvars.iv148 ; 2 uses
  %i.jb = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ja ; 4 uses
  %i.jc = load float, ptr %i.jb, align 4, !tbaa !13
  %i.jd = sub nuw nsw i64 %indvars.iv142, %indvars.iv148
  %i.je = getelementptr [4 x i8], ptr %i.c, i64 %i.jd ; 2 uses
  %i.jf = getelementptr i8, ptr %i.je, i64 -3972
  %i.jg = load float, ptr %i.jf, align 4, !tbaa !13
  %i.jh = fneg nsz float %i.jg
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 128
  %i.jj = load float, ptr %i.ji, align 4, !tbaa !13
  %i.jk = getelementptr [4 x i8], ptr %i.c, i64 %i.ja
  %i.jl = getelementptr i8, ptr %i.jk, i64 -4096
  %i.jm = load float, ptr %i.jl, align 4, !tbaa !13
  %i.jn = getelementptr inbounds nuw i8, ptr %i.jb, i64 256
  %i.jo = load float, ptr %i.jn, align 4, !tbaa !13
  %gep160 = getelementptr [4 x i8], ptr %invariant.gep159, i64 %indvars.iv142
  %i.jp = getelementptr i8, ptr %gep160, i64 -4096
  %i.jq = load float, ptr %i.jp, align 4, !tbaa !13
  %i.jr = getelementptr inbounds nuw i8, ptr %i.jb, i64 384
  %i.js = load float, ptr %i.jr, align 4, !tbaa !13
  %i.jt = getelementptr i8, ptr %i.je, i64 -3844
  %i.ju = load float, ptr %i.jt, align 4, !tbaa !13
  %i.jv = insertelement <4 x float> poison, float %i.js, i64 0
  %i.jw = insertelement <4 x float> %i.jv, float %i.jo, i64 1
  %i.jx = insertelement <4 x float> %i.jw, float %i.jj, i64 2
  %i.jy = insertelement <4 x float> %i.jx, float %i.jc, i64 3
  %i.jz = insertelement <4 x float> poison, float %i.ju, i64 0
  %i.ka = insertelement <4 x float> %i.jz, float %i.jq, i64 1
  %i.kb = insertelement <4 x float> %i.ka, float %i.jm, i64 2
  %i.kc = insertelement <4 x float> %i.kb, float %i.jh, i64 3
  %i.kd = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jy, <4 x float> %i.kc, <4 x float> %i.at) ; 4 uses
  %i.ke = icmp samesign ult i64 %indvars.iv142, 896
  %i.kf = extractelement <4 x float> %i.kd, i64 0
  %i.kg = extractelement <4 x float> %i.kd, i64 1
  %i.kh = shufflevector <4 x float> %i.kd, <4 x float> poison, <2 x i32> <i32 2, i32 3>
  br i1 %i.ke, label %.lr.ph114.us.1, label %._crit_edge.us

.preheader:                                       ; preds = %bb.a, %.preheader
  %indvars.iv = phi i64 [ %indvars.iv.next, %.preheader ], [ 0, %bb.a ] ; 28 uses
  %i.ki = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv ; 2 uses
  %i.kj = load float, ptr %i.ki, align 4, !tbaa !13
  %i.kk = or disjoint i64 %indvars.iv, 32         ; 3 uses
  %i.kl = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.kk ; 2 uses
  %i.km = load float, ptr %i.kl, align 4, !tbaa !13
  %i.kn = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv ; 4 uses
  %i.ko = load float, ptr %i.kn, align 4, !tbaa !13
  %i.kp = sub nsw i64 0, %indvars.iv
  %i.kq = getelementptr [4 x i8], ptr %i.c, i64 %i.kp ; 2 uses
  %i.kr = getelementptr i8, ptr %i.kq, i64 -3972
  %i.ks = load float, ptr %i.kr, align 4, !tbaa !13
  %i.kt = fneg nsz float %i.ks
  %i.ku = getelementptr inbounds nuw i8, ptr %i.kn, i64 128
  %i.kv = load float, ptr %i.ku, align 4, !tbaa !13
  %i.kw = getelementptr [4 x i8], ptr %i.c, i64 %indvars.iv
  %i.kx = getelementptr i8, ptr %i.kw, i64 -4096
  %i.ky = load float, ptr %i.kx, align 4, !tbaa !13
  %i.kz = getelementptr inbounds nuw i8, ptr %i.kn, i64 256
  %i.la = load float, ptr %i.kz, align 4, !tbaa !13
  %i.lb = getelementptr [4 x i8], ptr %i.c, i64 %i.kk
  %i.lc = getelementptr i8, ptr %i.lb, i64 -4096
  %i.ld = load float, ptr %i.lc, align 4, !tbaa !13
  %i.le = getelementptr inbounds nuw i8, ptr %i.kn, i64 384
  %i.lf = load float, ptr %i.le, align 4, !tbaa !13
  %i.lg = getelementptr i8, ptr %i.kq, i64 -3844
  %i.lh = load float, ptr %i.lg, align 4, !tbaa !13
  %i.li = or disjoint i64 %indvars.iv, 128        ; 2 uses
  %i.lj = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.li ; 4 uses
  %i.lk = load float, ptr %i.lj, align 4, !tbaa !13
  %i.ll = sub nuw nsw i64 128, %indvars.iv
  %i.lm = getelementptr [4 x i8], ptr %i.c, i64 %i.ll ; 2 uses
  %i.ln = getelementptr i8, ptr %i.lm, i64 -3972
  %i.lo = load float, ptr %i.ln, align 4, !tbaa !13
  %i.lp = fneg nsz float %i.lo
  %i.lq = getelementptr inbounds nuw i8, ptr %i.lj, i64 128
  %i.lr = load float, ptr %i.lq, align 4, !tbaa !13
  %i.ls = getelementptr [4 x i8], ptr %i.c, i64 %i.li
  %i.lt = getelementptr i8, ptr %i.ls, i64 -4096
  %i.lu = load float, ptr %i.lt, align 4, !tbaa !13
  %i.lv = getelementptr inbounds nuw i8, ptr %i.lj, i64 256
  %i.lw = load float, ptr %i.lv, align 4, !tbaa !13
  %i.lx = or i64 %indvars.iv, 160
  %i.ly = getelementptr [4 x i8], ptr %i.c, i64 %i.lx
  %i.lz = getelementptr i8, ptr %i.ly, i64 -4096
  %i.ma = load float, ptr %i.lz, align 4, !tbaa !13
  %i.mb = getelementptr inbounds nuw i8, ptr %i.lj, i64 384
  %i.mc = load float, ptr %i.mb, align 4, !tbaa !13
  %i.md = getelementptr i8, ptr %i.lm, i64 -3844
  %i.me = load float, ptr %i.md, align 4, !tbaa !13
  %i.mf = or disjoint i64 %indvars.iv, 256        ; 2 uses
  %i.mg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.mf ; 4 uses
  %i.mh = load float, ptr %i.mg, align 4, !tbaa !13
  %i.mi = sub nuw nsw i64 256, %indvars.iv
  %i.mj = getelementptr [4 x i8], ptr %i.c, i64 %i.mi ; 2 uses
  %i.mk = getelementptr i8, ptr %i.mj, i64 -3972
  %i.ml = load float, ptr %i.mk, align 4, !tbaa !13
  %i.mm = fneg nsz float %i.ml
  %i.mn = getelementptr inbounds nuw i8, ptr %i.mg, i64 128
  %i.mo = load float, ptr %i.mn, align 4, !tbaa !13
  %i.mp = getelementptr [4 x i8], ptr %i.c, i64 %i.mf
  %i.mq = getelementptr i8, ptr %i.mp, i64 -4096
  %i.mr = load float, ptr %i.mq, align 4, !tbaa !13
  %i.ms = getelementptr inbounds nuw i8, ptr %i.mg, i64 256
  %i.mt = load float, ptr %i.ms, align 4, !tbaa !13
  %i.mu = or i64 %indvars.iv, 288
  %i.mv = getelementptr [4 x i8], ptr %i.c, i64 %i.mu
  %i.mw = getelementptr i8, ptr %i.mv, i64 -4096
  %i.mx = load float, ptr %i.mw, align 4, !tbaa !13
  %i.my = getelementptr inbounds nuw i8, ptr %i.mg, i64 384
  %i.mz = load float, ptr %i.my, align 4, !tbaa !13
  %i.na = getelementptr i8, ptr %i.mj, i64 -3844
  %i.nb = load float, ptr %i.na, align 4, !tbaa !13
  %i.nc = or disjoint i64 %indvars.iv, 384        ; 2 uses
  %i.nd = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.nc ; 4 uses
  %i.ne = load float, ptr %i.nd, align 4, !tbaa !13
  %i.nf = sub nuw nsw i64 384, %indvars.iv
  %i.ng = getelementptr [4 x i8], ptr %i.c, i64 %i.nf ; 2 uses
  %i.nh = getelementptr i8, ptr %i.ng, i64 -3972
  %i.ni = load float, ptr %i.nh, align 4, !tbaa !13
  %i.nj = fneg nsz float %i.ni
  %i.nk = getelementptr inbounds nuw i8, ptr %i.nd, i64 128
  %i.nl = load float, ptr %i.nk, align 4, !tbaa !13
  %i.nm = getelementptr [4 x i8], ptr %i.c, i64 %i.nc
  %i.nn = getelementptr i8, ptr %i.nm, i64 -4096
  %i.no = load float, ptr %i.nn, align 4, !tbaa !13
  %9 = fmul nsz float %i.la, %i.ld
  %10 = fmul nsz float %i.lf, %i.lh
  %11 = insertelement <2 x float> poison, float %i.ko, i64 0
  %12 = insertelement <2 x float> %11, float %i.kv, i64 1
  %13 = insertelement <2 x float> poison, float %i.kt, i64 0
  %14 = insertelement <2 x float> %13, float %i.ky, i64 1
  %15 = insertelement <2 x float> poison, float %i.kj, i64 0
  %16 = insertelement <2 x float> %15, float %i.km, i64 1
  %17 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %12, <2 x float> %14, <2 x float> %16)
  %18 = insertelement <2 x float> poison, float %i.lk, i64 0
  %19 = insertelement <2 x float> %18, float %i.lr, i64 1
  %20 = insertelement <2 x float> poison, float %i.lp, i64 0
  %21 = insertelement <2 x float> %20, float %i.lu, i64 1
  %22 = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %19, <2 x float> %21, <2 x float> %17)
  %i.np = insertelement <4 x float> poison, float %i.lw, i64 0
  %i.nq = insertelement <4 x float> %i.np, float %i.mc, i64 1
  %i.nr = insertelement <4 x float> %i.nq, float %i.mh, i64 2
  %i.ns = insertelement <4 x float> %i.nr, float %i.mo, i64 3
  %i.nt = insertelement <4 x float> poison, float %i.ma, i64 0
  %i.nu = insertelement <4 x float> %i.nt, float %i.me, i64 1
  %i.nv = insertelement <4 x float> %i.nu, float %i.mm, i64 2
  %i.nw = insertelement <4 x float> %i.nv, float %i.mr, i64 3
  %i.nx = insertelement <4 x float> poison, float %9, i64 0
  %i.ny = insertelement <4 x float> %i.nx, float %10, i64 1
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %24 = shufflevector <4 x float> %i.ny, <4 x float> %23, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.nz = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ns, <4 x float> %i.nw, <4 x float> %24)
  %i.oa = insertelement <4 x float> poison, float %i.mt, i64 0
  %i.ob = insertelement <4 x float> %i.oa, float %i.mz, i64 1
  %i.oc = insertelement <4 x float> %i.ob, float %i.ne, i64 2
  %i.od = insertelement <4 x float> %i.oc, float %i.nl, i64 3
  %i.oe = insertelement <4 x float> poison, float %i.mx, i64 0
  %i.of = insertelement <4 x float> %i.oe, float %i.nb, i64 1
  %i.og = insertelement <4 x float> %i.of, float %i.nj, i64 2
  %i.oh = insertelement <4 x float> %i.og, float %i.no, i64 3
  %i.oi = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.od, <4 x float> %i.oh, <4 x float> %i.nz)
  %i.oj = getelementptr inbounds nuw i8, ptr %i.nd, i64 256
  %i.ok = load float, ptr %i.oj, align 4, !tbaa !13
  %i.ol = or i64 %indvars.iv, 416
  %i.om = getelementptr [4 x i8], ptr %i.c, i64 %i.ol
  %i.on = getelementptr i8, ptr %i.om, i64 -4096
  %i.oo = load float, ptr %i.on, align 4, !tbaa !13
  %i.op = getelementptr inbounds nuw i8, ptr %i.nd, i64 384
  %i.oq = load float, ptr %i.op, align 4, !tbaa !13
  %i.or = getelementptr i8, ptr %i.ng, i64 -3844
  %i.os = load float, ptr %i.or, align 4, !tbaa !13
  %i.ot = or disjoint i64 %indvars.iv, 512        ; 2 uses
  %i.ou = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ot ; 4 uses
  %i.ov = load float, ptr %i.ou, align 4, !tbaa !13
  %i.ow = sub nuw nsw i64 512, %indvars.iv
  %i.ox = getelementptr [4 x i8], ptr %i.c, i64 %i.ow ; 2 uses
  %i.oy = getelementptr i8, ptr %i.ox, i64 -3972
  %i.oz = load float, ptr %i.oy, align 4, !tbaa !13
  %i.pa = fneg nsz float %i.oz
  %i.pb = getelementptr inbounds nuw i8, ptr %i.ou, i64 128
  %i.pc = load float, ptr %i.pb, align 4, !tbaa !13
  %i.pd = getelementptr [4 x i8], ptr %i.c, i64 %i.ot
  %i.pe = getelementptr i8, ptr %i.pd, i64 -4096
  %i.pf = load float, ptr %i.pe, align 4, !tbaa !13
  %i.pg = insertelement <4 x float> poison, float %i.ok, i64 0
  %i.ph = insertelement <4 x float> %i.pg, float %i.oq, i64 1
  %i.pi = insertelement <4 x float> %i.ph, float %i.ov, i64 2
  %i.pj = insertelement <4 x float> %i.pi, float %i.pc, i64 3
  %i.pk = insertelement <4 x float> poison, float %i.oo, i64 0
  %i.pl = insertelement <4 x float> %i.pk, float %i.os, i64 1
  %i.pm = insertelement <4 x float> %i.pl, float %i.pa, i64 2
  %i.pn = insertelement <4 x float> %i.pm, float %i.pf, i64 3
  %i.po = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.pj, <4 x float> %i.pn, <4 x float> %i.oi)
  %i.pp = getelementptr inbounds nuw i8, ptr %i.ou, i64 256
  %i.pq = load float, ptr %i.pp, align 4, !tbaa !13
  %i.pr = or i64 %indvars.iv, 544
  %i.ps = getelementptr [4 x i8], ptr %i.c, i64 %i.pr
  %i.pt = getelementptr i8, ptr %i.ps, i64 -4096
  %i.pu = load float, ptr %i.pt, align 4, !tbaa !13
  %i.pv = getelementptr inbounds nuw i8, ptr %i.ou, i64 384
  %i.pw = load float, ptr %i.pv, align 4, !tbaa !13
  %i.px = getelementptr i8, ptr %i.ox, i64 -3844
  %i.py = load float, ptr %i.px, align 4, !tbaa !13
  %i.pz = or disjoint i64 %indvars.iv, 640        ; 2 uses
  %i.qa = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.pz ; 4 uses
  %i.qb = load float, ptr %i.qa, align 4, !tbaa !13
  %i.qc = sub nuw nsw i64 640, %indvars.iv
  %i.qd = getelementptr [4 x i8], ptr %i.c, i64 %i.qc ; 2 uses
  %i.qe = getelementptr i8, ptr %i.qd, i64 -3972
  %i.qf = load float, ptr %i.qe, align 4, !tbaa !13
  %i.qg = fneg nsz float %i.qf
  %i.qh = getelementptr inbounds nuw i8, ptr %i.qa, i64 128
  %i.qi = load float, ptr %i.qh, align 4, !tbaa !13
  %i.qj = getelementptr [4 x i8], ptr %i.c, i64 %i.pz
  %i.qk = getelementptr i8, ptr %i.qj, i64 -4096
  %i.ql = load float, ptr %i.qk, align 4, !tbaa !13
  %i.qm = insertelement <4 x float> poison, float %i.pq, i64 0
  %i.qn = insertelement <4 x float> %i.qm, float %i.pw, i64 1
  %i.qo = insertelement <4 x float> %i.qn, float %i.qb, i64 2
  %i.qp = insertelement <4 x float> %i.qo, float %i.qi, i64 3
  %i.qq = insertelement <4 x float> poison, float %i.pu, i64 0
  %i.qr = insertelement <4 x float> %i.qq, float %i.py, i64 1
  %i.qs = insertelement <4 x float> %i.qr, float %i.qg, i64 2
  %i.qt = insertelement <4 x float> %i.qs, float %i.ql, i64 3
  %i.qu = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.qp, <4 x float> %i.qt, <4 x float> %i.po)
  %i.qv = getelementptr inbounds nuw i8, ptr %i.qa, i64 256
  %i.qw = load float, ptr %i.qv, align 4, !tbaa !13
  %i.qx = or i64 %indvars.iv, 672
  %i.qy = getelementptr [4 x i8], ptr %i.c, i64 %i.qx
  %i.qz = getelementptr i8, ptr %i.qy, i64 -4096
  %i.ra = load float, ptr %i.qz, align 4, !tbaa !13
  %i.rb = getelementptr inbounds nuw i8, ptr %i.qa, i64 384
  %i.rc = load float, ptr %i.rb, align 4, !tbaa !13
  %i.rd = getelementptr i8, ptr %i.qd, i64 -3844
  %i.re = load float, ptr %i.rd, align 4, !tbaa !13
  %i.rf = or disjoint i64 %indvars.iv, 768        ; 2 uses
  %i.rg = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.rf ; 4 uses
  %i.rh = load float, ptr %i.rg, align 4, !tbaa !13
  %i.ri = sub nuw nsw i64 768, %indvars.iv
  %i.rj = getelementptr [4 x i8], ptr %i.c, i64 %i.ri ; 2 uses
  %i.rk = getelementptr i8, ptr %i.rj, i64 -3972
  %i.rl = load float, ptr %i.rk, align 4, !tbaa !13
  %i.rm = fneg nsz float %i.rl
  %i.rn = getelementptr inbounds nuw i8, ptr %i.rg, i64 128
  %i.ro = load float, ptr %i.rn, align 4, !tbaa !13
  %i.rp = getelementptr [4 x i8], ptr %i.c, i64 %i.rf
  %i.rq = getelementptr i8, ptr %i.rp, i64 -4096
  %i.rr = load float, ptr %i.rq, align 4, !tbaa !13
  %i.rs = insertelement <4 x float> poison, float %i.qw, i64 0
  %i.rt = insertelement <4 x float> %i.rs, float %i.rc, i64 1
  %i.ru = insertelement <4 x float> %i.rt, float %i.rh, i64 2
  %i.rv = insertelement <4 x float> %i.ru, float %i.ro, i64 3
  %i.rw = insertelement <4 x float> poison, float %i.ra, i64 0
  %i.rx = insertelement <4 x float> %i.rw, float %i.re, i64 1
  %i.ry = insertelement <4 x float> %i.rx, float %i.rm, i64 2
  %i.rz = insertelement <4 x float> %i.ry, float %i.rr, i64 3
  %i.sa = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.rv, <4 x float> %i.rz, <4 x float> %i.qu)
  %i.sb = getelementptr inbounds nuw i8, ptr %i.rg, i64 256
  %i.sc = load float, ptr %i.sb, align 4, !tbaa !13
  %i.sd = or i64 %indvars.iv, 800
  %i.se = getelementptr [4 x i8], ptr %i.c, i64 %i.sd
  %i.sf = getelementptr i8, ptr %i.se, i64 -4096
  %i.sg = load float, ptr %i.sf, align 4, !tbaa !13
  %i.sh = getelementptr inbounds nuw i8, ptr %i.rg, i64 384
  %i.si = load float, ptr %i.sh, align 4, !tbaa !13
  %i.sj = getelementptr i8, ptr %i.rj, i64 -3844
  %i.sk = load float, ptr %i.sj, align 4, !tbaa !13
  %i.sl = or disjoint i64 %indvars.iv, 896        ; 2 uses
  %i.sm = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.sl ; 4 uses
  %i.sn = load float, ptr %i.sm, align 4, !tbaa !13
  %i.so = sub nuw nsw i64 896, %indvars.iv
  %i.sp = getelementptr [4 x i8], ptr %i.c, i64 %i.so ; 2 uses
  %i.sq = getelementptr i8, ptr %i.sp, i64 -3972
  %i.sr = load float, ptr %i.sq, align 4, !tbaa !13
  %i.ss = fneg nsz float %i.sr
  %i.st = getelementptr inbounds nuw i8, ptr %i.sm, i64 128
  %i.su = load float, ptr %i.st, align 4, !tbaa !13
  %i.sv = getelementptr [4 x i8], ptr %i.c, i64 %i.sl
  %i.sw = getelementptr i8, ptr %i.sv, i64 -4096
  %i.sx = load float, ptr %i.sw, align 4, !tbaa !13
  %i.sy = insertelement <4 x float> poison, float %i.sc, i64 0
  %i.sz = insertelement <4 x float> %i.sy, float %i.si, i64 1
  %i.ta = insertelement <4 x float> %i.sz, float %i.sn, i64 2
  %i.tb = insertelement <4 x float> %i.ta, float %i.su, i64 3
  %i.tc = insertelement <4 x float> poison, float %i.sg, i64 0
  %i.td = insertelement <4 x float> %i.tc, float %i.sk, i64 1
  %i.te = insertelement <4 x float> %i.td, float %i.ss, i64 2
  %i.tf = insertelement <4 x float> %i.te, float %i.sx, i64 3
  %i.tg = tail call nsz <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.tb, <4 x float> %i.tf, <4 x float> %i.sa) ; 3 uses
  %i.th = getelementptr inbounds nuw i8, ptr %i.sm, i64 256
  %i.ti = load float, ptr %i.th, align 4, !tbaa !13
  %i.tj = or i64 %indvars.iv, 928
  %i.tk = getelementptr [4 x i8], ptr %i.c, i64 %i.tj
  %i.tl = getelementptr i8, ptr %i.tk, i64 -4096
  %i.tm = load float, ptr %i.tl, align 4, !tbaa !13
  %i.tn = getelementptr inbounds nuw i8, ptr %i.sm, i64 384
  %i.to = load float, ptr %i.tn, align 4, !tbaa !13
  %i.tp = getelementptr i8, ptr %i.sp, i64 -3844
  %i.tq = load float, ptr %i.tp, align 4, !tbaa !13
  %i.tr = insertelement <2 x float> poison, float %i.ti, i64 0
  %i.ts = insertelement <2 x float> %i.tr, float %i.to, i64 1
  %i.tt = insertelement <2 x float> poison, float %i.tm, i64 0
  %i.tu = insertelement <2 x float> %i.tt, float %i.tq, i64 1
  %i.tv = shufflevector <4 x float> %i.tg, <4 x float> poison, <2 x i32> <i32 0, i32 1>
  %i.tw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ts, <2 x float> %i.tu, <2 x float> %i.tv) ; 2 uses
  %i.tx = extractelement <4 x float> %i.tg, i64 2
  %i.ty = fmul nsz float %7, %i.tx
  %i.tz = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv
  store float %i.ty, ptr %i.tz, align 4, !tbaa !13
  %i.ua = extractelement <4 x float> %i.tg, i64 3
  %i.ub = fmul nsz float %7, %i.ua
  %i.uc = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.kk
  store float %i.ub, ptr %i.uc, align 4, !tbaa !13
  %i.ud = extractelement <2 x float> %i.tw, i64 0
  store float %i.ud, ptr %i.ki, align 4, !tbaa !13
  %i.ue = extractelement <2 x float> %i.tw, i64 1
  store float %i.ue, ptr %i.kl, align 4, !tbaa !13
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, 32
  br i1 %exitcond.not, label %.split121.us.loopexit122, label %.preheader, !llvm.loop !18

.split121.us.loopexit122:                         ; preds = %.preheader
  %.pre = load i32, ptr %2, align 4, !tbaa !11
  br label %.split121.us

.split121.us:                                     ; preds = %._crit_edge.us, %.split121.us.loopexit122
  %i.uf = phi i32 [ %.pre, %.split121.us.loopexit122 ], [ %i.d, %._crit_edge.us ]
  %i.ug = add i32 %i.uf, 960
  %i.uh = and i32 %i.ug, 1023
  store i32 %i.uh, ptr %2, align 4, !tbaa !11
  ret void
}

; Function Attrs: nounwind uwtable
define internal void @synth_filter_fixed(ptr nofree noundef readonly captures(none) %0, ptr noundef %1, ptr nofree noundef captures(none) %2, ptr nofree noundef captures(none) %3, ptr nofree noundef readonly captures(none) %4, ptr nofree noundef writeonly captures(none) %5, ptr noundef %6) #1 {
bb.a:
  %i.a = load i32, ptr %2, align 4, !tbaa !11
  %i.b = sext i32 %i.a to i64
  %i.c = getelementptr inbounds [4 x i8], ptr %1, i64 %i.b ; 22 uses
  %i.d = load ptr, ptr %0, align 8, !tbaa !10
  tail call void %i.d(ptr noundef %i.c, ptr noundef %6) #3
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  %indvars.iv132 = phi i64 [ 0, %bb.a ], [ %indvars.iv.next133, %._crit_edge ] ; 22 uses
  %i.e = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %indvars.iv132 ; 2 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !11
  %i.g = sext i32 %i.f to i64
  %i.h = shl nsw i64 %i.g, 21                     ; 2 uses
  %i.i = or disjoint i64 %indvars.iv132, 16       ; 4 uses
  %i.j = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.i ; 2 uses
  %i.k = load i32, ptr %i.j, align 4, !tbaa !11
end_hunk_1
begin_hunk_2_@synth_filter_fixed_64:bb.a
  %i.ha = getelementptr i8, ptr %i.gz, i64 -4096
  %i.hb = load i32, ptr %i.ha, align 4, !tbaa !11
  %i.hc = sext i32 %i.hb to i64
  %i.hd = mul nsw i64 %i.hc, %i.gy
  %i.he = add nsw i64 %i.hd, %i.ft                ; 2 uses
  %i.hf = getelementptr inbounds nuw i8, ptr %i.gw, i64 128
  %i.hg = load i32, ptr %i.hf, align 4, !tbaa !11
  %i.hh = sext i32 %i.hg to i64
  %i.hi = sub nsw i64 %indvars.iv.next129.3, %indvars.iv132
  %i.hj = getelementptr [4 x i8], ptr %i.c, i64 %i.hi ; 2 uses
  %i.hk = getelementptr i8, ptr %i.hj, i64 -3972
  %i.hl = load i32, ptr %i.hk, align 4, !tbaa !11
  %i.hm = sext i32 %i.hl to i64
  %i.hn = mul nsw i64 %i.hm, %i.hh
  %i.ho = add nsw i64 %i.hn, %i.gd                ; 2 uses
  %i.hp = getelementptr inbounds nuw i8, ptr %i.gw, i64 256
  %i.hq = load i32, ptr %i.hp, align 4, !tbaa !11
  %i.hr = sext i32 %i.hq to i64
  %gep153.4 = getelementptr [4 x i8], ptr %invariant.gep152, i64 %indvars.iv.next129.3
  %i.hs = getelementptr i8, ptr %gep153.4, i64 -4096
  %i.ht = load i32, ptr %i.hs, align 4, !tbaa !11
  %i.hu = sext i32 %i.ht to i64
  %i.hv = mul nsw i64 %i.hu, %i.hr
  %i.hw = add nsw i64 %i.hv, %i.gl                ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %i.gw, i64 384
  %i.hy = load i32, ptr %i.hx, align 4, !tbaa !11
  %i.hz = sext i32 %i.hy to i64
  %i.ia = getelementptr i8, ptr %i.hj, i64 -3844
  %i.ib = load i32, ptr %i.ia, align 4, !tbaa !11
  %i.ic = sext i32 %i.ib to i64
  %i.id = mul nsw i64 %i.ic, %i.hz
  %i.ie = add nsw i64 %i.id, %i.gt                ; 2 uses
  %i.if = icmp ult i64 %.091.lcssa140, 384
  br i1 %i.if, label %.lr.ph112.5, label %._crit_edge

.lr.ph112.5:                                      ; preds = %.lr.ph112.4
  %indvars.iv.next129.4 = add nuw nsw i64 %.091.lcssa140, 640 ; 3 uses
  %i.ig = or disjoint i64 %indvars.iv.next129.4, %indvars.iv132 ; 2 uses
  %i.ih = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.ig ; 4 uses
  %i.ii = load i32, ptr %i.ih, align 4, !tbaa !11
  %i.ij = sext i32 %i.ii to i64
  %i.ik = getelementptr [4 x i8], ptr %i.c, i64 %i.ig
  %i.il = getelementptr i8, ptr %i.ik, i64 -4096
  %i.im = load i32, ptr %i.il, align 4, !tbaa !11
  %i.in = sext i32 %i.im to i64
  %i.io = mul nsw i64 %i.in, %i.ij
  %i.ip = add nsw i64 %i.io, %i.he                ; 2 uses
  %i.iq = getelementptr inbounds nuw i8, ptr %i.ih, i64 128
  %i.ir = load i32, ptr %i.iq, align 4, !tbaa !11
  %i.is = sext i32 %i.ir to i64
  %i.it = sub nsw i64 %indvars.iv.next129.4, %indvars.iv132
  %i.iu = getelementptr [4 x i8], ptr %i.c, i64 %i.it ; 2 uses
  %i.iv = getelementptr i8, ptr %i.iu, i64 -3972
  %i.iw = load i32, ptr %i.iv, align 4, !tbaa !11
  %i.ix = sext i32 %i.iw to i64
  %i.iy = mul nsw i64 %i.ix, %i.is
  %i.iz = add nsw i64 %i.iy, %i.ho                ; 2 uses
  %i.ja = getelementptr inbounds nuw i8, ptr %i.ih, i64 256
  %i.jb = load i32, ptr %i.ja, align 4, !tbaa !11
  %i.jc = sext i32 %i.jb to i64
  %gep153.5 = getelementptr [4 x i8], ptr %invariant.gep152, i64 %indvars.iv.next129.4
  %i.jd = getelementptr i8, ptr %gep153.5, i64 -4096
  %i.je = load i32, ptr %i.jd, align 4, !tbaa !11
  %i.jf = sext i32 %i.je to i64
  %i.jg = mul nsw i64 %i.jf, %i.jc
  %i.jh = add nsw i64 %i.jg, %i.hw                ; 2 uses
  %i.ji = getelementptr inbounds nuw i8, ptr %i.ih, i64 384
  %i.jj = load i32, ptr %i.ji, align 4, !tbaa !11
  %i.jk = sext i32 %i.jj to i64
  %i.jl = getelementptr i8, ptr %i.iu, i64 -3844
  %i.jm = load i32, ptr %i.jl, align 4, !tbaa !11
  %i.jn = sext i32 %i.jm to i64
  %i.jo = mul nsw i64 %i.jn, %i.jk
  %i.jp = add nsw i64 %i.jo, %i.ie                ; 2 uses
  %i.jq = icmp ult i64 %.091.lcssa140, 256
  br i1 %i.jq, label %.lr.ph112.6, label %._crit_edge

.lr.ph112.6:                                      ; preds = %.lr.ph112.5
  %indvars.iv.next129.5 = or disjoint i64 %.091.lcssa140, 768 ; 3 uses
  %i.jr = or disjoint i64 %indvars.iv.next129.5, %indvars.iv132 ; 2 uses
  %i.js = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.jr ; 4 uses
  %i.jt = load i32, ptr %i.js, align 4, !tbaa !11
  %i.ju = sext i32 %i.jt to i64
  %i.jv = getelementptr [4 x i8], ptr %i.c, i64 %i.jr
  %i.jw = getelementptr i8, ptr %i.jv, i64 -4096
  %i.jx = load i32, ptr %i.jw, align 4, !tbaa !11
  %i.jy = sext i32 %i.jx to i64
  %i.jz = mul nsw i64 %i.jy, %i.ju
  %i.ka = add nsw i64 %i.jz, %i.ip                ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %i.js, i64 128
  %i.kc = load i32, ptr %i.kb, align 4, !tbaa !11
  %i.kd = sext i32 %i.kc to i64
  %i.ke = sub nsw i64 %indvars.iv.next129.5, %indvars.iv132
  %i.kf = getelementptr [4 x i8], ptr %i.c, i64 %i.ke ; 2 uses
  %i.kg = getelementptr i8, ptr %i.kf, i64 -3972
  %i.kh = load i32, ptr %i.kg, align 4, !tbaa !11
  %i.ki = sext i32 %i.kh to i64
  %i.kj = mul nsw i64 %i.ki, %i.kd
  %i.kk = add nsw i64 %i.kj, %i.iz                ; 2 uses
  %i.kl = getelementptr inbounds nuw i8, ptr %i.js, i64 256
  %i.km = load i32, ptr %i.kl, align 4, !tbaa !11
  %i.kn = sext i32 %i.km to i64
  %gep153.6 = getelementptr [4 x i8], ptr %invariant.gep152, i64 %indvars.iv.next129.5
  %i.ko = getelementptr i8, ptr %gep153.6, i64 -4096
  %i.kp = load i32, ptr %i.ko, align 4, !tbaa !11
  %i.kq = sext i32 %i.kp to i64
  %i.kr = mul nsw i64 %i.kq, %i.kn
  %i.ks = add nsw i64 %i.kr, %i.jh                ; 2 uses
  %i.kt = getelementptr inbounds nuw i8, ptr %i.js, i64 384
  %i.ku = load i32, ptr %i.kt, align 4, !tbaa !11
  %i.kv = sext i32 %i.ku to i64
  %i.kw = getelementptr i8, ptr %i.kf, i64 -3844
  %i.kx = load i32, ptr %i.kw, align 4, !tbaa !11
  %i.ky = sext i32 %i.kx to i64
  %i.kz = mul nsw i64 %i.ky, %i.kv
  %i.la = add nsw i64 %i.kz, %i.jp                ; 2 uses
  %i.lb = icmp ult i64 %.091.lcssa140, 128
  br i1 %i.lb, label %.lr.ph112.7, label %._crit_edge

.lr.ph112.7:                                      ; preds = %.lr.ph112.6
  %indvars.iv.next129.6 = add nuw nsw i64 %.091.lcssa140, 896 ; 3 uses
  %i.lc = or disjoint i64 %indvars.iv.next129.6, %indvars.iv132 ; 2 uses
  %i.ld = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.lc ; 4 uses
  %i.le = load i32, ptr %i.ld, align 4, !tbaa !11
  %i.lf = sext i32 %i.le to i64
  %i.lg = getelementptr [4 x i8], ptr %i.c, i64 %i.lc
  %i.lh = getelementptr i8, ptr %i.lg, i64 -4096
  %i.li = load i32, ptr %i.lh, align 4, !tbaa !11
  %i.lj = sext i32 %i.li to i64
  %i.lk = mul nsw i64 %i.lj, %i.lf
  %i.ll = add nsw i64 %i.lk, %i.ka
  %i.lm = getelementptr inbounds nuw i8, ptr %i.ld, i64 128
  %i.ln = load i32, ptr %i.lm, align 4, !tbaa !11
  %i.lo = sext i32 %i.ln to i64
  %i.lp = sub nsw i64 %indvars.iv.next129.6, %indvars.iv132
  %i.lq = getelementptr [4 x i8], ptr %i.c, i64 %i.lp ; 2 uses
  %i.lr = getelementptr i8, ptr %i.lq, i64 -3972
  %i.ls = load i32, ptr %i.lr, align 4, !tbaa !11
  %i.lt = sext i32 %i.ls to i64
  %i.lu = mul nsw i64 %i.lt, %i.lo
  %i.lv = add nsw i64 %i.lu, %i.kk
  %i.lw = getelementptr inbounds nuw i8, ptr %i.ld, i64 256
  %i.lx = load i32, ptr %i.lw, align 4, !tbaa !11
  %i.ly = sext i32 %i.lx to i64
  %gep153.7 = getelementptr [4 x i8], ptr %invariant.gep152, i64 %indvars.iv.next129.6
  %i.lz = getelementptr i8, ptr %gep153.7, i64 -4096
  %i.ma = load i32, ptr %i.lz, align 4, !tbaa !11
  %i.mb = sext i32 %i.ma to i64
  %i.mc = mul nsw i64 %i.mb, %i.ly
  %i.md = add nsw i64 %i.mc, %i.ks
  %i.me = getelementptr inbounds nuw i8, ptr %i.ld, i64 384
  %i.mf = load i32, ptr %i.me, align 4, !tbaa !11
  %i.mg = sext i32 %i.mf to i64
  %i.mh = getelementptr i8, ptr %i.lq, i64 -3844
  %i.mi = load i32, ptr %i.mh, align 4, !tbaa !11
  %i.mj = sext i32 %i.mi to i64
  %i.mk = mul nsw i64 %i.mj, %i.mg
  %i.ml = add nsw i64 %i.mk, %i.la
  br label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph112.preheader, %.lr.ph112.1, %.lr.ph112.2, %.lr.ph112.3, %.lr.ph112.4, %.lr.ph112.5, %.lr.ph112.6, %.lr.ph112.7, %.preheader
  %.190.lcssa = phi i64 [ %i.bm, %.preheader ], [ %i.ac, %.lr.ph112.preheader ], [ %i.cx, %.lr.ph112.1 ], [ %i.ei, %.lr.ph112.2 ], [ %i.ft, %.lr.ph112.3 ], [ %i.he, %.lr.ph112.4 ], [ %i.ip, %.lr.ph112.5 ], [ %i.ka, %.lr.ph112.6 ], [ %i.ll, %.lr.ph112.7 ]
  %.188.lcssa = phi i64 [ %i.bw, %.preheader ], [ %i.am, %.lr.ph112.preheader ], [ %i.dh, %.lr.ph112.1 ], [ %i.es, %.lr.ph112.2 ], [ %i.gd, %.lr.ph112.3 ], [ %i.ho, %.lr.ph112.4 ], [ %i.iz, %.lr.ph112.5 ], [ %i.kk, %.lr.ph112.6 ], [ %i.lv, %.lr.ph112.7 ]
  %.186.lcssa = phi i64 [ %i.cd, %.preheader ], [ %i.au, %.lr.ph112.preheader ], [ %i.dp, %.lr.ph112.1 ], [ %i.fa, %.lr.ph112.2 ], [ %i.gl, %.lr.ph112.3 ], [ %i.hw, %.lr.ph112.4 ], [ %i.jh, %.lr.ph112.5 ], [ %i.ks, %.lr.ph112.6 ], [ %i.md, %.lr.ph112.7 ]
  %.1.lcssa = phi i64 [ %i.cm, %.preheader ], [ %i.bc, %.lr.ph112.preheader ], [ %i.dx, %.lr.ph112.1 ], [ %i.fi, %.lr.ph112.2 ], [ %i.gt, %.lr.ph112.3 ], [ %i.ie, %.lr.ph112.4 ], [ %i.jp, %.lr.ph112.5 ], [ %i.la, %.lr.ph112.6 ], [ %i.ml, %.lr.ph112.7 ]
  %i.mm = add nsw i64 %.190.lcssa, 524288
  %i.mn = lshr i64 %i.mm, 20
  %i.mo = trunc i64 %i.mn to i32
  %i.mp = tail call i32 @llvm.smax.i32(i32 %i.mo, i32 -8388608)
  %.0.i.i = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.mp, i32 8388607)
  %i.mq = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %indvars.iv132
  store i32 %.0.i.i, ptr %i.mq, align 4, !tbaa !11
  %i.mr = add nsw i64 %.188.lcssa, 524288
  %i.ms = lshr i64 %i.mr, 20
  %i.mt = trunc i64 %i.ms to i32
  %i.mu = tail call i32 @llvm.smax.i32(i32 %i.mt, i32 -8388608)
  %.0.i.i97 = tail call range(i32 -8388608, 8388608) i32 @llvm.smin.i32(i32 %i.mu, i32 8388607)
  %i.mv = getelementptr inbounds nuw [4 x i8], ptr %5, i64 %i.j
  store i32 %.0.i.i97, ptr %i.mv, align 4, !tbaa !11
  %i.mw = add nsw i64 %.186.lcssa, 524288
  %i.mx = lshr i64 %i.mw, 20
  %i.my = trunc i64 %i.mx to i32
  store i32 %i.my, ptr %i.f, align 4, !tbaa !11
  %i.mz = add nsw i64 %.1.lcssa, 524288
  %i.na = lshr i64 %i.mz, 20
  %i.nb = trunc i64 %i.na to i32
  store i32 %i.nb, ptr %i.k, align 4, !tbaa !11
  %indvars.iv.next133 = add nuw nsw i64 %indvars.iv132, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next133, 32
  br i1 %exitcond.not, label %bb.c, label %bb.b, !llvm.loop !22

bb.c:                                             ; preds = %._crit_edge
  %i.nc = load i32, ptr %2, align 4, !tbaa !11
  %i.nd = add i32 %i.nc, 960
  %i.ne = and i32 %i.nd, 1023
  store i32 %i.ne, ptr %2, align 4, !tbaa !11
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x float> @llvm.fmuladd.v4f32(<4 x float>, <4 x float>, <4 x float>) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x float> @llvm.fmuladd.v2f32(<2 x float>, <2 x float>, <2 x float>) #2

attributes #0 = { cold mustprogress nofree norecurse nosync nounwind optsize willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind uwtable "min-legal-vector-width"="0" "no-signed-zeros-fp-math"="true" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{i32 1, !"override-stack-alignment", i32 16}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260807082003+f3bd40ce6ba5-1~exp1~20260807082012.1771)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!"any pointer", !5, i64 0}
!10 = !{!9, !9, i64 0}
!11 = !{!6, !6, i64 0}
!12 = !{!"float", !5, i64 0}
!13 = !{!12, !12, i64 0}
!14 = !{!"llvm.loop.mustprogress"}
!15 = distinct !{!15, !14}
!16 = distinct !{!16, !14}
!17 = distinct !{!17, !14}
!18 = distinct !{!18, !14}
!19 = distinct !{!19, !14}
!20 = distinct !{!20, !14}
!21 = distinct !{!21, !14}
!22 = distinct !{!22, !14}
end_hunk_2
