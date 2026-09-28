Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/mapgen_fractal?download=true
inline.NumInlined: 349
inline.NumDeleted: 54
begin_hunk_0_@_ZN13MapgenFractal17getFractalAtPointEsss:bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 508
  %i.ac = load float, ptr %i.ab, align 4, !tbaa !116
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.ad = sitofp nsz i16 %1 to float
  %i.ae = getelementptr inbounds nuw i8, ptr %0, i64 484
  %i.af = load float, ptr %i.ae, align 4, !tbaa !114
  %i.ag = fdiv nsz float %i.ad, %i.af
  %i.ah = getelementptr inbounds nuw i8, ptr %0, i64 496
  %i.ai = load float, ptr %i.ah, align 8, !tbaa !115
  %i.aj = fsub nsz float %i.ag, %i.ai
  %i.ak = insertelement <2 x i16> poison, i16 %3, i64 0
  %i.al = insertelement <2 x i16> %i.ak, i16 %2, i64 1
  %i.am = sitofp <2 x i16> %i.al to <2 x float>
  %i.an = getelementptr inbounds nuw i8, ptr %0, i64 488
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 500
  %i.ap = load <2 x float>, ptr %i.an, align 8, !tbaa !56
  %i.aq = shufflevector <2 x float> %i.ap, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ar = fdiv nsz <2 x float> %i.am, %i.aq
  %i.as = load <2 x float>, ptr %i.ao, align 4, !tbaa !56
  %i.at = shufflevector <2 x float> %i.as, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.au = fsub nsz <2 x float> %i.ar, %i.at
  %i.av = getelementptr inbounds nuw i8, ptr %0, i64 508
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0308 = phi nsz float [ %i.n, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.0302 = phi nsz float [ %i.ac, %bb.b ], [ 0.000000e+00, %bb.c ]
  %.0291.in = phi ptr [ %i.g, %bb.b ], [ %i.av, %bb.c ]
  %.0288 = phi nsz float [ %i.e, %bb.b ], [ %i.aj, %bb.c ] ; 13 uses
  %i.aw = phi <2 x float> [ %i.aa, %bb.b ], [ zeroinitializer, %bb.c ]
  %i.ax = phi <2 x float> [ %i.u, %bb.b ], [ %i.au, %bb.c ] ; 13 uses
  %.0291 = load float, ptr %.0291.in, align 4, !tbaa !56 ; 6 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 480
  %i.az = load i16, ptr %i.ay, align 8, !tbaa !117 ; 2 uses
  %.not311 = icmp eq i16 %i.az, 0
  br i1 %.not311, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.d
  %i.ba = getelementptr inbounds nuw i8, ptr %0, i64 474
  %i.bb = load i16, ptr %i.ba, align 2, !tbaa !61
  %i.bc = extractelement <2 x float> %i.ax, i64 0 ; 3 uses
  %i.bd = extractelement <2 x float> %i.ax, i64 1 ; 2 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.w, %.lr.ph
  %.0293317 = phi i16 [ 0, %.lr.ph ], [ %i.kf, %bb.w ]
  %.0294316 = phi float [ 0.000000e+00, %.lr.ph ], [ %.2, %bb.w ] ; 7 uses
  %.1303315 = phi float [ %.0302, %.lr.ph ], [ %.2, %bb.w ] ; 20 uses
  %.1309312 = phi float [ %.0308, %.lr.ph ], [ %.1301, %bb.w ] ; 52 uses
  %i.be = phi <2 x float> [ %i.aw, %.lr.ph ], [ %i.jy, %bb.w ] ; 40 uses
  switch i16 %i.bb, label %bb.f [
    i16 9, label %bb.t
    i16 2, label %bb.g
    i16 3, label %bb.h
    i16 4, label %bb.i
    i16 5, label %bb.j
    i16 6, label %bb.k
    i16 7, label %bb.n
    i16 8, label %bb.q
  ]

bb.f:                                             ; preds = %bb.e
  %i.bf = extractelement <2 x float> %i.be, i64 1 ; 3 uses
  %i.bg = fneg nsz float %i.bf
  %i.bh = fmul nsz float %i.bf, %i.bg
  %i.bi = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.bh)
  %i.bj = extractelement <2 x float> %i.be, i64 0 ; 3 uses
  %i.bk = fneg nsz float %i.bj
  %i.bl = tail call nsz float @llvm.fmuladd.f32(float %i.bk, float %i.bj, float %i.bi)
  %i.bm = fneg nsz float %.1303315
  %i.bn = tail call nsz float @llvm.fmuladd.f32(float %i.bm, float %.1303315, float %i.bl)
  %i.bo = fadd nsz float %.0288, %i.bn
  %i.bp = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bq = insertelement <2 x float> poison, float %.1303315, i64 0
  %i.br = shufflevector <2 x float> %i.bq, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bs = fmul nsz <2 x float> %i.bp, %i.br
  %i.bt = insertelement <2 x float> poison, float %.1309312, i64 0
  %i.bu = shufflevector <2 x float> %i.bt, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bv = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bu, <2 x float> %i.be, <2 x float> %i.bs)
  %i.bw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.bv, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ax)
  %i.bx = fmul nsz float %i.bf, %i.bj
  %i.by = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1303315, float %i.bx)
  %i.bz = tail call nsz float @llvm.fmuladd.f32(float %i.by, float 2.000000e+00, float %.0291)
  br label %bb.w

