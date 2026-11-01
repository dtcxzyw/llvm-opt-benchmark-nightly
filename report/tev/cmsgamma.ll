Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/tev/original/cmsgamma?download=true
inline.NumInlined: 30
inline.NumDeleted: 14
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumRuntimeUnrolled: 2
loop-unroll.NumUnrolled: 5
begin_hunk_0_@DefaultEvalParametricFn:bb.a
bb.aj:                                            ; preds = %bb.ai
  %i.df = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.dg = tail call double @llvm.fabs.f64(double %i.df)
  %i.dh = fcmp olt double %i.dg, 1.000000e-04
  %i.di = tail call double @llvm.fabs.f64(double %i.cv)
  %i.dj = fcmp olt double %i.di, 1.000000e-04
  %or.cond = or i1 %i.dj, %i.dh
  br i1 %or.cond, label %bb.bz, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dk = fdiv double 1.000000e+00, %i.df
  %i.dl = tail call double @pow(double noundef %2, double noundef %i.dk) #11
  %i.dm = fsub double %i.dl, %i.cz
  %i.dn = fdiv double %i.dm, %i.cv
  br label %bb.bz

bb.al:                                            ; preds = %bb.ai
  %i.do = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.dp = load double, ptr %i.do, align 8, !tbaa !49 ; 2 uses
  %i.dq = tail call double @llvm.fabs.f64(double %i.dp)
  %i.dr = fcmp olt double %i.dq, 1.000000e-04
  br i1 %i.dr, label %bb.bz, label %bb.am

bb.am:                                            ; preds = %bb.al
  %i.ds = fdiv double %2, %i.dp
  br label %bb.bz

bb.an:                                            ; preds = %bb.a
  %i.dt = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.du = load double, ptr %i.dt, align 8, !tbaa !49
  %i.dv = fcmp ult double %2, %i.du
  br i1 %i.dv, label %bb.ar, label %bb.ao

bb.ao:                                            ; preds = %bb.an
  %i.dw = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !49
  %i.dy = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !49
  %i.ea = tail call double @llvm.fmuladd.f64(double %i.dx, double %2, double %i.dz) ; 2 uses
  %i.eb = fcmp ogt double %i.ea, 0.000000e+00
  br i1 %i.eb, label %bb.ap, label %bb.aq

bb.ap:                                            ; preds = %bb.ao
  %i.ec = load double, ptr %1, align 8, !tbaa !49
  %i.ed = tail call double @pow(double noundef %i.ea, double noundef %i.ec) #11
  %i.ee = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ef = load double, ptr %i.ee, align 8, !tbaa !49
  %i.eg = fadd double %i.ed, %i.ef
  br label %bb.bz

bb.aq:                                            ; preds = %bb.ao
  %i.eh = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ei = load double, ptr %i.eh, align 8, !tbaa !49
  br label %bb.bz

bb.ar:                                            ; preds = %bb.an
  %i.ej = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !49
  %i.el = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.em = load double, ptr %i.el, align 8, !tbaa !49
  %i.en = tail call double @llvm.fmuladd.f64(double %2, double %i.ek, double %i.em)
  br label %bb.bz

bb.as:                                            ; preds = %bb.a
  %i.eo = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ep = load double, ptr %i.eo, align 8, !tbaa !49 ; 3 uses
  %i.eq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.er = load double, ptr %i.eq, align 8, !tbaa !49
  %i.es = getelementptr inbounds nuw i8, ptr %1, i64 48
  %i.et = load double, ptr %i.es, align 8, !tbaa !49 ; 2 uses
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.ep, double %i.er, double %i.et)
  %i.ev = fcmp ult double %2, %i.eu
  br i1 %i.ev, label %bb.ax, label %bb.at

bb.at:                                            ; preds = %bb.as
  %i.ew = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.ex = load double, ptr %i.ew, align 8, !tbaa !49
  %i.ey = fsub double %2, %i.ex                   ; 2 uses
  %i.ez = fcmp olt double %i.ey, 0.000000e+00
  br i1 %i.ez, label %bb.bz, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.fa = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.fb = tail call double @llvm.fabs.f64(double %i.fa)
  %i.fc = fcmp olt double %i.fb, 1.000000e-04
  br i1 %i.fc, label %bb.bz, label %bb.av

