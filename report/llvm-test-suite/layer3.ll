Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/layer3?download=true
inline.NumInlined: 29
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 60
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 68
begin_hunk_0_@dct36:bb.a
  %i.el = fmul double %i.bi, %i.ek                ; 2 uses
  %i.em = load double, ptr %i.ap, align 8, !tbaa !8
  %i.en = load double, ptr %i.r, align 8, !tbaa !8
  %i.eo = fsub double %i.em, %i.en
  %i.ep = load double, ptr %i.f, align 8, !tbaa !8
  %i.eq = fsub double %i.eo, %i.ep
  %i.er = fmul double %i.bi, %i.eq                ; 2 uses
  %i.es = load double, ptr %0, align 8, !tbaa !8
  %i.et = load <2 x double>, ptr %i.am, align 8, !tbaa !8
  %i.eu = load <2 x double>, ptr %i.aa, align 8, !tbaa !8
  %i.ev = fsub <2 x double> %i.et, %i.eu
  %i.ew = load <2 x double>, ptr %i.a, align 8, !tbaa !8
  %i.ex = fsub <2 x double> %i.ev, %i.ew
  %i.ey = load <2 x double>, ptr %i.o, align 8, !tbaa !8
  %i.ez = fneg <2 x double> %i.ey
  %i.fa = insertelement <2 x double> poison, double %i.bk, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ex, <2 x double> %i.fb, <2 x double> %i.ez) ; 2 uses
  %i.fd = extractelement <2 x double> %i.fc, i64 0
  %i.fe = fadd double %i.fd, %i.es                ; 2 uses
  %i.ff = load double, ptr %i.at, align 8, !tbaa !8
  %i.fg = extractelement <2 x double> %i.fc, i64 1
  %i.fh = fadd double %i.fg, %i.ff                ; 2 uses
  %i.fi = fadd double %i.el, %i.fe                ; 2 uses
  %i.fj = fadd double %i.er, %i.fh
  %i.fk = load double, ptr @tfcos36.1, align 8, !tbaa !8
  %i.fl = fmul double %i.fk, %i.fj                ; 2 uses
  %i.fm = fadd double %i.fi, %i.fl                ; 2 uses
  %i.fn = getelementptr inbounds nuw i8, ptr %3, i64 224
  %i.fo = load double, ptr %i.fn, align 8, !tbaa !8
  %i.fp = fmul double %i.fo, %i.fm
  %i.fq = getelementptr inbounds nuw i8, ptr %2, i64 80
  store double %i.fp, ptr %i.fq, align 8, !tbaa !8
  %i.fr = getelementptr inbounds nuw i8, ptr %3, i64 200
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !8
  %i.ft = fmul double %i.fm, %i.fs
  %i.fu = getelementptr inbounds nuw i8, ptr %2, i64 56
  store double %i.ft, ptr %i.fu, align 8, !tbaa !8
  %i.fv = fsub double %i.fi, %i.fl                ; 2 uses
  %i.fw = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.fx = load double, ptr %i.fw, align 8, !tbaa !8
  %i.fy = getelementptr inbounds nuw i8, ptr %3, i64 56
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !8
  %i.ga = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.fz, double %i.fx)
  %i.gb = getelementptr inbounds nuw i8, ptr %4, i64 1792
  store double %i.ga, ptr %i.gb, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !8
  %i.ge = getelementptr inbounds nuw i8, ptr %3, i64 80
  %i.gf = load double, ptr %i.ge, align 8, !tbaa !8
  %i.gg = tail call double @llvm.fmuladd.f64(double %i.fv, double %i.gf, double %i.gd)
  %i.gh = getelementptr inbounds nuw i8, ptr %4, i64 2560
  store double %i.gg, ptr %i.gh, align 8, !tbaa !8
  %i.gi = fsub double %i.fe, %i.el                ; 2 uses
  %i.gj = fsub double %i.fh, %i.er
  %i.gk = load double, ptr @tfcos36.7, align 8, !tbaa !8
  %i.gl = fmul double %i.gj, %i.gk                ; 2 uses
  %i.gm = fadd double %i.gi, %i.gl                ; 2 uses
  %i.gn = getelementptr inbounds nuw i8, ptr %3, i64 272
  %i.go = load double, ptr %i.gn, align 8, !tbaa !8
  %i.gp = fmul double %i.go, %i.gm
  %i.gq = getelementptr inbounds nuw i8, ptr %2, i64 128
  store double %i.gp, ptr %i.gq, align 8, !tbaa !8
  %i.gr = getelementptr inbounds nuw i8, ptr %3, i64 152
  %i.gs = load double, ptr %i.gr, align 8, !tbaa !8
  %i.gt = fmul double %i.gm, %i.gs
  %i.gu = getelementptr inbounds nuw i8, ptr %2, i64 8
  store double %i.gt, ptr %i.gu, align 8, !tbaa !8
  %i.gv = fsub double %i.gi, %i.gl                ; 2 uses
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gx = load double, ptr %i.gw, align 8, !tbaa !8
  %i.gy = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.gz = load double, ptr %i.gy, align 8, !tbaa !8
  %i.ha = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.gz, double %i.gx)
  %i.hb = getelementptr inbounds nuw i8, ptr %4, i64 256
  store double %i.ha, ptr %i.hb, align 8, !tbaa !8
  %i.hc = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !8
  %i.he = getelementptr inbounds nuw i8, ptr %3, i64 128
  %i.hf = load double, ptr %i.he, align 8, !tbaa !8
  %i.hg = tail call double @llvm.fmuladd.f64(double %i.gv, double %i.hf, double %i.hd)
  %i.hh = getelementptr inbounds nuw i8, ptr %4, i64 4096
  store double %i.hg, ptr %i.hh, align 8, !tbaa !8
  %i.hi = load double, ptr %i.as, align 8, !tbaa !8
  %i.hj = fneg double %i.bj                       ; 2 uses
  %i.hk = tail call double @llvm.fmuladd.f64(double %i.hi, double %i.br, double %i.hj)
  %i.hl = load double, ptr %i.u, align 8, !tbaa !8
  %i.hm = fneg double %i.hl
  %i.hn = tail call double @llvm.fmuladd.f64(double %i.hm, double %i.bt, double %i.hk)
  %i.ho = load double, ptr %i.i, align 8, !tbaa !8
  %i.hp = tail call double @llvm.fmuladd.f64(double %i.ho, double %i.bo, double %i.hn) ; 2 uses
  %i.hq = load double, ptr %i.ap, align 8, !tbaa !8
  %i.hr = fneg double %i.bm                       ; 2 uses
  %i.hs = tail call double @llvm.fmuladd.f64(double %i.hq, double %i.br, double %i.hr)
  %i.ht = load double, ptr %i.r, align 8, !tbaa !8
  %i.hu = fneg double %i.ht
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.hu, double %i.bt, double %i.hs)
  %i.hw = load double, ptr %i.f, align 8, !tbaa !8
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.bo, double %i.hv) ; 2 uses
  %i.hy = load double, ptr %0, align 8, !tbaa !8
  %i.hz = load double, ptr %i.am, align 8, !tbaa !8
  %i.ia = fneg double %i.hz
  %i.ib = tail call double @llvm.fmuladd.f64(double %i.ia, double %i.ce, double %i.hy)
  %i.ic = load double, ptr %i.aa, align 8, !tbaa !8
  %i.id = fneg double %i.ic
  %i.ie = tail call double @llvm.fmuladd.f64(double %i.id, double %i.by, double %i.ib)
  %i.if = fadd double %i.bl, %i.ie
  %i.ig = load double, ptr %i.a, align 8, !tbaa !8
  %i.ih = tail call double @llvm.fmuladd.f64(double %i.ig, double %i.cb, double %i.if) ; 2 uses
  %i.ii = load double, ptr %i.at, align 8, !tbaa !8
  %i.ij = load double, ptr %i.aj, align 8, !tbaa !8
  %i.ik = fneg double %i.ij
  %i.il = tail call double @llvm.fmuladd.f64(double %i.ik, double %i.ce, double %i.ii)
  %i.im = load double, ptr %i.x, align 8, !tbaa !8
  %i.in = fneg double %i.im
  %i.io = tail call double @llvm.fmuladd.f64(double %i.in, double %i.by, double %i.il)
  %i.ip = fadd double %i.bn, %i.io
  %i.iq = load double, ptr %i.c, align 8, !tbaa !8
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.iq, double %i.cb, double %i.ip) ; 2 uses
  %i.is = fadd double %i.hp, %i.ih                ; 2 uses
  %i.it = fadd double %i.hx, %i.ir
  %i.iu = load double, ptr @tfcos36.2, align 16, !tbaa !8
  %i.iv = fmul double %i.iu, %i.it                ; 2 uses
  %i.iw = fadd double %i.is, %i.iv                ; 2 uses
  %i.ix = getelementptr inbounds nuw i8, ptr %3, i64 232
  %i.iy = load double, ptr %i.ix, align 8, !tbaa !8
  %i.iz = fmul double %i.iy, %i.iw
  %i.ja = getelementptr inbounds nuw i8, ptr %2, i64 88
  store double %i.iz, ptr %i.ja, align 8, !tbaa !8
  %i.jb = getelementptr inbounds nuw i8, ptr %3, i64 192
  %i.jc = load double, ptr %i.jb, align 8, !tbaa !8
  %i.jd = fmul double %i.jc, %i.iw
  %i.je = getelementptr inbounds nuw i8, ptr %2, i64 48
  store double %i.jd, ptr %i.je, align 8, !tbaa !8
  %i.jf = fsub double %i.is, %i.iv                ; 2 uses
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !8
  %i.ji = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.jj = load double, ptr %i.ji, align 8, !tbaa !8
  %i.jk = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.jj, double %i.jh)
  %i.jl = getelementptr inbounds nuw i8, ptr %4, i64 1536
  store double %i.jk, ptr %i.jl, align 8, !tbaa !8
  %i.jm = getelementptr inbounds nuw i8, ptr %1, i64 88
  %i.jn = load double, ptr %i.jm, align 8, !tbaa !8
  %i.jo = getelementptr inbounds nuw i8, ptr %3, i64 88
  %i.jp = load double, ptr %i.jo, align 8, !tbaa !8
  %i.jq = tail call double @llvm.fmuladd.f64(double %i.jf, double %i.jp, double %i.jn)
  %i.jr = getelementptr inbounds nuw i8, ptr %4, i64 2816
  store double %i.jq, ptr %i.jr, align 8, !tbaa !8
  %i.js = fsub double %i.ih, %i.hp                ; 2 uses
  %i.jt = fsub double %i.ir, %i.hx
  %i.ju = load double, ptr @tfcos36.6, align 16, !tbaa !8
  %i.jv = fmul double %i.jt, %i.ju                ; 2 uses
  %i.jw = fadd double %i.js, %i.jv                ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %3, i64 264
  %i.jy = load double, ptr %i.jx, align 8, !tbaa !8
  %i.jz = fmul double %i.jy, %i.jw
  %i.ka = getelementptr inbounds nuw i8, ptr %2, i64 120
  store double %i.jz, ptr %i.ka, align 8, !tbaa !8
  %i.kb = getelementptr inbounds nuw i8, ptr %3, i64 160
  %i.kc = load double, ptr %i.kb, align 8, !tbaa !8
  %i.kd = fmul double %i.jw, %i.kc
  %i.ke = getelementptr inbounds nuw i8, ptr %2, i64 16
  store double %i.kd, ptr %i.ke, align 8, !tbaa !8
  %i.kf = fsub double %i.js, %i.jv                ; 2 uses
  %i.kg = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.kh = load double, ptr %i.kg, align 8, !tbaa !8
  %i.ki = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.kj = load double, ptr %i.ki, align 8, !tbaa !8
  %i.kk = tail call double @llvm.fmuladd.f64(double %i.kf, double %i.kj, double %i.kh)
  %i.kl = getelementptr inbounds nuw i8, ptr %4, i64 512
  store double %i.kk, ptr %i.kl, align 8, !tbaa !8
  %i.km = getelementptr inbounds nuw i8, ptr %1, i64 120
  %i.kn = load double, ptr %i.km, align 8, !tbaa !8
  %i.ko = getelementptr inbounds nuw i8, ptr %3, i64 120
  %i.kp = load double, ptr %i.ko, align 8, !tbaa !8
  %i.kq = tail call double @llvm.fmuladd.f64(double %i.kf, double %i.kp, double %i.kn)
  %i.kr = getelementptr inbounds nuw i8, ptr %4, i64 3840
  store double %i.kq, ptr %i.kr, align 8, !tbaa !8
  %i.ks = load double, ptr %i.as, align 8, !tbaa !8
  %i.kt = tail call double @llvm.fmuladd.f64(double %i.ks, double %i.bt, double %i.hj)
  %i.ku = load double, ptr %i.u, align 8, !tbaa !8
  %i.kv = tail call double @llvm.fmuladd.f64(double %i.ku, double %i.bo, double %i.kt)
  %i.kw = load double, ptr %i.ap, align 8, !tbaa !8
  %i.kx = tail call double @llvm.fmuladd.f64(double %i.kw, double %i.bt, double %i.hr)
  %i.ky = load double, ptr %i.r, align 8, !tbaa !8
  %i.kz = tail call double @llvm.fmuladd.f64(double %i.ky, double %i.bo, double %i.kx)
  %i.la = load <2 x double>, ptr %i.i, align 8, !tbaa !8
  %i.lb = fneg <2 x double> %i.la                 ; 2 uses
  %i.lc = extractelement <2 x double> %i.lb, i64 0
  %i.ld = tail call double @llvm.fmuladd.f64(double %i.lc, double %i.br, double %i.kv) ; 2 uses
  %i.le = extractelement <2 x double> %i.lb, i64 1
  %i.lf = tail call double @llvm.fmuladd.f64(double %i.le, double %i.br, double %i.kz) ; 2 uses
  %i.lg = load double, ptr %0, align 8, !tbaa !8
  %i.lh = load double, ptr %i.am, align 8, !tbaa !8
  %i.li = fneg double %i.lh
  %i.lj = tail call double @llvm.fmuladd.f64(double %i.li, double %i.cb, double %i.lg)
  %i.lk = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ll = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.ce, double %i.lj)
  %i.lm = fadd double %i.bl, %i.ll
  %5 = load <2 x double>, ptr %i.a, align 8
  %i.ln = load double, ptr %i.at, align 8, !tbaa !8
  %i.lo = load double, ptr %i.aj, align 8, !tbaa !8
  %i.lp = insertelement <2 x double> %5, double %i.lo, i64 1
  %i.lq = fneg <2 x double> %i.lp
  %i.lr = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.cb, i64 1
  %i.lt = insertelement <2 x double> poison, double %i.lm, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.ln, i64 1
  %i.lv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> %i.ls, <2 x double> %i.lu) ; 2 uses
  %i.lw = load double, ptr %i.x, align 8, !tbaa !8
  %i.lx = extractelement <2 x double> %i.lv, i64 1
  %i.ly = tail call double @llvm.fmuladd.f64(double %i.lw, double %i.ce, double %i.lx)
  %i.lz = fadd double %i.bn, %i.ly
  %i.ma = load double, ptr %i.c, align 8, !tbaa !8
  %i.mb = fneg double %i.ma
  %i.mc = tail call double @llvm.fmuladd.f64(double %i.mb, double %i.by, double %i.lz) ; 2 uses
  %i.md = extractelement <2 x double> %i.lv, i64 0 ; 2 uses
  %i.me = fadd double %i.ld, %i.md                ; 2 uses
  %i.mf = fadd double %i.lf, %i.mc
  %i.mg = load double, ptr @tfcos36.3, align 8, !tbaa !8
  %i.mh = fmul double %i.mg, %i.mf                ; 2 uses
  %i.mi = fadd double %i.me, %i.mh                ; 2 uses
  %i.mj = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.mk = load double, ptr %i.mj, align 8, !tbaa !8
  %i.ml = fmul double %i.mk, %i.mi
  %i.mm = getelementptr inbounds nuw i8, ptr %2, i64 96
  store double %i.ml, ptr %i.mm, align 8, !tbaa !8
  %i.mn = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.mo = load double, ptr %i.mn, align 8, !tbaa !8
  %i.mp = fmul double %i.mo, %i.mi
  %i.mq = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.mp, ptr %i.mq, align 8, !tbaa !8
  %i.mr = fsub double %i.me, %i.mh                ; 2 uses
  %i.ms = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mt = load double, ptr %i.ms, align 8, !tbaa !8
  %i.mu = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.mv = load double, ptr %i.mu, align 8, !tbaa !8
  %i.mw = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.mv, double %i.mt)
  %i.mx = getelementptr inbounds nuw i8, ptr %4, i64 1280
  store double %i.mw, ptr %i.mx, align 8, !tbaa !8
  %i.my = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.mz = load double, ptr %i.my, align 8, !tbaa !8
  %i.na = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.nb = load double, ptr %i.na, align 8, !tbaa !8
  %i.nc = tail call double @llvm.fmuladd.f64(double %i.mr, double %i.nb, double %i.mz)
  %i.nd = getelementptr inbounds nuw i8, ptr %4, i64 3072
  store double %i.nc, ptr %i.nd, align 8, !tbaa !8
  %i.ne = fsub double %i.md, %i.ld                ; 2 uses
  %i.nf = fsub double %i.mc, %i.lf
  %i.ng = load double, ptr @tfcos36.5, align 8, !tbaa !8
  %i.nh = fmul double %i.nf, %i.ng                ; 2 uses
  %i.ni = fadd double %i.ne, %i.nh                ; 2 uses
  %i.nj = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.nk = load double, ptr %i.nj, align 8, !tbaa !8
  %i.nl = fmul double %i.nk, %i.ni
  %i.nm = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.nl, ptr %i.nm, align 8, !tbaa !8
  %i.nn = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.no = load double, ptr %i.nn, align 8, !tbaa !8
  %i.np = fmul double %i.ni, %i.no
  %i.nq = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.np, ptr %i.nq, align 8, !tbaa !8
  %i.nr = fsub double %i.ne, %i.nh                ; 2 uses
  %i.ns = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nt = load double, ptr %i.ns, align 8, !tbaa !8
  %i.nu = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.nv = load double, ptr %i.nu, align 8, !tbaa !8
  %i.nw = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.nv, double %i.nt)
  %i.nx = getelementptr inbounds nuw i8, ptr %4, i64 768
  store double %i.nw, ptr %i.nx, align 8, !tbaa !8
  %i.ny = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.nz = load double, ptr %i.ny, align 8, !tbaa !8
  %i.oa = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.ob = load double, ptr %i.oa, align 8, !tbaa !8
  %i.oc = tail call double @llvm.fmuladd.f64(double %i.nr, double %i.ob, double %i.nz)
  %i.od = getelementptr inbounds nuw i8, ptr %4, i64 3584
  store double %i.oc, ptr %i.od, align 8, !tbaa !8
  %i.oe = load double, ptr %0, align 8, !tbaa !8
  %i.of = load double, ptr %i.am, align 8, !tbaa !8
  %i.og = fsub double %i.oe, %i.of
  %i.oh = load double, ptr %i.aa, align 8, !tbaa !8
  %i.oi = fadd double %i.og, %i.oh
  %i.oj = load double, ptr %i.o, align 8, !tbaa !8
  %i.ok = fsub double %i.oi, %i.oj
  %i.ol = load double, ptr %i.a, align 8, !tbaa !8
  %i.om = fadd double %i.ok, %i.ol                ; 2 uses
  %i.on = load double, ptr %i.at, align 8, !tbaa !8
  %i.oo = load double, ptr %i.aj, align 8, !tbaa !8
  %i.op = fsub double %i.on, %i.oo
  %i.oq = load double, ptr %i.x, align 8, !tbaa !8
  %i.or = fadd double %i.op, %i.oq
  %i.os = load double, ptr %i.l, align 8, !tbaa !8
  %i.ot = fsub double %i.or, %i.os
  %i.ou = load double, ptr %i.c, align 8, !tbaa !8
  %i.ov = fadd double %i.ot, %i.ou
  %i.ow = load double, ptr @tfcos36.4, align 16, !tbaa !8
  %i.ox = fmul double %i.ov, %i.ow                ; 2 uses
  %i.oy = fadd double %i.om, %i.ox                ; 2 uses
  %i.oz = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.pa = load double, ptr %i.oz, align 8, !tbaa !8
  %i.pb = fmul double %i.pa, %i.oy
  %i.pc = getelementptr inbounds nuw i8, ptr %2, i64 104
  store double %i.pb, ptr %i.pc, align 8, !tbaa !8
  %i.pd = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.pe = load double, ptr %i.pd, align 8, !tbaa !8
  %i.pf = fmul double %i.oy, %i.pe
  %i.pg = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %i.pf, ptr %i.pg, align 8, !tbaa !8
  %i.ph = fsub double %i.om, %i.ox                ; 2 uses
  %i.pi = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pj = load double, ptr %i.pi, align 8, !tbaa !8
  %i.pk = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.pl = load double, ptr %i.pk, align 8, !tbaa !8
  %i.pm = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.pl, double %i.pj)
  %i.pn = getelementptr inbounds nuw i8, ptr %4, i64 1024
  store double %i.pm, ptr %i.pn, align 8, !tbaa !8
  %i.po = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.pp = load double, ptr %i.po, align 8, !tbaa !8
  %i.pq = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.pr = load double, ptr %i.pq, align 8, !tbaa !8
  %i.ps = tail call double @llvm.fmuladd.f64(double %i.ph, double %i.pr, double %i.pp)
  %i.pt = getelementptr inbounds nuw i8, ptr %4, i64 3328
  store double %i.ps, ptr %i.pt, align 8, !tbaa !8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, argmem: readwrite, inaccessiblemem: none, target_mem: none) uwtable
