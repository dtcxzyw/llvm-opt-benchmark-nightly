Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/t2_16?download=true
begin_hunk_0_@t2_16:bb.a
  %i.dx = insertelement <2 x double> %i.dw, double %i.ds, i64 1
  %i.dy = getelementptr inbounds nuw i8, ptr %.0641644, i64 24
  %i.dz = load i64, ptr %i.dy, align 8, !tbaa !11 ; 2 uses
  %i.ea = getelementptr inbounds [8 x i8], ptr %.0647, i64 %i.dz ; 2 uses
  %i.eb = load double, ptr %i.ea, align 8, !tbaa !13 ; 2 uses
  %i.ec = getelementptr inbounds [8 x i8], ptr %.0639646, i64 %i.dz ; 2 uses
  %i.ed = load double, ptr %i.ec, align 8, !tbaa !13 ; 2 uses
  %i.ee = fneg double %i.eb
  %i.ef = load double, ptr %i.e, align 8, !tbaa !13 ; 5 uses
  %i.eg = load double, ptr %i.f, align 8, !tbaa !13 ; 5 uses
  %i.eh = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ej = insertelement <2 x double> poison, double %i.ed, i64 0
  %i.ek = insertelement <2 x double> %i.ej, double %i.ee, i64 1
  %i.el = fmul <2 x double> %i.ei, %i.ek
  %i.em = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.en = shufflevector <2 x double> %i.em, <2 x double> poison, <2 x i32> zeroinitializer
  %i.eo = insertelement <2 x double> poison, double %i.eb, i64 0
  %i.ep = insertelement <2 x double> %i.eo, double %i.ed, i64 1
  %i.eq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.en, <2 x double> %i.ep, <2 x double> %i.el) ; 4 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0641644, i64 8
  %i.es = load i64, ptr %i.er, align 8, !tbaa !11 ; 2 uses
  %i.et = getelementptr inbounds [8 x i8], ptr %.0647, i64 %i.es ; 2 uses
  %i.eu = load double, ptr %i.et, align 8, !tbaa !13 ; 2 uses
  %i.ev = getelementptr inbounds [8 x i8], ptr %.0639646, i64 %i.es ; 2 uses
  %i.ew = load double, ptr %i.ev, align 8, !tbaa !13 ; 2 uses
  %i.ex = fneg double %i.eu
  %i.ey = load double, ptr %.0640645, align 8, !tbaa !13 ; 5 uses
  %i.ez = load double, ptr %i.d, align 8, !tbaa !13 ; 5 uses
  %i.fa = insertelement <2 x double> poison, double %i.ez, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = fmul <2 x double> %i.fb, %i.m
  %i.fd = insertelement <2 x double> poison, double %i.ey, i64 0
  %i.fe = shufflevector <2 x double> %i.fd, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.ff = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.j, <2 x double> %i.fc) ; 2 uses
  %i.fg = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fh = fmul <2 x double> %i.fg, %i.ca
  %i.fi = shufflevector <2 x double> %i.ff, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> %i.cc, <2 x double> %i.fh) ; 3 uses
  %i.fk = fmul double %i.ey, %i.ef                ; 2 uses
  %i.fl = fmul double %i.ez, %i.ef                ; 2 uses
  %i.fm = fmul double %i.ez, %i.eg                ; 2 uses
  %i.fn = fmul double %i.ey, %i.eg                ; 2 uses
  %i.fo = fsub double %i.fk, %i.fm                ; 3 uses
  %i.fp = fadd double %i.fl, %i.fn                ; 3 uses
  %i.fq = fsub double %i.fn, %i.fl                ; 3 uses
  %i.fr = fadd double %i.fk, %i.fm                ; 3 uses
  %i.fs = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.ft = shufflevector <2 x double> %i.fs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fu = fmul <2 x double> %i.ft, %i.ai
  %i.fv = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.fw = shufflevector <2 x double> %i.fv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.ak, <2 x double> %i.fu) ; 2 uses
  %i.fy = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.fz = shufflevector <2 x double> %i.fy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ga = fmul <2 x double> %i.fz, %i.be
  %i.gb = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> %i.bg, <2 x double> %i.ga) ; 3 uses
  %i.ge = insertelement <2 x double> poison, double %i.ew, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.ex, i64 1
  %i.gg = fmul <2 x double> %i.fb, %i.gf
  %i.gh = insertelement <2 x double> poison, double %i.eu, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.ew, i64 1
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fe, <2 x double> %i.gi, <2 x double> %i.gg) ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0641644, i64 104
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !11 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0647, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !13 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.0639646, i64 %i.gl ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !13 ; 2 uses
  %i.gq = fneg double %i.gn
  %i.gr = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gq, i64 1
  %i.gt = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gp, i64 1
  %i.gv = getelementptr inbounds nuw i8, ptr %.0641644, i64 72
  %i.gw = load i64, ptr %i.gv, align 8, !tbaa !11 ; 2 uses
  %i.gx = getelementptr inbounds [8 x i8], ptr %.0647, i64 %i.gw ; 2 uses
  %i.gy = load double, ptr %i.gx, align 8, !tbaa !13 ; 2 uses
  %i.gz = getelementptr inbounds [8 x i8], ptr %.0639646, i64 %i.gw ; 2 uses
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !13 ; 2 uses
  %i.hb = fneg double %i.gy
  %i.hc = insertelement <2 x double> poison, double %i.ha, i64 0
  %i.hd = insertelement <2 x double> %i.hc, double %i.hb, i64 1
  %i.he = insertelement <2 x double> poison, double %i.gy, i64 0
  %i.hf = insertelement <2 x double> %i.he, double %i.ha, i64 1
  %i.hg = getelementptr inbounds nuw i8, ptr %.0641644, i64 40
  %i.hh = load i64, ptr %i.hg, align 8, !tbaa !11 ; 2 uses
  %i.hi = getelementptr inbounds [8 x i8], ptr %.0647, i64 %i.hh ; 2 uses
  %i.hj = load double, ptr %i.hi, align 8, !tbaa !13 ; 2 uses
  %i.hk = getelementptr inbounds [8 x i8], ptr %.0639646, i64 %i.hh ; 2 uses
  %i.hl = load double, ptr %i.hk, align 8, !tbaa !13 ; 2 uses
  %i.hm = fneg double %i.hj
  %i.hn = load double, ptr %i.g, align 8, !tbaa !13 ; 9 uses
  %i.ho = load double, ptr %i.h, align 8, !tbaa !13 ; 9 uses
  %i.hp = fmul double %i.ef, %i.hn                ; 2 uses
  %i.hq = fmul double %i.eg, %i.hn                ; 2 uses
  %i.hr = fmul double %i.eg, %i.ho                ; 2 uses
  %i.hs = fmul double %i.ef, %i.ho                ; 2 uses
  %i.ht = fsub double %i.hp, %i.hr
  %i.hu = fsub double %i.hs, %i.hq
  %i.hv = fadd double %i.hq, %i.hs
  %i.hw = fadd double %i.hp, %i.hr
  %i.hx = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.hy = shufflevector <2 x double> %i.hx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hz = fmul <2 x double> %i.hy, %i.at
  %i.ia = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.ib = shufflevector <2 x double> %i.ia, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ic = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> %i.av, <2 x double> %i.hz) ; 2 uses
  %i.id = insertelement <2 x double> poison, double %i.ht, i64 0
  %i.ie = shufflevector <2 x double> %i.id, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = fmul <2 x double> %i.ie, %i.cl
  %i.ig = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.ih = shufflevector <2 x double> %i.ig, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ih, <2 x double> %i.cn, <2 x double> %i.if) ; 3 uses
  %i.ij = fmul double %i.ez, %i.hn                ; 2 uses
  %i.ik = fmul double %i.ey, %i.hn                ; 2 uses
  %i.il = fmul double %i.ey, %i.ho                ; 2 uses
  %i.im = fmul double %i.ez, %i.ho                ; 2 uses
  %i.in = fadd double %i.ij, %i.il
  %i.io = fadd double %i.ik, %i.im
  %i.ip = fsub double %i.ik, %i.im
  %i.iq = fsub double %i.il, %i.ij
  %i.ir = insertelement <2 x double> poison, double %i.ip, i64 0
  %i.is = shufflevector <2 x double> %i.ir, <2 x double> poison, <2 x i32> zeroinitializer
  %i.it = fmul <2 x double> %i.is, %i.x
  %i.iu = insertelement <2 x double> poison, double %i.in, i64 0
  %i.iv = shufflevector <2 x double> %i.iu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.z, <2 x double> %i.it) ; 2 uses
  %i.ix = insertelement <2 x double> poison, double %i.io, i64 0
  %i.iy = shufflevector <2 x double> %i.ix, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iz = fmul <2 x double> %i.iy, %i.bp
  %i.ja = insertelement <2 x double> poison, double %i.iq, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jb, <2 x double> %i.br, <2 x double> %i.iz) ; 3 uses
  %i.jd = fmul double %i.hn, %i.fo                ; 2 uses
  %i.je = fmul double %i.fp, %i.ho                ; 2 uses
  %i.jf = fsub double %i.jd, %i.je
  %i.jg = fadd double %i.jd, %i.je
  %i.jh = fmul double %i.fo, %i.ho                ; 2 uses
  %i.ji = fmul double %i.hn, %i.fp                ; 2 uses
  %i.jj = fadd double %i.jh, %i.ji
  %i.jk = fsub double %i.jh, %i.ji
  %i.jl = fmul double %i.hn, %i.fr                ; 2 uses
  %i.jm = fmul double %i.fq, %i.ho                ; 2 uses
  %i.jn = fsub double %i.jl, %i.jm
  %i.jo = fadd double %i.jl, %i.jm
  %i.jp = fmul double %i.fr, %i.ho                ; 2 uses
  %i.jq = fmul double %i.hn, %i.fq                ; 2 uses
  %i.jr = fadd double %i.jp, %i.jq
  %i.js = fsub double %i.jp, %i.jq
  %i.jt = insertelement <2 x double> poison, double %i.jo, i64 0
  %i.ju = shufflevector <2 x double> %i.jt, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jv = fmul <2 x double> %i.ju, %i.dk
  %i.jw = insertelement <2 x double> poison, double %i.js, i64 0
  %i.jx = shufflevector <2 x double> %i.jw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jx, <2 x double> %i.dm, <2 x double> %i.jv) ; 4 uses
  %i.jz = insertelement <2 x double> poison, double %i.jn, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kb = fmul <2 x double> %i.ka, %i.dv
  %i.kc = insertelement <2 x double> poison, double %i.jr, i64 0
  %i.kd = shufflevector <2 x double> %i.kc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ke = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kd, <2 x double> %i.dx, <2 x double> %i.kb) ; 4 uses
  %i.kf = insertelement <2 x double> poison, double %i.jg, i64 0
  %i.kg = shufflevector <2 x double> %i.kf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kh = fmul <2 x double> %i.kg, %i.gs
  %i.ki = insertelement <2 x double> poison, double %i.jk, i64 0
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kj, <2 x double> %i.gu, <2 x double> %i.kh) ; 4 uses
  %i.kl = insertelement <2 x double> poison, double %i.hn, i64 0
  %i.km = shufflevector <2 x double> %i.kl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kn = fmul <2 x double> %i.km, %i.hd
  %i.ko = insertelement <2 x double> poison, double %i.ho, i64 0
  %i.kp = shufflevector <2 x double> %i.ko, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kp, <2 x double> %i.hf, <2 x double> %i.kn) ; 4 uses
  %i.kr = insertelement <2 x double> poison, double %i.jf, i64 0
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kt = insertelement <2 x double> poison, double %i.hl, i64 0
  %i.ku = insertelement <2 x double> %i.kt, double %i.hm, i64 1
  %i.kv = fmul <2 x double> %i.ks, %i.ku
  %i.kw = insertelement <2 x double> poison, double %i.jj, i64 0
  %i.kx = shufflevector <2 x double> %i.kw, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ky = insertelement <2 x double> poison, double %i.hj, i64 0
  %i.kz = insertelement <2 x double> %i.ky, double %i.hl, i64 1
  %i.la = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kx, <2 x double> %i.kz, <2 x double> %i.kv) ; 4 uses
  %i.lb = shufflevector <2 x double> %i.gj, <2 x double> %i.db, <2 x i32> <i32 0, i32 2>
  %i.lc = shufflevector <2 x double> %i.kq, <2 x double> %i.ke, <2 x i32> <i32 0, i32 2>
  %i.ld = fsub <2 x double> %i.lb, %i.lc          ; 3 uses
  %i.le = shufflevector <2 x double> %i.la, <2 x double> %i.eq, <2 x i32> <i32 1, i32 3>
  %i.lf = shufflevector <2 x double> %i.kk, <2 x double> %i.jy, <2 x i32> <i32 1, i32 3>
  %i.lg = fsub <2 x double> %i.le, %i.lf          ; 3 uses
  %i.lh = shufflevector <2 x double> %i.gj, <2 x double> %i.db, <2 x i32> <i32 1, i32 3>
  %i.li = shufflevector <2 x double> %i.kq, <2 x double> %i.ke, <2 x i32> <i32 1, i32 3>
  %i.lj = fsub <2 x double> %i.lh, %i.li          ; 3 uses
  %i.lk = shufflevector <2 x double> %i.la, <2 x double> %i.eq, <2 x i32> <i32 0, i32 2>
  %i.ll = shufflevector <2 x double> %i.kk, <2 x double> %i.jy, <2 x i32> <i32 0, i32 2>
  %i.lm = fsub <2 x double> %i.lk, %i.ll          ; 3 uses
  %i.ln = fadd <2 x double> %i.lj, %i.lm          ; 3 uses
  %i.lo = fsub <2 x double> %i.ld, %i.lg          ; 3 uses
  %i.lp = fmul <2 x double> %i.lo, <double f0xBFED906BCF328D46, double f0x3FED906BCF328D46>
  %i.lq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ln, <2 x double> splat (double f0x3FD87DE2A6AEA963), <2 x double> %i.lp) ; 4 uses
  %i.lr = insertelement <2 x double> poison, double %i.n, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.o, i64 1 ; 2 uses
  %i.lt = fadd <2 x double> %i.ls, %i.iw          ; 2 uses
  %i.lu = fadd <2 x double> %i.fx, %i.ic          ; 2 uses
  %i.lv = shufflevector <2 x double> %i.db, <2 x double> %i.gj, <2 x i32> <i32 1, i32 2>
  %i.lw = shufflevector <2 x double> %i.ke, <2 x double> %i.kq, <2 x i32> <i32 1, i32 2>
  %i.lx = fadd <2 x double> %i.lv, %i.lw          ; 2 uses
  %i.ly = shufflevector <2 x double> %i.jy, <2 x double> %i.kk, <2 x i32> <i32 1, i32 2>
  %i.lz = shufflevector <2 x double> %i.eq, <2 x double> %i.la, <2 x i32> <i32 1, i32 2>
  %i.ma = fadd <2 x double> %i.ly, %i.lz          ; 2 uses
  %i.mb = fsub <2 x double> %i.lx, %i.ma          ; 2 uses
  %i.mc = shufflevector <2 x double> %i.db, <2 x double> %i.gj, <2 x i32> <i32 0, i32 3>
  %i.md = shufflevector <2 x double> %i.ke, <2 x double> %i.kq, <2 x i32> <i32 0, i32 3>
  %i.me = fadd <2 x double> %i.mc, %i.md          ; 2 uses
  %i.mf = shufflevector <2 x double> %i.jy, <2 x double> %i.kk, <2 x i32> <i32 0, i32 3>
  %i.mg = shufflevector <2 x double> %i.eq, <2 x double> %i.la, <2 x i32> <i32 0, i32 3>
  %i.mh = fadd <2 x double> %i.mf, %i.mg          ; 2 uses
  %i.mi = fsub <2 x double> %i.me, %i.mh          ; 2 uses
  %i.mj = fsub <2 x double> %i.lt, %i.lu          ; 2 uses
  %i.mk = fsub <2 x double> %i.mi, %i.mb          ; 2 uses
  %i.ml = shufflevector <2 x double> %i.mk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mm = fadd <2 x double> %i.mi, %i.mb          ; 2 uses
  %i.mn = fsub <2 x double> %i.ml, %i.mm
  %i.mo = fmul <2 x double> %i.mn, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.mp = shufflevector <2 x double> %i.mm, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mq = fadd <2 x double> %i.mk, %i.mp
  %i.mr = fmul <2 x double> %i.mq, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %7 = shufflevector <2 x double> %i.lj, <2 x double> %i.ld, <2 x i32> <i32 0, i32 3> ; 2 uses
  %8 = shufflevector <2 x double> %i.lm, <2 x double> %i.lg, <2 x i32> <i32 0, i32 3> ; 2 uses
  %9 = fsub <2 x double> %7, %8                   ; 2 uses
  %i.ms = fadd <2 x double> %7, %8                ; 2 uses
  %10 = shufflevector <2 x double> %9, <2 x double> %i.ms, <2 x i32> <i32 0, i32 3>
  %11 = shufflevector <2 x double> %i.ld, <2 x double> %i.lj, <2 x i32> <i32 0, i32 3> ; 2 uses
  %12 = shufflevector <2 x double> %i.lg, <2 x double> %i.lm, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.mt = fadd <2 x double> %11, %12              ; 2 uses
  %13 = fsub <2 x double> %11, %12                ; 2 uses
  %i.mu = shufflevector <2 x double> %i.mt, <2 x double> %13, <2 x i32> <i32 0, i32 3>
  %14 = fmul <2 x double> %i.mu, <double f0x3FED906BCF328D46, double f0xBFD87DE2A6AEA963>
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>, <2 x double> %14) ; 4 uses
  %i.mv = shufflevector <2 x double> %i.mt, <2 x double> %i.ms, <2 x i32> <i32 0, i32 3>
  %16 = fmul <2 x double> %i.mv, <double f0xBFD87DE2A6AEA963, double f0x3FD87DE2A6AEA963>
  %i.mw = shufflevector <2 x double> %9, <2 x double> %13, <2 x i32> <i32 0, i32 3>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mw, <2 x double> splat (double f0x3FED906BCF328D46), <2 x double> %16) ; 4 uses
  %i.mx = fsub <2 x double> %i.ls, %i.iw          ; 2 uses
  %18 = fsub <2 x double> %i.fx, %i.ic
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %20 = shufflevector <2 x double> %i.gd, <2 x double> %i.fj, <2 x i32> <i32 0, i32 2>
  %21 = shufflevector <2 x double> %i.jc, <2 x double> %i.ii, <2 x i32> <i32 0, i32 2>
  %22 = fsub <2 x double> %20, %21                ; 3 uses
  %23 = shufflevector <2 x double> %i.gd, <2 x double> %i.fj, <2 x i32> <i32 1, i32 3>
  %24 = shufflevector <2 x double> %i.jc, <2 x double> %i.ii, <2 x i32> <i32 1, i32 3>
  %i.my = fsub <2 x double> %23, %24              ; 3 uses
  %25 = fadd <2 x double> %i.my, %22              ; 2 uses
  %26 = shufflevector <2 x double> %22, <2 x double> %i.my, <2 x i32> <i32 1, i32 2>
  %27 = shufflevector <2 x double> %i.my, <2 x double> %22, <2 x i32> <i32 1, i32 2>
  %28 = fsub <2 x double> %26, %27                ; 2 uses
  %i.mz = fsub <2 x double> %28, %25
  %i.na = fmul <2 x double> %i.mz, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.nb = fsub <2 x double> %i.mx, %19            ; 2 uses
  %i.nc = fadd <2 x double> %i.mx, %19            ; 2 uses
  %29 = shufflevector <2 x double> %i.nb, <2 x double> %i.nc, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.nd = fadd <2 x double> %29, %i.na            ; 3 uses
  %30 = shufflevector <2 x double> %i.lo, <2 x double> %i.lq, <2 x i32> <i32 0, i32 3>
  %31 = fmul <2 x double> %30, <double f0x3FD87DE2A6AEA963, double 1.000000e+00>
  %32 = insertelement <2 x double> %i.ln, double -0.000000e+00, i64 1
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> <double f0x3FED906BCF328D46, double 0.000000e+00>, <2 x double> %31) ; 2 uses
  %34 = shufflevector <2 x double> %i.ln, <2 x double> %i.lq, <2 x i32> <i32 1, i32 2>
  %35 = fmul <2 x double> %34, <double f0xBFED906BCF328D46, double 1.000000e+00>
  %36 = shufflevector <2 x double> %i.lo, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> <double f0x3FD87DE2A6AEA963, double 0.000000e+00>, <2 x double> %35) ; 2 uses
  %38 = fsub <2 x double> %37, %33                ; 3 uses
  %39 = shufflevector <2 x double> %i.lq, <2 x double> %37, <2 x i32> <i32 1, i32 2>
  %40 = shufflevector <2 x double> %i.lq, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %41 = fadd <2 x double> %39, %40                ; 3 uses
  %i.ne = fsub <2 x double> %29, %i.na            ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.nd, %41
  %i.nf = extractelement <2 x double> %foldExtExtBinop, i64 1
  store double %i.nf, ptr %i.de, align 8, !tbaa !13
  %foldExtExtBinop650 = fsub <2 x double> %i.nd, %41
  %i.ng = extractelement <2 x double> %foldExtExtBinop650, i64 0
  store double %i.ng, ptr %i.dg, align 8, !tbaa !13
  %i.nh = fadd <2 x double> %i.nd, %41            ; 2 uses
  %i.ni = extractelement <2 x double> %i.nh, i64 1
  store double %i.ni, ptr %i.ea, align 8, !tbaa !13
  %i.nj = extractelement <2 x double> %i.nh, i64 0
  store double %i.nj, ptr %i.ec, align 8, !tbaa !13
  %foldExtExtBinop652 = fsub <2 x double> %i.ne, %38
  %i.nk = extractelement <2 x double> %foldExtExtBinop652, i64 1
  store double %i.nk, ptr %i.cq, align 8, !tbaa !13
  %foldExtExtBinop654 = fsub <2 x double> %i.ne, %38
  %i.nl = extractelement <2 x double> %foldExtExtBinop654, i64 0
  store double %i.nl, ptr %i.cs, align 8, !tbaa !13
  %i.nm = fadd <2 x double> %i.ne, %38            ; 2 uses
  %i.nn = extractelement <2 x double> %i.nm, i64 1
  store double %i.nn, ptr %i.dp, align 8, !tbaa !13
  %i.no = extractelement <2 x double> %i.nm, i64 0
  store double %i.no, ptr %i.dr, align 8, !tbaa !13
  %42 = fadd <2 x double> %25, %28
  %43 = fmul <2 x double> %42, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %44 = shufflevector <2 x double> %i.nc, <2 x double> %i.nb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %45 = fadd <2 x double> %44, %43                ; 2 uses
  %46 = shufflevector <2 x double> %15, <2 x double> %17, <2 x i32> <i32 1, i32 3>
  %47 = shufflevector <2 x double> %15, <2 x double> %17, <2 x i32> <i32 0, i32 2>
  %48 = fadd <2 x double> %46, %47                ; 2 uses
  %49 = fsub <2 x double> %45, %48                ; 2 uses
  %50 = extractelement <2 x double> %49, i64 0
  %i.np = extractelement <2 x double> %49, i64 1
  %51 = fadd <2 x double> %45, %48                ; 2 uses
  %52 = shufflevector <2 x double> %17, <2 x double> %15, <2 x i32> <i32 0, i32 3>
  %53 = shufflevector <2 x double> %17, <2 x double> %15, <2 x i32> <i32 1, i32 2>
  %54 = fsub <2 x double> %52, %53                ; 2 uses
  %55 = fsub <2 x double> %44, %43                ; 2 uses
  %56 = fsub <2 x double> %55, %54                ; 2 uses
  %i.nq = extractelement <2 x double> %56, i64 0
  %57 = extractelement <2 x double> %56, i64 1
  %58 = fadd <2 x double> %55, %54                ; 2 uses
  %59 = fadd <2 x double> %i.gd, %i.jc            ; 3 uses
  %i.nr = fadd <2 x double> %i.fj, %i.ii          ; 3 uses
  %60 = shufflevector <2 x double> %59, <2 x double> %i.nr, <2 x i32> <i32 1, i32 2>
  %61 = shufflevector <2 x double> %59, <2 x double> %i.nr, <2 x i32> <i32 3, i32 0>
  %62 = fsub <2 x double> %60, %61                ; 2 uses
  %i.ns = fadd <2 x double> %i.mj, %62            ; 2 uses
  %63 = fsub <2 x double> %i.mj, %62              ; 2 uses
  %64 = fsub <2 x double> %i.ns, %i.mr            ; 2 uses
  %65 = extractelement <2 x double> %64, i64 0
  %66 = extractelement <2 x double> %64, i64 1
  %i.nt = fadd <2 x double> %i.ns, %i.mr          ; 2 uses
  %i.nu = fsub <2 x double> %63, %i.mo            ; 2 uses
  %i.nv = extractelement <2 x double> %i.nu, i64 0
  %67 = extractelement <2 x double> %i.nu, i64 1
  %68 = fadd <2 x double> %63, %i.mo              ; 2 uses
  store double %65, ptr %i.bj, align 8, !tbaa !13
  store double %66, ptr %i.bl, align 8, !tbaa !13
  %i.nw = extractelement <2 x double> %i.nt, i64 0
  store double %i.nw, ptr %i.ay, align 8, !tbaa !13
  %i.nx = extractelement <2 x double> %i.nt, i64 1
  store double %i.nx, ptr %i.ba, align 8, !tbaa !13
  store double %i.nv, ptr %i.bu, align 8, !tbaa !13
  store double %67, ptr %i.bw, align 8, !tbaa !13
  %69 = extractelement <2 x double> %68, i64 0
  store double %69, ptr %i.cf, align 8, !tbaa !13
  %70 = extractelement <2 x double> %68, i64 1
  store double %70, ptr %i.ch, align 8, !tbaa !13
  store double %50, ptr %i.gx, align 8, !tbaa !13
  store double %i.np, ptr %i.gz, align 8, !tbaa !13
  %i.ny = extractelement <2 x double> %51, i64 0
  store double %i.ny, ptr %i.et, align 8, !tbaa !13
  %i.nz = extractelement <2 x double> %51, i64 1
  store double %i.nz, ptr %i.ev, align 8, !tbaa !13
  store double %i.nq, ptr %i.gm, align 8, !tbaa !13
  store double %57, ptr %i.go, align 8, !tbaa !13
  %i.oa = extractelement <2 x double> %58, i64 0
  store double %i.oa, ptr %i.hi, align 8, !tbaa !13
  %i.ob = extractelement <2 x double> %58, i64 1
  store double %i.ob, ptr %i.hk, align 8, !tbaa !13
  %i.oc = fadd <2 x double> %59, %i.nr            ; 2 uses
  %i.od = fadd <2 x double> %i.lt, %i.lu          ; 2 uses
  %i.oe = fadd <2 x double> %i.od, %i.oc          ; 2 uses
  %i.of = fadd <2 x double> %i.me, %i.mh          ; 2 uses
  %i.og = fadd <2 x double> %i.lx, %i.ma          ; 2 uses
  %i.oh = shufflevector <2 x double> %i.og, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.oi = fadd <2 x double> %i.oh, %i.of          ; 2 uses
  %i.oj = fsub <2 x double> %i.oe, %i.oi          ; 2 uses
  %i.ok = extractelement <2 x double> %i.oj, i64 0
  store double %i.ok, ptr %i.r, align 8, !tbaa !13
  %i.ol = extractelement <2 x double> %i.oj, i64 1
  store double %i.ol, ptr %i.t, align 8, !tbaa !13
  %i.om = fadd <2 x double> %i.oe, %i.oi          ; 2 uses
  %i.on = extractelement <2 x double> %i.om, i64 0
  store double %i.on, ptr %.0647, align 8, !tbaa !13
  %i.oo = extractelement <2 x double> %i.om, i64 1
  store double %i.oo, ptr %.0639646, align 8, !tbaa !13
  %i.op = fsub <2 x double> %i.od, %i.oc          ; 2 uses
  %i.oq = shufflevector <2 x double> %i.of, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.or = fsub <2 x double> %i.oq, %i.og          ; 2 uses
  %i.os = fsub <2 x double> %i.op, %i.or          ; 2 uses
  %i.ot = extractelement <2 x double> %i.os, i64 0
  store double %i.ot, ptr %i.an, align 8, !tbaa !13
  %i.ou = extractelement <2 x double> %i.os, i64 1
  store double %i.ou, ptr %i.ap, align 8, !tbaa !13
  %i.ov = fadd <2 x double> %i.op, %i.or          ; 2 uses
  %i.ow = extractelement <2 x double> %i.ov, i64 0
  store double %i.ow, ptr %i.ac, align 8, !tbaa !13
  %i.ox = extractelement <2 x double> %i.ov, i64 1
  store double %i.ox, ptr %i.ae, align 8, !tbaa !13
  %i.oy = add nsw i64 %.0642643, 1                ; 2 uses
  %i.oz = getelementptr inbounds [8 x i8], ptr %.0647, i64 %6
  %i.pa = getelementptr inbounds [8 x i8], ptr %.0639646, i64 %6
  %i.pb = getelementptr inbounds nuw i8, ptr %.0640645, i64 64
  %i.pc = getelementptr inbounds [8 x i8], ptr %.0641644, i64 %i.c
  %exitcond.not = icmp eq i64 %i.oy, %5
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !9

._crit_edge:                                      ; preds = %bb.b, %bb.a
  ret void
}

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