bb.g:                                             ; preds = %bb.e
  %i.ca = extractelement <2 x float> %i.be, i64 1 ; 3 uses
  %i.cb = fneg nsz float %i.ca
  %i.cc = fmul nsz float %i.ca, %i.cb
  %i.cd = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.cc)
  %i.ce = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.cf = fneg nsz float %i.ce                    ; 2 uses
  %i.cg = tail call nsz float @llvm.fmuladd.f32(float %i.cf, float %i.ce, float %i.cd)
  %i.ch = fneg nsz float %.1303315
  %i.ci = tail call nsz float @llvm.fmuladd.f32(float %i.ch, float %.1303315, float %i.cg)
  %i.cj = fadd nsz float %.0288, %i.ci
  %i.ck = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cl = insertelement <2 x float> poison, float %.1303315, i64 0
  %i.cm = shufflevector <2 x float> %i.cl, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cn = fmul nsz <2 x float> %i.ck, %i.cm
  %i.co = insertelement <2 x float> poison, float %.1309312, i64 0
  %i.cp = shufflevector <2 x float> %i.co, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cq = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cp, <2 x float> %i.be, <2 x float> %i.cn)
  %i.cr = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cq, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ax)
  %i.cs = fmul nsz float %i.ca, %i.cf
  %i.ct = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1303315, float %i.cs)
  %i.cu = tail call nsz float @llvm.fmuladd.f32(float %i.ct, float 2.000000e+00, float %.0291)
  br label %bb.w

bb.h:                                             ; preds = %bb.e
  %i.cv = extractelement <2 x float> %i.be, i64 1 ; 3 uses
  %i.cw = fneg nsz float %i.cv
  %i.cx = fmul nsz float %i.cv, %i.cw
  %i.cy = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.cx)
  %i.cz = extractelement <2 x float> %i.be, i64 0 ; 3 uses
  %i.da = fneg nsz float %i.cz
  %i.db = tail call nsz float @llvm.fmuladd.f32(float %i.da, float %i.cz, float %i.cy)
  %i.dc = tail call nsz float @llvm.fmuladd.f32(float %.1303315, float %.1303315, float %i.db)
  %i.dd = fadd nsz float %.0288, %i.dc
  %i.de = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.df = insertelement <2 x float> poison, float %.1303315, i64 0
  %i.dg = shufflevector <2 x float> %i.df, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dh = fmul nsz <2 x float> %i.de, %i.dg
  %i.di = insertelement <2 x float> poison, float %.1309312, i64 0
  %i.dj = shufflevector <2 x float> %i.di, <2 x float> poison, <2 x i32> zeroinitializer
  %i.dk = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dj, <2 x float> %i.be, <2 x float> %i.dh)
  %i.dl = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.dk, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ax)
  %i.dm = fmul nsz float %i.cv, %i.cz
  %i.dn = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1303315, float %i.dm)
  %i.do = tail call nsz float @llvm.fmuladd.f32(float %i.dn, float 2.000000e+00, float %.0291)
  br label %bb.w

