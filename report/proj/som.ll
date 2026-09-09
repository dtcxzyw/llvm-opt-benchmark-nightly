Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/proj/original/som?download=true
inline.NumInlined: 4
inline.NumDeleted: 1
loop-unroll.NumCompletelyUnrolled: 3
loop-unroll.NumUnrolled: 3
loop-unroll.NumUnrolledNotLatch: 1
begin_hunk_0_@_ZL9som_setupP8PJconsts:.preheader
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !42   ; 14 uses
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 120
  %i.d = load double, ptr %i.c, align 8, !tbaa !47 ; 2 uses
  %i.e = tail call double @sin(double noundef %i.d) #8 ; 4 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store double %i.e, ptr %i.f, align 8, !tbaa !50
  %i.g = tail call double @cos(double noundef %i.d) #8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  %i.i = tail call double @llvm.fabs.f64(double %i.g)
  %i.j = fcmp olt double %i.i, 1.000000e-09
  %storemerge = select i1 %i.j, double 1.000000e-09, double %i.g ; 7 uses
  store double %storemerge, ptr %i.h, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.l = load double, ptr %i.k, align 8, !tbaa !52 ; 3 uses
  %i.m = fmul double %i.l, %storemerge
  %i.n = fmul double %storemerge, %i.m            ; 2 uses
  %i.o = fmul double %i.e, %i.l
  %i.p = fsub double 1.000000e+00, %i.n
  %i.q = getelementptr inbounds nuw i8, ptr %0, i64 264
  %i.r = load double, ptr %i.q, align 8, !tbaa !53 ; 4 uses
  %i.s = fmul double %i.r, %i.p
  %i.t = getelementptr inbounds nuw i8, ptr %i.b, i64 64
  %i.u = getelementptr inbounds nuw i8, ptr %i.b, i64 40
  %i.v = fsub double 2.000000e+00, %i.l
  %i.w = getelementptr inbounds nuw i8, ptr %i.b, i64 48
  %i.x = fmul double %i.r, %i.n
  %i.y = getelementptr inbounds nuw i8, ptr %i.b, i64 56
  store double %i.x, ptr %i.y, align 8, !tbaa !54
  %i.z = getelementptr inbounds nuw i8, ptr %0, i64 256
  %i.aa = load double, ptr %i.z, align 8, !tbaa !55 ; 3 uses
  %i.ab = fmul double %i.aa, %i.aa
  %i.ac = getelementptr inbounds nuw i8, ptr %i.b, i64 96
  %i.ad = getelementptr inbounds nuw i8, ptr %i.b, i64 104
  %i.ae = load double, ptr %i.ad, align 8, !tbaa !49
  %i.af = fadd double %i.ae, f0x401921FB54442D18
  %i.ag = getelementptr inbounds nuw i8, ptr %i.b, i64 112
  store double %i.af, ptr %i.ag, align 8, !tbaa !56
  %i.ah = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  %i.ai = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.aj = getelementptr inbounds nuw i8, ptr %i.b, i64 72
  %i.ak = load double, ptr %i.aj, align 8, !tbaa !48 ; 2 uses
  %i.al = fneg double %i.ak                       ; 4 uses
  %i.am = fmul double %i.e, %i.o                  ; 2 uses
  %i.an = fmul double %i.v, %i.am
  %i.ao = fmul double %i.r, %i.an
  %i.ap = insertelement <2 x double> poison, double %i.r, i64 0
  %i.aq = shufflevector <2 x double> %i.ap, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ar = insertelement <2 x double> poison, double %i.am, i64 0
  %i.as = insertelement <2 x double> %i.ar, double %i.ao, i64 1
  %i.at = fmul <2 x double> %i.aq, %i.as          ; 8 uses
  %i.au = extractelement <2 x double> %i.at, i64 1 ; 2 uses
  %i.av = extractelement <2 x double> %i.at, i64 0
  store double %i.au, ptr %i.w, align 8, !tbaa !57
  %i.aw = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 4 uses
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> <double f0x3FCA61B9F7154B43, double f0x3FDFFFFFFFFFFFFE>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  store double %i.av, ptr %i.u, align 8, !tbaa !58
  %i.ay = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> <double 0.000000e+00, double f0x3F990F1ECBBAB00A>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.az = fadd <2 x double> %i.at, splat (double 1.000000e+00) ; 4 uses
  %i.ba = shufflevector <2 x double> %i.at, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ba, <2 x double> <double f0x3FEF378709A22A80, double f0x3FE96791823AAD2E>, <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %i.bc = insertelement <2 x double> %i.at, double %i.s, i64 0 ; 2 uses
  %i.bd = insertelement <2 x double> %i.bc, double f0x3FE96791823AAD2E, i64 1
  %i.be = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bc, <2 x double> %i.bd, <2 x double> <double -1.000000e+00, double 1.000000e+00>) ; 5 uses
  %i.bf = extractelement <2 x double> %i.be, i64 0
  store double %i.bf, ptr %i.t, align 8, !tbaa !59
  %i.bg = fadd <2 x double> %i.be, <double 1.000000e+00, double -0.000000e+00> ; 3 uses
  %i.bh = shufflevector <2 x double> %i.at, <2 x double> %i.be, <2 x i32> <i32 0, i32 2> ; 4 uses
  %i.bi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> zeroinitializer, <2 x double> splat (double 1.000000e+00)) ; 5 uses
  %i.bj = extractelement <2 x double> %i.bi, i64 0 ; 2 uses
  %i.bk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double f0x3F990F1ECBBAB00A), <2 x double> splat (double 1.000000e+00)) ; 6 uses
  %i.bl = extractelement <2 x double> %i.bi, i64 1 ; 2 uses
  %i.bm = fmul double %i.bj, %i.bl
  %i.bn = extractelement <2 x double> %i.ay, i64 0
  %i.bo = fdiv double %i.bn, %i.bm
  %i.bp = tail call double @sqrt(double noundef %i.bo) #8
  %i.bq = fdiv double %i.bj, %i.bl
  %i.br = tail call double @sqrt(double noundef %i.bq) #8
  %i.bs = shufflevector <2 x double> %i.bi, <2 x double> %i.bk, <2 x i32> <i32 0, i32 3>
  %i.bt = shufflevector <2 x double> %i.bi, <2 x double> %i.bk, <2 x i32> <i32 0, i32 2>
  %i.bu = fmul <2 x double> %i.bs, %i.bt
  %i.bv = shufflevector <2 x double> %i.bi, <2 x double> %i.ay, <2 x i32> <i32 1, i32 3>
  %i.bw = fdiv <2 x double> %i.bv, %i.bu          ; 2 uses
  %i.bx = extractelement <2 x double> %i.bw, i64 0
  %i.by = tail call double @llvm.fmuladd.f64(double %i.al, double %storemerge, double %i.bx)
  %i.bz = fmul double %i.by, %i.br                ; 2 uses
  %i.ca = extractelement <2 x double> %i.bw, i64 1
  %i.cb = tail call double @sqrt(double noundef %i.ca) #8
  %foldExtExtBinop = fmul <2 x double> %i.bk, %i.bk
  %i.cc = shufflevector <2 x double> %i.bk, <2 x double> %foldExtExtBinop, <2 x i32> <i32 1, i32 2>
  %i.cd = fdiv <2 x double> %i.bk, %i.cc          ; 2 uses
  %i.ce = extractelement <2 x double> %i.cd, i64 0
  %i.cf = tail call double @sqrt(double noundef %i.ce) #8
  %i.cg = extractelement <2 x double> %i.cd, i64 1
  %i.ch = tail call double @llvm.fmuladd.f64(double %i.al, double %storemerge, double %i.cg)
  %i.ci = fmul double %i.cf, %i.ch                ; 2 uses
  %i.cj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double f0x3FCA61B9F7154B43), <2 x double> splat (double 1.000000e+00)) ; 4 uses
  %i.ck = extractelement <2 x double> %i.cj, i64 1 ; 2 uses
  %i.cl = extractelement <2 x double> %i.cj, i64 0 ; 2 uses
  %i.cm = fmul double %i.ck, %i.cl
  %i.cn = extractelement <2 x double> %i.ax, i64 0
  %i.co = fdiv double %i.cn, %i.cm
  %i.cp = tail call double @sqrt(double noundef %i.co) #8
  %i.cq = fdiv double %i.cl, %i.ck
  %i.cr = tail call double @sqrt(double noundef %i.cq) #8
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bh, <2 x double> splat (double f0x3FDFFFFFFFFFFFFE), <2 x double> splat (double 1.000000e+00)) ; 4 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 1 ; 2 uses
  %i.cu = extractelement <2 x double> %i.cs, i64 0 ; 2 uses
  %i.cv = fmul double %i.ct, %i.cu
  %i.cw = extractelement <2 x double> %i.ax, i64 1
  %i.cx = fdiv double %i.cw, %i.cv
  %i.cy = tail call double @sqrt(double noundef %i.cx) #8
  %i.cz = fdiv double %i.cu, %i.ct
  %i.da = tail call double @sqrt(double noundef %i.cz) #8
  %foldExtExtBinop95 = fmul <2 x double> %i.az, %i.bg
  %i.db = shufflevector <2 x double> %i.bg, <2 x double> %foldExtExtBinop95, <2 x i32> <i32 0, i32 2>
  %i.dc = fdiv <2 x double> %i.az, %i.db          ; 2 uses
  %i.dd = shufflevector <2 x double> %i.be, <2 x double> poison, <2 x i32> zeroinitializer
  %i.de = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dd, <2 x double> <double f0x3FEF378709A22A80, double f0x3FE96791823AAD2E>, <2 x double> splat (double 1.000000e+00)) ; 5 uses
  %i.df = shufflevector <2 x double> %i.az, <2 x double> %i.de, <2 x i32> <i32 0, i32 3>
  %i.dg = shufflevector <2 x double> %i.az, <2 x double> %i.bb, <2 x i32> <i32 0, i32 3>
  %i.dh = fmul <2 x double> %i.df, %i.dg
  %i.di = fdiv <2 x double> %i.bg, %i.dh          ; 2 uses
  %i.dj = extractelement <2 x double> %i.di, i64 1
  %i.dk = tail call double @sqrt(double noundef %i.dj) #8
  %i.dl = fmul <2 x double> %i.bb, %i.bb
  %i.dm = fdiv <2 x double> %i.de, %i.dl
  %i.dn = shufflevector <2 x double> %i.be, <2 x double> poison, <4 x i32> zeroinitializer
  %i.do = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dn, <4 x double> <double f0x3FECF1BBCDCBFA53, double f0x3FE4F1BBCDCBFA54, double f0x3FD61C8864680B58, double f0x3FB8722191A02D60>, <4 x double> splat (double 1.000000e+00)) ; 6 uses
  %i.dp = shufflevector <2 x double> %i.at, <2 x double> poison, <4 x i32> zeroinitializer
  %i.dq = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.dp, <4 x double> <double f0x3FECF1BBCDCBFA53, double f0x3FE4F1BBCDCBFA54, double f0x3FD61C8864680B58, double f0x3FB8722191A02D60>, <4 x double> splat (double 1.000000e+00)) ; 6 uses
  %i.dr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> <double f0x3FEF378709A22A80, double f0x3FB8722191A02D60>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.ds = shufflevector <2 x double> %i.bb, <2 x double> %i.dr, <2 x i32> <i32 1, i32 2>
  %foldExtExtBinop97 = fmul <2 x double> %i.de, %i.bb
  %i.dt = shufflevector <2 x double> %i.de, <2 x double> %foldExtExtBinop97, <2 x i32> <i32 1, i32 2>
  %i.du = fdiv <2 x double> %i.ds, %i.dt          ; 2 uses
  %i.dv = extractelement <2 x double> %i.du, i64 0
  %i.dw = tail call double @sqrt(double noundef %i.dv) #8
  %i.dx = extractelement <2 x double> %i.du, i64 1
  %i.dy = tail call double @sqrt(double noundef %i.dx) #8
  %i.dz = shufflevector <2 x double> %i.bb, <2 x double> %i.dr, <2 x i32> <i32 0, i32 3>
  %i.ea = shufflevector <4 x double> %i.dq, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.eb = shufflevector <4 x double> %i.do, <4 x double> poison, <2 x i32> <i32 3, i32 poison>
  %i.ec = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.aw, <2 x double> <double f0x3FD61C8864680B58, double f0x3FE4F1BBCDCBFA54>, <2 x double> splat (double 1.000000e+00)) ; 2 uses
  %i.ed = shufflevector <2 x double> %i.ea, <2 x double> %i.ec, <2 x i32> <i32 0, i32 2>
  %i.ee = shufflevector <4 x double> %i.do, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.ef = shufflevector <4 x double> %i.dq, <4 x double> poison, <2 x i32> <i32 2, i32 3> ; 2 uses
  %i.eg = fmul <2 x double> %i.ee, %i.ef          ; 2 uses
  %i.eh = shufflevector <2 x double> %i.de, <2 x double> %i.eg, <2 x i32> <i32 0, i32 3>
  %i.ei = fdiv <2 x double> %i.dz, %i.eh          ; 2 uses
  %i.ej = extractelement <2 x double> %i.ei, i64 0
  %i.ek = tail call double @sqrt(double noundef %i.ej) #8
  %i.el = extractelement <2 x double> %i.ei, i64 1
  %i.em = tail call double @sqrt(double noundef %i.el) #8
  %i.en = shufflevector <2 x double> %i.eb, <2 x double> %i.eg, <2 x i32> <i32 0, i32 2>
  %i.eo = fdiv <2 x double> %i.ed, %i.en          ; 2 uses
  %i.ep = extractelement <2 x double> %i.eo, i64 0
  %i.eq = tail call double @sqrt(double noundef %i.ep) #8
  %i.er = extractelement <2 x double> %i.eo, i64 1
  %i.es = tail call double @sqrt(double noundef %i.er) #8
  %i.et = shufflevector <2 x double> %i.ef, <2 x double> %i.ec, <2 x i32> <i32 0, i32 3>
  %i.eu = tail call double @llvm.fmuladd.f64(double %i.au, double f0x3FECF1BBCDCBFA53, double 1.000000e+00)
  %i.ev = shufflevector <4 x double> %i.do, <4 x double> poison, <2 x i32> <i32 0, i32 1>
  %i.ew = shufflevector <4 x double> %i.dq, <4 x double> poison, <2 x i32> <i32 0, i32 1> ; 2 uses
  %i.ex = fmul <2 x double> %i.ev, %i.ew          ; 2 uses
  %i.ey = shufflevector <2 x double> %i.ee, <2 x double> %i.ex, <2 x i32> <i32 0, i32 3>
  %i.ez = fdiv <2 x double> %i.et, %i.ey          ; 2 uses
  %i.fa = extractelement <2 x double> %i.ez, i64 0
  %i.fb = tail call double @sqrt(double noundef %i.fa) #8
  %i.fc = extractelement <2 x double> %i.ez, i64 1
  %i.fd = tail call double @sqrt(double noundef %i.fc) #8
  %i.fe = shufflevector <4 x double> %i.dq, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ff = insertelement <2 x double> %i.fe, double %i.eu, i64 1
  %i.fg = shufflevector <4 x double> %i.do, <4 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fh = shufflevector <2 x double> %i.fg, <2 x double> %i.ex, <2 x i32> <i32 0, i32 2>
  %i.fi = fdiv <2 x double> %i.ff, %i.fh          ; 2 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 0
  %i.fk = tail call double @sqrt(double noundef %i.fj) #8
  %i.fl = extractelement <2 x double> %i.fi, i64 1
  %i.fm = tail call double @sqrt(double noundef %i.fl) #8
  %i.fn = extractelement <2 x double> %i.dc, i64 1
  %i.fo = insertelement <7 x double> poison, double %i.fm, i64 0
  %i.fp = insertelement <7 x double> %i.fo, double %i.fd, i64 1
  %i.fq = insertelement <7 x double> %i.fp, double %i.es, i64 2
  %i.fr = insertelement <7 x double> %i.fq, double %i.em, i64 3
  %i.fs = insertelement <7 x double> %i.fr, double %i.dy, i64 4
  %i.ft = insertelement <7 x double> %i.fs, double %i.dk, i64 5
  %i.fu = extractelement <2 x double> %i.dc, i64 0
  %i.fv = fmul <4 x double> %i.dq, %i.dq
  %i.fw = fdiv <4 x double> %i.do, %i.fv
  %i.fx = insertelement <7 x double> poison, double %i.al, i64 0
  %i.fy = shufflevector <7 x double> %i.fx, <7 x double> poison, <7 x i32> zeroinitializer
  %i.fz = insertelement <7 x double> poison, double %storemerge, i64 0
  %i.ga = shufflevector <7 x double> %i.fz, <7 x double> poison, <7 x i32> zeroinitializer
  %i.gb = shufflevector <4 x double> %i.fw, <4 x double> poison, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 poison, i32 poison, i32 poison>
  %i.gc = shufflevector <2 x double> %i.dm, <2 x double> poison, <7 x i32> <i32 0, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gd = shufflevector <7 x double> %i.gb, <7 x double> %i.gc, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 7, i32 8, i32 poison>
  %i.ge = shufflevector <2 x double> %i.di, <2 x double> poison, <7 x i32> <i32 0, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.gf = shufflevector <7 x double> %i.gd, <7 x double> %i.ge, <7 x i32> <i32 0, i32 1, i32 2, i32 3, i32 4, i32 5, i32 7>
  %i.gg = tail call <7 x double> @llvm.fmuladd.v7f64(<7 x double> %i.fy, <7 x double> %i.ga, <7 x double> %i.gf)
  %1 = fmul double %i.e, %i.ak                    ; 3 uses
  %2 = fmul double %i.aa, %i.ab                   ; 6 uses
  %3 = fmul double %1, f0x3FEF9B24942FE45C
  %i.gh = insertelement <2 x double> poison, double %1, i64 0 ; 2 uses
  %4 = shufflevector <2 x double> %i.gh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gi = fmul <2 x double> %4, <double f0x3FEC83201D3D2C6D, double f0x3FE6A09E667F3BCD>
  %i.gj = insertelement <2 x double> poison, double %i.cp, i64 0
  %i.gk = insertelement <2 x double> %i.gj, double %i.cy, i64 1
  %i.gl = fmul <2 x double> %i.gi, %i.gk          ; 4 uses
  %i.gm = shufflevector <2 x double> %i.cj, <2 x double> %i.cs, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.gn = fmul <2 x double> %i.gm, %i.gm
  %i.go = shufflevector <2 x double> %i.cj, <2 x double> %i.cs, <2 x i32> <i32 1, i32 3>
  %i.gp = fdiv <2 x double> %i.go, %i.gn
  %i.gq = insertelement <2 x double> poison, double %i.al, i64 0
  %i.gr = shufflevector <2 x double> %i.gq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gs = insertelement <2 x double> poison, double %storemerge, i64 0
  %i.gt = shufflevector <2 x double> %i.gs, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gr, <2 x double> %i.gt, <2 x double> %i.gp)
  %i.gv = insertelement <2 x double> poison, double %i.cr, i64 0
  %i.gw = insertelement <2 x double> %i.gv, double %i.da, i64 1
  %i.gx = fmul <2 x double> %i.gw, %i.gu          ; 3 uses
  %i.gy = fmul <2 x double> %i.gl, %i.gl          ; 2 uses
  %i.gz = fneg <2 x double> %i.gy
  %5 = insertelement <7 x double> poison, double %1, i64 0
  %6 = shufflevector <7 x double> %5, <7 x double> poison, <7 x i32> zeroinitializer
  %7 = fmul <7 x double> %6, <double f0x3FD3C6EF372FE950, double f0x3FE2CF2304755A5E, double f0x3FE9E3779B97F4A8, double f0x3FEE6F0E134454FF, double f0x3FC4060B67A85377, double f0x3FDD0E2E2B44DE01, double f0x3C91A62633145C07>
  %i.ha = fadd double %2, %i.bz
  %8 = insertelement <2 x double> %i.gh, double %3, i64 1
  %i.hb = insertelement <2 x double> poison, double %i.bp, i64 0
  %i.hc = insertelement <2 x double> %i.hb, double %i.cb, i64 1
  %i.hd = fmul <2 x double> %8, %i.hc             ; 4 uses
  %i.he = fmul <2 x double> %i.hd, %i.hd          ; 2 uses
  %i.hf = fneg <2 x double> %i.he                 ; 2 uses
  %i.hg = extractelement <2 x double> %i.hd, i64 0
  %i.hh = fmul double %i.hg, %i.ha
  %9 = insertelement <2 x double> poison, double %2, i64 0
  %i.hi = shufflevector <2 x double> %9, <2 x double> poison, <2 x i32> zeroinitializer ; 10 uses
  %i.hj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hi, <2 x double> %i.he)
  %i.hk = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.hj) ; 3 uses
  %i.hl = insertelement <2 x double> %i.ew, double %i.hh, i64 1
  %i.hm = shufflevector <2 x double> %i.hk, <2 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.hn = shufflevector <4 x double> %i.do, <4 x double> %i.hm, <2 x i32> <i32 0, i32 4>
  %i.ho = fdiv <2 x double> %i.hl, %i.hn          ; 2 uses
  %i.hp = extractelement <2 x double> %i.ho, i64 0
  %i.hq = tail call double @sqrt(double noundef %i.hp) #8
  %i.hr = tail call double @sqrt(double noundef %i.fn) #8
  %i.hs = insertelement <7 x double> %i.ft, double %i.hr, i64 6
  %i.ht = tail call double @sqrt(double noundef %i.fu) #8
  %i.hu = insertelement <7 x double> poison, double %i.hq, i64 0
  %i.hv = insertelement <7 x double> %i.hu, double %i.fk, i64 1
  %i.hw = insertelement <7 x double> %i.hv, double %i.fb, i64 2
  %i.hx = insertelement <7 x double> %i.hw, double %i.eq, i64 3
  %i.hy = insertelement <7 x double> %i.hx, double %i.ek, i64 4
  %i.hz = insertelement <7 x double> %i.hy, double %i.dw, i64 5
  %i.ia = insertelement <7 x double> %i.hz, double %i.ht, i64 6
  %i.ib = fmul <7 x double> %i.gg, %i.ia          ; 5 uses
  %i.ic = fmul <7 x double> %7, %i.hs             ; 6 uses
  %i.id = fmul <7 x double> %i.ic, %i.ic          ; 2 uses
  %i.ie = fneg <7 x double> %i.id
  store double %2, ptr %i.ac, align 8, !tbaa !60
  %i.if = extractelement <2 x double> %i.hf, i64 1
  %i.ig = tail call double @llvm.fmuladd.f64(double %i.ci, double %2, double %i.if)
  %i.ih = fmul double %i.ig, 4.000000e+00
  %i.ii = extractelement <2 x double> %i.hf, i64 0
  %i.ij = tail call double @llvm.fmuladd.f64(double %i.bz, double %2, double %i.ii)
  %i.ik = insertelement <2 x double> poison, double %i.ij, i64 0
  %i.il = insertelement <2 x double> %i.ik, double %i.ih, i64 1
  %i.im = fdiv <2 x double> %i.il, %i.hk          ; 3 uses
  %i.in = fadd <2 x double> %i.im, <double 0.000000e+00, double poison> ; 2 uses
  %i.io = extractelement <2 x double> %i.im, i64 1 ; 2 uses
  %i.ip = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hi, <2 x double> %i.hi, <2 x double> %i.gy)
  %i.iq = tail call <2 x double> @llvm.sqrt.v2f64(<2 x double> %i.ip) ; 3 uses
  %i.ir = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gx, <2 x double> %i.hi, <2 x double> %i.gz)
  %i.is = fmul <2 x double> %i.ir, splat (double 4.000000e+00)
  %i.it = fdiv <2 x double> %i.is, %i.iq          ; 4 uses
  %i.iu = extractelement <2 x double> %i.it, i64 0 ; 2 uses
  %i.iv = shufflevector <2 x double> %i.hd, <2 x double> %i.gl, <2 x i32> <i32 1, i32 2>
  %i.iw = fmul <2 x double> %i.iv, splat (double 4.000000e+00)
  %i.ix = shufflevector <2 x double> %i.gx, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.iy = insertelement <2 x double> %i.ix, double %i.ci, i64 0
  %i.iz = fadd <2 x double> %i.hi, %i.iy
  %i.ja = fmul <2 x double> %i.iw, %i.iz
  %i.jb = shufflevector <2 x double> %i.hk, <2 x double> %i.iq, <2 x i32> <i32 1, i32 2>
  %i.jc = fdiv <2 x double> %i.ja, %i.jb          ; 3 uses
  %i.jd = extractelement <2 x double> %i.in, i64 0 ; 2 uses
  %i.je = shufflevector <2 x double> %i.in, <2 x double> %i.ho, <2 x i32> <i32 0, i32 3>
  %i.jf = fadd <2 x double> %i.je, <double -0.000000e+00, double 0.000000e+00> ; 2 uses
  %i.jg = fadd double %i.jd, %i.io
  %i.jh = tail call double @llvm.fmuladd.f64(double %i.io, double f0x3FEE6F0E134454FF, double %i.jd)
  %i.ji = fadd double %i.jg, %i.iu
  %i.jj = shufflevector <2 x double> %i.im, <2 x double> %i.jc, <2 x i32> <i32 1, i32 2>
  %i.jk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jj, <2 x double> <double f0x3FE9E3779B97F4A8, double f0x3FEC83201D3D2C6D>, <2 x double> %i.jf) ; 2 uses
  %i.jl = extractelement <2 x double> %i.jk, i64 0
  %i.jm = tail call double @llvm.fmuladd.f64(double %i.iu, double f0xBFD3C6EF372FE94E, double %i.jl)
  %10 = insertelement <7 x double> poison, double %2, i64 0
  %i.jn = shufflevector <7 x double> %10, <7 x double> poison, <7 x i32> zeroinitializer ; 3 uses
  %i.jo = tail call <7 x double> @llvm.fmuladd.v7f64(<7 x double> %i.jn, <7 x double> %i.jn, <7 x double> %i.id)
  %i.jp = tail call <7 x double> @llvm.sqrt.v7f64(<7 x double> %i.jo) ; 5 uses
  %i.jq = tail call <7 x double> @llvm.fmuladd.v7f64(<7 x double> %i.ib, <7 x double> %i.jn, <7 x double> %i.ie)
  %i.jr = fmul <7 x double> %i.jq, <double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 2.000000e+00, double 4.000000e+00, double 4.000000e+00, double 1.000000e+00>
  %i.js = fdiv <7 x double> %i.jr, %i.jp          ; 14 uses
  %i.jt = extractelement <7 x double> %i.js, i64 6
  %i.ju = shufflevector <2 x double> %i.jf, <2 x double> %i.jk, <2 x i32> <i32 1, i32 3>
  %i.jv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jc, <2 x double> <double f0x3FEF9B24942FE45C, double f0x3FC4060B67A85377>, <2 x double> %i.ju) ; 2 uses
  %i.jw = extractelement <2 x double> %i.it, i64 1 ; 2 uses
  %i.jx = fadd double %i.ji, %i.jw
  %i.jy = fsub double %i.jm, %i.jw
  %i.jz = extractelement <7 x double> %i.js, i64 5
  %i.ka = fadd double %i.jx, %i.jz
  %i.kb = shufflevector <7 x double> %i.js, <7 x double> poison, <2 x i32> <i32 5, i32 5>
  %i.kc = shufflevector <2 x double> %i.gl, <2 x double> poison, <7 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kd = shufflevector <7 x double> %i.kc, <7 x double> %i.ic, <2 x i32> <i32 1, i32 12>
  %i.ke = fmul <2 x double> %i.kd, splat (double 4.000000e+00)
  %i.kf = shufflevector <2 x double> %i.gx, <2 x double> poison, <7 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kg = shufflevector <7 x double> %i.kf, <7 x double> %i.ib, <2 x i32> <i32 1, i32 12>
  %i.kh = fadd <2 x double> %i.hi, %i.kg
  %i.ki = fmul <2 x double> %i.ke, %i.kh
  %i.kj = shufflevector <2 x double> %i.iq, <2 x double> poison, <7 x i32> <i32 poison, i32 1, i32 poison, i32 poison, i32 poison, i32 poison, i32 poison>
  %i.kk = shufflevector <7 x double> %i.kj, <7 x double> %i.jp, <2 x i32> <i32 1, i32 12>
  %i.kl = fdiv <2 x double> %i.ki, %i.kk          ; 3 uses
  %i.km = shufflevector <2 x double> %i.it, <2 x double> %i.jc, <2 x i32> <i32 0, i32 3>
  %i.kn = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ko = insertelement <2 x double> %i.kn, double %i.jh, i64 0
  %i.kp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.km, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FEC83201D3D2C6D>, <2 x double> %i.ko)
  %i.kq = shufflevector <2 x double> %i.it, <2 x double> %i.kl, <2 x i32> <i32 1, i32 2>
  %i.kr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kq, <2 x double> <double f0x3C91A62633145C07, double f0x3FE6A09E667F3BCD>, <2 x double> %i.kp) ; 2 uses
  %i.ks = insertelement <2 x double> %i.kr, double %i.jy, i64 1
  %i.kt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kb, <2 x double> <double f0xBFE2CF2304755A5D, double f0xBFD3C6EF372FE952>, <2 x double> %i.ks)
  %i.ku = shufflevector <2 x double> %i.jv, <2 x double> %i.kr, <2 x i32> <i32 1, i32 3>
  %i.kv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kl, <2 x double> <double f0xBFE6A09E667F3BCC, double f0x3FDD0E2E2B44DE01>, <2 x double> %i.ku)
  %i.kw = extractelement <7 x double> %i.js, i64 4
  %i.kx = fadd double %i.ka, %i.kw
  %i.ky = shufflevector <7 x double> %i.js, <7 x double> poison, <2 x i32> <i32 4, i32 4>
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ky, <2 x double> <double f0xBFEE6F0E134454FF, double f0x3FE9E3779B97F4A7>, <2 x double> %i.kt)
  %i.la = extractelement <7 x double> %i.js, i64 3
  %i.lb = fadd double %i.kx, %i.la
  %i.lc = shufflevector <7 x double> %i.js, <7 x double> poison, <2 x i32> <i32 3, i32 3>
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lc, <2 x double> <double f0x3FE9E3779B97F4A8, double f0x3FD3C6EF372FE950>, <2 x double> %i.kz)
  %i.le = shufflevector <7 x double> %i.ic, <7 x double> poison, <2 x i32> <i32 3, i32 4>
  %i.lf = fmul <2 x double> %i.le, <double 2.000000e+00, double 4.000000e+00>
  %i.lg = shufflevector <7 x double> %i.ib, <7 x double> poison, <2 x i32> <i32 3, i32 4>
  %i.lh = fadd <2 x double> %i.hi, %i.lg
  %i.li = fmul <2 x double> %i.lf, %i.lh
  %i.lj = shufflevector <7 x double> %i.jp, <7 x double> poison, <2 x i32> <i32 3, i32 4>
  %i.lk = fdiv <2 x double> %i.li, %i.lj          ; 3 uses
  %i.ll = shufflevector <2 x double> %i.lk, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.lm = shufflevector <2 x double> %i.kl, <2 x double> %i.lk, <2 x i32> <i32 1, i32 3>
  %i.ln = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lm, <2 x double> <double f0xBFEF9B24942FE45C, double f0x3FC4060B67A85377>, <2 x double> %i.kv)
  %i.lo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ll, <2 x double> <double f0xBFDD0E2E2B44DE03, double f0x3FEE6F0E134454FF>, <2 x double> %i.ln)
  %i.lp = extractelement <7 x double> %i.js, i64 2
  %i.lq = shufflevector <7 x double> %i.js, <7 x double> poison, <2 x i32> <i32 2, i32 2>
  %i.lr = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> <double f0x3FD3C6EF372FE950, double f0xBFE9E3779B97F4A7>, <2 x double> %i.ld)
  %i.ls = extractelement <7 x double> %i.js, i64 1
  %i.lt = shufflevector <7 x double> %i.js, <7 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.lu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lt, <2 x double> <double f0xBFD3C6EF372FE94E, double f0xBFE9E3779B97F4A9>, <2 x double> %i.lr)
  %i.lv = shufflevector <7 x double> %i.ic, <7 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.lw = fmul <2 x double> %i.lv, splat (double 2.000000e+00)
  %i.lx = shufflevector <7 x double> %i.ib, <7 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.ly = fadd <2 x double> %i.hi, %i.lx
  %i.lz = fmul <2 x double> %i.lw, %i.ly
  %i.ma = shufflevector <7 x double> %i.jp, <7 x double> poison, <2 x i32> <i32 1, i32 2>
  %i.mb = fdiv <2 x double> %i.lz, %i.ma          ; 3 uses
  %i.mc = shufflevector <2 x double> %i.mb, <2 x double> poison, <2 x i32> <i32 1, i32 0>
  %i.md = shufflevector <2 x double> %i.lk, <2 x double> %i.mb, <2 x i32> <i32 0, i32 3>
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> <double f0x3FE2CF2304755A5E, double f0x3FE9E3779B97F4A8>, <2 x double> %i.lo)
  %i.mf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mc, <2 x double> <double f0xBFD3C6EF372FE94E, double f0x3FE2CF2304755A5E>, <2 x double> %i.me)
  %i.mg = extractelement <7 x double> %i.js, i64 0
  %i.mh = shufflevector <7 x double> %i.js, <7 x double> poison, <2 x i32> zeroinitializer
  %i.mi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mh, <2 x double> <double f0xBFE9E3779B97F4A7, double f0x3FD3C6EF372FE94C>, <2 x double> %i.lu) ; 2 uses
  %i.mj = fadd double %i.lb, %i.lp
  %i.mk = fadd double %i.mj, %i.ls
  %i.ml = shufflevector <7 x double> %i.ic, <7 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.mm = fmul <2 x double> %i.ml, <double 2.000000e+00, double 1.000000e+00>
  %i.mn = shufflevector <7 x double> %i.ib, <7 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.mo = fadd <2 x double> %i.hi, %i.mn
  %i.mp = fmul <2 x double> %i.mm, %i.mo
  %i.mq = shufflevector <7 x double> %i.jp, <7 x double> poison, <2 x i32> <i32 0, i32 6>
  %i.mr = fdiv <2 x double> %i.mp, %i.mq          ; 3 uses
  %i.ms = shufflevector <2 x double> %i.mb, <2 x double> %i.mr, <2 x i32> <i32 0, i32 2>
  %i.mt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ms, <2 x double> <double f0xBFEE6F0E134454FF, double f0x3FD3C6EF372FE950>, <2 x double> %i.mf)
  %i.mu = fadd double %i.mk, %i.mg
  %i.mv = fadd double %i.mu, %i.jt
  %i.mw = shufflevector <7 x double> %i.js, <7 x double> poison, <2 x i32> <i32 6, i32 6> ; 2 uses
  %i.mx = fsub <2 x double> %i.mi, %i.mw
  %i.my = fadd <2 x double> %i.mi, %i.mw
  %i.mz = shufflevector <2 x double> %i.mx, <2 x double> %i.my, <2 x i32> <i32 0, i32 3>
  %i.na = extractelement <2 x double> %i.mr, i64 1
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mr, <2 x double> <double f0xBFE9E3779B97F4A9, double f0x3C91A62633145C07>, <2 x double> %i.mt) ; 2 uses
  %i.nc = extractelement <2 x double> %i.nb, i64 0
  %i.nd = tail call double @llvm.fmuladd.f64(double %i.na, double f0xBCAA79394C9E8A0A, double %i.nc)
  %i.ne = fdiv <2 x double> %i.mz, <double 3.000000e+01, double 6.000000e+01>
  store <2 x double> %i.ne, ptr %i.b, align 8, !tbaa !61
  %i.nf = insertelement <2 x double> %i.nb, double %i.mv, i64 0
  %i.ng = fdiv <2 x double> %i.nf, <double 3.000000e+01, double 1.500000e+01>
  store <2 x double> %i.ng, ptr %i.ai, align 8, !tbaa !61
  %i.nh = fdiv double %i.nd, 4.500000e+01
  store double %i.nh, ptr %i.ah, align 8, !tbaa !62
  %i.ni = getelementptr inbounds nuw i8, ptr %0, i64 112
  store ptr @_ZL13som_e_inverse5PJ_XYP8PJconsts, ptr %i.ni, align 8, !tbaa !66
  %i.nj = getelementptr inbounds nuw i8, ptr %0, i64 104
  store ptr @_ZL13som_e_forward5PJ_LPP8PJconsts, ptr %i.nj, align 8, !tbaa !67
  ret ptr %0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_misrsom(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z36pj_projection_specific_setup_misrsomP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e

bb.c:                                             ; preds = %bb.a
  %i.b = tail call noundef ptr @_Z6pj_newv()      ; 7 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr @.str.7, ptr %i.d, align 8, !tbaa !37
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr @_ZL11des_misrsom, ptr %i.e, align 8, !tbaa !38
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 360
  store i32 1, ptr %i.f, align 8, !tbaa !39
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 380
  store i32 4, ptr %i.g, align 4, !tbaa !40
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 384
  store i32 1, ptr %i.h, align 8, !tbaa !41
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %bb.b
  %.0 = phi ptr [ %i.a, %bb.b ], [ %i.b, %bb.d ], [ null, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @_Z36pj_projection_specific_setup_misrsomP8PJconsts(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call noalias dereferenceable_or_null(128) ptr @calloc(i64 noundef 1, i64 noundef 128) #7 ; 5 uses
  %i.b = icmp eq ptr %i.a, null
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef %0, i32 noundef 4096)
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %i.a, ptr %i.d, align 8, !tbaa !42
  %i.e = load ptr, ptr %0, align 8, !tbaa !43
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !44
  %i.h = tail call i64 @_Z8pj_paramP6pj_ctxP8ARG_listPKc(ptr noundef %i.e, ptr noundef %i.g, ptr noundef nonnull @.str.8)
  %.sroa.0.0.extract.trunc = trunc i64 %i.h to i32 ; 2 uses
  %i.i = add i32 %.sroa.0.0.extract.trunc, -234
  %or.cond = icmp ult i32 %i.i, -233
  br i1 %or.cond, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void (ptr, ptr, ...) @_Z14proj_log_errorPK8PJconstsPKcz(ptr noundef nonnull %0, ptr noundef nonnull @.str.9)
  %i.j = tail call noundef ptr @_Z21pj_default_destructorP8PJconstsi(ptr noundef nonnull %0, i32 noundef 1027)
  br label %bb.f

bb.e:                                             ; preds = %bb.c
  %i.k = uitofp nneg i32 %.sroa.0.0.extract.trunc to double
  %i.l = tail call double @llvm.fmuladd.f64(double %i.k, double f0xBF9B9D1888886F13, double f0x40020DF19833D0B2)
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 440
  store double %i.l, ptr %i.m, align 8, !tbaa !45
  %i.n = getelementptr inbounds nuw i8, ptr %i.a, i64 120
  store double f0x3FFB739C6655343E, ptr %i.n, align 8, !tbaa !47
  %i.o = getelementptr inbounds nuw i8, ptr %i.a, i64 72
  store double f0x3FB194237FA89E61, ptr %i.o, align 8, !tbaa !48
  %i.p = getelementptr inbounds nuw i8, ptr %i.a, i64 104
  store double 0.000000e+00, ptr %i.p, align 8, !tbaa !49
  %i.q = tail call fastcc noundef ptr @_ZL9som_setupP8PJconsts(ptr noundef nonnull %0) ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d, %bb.b
  %.0 = phi ptr [ %i.c, %bb.b ], [ %i.j, %bb.d ], [ %0, %bb.e ]
  ret ptr %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fmuladd.f64(double, double, double) #5

; Function Attrs: mustprogress uwtable
define hidden noundef ptr @pj_lsat(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef ptr @_Z33pj_projection_specific_setup_lsatP8PJconsts(ptr noundef nonnull %0)
  br label %bb.e
end_hunk_0
