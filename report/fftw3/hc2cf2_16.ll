Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hc2cf2_16?download=true
begin_hunk_0_@hc2cf2_16:bb.a
  %i.dn = getelementptr inbounds [8 x i8], ptr %.0641648, i64 %i.cg ; 2 uses
  %i.do = load double, ptr %i.dn, align 8, !tbaa !13 ; 2 uses
  %i.dp = fneg double %i.dm
  %i.dq = insertelement <2 x double> poison, double %i.do, i64 0
  %i.dr = insertelement <2 x double> %i.dq, double %i.dp, i64 1
  %i.ds = insertelement <2 x double> poison, double %i.dm, i64 0
  %i.dt = insertelement <2 x double> %i.ds, double %i.do, i64 1
  %i.du = getelementptr inbounds [8 x i8], ptr %.0639650, i64 %i.az ; 2 uses
  %i.dv = load double, ptr %i.du, align 8, !tbaa !13 ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0641648, i64 %i.az ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !13 ; 2 uses
  %i.dy = fneg double %i.dv
  %i.dz = load double, ptr %i.g, align 8, !tbaa !13 ; 5 uses
  %i.ea = load double, ptr %i.h, align 8, !tbaa !13 ; 5 uses
  %i.eb = insertelement <2 x double> poison, double %i.ea, i64 0
  %i.ec = shufflevector <2 x double> %i.eb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ed = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ee = insertelement <2 x double> %i.ed, double %i.dy, i64 1
  %i.ef = fmul <2 x double> %i.ec, %i.ee
  %i.eg = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.eh = shufflevector <2 x double> %i.eg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x double> poison, double %i.dv, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.dx, i64 1
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ej, <2 x double> %i.ef) ; 4 uses
  %i.el = load double, ptr %.0639650, align 8, !tbaa !13 ; 2 uses
  %i.em = load double, ptr %.0641648, align 8, !tbaa !13 ; 2 uses
  %i.en = fneg double %i.el
  %i.eo = load double, ptr %.0642647, align 8, !tbaa !13 ; 5 uses
  %i.ep = load double, ptr %i.f, align 8, !tbaa !13 ; 5 uses
  %i.eq = insertelement <2 x double> poison, double %i.ep, i64 0
  %i.er = shufflevector <2 x double> %i.eq, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.es = fmul <2 x double> %i.er, %i.o
  %i.et = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ev = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.l, <2 x double> %i.es) ; 2 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ex = fmul <2 x double> %i.ew, %i.cc
  %i.ey = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.ce, <2 x double> %i.ex) ; 4 uses
  %i.fa = fmul double %i.eo, %i.dz                ; 2 uses
  %i.fb = fmul double %i.ep, %i.dz                ; 2 uses
  %i.fc = fmul double %i.ep, %i.ea                ; 2 uses
  %i.fd = fmul double %i.eo, %i.ea                ; 2 uses
  %i.fe = fsub double %i.fa, %i.fc                ; 3 uses
  %i.ff = fadd double %i.fb, %i.fd                ; 3 uses
  %i.fg = fsub double %i.fd, %i.fb                ; 3 uses
  %i.fh = fadd double %i.fa, %i.fc                ; 3 uses
  %i.fi = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fj = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fk = fmul <2 x double> %i.fj, %i.ak
  %i.fl = insertelement <2 x double> poison, double %i.fe, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.am, <2 x double> %i.fk) ; 3 uses
  %i.fo = insertelement <2 x double> poison, double %i.fg, i64 0
  %i.fp = shufflevector <2 x double> %i.fo, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = fmul <2 x double> %i.fp, %i.bg
  %i.fr = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ft = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fs, <2 x double> %i.bi, <2 x double> %i.fq) ; 4 uses
  %i.fu = insertelement <2 x double> poison, double %i.em, i64 0
  %i.fv = insertelement <2 x double> %i.fu, double %i.en, i64 1
  %i.fw = fmul <2 x double> %i.er, %i.fv
  %i.fx = insertelement <2 x double> poison, double %i.el, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.em, i64 1
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eu, <2 x double> %i.fy, <2 x double> %i.fw) ; 4 uses
  %i.ga = getelementptr inbounds [8 x i8], ptr %.0639650, i64 %i.ao ; 2 uses
  %i.gb = load double, ptr %i.ga, align 8, !tbaa !13 ; 2 uses
  %i.gc = getelementptr inbounds [8 x i8], ptr %.0641648, i64 %i.ao ; 2 uses
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !13 ; 2 uses
  %i.ge = fneg double %i.gb
  %i.gf = insertelement <2 x double> poison, double %i.gd, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ge, i64 1
  %i.gh = insertelement <2 x double> poison, double %i.gb, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.gd, i64 1
  %i.gj = getelementptr inbounds [8 x i8], ptr %.0639650, i64 %i.s ; 2 uses
  %i.gk = load double, ptr %i.gj, align 8, !tbaa !13 ; 2 uses
  %i.gl = getelementptr inbounds [8 x i8], ptr %.0641648, i64 %i.s ; 2 uses
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !13 ; 2 uses
  %i.gn = fneg double %i.gk
  %i.go = insertelement <2 x double> poison, double %i.gm, i64 0
  %i.gp = insertelement <2 x double> %i.go, double %i.gn, i64 1
  %i.gq = insertelement <2 x double> poison, double %i.gk, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gm, i64 1
  %i.gs = getelementptr inbounds [8 x i8], ptr %.0639650, i64 %i.ad ; 2 uses
  %i.gt = load double, ptr %i.gs, align 8, !tbaa !13 ; 2 uses
  %i.gu = getelementptr inbounds [8 x i8], ptr %.0641648, i64 %i.ad ; 2 uses
  %i.gv = load double, ptr %i.gu, align 8, !tbaa !13 ; 2 uses
  %i.gw = fneg double %i.gt
  %i.gx = load double, ptr %i.i, align 8, !tbaa !13 ; 9 uses
  %i.gy = load double, ptr %i.j, align 8, !tbaa !13 ; 9 uses
  %i.gz = fmul double %i.dz, %i.gx                ; 2 uses
  %i.ha = fmul double %i.ea, %i.gx                ; 2 uses
  %i.hb = fmul double %i.ea, %i.gy                ; 2 uses
  %i.hc = fmul double %i.dz, %i.gy                ; 2 uses
  %i.hd = fsub double %i.gz, %i.hb
  %i.he = fsub double %i.hc, %i.ha
  %i.hf = fadd double %i.ha, %i.hc
  %i.hg = fadd double %i.gz, %i.hb
  %i.hh = insertelement <2 x double> poison, double %i.hg, i64 0
  %i.hi = shufflevector <2 x double> %i.hh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hj = fmul <2 x double> %i.hi, %i.av
  %i.hk = insertelement <2 x double> poison, double %i.he, i64 0
  %i.hl = shufflevector <2 x double> %i.hk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hl, <2 x double> %i.ax, <2 x double> %i.hj) ; 3 uses
  %i.hn = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.ho = shufflevector <2 x double> %i.hn, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hp = fmul <2 x double> %i.ho, %i.cn
  %i.hq = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hr, <2 x double> %i.cp, <2 x double> %i.hp) ; 4 uses
  %i.ht = fmul double %i.ep, %i.gx                ; 2 uses
  %i.hu = fmul double %i.eo, %i.gx                ; 2 uses
  %i.hv = fmul double %i.eo, %i.gy                ; 2 uses
  %i.hw = fmul double %i.ep, %i.gy                ; 2 uses
  %i.hx = fadd double %i.ht, %i.hv
  %i.hy = fadd double %i.hu, %i.hw
  %i.hz = fsub double %i.hu, %i.hw
  %i.ia = fsub double %i.hv, %i.ht
  %i.ib = insertelement <2 x double> poison, double %i.hz, i64 0
  %i.ic = shufflevector <2 x double> %i.ib, <2 x double> poison, <2 x i32> zeroinitializer
  %i.id = fmul <2 x double> %i.ic, %i.z
  %i.ie = insertelement <2 x double> poison, double %i.hx, i64 0
  %i.if = shufflevector <2 x double> %i.ie, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ig = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.if, <2 x double> %i.ab, <2 x double> %i.id) ; 3 uses
  %i.ih = insertelement <2 x double> poison, double %i.hy, i64 0
  %i.ii = shufflevector <2 x double> %i.ih, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ij = fmul <2 x double> %i.ii, %i.br
  %i.ik = insertelement <2 x double> poison, double %i.ia, i64 0
  %i.il = shufflevector <2 x double> %i.ik, <2 x double> poison, <2 x i32> zeroinitializer
  %i.im = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.bt, <2 x double> %i.ij) ; 4 uses
  %i.in = fmul double %i.gx, %i.fe                ; 2 uses
  %i.io = fmul double %i.ff, %i.gy                ; 2 uses
  %i.ip = fsub double %i.in, %i.io
  %i.iq = fadd double %i.in, %i.io
  %i.ir = fmul double %i.fe, %i.gy                ; 2 uses
  %i.is = fmul double %i.gx, %i.ff                ; 2 uses
  %i.it = fadd double %i.ir, %i.is
  %i.iu = fsub double %i.ir, %i.is
  %i.iv = fmul double %i.gx, %i.fh                ; 2 uses
  %i.iw = fmul double %i.fg, %i.gy                ; 2 uses
  %i.ix = fsub double %i.iv, %i.iw
  %i.iy = fadd double %i.iv, %i.iw
  %i.iz = fmul double %i.fh, %i.gy                ; 2 uses
  %i.ja = fmul double %i.gx, %i.fg                ; 2 uses
  %i.jb = fadd double %i.iz, %i.ja
  %i.jc = fsub double %i.iz, %i.ja
  %i.jd = insertelement <2 x double> poison, double %i.iy, i64 0
  %i.je = shufflevector <2 x double> %i.jd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jf = fmul <2 x double> %i.je, %i.di
  %i.jg = insertelement <2 x double> poison, double %i.jc, i64 0
  %i.jh = shufflevector <2 x double> %i.jg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ji = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jh, <2 x double> %i.dk, <2 x double> %i.jf) ; 4 uses
  %i.jj = insertelement <2 x double> poison, double %i.ix, i64 0
  %i.jk = shufflevector <2 x double> %i.jj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jl = fmul <2 x double> %i.jk, %i.dr
  %i.jm = insertelement <2 x double> poison, double %i.jb, i64 0
  %i.jn = shufflevector <2 x double> %i.jm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jn, <2 x double> %i.dt, <2 x double> %i.jl) ; 4 uses
  %i.jp = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.jq = shufflevector <2 x double> %i.jp, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jr = fmul <2 x double> %i.jq, %i.gg
  %i.js = insertelement <2 x double> poison, double %i.iu, i64 0
  %i.jt = shufflevector <2 x double> %i.js, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.gi, <2 x double> %i.jr) ; 4 uses
  %i.jv = insertelement <2 x double> poison, double %i.gx, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = fmul <2 x double> %i.jw, %i.gp
  %i.jy = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.jz = shufflevector <2 x double> %i.jy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ka = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jz, <2 x double> %i.gr, <2 x double> %i.jx) ; 4 uses
  %i.kb = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.kc = shufflevector <2 x double> %i.kb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kd = insertelement <2 x double> poison, double %i.gv, i64 0
  %i.ke = insertelement <2 x double> %i.kd, double %i.gw, i64 1
  %i.kf = fmul <2 x double> %i.kc, %i.ke
  %i.kg = insertelement <2 x double> poison, double %i.it, i64 0
  %i.kh = shufflevector <2 x double> %i.kg, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ki = insertelement <2 x double> poison, double %i.gt, i64 0
  %i.kj = insertelement <2 x double> %i.ki, double %i.gv, i64 1
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kh, <2 x double> %i.kj, <2 x double> %i.kf) ; 4 uses
  %i.kl = shufflevector <2 x double> %i.fz, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.km = shufflevector <2 x double> %i.ka, <2 x double> %i.jo, <2 x i32> <i32 0, i32 2>
  %i.kn = fsub <2 x double> %i.kl, %i.km          ; 3 uses
  %i.ko = shufflevector <2 x double> %i.kk, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.kp = shufflevector <2 x double> %i.ju, <2 x double> %i.ji, <2 x i32> <i32 1, i32 3>
  %i.kq = fsub <2 x double> %i.ko, %i.kp          ; 3 uses
  %i.kr = shufflevector <2 x double> %i.fz, <2 x double> %i.db, <2 x i32> <i32 1, i32 3>
  %i.ks = shufflevector <2 x double> %i.ka, <2 x double> %i.jo, <2 x i32> <i32 1, i32 3>
  %i.kt = fsub <2 x double> %i.kr, %i.ks          ; 3 uses
  %i.ku = shufflevector <2 x double> %i.kk, <2 x double> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.kv = shufflevector <2 x double> %i.ju, <2 x double> %i.ji, <2 x i32> <i32 0, i32 2>
  %i.kw = fsub <2 x double> %i.ku, %i.kv          ; 3 uses
  %i.kx = fadd <2 x double> %i.kt, %i.kw          ; 3 uses
  %i.ky = fsub <2 x double> %i.kn, %i.kq          ; 3 uses
  %i.kz = extractelement <2 x double> %i.ky, i64 0
  %i.la = extractelement <2 x double> %i.kx, i64 0
  %i.lb = extractelement <2 x double> %i.kx, i64 1
  %i.lc = extractelement <2 x double> %i.ky, i64 1
  %i.ld = fmul <2 x double> %i.ky, <double f0xBFED906BCF328D46, double f0x3FED906BCF328D46>
  %i.le = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> splat (double f0x3FD87DE2A6AEA963), <2 x double> %i.ld) ; 2 uses
  %9 = extractelement <2 x double> %i.le, i64 0   ; 2 uses
  %10 = extractelement <2 x double> %i.le, i64 1  ; 2 uses
  %i.lf = insertelement <2 x double> poison, double %i.p, i64 0
  %i.lg = insertelement <2 x double> %i.lf, double %i.q, i64 1
  %i.lh = fsub <2 x double> %i.lg, %i.ig          ; 2 uses
  %i.li = fsub <2 x double> %i.fn, %i.hm
  %i.lj = shufflevector <2 x double> %i.li, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.lk = shufflevector <2 x double> %i.ft, <2 x double> %i.ez, <2 x i32> <i32 1, i32 2>
  %i.ll = shufflevector <2 x double> %i.im, <2 x double> %i.hs, <2 x i32> <i32 1, i32 2>
  %i.lm = fsub <2 x double> %i.lk, %i.ll          ; 2 uses
  %i.ln = shufflevector <2 x double> %i.ft, <2 x double> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.lo = shufflevector <2 x double> %i.im, <2 x double> %i.hs, <2 x i32> <i32 0, i32 3>
  %i.lp = fsub <2 x double> %i.ln, %i.lo          ; 2 uses
  %i.lq = fsub <2 x double> %i.lm, %i.lp          ; 2 uses
  %i.lr = fsub <2 x double> %i.lh, %i.lj          ; 2 uses
  %i.ls = fadd <2 x double> %i.lh, %i.lj          ; 2 uses
  %i.lt = shufflevector <2 x double> %i.lr, <2 x double> %i.ls, <2 x i32> <i32 0, i32 3> ; 2 uses
  %11 = fadd double %10, %9                       ; 2 uses
  %i.lu = fmul double %i.kz, f0x3FD87DE2A6AEA963
  %12 = fmul double %i.lb, f0xBFED906BCF328D46
  %i.lv = fsub double %9, %10                     ; 2 uses
  %i.lw = tail call double @llvm.fmuladd.f64(double %i.la, double f0x3FED906BCF328D46, double %i.lu) ; 2 uses
  %i.lx = tail call double @llvm.fmuladd.f64(double %i.lc, double f0x3FD87DE2A6AEA963, double %12) ; 2 uses
  %i.ly = fadd double %i.lx, %i.lw                ; 2 uses
  %i.lz = fsub double %i.lx, %i.lw                ; 2 uses
  %i.ma = insertelement <2 x double> poison, double %i.ly, i64 0
  %i.mb = insertelement <2 x double> %i.ma, double %11, i64 1
  %i.mc = insertelement <2 x double> poison, double %i.lv, i64 0
  %i.md = insertelement <2 x double> %i.mc, double %i.lz, i64 1
  %i.me = shufflevector <2 x double> %i.lq, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mf = fadd <2 x double> %i.lp, %i.lm          ; 2 uses
  %i.mg = shufflevector <2 x double> %i.mf, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mh = fsub <2 x double> %i.lq, %i.mg
  %i.mi = fmul <2 x double> %i.mh, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.mj = fadd <2 x double> %i.lt, %i.mi          ; 3 uses
  %i.mk = extractelement <2 x double> %i.mj, i64 0
  %i.ml = extractelement <2 x double> %i.mj, i64 1
  %13 = fsub double %11, %i.ml
  %i.mm = fsub <2 x double> %i.lt, %i.mi          ; 3 uses
  %i.mn = fsub double %i.mk, %i.ly
  store double %i.mn, ptr %i.v, align 8, !tbaa !13
  store double %13, ptr %i.gl, align 8, !tbaa !13
  %i.mo = fadd <2 x double> %i.mj, %i.mb          ; 2 uses
  %i.mp = extractelement <2 x double> %i.mo, i64 0
  store double %i.mp, ptr %i.ch, align 8, !tbaa !13
  %i.mq = extractelement <2 x double> %i.mo, i64 1
  store double %i.mq, ptr %i.dl, align 8, !tbaa !13
  %i.mr = extractelement <2 x double> %i.mm, i64 0
  %i.ms = fsub double %i.mr, %i.lv
  store double %i.ms, ptr %.0640649, align 8, !tbaa !13
  %i.mt = extractelement <2 x double> %i.mm, i64 1
  %i.mu = fsub double %i.lz, %i.mt
  store double %i.mu, ptr %.0641648, align 8, !tbaa !13
  %i.mv = fadd <2 x double> %i.mm, %i.md          ; 2 uses
  %i.mw = extractelement <2 x double> %i.mv, i64 0
  store double %i.mw, ptr %i.bw, align 8, !tbaa !13
  %i.mx = extractelement <2 x double> %i.mv, i64 1
  store double %i.mx, ptr %i.cq, align 8, !tbaa !13
  %i.my = fadd <2 x double> %i.mf, %i.me
  %i.mz = shufflevector <2 x double> %i.kt, <2 x double> %i.kn, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.na = shufflevector <2 x double> %i.kw, <2 x double> %i.kq, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.nb = fsub <2 x double> %i.mz, %i.na          ; 2 uses
  %i.nc = fadd <2 x double> %i.mz, %i.na          ; 2 uses
  %i.nd = shufflevector <2 x double> %i.nb, <2 x double> %i.nc, <2 x i32> <i32 0, i32 3>
  %i.ne = shufflevector <2 x double> %i.kn, <2 x double> %i.kt, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.nf = shufflevector <2 x double> %i.kq, <2 x double> %i.kw, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.ng = fadd <2 x double> %i.ne, %i.nf          ; 2 uses
  %i.nh = fsub <2 x double> %i.ne, %i.nf          ; 2 uses
  %i.ni = shufflevector <2 x double> %i.ng, <2 x double> %i.nh, <2 x i32> <i32 0, i32 3>
  %i.nj = fmul <2 x double> %i.ni, <double f0x3FED906BCF328D46, double f0xBFD87DE2A6AEA963>
  %i.nk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nd, <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>, <2 x double> %i.nj) ; 4 uses
  %i.nl = shufflevector <2 x double> %i.ng, <2 x double> %i.nc, <2 x i32> <i32 0, i32 3>
  %i.nm = fmul <2 x double> %i.nl, <double f0xBFD87DE2A6AEA963, double f0x3FD87DE2A6AEA963>
  %i.nn = shufflevector <2 x double> %i.nb, <2 x double> %i.nh, <2 x i32> <i32 0, i32 3>
  %i.no = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.nn, <2 x double> splat (double f0x3FED906BCF328D46), <2 x double> %i.nm) ; 4 uses
  %i.np = fmul <2 x double> %i.my, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.nq = shufflevector <2 x double> %i.ls, <2 x double> %i.lr, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.nr = fadd <2 x double> %i.nq, %i.np          ; 3 uses
  %i.ns = shufflevector <2 x double> %i.nk, <2 x double> %i.no, <2 x i32> <i32 1, i32 3>
  %i.nt = shufflevector <2 x double> %i.nk, <2 x double> %i.no, <2 x i32> <i32 0, i32 2>
  %i.nu = fadd <2 x double> %i.ns, %i.nt          ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.nr, %i.nu
  %i.nv = extractelement <2 x double> %foldExtExtBinop, i64 0
  %foldExtExtBinop654 = fsub <2 x double> %i.nu, %i.nr
  %i.nw = extractelement <2 x double> %foldExtExtBinop654, i64 1
  %i.nx = fadd <2 x double> %i.nr, %i.nu          ; 2 uses
  %i.ny = shufflevector <2 x double> %i.no, <2 x double> %i.nk, <2 x i32> <i32 0, i32 3>
  %i.nz = shufflevector <2 x double> %i.no, <2 x double> %i.nk, <2 x i32> <i32 1, i32 2>
  %i.oa = fsub <2 x double> %i.ny, %i.nz          ; 3 uses
  %i.ob = fsub <2 x double> %i.nq, %i.np          ; 3 uses
  %foldExtExtBinop656 = fsub <2 x double> %i.ob, %i.oa
  %i.oc = extractelement <2 x double> %foldExtExtBinop656, i64 0
  %foldExtExtBinop658 = fsub <2 x double> %i.oa, %i.ob
  %i.od = extractelement <2 x double> %foldExtExtBinop658, i64 1
  %i.oe = fadd <2 x double> %i.ob, %i.oa          ; 2 uses
  %i.of = insertelement <2 x double> %i.db, double %i.q, i64 1
  %i.og = shufflevector <2 x double> %i.jo, <2 x double> %i.ig, <2 x i32> <i32 0, i32 3>
  %i.oh = fadd <2 x double> %i.of, %i.og          ; 4 uses
  %i.oi = shufflevector <2 x double> %i.ji, <2 x double> %i.fn, <2 x i32> <i32 0, i32 3>
  %i.oj = shufflevector <2 x double> %i.ek, <2 x double> %i.hm, <2 x i32> <i32 0, i32 3>
  %i.ok = fadd <2 x double> %i.oi, %i.oj          ; 4 uses
  %i.ol = shufflevector <2 x double> %i.fn, <2 x double> %i.db, <2 x i32> <i32 0, i32 3>
  %i.om = shufflevector <2 x double> %i.hm, <2 x double> %i.jo, <2 x i32> <i32 0, i32 3>
  %i.on = fadd <2 x double> %i.ol, %i.om          ; 4 uses
  %i.oo = insertelement <2 x double> %i.ji, double %i.p, i64 0
  %i.op = shufflevector <2 x double> %i.ig, <2 x double> %i.ek, <2 x i32> <i32 0, i32 3>
  %i.oq = fadd <2 x double> %i.oo, %i.op          ; 4 uses
  %i.or = shufflevector <2 x double> %i.fz, <2 x double> %i.ft, <2 x i32> <i32 0, i32 3>
  %i.os = shufflevector <2 x double> %i.ka, <2 x double> %i.im, <2 x i32> <i32 0, i32 3>
  %i.ot = fadd <2 x double> %i.or, %i.os          ; 4 uses
  %i.ou = shufflevector <2 x double> %i.ju, <2 x double> %i.ez, <2 x i32> <i32 0, i32 3>
  %i.ov = shufflevector <2 x double> %i.kk, <2 x double> %i.hs, <2 x i32> <i32 0, i32 3>
  %i.ow = fadd <2 x double> %i.ou, %i.ov          ; 4 uses
  %i.ox = shufflevector <2 x double> %i.ft, <2 x double> %i.fz, <2 x i32> <i32 0, i32 3>
  %i.oy = shufflevector <2 x double> %i.im, <2 x double> %i.ka, <2 x i32> <i32 0, i32 3>
  %i.oz = fadd <2 x double> %i.ox, %i.oy          ; 4 uses
  %i.pa = shufflevector <2 x double> %i.ez, <2 x double> %i.ju, <2 x i32> <i32 0, i32 3>
  %i.pb = shufflevector <2 x double> %i.hs, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.pc = fadd <2 x double> %i.pa, %i.pb          ; 4 uses
  %i.pd = shufflevector <2 x double> %i.on, <2 x double> %i.ot, <2 x i32> <i32 1, i32 2>
  %i.pe = shufflevector <2 x double> %i.oq, <2 x double> %i.ow, <2 x i32> <i32 1, i32 2>
  %i.pf = fsub <2 x double> %i.pd, %i.pe
  %i.pg = shufflevector <2 x double> %i.ot, <2 x double> %i.oh, <2 x i32> <i32 0, i32 2>
  %i.ph = shufflevector <2 x double> %i.ow, <2 x double> %i.ok, <2 x i32> <i32 0, i32 2>
  %i.pi = fsub <2 x double> %i.pg, %i.ph
  %i.pj = shufflevector <2 x double> %i.oh, <2 x double> %i.oz, <2 x i32> <i32 0, i32 3>
  %i.pk = shufflevector <2 x double> %i.ok, <2 x double> %i.pc, <2 x i32> <i32 0, i32 3>
  %i.pl = fsub <2 x double> %i.pj, %i.pk
  %i.pm = shufflevector <2 x double> %i.oz, <2 x double> %i.on, <2 x i32> <i32 1, i32 3>
  %i.pn = shufflevector <2 x double> %i.pc, <2 x double> %i.oq, <2 x i32> <i32 1, i32 3>
  %i.po = fsub <2 x double> %i.pm, %i.pn
  %i.pp = shufflevector <2 x double> %i.ot, <2 x double> %i.pc, <2 x i32> <i32 1, i32 2>
  %i.pq = shufflevector <2 x double> %i.ow, <2 x double> %i.oz, <2 x i32> <i32 1, i32 2>
  %i.pr = fsub <2 x double> %i.pp, %i.pq          ; 2 uses
  %i.ps = shufflevector <2 x double> %i.oq, <2 x double> %i.oh, <2 x i32> <i32 0, i32 3>
  %i.pt = shufflevector <2 x double> %i.on, <2 x double> %i.ok, <2 x i32> <i32 0, i32 3>
  %i.pu = fsub <2 x double> %i.ps, %i.pt          ; 2 uses
  %i.pv = fadd <2 x double> %i.pu, %i.pr          ; 3 uses
  %i.pw = fsub <2 x double> %i.pl, %i.pf          ; 2 uses
  %i.px = fadd <2 x double> %i.po, %i.pi          ; 2 uses
  %i.py = fadd <2 x double> %i.pw, %i.px
  %i.pz = fmul <2 x double> %i.py, splat (double f0x3FE6A09E667F3BCD) ; 3 uses
  %foldExtExtBinop660 = fsub <2 x double> %i.pv, %i.pz
  %i.qa = extractelement <2 x double> %foldExtExtBinop660, i64 0
  store double %i.qa, ptr %i.bn, align 8, !tbaa !13
  %foldExtExtBinop662 = fsub <2 x double> %i.pz, %i.pv
  %i.qb = extractelement <2 x double> %foldExtExtBinop662, i64 1
  store double %i.qb, ptr %i.de, align 8, !tbaa !13
  %i.qc = fadd <2 x double> %i.pv, %i.pz          ; 2 uses
  %i.qd = extractelement <2 x double> %i.qc, i64 0
  store double %i.qd, ptr %i.ae, align 8, !tbaa !13
  %i.qe = extractelement <2 x double> %i.qc, i64 1
  store double %i.qe, ptr %i.gs, align 8, !tbaa !13
  %i.qf = fsub <2 x double> %i.pu, %i.pr          ; 3 uses
  %i.qg = fsub <2 x double> %i.pw, %i.px
  %i.qh = fmul <2 x double> %i.qg, splat (double f0x3FE6A09E667F3BCD)
  %i.qi = shufflevector <2 x double> %i.qh, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %foldExtExtBinop664 = fsub <2 x double> %i.qf, %i.qi
  %i.qj = extractelement <2 x double> %foldExtExtBinop664, i64 0
  store double %i.qj, ptr %i.bc, align 8, !tbaa !13
  %foldExtExtBinop666 = fsub <2 x double> %i.qi, %i.qf
  %i.qk = extractelement <2 x double> %foldExtExtBinop666, i64 1
  store double %i.qk, ptr %i.dw, align 8, !tbaa !13
  %i.ql = fadd <2 x double> %i.qf, %i.qi          ; 2 uses
  %i.qm = extractelement <2 x double> %i.ql, i64 0
  store double %i.qm, ptr %i.ap, align 8, !tbaa !13
  %i.qn = extractelement <2 x double> %i.ql, i64 1
  store double %i.qn, ptr %i.ga, align 8, !tbaa !13
  store double %i.nv, ptr %i.ar, align 8, !tbaa !13
  store double %i.nw, ptr %i.gc, align 8, !tbaa !13
  %i.qo = extractelement <2 x double> %i.nx, i64 0
  store double %i.qo, ptr %i.ba, align 8, !tbaa !13
  %i.qp = extractelement <2 x double> %i.nx, i64 1
  store double %i.qp, ptr %i.du, align 8, !tbaa !13
  store double %i.oc, ptr %i.ag, align 8, !tbaa !13
  store double %i.od, ptr %i.gu, align 8, !tbaa !13
  %i.qq = extractelement <2 x double> %i.oe, i64 0
  store double %i.qq, ptr %i.bl, align 8, !tbaa !13
  %i.qr = extractelement <2 x double> %i.oe, i64 1
  store double %i.qr, ptr %i.dc, align 8, !tbaa !13
  %i.qs = fadd <2 x double> %i.oz, %i.pc          ; 3 uses
  %i.qt = fadd <2 x double> %i.on, %i.oq          ; 3 uses
  %i.qu = fadd <2 x double> %i.ot, %i.ow          ; 3 uses
  %i.qv = fadd <2 x double> %i.oh, %i.ok          ; 3 uses
  %i.qw = fadd <2 x double> %i.qv, %i.qu          ; 2 uses
  %i.qx = fadd <2 x double> %i.qt, %i.qs          ; 2 uses
  %i.qy = fsub <2 x double> %i.qx, %i.qw          ; 2 uses
  %i.qz = extractelement <2 x double> %i.qy, i64 0
  store double %i.qz, ptr %i.by, align 8, !tbaa !13
  %i.ra = extractelement <2 x double> %i.qy, i64 1
  store double %i.ra, ptr %i.cs, align 8, !tbaa !13
  %i.rb = fadd <2 x double> %i.qw, %i.qx          ; 2 uses
  %i.rc = extractelement <2 x double> %i.rb, i64 0
  store double %i.rc, ptr %.0651, align 8, !tbaa !13
  %i.rd = extractelement <2 x double> %i.rb, i64 1
  store double %i.rd, ptr %.0639650, align 8, !tbaa !13
  %i.re = shufflevector <2 x double> %i.qt, <2 x double> %i.qv, <2 x i32> <i32 0, i32 2>
  %i.rf = shufflevector <2 x double> %i.qs, <2 x double> %i.qu, <2 x i32> <i32 0, i32 2>
  %i.rg = fsub <2 x double> %i.re, %i.rf          ; 2 uses
  %i.rh = shufflevector <2 x double> %i.qs, <2 x double> %i.qv, <2 x i32> <i32 1, i32 3>
  %i.ri = shufflevector <2 x double> %i.qt, <2 x double> %i.qu, <2 x i32> <i32 1, i32 3>
  %i.rj = fsub <2 x double> %i.rh, %i.ri          ; 2 uses
  %i.rk = fsub <2 x double> %i.rg, %i.rj          ; 2 uses
  %i.rl = extractelement <2 x double> %i.rk, i64 0
  store double %i.rl, ptr %i.cj, align 8, !tbaa !13
  %i.rm = extractelement <2 x double> %i.rk, i64 1
  store double %i.rm, ptr %i.dn, align 8, !tbaa !13
  %i.rn = fadd <2 x double> %i.rj, %i.rg          ; 2 uses
  %i.ro = extractelement <2 x double> %i.rn, i64 0
  store double %i.ro, ptr %i.t, align 8, !tbaa !13
  %i.rp = extractelement <2 x double> %i.rn, i64 1
  store double %i.rp, ptr %i.gj, align 8, !tbaa !13
  %i.rq = add nsw i64 %.0644645, 1                ; 2 uses
  %i.rr = getelementptr inbounds [8 x i8], ptr %.0651, i64 %8
  %i.rs = getelementptr inbounds [8 x i8], ptr %.0639650, i64 %8
  %i.rt = getelementptr inbounds [8 x i8], ptr %.0640649, i64 %i.d
  %i.ru = getelementptr inbounds [8 x i8], ptr %.0641648, i64 %i.d
  %i.rv = getelementptr inbounds nuw i8, ptr %.0642647, i64 64
  %i.rw = getelementptr inbounds [8 x i8], ptr %.0643646, i64 %i.e
  %exitcond.not = icmp eq i64 %i.rq, %7
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
end_hunk_0