bb.i:                                             ; preds = %bb.e
  %i.dp = extractelement <2 x float> %i.be, i64 1 ; 3 uses
  %i.dq = fneg nsz float %i.dp
  %i.dr = fmul nsz float %i.dp, %i.dq
  %i.ds = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.dr)
  %i.dt = extractelement <2 x float> %i.be, i64 0 ; 3 uses
  %i.du = fneg nsz float %i.dt
  %i.dv = tail call nsz float @llvm.fmuladd.f32(float %i.du, float %i.dt, float %i.ds)
  %i.dw = fneg nsz float %.1303315                ; 2 uses
  %i.dx = tail call nsz float @llvm.fmuladd.f32(float %i.dw, float %.1303315, float %i.dv)
  %i.dy = fadd nsz float %.0288, %i.dx
  %i.dz = shufflevector <2 x float> %i.be, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.ea = insertelement <2 x float> poison, float %i.dw, i64 0
  %i.eb = insertelement <2 x float> %i.ea, float %.1303315, i64 1
  %i.ec = fmul nsz <2 x float> %i.dz, %i.eb
  %i.ed = insertelement <2 x float> poison, float %.1309312, i64 0
  %i.ee = shufflevector <2 x float> %i.ed, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ef = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ee, <2 x float> %i.be, <2 x float> %i.ec)
  %i.eg = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ef, <2 x float> splat (float 2.000000e+00), <2 x float> %i.ax)
  %i.eh = fmul nsz float %i.dp, %i.dt
  %i.ei = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1303315, float %i.eh)
  %i.ej = tail call nsz float @llvm.fmuladd.f32(float %i.ei, float 2.000000e+00, float %.0291)
  br label %bb.w

bb.j:                                             ; preds = %bb.e
  %i.ek = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.el = fneg nsz float %i.ek
  %i.em = fmul nsz float %i.ek, %i.el
  %i.en = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.em)
  %i.eo = extractelement <2 x float> %i.be, i64 0 ; 2 uses
  %i.ep = fneg nsz float %i.eo
  %i.eq = tail call nsz float @llvm.fmuladd.f32(float %i.ep, float %i.eo, float %i.en)
  %i.er = fadd nsz float %.0288, %i.eq
  %i.es = insertelement <2 x float> poison, float %.1309312, i64 0
  %i.et = shufflevector <2 x float> %i.es, <2 x float> poison, <2 x i32> zeroinitializer
  %i.eu = fmul nsz <2 x float> %i.et, <float -2.000000e+00, float 2.000000e+00>
  %i.ev = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.eu, <2 x float> %i.be, <2 x float> %i.ax)
  br label %bb.w

bb.k:                                             ; preds = %bb.e
  %i.ew = extractelement <2 x float> %i.be, i64 0 ; 5 uses
  %i.ex = tail call nsz noundef float @llvm.fabs.f32(float %i.ew)
  %i.ey = fcmp nsz olt float %i.ex, f0x3089705F
  br i1 %i.ey, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.ez = extractelement <2 x float> %i.be, i64 1 ; 2 uses
  %i.fa = fneg nsz float %i.ez
  %i.fb = fmul nsz float %i.ez, %i.fa
  %i.fc = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.fb)
  %i.fd = fneg nsz float %i.ew
  %i.fe = tail call nsz float @llvm.fmuladd.f32(float %i.fd, float %i.ew, float %i.fc)
  %i.ff = fadd nsz float %.0288, %i.fe
  %i.fg = fmul nsz <2 x float> %i.be, <float 4.000000e+00, float 2.000000e+00>
  %i.fh = insertelement <2 x float> poison, float %.1309312, i64 0
  %i.fi = shufflevector <2 x float> %i.fh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.fj = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fg, <2 x float> %i.fi, <2 x float> %i.ax)
  br label %bb.w

