loop-unroll.NumCompletelyUnrolled: 10
loop-unroll.NumRuntimeUnrolled: 18
loop-unroll.NumUnrolled: 28
begin_hunk_0_@initialize_problem:bb.a
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
  %i.aw = load i32, ptr %i.ap, align 4, !tbaa !69 ; 3 uses
  %i.ax = icmp sgt i32 %i.aw, 0
  br i1 %i.ax, label %.preheader288, label %._crit_edge294

.preheader288:                                    ; preds = %.preheader288.lr.ph, %._crit_edge291
  %i.ay = phi i32 [ %i.jo, %._crit_edge291 ], [ %i.an, %.preheader288.lr.ph ] ; 2 uses
  %i.az = phi i32 [ %i.jp, %._crit_edge291 ], [ %i.aw, %.preheader288.lr.ph ] ; 3 uses
  %i.ba = phi i32 [ %i.jq, %._crit_edge291 ], [ %i.aw, %.preheader288.lr.ph ] ; 3 uses
  %.0286292 = phi i32 [ %i.jr, %._crit_edge291 ], [ 0, %.preheader288.lr.ph ] ; 3 uses
  %i.bb = icmp sgt i32 %i.ba, 0
  br i1 %i.bb, label %.preheader.lr.ph, label %._crit_edge291

.preheader.lr.ph:                                 ; preds = %.preheader288
  %i.bc = load i32, ptr %i.aq, align 4, !tbaa !70 ; 2 uses
  %i.bd = icmp sgt i32 %i.bc, 0
  br i1 %i.bd, label %.preheader, label %._crit_edge291

.preheader:                                       ; preds = %.preheader.lr.ph, %._crit_edge
  %i.be = phi i32 [ %i.jk, %._crit_edge ], [ %i.az, %.preheader.lr.ph ]
  %i.bf = phi i32 [ %i.jl, %._crit_edge ], [ %i.bc, %.preheader.lr.ph ] ; 2 uses
  %.0285290 = phi i32 [ %i.jm, %._crit_edge ], [ 0, %.preheader.lr.ph ] ; 3 uses
  %i.bg = icmp sgt i32 %i.bf, 0
  br i1 %i.bg, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %.preheader
  %i.bh = load ptr, ptr %i.d, align 8, !tbaa !29
  %i.bi = getelementptr inbounds nuw [256 x i8], ptr %i.bh, i64 %indvars.iv
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bi, i64 248
  %i.bk = insertelement <2 x i32> poison, i32 %.0285290, i64 1
  br label %bb.c

