Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/t1_16?download=true
begin_hunk_0_@t1_16:bb.a
  %i.bv = getelementptr inbounds nuw i8, ptr %.0575578, i64 80
  %i.bw = load i64, ptr %i.bv, align 8, !tbaa !11 ; 2 uses
  %i.bx = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.bw ; 2 uses
  %i.by = load double, ptr %i.bx, align 8, !tbaa !13 ; 2 uses
  %i.bz = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.bw ; 2 uses
  %i.ca = load double, ptr %i.bz, align 8, !tbaa !13 ; 2 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0574579, i64 144
  %i.cc = fneg double %i.by
  %i.cd = load <2 x double>, ptr %i.cb, align 8, !tbaa !13 ; 2 uses
  %i.ce = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cf = insertelement <2 x double> poison, double %i.ca, i64 0
  %i.cg = insertelement <2 x double> %i.cf, double %i.cc, i64 1
  %i.ch = fmul <2 x double> %i.ce, %i.cg
  %i.ci = shufflevector <2 x double> %i.cd, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cj = insertelement <2 x double> poison, double %i.by, i64 0
  %i.ck = insertelement <2 x double> %i.cj, double %i.ca, i64 1
  %i.cl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ci, <2 x double> %i.ck, <2 x double> %i.ch) ; 3 uses
  %i.cm = getelementptr inbounds nuw i8, ptr %.0575578, i64 112
  %i.cn = load i64, ptr %i.cm, align 8, !tbaa !11 ; 2 uses
  %i.co = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.cn ; 2 uses
  %i.cp = load double, ptr %i.co, align 8, !tbaa !13 ; 2 uses
  %i.cq = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.cn ; 2 uses
  %i.cr = load double, ptr %i.cq, align 8, !tbaa !13 ; 2 uses
  %i.cs = getelementptr inbounds nuw i8, ptr %.0574579, i64 208
  %i.ct = fneg double %i.cp
  %i.cu = load <2 x double>, ptr %i.cs, align 8, !tbaa !13 ; 2 uses
  %i.cv = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cw = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.cx = insertelement <2 x double> %i.cw, double %i.ct, i64 1
  %i.cy = fmul <2 x double> %i.cv, %i.cx
  %i.cz = shufflevector <2 x double> %i.cu, <2 x double> poison, <2 x i32> zeroinitializer
  %i.da = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.db = insertelement <2 x double> %i.da, double %i.cr, i64 1
  %i.dc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.db, <2 x double> %i.cy) ; 3 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.0575578, i64 48
  %i.de = load i64, ptr %i.dd, align 8, !tbaa !11 ; 2 uses
  %i.df = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.de ; 2 uses
  %i.dg = load double, ptr %i.df, align 8, !tbaa !13 ; 2 uses
  %i.dh = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.de ; 2 uses
  %i.di = load double, ptr %i.dh, align 8, !tbaa !13 ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %.0574579, i64 80
  %i.dk = fneg double %i.dg
  %i.dl = load <2 x double>, ptr %i.dj, align 8, !tbaa !13 ; 2 uses
  %i.dm = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dn = insertelement <2 x double> poison, double %i.di, i64 0
  %i.do = insertelement <2 x double> %i.dn, double %i.dk, i64 1
  %i.dp = fmul <2 x double> %i.dm, %i.do
  %i.dq = shufflevector <2 x double> %i.dl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dr = insertelement <2 x double> poison, double %i.dg, i64 0
  %i.ds = insertelement <2 x double> %i.dr, double %i.di, i64 1
  %i.dt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dq, <2 x double> %i.ds, <2 x double> %i.dp) ; 3 uses
  %i.du = getelementptr inbounds nuw i8, ptr %.0575578, i64 120
  %i.dv = load i64, ptr %i.du, align 8, !tbaa !11 ; 2 uses
  %i.dw = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.dv ; 2 uses
  %i.dx = load double, ptr %i.dw, align 8, !tbaa !13 ; 2 uses
  %i.dy = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.dv ; 2 uses
  %i.dz = load double, ptr %i.dy, align 8, !tbaa !13 ; 2 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.0574579, i64 224
  %i.eb = fneg double %i.dx
  %i.ec = load <2 x double>, ptr %i.ea, align 8, !tbaa !13 ; 2 uses
  %i.ed = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = insertelement <2 x double> poison, double %i.dz, i64 0
  %i.ef = insertelement <2 x double> %i.ee, double %i.eb, i64 1
  %i.eg = fmul <2 x double> %i.ed, %i.ef
  %i.eh = shufflevector <2 x double> %i.ec, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ei = insertelement <2 x double> poison, double %i.dx, i64 0
  %i.ej = insertelement <2 x double> %i.ei, double %i.dz, i64 1
  %i.ek = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eh, <2 x double> %i.ej, <2 x double> %i.eg) ; 4 uses
  %i.el = getelementptr inbounds nuw i8, ptr %.0575578, i64 88
  %i.em = load i64, ptr %i.el, align 8, !tbaa !11 ; 2 uses
  %i.en = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.em ; 2 uses
  %i.eo = load double, ptr %i.en, align 8, !tbaa !13 ; 2 uses
  %i.ep = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.em ; 2 uses
  %i.eq = load double, ptr %i.ep, align 8, !tbaa !13 ; 2 uses
  %i.er = getelementptr inbounds nuw i8, ptr %.0574579, i64 160
  %i.es = fneg double %i.eo
  %i.et = load <2 x double>, ptr %i.er, align 8, !tbaa !13 ; 2 uses
  %i.eu = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ev = insertelement <2 x double> poison, double %i.eq, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.es, i64 1
  %i.ex = fmul <2 x double> %i.eu, %i.ew
  %i.ey = shufflevector <2 x double> %i.et, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ez = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.eq, i64 1
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ey, <2 x double> %i.fa, <2 x double> %i.ex) ; 4 uses
  %i.fc = getelementptr inbounds nuw i8, ptr %.0575578, i64 56
  %i.fd = load i64, ptr %i.fc, align 8, !tbaa !11 ; 2 uses
  %i.fe = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.fd ; 2 uses
  %i.ff = load double, ptr %i.fe, align 8, !tbaa !13 ; 2 uses
  %i.fg = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.fd ; 2 uses
  %i.fh = load double, ptr %i.fg, align 8, !tbaa !13 ; 2 uses
  %i.fi = getelementptr inbounds nuw i8, ptr %.0574579, i64 96
  %i.fj = fneg double %i.ff
  %i.fk = load <2 x double>, ptr %i.fi, align 8, !tbaa !13 ; 2 uses
  %i.fl = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fm = insertelement <2 x double> poison, double %i.fh, i64 0
  %i.fn = insertelement <2 x double> %i.fm, double %i.fj, i64 1
  %i.fo = fmul <2 x double> %i.fl, %i.fn
  %i.fp = shufflevector <2 x double> %i.fk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fq = insertelement <2 x double> poison, double %i.ff, i64 0
  %i.fr = insertelement <2 x double> %i.fq, double %i.fh, i64 1
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fp, <2 x double> %i.fr, <2 x double> %i.fo) ; 4 uses
  %i.ft = getelementptr inbounds nuw i8, ptr %.0575578, i64 24
  %i.fu = load i64, ptr %i.ft, align 8, !tbaa !11 ; 2 uses
  %i.fv = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.fu ; 2 uses
  %i.fw = load double, ptr %i.fv, align 8, !tbaa !13 ; 2 uses
  %i.fx = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.fu ; 2 uses
  %i.fy = load double, ptr %i.fx, align 8, !tbaa !13 ; 2 uses
  %i.fz = getelementptr inbounds nuw i8, ptr %.0574579, i64 32
  %i.ga = fneg double %i.fw
  %i.gb = load <2 x double>, ptr %i.fz, align 8, !tbaa !13 ; 2 uses
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gd = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.ge = insertelement <2 x double> %i.gd, double %i.ga, i64 1
  %i.gf = fmul <2 x double> %i.gc, %i.ge
  %i.gg = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gh = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gi = insertelement <2 x double> %i.gh, double %i.fy, i64 1
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gg, <2 x double> %i.gi, <2 x double> %i.gf) ; 4 uses
  %i.gk = getelementptr inbounds nuw i8, ptr %.0575578, i64 8
  %i.gl = load i64, ptr %i.gk, align 8, !tbaa !11 ; 2 uses
  %i.gm = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.gl ; 2 uses
  %i.gn = load double, ptr %i.gm, align 8, !tbaa !13 ; 2 uses
  %i.go = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.gl ; 2 uses
  %i.gp = load double, ptr %i.go, align 8, !tbaa !13 ; 2 uses
  %i.gq = fneg double %i.gn
  %i.gr = load <2 x double>, ptr %.0574579, align 8, !tbaa !13 ; 2 uses
  %i.gs = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.gt = insertelement <2 x double> poison, double %i.gp, i64 0
  %i.gu = insertelement <2 x double> %i.gt, double %i.gq, i64 1
  %i.gv = fmul <2 x double> %i.gs, %i.gu
  %i.gw = shufflevector <2 x double> %i.gr, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = insertelement <2 x double> poison, double %i.gn, i64 0
  %i.gy = insertelement <2 x double> %i.gx, double %i.gp, i64 1
  %i.gz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> %i.gy, <2 x double> %i.gv) ; 4 uses
  %i.ha = getelementptr inbounds nuw i8, ptr %.0575578, i64 104
  %i.hb = load i64, ptr %i.ha, align 8, !tbaa !11 ; 2 uses
  %i.hc = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.hb ; 2 uses
  %i.hd = load double, ptr %i.hc, align 8, !tbaa !13 ; 2 uses
  %i.he = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.hb ; 2 uses
  %i.hf = load double, ptr %i.he, align 8, !tbaa !13 ; 2 uses
  %i.hg = getelementptr inbounds nuw i8, ptr %.0574579, i64 192
  %i.hh = fneg double %i.hd
  %i.hi = load <2 x double>, ptr %i.hg, align 8, !tbaa !13 ; 2 uses
  %i.hj = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.hk = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hl = insertelement <2 x double> %i.hk, double %i.hh, i64 1
  %i.hm = fmul <2 x double> %i.hj, %i.hl
  %i.hn = shufflevector <2 x double> %i.hi, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hp = insertelement <2 x double> %i.ho, double %i.hf, i64 1
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hn, <2 x double> %i.hp, <2 x double> %i.hm) ; 4 uses
  %i.hr = getelementptr inbounds nuw i8, ptr %.0575578, i64 72
  %i.hs = load i64, ptr %i.hr, align 8, !tbaa !11 ; 2 uses
  %i.ht = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.hs ; 2 uses
  %i.hu = load double, ptr %i.ht, align 8, !tbaa !13 ; 2 uses
  %i.hv = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.hs ; 2 uses
  %i.hw = load double, ptr %i.hv, align 8, !tbaa !13 ; 2 uses
  %i.hx = getelementptr inbounds nuw i8, ptr %.0574579, i64 128
  %i.hy = fneg double %i.hu
  %i.hz = load <2 x double>, ptr %i.hx, align 8, !tbaa !13 ; 2 uses
  %i.ia = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ib = insertelement <2 x double> poison, double %i.hw, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.hy, i64 1
  %i.id = fmul <2 x double> %i.ia, %i.ic
  %i.ie = shufflevector <2 x double> %i.hz, <2 x double> poison, <2 x i32> zeroinitializer
  %i.if = insertelement <2 x double> poison, double %i.hu, i64 0
  %i.ig = insertelement <2 x double> %i.if, double %i.hw, i64 1
  %i.ih = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ie, <2 x double> %i.ig, <2 x double> %i.id) ; 4 uses
  %i.ii = getelementptr inbounds nuw i8, ptr %.0575578, i64 40
  %i.ij = load i64, ptr %i.ii, align 8, !tbaa !11 ; 2 uses
  %i.ik = getelementptr inbounds [8 x i8], ptr %.0581, i64 %i.ij ; 2 uses
  %i.il = load double, ptr %i.ik, align 8, !tbaa !13 ; 2 uses
  %i.im = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %i.ij ; 2 uses
  %i.in = load double, ptr %i.im, align 8, !tbaa !13 ; 2 uses
  %i.io = getelementptr inbounds nuw i8, ptr %.0574579, i64 64
  %i.ip = fneg double %i.il
  %i.iq = load <2 x double>, ptr %i.io, align 8, !tbaa !13 ; 2 uses
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.is = insertelement <2 x double> poison, double %i.in, i64 0
  %i.it = insertelement <2 x double> %i.is, double %i.ip, i64 1
  %i.iu = fmul <2 x double> %i.ir, %i.it
  %i.iv = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.iw = insertelement <2 x double> poison, double %i.il, i64 0
  %i.ix = insertelement <2 x double> %i.iw, double %i.in, i64 1
  %i.iy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iv, <2 x double> %i.ix, <2 x double> %i.iu) ; 4 uses
  %i.iz = shufflevector <2 x double> %i.gz, <2 x double> %i.ek, <2 x i32> <i32 0, i32 2>
  %i.ja = shufflevector <2 x double> %i.ih, <2 x double> %i.fs, <2 x i32> <i32 0, i32 2>
  %i.jb = fsub <2 x double> %i.iz, %i.ja          ; 3 uses
  %i.jc = shufflevector <2 x double> %i.iy, <2 x double> %i.gj, <2 x i32> <i32 1, i32 3>
  %i.jd = shufflevector <2 x double> %i.hq, <2 x double> %i.fb, <2 x i32> <i32 1, i32 3>
  %i.je = fsub <2 x double> %i.jc, %i.jd          ; 3 uses
  %i.jf = shufflevector <2 x double> %i.gz, <2 x double> %i.ek, <2 x i32> <i32 1, i32 3>
  %i.jg = shufflevector <2 x double> %i.ih, <2 x double> %i.fs, <2 x i32> <i32 1, i32 3>
  %i.jh = fsub <2 x double> %i.jf, %i.jg          ; 3 uses
  %i.ji = shufflevector <2 x double> %i.iy, <2 x double> %i.gj, <2 x i32> <i32 0, i32 2>
  %i.jj = shufflevector <2 x double> %i.hq, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.jk = fsub <2 x double> %i.ji, %i.jj          ; 3 uses
  %i.jl = fadd <2 x double> %i.jh, %i.jk          ; 3 uses
  %i.jm = fsub <2 x double> %i.jb, %i.je          ; 3 uses
  %i.jn = fmul <2 x double> %i.jm, <double f0xBFED906BCF328D46, double f0x3FED906BCF328D46>
  %i.jo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> splat (double f0x3FD87DE2A6AEA963), <2 x double> %i.jn) ; 4 uses
  %i.jp = insertelement <2 x double> poison, double %i.d, i64 0
  %i.jq = insertelement <2 x double> %i.jp, double %i.e, i64 1 ; 2 uses
  %i.jr = fadd <2 x double> %i.jq, %i.v           ; 2 uses
  %i.js = fadd <2 x double> %i.am, %i.bd          ; 2 uses
  %i.jt = shufflevector <2 x double> %i.ek, <2 x double> %i.gz, <2 x i32> <i32 1, i32 2>
  %i.ju = shufflevector <2 x double> %i.fs, <2 x double> %i.ih, <2 x i32> <i32 1, i32 2>
  %i.jv = fadd <2 x double> %i.jt, %i.ju          ; 2 uses
  %i.jw = shufflevector <2 x double> %i.fb, <2 x double> %i.hq, <2 x i32> <i32 1, i32 2>
  %i.jx = shufflevector <2 x double> %i.gj, <2 x double> %i.iy, <2 x i32> <i32 1, i32 2>
  %i.jy = fadd <2 x double> %i.jw, %i.jx          ; 2 uses
  %i.jz = fsub <2 x double> %i.jv, %i.jy          ; 2 uses
  %i.ka = shufflevector <2 x double> %i.ek, <2 x double> %i.gz, <2 x i32> <i32 0, i32 3>
  %i.kb = shufflevector <2 x double> %i.fs, <2 x double> %i.ih, <2 x i32> <i32 0, i32 3>
  %i.kc = fadd <2 x double> %i.ka, %i.kb          ; 2 uses
  %i.kd = shufflevector <2 x double> %i.fb, <2 x double> %i.hq, <2 x i32> <i32 0, i32 3>
  %i.ke = shufflevector <2 x double> %i.gj, <2 x double> %i.iy, <2 x i32> <i32 0, i32 3>
  %i.kf = fadd <2 x double> %i.kd, %i.ke          ; 2 uses
  %i.kg = fsub <2 x double> %i.kc, %i.kf          ; 2 uses
  %i.kh = fsub <2 x double> %i.jr, %i.js          ; 2 uses
  %i.ki = fsub <2 x double> %i.kg, %i.jz          ; 2 uses
  %i.kj = shufflevector <2 x double> %i.ki, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.kk = fadd <2 x double> %i.jz, %i.kg          ; 2 uses
  %i.kl = fsub <2 x double> %i.kj, %i.kk
  %i.km = fmul <2 x double> %i.kl, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.kn = shufflevector <2 x double> %i.kk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.ko = fadd <2 x double> %i.ki, %i.kn
  %i.kp = fmul <2 x double> %i.ko, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %7 = shufflevector <2 x double> %i.jh, <2 x double> %i.jb, <2 x i32> <i32 0, i32 3> ; 2 uses
  %8 = shufflevector <2 x double> %i.jk, <2 x double> %i.je, <2 x i32> <i32 0, i32 3> ; 2 uses
  %9 = fsub <2 x double> %7, %8                   ; 2 uses
  %i.kq = fadd <2 x double> %7, %8                ; 2 uses
  %10 = shufflevector <2 x double> %9, <2 x double> %i.kq, <2 x i32> <i32 0, i32 3>
  %11 = shufflevector <2 x double> %i.jb, <2 x double> %i.jh, <2 x i32> <i32 0, i32 3> ; 2 uses
  %12 = shufflevector <2 x double> %i.je, <2 x double> %i.jk, <2 x i32> <i32 0, i32 3> ; 2 uses
  %i.kr = fadd <2 x double> %11, %12              ; 2 uses
  %13 = fsub <2 x double> %11, %12                ; 2 uses
  %i.ks = shufflevector <2 x double> %i.kr, <2 x double> %13, <2 x i32> <i32 0, i32 3>
  %14 = fmul <2 x double> %i.ks, <double f0x3FED906BCF328D46, double f0xBFD87DE2A6AEA963>
  %15 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %10, <2 x double> <double f0x3FD87DE2A6AEA963, double f0x3FED906BCF328D46>, <2 x double> %14) ; 4 uses
  %i.kt = shufflevector <2 x double> %i.kr, <2 x double> %i.kq, <2 x i32> <i32 0, i32 3>
  %16 = fmul <2 x double> %i.kt, <double f0xBFD87DE2A6AEA963, double f0x3FD87DE2A6AEA963>
  %i.ku = shufflevector <2 x double> %9, <2 x double> %13, <2 x i32> <i32 0, i32 3>
  %17 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> splat (double f0x3FED906BCF328D46), <2 x double> %16) ; 4 uses
  %i.kv = fsub <2 x double> %i.jq, %i.v           ; 2 uses
  %18 = fsub <2 x double> %i.am, %i.bd
  %19 = shufflevector <2 x double> %18, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %20 = shufflevector <2 x double> %i.bu, <2 x double> %i.dc, <2 x i32> <i32 0, i32 2>
  %21 = shufflevector <2 x double> %i.cl, <2 x double> %i.dt, <2 x i32> <i32 0, i32 2>
  %22 = fsub <2 x double> %20, %21                ; 3 uses
  %23 = shufflevector <2 x double> %i.bu, <2 x double> %i.dc, <2 x i32> <i32 1, i32 3>
  %24 = shufflevector <2 x double> %i.cl, <2 x double> %i.dt, <2 x i32> <i32 1, i32 3>
  %i.kw = fsub <2 x double> %23, %24              ; 3 uses
  %25 = fadd <2 x double> %22, %i.kw              ; 2 uses
  %26 = shufflevector <2 x double> %22, <2 x double> %i.kw, <2 x i32> <i32 1, i32 2>
  %27 = shufflevector <2 x double> %i.kw, <2 x double> %22, <2 x i32> <i32 1, i32 2>
  %28 = fsub <2 x double> %26, %27                ; 2 uses
  %i.kx = fsub <2 x double> %28, %25
  %i.ky = fmul <2 x double> %i.kx, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %i.kz = fsub <2 x double> %i.kv, %19            ; 2 uses
  %i.la = fadd <2 x double> %i.kv, %19            ; 2 uses
  %29 = shufflevector <2 x double> %i.kz, <2 x double> %i.la, <2 x i32> <i32 3, i32 0> ; 2 uses
  %i.lb = fadd <2 x double> %29, %i.ky            ; 3 uses
  %30 = shufflevector <2 x double> %i.jm, <2 x double> %i.jo, <2 x i32> <i32 0, i32 3>
  %31 = fmul <2 x double> %30, <double f0x3FD87DE2A6AEA963, double 1.000000e+00>
  %32 = insertelement <2 x double> %i.jl, double -0.000000e+00, i64 1
  %33 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %32, <2 x double> <double f0x3FED906BCF328D46, double 0.000000e+00>, <2 x double> %31) ; 2 uses
  %34 = shufflevector <2 x double> %i.jl, <2 x double> %i.jo, <2 x i32> <i32 1, i32 2>
  %35 = fmul <2 x double> %34, <double f0xBFED906BCF328D46, double 1.000000e+00>
  %36 = shufflevector <2 x double> %i.jm, <2 x double> <double poison, double -0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %37 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %36, <2 x double> <double f0x3FD87DE2A6AEA963, double 0.000000e+00>, <2 x double> %35) ; 2 uses
  %38 = fsub <2 x double> %37, %33                ; 3 uses
  %39 = shufflevector <2 x double> %i.jo, <2 x double> %37, <2 x i32> <i32 1, i32 2>
  %40 = shufflevector <2 x double> %i.jo, <2 x double> %33, <2 x i32> <i32 0, i32 2>
  %41 = fadd <2 x double> %39, %40                ; 3 uses
  %i.lc = fsub <2 x double> %29, %i.ky            ; 3 uses
  %foldExtExtBinop = fsub <2 x double> %i.lb, %41
  %i.ld = extractelement <2 x double> %foldExtExtBinop, i64 1
  store double %i.ld, ptr %i.en, align 8, !tbaa !13
  %foldExtExtBinop584 = fsub <2 x double> %i.lb, %41
  %i.le = extractelement <2 x double> %foldExtExtBinop584, i64 0
  store double %i.le, ptr %i.ep, align 8, !tbaa !13
  %i.lf = fadd <2 x double> %i.lb, %41            ; 2 uses
  %i.lg = extractelement <2 x double> %i.lf, i64 1
  store double %i.lg, ptr %i.fv, align 8, !tbaa !13
  %i.lh = extractelement <2 x double> %i.lf, i64 0
  store double %i.lh, ptr %i.fx, align 8, !tbaa !13
  %foldExtExtBinop586 = fsub <2 x double> %i.lc, %38
  %i.li = extractelement <2 x double> %foldExtExtBinop586, i64 1
  store double %i.li, ptr %i.dw, align 8, !tbaa !13
  %foldExtExtBinop588 = fsub <2 x double> %i.lc, %38
  %i.lj = extractelement <2 x double> %foldExtExtBinop588, i64 0
  store double %i.lj, ptr %i.dy, align 8, !tbaa !13
  %i.lk = fadd <2 x double> %i.lc, %38            ; 2 uses
  %i.ll = extractelement <2 x double> %i.lk, i64 1
  store double %i.ll, ptr %i.fe, align 8, !tbaa !13
  %i.lm = extractelement <2 x double> %i.lk, i64 0
  store double %i.lm, ptr %i.fg, align 8, !tbaa !13
  %42 = fadd <2 x double> %25, %28
  %43 = fmul <2 x double> %42, splat (double f0x3FE6A09E667F3BCD) ; 2 uses
  %44 = shufflevector <2 x double> %i.la, <2 x double> %i.kz, <2 x i32> <i32 0, i32 3> ; 2 uses
  %45 = fadd <2 x double> %44, %43                ; 2 uses
  %46 = shufflevector <2 x double> %15, <2 x double> %17, <2 x i32> <i32 1, i32 3>
  %47 = shufflevector <2 x double> %15, <2 x double> %17, <2 x i32> <i32 0, i32 2>
  %48 = fadd <2 x double> %46, %47                ; 2 uses
  %49 = fsub <2 x double> %45, %48                ; 2 uses
  %50 = extractelement <2 x double> %49, i64 0
  %i.ln = extractelement <2 x double> %49, i64 1
  %51 = fadd <2 x double> %45, %48                ; 2 uses
  %52 = shufflevector <2 x double> %17, <2 x double> %15, <2 x i32> <i32 0, i32 3>
  %53 = shufflevector <2 x double> %17, <2 x double> %15, <2 x i32> <i32 1, i32 2>
  %54 = fsub <2 x double> %52, %53                ; 2 uses
  %55 = fsub <2 x double> %44, %43                ; 2 uses
  %56 = fsub <2 x double> %55, %54                ; 2 uses
  %i.lo = extractelement <2 x double> %56, i64 0
  %57 = extractelement <2 x double> %56, i64 1
  %58 = fadd <2 x double> %55, %54                ; 2 uses
  %59 = fadd <2 x double> %i.bu, %i.cl            ; 3 uses
  %i.lp = fadd <2 x double> %i.dc, %i.dt          ; 3 uses
  %60 = shufflevector <2 x double> %59, <2 x double> %i.lp, <2 x i32> <i32 1, i32 2>
  %61 = shufflevector <2 x double> %59, <2 x double> %i.lp, <2 x i32> <i32 3, i32 0>
  %62 = fsub <2 x double> %60, %61                ; 2 uses
  %i.lq = fadd <2 x double> %i.kh, %62            ; 2 uses
  %63 = fsub <2 x double> %i.kh, %62              ; 2 uses
  %64 = fsub <2 x double> %i.lq, %i.kp            ; 2 uses
  %65 = extractelement <2 x double> %64, i64 0
  %66 = extractelement <2 x double> %64, i64 1
  %i.lr = fadd <2 x double> %i.lq, %i.kp          ; 2 uses
  %i.ls = fsub <2 x double> %63, %i.km            ; 2 uses
  %i.lt = extractelement <2 x double> %i.ls, i64 0
  %67 = extractelement <2 x double> %i.ls, i64 1
  %68 = fadd <2 x double> %63, %i.km              ; 2 uses
  store double %65, ptr %i.bx, align 8, !tbaa !13
  store double %66, ptr %i.bz, align 8, !tbaa !13
  %i.lu = extractelement <2 x double> %i.lr, i64 0
  store double %i.lu, ptr %i.bg, align 8, !tbaa !13
  %i.lv = extractelement <2 x double> %i.lr, i64 1
  store double %i.lv, ptr %i.bi, align 8, !tbaa !13
  store double %i.lt, ptr %i.co, align 8, !tbaa !13
  store double %67, ptr %i.cq, align 8, !tbaa !13
  %69 = extractelement <2 x double> %68, i64 0
  store double %69, ptr %i.df, align 8, !tbaa !13
  %70 = extractelement <2 x double> %68, i64 1
  store double %70, ptr %i.dh, align 8, !tbaa !13
  store double %50, ptr %i.ht, align 8, !tbaa !13
  store double %i.ln, ptr %i.hv, align 8, !tbaa !13
  %i.lw = extractelement <2 x double> %51, i64 0
  store double %i.lw, ptr %i.gm, align 8, !tbaa !13
  %i.lx = extractelement <2 x double> %51, i64 1
  store double %i.lx, ptr %i.go, align 8, !tbaa !13
  store double %i.lo, ptr %i.hc, align 8, !tbaa !13
  store double %57, ptr %i.he, align 8, !tbaa !13
  %i.ly = extractelement <2 x double> %58, i64 0
  store double %i.ly, ptr %i.ik, align 8, !tbaa !13
  %i.lz = extractelement <2 x double> %58, i64 1
  store double %i.lz, ptr %i.im, align 8, !tbaa !13
  %i.ma = fadd <2 x double> %59, %i.lp            ; 2 uses
  %i.mb = fadd <2 x double> %i.jr, %i.js          ; 2 uses
  %i.mc = fadd <2 x double> %i.mb, %i.ma          ; 2 uses
  %i.md = fadd <2 x double> %i.kc, %i.kf          ; 2 uses
  %i.me = fadd <2 x double> %i.jv, %i.jy          ; 2 uses
  %i.mf = shufflevector <2 x double> %i.me, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mg = fadd <2 x double> %i.mf, %i.md          ; 2 uses
  %i.mh = fsub <2 x double> %i.mc, %i.mg          ; 2 uses
  %i.mi = extractelement <2 x double> %i.mh, i64 0
  store double %i.mi, ptr %i.h, align 8, !tbaa !13
  %i.mj = extractelement <2 x double> %i.mh, i64 1
  store double %i.mj, ptr %i.j, align 8, !tbaa !13
  %i.mk = fadd <2 x double> %i.mc, %i.mg          ; 2 uses
  %i.ml = extractelement <2 x double> %i.mk, i64 0
  store double %i.ml, ptr %.0581, align 8, !tbaa !13
  %i.mm = extractelement <2 x double> %i.mk, i64 1
  store double %i.mm, ptr %.0573580, align 8, !tbaa !13
  %i.mn = fsub <2 x double> %i.mb, %i.ma          ; 2 uses
  %i.mo = shufflevector <2 x double> %i.md, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.mp = fsub <2 x double> %i.mo, %i.me          ; 2 uses
  %i.mq = fsub <2 x double> %i.mn, %i.mp          ; 2 uses
  %i.mr = extractelement <2 x double> %i.mq, i64 0
  store double %i.mr, ptr %i.ap, align 8, !tbaa !13
  %i.ms = extractelement <2 x double> %i.mq, i64 1
  store double %i.ms, ptr %i.ar, align 8, !tbaa !13
  %i.mt = fadd <2 x double> %i.mn, %i.mp          ; 2 uses
  %i.mu = extractelement <2 x double> %i.mt, i64 0
  store double %i.mu, ptr %i.y, align 8, !tbaa !13
  %i.mv = extractelement <2 x double> %i.mt, i64 1
  store double %i.mv, ptr %i.aa, align 8, !tbaa !13
  %i.mw = add nsw i64 %.0576577, 1                ; 2 uses
  %i.mx = getelementptr inbounds [8 x i8], ptr %.0581, i64 %6
  %i.my = getelementptr inbounds [8 x i8], ptr %.0573580, i64 %6
  %i.mz = getelementptr inbounds nuw i8, ptr %.0574579, i64 240
  %i.na = getelementptr inbounds [8 x i8], ptr %.0575578, i64 %i.c
  %exitcond.not = icmp eq i64 %i.mw, %5
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