bb.m:                                             ; preds = %bb.k
  %i.fk = fmul nsz float %.1309312, 2.000000e+00
  %foldExtExtBinop = fmul nsz <2 x float> %i.be, %i.be
  %i.fl = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.fm = extractelement <2 x float> %i.be, i64 1 ; 7 uses
  %i.fn = tail call nsz float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fl)
  %i.fo = tail call nsz noundef float @llvm.sqrt.f32(float %i.fn)
  %4 = fdiv nsz float %i.fk, %i.fo                ; 2 uses
  %i.fp = fneg nsz float %i.fm
  %i.fq = fmul nsz float %i.fm, %i.fp
  %i.fr = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.fq)
  %i.fs = fneg nsz float %i.ew
  %i.ft = tail call nsz float @llvm.fmuladd.f32(float %i.fs, float %i.ew, float %i.fr)
  %i.fu = fadd nsz float %.0288, %i.ft
  %i.fv = fneg nsz float %i.fl
  %5 = fmul nsz float %4, 2.000000e+00
  %i.fw = fmul nsz float %i.fm, %5
  %6 = tail call nsz float @llvm.fmuladd.f32(float %i.fm, float %i.fm, float %i.fv)
  %i.fx = insertelement <2 x float> poison, float %i.fw, i64 0
  %i.fy = insertelement <2 x float> %i.fx, float %4, i64 1
  %i.fz = insertelement <2 x float> %i.be, float %6, i64 1
  %i.ga = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fy, <2 x float> %i.fz, <2 x float> %i.ax)
  br label %bb.w

bb.n:                                             ; preds = %bb.e
  %i.gb = extractelement <2 x float> %i.be, i64 1 ; 3 uses
  %i.gc = tail call nsz noundef float @llvm.fabs.f32(float %i.gb)
  %i.gd = fcmp nsz olt float %i.gc, f0x3089705F
  br i1 %i.gd, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.ge = extractelement <2 x float> %i.be, i64 0 ; 3 uses
  %i.gf = fneg nsz float %i.ge
  %i.gg = fmul nsz float %i.ge, %i.gf
  %i.gh = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.gg)
  %i.gi = fadd nsz float %.0288, %i.gh
  %i.gj = fmul nsz float %i.ge, -2.000000e+00
  %i.gk = fmul nsz float %.1309312, %.1309312
  %i.gl = tail call nsz noundef float @llvm.sqrt.f32(float %i.gk)
  %i.gm = tail call nsz float @llvm.fmuladd.f32(float %i.gj, float %i.gl, float %i.bc)
  %i.gn = insertelement <2 x float> %i.ax, float %i.gm, i64 0
  br label %bb.w

bb.p:                                             ; preds = %bb.n
  %foldExtExtBinop324 = fmul nsz <2 x float> %i.be, %i.be
  %i.go = extractelement <2 x float> %foldExtExtBinop324, i64 0
  %i.gp = fmul nsz float %i.gb, %i.gb             ; 2 uses
  %i.gq = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.gp) ; 2 uses
  %i.gr = fdiv nsz float %i.go, %i.gq
  %i.gs = fsub nsz float 1.000000e+00, %i.gr      ; 2 uses
  %i.gt = fneg nsz float %i.gp
  %i.gu = fmul nsz float %.1309312, 2.000000e+00
  %i.gv = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.gt)
  %i.gw = tail call nsz float @llvm.fmuladd.f32(float %i.gv, float %i.gs, float %.0288)
  %i.gx = insertelement <2 x float> <float -2.000000e+00, float poison>, float %i.gu, i64 1
  %i.gy = fmul nsz <2 x float> %i.gx, %i.be
  %i.gz = tail call nsz noundef float @llvm.sqrt.f32(float %i.gq)
  %i.ha = insertelement <2 x float> poison, float %i.gz, i64 0
  %i.hb = insertelement <2 x float> %i.ha, float %i.gs, i64 1
  %i.hc = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.gy, <2 x float> %i.hb, <2 x float> %i.ax)
  br label %bb.w

bb.q:                                             ; preds = %bb.e
  %i.hd = extractelement <2 x float> %i.be, i64 1 ; 9 uses
  %i.he = tail call nsz noundef float @llvm.fabs.f32(float %i.hd)
  %i.hf = fcmp nsz olt float %i.he, f0x3089705F
  br i1 %i.hf, label %bb.r, label %bb.s

