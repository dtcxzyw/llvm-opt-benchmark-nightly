Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/fftw3/original/hf_9?download=true
begin_hunk_0_@hf_9:bb.a
  %i.k = load double, ptr %i.j, align 8, !tbaa !13 ; 2 uses
  %i.l = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.i ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !13 ; 2 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.0320325, i64 32
  %i.o = fneg double %i.k
  %i.p = load <2 x double>, ptr %i.n, align 8, !tbaa !13 ; 2 uses
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.r = insertelement <2 x double> poison, double %i.m, i64 0
  %i.s = insertelement <2 x double> %i.r, double %i.o, i64 1
  %i.t = fmul <2 x double> %i.q, %i.s
  %i.u = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.v = insertelement <2 x double> poison, double %i.k, i64 0
  %i.w = insertelement <2 x double> %i.v, double %i.m, i64 1
  %i.x = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> %i.w, <2 x double> %i.t) ; 3 uses
  %i.y = getelementptr inbounds nuw i8, ptr %.0321324, i64 48
  %i.z = load i64, ptr %i.y, align 8, !tbaa !11   ; 2 uses
  %i.aa = getelementptr inbounds [8 x i8], ptr %.0327, i64 %i.z ; 2 uses
  %i.ab = load double, ptr %i.aa, align 8, !tbaa !13 ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.z ; 2 uses
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !13 ; 2 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.0320325, i64 80
  %i.af = fneg double %i.ab
  %i.ag = load <2 x double>, ptr %i.ae, align 8, !tbaa !13 ; 2 uses
  %i.ah = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ai = insertelement <2 x double> poison, double %i.ad, i64 0
  %i.aj = insertelement <2 x double> %i.ai, double %i.af, i64 1
  %i.ak = fmul <2 x double> %i.ah, %i.aj
  %i.al = shufflevector <2 x double> %i.ag, <2 x double> poison, <2 x i32> zeroinitializer
  %i.am = insertelement <2 x double> poison, double %i.ab, i64 0
  %i.an = insertelement <2 x double> %i.am, double %i.ad, i64 1
  %i.ao = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.an, <2 x double> %i.ak) ; 3 uses
  %i.ap = fadd <2 x double> %i.x, %i.ao           ; 3 uses
  %i.aq = insertelement <2 x double> poison, double %i.f, i64 0
  %i.ar = insertelement <2 x double> %i.aq, double %i.g, i64 1
  %i.as = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> splat (double -5.000000e-01), <2 x double> %i.ar) ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %.0321324, i64 16
  %i.au = load i64, ptr %i.at, align 8, !tbaa !11 ; 2 uses
  %i.av = getelementptr inbounds [8 x i8], ptr %.0327, i64 %i.au ; 2 uses
  %i.aw = load double, ptr %i.av, align 8, !tbaa !13 ; 2 uses
  %i.ax = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.au ; 2 uses
  %i.ay = load double, ptr %i.ax, align 8, !tbaa !13 ; 2 uses
  %i.az = getelementptr inbounds nuw i8, ptr %.0320325, i64 16
  %i.ba = fneg double %i.aw
  %i.bb = load <2 x double>, ptr %i.az, align 8, !tbaa !13 ; 2 uses
  %i.bc = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bd = insertelement <2 x double> poison, double %i.ay, i64 0
  %i.be = insertelement <2 x double> %i.bd, double %i.ba, i64 1
  %i.bf = fmul <2 x double> %i.bc, %i.be
  %i.bg = shufflevector <2 x double> %i.bb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bh = insertelement <2 x double> poison, double %i.aw, i64 0
  %i.bi = insertelement <2 x double> %i.bh, double %i.ay, i64 1
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bg, <2 x double> %i.bi, <2 x double> %i.bf) ; 2 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %.0321324, i64 40
  %i.bl = load i64, ptr %i.bk, align 8, !tbaa !11 ; 2 uses
  %i.bm = getelementptr inbounds [8 x i8], ptr %.0327, i64 %i.bl ; 2 uses
  %i.bn = load double, ptr %i.bm, align 8, !tbaa !13 ; 2 uses
  %i.bo = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.bl ; 2 uses
  %i.bp = load double, ptr %i.bo, align 8, !tbaa !13 ; 2 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %.0320325, i64 64
  %i.br = fneg double %i.bn
  %i.bs = load <2 x double>, ptr %i.bq, align 8, !tbaa !13 ; 2 uses
  %i.bt = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bu = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.bv = insertelement <2 x double> %i.bu, double %i.br, i64 1
  %i.bw = fmul <2 x double> %i.bt, %i.bv
  %i.bx = shufflevector <2 x double> %i.bs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.by = insertelement <2 x double> poison, double %i.bn, i64 0
  %i.bz = insertelement <2 x double> %i.by, double %i.bp, i64 1
  %i.ca = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bx, <2 x double> %i.bz, <2 x double> %i.bw) ; 3 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %.0321324, i64 64
  %i.cc = load i64, ptr %i.cb, align 8, !tbaa !11 ; 2 uses
  %i.cd = getelementptr inbounds [8 x i8], ptr %.0327, i64 %i.cc ; 2 uses
  %i.ce = load double, ptr %i.cd, align 8, !tbaa !13 ; 2 uses
  %i.cf = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.cc ; 2 uses
  %i.cg = load double, ptr %i.cf, align 8, !tbaa !13 ; 2 uses
  %i.ch = getelementptr inbounds nuw i8, ptr %.0320325, i64 112
  %i.ci = fneg double %i.ce
  %i.cj = load <2 x double>, ptr %i.ch, align 8, !tbaa !13 ; 2 uses
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.cl = insertelement <2 x double> poison, double %i.cg, i64 0
  %i.cm = insertelement <2 x double> %i.cl, double %i.ci, i64 1
  %i.cn = fmul <2 x double> %i.ck, %i.cm
  %i.co = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cp = insertelement <2 x double> poison, double %i.ce, i64 0
  %i.cq = insertelement <2 x double> %i.cp, double %i.cg, i64 1
  %i.cr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.co, <2 x double> %i.cq, <2 x double> %i.cn) ; 3 uses
  %i.cs = fadd <2 x double> %i.ca, %i.cr          ; 2 uses
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cs, <2 x double> splat (double -5.000000e-01), <2 x double> %i.bj) ; 2 uses
  %i.cu = getelementptr inbounds nuw i8, ptr %.0321324, i64 8
  %i.cv = load i64, ptr %i.cu, align 8, !tbaa !11 ; 2 uses
  %i.cw = getelementptr inbounds [8 x i8], ptr %.0327, i64 %i.cv ; 2 uses
  %i.cx = load double, ptr %i.cw, align 8, !tbaa !13 ; 2 uses
  %i.cy = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.cv ; 2 uses
  %i.cz = load double, ptr %i.cy, align 8, !tbaa !13 ; 2 uses
  %i.da = fneg double %i.cx
  %i.db = load <2 x double>, ptr %.0320325, align 8, !tbaa !13 ; 2 uses
  %i.dc = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dd = insertelement <2 x double> poison, double %i.cz, i64 0
  %i.de = insertelement <2 x double> %i.dd, double %i.da, i64 1
  %i.df = fmul <2 x double> %i.dc, %i.de
  %i.dg = shufflevector <2 x double> %i.db, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = insertelement <2 x double> poison, double %i.cx, i64 0
  %i.di = insertelement <2 x double> %i.dh, double %i.cz, i64 1
  %i.dj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dg, <2 x double> %i.di, <2 x double> %i.df) ; 2 uses
  %i.dk = getelementptr inbounds nuw i8, ptr %.0321324, i64 32
  %i.dl = load i64, ptr %i.dk, align 8, !tbaa !11 ; 2 uses
  %i.dm = getelementptr inbounds [8 x i8], ptr %.0327, i64 %i.dl ; 2 uses
  %i.dn = load double, ptr %i.dm, align 8, !tbaa !13 ; 2 uses
  %i.do = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.dl ; 2 uses
  %i.dp = load double, ptr %i.do, align 8, !tbaa !13 ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %.0320325, i64 48
  %i.dr = fneg double %i.dn
  %i.ds = load <2 x double>, ptr %i.dq, align 8, !tbaa !13 ; 2 uses
  %i.dt = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.du = insertelement <2 x double> poison, double %i.dp, i64 0
  %i.dv = insertelement <2 x double> %i.du, double %i.dr, i64 1
  %i.dw = fmul <2 x double> %i.dt, %i.dv
  %i.dx = shufflevector <2 x double> %i.ds, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dy = insertelement <2 x double> poison, double %i.dn, i64 0
  %i.dz = insertelement <2 x double> %i.dy, double %i.dp, i64 1
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dx, <2 x double> %i.dz, <2 x double> %i.dw) ; 3 uses
  %i.eb = getelementptr inbounds nuw i8, ptr %.0321324, i64 56
  %i.ec = load i64, ptr %i.eb, align 8, !tbaa !11 ; 2 uses
  %i.ed = getelementptr inbounds [8 x i8], ptr %.0327, i64 %i.ec ; 2 uses
  %i.ee = load double, ptr %i.ed, align 8, !tbaa !13 ; 2 uses
  %i.ef = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.ec ; 2 uses
  %i.eg = load double, ptr %i.ef, align 8, !tbaa !13 ; 2 uses
  %i.eh = getelementptr inbounds nuw i8, ptr %.0320325, i64 96
  %i.ei = fneg double %i.ee
  %i.ej = load <2 x double>, ptr %i.eh, align 8, !tbaa !13 ; 2 uses
  %i.ek = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.el = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ei, i64 1
  %i.en = fmul <2 x double> %i.ek, %i.em
  %i.eo = shufflevector <2 x double> %i.ej, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ep = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eg, i64 1
  %i.er = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eo, <2 x double> %i.eq, <2 x double> %i.en) ; 3 uses
  %i.es = fadd <2 x double> %i.ea, %i.er          ; 2 uses
  %i.et = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.es, <2 x double> splat (double -5.000000e-01), <2 x double> %i.dj) ; 2 uses
  %i.eu = extractelement <2 x double> %i.ap, i64 0
  %i.ev = fadd double %i.f, %i.eu                 ; 2 uses
  %i.ew = shufflevector <2 x double> %i.cr, <2 x double> %i.er, <2 x i32> <i32 0, i32 2>
  %i.ex = shufflevector <2 x double> %i.ca, <2 x double> %i.ea, <2 x i32> <i32 0, i32 2>
  %i.ey = fsub <2 x double> %i.ew, %i.ex
  %i.ez = fmul <2 x double> %i.ey, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.fa = shufflevector <2 x double> %i.ca, <2 x double> %i.ea, <2 x i32> <i32 1, i32 3>
  %i.fb = shufflevector <2 x double> %i.cr, <2 x double> %i.er, <2 x i32> <i32 1, i32 3>
  %i.fc = fsub <2 x double> %i.fa, %i.fb
  %i.fd = fmul <2 x double> %i.fc, splat (double f0x3FEBB67AE8584CAA) ; 2 uses
  %i.fe = shufflevector <2 x double> %i.ct, <2 x double> %i.et, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.ff = fsub <2 x double> %i.fe, %i.fd          ; 3 uses
  %i.fg = shufflevector <2 x double> %i.ct, <2 x double> %i.et, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.fh = fsub <2 x double> %i.fg, %i.ez          ; 3 uses
  %i.fi = insertelement <2 x double> %i.fh, double %i.ev, i64 0
  %i.fj = fmul <2 x double> %i.fi, <double 1.000000e+00, double f0x3FEF838B8C811C17>
  %i.fk = fadd <2 x double> %i.bj, %i.cs          ; 4 uses
  %i.fl = fadd <2 x double> %i.dj, %i.es          ; 4 uses
  %i.fm = fadd <2 x double> %i.fl, %i.fk          ; 2 uses
  %i.fn = fsub <2 x double> %i.fl, %i.fk
  %i.fo = shufflevector <2 x double> %i.fm, <2 x double> %i.fn, <2 x i32> <i32 0, i32 3>
  %i.fp = fmul <2 x double> %i.fo, <double 1.000000e+00, double f0x3FEBB67AE8584CAA> ; 2 uses
  %i.fq = shufflevector <2 x double> %i.fm, <2 x double> %i.ff, <2 x i32> <i32 0, i32 3>
  %i.fr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fq, <2 x double> <double -5.000000e-01, double f0x3FC63A1A7E0B738A>, <2 x double> %i.fj) ; 4 uses
  %i.fs = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ft = insertelement <2 x double> %i.fs, double %i.ev, i64 0
  %i.fu = fadd <2 x double> %i.ft, %i.fp          ; 2 uses
  %i.fv = extractelement <2 x double> %i.fu, i64 0
  store double %i.fv, ptr %.0327, align 8, !tbaa !13
  %i.fw = extractelement <2 x double> %i.fu, i64 1
  store double %i.fw, ptr %i.j, align 8, !tbaa !13
  %shift = shufflevector <2 x double> %i.fp, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %i.fr, %shift
  %i.fx = extractelement <2 x double> %foldExtExtBinop, i64 0
  store double %i.fx, ptr %i.ax, align 8, !tbaa !13
  %i.fy = fmul <2 x double> %i.ff, <double f0xBFEE11F642522D1C, double f0xBFEF838B8C811C17>
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> <double f0x3FD5E3A8748A0BF5, double f0x3FC63A1A7E0B738A>, <2 x double> %i.fy) ; 3 uses
  %shift330 = shufflevector <2 x double> %i.fr, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop331 = fadd <2 x double> %i.fz, %shift330 ; 2 uses
  %i.ga = extractelement <2 x double> %i.fh, i64 0
  %i.gb = fmul double %i.ga, f0x3FEE11F642522D1C
  %i.gc = shufflevector <2 x double> %i.ff, <2 x double> %foldExtExtBinop331, <2 x i32> <i32 0, i32 2>
  %i.gd = insertelement <2 x double> poison, double %i.gb, i64 0
  %foldExtExtBinop333 = fsub <2 x double> %i.fk, %i.fl
  %i.ge = extractelement <2 x double> %foldExtExtBinop333, i64 0
  %i.gf = fmul double %i.ge, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.gg = extractelement <2 x double> %i.ap, i64 1
  %i.gh = fadd double %i.g, %i.gg                 ; 2 uses
  %foldExtExtBinop335 = fadd <2 x double> %i.fk, %i.fl ; 2 uses
  %i.gi = extractelement <2 x double> %foldExtExtBinop335, i64 1
  %i.gj = fadd double %i.gh, %i.gi
  %i.gk = fadd <2 x double> %i.ez, %i.fg          ; 2 uses
  %i.gl = fadd <2 x double> %i.fe, %i.fd          ; 2 uses
  %i.gm = fmul <2 x double> %i.gk, <double f0x3FEF838B8C811C17, double f0x3FE491B7523C161D>
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> <double f0x3FC63A1A7E0B738A, double f0x3FE8836FA2CF5039>, <2 x double> %i.gm) ; 4 uses
  %i.go = fmul <2 x double> %i.gl, <double f0xBFEF838B8C811C17, double f0xBFE491B7523C161D>
  %i.gp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gk, <2 x double> <double f0x3FC63A1A7E0B738A, double f0x3FE8836FA2CF5039>, <2 x double> %i.go) ; 4 uses
  %i.gq = shufflevector <2 x double> %i.gn, <2 x double> %i.gp, <2 x i32> <i32 0, i32 3>
  %i.gr = shufflevector <2 x double> %i.gn, <2 x double> %i.gp, <2 x i32> <i32 1, i32 2>
  %i.gs = fsub <2 x double> %i.gq, %i.gr          ; 2 uses
  %i.gt = extractelement <2 x double> %i.gs, i64 0
  %i.gu = fmul double %i.gt, f0x3FEBB67AE8584CAA  ; 2 uses
  %i.gv = shufflevector <2 x double> %i.x, <2 x double> %i.ao, <2 x i32> <i32 1, i32 2>
  %i.gw = shufflevector <2 x double> %i.ao, <2 x double> %i.x, <2 x i32> <i32 1, i32 2>
  %i.gx = fsub <2 x double> %i.gv, %i.gw
  %i.gy = fmul <2 x double> %i.gx, splat (double f0x3FEBB67AE8584CAA) ; 3 uses
  %foldExtExtBinop337 = fsub <2 x double> %i.as, %i.gy ; 2 uses
  %i.gz = extractelement <2 x double> %foldExtExtBinop337, i64 1
  %foldExtExtBinop339 = fsub <2 x double> %i.as, %i.gy ; 2 uses
  %i.ha = shufflevector <2 x double> %i.gd, <2 x double> %foldExtExtBinop339, <2 x i32> <i32 0, i32 2>
  %i.hb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> <double f0x3FD5E3A8748A0BF5, double -5.000000e-01>, <2 x double> %i.ha) ; 3 uses
  %shift341 = shufflevector <2 x double> %i.fz, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop342 = fadd <2 x double> %i.hb, %shift341
  %i.hc = extractelement <2 x double> %foldExtExtBinop342, i64 0
  %i.hd = fmul double %i.hc, f0x3FEBB67AE8584CAA  ; 2 uses
  %foldExtExtBinop344 = fadd <2 x double> %foldExtExtBinop339, %foldExtExtBinop331
  %i.he = extractelement <2 x double> %foldExtExtBinop344, i64 0
  store double %i.he, ptr %i.av, align 8, !tbaa !13
  %i.hf = extractelement <2 x double> %i.hb, i64 1 ; 2 uses
  %i.hg = fsub double %i.hf, %i.hd
  %i.hh = fadd double %i.hf, %i.hd
  %i.hi = fneg double %i.gz
  %i.hj = insertelement <2 x double> poison, double %i.hi, i64 0
  %i.hk = insertelement <2 x double> %i.hj, double %i.gh, i64 1
  %i.hl = shufflevector <2 x double> %i.fr, <2 x double> %i.hb, <2 x i32> <i32 1, i32 2>
  %i.hm = fsub <2 x double> %i.fz, %i.hl          ; 2 uses
  %i.hn = fmul <2 x double> %i.hm, <double f0x3FEBB67AE8584CAA, double 1.000000e+00> ; 2 uses
  %i.ho = shufflevector <2 x double> %i.hm, <2 x double> %foldExtExtBinop335, <2 x i32> <i32 1, i32 3>
  %i.hp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ho, <2 x double> <double 5.000000e-01, double -5.000000e-01>, <2 x double> %i.hk) ; 3 uses
  %i.hq = shufflevector <2 x double> %i.hp, <2 x double> %foldExtExtBinop337, <2 x i32> <i32 0, i32 3>
  %i.hr = fadd <2 x double> %i.hn, %i.hq          ; 2 uses
  %i.hs = extractelement <2 x double> %i.hr, i64 1
  store double %i.hs, ptr %i.ac, align 8, !tbaa !13
  store double %i.hg, ptr %.0319326, align 8, !tbaa !13
  store double %i.hh, ptr %i.l, align 8, !tbaa !13
  %foldExtExtBinop346 = fsub <2 x double> %i.hp, %i.hn
  %i.ht = extractelement <2 x double> %foldExtExtBinop346, i64 0
  store double %i.ht, ptr %i.bm, align 8, !tbaa !13
  %i.hu = extractelement <2 x double> %i.hr, i64 0
  store double %i.hu, ptr %i.cd, align 8, !tbaa !13
  %i.hv = extractelement <2 x double> %i.hp, i64 1 ; 2 uses
  %i.hw = fsub double %i.gf, %i.hv
  store double %i.hw, ptr %i.aa, align 8, !tbaa !13
  store double %i.gj, ptr %i.cf, align 8, !tbaa !13
  %i.hx = fadd double %i.gf, %i.hv
  store double %i.hx, ptr %i.bo, align 8, !tbaa !13
  %i.hy = fadd <2 x double> %i.as, %i.gy          ; 3 uses
  %i.hz = shufflevector <2 x double> %i.gn, <2 x double> %i.gp, <2 x i32> <i32 0, i32 2>
  %i.ia = shufflevector <2 x double> %i.gn, <2 x double> %i.gp, <2 x i32> <i32 1, i32 3>
  %i.ib = fadd <2 x double> %i.hz, %i.ia          ; 3 uses
  %foldExtExtBinop348 = fadd <2 x double> %i.hy, %i.ib
  %i.ic = extractelement <2 x double> %foldExtExtBinop348, i64 0
  store double %i.ic, ptr %i.cw, align 8, !tbaa !13
  %i.id = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ib, <2 x double> splat (double -5.000000e-01), <2 x double> %i.hy) ; 3 uses
  %7 = shufflevector <2 x double> %i.gs, <2 x double> %i.ib, <2 x i32> <i32 1, i32 3>
  %8 = fmul <2 x double> %7, <double f0x3FEBB67AE8584CAA, double 1.000000e+00> ; 2 uses
  %foldExtExtBinop350 = fsub <2 x double> %i.id, %8
  %9 = extractelement <2 x double> %foldExtExtBinop350, i64 0
  store double %9, ptr %i.cy, align 8, !tbaa !13
  %10 = shufflevector <2 x double> %i.id, <2 x double> %i.hy, <2 x i32> <i32 0, i32 3>
  %foldExtExtBinop350.a = fadd <2 x double> %10, %8 ; 2 uses
  %11 = extractelement <2 x double> %foldExtExtBinop350.a, i64 0
  store double %11, ptr %i.dm, align 8, !tbaa !13
  %i.ie = extractelement <2 x double> %foldExtExtBinop350.a, i64 1
  store double %i.ie, ptr %i.ef, align 8, !tbaa !13
  %i.if = extractelement <2 x double> %i.id, i64 1 ; 2 uses
  %i.ig = fsub double %i.gu, %i.if
  store double %i.ig, ptr %i.ed, align 8, !tbaa !13
  %i.ih = fadd double %i.gu, %i.if
  store double %i.ih, ptr %i.do, align 8, !tbaa !13
  %i.ii = add nsw i64 %.0322323, 1                ; 2 uses
  %i.ij = getelementptr inbounds [8 x i8], ptr %.0327, i64 %6
  %i.ik = getelementptr inbounds [8 x i8], ptr %.0319326, i64 %i.d
  %i.il = getelementptr inbounds nuw i8, ptr %.0320325, i64 128
  %i.im = getelementptr inbounds [8 x i8], ptr %.0321324, i64 %i.e
  %exitcond.not = icmp eq i64 %i.ii, %5
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