bb.c:                                             ; preds = %.lr.ph, %bb.c
  %.0284289 = phi i32 [ 0, %.lr.ph ], [ %i.jh, %bb.c ] ; 3 uses
  %i.bl = load i32, ptr %i.as, align 8, !tbaa !348
  %i.bm = add nsw i32 %i.bl, %.0286292
  %i.bn = sitofp i32 %i.bm to double
  %i.bo = fadd nnan double %i.bn, 5.000000e-01
  %i.bp = load i32, ptr %i.at, align 4, !tbaa !67 ; 3 uses
  %i.bq = add nsw i32 %i.bp, %.0284289
  %i.br = load i32, ptr %i.au, align 8, !tbaa !65
  %i.bs = add nsw i32 %i.bp, %.0285290
  %i.bt = mul nsw i32 %i.br, %i.bs
  %i.bu = add nsw i32 %i.bq, %i.bt
  %i.bv = load i32, ptr %i.av, align 4, !tbaa !66
  %i.bw = add nsw i32 %i.bp, %.0286292
  %i.bx = mul nsw i32 %i.bv, %i.bw
  %i.by = add nsw i32 %i.bu, %i.bx
  %i.bz = load <2 x i32>, ptr %i.ar, align 8, !tbaa !4
  %i.ca = insertelement <2 x i32> %i.bk, i32 %.0284289, i64 0
  %i.cb = add nsw <2 x i32> %i.bz, %i.ca
  %i.cc = sitofp <2 x i32> %i.cb to <2 x double>
  %i.cd = fadd nnan <2 x double> %i.cc, splat (double 5.000000e-01)
  %i.ce = fmul <2 x double> %i.g, %i.cd           ; 2 uses
  %i.cf = fadd <2 x double> %i.ce, splat (double -5.000000e-01) ; 3 uses
  %i.cg = extractelement <2 x double> %i.cf, i64 0
  %i.ch = tail call double @pow(double noundef %i.cg, double noundef 2.000000e+00) #10, !tbaa !4
  %i.ci = extractelement <2 x double> %i.cf, i64 1
  %i.cj = tail call double @pow(double noundef %i.ci, double noundef 2.000000e+00) #10, !tbaa !4
  %i.ck = fadd double %i.ch, %i.cj
  %i.cl = fmul <2 x double> %i.cf, splat (double 2.000000e+00) ; 3 uses
  %i.cm = extractelement <2 x double> %i.cl, i64 0
  %i.cn = fmul double %i.cm, 5.000000e-01
  %i.co = extractelement <2 x double> %i.cl, i64 1
  %i.cp = fmul double %i.co, 5.000000e-01
  %i.cq = fmul double %2, %i.bo                   ; 2 uses
  %i.cr = fadd double %i.cq, -5.000000e-01        ; 2 uses
  %i.cs = fmul double %i.cr, 2.000000e+00         ; 2 uses
  %i.ct = fmul double %i.cs, 5.000000e-01
  %i.cu = fmul double %i.cs, -2.000000e+01        ; 3 uses
  %i.cv = tail call double @pow(double noundef %i.cr, double noundef 2.000000e+00) #10, !tbaa !4
  %i.cw = fadd double %i.ck, %i.cv                ; 8 uses
  %i.cx = tail call double @pow(double noundef %i.cw, double noundef 5.000000e-01) #10, !tbaa !4
  %i.cy = tail call double @pow(double noundef %i.cw, double noundef -5.000000e-01) #10, !tbaa !4 ; 3 uses
  %i.cz = fmul double %i.cp, %i.cy
  %i.da = fmul double %i.ct, %i.cy
  %i.db = tail call double @pow(double noundef %i.cw, double noundef -1.500000e+00) #10, !tbaa !4 ; 0 uses
  %i.dc = tail call double @pow(double noundef %i.cw, double noundef -5.000000e-01) #10, !tbaa !4 ; 0 uses
  %i.dd = tail call double @pow(double noundef %i.cw, double noundef -1.500000e+00) #10, !tbaa !4 ; 0 uses
  %i.de = tail call double @pow(double noundef %i.cw, double noundef -5.000000e-01) #10, !tbaa !4 ; 0 uses
  %i.df = tail call double @pow(double noundef %i.cw, double noundef -1.500000e+00) #10, !tbaa !4 ; 0 uses
  %i.dg = fadd double %i.cx, -2.500000e-01
  %i.dh = fmul double %i.dg, 1.000000e+01         ; 3 uses
  %i.di = tail call double @tanh(double noundef %i.dh) #10, !tbaa !4 ; 2 uses
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.di, double 4.500000e+00, double 5.500000e+00) ; 2 uses
  %i.dk = tail call double @pow(double noundef %i.di, double noundef 2.000000e+00) #10, !tbaa !4
  %i.dl = fsub double 1.000000e+00, %i.dk
  %i.dm = fmul double %i.cz, 4.500000e+01
  %i.dn = tail call double @tanh(double noundef %i.dh) #10, !tbaa !4
  %i.do = tail call double @pow(double noundef %i.dn, double noundef 2.000000e+00) #10, !tbaa !4
  %i.dp = fsub double 1.000000e+00, %i.do
  %i.dq = fmul double %i.dm, %i.dp
  %i.dr = fmul double %i.da, 4.500000e+01
  %i.ds = tail call double @tanh(double noundef %i.dh) #10, !tbaa !4
  %i.dt = tail call double @pow(double noundef %i.ds, double noundef 2.000000e+00) #10, !tbaa !4
  %i.du = fsub double 1.000000e+00, %i.dt
  %i.dv = fmul double %i.dr, %i.du
  %i.dw = shufflevector <2 x double> %i.ce, <2 x double> poison, <4 x i32> <i32 poison, i32 poison, i32 0, i32 1>
  %i.dx = insertelement <4 x double> %i.dw, double %i.cw, i64 0
  %i.dy = insertelement <4 x double> %i.dx, double %i.cq, i64 1
  %i.dz = fmul <4 x double> %i.dy, <double -2.000000e+01, double f0x401921FB54442D18, double f0x401921FB54442D18, double f0x401921FB54442D18> ; 4 uses
  %i.ea = extractelement <4 x double> %i.dz, i64 3 ; 10 uses
  %i.eb = extractelement <4 x double> %i.dz, i64 2 ; 10 uses
  %i.ec = extractelement <4 x double> %i.dz, i64 1 ; 10 uses
  %i.ed = extractelement <4 x double> %i.dz, i64 0 ; 10 uses
  %i.ee = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.ef = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.eg = fmul double %i.ee, %i.ef
  %i.eh = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.ei = fmul double %i.eg, %i.eh
  %i.ej = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %i.ek = fmul double %i.ei, %i.ej                ; 5 uses
  %i.el = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.em = tail call double @cos(double noundef %i.eb) #10, !tbaa !4
  %i.en = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.eo = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %i.ep = fmul <2 x double> %i.cl, splat (double -2.000000e+01) ; 3 uses
  %i.eq = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.er = insertelement <2 x double> poison, double %i.el, i64 0
  %i.es = insertelement <2 x double> %i.er, double %i.eq, i64 1
  %i.et = fmul <2 x double> %i.es, splat (double f0x401921FB54442D18)
  %i.eu = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.ev = insertelement <2 x double> poison, double %i.em, i64 0
  %i.ew = insertelement <2 x double> %i.ev, double %i.eu, i64 1
  %i.ex = fmul <2 x double> %i.et, %i.ew
  %i.ey = tail call double @cos(double noundef %i.ea) #10, !tbaa !4
  %i.ez = insertelement <2 x double> poison, double %i.en, i64 0
  %i.fa = insertelement <2 x double> %i.ez, double %i.ey, i64 1
  %i.fb = fmul <2 x double> %i.ex, %i.fa
  %i.fc = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %i.fd = insertelement <2 x double> poison, double %i.eo, i64 0
  %i.fe = insertelement <2 x double> %i.fd, double %i.fc, i64 1
  %i.ff = fmul <2 x double> %i.fb, %i.fe
  %i.fg = insertelement <2 x double> poison, double %i.ek, i64 0
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ep, <2 x double> %i.fh, <2 x double> %i.ff) ; 3 uses
  %i.fj = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.fk = fmul double %i.fj, f0x401921FB54442D18
  %i.fl = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.fm = fmul double %i.fk, %i.fl
  %i.fn = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.fo = fmul double %i.fm, %i.fn
  %i.fp = tail call double @cos(double noundef %i.ec) #10, !tbaa !4
  %i.fq = fmul double %i.fo, %i.fp
  %i.fr = tail call double @llvm.fmuladd.f64(double %i.cu, double %i.ek, double %i.fq) ; 2 uses
  %i.fs = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.ft = tail call double @cos(double noundef %i.eb) #10, !tbaa !4
  %i.fu = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.fv = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %i.fw = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.fx = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.fy = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.fz = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %i.ga = fmul <2 x double> %i.ep, %i.fi
  %i.gb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> splat (double -4.000000e+01), <2 x double> %i.ga)
  %i.gc = fmul <2 x double> %i.ep, splat (double f0x401921FB54442D18)
  %i.gd = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.ge = insertelement <2 x double> poison, double %i.fs, i64 0
  %i.gf = insertelement <2 x double> %i.ge, double %i.gd, i64 1
  %i.gg = fmul <2 x double> %i.gc, %i.gf
  %i.gh = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.gi = insertelement <2 x double> poison, double %i.ft, i64 0
  %i.gj = insertelement <2 x double> %i.gi, double %i.gh, i64 1
  %i.gk = fmul <2 x double> %i.gg, %i.gj
  %i.gl = tail call double @cos(double noundef %i.ea) #10, !tbaa !4
  %i.gm = insertelement <2 x double> poison, double %i.fu, i64 0
  %i.gn = insertelement <2 x double> %i.gm, double %i.gl, i64 1
  %i.go = fmul <2 x double> %i.gk, %i.gn
  %i.gp = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %i.gq = insertelement <2 x double> poison, double %i.fv, i64 0
  %i.gr = insertelement <2 x double> %i.gq, double %i.gp, i64 1
  %i.gs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.go, <2 x double> %i.gr, <2 x double> %i.gb)
  %i.gt = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.gu = insertelement <2 x double> poison, double %i.fw, i64 0
  %i.gv = insertelement <2 x double> %i.gu, double %i.gt, i64 1
  %i.gw = fmul <2 x double> %i.gv, splat (double f0x4043BD3CC9BE45DE)
  %i.gx = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.gy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.gz = insertelement <2 x double> %i.gy, double %i.gx, i64 1
  %i.ha = fmul <2 x double> %i.gw, %i.gz
  %i.hb = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.hc = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %i.hd = insertelement <2 x double> poison, double %i.fy, i64 0
  %i.he = insertelement <2 x double> %i.hd, double %i.hb, i64 1
  %i.hf = fneg <2 x double> %i.he
  %i.hg = fmul <2 x double> %i.ha, %i.hf
  %i.hh = insertelement <2 x double> poison, double %i.fz, i64 0
  %i.hi = insertelement <2 x double> %i.hh, double %i.hc, i64 1
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hg, <2 x double> %i.hi, <2 x double> %i.gs) ; 2 uses
  %i.hk = fmul double %i.cu, %i.fr
  %i.hl = fmul double %i.cu, f0x401921FB54442D18
  %i.hm = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %i.hn = fmul double %i.hl, %i.hm
  %i.ho = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.hp = fmul double %i.hn, %i.ho
  %i.hq = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %5 = tail call double @cos(double noundef %i.ec) #10, !tbaa !4
  %i.hr = tail call double @exp(double noundef %i.ed) #10, !tbaa !4
  %6 = tail call double @sin(double noundef %i.eb) #10, !tbaa !4
  %i.hs = tail call double @sin(double noundef %i.ea) #10, !tbaa !4
  %i.ht = tail call double @sin(double noundef %i.ec) #10, !tbaa !4
  %7 = fneg double %i.hs
  %8 = extractelement <2 x double> %i.fi, i64 1
  %9 = fmul double %i.dq, %8
  %10 = tail call double @llvm.fmuladd.f64(double %i.ek, double -4.000000e+01, double %i.hk)
  %i.hu = fmul double %i.hp, %i.hq
  %i.hv = insertelement <2 x double> poison, double %i.hr, i64 0
  %i.hw = insertelement <2 x double> %i.hv, double %i.cn, i64 1
  %i.hx = insertelement <2 x double> <double f0x4043BD3CC9BE45DE, double poison>, double %i.cy, i64 1
  %i.hy = fmul <2 x double> %i.hw, %i.hx
  %i.hz = insertelement <2 x double> <double poison, double 4.500000e+01>, double %6, i64 0
  %i.ia = fmul <2 x double> %i.hy, %i.hz
  %i.ib = insertelement <2 x double> poison, double %7, i64 0
  %i.ic = insertelement <2 x double> %i.ib, double %i.dl, i64 1
  %i.id = fmul <2 x double> %i.ia, %i.ic
  %11 = tail call double @llvm.fmuladd.f64(double %i.hu, double %5, double %10)
  %i.ie = shufflevector <2 x double> %i.fi, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.if = insertelement <2 x double> %i.ie, double %i.ht, i64 0
  %i.ig = insertelement <2 x double> poison, double %11, i64 0
  %i.ih = insertelement <2 x double> %i.ig, double %9, i64 1
  %i.ii = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.id, <2 x double> %i.if, <2 x double> %i.ih) ; 2 uses
  %i.ij = extractelement <2 x double> %i.ii, i64 1
  %i.ik = tail call double @llvm.fmuladd.f64(double %i.dv, double %i.fr, double %i.ij)
  %shift = shufflevector <2 x double> %i.hj, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x double> %i.hj, %shift
  %foldExtExtBinop317 = fadd <2 x double> %foldExtExtBinop, %i.ii
  %i.il = extractelement <2 x double> %foldExtExtBinop317, i64 0
  %i.im = tail call double @llvm.fmuladd.f64(double %i.dj, double %i.il, double %i.ik)
  %i.in = fneg double %i.im
  %i.io = fmul double %4, %i.in
  %i.ip = tail call double @llvm.fmuladd.f64(double %3, double %i.ek, double %i.io)
  %i.iq = load ptr, ptr %i.bj, align 8, !tbaa !33
  %i.ir = getelementptr inbounds [216 x i8], ptr %i.iq, i64 %i.e
  %i.is = getelementptr inbounds nuw i8, ptr %i.ir, i64 176
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !35 ; 4 uses
  %i.iu = getelementptr inbounds nuw i8, ptr %i.it, i64 16
  %i.iv = load ptr, ptr %i.iu, align 8, !tbaa !42
  %i.iw = sext i32 %i.by to i64                   ; 4 uses
  %i.ix = getelementptr inbounds [8 x i8], ptr %i.iv, i64 %i.iw
  store double 1.000000e+00, ptr %i.ix, align 8, !tbaa !44
  %i.iy = getelementptr inbounds nuw i8, ptr %i.it, i64 24
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !42
  %i.ja = getelementptr inbounds [8 x i8], ptr %i.iz, i64 %i.iw
  store double %i.dj, ptr %i.ja, align 8, !tbaa !44
  %i.jb = getelementptr inbounds nuw i8, ptr %i.it, i64 88
  %i.jc = load ptr, ptr %i.jb, align 8, !tbaa !42
  %i.jd = getelementptr inbounds [8 x i8], ptr %i.jc, i64 %i.iw
  store double %i.ek, ptr %i.jd, align 8, !tbaa !44
  %i.je = getelementptr inbounds nuw i8, ptr %i.it, i64 8
  %i.jf = load ptr, ptr %i.je, align 8, !tbaa !42
  %i.jg = getelementptr inbounds [8 x i8], ptr %i.jf, i64 %i.iw
  store double %i.ip, ptr %i.jg, align 8, !tbaa !44
  %i.jh = add nuw nsw i32 %.0284289, 1            ; 2 uses
  %i.ji = load i32, ptr %i.aq, align 4, !tbaa !70 ; 2 uses
  %i.jj = icmp slt i32 %i.jh, %i.ji
  br i1 %i.jj, label %bb.c, label %._crit_edge.loopexit, !llvm.loop !349