bb.r:                                             ; preds = %bb.q
  %i.hg = fmul nsz float %.1309312, 2.000000e+00
  %i.hh = extractelement <2 x float> %i.be, i64 0 ; 4 uses
  %i.hi = tail call nsz float @llvm.fmuladd.f32(float %i.hg, float %i.hh, float %.0288)
  %i.hj = fmul nnan nsz float %i.hd, 4.000000e+00
  %i.hk = tail call nsz float @llvm.fmuladd.f32(float %i.hj, float %i.hh, float %i.bd)
  %i.hl = fneg nsz float %.1309312
  %i.hm = fmul nsz float %.1309312, %i.hl
  %i.hn = tail call nsz float @llvm.fmuladd.f32(float %i.hh, float %i.hh, float %i.hm)
  %i.ho = fneg nsz float %i.hd
  %i.hp = tail call nsz float @llvm.fmuladd.f32(float %i.ho, float %i.hd, float %i.hn)
  %i.hq = fadd nsz float %i.bc, %i.hp
  %i.hr = insertelement <2 x float> poison, float %i.hq, i64 0
  %i.hs = insertelement <2 x float> %i.hr, float %i.hk, i64 1
  br label %bb.w

bb.s:                                             ; preds = %bb.q
  %i.ht = extractelement <2 x float> %i.be, i64 0 ; 3 uses
  %i.hu = fmul nsz float %i.ht, 2.000000e+00
  %i.hv = fmul nsz float %i.hd, %i.hd             ; 2 uses
  %i.hw = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.hv)
  %i.hx = tail call nsz noundef float @llvm.sqrt.f32(float %i.hw)
  %i.hy = fdiv nsz float %i.hu, %i.hx             ; 2 uses
  %i.hz = fneg nsz float %i.hv
  %i.ia = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.hz)
  %i.ib = tail call nsz float @llvm.fmuladd.f32(float %i.ia, float %i.hy, float %.0288)
  %i.ic = fmul nsz float %.1309312, 2.000000e+00
  %i.id = fmul nsz float %i.ic, %i.hd
  %i.ie = tail call nsz float @llvm.fmuladd.f32(float %i.id, float %i.hy, float %i.bd)
  %i.if = fneg nsz float %.1309312
  %i.ig = fmul nsz float %.1309312, %i.if
  %i.ih = tail call nsz float @llvm.fmuladd.f32(float %i.ht, float %i.ht, float %i.ig)
  %i.ii = fneg nsz float %i.hd
  %i.ij = tail call nsz float @llvm.fmuladd.f32(float %i.ii, float %i.hd, float %i.ih)
  %i.ik = fadd nsz float %i.bc, %i.ij
  %i.il = insertelement <2 x float> poison, float %i.ik, i64 0
  %i.im = insertelement <2 x float> %i.il, float %i.ie, i64 1
  br label %bb.w

bb.t:                                             ; preds = %bb.e
  %foldExtExtBinop326 = fmul nsz <2 x float> %i.be, %i.be
  %i.in = extractelement <2 x float> %foldExtExtBinop326, i64 1 ; 3 uses
  %i.io = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.in) ; 2 uses
  %i.ip = extractelement <2 x float> %i.be, i64 0 ; 3 uses
  %i.iq = tail call nsz float @llvm.fmuladd.f32(float %i.ip, float %i.ip, float %i.io)
  %i.ir = insertelement <2 x float> poison, float %i.io, i64 0
  %i.is = insertelement <2 x float> %i.ir, float %i.iq, i64 1
  %i.it = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.is) ; 6 uses
  %i.iu = tail call nsz noundef float @llvm.fabs.f32(float %.1303315)
  %i.iv = fcmp nsz olt float %i.iu, f0x3089705F
  %i.iw = tail call nsz float @llvm.fabs.f32(float %i.ip)
  %i.ix = fcmp nsz olt float %i.iw, f0x3089705F
  %or.cond = select i1 %i.iv, i1 %i.ix, i1 false
  br i1 %or.cond, label %bb.u, label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.iy = fneg nsz float %i.in
  %i.iz = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.iy)
  %i.ja = fadd nsz float %.0288, %i.iz
  %i.jb = insertelement <2 x float> %i.it, float %.1309312, i64 1
  %i.jc = fmul nsz <2 x float> %i.jb, <float -2.000000e+00, float 2.000000e+00>
  %i.jd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.jc, <2 x float> %i.be, <2 x float> %i.ax)
  %i.je = extractelement <2 x float> %i.it, i64 1
  %i.jf = fmul nsz float %i.je, 2.000000e+00
  %i.jg = tail call nsz float @llvm.fmuladd.f32(float %i.jf, float %.1303315, float %.0291)
  br label %bb.w

