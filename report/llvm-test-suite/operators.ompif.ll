Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/operators.ompif?download=true
loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@initialize_problem:bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 28 ; 2 uses
  %i.an = load i32, ptr %i.am, align 4, !tbaa !37 ; 2 uses
  %i.ao = icmp sgt i32 %i.an, 0
  br i1 %i.ao, label %.preheader288.lr.ph, label %._crit_edge294

.preheader288.lr.ph:                              ; preds = %bb.b
  %i.ap = getelementptr inbounds nuw i8, ptr %i.al, i64 24 ; 2 uses
  %i.aq = getelementptr inbounds nuw i8, ptr %i.al, i64 20 ; 2 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %i.as = getelementptr inbounds nuw i8, ptr %i.al, i64 16
  %i.at = getelementptr inbounds nuw i8, ptr %i.al, i64 44
  %i.au = getelementptr inbounds nuw i8, ptr %i.al, i64 48
  %i.av = getelementptr inbounds nuw i8, ptr %i.al, i64 52
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !38 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.preheader288, label %._crit_edge294

.preheader288:                                    ; preds = %.preheader288.lr.ph, %._crit_edge291
  %i.ay = phi i32 [ %i.jt, %._crit_edge291 ], [ %i.an, %.preheader288.lr.ph ] ; 2 uses
  %i.az = phi i32 [ %i.ju, %._crit_edge291 ], [ %i.aw, %.preheader288.lr.ph ] ; 3 uses
  %i.ba = phi i32 [ %i.jv, %._crit_edge291 ], [ %i.aw, %.preheader288.lr.ph ] ; 3 uses
  %.0286292 = phi i32 [ %i.jw, %._crit_edge291 ], [ 0, %.preheader288.lr.ph ] ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader.lr.ph, label %._crit_edge291