bb.av:                                            ; preds = %bb.au
  %i.fd = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fe = load double, ptr %i.fd, align 8, !tbaa !49 ; 2 uses
  %i.ff = tail call double @llvm.fabs.f64(double %i.fe)
  %i.fg = fcmp olt double %i.ff, 1.000000e-04
  br i1 %i.fg, label %bb.bz, label %bb.aw

bb.aw:                                            ; preds = %bb.av
  %i.fh = fdiv double 1.000000e+00, %i.fa
  %i.fi = tail call double @pow(double noundef %i.ey, double noundef %i.fh) #11
  %i.fj = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fk = load double, ptr %i.fj, align 8, !tbaa !49
  %i.fl = fsub double %i.fi, %i.fk
  %i.fm = fdiv double %i.fl, %i.fe
  br label %bb.bz

bb.ax:                                            ; preds = %bb.as
  %i.fn = tail call double @llvm.fabs.f64(double %i.ep)
  %i.fo = fcmp olt double %i.fn, 1.000000e-04
  br i1 %i.fo, label %bb.bz, label %bb.ay

bb.ay:                                            ; preds = %bb.ax
  %i.fp = fsub double %2, %i.et
  %i.fq = fdiv double %i.fp, %i.ep
  br label %bb.bz

bb.az:                                            ; preds = %bb.a
  %i.fr = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.fs = load double, ptr %i.fr, align 8, !tbaa !49
  %i.ft = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.fu = load double, ptr %i.ft, align 8, !tbaa !49
  %i.fv = tail call double @llvm.fmuladd.f64(double %i.fs, double %2, double %i.fu) ; 3 uses
  %i.fw = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.fx = fcmp oeq double %i.fw, 1.000000e+00
  br i1 %i.fx, label %bb.ba, label %bb.bb

bb.ba:                                            ; preds = %bb.az
  %i.fy = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.fz = load double, ptr %i.fy, align 8, !tbaa !49
  %i.ga = fadd double %i.fv, %i.fz
  br label %bb.bz

bb.bb:                                            ; preds = %bb.az
  %i.gb = fcmp olt double %i.fv, 0.000000e+00
  br i1 %i.gb, label %bb.bc, label %bb.bd

bb.bc:                                            ; preds = %bb.bb
  %i.gc = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gd = load double, ptr %i.gc, align 8, !tbaa !49
  br label %bb.bz

bb.bd:                                            ; preds = %bb.bb
  %i.ge = tail call double @pow(double noundef %i.fv, double noundef %i.fw) #11
  %i.gf = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gg = load double, ptr %i.gf, align 8, !tbaa !49
  %i.gh = fadd double %i.ge, %i.gg
  br label %bb.bz

bb.be:                                            ; preds = %bb.a
  %i.gi = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.gj = tail call double @llvm.fabs.f64(double %i.gi)
  %i.gk = fcmp olt double %i.gj, 1.000000e-04
  br i1 %i.gk, label %bb.bz, label %bb.bf

bb.bf:                                            ; preds = %bb.be
  %i.gl = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.gm = load double, ptr %i.gl, align 8, !tbaa !49 ; 2 uses
  %i.gn = tail call double @llvm.fabs.f64(double %i.gm)
  %i.go = fcmp olt double %i.gn, 1.000000e-04
  br i1 %i.go, label %bb.bz, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  %i.gp = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.gq = load double, ptr %i.gp, align 8, !tbaa !49
  %i.gr = fsub double %2, %i.gq                   ; 2 uses
  %i.gs = fcmp olt double %i.gr, 0.000000e+00
  br i1 %i.gs, label %bb.bz, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  %i.gt = fdiv double 1.000000e+00, %i.gi
  %i.gu = tail call double @pow(double noundef %i.gr, double noundef %i.gt) #11
  %i.gv = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.gw = load double, ptr %i.gv, align 8, !tbaa !49
  %i.gx = fsub double %i.gu, %i.gw
  %i.gy = fdiv double %i.gx, %i.gm
  br label %bb.bz

