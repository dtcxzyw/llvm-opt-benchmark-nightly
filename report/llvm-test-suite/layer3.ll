inline.NumInlined: 29
inline.NumDeleted: 6
loop-unroll.NumCompletelyUnrolled: 59
loop-unroll.NumRuntimeUnrolled: 6
loop-unroll.NumUnrolled: 67
begin_hunk_0_@dct36:bb.a
  %i.dz = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.dy, double %i.dx)
  store double %i.dz, ptr %4, align 8, !tbaa !8
  %i.ea = getelementptr inbounds nuw i8, ptr %1, i64 136
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !8
  %i.ec = getelementptr inbounds nuw i8, ptr %3, i64 136
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !8
  %i.ee = tail call double @llvm.fmuladd.f64(double %i.dw, double %i.ed, double %i.eb)
  %i.ef = getelementptr inbounds nuw i8, ptr %4, i64 4352
  store double %i.ee, ptr %i.ef, align 8, !tbaa !8
  %i.eg = load double, ptr %i.as, align 8, !tbaa !8
  %i.eh = load double, ptr %i.u, align 8, !tbaa !8
  %i.ei = fsub double %i.eg, %i.eh
  %i.ej = load double, ptr %i.i, align 8, !tbaa !8
  %i.ek = fsub double %i.ei, %i.ej
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
  %i.kw = load double, ptr %i.i, align 8, !tbaa !8
  %i.kx = fneg double %i.kw
  %i.ky = tail call double @llvm.fmuladd.f64(double %i.kx, double %i.br, double %i.kv) ; 2 uses
  %i.kz = load double, ptr %i.ap, align 8, !tbaa !8
  %5 = tail call double @llvm.fmuladd.f64(double %i.kz, double %i.bt, double %i.hr)
  %i.la = load double, ptr %i.r, align 8, !tbaa !8
  %6 = tail call double @llvm.fmuladd.f64(double %i.la, double %i.bo, double %5)
  %i.lb = load double, ptr %i.f, align 8, !tbaa !8
  %7 = load double, ptr %0, align 8, !tbaa !8
  %8 = load double, ptr %i.am, align 8, !tbaa !8
  %i.lc = insertelement <2 x double> poison, double %i.lb, i64 0
  %i.ld = insertelement <2 x double> %i.lc, double %8, i64 1
  %i.le = fneg <2 x double> %i.ld
  %i.lf = insertelement <2 x double> poison, double %i.br, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.cb, i64 1
  %i.lh = insertelement <2 x double> poison, double %6, i64 0
  %i.li = insertelement <2 x double> %i.lh, double %7, i64 1
  %i.lj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.le, <2 x double> %i.lg, <2 x double> %i.li) ; 2 uses
  %i.lk = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ll = extractelement <2 x double> %i.lj, i64 1
  %i.lm = tail call double @llvm.fmuladd.f64(double %i.lk, double %i.ce, double %i.ll)
  %i.ln = fadd double %i.bl, %i.lm
  %i.lo = load <2 x double>, ptr %i.a, align 8
  %i.lp = load double, ptr %i.at, align 8, !tbaa !8
  %i.lq = load double, ptr %i.aj, align 8, !tbaa !8
  %i.lr = insertelement <2 x double> %i.lo, double %i.lq, i64 1
  %i.ls = fneg <2 x double> %i.lr
  %i.lt = insertelement <2 x double> poison, double %i.by, i64 0
  %i.lu = insertelement <2 x double> %i.lt, double %i.cb, i64 1
  %i.lv = insertelement <2 x double> poison, double %i.ln, i64 0
  %i.lw = insertelement <2 x double> %i.lv, double %i.lp, i64 1
  %i.lx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ls, <2 x double> %i.lu, <2 x double> %i.lw) ; 2 uses
  %i.ly = load double, ptr %i.x, align 8, !tbaa !8
  %i.lz = extractelement <2 x double> %i.lx, i64 1
  %i.ma = tail call double @llvm.fmuladd.f64(double %i.ly, double %i.ce, double %i.lz)
  %i.mb = fadd double %i.bn, %i.ma
  %i.mc = load double, ptr %i.c, align 8, !tbaa !8
  %i.md = fneg double %i.mc
  %i.me = tail call double @llvm.fmuladd.f64(double %i.md, double %i.by, double %i.mb) ; 2 uses
  %i.mf = extractelement <2 x double> %i.lx, i64 0 ; 2 uses
  %i.mg = fadd double %i.ky, %i.mf                ; 2 uses
  %i.mh = extractelement <2 x double> %i.lj, i64 0 ; 2 uses
  %i.mi = fadd double %i.mh, %i.me
  %i.mj = load double, ptr @tfcos36.3, align 8, !tbaa !8
  %i.mk = fmul double %i.mj, %i.mi                ; 2 uses
  %i.ml = fadd double %i.mg, %i.mk                ; 2 uses
  %i.mm = getelementptr inbounds nuw i8, ptr %3, i64 240
  %i.mn = load double, ptr %i.mm, align 8, !tbaa !8
  %i.mo = fmul double %i.mn, %i.ml
  %i.mp = getelementptr inbounds nuw i8, ptr %2, i64 96
  store double %i.mo, ptr %i.mp, align 8, !tbaa !8
  %i.mq = getelementptr inbounds nuw i8, ptr %3, i64 184
  %i.mr = load double, ptr %i.mq, align 8, !tbaa !8
  %i.ms = fmul double %i.mr, %i.ml
  %i.mt = getelementptr inbounds nuw i8, ptr %2, i64 40
  store double %i.ms, ptr %i.mt, align 8, !tbaa !8
  %i.mu = fsub double %i.mg, %i.mk                ; 2 uses
  %i.mv = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.mw = load double, ptr %i.mv, align 8, !tbaa !8
  %i.mx = getelementptr inbounds nuw i8, ptr %3, i64 40
  %i.my = load double, ptr %i.mx, align 8, !tbaa !8
  %i.mz = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.my, double %i.mw)
  %i.na = getelementptr inbounds nuw i8, ptr %4, i64 1280
  store double %i.mz, ptr %i.na, align 8, !tbaa !8
  %i.nb = getelementptr inbounds nuw i8, ptr %1, i64 96
  %i.nc = load double, ptr %i.nb, align 8, !tbaa !8
  %i.nd = getelementptr inbounds nuw i8, ptr %3, i64 96
  %i.ne = load double, ptr %i.nd, align 8, !tbaa !8
  %i.nf = tail call double @llvm.fmuladd.f64(double %i.mu, double %i.ne, double %i.nc)
  %i.ng = getelementptr inbounds nuw i8, ptr %4, i64 3072
  store double %i.nf, ptr %i.ng, align 8, !tbaa !8
  %i.nh = fsub double %i.mf, %i.ky                ; 2 uses
  %i.ni = fsub double %i.me, %i.mh
  %i.nj = load double, ptr @tfcos36.5, align 8, !tbaa !8
  %i.nk = fmul double %i.ni, %i.nj                ; 2 uses
  %i.nl = fadd double %i.nh, %i.nk                ; 2 uses
  %i.nm = getelementptr inbounds nuw i8, ptr %3, i64 256
  %i.nn = load double, ptr %i.nm, align 8, !tbaa !8
  %i.no = fmul double %i.nn, %i.nl
  %i.np = getelementptr inbounds nuw i8, ptr %2, i64 112
  store double %i.no, ptr %i.np, align 8, !tbaa !8
  %i.nq = getelementptr inbounds nuw i8, ptr %3, i64 168
  %i.nr = load double, ptr %i.nq, align 8, !tbaa !8
  %i.ns = fmul double %i.nl, %i.nr
  %i.nt = getelementptr inbounds nuw i8, ptr %2, i64 24
  store double %i.ns, ptr %i.nt, align 8, !tbaa !8
  %i.nu = fsub double %i.nh, %i.nk                ; 2 uses
  %i.nv = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.nw = load double, ptr %i.nv, align 8, !tbaa !8
  %i.nx = getelementptr inbounds nuw i8, ptr %3, i64 24
  %i.ny = load double, ptr %i.nx, align 8, !tbaa !8
  %i.nz = tail call double @llvm.fmuladd.f64(double %i.nu, double %i.ny, double %i.nw)
  %i.oa = getelementptr inbounds nuw i8, ptr %4, i64 768
  store double %i.nz, ptr %i.oa, align 8, !tbaa !8
  %i.ob = getelementptr inbounds nuw i8, ptr %1, i64 112
  %i.oc = load double, ptr %i.ob, align 8, !tbaa !8
  %i.od = getelementptr inbounds nuw i8, ptr %3, i64 112
  %i.oe = load double, ptr %i.od, align 8, !tbaa !8
  %i.of = tail call double @llvm.fmuladd.f64(double %i.nu, double %i.oe, double %i.oc)
  %i.og = getelementptr inbounds nuw i8, ptr %4, i64 3584
  store double %i.of, ptr %i.og, align 8, !tbaa !8
  %i.oh = load double, ptr %0, align 8, !tbaa !8
  %i.oi = load double, ptr %i.am, align 8, !tbaa !8
  %i.oj = fsub double %i.oh, %i.oi
  %i.ok = load double, ptr %i.aa, align 8, !tbaa !8
  %i.ol = fadd double %i.oj, %i.ok
  %i.om = load double, ptr %i.o, align 8, !tbaa !8
  %i.on = fsub double %i.ol, %i.om
  %i.oo = load double, ptr %i.a, align 8, !tbaa !8
  %i.op = fadd double %i.on, %i.oo                ; 2 uses
  %i.oq = load double, ptr %i.at, align 8, !tbaa !8
  %i.or = load double, ptr %i.aj, align 8, !tbaa !8
  %i.os = fsub double %i.oq, %i.or
  %i.ot = load double, ptr %i.x, align 8, !tbaa !8
  %i.ou = fadd double %i.os, %i.ot
  %i.ov = load double, ptr %i.l, align 8, !tbaa !8
  %i.ow = fsub double %i.ou, %i.ov
  %i.ox = load double, ptr %i.c, align 8, !tbaa !8
  %i.oy = fadd double %i.ow, %i.ox
  %i.oz = load double, ptr @tfcos36.4, align 16, !tbaa !8
  %i.pa = fmul double %i.oy, %i.oz                ; 2 uses
  %i.pb = fadd double %i.op, %i.pa                ; 2 uses
  %i.pc = getelementptr inbounds nuw i8, ptr %3, i64 248
  %i.pd = load double, ptr %i.pc, align 8, !tbaa !8
  %i.pe = fmul double %i.pd, %i.pb
  %i.pf = getelementptr inbounds nuw i8, ptr %2, i64 104
  store double %i.pe, ptr %i.pf, align 8, !tbaa !8
  %i.pg = getelementptr inbounds nuw i8, ptr %3, i64 176
  %i.ph = load double, ptr %i.pg, align 8, !tbaa !8
  %i.pi = fmul double %i.pb, %i.ph
  %i.pj = getelementptr inbounds nuw i8, ptr %2, i64 32
  store double %i.pi, ptr %i.pj, align 8, !tbaa !8
  %i.pk = fsub double %i.op, %i.pa                ; 2 uses
  %i.pl = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.pm = load double, ptr %i.pl, align 8, !tbaa !8
  %i.pn = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.po = load double, ptr %i.pn, align 8, !tbaa !8
  %i.pp = tail call double @llvm.fmuladd.f64(double %i.pk, double %i.po, double %i.pm)
  %i.pq = getelementptr inbounds nuw i8, ptr %4, i64 1024
  store double %i.pp, ptr %i.pq, align 8, !tbaa !8
  %i.pr = getelementptr inbounds nuw i8, ptr %1, i64 104
  %i.ps = load double, ptr %i.pr, align 8, !tbaa !8
  %i.pt = getelementptr inbounds nuw i8, ptr %3, i64 104
  %i.pu = load double, ptr %i.pt, align 8, !tbaa !8
  %i.pv = tail call double @llvm.fmuladd.f64(double %i.pk, double %i.pu, double %i.ps)
  %i.pw = getelementptr inbounds nuw i8, ptr %4, i64 3328
  store double %i.pv, ptr %i.pw, align 8, !tbaa !8
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
end_hunk_0