.preheader.lr.ph:                                 ; preds = %.preheader288
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !39 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader, label %._crit_edge291

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.be = phi i32 [ %i.jp, %._crit_edge ], [ %i.az, %.preheader.lr.ph ]
  %i.bf = phi i32 [ %i.jq, %._crit_edge ], [ %i.bc, %.preheader.lr.ph ] ; 2 uses
  %.0285290 = phi i32 [ %i.jr, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.bi = getelementptr inbounds nuw [256 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 248
  %i.bk = insertelement <2 x i32> poison, i32 %.0285290, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.0284289 = phi i32 [ 0, %.lr.ph ], [ %i.jm, %bb.c ] ; 3 uses
  %i.bl = load i32, ptr %i.as, align 8, !tbaa !352
  %i.bm = add nsw i32 %i.bl, %.0286292
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fadd nnan double %i.bn, 5.000000e-01
  %i.bp = fmul double %2, %i.bo                   ; 2 uses
  %i.bq = load i32, ptr %i.at, align 4, !tbaa !36 ; 3 uses
  %i.br = add nsw i32 %i.bq, %.0284289
  %i.bs = load i32, ptr %i.au, align 8, !tbaa !34
  %i.bt = add nsw i32 %i.bq, %.0285290
  %i.bu = mul nsw i32 %i.bs, %i.bt
  %i.bv = add nsw i32 %i.br, %i.bu
  %i.bw = load i32, ptr %i.av, align 4, !tbaa !35
  %i.bx = add nsw i32 %i.bq, %.0286292
  %i.by = mul nsw i32 %i.bw, %i.bx
  %i.bz = add nsw i32 %i.bv, %i.by
  %i.ca = load <2 x i32>, ptr %i.ar, align 8, !tbaa !7
  %i.cb = insertelement <2 x i32> %i.bk, i32 %.0284289, i64 0
  %i.cc = add nsw <2 x i32> %i.ca, %i.cb
  %i.cd = sitofp <2 x i32> %i.cc to <2 x double>
  %i.ce = fadd nnan <2 x double> %i.cd, splat (double 5.000000e-01)
  %i.cf = fmul <2 x double> %i.g, %i.ce           ; 2 uses
  %i.cg = fadd <2 x double> %i.cf, splat (double -5.000000e-01) ; 3 uses
  %i.ch = extractelement <2 x double> %i.cg, i64 0
  %i.ci = tail call double @pow(double noundef %i.ch, double noundef 2.000000e+00) #10, !tbaa !7
  %i.cj = extractelement <2 x double> %i.cg, i64 1
  %i.ck = tail call double @pow(double noundef %i.cj, double noundef 2.000000e+00) #10, !tbaa !7
  %i.cl = fadd double %i.ci, %i.ck
  %i.cm = fmul <2 x double> %i.cg, splat (double 2.000000e+00) ; 3 uses
  %i.cn = extractelement <2 x double> %i.cm, i64 0
  %i.co = fmul double %i.cn, 5.000000e-01
  %i.cp = fadd double %i.bp, -5.000000e-01        ; 2 uses
  %i.cq = fmul double %i.cp, 2.000000e+00         ; 2 uses
  %i.cr = fmul double %i.cq, 5.000000e-01
  %i.cs = tail call double @pow(double noundef %i.cp, double noundef 2.000000e+00) #10, !tbaa !7
  %i.ct = fadd double %i.cl, %i.cs                ; 8 uses
  %i.cu = tail call double @pow(double noundef %i.ct, double noundef 5.000000e-01) #10, !tbaa !7
  %i.cv = tail call double @pow(double noundef %i.ct, double noundef -5.000000e-01) #10, !tbaa !7 ; 2 uses
  %i.cw = fmul double %i.cr, %i.cv
  %i.cx = tail call double @pow(double noundef %i.ct, double noundef -1.500000e+00) #10, !tbaa !7 ; 0 uses
  %i.cy = tail call double @pow(double noundef %i.ct, double noundef -5.000000e-01) #10, !tbaa !7 ; 0 uses
  %i.cz = tail call double @pow(double noundef %i.ct, double noundef -1.500000e+00) #10, !tbaa !7 ; 0 uses
  %i.da = tail call double @pow(double noundef %i.ct, double noundef -5.000000e-01) #10, !tbaa !7 ; 0 uses
  %i.db = tail call double @pow(double noundef %i.ct, double noundef -1.500000e+00) #10, !tbaa !7 ; 0 uses
  %i.dc = fadd double %i.cu, -2.500000e-01
  %i.dd = fmul double %i.dc, 1.000000e+01         ; 3 uses
  %i.de = tail call double @tanh(double noundef %i.dd) #10, !tbaa !7 ; 2 uses
  %i.df = tail call double @llvm.fmuladd.f64(double %i.de, double 4.500000e+00, double 5.500000e+00) ; 2 uses
  %i.dg = tail call double @pow(double noundef %i.de, double noundef 2.000000e+00) #10, !tbaa !7
  %i.dh = fsub double 1.000000e+00, %i.dg
  %i.di = tail call double @tanh(double noundef %i.dd) #10, !tbaa !7
  %i.dj = tail call double @pow(double noundef %i.di, double noundef 2.000000e+00) #10, !tbaa !7
  %i.dk = fsub double 1.000000e+00, %i.dj
  %i.dl = fmul double %i.cw, 4.500000e+01
  %i.dm = tail call double @tanh(double noundef %i.dd) #10, !tbaa !7
  %i.dn = tail call double @pow(double noundef %i.dm, double noundef 2.000000e+00) #10, !tbaa !7
  %i.do = fsub double 1.000000e+00, %i.dn
  %i.dp = fmul double %i.dl, %i.do
  %i.dq = shufflevector <2 x double> %i.cf, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.dr = insertelement <4 x double> %i.dq, double %i.ct, i64 0
  %i.ds = insertelement <4 x double> %i.dr, double %i.bp, i64 1
  %i.dt = fmul <4 x double> %i.ds, <double -2.000000e+01, double f0x401921FB54442D18, double f0x401921FB54442D18, double f0x401921FB54442D18> ; 4 uses
  %i.du = extractelement <4 x double> %i.dt, i64 3 ; 10 uses
  %i.dv = extractelement <4 x double> %i.dt, i64 2 ; 10 uses
  %i.dw = extractelement <4 x double> %i.dt, i64 1 ; 10 uses
  %i.dx = extractelement <4 x double> %i.dt, i64 0 ; 10 uses
  %i.dy = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.dz = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.ea = fmul double %i.dy, %i.dz
  %i.eb = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.ec = fmul double %i.ea, %i.eb
  %i.ed = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.ee = fmul double %i.ec, %i.ed                ; 5 uses
  %i.ef = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.eg = tail call double @cos(double noundef %i.dv) #10, !tbaa !7
  %i.eh = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.ei = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.ej = fmul <2 x double> %i.cm, splat (double -2.000000e+01) ; 3 uses
  %i.ek = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.el = insertelement <2 x double> poison, double %i.ef, i64 0
  %i.em = insertelement <2 x double> %i.el, double %i.ek, i64 1
  %i.en = fmul <2 x double> %i.em, splat (double f0x401921FB54442D18)
  %i.eo = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.ep = insertelement <2 x double> poison, double %i.eg, i64 0
  %i.eq = insertelement <2 x double> %i.ep, double %i.eo, i64 1
  %i.er = fmul <2 x double> %i.en, %i.eq
  %i.es = tail call double @cos(double noundef %i.du) #10, !tbaa !7
  %i.et = insertelement <2 x double> poison, double %i.eh, i64 0
  %i.eu = insertelement <2 x double> %i.et, double %i.es, i64 1
  %i.ev = fmul <2 x double> %i.er, %i.eu
  %i.ew = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.ex = insertelement <2 x double> poison, double %i.ei, i64 0
  %i.ey = insertelement <2 x double> %i.ex, double %i.ew, i64 1
  %i.ez = fmul <2 x double> %i.ev, %i.ey
  %i.fa = insertelement <2 x double> poison, double %i.ee, i64 0
  %i.fb = shufflevector <2 x double> %i.fa, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ej, <2 x double> %i.fb, <2 x double> %i.ez) ; 3 uses
  %i.fd = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.fe = fmul double %i.fd, f0x401921FB54442D18
  %i.ff = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.fg = fmul double %i.fe, %i.ff
  %i.fh = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.fi = fmul double %i.fg, %i.fh
  %i.fj = tail call double @cos(double noundef %i.dw) #10, !tbaa !7
  %i.fk = fmul double %i.fi, %i.fj
  %i.fl = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.fm = tail call double @cos(double noundef %i.dv) #10, !tbaa !7
  %i.fn = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.fo = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.fp = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.fq = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.fr = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.fs = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.ft = fmul <2 x double> %i.ej, %i.fc
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fb, <2 x double> splat (double -4.000000e+01), <2 x double> %i.ft)
  %i.fv = fmul <2 x double> %i.ej, splat (double f0x401921FB54442D18)
  %i.fw = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.fx = insertelement <2 x double> poison, double %i.fl, i64 0
  %i.fy = insertelement <2 x double> %i.fx, double %i.fw, i64 1
  %i.fz = fmul <2 x double> %i.fv, %i.fy
  %i.ga = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.gb = insertelement <2 x double> poison, double %i.fm, i64 0
  %i.gc = insertelement <2 x double> %i.gb, double %i.ga, i64 1
  %i.gd = fmul <2 x double> %i.fz, %i.gc
  %i.ge = tail call double @cos(double noundef %i.du) #10, !tbaa !7
  %i.gf = insertelement <2 x double> poison, double %i.fn, i64 0
  %i.gg = insertelement <2 x double> %i.gf, double %i.ge, i64 1
  %i.gh = fmul <2 x double> %i.gd, %i.gg
  %i.gi = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.gj = insertelement <2 x double> poison, double %i.fo, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.gi, i64 1
  %i.gl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gh, <2 x double> %i.gk, <2 x double> %i.fu)
  %i.gm = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.gn = insertelement <2 x double> poison, double %i.fp, i64 0
  %i.go = insertelement <2 x double> %i.gn, double %i.gm, i64 1
  %i.gp = fmul <2 x double> %i.go, splat (double f0x4043BD3CC9BE45DE)
  %i.gq = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.gr = insertelement <2 x double> poison, double %i.fq, i64 0
  %i.gs = insertelement <2 x double> %i.gr, double %i.gq, i64 1
  %i.gt = fmul <2 x double> %i.gp, %i.gs
  %i.gu = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.gv = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.gw = insertelement <2 x double> poison, double %i.fr, i64 0
  %i.gx = insertelement <2 x double> %i.gw, double %i.gu, i64 1
  %i.gy = fneg <2 x double> %i.gx
  %i.gz = fmul <2 x double> %i.gt, %i.gy
  %i.ha = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.hb = insertelement <2 x double> %i.ha, double %i.gv, i64 1
  %i.hc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gz, <2 x double> %i.hb, <2 x double> %i.gl) ; 2 uses
  %i.hd = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.he = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.hf = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.hg = fmul double %i.cq, -2.000000e+01        ; 3 uses
  %i.hh = tail call double @llvm.fmuladd.f64(double %i.hg, double %i.ee, double %i.fk) ; 2 uses
  %i.hi = fmul double %i.hg, %i.hh
  %.scalar = tail call double @llvm.fmuladd.f64(double %i.ee, double -4.000000e+01, double %i.hi)
  %i.hj = insertelement <2 x double> <double poison, double -0.000000e+00>, double %.scalar, i64 0
  %i.hk = insertelement <2 x double> %i.cm, double %i.hg, i64 0
  %i.hl = fmul <2 x double> %i.hk, <double f0x401921FB54442D18, double 5.000000e-01>
  %i.hm = insertelement <2 x double> poison, double %i.hd, i64 0
  %i.hn = insertelement <2 x double> %i.hm, double %i.cv, i64 1 ; 2 uses
  %i.ho = fmul <2 x double> %i.hl, %i.hn
  %i.hp = insertelement <2 x double> <double poison, double 4.500000e+01>, double %i.he, i64 0
  %i.hq = fmul <2 x double> %i.ho, %i.hp
  %i.hr = insertelement <2 x double> poison, double %i.hf, i64 0
  %i.hs = insertelement <2 x double> %i.hr, double %i.dk, i64 1
  %i.ht = fmul <2 x double> %i.hq, %i.hs
  %i.hu = tail call double @cos(double noundef %i.dw) #10, !tbaa !7
  %i.hv = tail call double @exp(double noundef %i.dx) #10, !tbaa !7
  %i.hw = insertelement <2 x double> poison, double %i.hv, i64 0
  %i.hx = insertelement <2 x double> %i.hw, double %i.co, i64 1
  %i.hy = insertelement <2 x double> %i.hn, double f0x4043BD3CC9BE45DE, i64 0
  %i.hz = fmul <2 x double> %i.hx, %i.hy
  %i.ia = tail call double @sin(double noundef %i.dv) #10, !tbaa !7
  %i.ib = insertelement <2 x double> <double poison, double 4.500000e+01>, double %i.ia, i64 0
  %i.ic = fmul <2 x double> %i.hz, %i.ib
  %i.id = tail call double @sin(double noundef %i.du) #10, !tbaa !7
  %i.ie = tail call double @sin(double noundef %i.dw) #10, !tbaa !7
  %i.if = fneg double %i.id
  %i.ig = insertelement <2 x double> poison, double %i.if, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %i.dh, i64 1
  %i.ii = fmul <2 x double> %i.ic, %i.ih
  %i.ij = insertelement <2 x double> %i.fc, double %i.hu, i64 0
  %i.ik = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ht, <2 x double> %i.ij, <2 x double> %i.hj)
  %i.il = shufflevector <2 x double> %i.fc, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.im = insertelement <2 x double> %i.il, double %i.ie, i64 0
  %i.in = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ii, <2 x double> %i.im, <2 x double> %i.ik) ; 2 uses
  %i.io = extractelement <2 x double> %i.in, i64 1
  %i.ip = tail call double @llvm.fmuladd.f64(double %i.dp, double %i.hh, double %i.io)
  %shift = shufflevector <2 x double> %i.hc, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.hc, %shift
  %foldExtExtBinop317 = fadd <2 x double> %foldExtExtBinop, %i.in
  %i.iq = extractelement <2 x double> %foldExtExtBinop317, i64 0
  %i.ir = tail call double @llvm.fmuladd.f64(double %i.df, double %i.iq, double %i.ip)
  %i.is = fneg double %i.ir
  %i.it = fmul double %4, %i.is
  %i.iu = tail call double @llvm.fmuladd.f64(double %3, double %i.ee, double %i.it)
  %i.iv = load ptr, ptr %i.bj, align 8, !tbaa !19
  %i.iw = getelementptr inbounds [216 x i8], ptr %i.iv, i64 %i.e
  %i.ix = getelementptr inbounds nuw i8, ptr %i.iw, i64 176
  %i.iy = load ptr, ptr %i.ix, align 8, !tbaa !26 ; 4 uses
  %i.iz = getelementptr inbounds nuw i8, ptr %i.iy, i64 16
  %i.ja = load ptr, ptr %i.iz, align 8, !tbaa !27
  %i.jb = sext i32 %i.bz to i64                   ; 4 uses
  %i.jc = getelementptr inbounds [8 x i8], ptr %i.ja, i64 %i.jb
  store double 1.000000e+00, ptr %i.jc, align 8, !tbaa !28
  %i.jd = getelementptr inbounds nuw i8, ptr %i.iy, i64 24
  %i.je = load ptr, ptr %i.jd, align 8, !tbaa !27
  %i.jf = getelementptr inbounds [8 x i8], ptr %i.je, i64 %i.jb
  store double %i.df, ptr %i.jf, align 8, !tbaa !28
  %i.jg = getelementptr inbounds nuw i8, ptr %i.iy, i64 88
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !27
  %i.ji = getelementptr inbounds [8 x i8], ptr %i.jh, i64 %i.jb
  store double %i.ee, ptr %i.ji, align 8, !tbaa !28
  %i.jj = getelementptr inbounds nuw i8, ptr %i.iy, i64 8
  %i.jk = load ptr, ptr %i.jj, align 8, !tbaa !27
  %i.jl = getelementptr inbounds [8 x i8], ptr %i.jk, i64 %i.jb
  store double %i.iu, ptr %i.jl, align 8, !tbaa !28
  %i.jm = add nuw nsw i32 %.0284289, 1            ; 2 uses
  %i.jn = load i32, ptr %i.aq, align 4, !tbaa !39 ; 2 uses
  %i.jo = icmp slt i32 %i.jm, %i.jn
  br i1 %i.jo, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !347

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.ap, align 8, !tbaa !38
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.jp = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.be, %.preheader ] ; 4 uses
  %i.jq = phi i32 [ %i.jn, %._crit_edge.loopexit ], [ %i.bf, %.preheader ]
  %i.jr = add nuw nsw i32 %.0285290, 1            ; 2 uses
  %i.js = icmp slt i32 %i.jr, %i.jp
  br i1 %i.js, label %.preheader, label %._crit_edge291.loopexit, !llvm.loop !348