bb.bi:                                            ; preds = %bb.a
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.ha = load double, ptr %i.gz, align 8, !tbaa !49
  %i.hb = load double, ptr %1, align 8, !tbaa !49
  %i.hc = tail call double @pow(double noundef %2, double noundef %i.hb) #11
  %i.hd = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.he = load double, ptr %i.hd, align 8, !tbaa !49
  %i.hf = tail call double @llvm.fmuladd.f64(double %i.ha, double %i.hc, double %i.he) ; 2 uses
  %i.hg = fcmp ugt double %i.hf, 0.000000e+00
  br i1 %i.hg, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %bb.bi
  %i.hh = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hi = load double, ptr %i.hh, align 8, !tbaa !49
  br label %bb.bz

bb.bk:                                            ; preds = %bb.bi
  %i.hj = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.hk = load double, ptr %i.hj, align 8, !tbaa !49
  %i.hl = tail call double @llvm.log10.f64(double %i.hf)
  %i.hm = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.hn = load double, ptr %i.hm, align 8, !tbaa !49
  %i.ho = tail call double @llvm.fmuladd.f64(double %i.hk, double %i.hl, double %i.hn)
  br label %bb.bz

bb.bl:                                            ; preds = %bb.a
  %i.hp = load double, ptr %1, align 8, !tbaa !49
  %i.hq = tail call double @llvm.fabs.f64(double %i.hp)
  %i.hr = fcmp olt double %i.hq, 1.000000e-04
  br i1 %i.hr, label %bb.bz, label %bb.bm

bb.bm:                                            ; preds = %bb.bl
  %i.hs = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ht = load double, ptr %i.hs, align 8, !tbaa !49
  %3 = load <2 x double>, ptr %1, align 8, !tbaa !49
  %i.hu = tail call double @llvm.fabs.f64(double %i.ht)
  %i.hv = fcmp olt double %i.hu, 1.000000e-04
  br i1 %i.hv, label %bb.bz, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.hw = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.hx = load double, ptr %i.hw, align 8, !tbaa !49 ; 2 uses
  %i.hy = tail call double @llvm.fabs.f64(double %i.hx)
  %i.hz = fcmp olt double %i.hy, 1.000000e-04
  br i1 %i.hz, label %bb.bz, label %bb.bo

bb.bo:                                            ; preds = %bb.bn
  %i.ia = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ib = load double, ptr %i.ia, align 8, !tbaa !49
  %i.ic = fsub double %2, %i.ib
  %4 = getelementptr inbounds nuw i8, ptr %1, i64 24
  %5 = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ic, i64 1
  %6 = fdiv <2 x double> %5, %3                   ; 2 uses
  %7 = extractelement <2 x double> %6, i64 1
  %8 = tail call double @pow(double noundef 1.000000e+01, double noundef %7) #11
  %i.id = load double, ptr %4, align 8, !tbaa !49
  %i.ie = fsub double %8, %i.id
  %i.if = fdiv double %i.ie, %i.hx
  %9 = extractelement <2 x double> %6, i64 0
  %i.ig = tail call double @pow(double noundef %i.if, double noundef %9) #11
  br label %bb.bz

bb.bp:                                            ; preds = %bb.a
  %i.ih = load double, ptr %1, align 8, !tbaa !49
  %i.ii = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ij = load double, ptr %i.ii, align 8, !tbaa !49
  %i.ik = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.il = load double, ptr %i.ik, align 8, !tbaa !49
  %i.im = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.in = load double, ptr %i.im, align 8, !tbaa !49
  %i.io = tail call double @llvm.fmuladd.f64(double %i.il, double %2, double %i.in)
  %i.ip = tail call double @pow(double noundef %i.ij, double noundef %i.io) #11
  %i.iq = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.ir = load double, ptr %i.iq, align 8, !tbaa !49
  %i.is = tail call double @llvm.fmuladd.f64(double %i.ih, double %i.ip, double %i.ir)
  br label %bb.bz