._crit_edge.loopexit:                             ; preds = %bb.c
  %.pre = load i32, ptr %i.ap, align 8, !tbaa !69
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.preheader
  %i.jk = phi i32 [ %.pre, %._crit_edge.loopexit ], [ %i.be, %.preheader ] ; 4 uses
  %i.jl = phi i32 [ %i.ji, %._crit_edge.loopexit ], [ %i.bf, %.preheader ]
  %i.jm = add nuw nsw i32 %.0285290, 1            ; 2 uses
  %i.jn = icmp slt i32 %i.jm, %i.jk
  br i1 %i.jn, label %.preheader, label %._crit_edge291.loopexit, !llvm.loop !350

._crit_edge291.loopexit:                          ; preds = %._crit_edge
  %.pre302 = load i32, ptr %i.am, align 4, !tbaa !68
  br label %._crit_edge291

._crit_edge291:                                   ; preds = %.preheader.lr.ph, %._crit_edge291.loopexit, %.preheader288
  %i.jo = phi i32 [ %i.ay, %.preheader288 ], [ %.pre302, %._crit_edge291.loopexit ], [ %i.ay, %.preheader.lr.ph ] ; 2 uses
  %i.jp = phi i32 [ %i.az, %.preheader288 ], [ %i.jk, %._crit_edge291.loopexit ], [ %i.az, %.preheader.lr.ph ]
  %i.jq = phi i32 [ %i.ba, %.preheader288 ], [ %i.jk, %._crit_edge291.loopexit ], [ %i.ba, %.preheader.lr.ph ]
  %i.jr = add nuw nsw i32 %.0286292, 1            ; 2 uses
  %i.js = icmp slt i32 %i.jr, %i.jo
  br i1 %i.js, label %.preheader288, label %._crit_edge294, !llvm.loop !352