._crit_edge291.loopexit:                          ; preds = %._crit_edge
  %.pre302 = load i32, ptr %i.am, align 4, !tbaa !37
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %.preheader.lr.ph, %._crit_edge291.loopexit, %.preheader288
  %i.jt = phi i32 [ %i.ay, %.preheader288 ], [ %.pre302, %._crit_edge291.loopexit ], [ %i.ay, %.preheader.lr.ph ] ; 2 uses
  %i.ju = phi i32 [ %i.az, %.preheader288 ], [ %i.jp, %._crit_edge291.loopexit ], [ %i.az, %.preheader.lr.ph ]
  %i.jv = phi i32 [ %i.ba, %.preheader288 ], [ %i.jp, %._crit_edge291.loopexit ], [ %i.ba, %.preheader.lr.ph ]
  %i.jw = add nuw nsw i32 %.0286292, 1            ; 2 uses
  %i.jx = icmp slt i32 %i.jw, %i.jt
  br i1 %i.jx, label %.preheader288, label %._crit_edge294, !llvm.loop !349

._crit_edge294:                                   ; preds = %._crit_edge291, %.preheader288.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jy = load i32, ptr %i.a, align 8, !tbaa !33
  %i.jz = sext i32 %i.jy to i64
  %i.ka = icmp slt i64 %indvars.iv.next, %i.jz
  br i1 %i.ka, label %bb.b, label %._crit_edge298, !llvm.loop !350