bb.v:                                             ; preds = %bb.t
  %i.jh = fmul nsz <2 x float> %i.it, %i.it
  %i.ji = insertelement <2 x float> %i.be, float %.1303315, i64 1 ; 2 uses
  %i.jj = fmul nsz <2 x float> %i.ji, %i.ji
  %i.jk = fdiv nsz <2 x float> %i.jj, %i.jh
  %i.jl = fsub nsz <2 x float> splat (float 1.000000e+00), %i.jk ; 3 uses
  %i.jm = fneg nsz float %i.in
  %i.jn = insertelement <2 x float> %i.it, float %.1309312, i64 1
  %i.jo = fmul nsz <2 x float> %i.jn, <float -2.000000e+00, float 2.000000e+00>
  %shift = shufflevector <2 x float> %i.jl, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop328 = fmul nsz <2 x float> %i.jl, %shift ; 2 uses
  %i.jp = extractelement <2 x float> %foldExtExtBinop328, i64 0
  %i.jq = tail call nsz float @llvm.fmuladd.f32(float %.1309312, float %.1309312, float %i.jm)
  %i.jr = tail call nsz float @llvm.fmuladd.f32(float %i.jq, float %i.jp, float %.0288)
  %i.js = fmul nsz <2 x float> %i.be, %i.jo
  %i.jt = shufflevector <2 x float> %i.jl, <2 x float> %foldExtExtBinop328, <2 x i32> <i32 1, i32 2>
  %i.ju = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.js, <2 x float> %i.jt, <2 x float> %i.ax)
  %i.jv = extractelement <2 x float> %i.it, i64 1
  %i.jw = fmul nsz float %i.jv, 2.000000e+00
  %i.jx = tail call nsz float @llvm.fmuladd.f32(float %i.jw, float %.1303315, float %.0291)
  br label %bb.w

bb.w:                                             ; preds = %bb.u, %bb.v, %bb.r, %bb.s, %bb.o, %bb.p, %bb.l, %bb.m, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f
  %.1301 = phi nsz float [ %i.bo, %bb.f ], [ %i.ib, %bb.s ], [ %i.cj, %bb.g ], [ %i.dd, %bb.h ], [ %i.dy, %bb.i ], [ %i.er, %bb.j ], [ %i.ff, %bb.l ], [ %i.fu, %bb.m ], [ %i.gi, %bb.o ], [ %i.gw, %bb.p ], [ %i.hi, %bb.r ], [ %i.ja, %bb.u ], [ %i.jr, %bb.v ] ; 3 uses
  %.2 = phi nsz float [ %i.bz, %bb.f ], [ %.0294316, %bb.s ], [ %i.cu, %bb.g ], [ %i.do, %bb.h ], [ %i.ej, %bb.i ], [ %.0294316, %bb.j ], [ %.0294316, %bb.l ], [ %.0294316, %bb.m ], [ %.0294316, %bb.o ], [ %.0294316, %bb.p ], [ %.0294316, %bb.r ], [ %i.jg, %bb.u ], [ %i.jx, %bb.v ] ; 4 uses
  %i.jy = phi <2 x float> [ %i.bw, %bb.f ], [ %i.im, %bb.s ], [ %i.cr, %bb.g ], [ %i.dl, %bb.h ], [ %i.eg, %bb.i ], [ %i.ev, %bb.j ], [ %i.fj, %bb.l ], [ %i.ga, %bb.m ], [ %i.gn, %bb.o ], [ %i.hc, %bb.p ], [ %i.hs, %bb.r ], [ %i.jd, %bb.u ], [ %i.ju, %bb.v ] ; 4 uses
  %foldExtExtBinop330 = fmul nsz <2 x float> %i.jy, %i.jy
  %i.jz = extractelement <2 x float> %foldExtExtBinop330, i64 1
  %i.ka = tail call nsz float @llvm.fmuladd.f32(float %.1301, float %.1301, float %i.jz)
  %i.kb = extractelement <2 x float> %i.jy, i64 0 ; 2 uses
  %i.kc = tail call nsz float @llvm.fmuladd.f32(float %i.kb, float %i.kb, float %i.ka)
  %i.kd = tail call nsz float @llvm.fmuladd.f32(float %.2, float %.2, float %i.kc)
  %i.ke = fcmp nsz ule float %i.kd, 4.000000e+00  ; 2 uses
  %i.kf = add nuw i16 %.0293317, 1                ; 2 uses
  %exitcond.not = icmp ne i16 %i.kf, %i.az
  %or.cond322.not = select i1 %i.ke, i1 %exitcond.not, i1 false
  br i1 %or.cond322.not, label %bb.e, label %.critedge, !llvm.loop !112