bb.bq:                                            ; preds = %bb.a
  %i.it = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.iu = load double, ptr %i.it, align 8, !tbaa !49
  %i.iv = fsub double %2, %i.iu                   ; 2 uses
  %i.iw = fcmp olt double %i.iv, 0.000000e+00
  br i1 %i.iw, label %bb.bz, label %bb.br

bb.br:                                            ; preds = %bb.bq
  %i.ix = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.iy = tail call double @llvm.fabs.f64(double %i.ix)
  %i.iz = fcmp olt double %i.iy, 1.000000e-04
  br i1 %i.iz, label %bb.bz, label %bb.bs

bb.bs:                                            ; preds = %bb.br
  %i.ja = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.jb = load double, ptr %i.ja, align 8, !tbaa !49 ; 2 uses
  %i.jc = tail call double @llvm.fabs.f64(double %i.jb)
  %i.jd = fcmp olt double %i.jc, 1.000000e-04
  br i1 %i.jd, label %bb.bz, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.je = fdiv double %i.iv, %i.ix
  %i.jf = tail call double @log(double noundef %i.je) #11
  %i.jg = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.jh = load double, ptr %i.jg, align 8, !tbaa !49
  %i.ji = tail call double @log(double noundef %i.jh) #11
  %i.jj = fdiv double %i.jf, %i.ji
  %i.jk = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.jl = load double, ptr %i.jk, align 8, !tbaa !49
  %i.jm = fsub double %i.jj, %i.jl
  %i.jn = fdiv double %i.jm, %i.jb
  br label %bb.bz

bb.bu:                                            ; preds = %bb.a
  %i.jo = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.jp = tail call double @llvm.fabs.f64(double %i.jo)
  %i.jq = fcmp olt double %i.jp, 1.000000e-04
  br i1 %i.jq, label %bb.bz, label %bb.bv

bb.bv:                                            ; preds = %bb.bu
  %i.jr = fsub double 1.000000e+00, %2
  %i.js = fdiv double 1.000000e+00, %i.jo         ; 2 uses
  %i.jt = tail call double @pow(double noundef %i.jr, double noundef %i.js) #11
  %i.ju = fsub double 1.000000e+00, %i.jt
  %i.jv = tail call double @pow(double noundef %i.ju, double noundef %i.js) #11
  br label %bb.bz

bb.bw:                                            ; preds = %bb.a
  %i.jw = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.jx = tail call double @pow(double noundef %2, double noundef %i.jw) #11
  %i.jy = fsub double 1.000000e+00, %i.jx
  %i.jz = tail call double @pow(double noundef %i.jy, double noundef %i.jw) #11
  %i.ka = fsub double 1.000000e+00, %i.jz
  br label %bb.bz

bb.bx:                                            ; preds = %bb.a
  %i.kb = load double, ptr %1, align 8, !tbaa !49
  %i.kc = fneg double %i.kb                       ; 2 uses
  %i.kd = tail call double @exp(double noundef %i.kc) #11
  %i.ke = fadd double %i.kd, 1.000000e+00
  %i.kf = fdiv double 1.000000e+00, %i.ke
  %i.kg = fadd double %i.kf, -5.000000e-01
  %i.kh = fdiv double 5.000000e-01, %i.kg
  %i.ki = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double -1.000000e+00)
  %i.kj = fmul double %i.ki, %i.kc
  %i.kk = tail call double @exp(double noundef %i.kj) #11
  %i.kl = fadd double %i.kk, 1.000000e+00
  %i.km = fdiv double 1.000000e+00, %i.kl
  %i.kn = fadd double %i.km, -5.000000e-01
  %i.ko = tail call double @llvm.fmuladd.f64(double %i.kh, double %i.kn, double 5.000000e-01)
  br label %bb.bz