._crit_edge298:                                   ; preds = %._crit_edge294, %bb.a
  %i.kb = tail call double @mean(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1) ; 2 uses
  %i.kc = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.kd = load i32, ptr %i.kc, align 4, !tbaa !40
  %i.ke = icmp eq i32 %i.kd, 0
  br i1 %i.ke, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge298
  %i.kf = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.kb) ; 0 uses
  %i.kg = load ptr, ptr @stdout, align 8, !tbaa !42
  %i.kh = tail call i32 @fflush(ptr noundef %i.kg) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge298
  %i.ki = fcmp une double %3, 0.000000e+00
  br i1 %i.ki, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.kj = fneg double %i.kb                       ; 2 uses
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef 1, double noundef %i.kj)
  %i.kk = fdiv double %i.kj, %3
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 11, i32 noundef 11, double noundef %i.kk)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @pow(double noundef, double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @tanh(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @exp(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @sin(double noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare double @cos(double noundef) local_unnamed_addr #7

; Function Attrs: nofree nounwind
declare noundef i32 @putchar(i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <4 x double> @llvm.fabs.v4f64(<4 x double>) #5

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #5

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #9

attributes #0 = { inlinehint nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #5 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #6 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #10 = { nounwind }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = !{!"any pointer", !5, i64 0}
!9 = !{!8, !8, i64 0}
!10 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8}
!11 = !{!"p1 double", !8, i64 0}
!12 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !6, i64 12, !6, i64 16, !6, i64 20, !11, i64 24}
!13 = !{!"", !6, i64 0, !6, i64 4, !6, i64 8, !10, i64 12, !12, i64 24, !12, i64 56}
!14 = !{!"long", !5, i64 0}
!15 = !{!"", !5, i64 0, !5, i64 80, !5, i64 160, !5, i64 240, !5, i64 320, !5, i64 400, !5, i64 480, !5, i64 560, !5, i64 640, !5, i64 720, !5, i64 800, !5, i64 880, !5, i64 960, !5, i64 1040, !5, i64 1120, !5, i64 1200, !14, i64 1280, !14, i64 1288, !14, i64 1296}
!16 = !{!"", !15, i64 0, !6, i64 1304, !6, i64 1308, !6, i64 1312, !6, i64 1316, !5, i64 1320, !5, i64 1432, !6, i64 1512, !6, i64 1516, !6, i64 1520, !6, i64 1524, !6, i64 1528, !6, i64 1532, !10, i64 1536, !10, i64 1548, !10, i64 1560, !10, i64 1572, !10, i64 1584, !6, i64 1596, !6, i64 1600, !6, i64 1604, !6, i64 1608, !6, i64 1612, !5, i64 1616, !5, i64 1696, !8, i64 1776}
!17 = !{!16, !8, i64 1776}
!18 = !{!"", !10, i64 0, !10, i64 12, !6, i64 24, !6, i64 28, !5, i64 32, !8, i64 248}
!19 = !{!18, !8, i64 248}
!20 = !{!"double", !5, i64 0}
!21 = !{!"any p2 pointer", !8, i64 0}
!22 = !{!"p2 double", !21, i64 0}
!23 = !{!"p1 long", !8, i64 0}
!24 = !{!"p1 omnipotent char", !8, i64 0}
!25 = !{!"", !20, i64 0, !10, i64 8, !10, i64 20, !10, i64 32, !6, i64 44, !6, i64 48, !6, i64 52, !6, i64 56, !6, i64 60, !5, i64 64, !22, i64 176, !23, i64 184, !5, i64 192, !24, i64 208}
!26 = !{!25, !22, i64 176}
!27 = !{!11, !11, i64 0}
!28 = !{!20, !20, i64 0}
!29 = !{!"llvm.loop.mustprogress"}
!30 = !{!"llvm.loop.isvectorized", i32 1}
!31 = !{!"llvm.loop.unroll.runtime.disable"}
!32 = !{!14, !14, i64 0}
!33 = !{!16, !6, i64 1600}
!34 = !{!25, !6, i64 48}
!35 = !{!25, !6, i64 52}
!36 = !{!25, !6, i64 44}
!37 = !{!25, !6, i64 28}
!38 = !{!25, !6, i64 24}
!39 = !{!25, !6, i64 20}
!40 = !{!16, !6, i64 1596}
!41 = !{!"p1 _ZTS8_IO_FILE", !8, i64 0}
!42 = !{!41, !41, i64 0}
!43 = !{!"llvm.loop.unroll.disable"}
!44 = distinct !{!44, !29, !30, !31}
!45 = distinct !{!45, !29, !30}
!46 = distinct !{!46, !29}
!47 = distinct !{!47, !29}
!48 = distinct !{!48, !29}
!49 = distinct !{!49, !29, !30, !31}
!50 = distinct !{!50, !29, !30}
!51 = distinct !{!51, !29}
!52 = distinct !{!52, !29}
!53 = !{!13, !6, i64 12}
!54 = !{!13, !6, i64 16}
!55 = !{!13, !6, i64 20}
!56 = !{!13, !6, i64 28}
!57 = !{!13, !6, i64 32}
!58 = !{!13, !6, i64 36}
!59 = !{!13, !6, i64 40}
end_hunk_0