.critedge:                                        ; preds = %bb.w, %bb.d
  %.not.lcssa = phi i1 [ true, %bb.d ], [ %i.ke, %bb.w ]
  ret i1 %.not.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN13MapgenFractal9makeChunkEP13BlockMakeData(ptr noundef nonnull align 8 dereferenceable(536) initializes((24, 25), (32, 40), (48, 60), (216, 240)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  store i8 1, ptr %i.a, align 8, !tbaa !118
  %i.b = load ptr, ptr %1, align 8, !tbaa !131
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.b, ptr %i.c, align 8, !tbaa !80
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 168
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !132
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %i.e, ptr %i.f, align 8, !tbaa !133
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 16
  %.sroa.0154.0.copyload = load i16, ptr %i.g, align 8, !tbaa !54
  %.sroa.5156.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 18
  %.sroa.5156.0.copyload = load i16, ptr %.sroa.5156.0..sroa_idx, align 2, !tbaa !54
  %.sroa.7158.0..sroa_idx = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.h = shl i16 %.sroa.0154.0.copyload, 4        ; 2 uses
  %i.i = shl i16 %.sroa.5156.0.copyload, 4        ; 2 uses
  %.sroa.2.0.insert.ext.i = zext i16 %i.i to i48
  %.sroa.2.0.insert.shift.i = shl nuw nsw i48 %.sroa.2.0.insert.ext.i, 16
  %.sroa.0.0.insert.ext.i = zext i16 %i.h to i48
  %.sroa.2.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.shift.i, %.sroa.0.0.insert.ext.i
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 216 ; 6 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 222 ; 5 uses
  %i.l = add i16 %i.h, -16
  %i.m = add i16 %i.i, -16
  %.sroa.2.0.insert.ext.i83 = zext i16 %i.m to i48
  %.sroa.2.0.insert.shift.i84 = shl nuw nsw i48 %.sroa.2.0.insert.ext.i83, 16
  %.sroa.0.0.insert.ext.i86 = zext i16 %i.l to i48
  %i.n = getelementptr inbounds nuw i8, ptr %0, i64 228 ; 3 uses
  %i.o = load <4 x i16>, ptr %.sroa.7158.0..sroa_idx, align 4, !tbaa !54
  %i.p = shl <4 x i16> %i.o, splat (i16 4)        ; 5 uses
  %i.q = extractelement <4 x i16> %i.p, i64 0
  %.sroa.3.0.insert.ext.i = zext i16 %i.q to i48
  %.sroa.3.0.insert.shift.i = shl nuw i48 %.sroa.3.0.insert.ext.i, 32
  %.sroa.0.0.insert.insert.i = or disjoint i48 %.sroa.2.0.insert.insert.i, %.sroa.3.0.insert.shift.i
  store i48 %.sroa.0.0.insert.insert.i, ptr %i.j, align 8, !tbaa !54
  %i.r = extractelement <4 x i16> %i.p, i64 1
  %i.s = or disjoint i16 %i.r, 15
  %i.t = extractelement <4 x i16> %i.p, i64 2
  %i.u = or disjoint i16 %i.t, 15
  %i.v = extractelement <4 x i16> %i.p, i64 3
end_hunk_0