bb.by:                                            ; preds = %bb.a
  %i.kp = load double, ptr %1, align 8, !tbaa !49 ; 2 uses
  %i.kq = fneg double %i.kp
  %i.kr = tail call double @exp(double noundef %i.kq) #11
  %i.ks = fadd double %i.kr, 1.000000e+00
  %i.kt = fdiv double 1.000000e+00, %i.ks
  %i.ku = fadd double %i.kt, -5.000000e-01
  %i.kv = fdiv double 5.000000e-01, %i.ku
  %i.kw = fadd double %2, -5.000000e-01
  %i.kx = fdiv double %i.kw, %i.kv
  %i.ky = fadd double %i.kx, 5.000000e-01
  %i.kz = fdiv double 1.000000e+00, %i.ky
  %i.la = fadd double %i.kz, -1.000000e+00
  %i.lb = tail call double @log(double noundef %i.la) #11
  %i.lc = fdiv double %i.lb, %i.kp
  %i.ld = fsub double 1.000000e+00, %i.lc
  %i.le = fmul double %i.ld, 5.000000e-01
  br label %bb.bz

bb.bz:                                            ; preds = %bb.bp, %bb.bw, %bb.bx, %bb.by, %bb.d, %bb.h, %bb.l, %bb.q, %bb.v, %bb.u, %bb.ab, %bb.aa, %bb.ae, %bb.af, %bb.am, %bb.ak, %bb.ap, %bb.aq, %bb.ar, %bb.ay, %bb.aw, %bb.bc, %bb.bd, %bb.ba, %bb.bh, %bb.bk, %bb.bj, %bb.bo, %bb.bt, %bb.bv, %bb.c, %bb.f, %bb.g, %bb.i, %bb.k, %bb.j, %bb.n, %bb.m, %bb.r, %bb.t, %bb.x, %bb.w, %bb.z, %bb.ad, %bb.aj, %bb.al, %bb.at, %bb.av, %bb.au, %bb.ax, %bb.bf, %bb.be, %bb.bg, %bb.bn, %bb.bm, %bb.bl, %bb.bq, %bb.bs, %bb.br, %bb.bu, %bb.a
  %.0184 = phi double [ 0.000000e+00, %bb.a ], [ %., %bb.c ], [ %i.le, %bb.by ], [ %i.f, %bb.d ], [ %.200, %bb.f ], [ %i.ko, %bb.bx ], [ %i.ka, %bb.bw ], [ %i.o, %bb.h ], [ f0x4480F0CF00000000, %bb.g ], [ %i.ab, %bb.l ], [ 0.000000e+00, %bb.i ], [ 0.000000e+00, %bb.k ], [ 0.000000e+00, %bb.j ], [ %spec.store.select, %bb.q ], [ 0.000000e+00, %bb.m ], [ %i.bh, %bb.u ], [ 0.000000e+00, %bb.r ], [ %i.bj, %bb.v ], [ 0.000000e+00, %bb.t ], [ %i.cb, %bb.aa ], [ 0.000000e+00, %bb.w ], [ %i.cf, %bb.ab ], [ %i.cq, %bb.ae ], [ 0.000000e+00, %bb.z ], [ %i.ct, %bb.af ], [ 0.000000e+00, %bb.ad ], [ %i.dn, %bb.ak ], [ 0.000000e+00, %bb.aj ], [ %i.ds, %bb.am ], [ %i.eg, %bb.ap ], [ %i.ei, %bb.aq ], [ %i.en, %bb.ar ], [ 0.000000e+00, %bb.al ], [ 0.000000e+00, %bb.at ], [ %i.fm, %bb.aw ], [ 0.000000e+00, %bb.au ], [ %i.fq, %bb.ay ], [ %i.ga, %bb.ba ], [ %i.gd, %bb.bc ], [ %i.gh, %bb.bd ], [ 0.000000e+00, %bb.ax ], [ 0.000000e+00, %bb.be ], [ %i.gy, %bb.bh ], [ %i.hi, %bb.bj ], [ %i.ho, %bb.bk ], [ 0.000000e+00, %bb.bg ], [ %i.ig, %bb.bo ], [ %i.is, %bb.bp ], [ 0.000000e+00, %bb.bl ], [ 0.000000e+00, %bb.bq ], [ %i.jn, %bb.bt ], [ 0.000000e+00, %bb.br ], [ %i.jv, %bb.bv ], [ 0.000000e+00, %bb.n ], [ 0.000000e+00, %bb.x ], [ 0.000000e+00, %bb.bu ], [ 0.000000e+00, %bb.av ], [ 0.000000e+00, %bb.bf ], [ 0.000000e+00, %bb.bn ], [ 0.000000e+00, %bb.bm ], [ 0.000000e+00, %bb.bs ]
  ret double %.0184
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #9

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #9

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare float @llvm.fmuladd.f32(float, float, float) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.log10.f64(double) #6

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memcpy.p0.p0.i64(ptr noalias writeonly captures(none), ptr noalias readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <8 x double> @llvm.fmuladd.v8f64(<8 x double>, <8 x double>, <8 x double>) #6

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #7 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #8 = { nofree norecurse nosync nounwind memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read, errnomem: write) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { memory(none) }

!llvm.module.flags = !{!5, !6, !7}
!llvm.ident = !{!8}
!llvm.errno.tbaa = !{!13}

!0 = distinct !{!0, !21}
!1 = distinct !{!1, !21}
!2 = distinct !{null}
!3 = distinct !{!3, !21}
!4 = distinct !{!4, !21}
!5 = !{i32 8, !"PIC Level", i32 2}
!6 = !{i32 7, !"uwtable", i32 2}
!7 = !{i32 7, !"frame-pointer", i32 2}
!8 = !{!"Ubuntu clang version 24.0.0 (++20260816081927+7cb5d896117c-1~exp1~20260816201937.1790)"}
!9 = !{!"Simple C/C++ TBAA"}
!10 = !{!"omnipotent char", !9, i64 0}
!11 = !{!"int", !10, i64 0}
!12 = !{!"__libc_errno", !11, i64 0}
!13 = !{!12, !11, i64 0}
!14 = !{!"any pointer", !10, i64 0}
!15 = !{!14, !14, i64 0}
!16 = !{!"p1 _ZTS33_cmsParametricCurvesCollection_st", !14, i64 0}
!17 = !{!16, !16, i64 0}
!18 = !{!"p1 _ZTS18_cmsContext_struct", !14, i64 0}
!19 = !{!"_cmsParametricCurvesCollection_st", !11, i64 0, !10, i64 4, !10, i64 84, !14, i64 168, !16, i64 176}
!20 = !{!19, !16, i64 176}
!21 = !{!"llvm.loop.mustprogress"}
!22 = !{!19, !14, i64 168}
!23 = !{!19, !11, i64 0}
!24 = !{!"p1 _ZTS17_cms_interp_struc", !14, i64 0}
!25 = !{!"any p2 pointer", !14, i64 0}
!26 = !{!"p2 _ZTS17_cms_interp_struc", !25, i64 0}
!27 = !{!"p1 short", !14, i64 0}
!28 = !{!"_cms_curve_struct", !24, i64 0, !11, i64 8, !14, i64 16, !26, i64 24, !25, i64 32, !11, i64 40, !27, i64 48}
!29 = !{!28, !11, i64 40}
!30 = !{!28, !27, i64 48}
!31 = !{!28, !14, i64 16}
!32 = !{!28, !25, i64 32}
!33 = !{!28, !11, i64 8}
!34 = !{!"short", !10, i64 0}
!35 = !{!34, !34, i64 0}
!36 = !{!"llvm.loop.isvectorized", i32 1}
!37 = !{!"llvm.loop.unroll.runtime.disable"}
!38 = !{!28, !26, i64 24}
!39 = !{!"float", !10, i64 0}
!40 = !{!"p1 float", !14, i64 0}
!41 = !{!"", !39, i64 0, !39, i64 4, !11, i64 8, !10, i64 16, !11, i64 96, !40, i64 104}
!42 = !{!41, !11, i64 8}
!43 = !{!41, !11, i64 96}
!44 = !{!24, !24, i64 0}
end_hunk_0
