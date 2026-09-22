Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cb_20?download=true
begin_hunk_0_@hc2cb_20:bb.a
  %i.dt = fsub double %i.al, %i.am                ; 2 uses
  %i.du = fsub double %i.dq, %i.ds                ; 2 uses
  %i.dv = fsub double %i.dr, %i.dt                ; 2 uses
  %i.dw = fadd double %i.dq, %i.ds                ; 2 uses
  %i.dx = fadd double %i.dr, %i.dt                ; 2 uses
  %i.dy = fadd double %i.aq, %i.au                ; 2 uses
  %i.dz = fsub double %i.aw, %i.ay                ; 2 uses
  %i.ea = fadd double %i.ba, %i.bc                ; 2 uses
  %i.eb = fsub double %i.be, %i.bg                ; 2 uses
  %i.ec = fsub double %i.dy, %i.ea                ; 2 uses
  %i.ed = fsub double %i.dz, %i.eb                ; 2 uses
  %i.ee = fadd double %i.dy, %i.ea                ; 2 uses
  %i.ef = fadd double %i.dz, %i.eb                ; 2 uses
  %i.eg = fadd double %i.bk, %i.bo                ; 2 uses
  %i.eh = fsub double %i.bq, %i.bs                ; 2 uses
  %i.ei = fadd double %i.bw, %i.ca                ; 2 uses
  %i.ej = fsub double %i.cc, %i.ce                ; 2 uses
  %i.ek = fsub double %i.eg, %i.ei                ; 2 uses
  %i.el = fsub double %i.eh, %i.ej                ; 2 uses
  %i.em = fadd double %i.eg, %i.ei                ; 2 uses
  %i.en = fadd double %i.eh, %i.ej                ; 2 uses
  %i.eo = fadd double %i.cg, %i.ci                ; 2 uses
  %i.ep = fsub double %i.ck, %i.cm                ; 2 uses
  %i.eq = fadd double %i.co, %i.cq                ; 2 uses
  %i.er = fsub double %i.cs, %i.cu                ; 2 uses
  %i.es = fsub double %i.eo, %i.eq                ; 2 uses
  %i.et = fsub double %i.ep, %i.er                ; 2 uses
  %i.eu = fadd double %i.eo, %i.eq                ; 2 uses
  %i.ev = fadd double %i.ep, %i.er                ; 2 uses
  %i.ew = fsub double %i.et, %i.ed                ; 2 uses
  %i.ex = fsub double %i.es, %i.ec                ; 2 uses
  %i.ey = fsub double %i.dv, %i.el                ; 2 uses
  %i.ez = fsub double %i.du, %i.ek                ; 2 uses
  %i.fa = fsub double %i.dx, %i.en                ; 2 uses
  %i.fb = fsub double %i.dw, %i.em                ; 2 uses
  %i.fc = fsub double %i.ev, %i.ef                ; 2 uses
  %i.fd = fsub double %i.eu, %i.ee                ; 2 uses
  %i.fe = fadd double %i.dw, %i.em                ; 2 uses
  %i.ff = fadd double %i.dx, %i.en                ; 2 uses
  %i.fg = fadd double %i.ee, %i.eu                ; 2 uses
  %i.fh = fadd double %i.ef, %i.ev                ; 2 uses
  %i.fi = fadd double %i.fe, %i.fg                ; 2 uses
  %i.fj = fadd double %i.ff, %i.fh                ; 2 uses
  %i.fk = fadd double %i.du, %i.ek                ; 2 uses
  %i.fl = fadd double %i.dv, %i.el                ; 2 uses
  %i.fm = fadd double %i.ec, %i.es                ; 2 uses
  %i.fn = fadd double %i.ed, %i.et                ; 2 uses
  %i.fo = fadd double %i.fk, %i.fm                ; 2 uses
  %i.fp = fadd double %i.fl, %i.fn                ; 2 uses
  %i.fq = fadd double %i.dm, %i.fi
  store double %i.fq, ptr %.0785, align 8, !tbaa !13
  %i.fr = fadd double %i.dn, %i.fj
  store double %i.fr, ptr %.0774783, align 8, !tbaa !13
  %i.fs = fadd double %i.dk, %i.fo
  %i.ft = fadd double %i.dl, %i.fp                ; 2 uses
  %i.fu = fneg double %i.ft
  %i.fv = load <2 x double>, ptr %i.cv, align 8, !tbaa !13 ; 2 uses
  %i.fw = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.fx = insertelement <2 x double> %i.fw, double %i.fu, i64 1
  %i.fy = fmul <2 x double> %i.fv, %i.fx
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ga = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.gb = shufflevector <2 x double> %i.ga, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fv, <2 x double> %i.gb, <2 x double> %i.fz) ; 2 uses
  %i.gd = extractelement <2 x double> %i.gc, i64 0
  store double %i.gd, ptr %i.p, align 8, !tbaa !13
  %i.ge = extractelement <2 x double> %i.gc, i64 1
  store double %i.ge, ptr %i.ab, align 8, !tbaa !13
  %i.gf = load double, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  %i.gg = load double, ptr %i.cx, align 8, !tbaa !13 ; 2 uses
  %i.gh = insertelement <2 x double> poison, double %i.fc, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.fd, i64 1
  %i.gj = fmul <2 x double> %i.gi, splat (double f0x3FE2CF2304755A5E)
  %i.gk = insertelement <2 x double> poison, double %i.fa, i64 0
  %i.gl = insertelement <2 x double> %i.gk, double %i.fb, i64 1
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.gj) ; 2 uses
  %i.gn = insertelement <2 x double> poison, double %i.fd, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.fc, i64 1
  %i.gp = fmul <2 x double> %i.go, splat (double f0xBFEE6F0E134454FF)
  %i.gq = insertelement <2 x double> poison, double %i.fb, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.fa, i64 1
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> splat (double f0x3FE2CF2304755A5E), <2 x double> %i.gp) ; 2 uses
  %i.gt = fsub double %i.ff, %i.fh
  %i.gu = fmul double %i.gt, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.gv = insertelement <2 x double> poison, double %i.fj, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.fi, i64 1
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> splat (double -2.500000e-01), <2 x double> %i.dp) ; 2 uses
  %i.gy = extractelement <2 x double> %i.gx, i64 0 ; 2 uses
  %i.gz = fadd double %i.gu, %i.gy                ; 2 uses
  %i.ha = fsub double %i.gy, %i.gu                ; 2 uses
  %i.hb = fsub double %i.fe, %i.fg
  %i.hc = fmul double %i.hb, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.hd = extractelement <2 x double> %i.gx, i64 1 ; 2 uses
  %i.he = fadd double %i.hc, %i.hd                ; 2 uses
  %i.hf = fsub double %i.hd, %i.hc                ; 2 uses
  %i.hg = extractelement <2 x double> %i.gm, i64 0 ; 2 uses
  %i.hh = fadd double %i.he, %i.hg
  %i.hi = extractelement <2 x double> %i.gm, i64 1 ; 2 uses
  %i.hj = fsub double %i.gz, %i.hi                ; 2 uses
  %i.hk = fneg double %i.hj
  %i.hl = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.hm = insertelement <2 x double> %i.hl, double %i.hk, i64 1
  %i.hn = insertelement <2 x double> poison, double %i.hh, i64 0
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hp = extractelement <2 x double> %i.gs, i64 1 ; 2 uses
  %i.hq = fsub double %i.hf, %i.hp
  %i.hr = extractelement <2 x double> %i.gs, i64 0 ; 2 uses
  %i.hs = fadd double %i.hr, %i.ha                ; 2 uses
  %i.ht = fneg double %i.hs
  %i.hu = insertelement <2 x double> poison, double %i.hs, i64 0
  %i.hv = insertelement <2 x double> %i.hu, double %i.ht, i64 1
  %i.hw = insertelement <2 x double> poison, double %i.hq, i64 0
  %i.hx = shufflevector <2 x double> %i.hw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hy = fsub double %i.he, %i.hg
  %i.hz = fadd double %i.hi, %i.gz                ; 2 uses
  %i.ia = fneg double %i.hz
  %i.ib = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.ia, i64 1
  %i.id = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fadd double %i.hf, %i.hp
  %i.ig = fsub double %i.ha, %i.hr                ; 2 uses
  %i.ih = fneg double %i.ig
  %i.ii = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.ij = insertelement <2 x double> %i.ii, double %i.ih, i64 1
  %i.ik = insertelement <2 x double> poison, double %i.if, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.in = insertelement <2 x double> %i.im, double %i.ex, i64 1
  %i.io = fmul <2 x double> %i.in, splat (double f0xBFEE6F0E134454FF)
  %i.ip = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.iq = insertelement <2 x double> %i.ip, double %i.ez, i64 1
  %i.ir = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iq, <2 x double> splat (double f0x3FE2CF2304755A5E), <2 x double> %i.io) ; 2 uses
  %i.is = insertelement <2 x double> poison, double %i.ex, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.ew, i64 1
  %i.iu = fmul <2 x double> %i.it, splat (double f0x3FE2CF2304755A5E)
  %i.iv = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.iw = insertelement <2 x double> %i.iv, double %i.ey, i64 1
  %i.ix = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iw, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.iu) ; 2 uses
  %i.iy = fsub double %i.fl, %i.fn
  %i.iz = fmul double %i.iy, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.ja = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.jb = insertelement <2 x double> %i.ja, double %i.fo, i64 1
  %i.jc = insertelement <2 x double> poison, double %i.dl, i64 0
  %i.jd = insertelement <2 x double> %i.jc, double %i.dk, i64 1
  %i.je = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> splat (double -2.500000e-01), <2 x double> %i.jd) ; 2 uses
  %i.jf = extractelement <2 x double> %i.je, i64 0 ; 2 uses
  %i.jg = fsub double %i.jf, %i.iz                ; 2 uses
  %i.jh = fadd double %i.iz, %i.jf                ; 2 uses
  %i.ji = fsub double %i.fk, %i.fm
  %i.jj = fmul double %i.ji, f0x3FE1E3779B97F4A8  ; 2 uses
  %i.jk = extractelement <2 x double> %i.je, i64 1 ; 2 uses
  %i.jl = fsub double %i.jk, %i.jj                ; 2 uses
  %i.jm = fadd double %i.jj, %i.jk                ; 2 uses
  %i.jn = extractelement <2 x double> %i.ir, i64 0 ; 2 uses
  %i.jo = fsub double %i.jl, %i.jn
  %i.jp = extractelement <2 x double> %i.ir, i64 1 ; 2 uses
  %i.jq = fadd double %i.jp, %i.jg                ; 2 uses
  %i.jr = getelementptr inbounds nuw i8, ptr %.0776781, i64 16
  %i.js = fneg double %i.jq
  %i.jt = insertelement <2 x double> poison, double %i.jq, i64 0
  %i.ju = insertelement <2 x double> %i.jt, double %i.js, i64 1
  %i.jv = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = extractelement <2 x double> %i.ix, i64 1 ; 2 uses
  %i.jy = fadd double %i.jm, %i.jx
  %i.jz = extractelement <2 x double> %i.ix, i64 0 ; 2 uses
  %i.ka = fsub double %i.jh, %i.jz                ; 2 uses
  %i.kb = getelementptr inbounds nuw i8, ptr %.0776781, i64 208
  %i.kc = fneg double %i.ka
  %i.kd = insertelement <2 x double> poison, double %i.ka, i64 0
  %i.ke = insertelement <2 x double> %i.kd, double %i.kc, i64 1
  %i.kf = insertelement <2 x double> poison, double %i.jy, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fadd double %i.jl, %i.jn
  %i.ki = fsub double %i.jg, %i.jp                ; 2 uses
  %i.kj = getelementptr inbounds nuw i8, ptr %.0776781, i64 272
  %i.kk = fneg double %i.ki
  %i.kl = insertelement <2 x double> poison, double %i.ki, i64 0
  %i.km = insertelement <2 x double> %i.kl, double %i.kk, i64 1
  %i.kn = insertelement <2 x double> poison, double %i.kh, i64 0
  %i.ko = shufflevector <2 x double> %i.kn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kp = fsub double %i.jm, %i.jx
  %i.kq = fadd double %i.jz, %i.jh                ; 2 uses
  %i.kr = getelementptr inbounds nuw i8, ptr %.0776781, i64 80
  %i.ks = fneg double %i.kq
  %i.kt = insertelement <2 x double> poison, double %i.kq, i64 0
  %i.ku = insertelement <2 x double> %i.kt, double %i.ks, i64 1
  %i.kv = insertelement <2 x double> poison, double %i.kp, i64 0
  %i.kw = shufflevector <2 x double> %i.kv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kx = insertelement <2 x double> poison, double %i.aa, i64 0
  %i.ky = insertelement <2 x double> %i.kx, double %i.bw, i64 1
  %i.kz = insertelement <2 x double> poison, double %i.ac, i64 0
  %i.la = insertelement <2 x double> %i.kz, double %i.ca, i64 1
  %i.lb = fsub <2 x double> %i.ky, %i.la          ; 2 uses
  %i.lc = insertelement <2 x double> poison, double %i.al, i64 0
  %i.ld = insertelement <2 x double> %i.lc, double %i.bq, i64 1
  %i.le = insertelement <2 x double> poison, double %i.am, i64 0
  %i.lf = insertelement <2 x double> %i.le, double %i.bs, i64 1
  %i.lg = fadd <2 x double> %i.ld, %i.lf          ; 2 uses
  %i.lh = fsub <2 x double> %i.lb, %i.lg          ; 2 uses
  %i.li = fadd <2 x double> %i.lb, %i.lg          ; 4 uses
  %i.lj = extractelement <2 x double> %i.li, i64 1
  %i.lk = extractelement <2 x double> %i.li, i64 0
  %9 = shufflevector <2 x double> %i.lh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.ll = fadd double %i.w, %i.y                  ; 2 uses
  %i.lm = fadd double %i.k, %i.m                  ; 2 uses
  %i.ln = fsub double %i.f, %i.j                  ; 2 uses
  %i.lo = fsub double %i.q, %i.u                  ; 2 uses
  %i.lp = fadd double %i.lm, %i.lo                ; 2 uses
  %i.lq = fsub double %i.ln, %i.ll                ; 2 uses
  %i.lr = fadd double %i.ln, %i.ll                ; 2 uses
  %i.ls = fsub double %i.lm, %i.lo                ; 2 uses
  %i.lt = insertelement <2 x double> poison, double %i.lq, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.lp, i64 1
  %i.lv = insertelement <2 x double> poison, double %i.ls, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.lr, i64 1
  %i.lx = getelementptr inbounds nuw i8, ptr %.0776781, i64 32
  %i.ly = fsub double %i.ai, %i.aj                ; 2 uses
  %i.lz = fsub double %i.bk, %i.bo                ; 2 uses
  %i.ma = fadd double %i.ae, %i.ag                ; 2 uses
  %i.mb = fadd double %i.cc, %i.ce                ; 2 uses
  %i.mc = fadd double %i.ma, %i.ly                ; 2 uses
  %i.md = fsub double %i.lz, %i.mb                ; 2 uses
  %i.me = fsub double %i.ma, %i.ly                ; 2 uses
  %i.mf = fadd double %i.lz, %i.mb                ; 2 uses
  %i.mg = fadd double %i.aw, %i.ay                ; 2 uses
  %i.mh = fadd double %i.cs, %i.cu                ; 2 uses
  %i.mi = fsub double %i.co, %i.cq                ; 2 uses
  %i.mj = fadd double %i.be, %i.bg                ; 2 uses
  %i.mk = fsub double %i.ba, %i.bc                ; 2 uses
  %i.ml = fsub double %i.cg, %i.ci                ; 2 uses
  %i.mm = fadd double %i.ck, %i.cm                ; 2 uses
  %i.mn = fsub double %i.aq, %i.au                ; 2 uses
  %i.mo = fsub double %i.mk, %i.mg                ; 2 uses
  %i.mp = insertelement <2 x double> poison, double %i.mn, i64 0
  %i.mq = insertelement <2 x double> %i.mp, double %i.mi, i64 1
  %i.mr = insertelement <2 x double> poison, double %i.mj, i64 0
  %i.ms = insertelement <2 x double> %i.mr, double %i.mm, i64 1
  %i.mt = fadd <2 x double> %i.mq, %i.ms          ; 2 uses
  %i.mu = fadd double %i.ml, %i.mh                ; 2 uses
  %i.mv = fadd double %i.mg, %i.mk                ; 2 uses
  %i.mw = fsub double %i.ml, %i.mh                ; 2 uses
  %i.mx = fsub double %i.mm, %i.mi                ; 2 uses
  %i.my = fsub double %i.mn, %i.mj                ; 2 uses
  %i.mz = insertelement <2 x double> poison, double %i.mf, i64 0
  %i.na = insertelement <2 x double> %i.mz, double %i.me, i64 1 ; 2 uses
  %i.nb = fsub <2 x double> %i.li, %i.na          ; 2 uses
  %i.nc = fadd <2 x double> %i.li, %i.na          ; 2 uses
  %i.nd = shufflevector <2 x double> %i.nb, <2 x double> %i.nc, <2 x i32> <i32 0, i32 3>
  %i.ne = fadd double %i.mv, %i.mx                ; 2 uses
  %i.nf = fsub double %i.mw, %i.my                ; 2 uses
  %i.ng = insertelement <2 x double> poison, double %i.md, i64 0
  %i.nh = insertelement <2 x double> %i.ng, double %i.mc, i64 1
  %i.ni = fadd <2 x double> %i.lh, %i.nh          ; 2 uses
  %i.nj = insertelement <2 x double> poison, double %i.mu, i64 0
  %i.nk = insertelement <2 x double> %i.nj, double %i.mo, i64 1
  %i.nl = fadd <2 x double> %i.mt, %i.nk          ; 2 uses
  %i.nm = fadd <2 x double> %i.ni, %i.nl          ; 3 uses
  %i.nn = fsub double %i.me, %i.lj                ; 2 uses
  %i.no = fadd double %i.lk, %i.mf                ; 2 uses
  %i.np = fsub double %i.mx, %i.mv                ; 2 uses
  %i.nq = fadd double %i.my, %i.mw                ; 2 uses
  %i.nr = fadd double %i.no, %i.nq                ; 2 uses
  %i.ns = fadd double %i.nn, %i.np                ; 2 uses
  %i.nt = extractelement <2 x double> %i.nm, i64 0
  %i.nu = fadd double %i.lq, %i.nt                ; 2 uses
  %i.nv = extractelement <2 x double> %i.nm, i64 1
  %i.nw = fadd double %i.lp, %i.nv                ; 2 uses
  %i.nx = fneg double %i.nw
  %i.ny = fadd double %i.ls, %i.ns                ; 2 uses
  %i.nz = fadd double %i.lr, %i.nr                ; 2 uses
  %i.oa = fneg double %i.ny
  %i.ob = insertelement <2 x double> poison, double %i.oa, i64 0
  %i.oc = insertelement <2 x double> %i.ob, double %i.nz, i64 1
  %i.od = insertelement <2 x double> poison, double %i.nz, i64 0
  %i.oe = insertelement <2 x double> %i.od, double %i.ny, i64 1
  %i.of = fsub <2 x double> %i.ni, %i.nl
  %i.og = fmul <2 x double> %i.of, splat (double f0x3FE1E3779B97F4A8) ; 2 uses
  %i.oh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nm, <2 x double> splat (double -2.500000e-01), <2 x double> %i.lu) ; 2 uses
  %i.oi = fadd <2 x double> %i.og, %i.oh          ; 2 uses
  %10 = shufflevector <2 x double> %i.mt, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.oj = insertelement <2 x double> %10, double %i.mu, i64 1
  %i.ok = insertelement <2 x double> %10, double %i.mo, i64 0
  %11 = fsub <2 x double> %i.oj, %i.ok            ; 2 uses
  %i.ol = insertelement <2 x double> %9, double %i.mc, i64 0
  %i.om = insertelement <2 x double> %9, double %i.md, i64 1
  %12 = fsub <2 x double> %i.ol, %i.om            ; 2 uses
  %i.on = fmul <2 x double> %11, splat (double f0xBFEE6F0E134454FF)
  %i.oo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> splat (double f0x3FE2CF2304755A5E), <2 x double> %i.on) ; 2 uses
  %13 = fsub <2 x double> %i.oh, %i.og            ; 2 uses
  %i.op = fsub <2 x double> %13, %i.oo            ; 4 uses
  %i.oq = fadd <2 x double> %13, %i.oo            ; 3 uses
  %i.or = shufflevector <2 x double> %i.op, <2 x double> %i.oq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.os = fneg <2 x double> %i.or
  %i.ot = shufflevector <2 x double> %i.os, <2 x double> %i.op, <2 x i32> <i32 1, i32 2>
  %14 = fmul <2 x double> %11, splat (double f0x3FE2CF2304755A5E)
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %12, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %14) ; 2 uses
  %i.ou = fsub <2 x double> %i.oi, %15            ; 4 uses
  %i.ov = fadd <2 x double> %i.oi, %15            ; 4 uses
  %i.ow = shufflevector <2 x double> %i.ou, <2 x double> %i.ov, <2 x i32> <i32 0, i32 3>
  %i.ox = shufflevector <2 x double> %i.ov, <2 x double> %i.ou, <2 x i32> <i32 0, i32 3>
  %i.oy = shufflevector <2 x double> %i.ov, <2 x double> %i.ou, <2 x i32> <i32 1, i32 3>
  %i.oz = fneg <2 x double> %i.oy                 ; 2 uses
  %i.pa = shufflevector <2 x double> %i.oz, <2 x double> %i.ou, <2 x i32> <i32 0, i32 2>
  %i.pb = shufflevector <2 x double> %i.oz, <2 x double> %i.ov, <2 x i32> <i32 1, i32 2>
  %i.pc = shufflevector <2 x double> %i.oq, <2 x double> %i.op, <2 x i32> <i32 0, i32 3>
  %i.pd = fmul double %i.gg, %i.nx
  %i.pe = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.nu, double %i.pd)
  store double %i.pe, ptr %i.av, align 8, !tbaa !13
  %i.pf = fmul double %i.nu, %i.gg
  %i.pg = tail call double @llvm.fmuladd.f64(double %i.gf, double %i.nw, double %i.pf)
  store double %i.pg, ptr %i.bf, align 8, !tbaa !13
  %i.ph = load <2 x double>, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.pi = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.pj = fmul <2 x double> %i.pi, %i.oc
  %i.pk = shufflevector <2 x double> %i.ph, <2 x double> poison, <2 x i32> zeroinitializer
  %i.pl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pk, <2 x double> %i.oe, <2 x double> %i.pj) ; 2 uses
  %i.pm = extractelement <2 x double> %i.pl, i64 0
  store double %i.pm, ptr %i.bd, align 8, !tbaa !13
  %i.pn = extractelement <2 x double> %i.pl, i64 1
  store double %i.pn, ptr %i.ax, align 8, !tbaa !13
  %i.po = load <2 x double>, ptr %i.cz, align 8, !tbaa !13 ; 2 uses
  %i.pp = fmul <2 x double> %i.po, %i.hm
  %i.pq = shufflevector <2 x double> %i.pp, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.pr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.po, <2 x double> %i.ho, <2 x double> %i.pq) ; 2 uses
  %i.ps = extractelement <2 x double> %i.pr, i64 0
  store double %i.ps, ptr %i.at, align 8, !tbaa !13
  %i.pt = extractelement <2 x double> %i.pr, i64 1
  store double %i.pt, ptr %i.az, align 8, !tbaa !13
  %i.pu = load <2 x double>, ptr %i.da, align 8, !tbaa !13 ; 2 uses
  %i.pv = fmul <2 x double> %i.pu, %i.hv
  %i.pw = shufflevector <2 x double> %i.pv, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.px = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.pu, <2 x double> %i.hx, <2 x double> %i.pw) ; 2 uses
  %i.py = extractelement <2 x double> %i.px, i64 0
  store double %i.py, ptr %i.bn, align 8, !tbaa !13
  %i.pz = extractelement <2 x double> %i.px, i64 1
  store double %i.pz, ptr %i.cn, align 8, !tbaa !13
  %i.qa = load <2 x double>, ptr %i.db, align 8, !tbaa !13 ; 2 uses
  %i.qb = fmul <2 x double> %i.qa, %i.ic
  %i.qc = shufflevector <2 x double> %i.qb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qa, <2 x double> %i.ie, <2 x double> %i.qc) ; 2 uses
  %i.qe = extractelement <2 x double> %i.qd, i64 0
  store double %i.qe, ptr %i.cf, align 8, !tbaa !13
  %i.qf = extractelement <2 x double> %i.qd, i64 1
  store double %i.qf, ptr %i.bz, align 8, !tbaa !13
  %i.qg = load <2 x double>, ptr %i.dc, align 8, !tbaa !13 ; 2 uses
  %i.qh = fmul <2 x double> %i.qg, %i.ij
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.qj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qg, <2 x double> %i.il, <2 x double> %i.qi) ; 2 uses
  %i.qk = extractelement <2 x double> %i.qj, i64 0
  store double %i.qk, ptr %i.z, align 8, !tbaa !13
  %i.ql = extractelement <2 x double> %i.qj, i64 1
  store double %i.ql, ptr %i.t, align 8, !tbaa !13
  %i.qm = load <2 x double>, ptr %.0776781, align 8, !tbaa !13 ; 2 uses
  %i.qn = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qo = shufflevector <2 x double> %i.qm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qp = fmul <2 x double> %i.qn, %i.pa
  %i.qq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qo, <2 x double> %i.ow, <2 x double> %i.qp) ; 2 uses
  %i.qr = extractelement <2 x double> %i.qq, i64 0
  store double %i.qr, ptr %.0773784, align 8, !tbaa !13
  %i.qs = extractelement <2 x double> %i.qq, i64 1
  store double %i.qs, ptr %.0775782, align 8, !tbaa !13
  %i.qt = load <2 x double>, ptr %i.dd, align 8, !tbaa !13 ; 2 uses
  %i.qu = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.qv = fmul <2 x double> %i.qu, %i.ot
  %i.qw = shufflevector <2 x double> %i.qt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.qx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.qw, <2 x double> %i.or, <2 x double> %i.qv) ; 2 uses
  %i.qy = extractelement <2 x double> %i.qx, i64 0
  store double %i.qy, ptr %i.cj, align 8, !tbaa !13
  %i.qz = extractelement <2 x double> %i.qx, i64 1
  store double %i.qz, ptr %i.cd, align 8, !tbaa !13
  %i.ra = load <2 x double>, ptr %i.de, align 8, !tbaa !13 ; 2 uses
  %i.rb = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rc = fmul <2 x double> %i.rb, %i.pb
  %i.rd = shufflevector <2 x double> %i.ra, <2 x double> poison, <2 x i32> zeroinitializer
  %i.re = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rd, <2 x double> %i.ox, <2 x double> %i.rc) ; 2 uses
  %i.rf = extractelement <2 x double> %i.re, i64 0
  store double %i.rf, ptr %i.ad, align 8, !tbaa !13
  %i.rg = extractelement <2 x double> %i.re, i64 1
  store double %i.rg, ptr %i.x, align 8, !tbaa !13
  %i.rh = load <2 x double>, ptr %i.df, align 8, !tbaa !13 ; 2 uses
  %i.ri = shufflevector <2 x double> %i.rh, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.rj = shufflevector <2 x double> %i.rh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.rk = insertelement <2 x double> poison, double %i.ne, i64 0
  %i.rl = insertelement <2 x double> %i.rk, double %i.nf, i64 1
  %i.rm = fmul <2 x double> %i.rl, splat (double f0xBFEE6F0E134454FF)
  %i.rn = shufflevector <2 x double> %i.nc, <2 x double> %i.nb, <2 x i32> <i32 1, i32 2>
  %i.ro = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rn, <2 x double> splat (double f0x3FE2CF2304755A5E), <2 x double> %i.rm) ; 2 uses
  %i.rp = insertelement <2 x double> poison, double %i.nf, i64 0
  %i.rq = insertelement <2 x double> %i.rp, double %i.ne, i64 1
  %i.rr = fmul <2 x double> %i.rq, splat (double f0x3FE2CF2304755A5E)
  %i.rs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> splat (double f0x3FEE6F0E134454FF), <2 x double> %i.rr)
  %i.rt = insertelement <2 x double> poison, double %i.ns, i64 0
  %i.ru = insertelement <2 x double> %i.rt, double %i.nr, i64 1
  %i.rv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ru, <2 x double> splat (double -2.500000e-01), <2 x double> %i.lw)
  %i.rw = shufflevector <2 x double> %i.rv, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.rx = fsub double %i.nn, %i.np
  %i.ry = fsub double %i.no, %i.nq
  %i.rz = insertelement <2 x double> poison, double %i.ry, i64 0
  %i.sa = insertelement <2 x double> %i.rz, double %i.rx, i64 1
  %i.sb = fmul <2 x double> %i.sa, splat (double f0x3FE1E3779B97F4A8) ; 2 uses
  %i.sc = fsub <2 x double> %i.rw, %i.sb          ; 2 uses
  %i.sd = fadd <2 x double> %i.sc, %i.ro          ; 4 uses
  %i.se = fsub <2 x double> %i.sc, %i.ro          ; 4 uses
  %i.sf = shufflevector <2 x double> %i.sd, <2 x double> %i.se, <2 x i32> <i32 0, i32 3>
  %i.sg = shufflevector <2 x double> %i.op, <2 x double> %i.se, <2 x i32> <i32 1, i32 3>
  %i.sh = fneg <2 x double> %i.sg                 ; 2 uses
  %i.si = shufflevector <2 x double> %i.sh, <2 x double> %i.oq, <2 x i32> <i32 0, i32 2>
  %i.sj = fmul <2 x double> %i.ri, %i.si
  %i.sk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.rj, <2 x double> %i.pc, <2 x double> %i.sj) ; 2 uses
  %i.sl = extractelement <2 x double> %i.sk, i64 0
  store double %i.sl, ptr %i.bp, align 8, !tbaa !13
  %i.sm = extractelement <2 x double> %i.sk, i64 1
  store double %i.sm, ptr %i.ct, align 8, !tbaa !13
  %i.sn = load <2 x double>, ptr %i.jr, align 8, !tbaa !13 ; 2 uses
  %i.so = fmul <2 x double> %i.sn, %i.ju
  %i.sp = shufflevector <2 x double> %i.so, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sn, <2 x double> %i.jw, <2 x double> %i.sp) ; 2 uses
  %i.sr = extractelement <2 x double> %i.sq, i64 0
  store double %i.sr, ptr %i.bv, align 8, !tbaa !13
  %i.ss = extractelement <2 x double> %i.sq, i64 1
  store double %i.ss, ptr %i.ch, align 8, !tbaa !13
  %i.st = load <2 x double>, ptr %i.kb, align 8, !tbaa !13 ; 2 uses
  %i.su = fmul <2 x double> %i.st, %i.ke
  %i.sv = shufflevector <2 x double> %i.su, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.sw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.st, <2 x double> %i.kg, <2 x double> %i.sv) ; 2 uses
  %i.sx = extractelement <2 x double> %i.sw, i64 0
  store double %i.sx, ptr %i.bb, align 8, !tbaa !13
  %i.sy = extractelement <2 x double> %i.sw, i64 1
  store double %i.sy, ptr %i.ap, align 8, !tbaa !13
  %i.sz = load <2 x double>, ptr %i.kj, align 8, !tbaa !13 ; 2 uses
  %i.ta = fmul <2 x double> %i.sz, %i.km
  %i.tb = shufflevector <2 x double> %i.ta, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.tc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.sz, <2 x double> %i.ko, <2 x double> %i.tb) ; 2 uses
  %i.td = extractelement <2 x double> %i.tc, i64 0
  store double %i.td, ptr %i.ah, align 8, !tbaa !13
  %i.te = extractelement <2 x double> %i.tc, i64 1
  store double %i.te, ptr %i.i, align 8, !tbaa !13
  %i.tf = load <2 x double>, ptr %i.kr, align 8, !tbaa !13 ; 2 uses
  %i.tg = fmul <2 x double> %i.tf, %i.ku
  %i.th = shufflevector <2 x double> %i.tg, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ti = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tf, <2 x double> %i.kw, <2 x double> %i.th) ; 2 uses
  %i.tj = extractelement <2 x double> %i.ti, i64 0
  store double %i.tj, ptr %i.cp, align 8, !tbaa !13
  %i.tk = extractelement <2 x double> %i.ti, i64 1
  store double %i.tk, ptr %i.bj, align 8, !tbaa !13
  %i.tl = load <2 x double>, ptr %i.lx, align 8, !tbaa !13 ; 2 uses
  %i.tm = shufflevector <2 x double> %i.tl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.tn = shufflevector <2 x double> %i.sh, <2 x double> %i.sd, <2 x i32> <i32 1, i32 2>
  %i.to = fmul <2 x double> %i.tm, %i.tn
  %i.tp = shufflevector <2 x double> %i.tl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.tq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.tp, <2 x double> %i.sf, <2 x double> %i.to) ; 2 uses
  %i.tr = extractelement <2 x double> %i.tq, i64 0
  store double %i.tr, ptr %i.cb, align 8, !tbaa !13
  %i.ts = extractelement <2 x double> %i.tq, i64 1
  store double %i.ts, ptr %i.cl, align 8, !tbaa !13
  %i.tt = shufflevector <2 x double> %i.rs, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.tu = getelementptr inbounds nuw i8, ptr %.0776781, i64 288
  %i.tv = fadd <2 x double> %i.sb, %i.rw          ; 2 uses
  %i.tw = fadd <2 x double> %i.tv, %i.tt          ; 3 uses
  %i.tx = fsub <2 x double> %i.tv, %i.tt          ; 4 uses
  %i.ty = shufflevector <2 x double> %i.tw, <2 x double> %i.tx, <2 x i32> <i32 0, i32 3>
  %i.tz = load <2 x double>, ptr %i.tu, align 8, !tbaa !13 ; 2 uses
  %i.ua = shufflevector <2 x double> %i.tz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ub = shufflevector <2 x double> %i.tz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uc = getelementptr inbounds nuw i8, ptr %.0776781, i64 96
  %i.ud = shufflevector <2 x double> %i.se, <2 x double> %i.sd, <2 x i32> <i32 0, i32 3>
  %i.ue = shufflevector <2 x double> %i.tx, <2 x double> %i.sd, <2 x i32> <i32 1, i32 3>
  %i.uf = fneg <2 x double> %i.ue                 ; 2 uses
  %i.ug = shufflevector <2 x double> %i.uf, <2 x double> %i.tw, <2 x i32> <i32 0, i32 2>
  %i.uh = fmul <2 x double> %i.ua, %i.ug
  %i.ui = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ub, <2 x double> %i.ty, <2 x double> %i.uh) ; 2 uses
  %i.uj = extractelement <2 x double> %i.ui, i64 0
  store double %i.uj, ptr %i.ak, align 8, !tbaa !13
  %i.uk = extractelement <2 x double> %i.ui, i64 1
  store double %i.uk, ptr %i.l, align 8, !tbaa !13
  %i.ul = load <2 x double>, ptr %i.uc, align 8, !tbaa !13 ; 2 uses
  %i.um = shufflevector <2 x double> %i.ul, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.un = shufflevector <2 x double> %i.uf, <2 x double> %i.se, <2 x i32> <i32 1, i32 2>
  %i.uo = fmul <2 x double> %i.um, %i.un
  %i.up = shufflevector <2 x double> %i.ul, <2 x double> poison, <2 x i32> zeroinitializer
  %i.uq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.up, <2 x double> %i.ud, <2 x double> %i.uo) ; 2 uses
  %i.ur = extractelement <2 x double> %i.uq, i64 0
  store double %i.ur, ptr %i.cr, align 8, !tbaa !13
  %i.us = extractelement <2 x double> %i.uq, i64 1
  store double %i.us, ptr %i.br, align 8, !tbaa !13
  %i.ut = getelementptr inbounds nuw i8, ptr %.0776781, i64 160
  %i.uu = shufflevector <2 x double> %i.tx, <2 x double> %i.tw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.uv = load <2 x double>, ptr %i.ut, align 8, !tbaa !13 ; 2 uses
  %i.uw = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ux = fneg <2 x double> %i.uu
  %i.uy = shufflevector <2 x double> %i.ux, <2 x double> %i.tx, <2 x i32> <i32 1, i32 2>
  %i.uz = fmul <2 x double> %i.uw, %i.uy
  %i.va = shufflevector <2 x double> %i.uv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.vb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.va, <2 x double> %i.uu, <2 x double> %i.uz) ; 2 uses
  %i.vc = extractelement <2 x double> %i.vb, i64 0
  store double %i.vc, ptr %i.v, align 8, !tbaa !13
  %i.vd = extractelement <2 x double> %i.vb, i64 1
  store double %i.vd, ptr %i.af, align 8, !tbaa !13
  %i.ve = add nsw i64 %.0778779, 1                ; 2 uses
  %i.vf = getelementptr inbounds [8 x i8], ptr %.0785, i64 %8
  %i.vg = getelementptr inbounds [8 x i8], ptr %.0773784, i64 %8
  %i.vh = getelementptr inbounds [8 x i8], ptr %.0774783, i64 %i.d
  %i.vi = getelementptr inbounds [8 x i8], ptr %.0775782, i64 %i.d
  %i.vj = getelementptr inbounds nuw i8, ptr %.0776781, i64 304
  %i.vk = getelementptr inbounds [8 x i8], ptr %.0777780, i64 %i.e
  %exitcond.not = icmp eq i64 %i.ve, %7
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