._crit_edge294:                                   ; preds = %._crit_edge291, %.preheader288.lr.ph, %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %i.jt = load i32, ptr %i.a, align 8, !tbaa !64
  %i.ju = sext i32 %i.jt to i64
  %i.jv = icmp slt i64 %indvars.iv.next, %i.ju
  br i1 %i.jv, label %bb.b, label %._crit_edge298, !llvm.loop !353

._crit_edge298:                                   ; preds = %._crit_edge294, %bb.a
  %i.jw = tail call double @mean(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1) ; 2 uses
  %i.jx = getelementptr inbounds nuw i8, ptr %0, i64 1596
  %i.jy = load i32, ptr %i.jx, align 4, !tbaa !75
  %i.jz = icmp eq i32 %i.jy, 0
  br i1 %i.jz, label %bb.d, label %bb.e

bb.d:                                             ; preds = %._crit_edge298
  %i.ka = tail call i32 (ptr, ...) @printf(ptr noundef nonnull dereferenceable(1) @.str.2, double noundef %i.jw) ; 0 uses
  %i.kb = load ptr, ptr @stdout, align 8, !tbaa !76
  %i.kc = tail call i32 @fflush(ptr noundef %i.kb) ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %._crit_edge298
  %i.kd = fcmp une double %3, 0.000000e+00
  br i1 %i.kd, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.ke = fneg double %i.jw                       ; 2 uses
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 1, i32 noundef 1, double noundef %i.ke)
  %i.kf = fdiv double %i.ke, %3
  tail call void @shift_grid(ptr noundef nonnull %0, i32 noundef %1, i32 noundef 11, i32 noundef 11, double noundef %i.kf)
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
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!11, !5, i64 12}
!11 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !12, i64 12, !13, i64 24, !13, i64 56}
!12 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8}
!13 = !{!"", !5, i64 0, !5, i64 4, !5, i64 8, !5, i64 12, !5, i64 16, !5, i64 20, !14, i64 24}
!14 = !{!"p1 double", !9, i64 0}
!15 = !{!11, !5, i64 16}
!16 = !{!11, !5, i64 20}
!17 = !{!11, !5, i64 28}
!18 = !{!11, !5, i64 32}
!19 = !{!11, !5, i64 36}
!20 = !{!11, !5, i64 40}
!21 = !{!11, !5, i64 44}
!22 = !{!11, !5, i64 60}
!23 = !{!11, !5, i64 64}
!24 = !{!11, !5, i64 68}
!25 = !{!11, !5, i64 72}
!26 = !{!11, !5, i64 76}
!27 = !{!11, !14, i64 80}
!28 = !{!11, !5, i64 24}
!29 = !{!30, !9, i64 1776}
!30 = !{!"", !31, i64 0, !5, i64 1304, !5, i64 1308, !5, i64 1312, !5, i64 1316, !6, i64 1320, !6, i64 1432, !5, i64 1512, !5, i64 1516, !5, i64 1520, !5, i64 1524, !5, i64 1528, !5, i64 1532, !12, i64 1536, !12, i64 1548, !12, i64 1560, !12, i64 1572, !12, i64 1584, !5, i64 1596, !5, i64 1600, !5, i64 1604, !5, i64 1608, !5, i64 1612, !6, i64 1616, !6, i64 1696, !9, i64 1776}
!31 = !{!"", !6, i64 0, !6, i64 80, !6, i64 160, !6, i64 240, !6, i64 320, !6, i64 400, !6, i64 480, !6, i64 560, !6, i64 640, !6, i64 720, !6, i64 800, !6, i64 880, !6, i64 960, !6, i64 1040, !6, i64 1120, !6, i64 1200, !32, i64 1280, !32, i64 1288, !32, i64 1296}
!32 = !{!"long", !6, i64 0}
!33 = !{!34, !9, i64 248}
!34 = !{!"", !12, i64 0, !12, i64 12, !5, i64 24, !5, i64 28, !6, i64 32, !9, i64 248}
!35 = !{!36, !38, i64 176}
!36 = !{!"", !37, i64 0, !12, i64 8, !12, i64 20, !12, i64 32, !5, i64 44, !5, i64 48, !5, i64 52, !5, i64 56, !5, i64 60, !6, i64 64, !38, i64 176, !40, i64 184, !6, i64 192, !41, i64 208}
!37 = !{!"double", !6, i64 0}
!38 = !{!"p2 double", !39, i64 0}
!39 = !{!"any p2 pointer", !9, i64 0}
!40 = !{!"p1 long", !9, i64 0}
!41 = !{!"p1 omnipotent char", !9, i64 0}
!42 = !{!14, !14, i64 0}
!43 = !{!11, !5, i64 56}
!44 = !{!37, !37, i64 0}
!45 = distinct !{!45, !46, !47, !48}
!46 = !{!"llvm.loop.mustprogress"}
!47 = !{!"llvm.loop.isvectorized", i32 1}
!48 = !{!"llvm.loop.unroll.runtime.disable"}
!49 = distinct !{!49, !46, !47}
!50 = distinct !{!50, !46}
!51 = distinct !{!51, !46}
!52 = distinct !{!52, !46}
!53 = distinct !{!53, !46, !47, !48}
!54 = distinct !{!54, !46, !47}
!55 = distinct !{!55, !46}
!56 = distinct !{!56, !46}
!57 = !{!30, !5, i64 1520}
!58 = !{!30, !5, i64 1524}
!59 = !{!11, !5, i64 0}
!60 = !{!11, !5, i64 4}
!61 = !{!11, !5, i64 8}
end_hunk_0