define internal fastcc void @dct12(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef captures(none) initializes((0, 144)) %2, ptr nofree noundef readonly captures(none) %3, ptr nofree noundef captures(none) initializes((0, 8), (256, 264), (512, 520), (768, 776), (1024, 1032), (1280, 1288), (1536, 1544), (1792, 1800), (2048, 2056), (2304, 2312), (2560, 2568), (2816, 2824), (3072, 3080), (3328, 3336), (3584, 3592), (3840, 3848), (4096, 4104), (4352, 4360)) %4) unnamed_addr #7 {
bb.a:
  %i.a = load double, ptr %1, align 8, !tbaa !8
  store double %i.a, ptr %4, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load double, ptr %i.b, align 8, !tbaa !8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 256
  store double %i.c, ptr %i.d, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = load double, ptr %i.e, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %4, i64 512
  store double %i.f, ptr %i.g, align 8, !tbaa !8
  %i.h = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.i = load double, ptr %i.h, align 8, !tbaa !8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 768
  store double %i.i, ptr %i.j, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.l = load double, ptr %i.k, align 8, !tbaa !8
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 1024
  store double %i.l, ptr %i.m, align 8, !tbaa !8
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.o = load double, ptr %i.n, align 8, !tbaa !8
  %i.p = getelementptr inbounds nuw i8, ptr %4, i64 1280
  store double %i.o, ptr %i.p, align 8, !tbaa !8
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.r = load double, ptr %i.q, align 8, !tbaa !8
  %i.s = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.t = load double, ptr %i.s, align 8, !tbaa !8 ; 2 uses
  %i.u = fadd double %i.r, %i.t
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.w = load double, ptr %i.v, align 8, !tbaa !8 ; 2 uses
  %i.x = fadd double %i.t, %i.w                   ; 2 uses
  %i.y = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.z = load double, ptr %i.y, align 8, !tbaa !8 ; 2 uses
  %i.aa = fadd double %i.w, %i.z                  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.ac = load double, ptr %i.ab, align 8, !tbaa !8 ; 2 uses
  %i.ad = fadd double %i.z, %i.ac
  %i.ae = load double, ptr %0, align 8, !tbaa !8  ; 3 uses
  %i.af = fadd double %i.ac, %i.ae                ; 3 uses
  %i.ag = fadd double %i.u, %i.aa                 ; 2 uses
  %i.ah = fadd double %i.aa, %i.af
  %i.ai = load double, ptr @COS6_1, align 8, !tbaa !8 ; 6 uses
  %i.aj = fmul double %i.ad, %i.ai                ; 2 uses
  %i.ak = fmul double %i.ai, %i.ah                ; 2 uses
  %i.al = fsub double %i.ae, %i.x                 ; 2 uses
  %i.am = fsub double %i.af, %i.ag
  %i.an = load double, ptr @tfcos12.1, align 8, !tbaa !8 ; 3 uses
  %i.ao = fmul double %i.am, %i.an                ; 2 uses
  %i.ap = fadd double %i.al, %i.ao                ; 2 uses
  %i.aq = fsub double %i.al, %i.ao                ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %1, i64 128
  %i.as = load double, ptr %i.ar, align 8, !tbaa !8
  %i.at = getelementptr inbounds nuw i8, ptr %3, i64 80 ; 3 uses
  %i.au = load double, ptr %i.at, align 8, !tbaa !8
  %i.av = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.au, double %i.as)
  %i.aw = getelementptr inbounds nuw i8, ptr %4, i64 4096 ; 3 uses
  store double %i.av, ptr %i.aw, align 8, !tbaa !8
  %i.ax = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !8
  %i.az = getelementptr inbounds nuw i8, ptr %3, i64 56 ; 3 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !8
  %i.bb = tail call double @llvm.fmuladd.f64(double %i.ap, double %i.ba, double %i.ay)
  %i.bc = getelementptr inbounds nuw i8, ptr %4, i64 3328 ; 3 uses
  store double %i.bb, ptr %i.bc, align 8, !tbaa !8
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 56
  %i.be = load double, ptr %i.bd, align 8, !tbaa !8
  %i.bf = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !8
  %i.bh = tail call double @llvm.fmuladd.f64(double %i.aq, double %i.bg, double %i.be)
  %i.bi = getelementptr inbounds nuw i8, ptr %4, i64 1792
  store double %i.bh, ptr %i.bi, align 8, !tbaa !8
  %i.bj = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.bk = load double, ptr %i.bj, align 8, !tbaa !8
  %i.bl = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 3 uses
  %i.bm = load double, ptr %i.bl, align 8, !tbaa !8
end_hunk_0
