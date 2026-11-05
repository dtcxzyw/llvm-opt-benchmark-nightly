Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/opencv/original/calibration_base?download=true
inline.NumInlined: 1317
inline.NumDeleted: 176
loop-unroll.NumCompletelyUnrolled: 25
loop-unroll.NumRuntimeUnrolled: 4
loop-unroll.NumUnrolled: 29
begin_hunk_0_@_ZN2cv27computeTiltProjectionMatrixIdEEvT_S1_PNS_4MatxIS1_Li3ELi3EEES4_S4_S4_:bb.a
  %i.a = tail call double @cos(double noundef %0) #20 ; 5 uses
  %i.b = tail call double @sin(double noundef %0) #20 ; 4 uses
  %i.c = tail call double @cos(double noundef %1) #20 ; 5 uses
  %i.d = tail call double @sin(double noundef %1) #20 ; 6 uses
  %i.e = fneg double %i.b                         ; 3 uses
  %i.f = fneg double %i.d                         ; 4 uses
  %i.g = fadd double %i.c, 0.000000e+00
  %.scalar = tail call double @llvm.fmuladd.f64(double %i.f, double 0.000000e+00, double %i.g) ; 3 uses
  %i.h = insertelement <2 x double> <double poison, double 0.000000e+00>, double %.scalar, i64 0 ; 9 uses
  %i.i = fadd double %i.d, 0.000000e+00
  %i.j = insertelement <2 x double> poison, double %i.c, i64 0 ; 2 uses
  %i.k = shufflevector <2 x double> %i.j, <2 x double> poison, <2 x i32> zeroinitializer
  %i.l = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.e, i64 1
  %i.m = insertelement <2 x double> poison, double %i.i, i64 0
  %i.n = insertelement <2 x double> poison, double %i.a, i64 0
  %i.o = insertelement <2 x double> %i.n, double %i.b, i64 1 ; 5 uses
  %i.p = fadd <2 x double> %i.o, zeroinitializer
  %i.q = insertelement <2 x double> poison, double %i.d, i64 0
  %i.r = insertelement <2 x double> %i.q, double %i.f, i64 1
  %i.s = shufflevector <2 x double> %i.o, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 3 uses
  %i.t = insertelement <2 x double> %i.s, double %i.e, i64 0 ; 2 uses
  %i.u = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> zeroinitializer, <2 x double> %i.p) ; 20 uses
  %i.v = insertelement <2 x double> <double poison, double -0.000000e+00>, double %i.c, i64 0 ; 2 uses
  %i.w = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.x = shufflevector <2 x double> %i.w, <2 x double> poison, <2 x i32> zeroinitializer
  %i.y = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> %i.x)
  %i.z = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.r, <2 x double> %i.s, <2 x double> %i.y) ; 23 uses
  %i.aa = tail call double @llvm.fmuladd.f64(double %i.d, double 0.000000e+00, double 0.000000e+00) ; 4 uses
  %i.ab = tail call double @llvm.fmuladd.f64(double %i.a, double 0.000000e+00, double %i.aa)
  %i.ac = insertelement <2 x double> %i.m, double %i.ab, i64 1
  %i.ad = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.k, <2 x double> %i.l, <2 x double> %i.ac) ; 20 uses
  %i.ae = tail call double @llvm.fmuladd.f64(double %i.b, double 0.000000e+00, double %i.aa)
  %i.af = extractelement <2 x double> %i.ad, i64 1 ; 2 uses
  %i.ag = tail call double @llvm.fmuladd.f64(double %i.c, double %i.a, double %i.ae) ; 21 uses
  %i.ah = shufflevector <2 x double> %i.z, <2 x double> %i.u, <2 x i32> <i32 1, i32 3>
  %i.ai = fneg <2 x double> %i.ah                 ; 9 uses
  %.not = icmp eq ptr %2, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.aj = extractelement <2 x double> %i.u, i64 0
  %i.ak = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.al = shufflevector <2 x double> %i.ak, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.am = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.an = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.am, <2 x double> zeroinitializer) ; 2 uses
  %i.ao = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %.sroa.5168.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ag, i64 0
  %i.aq = shufflevector <2 x double> %i.z, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.ar = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ap, <2 x double> %i.aq, <2 x double> zeroinitializer) ; 2 uses
  %i.as = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.at = insertelement <2 x double> %i.as, double %i.ag, i64 1
  %i.au = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.at, <2 x double> zeroinitializer, <2 x double> %i.ar)
  %i.av = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.aw = insertelement <2 x double> %i.av, double %i.ag, i64 0
  %i.ax = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.aw, <2 x double> %i.au)
  %i.ay = extractelement <2 x double> %i.ar, i64 1
  store <2 x double> %i.ax, ptr %.sroa.5168.0..sroa_idx, align 8
  %.sroa.7170.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.az = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.ba = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.al, <2 x double> %i.u, <2 x double> %i.az)
  %i.bb = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.bc = insertelement <2 x double> %i.av, double %i.ag, i64 1
  %i.bd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.bb, <2 x double> %i.bc, <2 x double> %i.ba)
  %i.be = extractelement <2 x double> %i.az, i64 0
  %i.bf = shufflevector <2 x double> %i.an, <2 x double> %i.az, <2 x i32> <i32 1, i32 3>
  %i.bg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer, <2 x double> %i.bf) ; 2 uses
  %i.bh = shufflevector <2 x double> %i.an, <2 x double> %i.bg, <2 x i32> <i32 0, i32 2>
  %i.bi = fadd <2 x double> %i.bh, <double 0.000000e+00, double -0.000000e+00>
  %i.bj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ao, <2 x double> %i.ad, <2 x double> %i.bi)
  store <2 x double> %i.bj, ptr %2, align 8
  %i.bk = extractelement <2 x double> %i.bg, i64 1
  %i.bl = fadd double %i.ag, %i.bk
  store <2 x double> %i.bd, ptr %.sroa.7170.0..sroa_idx, align 8
  %.sroa.9172.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 48
  %i.bm = fadd double %i.ay, 0.000000e+00
  %i.bn = tail call double @llvm.fmuladd.f64(double %i.aj, double 0.000000e+00, double %i.be)
  %i.bo = insertelement <2 x double> poison, double %i.bm, i64 0
  %i.bp = insertelement <2 x double> %i.bo, double %i.bn, i64 1
  %i.bq = fadd <2 x double> %i.ad, %i.bp
  store <2 x double> %i.bq, ptr %.sroa.9172.0..sroa_idx, align 8
  %.sroa.11174.0..sroa_idx = getelementptr inbounds nuw i8, ptr %2, i64 64
  store double %i.bl, ptr %.sroa.11174.0..sroa_idx, align 8, !tbaa !25
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.not35 = icmp eq ptr %3, null
  br i1 %.not35, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.br = fneg double %i.a
  %i.bs = insertelement <2 x double> <double -0.000000e+00, double poison>, double %i.b, i64 1
  %i.bt = fsub <2 x double> %i.w, %i.bs
  %i.bu = extractelement <2 x double> %i.z, i64 0
  %i.bv = extractelement <2 x double> %i.u, i64 0
  %i.bw = extractelement <2 x double> %i.u, i64 1
  %i.bx = insertelement <2 x double> poison, double %i.f, i64 0
  %i.by = insertelement <2 x double> %i.bx, double %i.br, i64 1 ; 2 uses
  %i.bz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.by, <2 x double> zeroinitializer, <2 x double> %i.bt) ; 4 uses
  %i.ca = insertelement <2 x double> poison, double %i.e, i64 0
  %i.cb = shufflevector <2 x double> %i.ca, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cc = insertelement <2 x double> %i.w, double %i.aa, i64 1
  %i.cd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cb, <2 x double> zeroinitializer, <2 x double> %i.cc) ; 2 uses
  %i.ce = shufflevector <2 x double> %i.v, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cf = insertelement <2 x double> %i.by, double 0.000000e+00, i64 0
  %i.cg = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ag, i64 0
  %i.ch = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ci = extractelement <2 x double> %i.bz, i64 1
  %i.cj = tail call double @llvm.fmuladd.f64(double %i.af, double %i.bu, double 0.000000e+00)
  %i.ck = shufflevector <2 x double> %i.ad, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.cl = insertelement <2 x double> %i.h, double 0.000000e+00, i64 1
  %i.cm = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.cj, i64 1
  %i.cn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ck, <2 x double> %i.cl, <2 x double> %i.cm)
  %i.co = fadd <2 x double> %i.cn, <double 0.000000e+00, double -0.000000e+00>
  %.sroa.5128.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.cp = shufflevector <2 x double> %i.z, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.cq = fneg <2 x double> %i.cp                 ; 3 uses
  %i.cr = shufflevector <2 x double> %i.ad, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.cs = shufflevector <2 x double> %i.z, <2 x double> <double poison, double 0.000000e+00>, <2 x i32> <i32 1, i32 3>
  %i.ct = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cr, <2 x double> %i.cs, <2 x double> zeroinitializer) ; 2 uses
  %i.cu = shufflevector <2 x double> %i.u, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.cv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cu, <2 x double> zeroinitializer, <2 x double> %i.ct)
  %i.cw = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 0> ; 2 uses
  %i.cx = insertelement <2 x double> %i.cw, double %i.ag, i64 0 ; 2 uses
  %i.cy = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cq, <2 x double> %i.cx, <2 x double> %i.cv)
  %i.cz = insertelement <2 x double> %i.cx, double 0.000000e+00, i64 1
  %i.da = shufflevector <2 x double> %i.z, <2 x double> %i.bz, <2 x i32> <i32 0, i32 2>
  %i.db = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cz, <2 x double> %i.da, <2 x double> zeroinitializer) ; 2 uses
  %i.dc = insertelement <2 x double> %i.u, double %i.ag, i64 1
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dc, <2 x double> zeroinitializer, <2 x double> %i.db)
  %i.de = extractelement <2 x double> %i.db, i64 1
  %i.df = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.df, <2 x double> %i.ad, <2 x double> %i.co)
  %.sroa.7130.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dh = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.z, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.di = extractelement <2 x double> %i.cd, i64 0
  %i.dj = tail call double @llvm.fmuladd.f64(double %i.d, double %i.a, double %i.di) ; 2 uses
  %i.dk = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.dl = insertelement <2 x double> %i.dk, double %i.dj, i64 0
  %i.dm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dl, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.dn = extractelement <2 x double> %i.dm, i64 1
  %i.do = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.dp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.do, <2 x double> %i.u, <2 x double> %i.dh)
  %i.dq = extractelement <2 x double> %i.dh, i64 1
  %i.dr = tail call double @llvm.fmuladd.f64(double %i.bw, double 0.000000e+00, double %i.dq)
  %i.ds = tail call double @llvm.fmuladd.f64(double %i.ag, double 0.000000e+00, double %i.dr)
  %i.dt = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.dj, double 0.000000e+00)
  %i.du = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.dt, i64 1
  %i.dv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.cg, <2 x double> %i.bz, <2 x double> %i.du)
  %i.dw = fadd <2 x double> %i.dv, <double 0.000000e+00, double -0.000000e+00>
  %i.dx = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.dy = shufflevector <2 x double> %i.dx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dz = shufflevector <2 x double> %i.bz, <2 x double> %i.u, <2 x i32> <i32 1, i32 2>
  %i.ea = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.dy, <2 x double> %i.dz, <2 x double> %i.dm)
  %i.eb = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ec = extractelement <2 x double> %i.dm, i64 0
  %i.ed = shufflevector <2 x double> %i.cq, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ee = insertelement <2 x double> %i.cw, double %i.ag, i64 1
  %i.ef = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ed, <2 x double> %i.ee, <2 x double> %i.dp)
  %.sroa.9132.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 48
  %i.eg = insertelement <2 x double> %i.ct, double %i.aa, i64 0
  %i.eh = fadd <2 x double> %i.eg, zeroinitializer ; 2 uses
  %i.ei = shufflevector <2 x double> %i.eh, <2 x double> %i.cd, <2 x i32> <i32 0, i32 3>
  %i.ej = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ce, <2 x double> %i.cf, <2 x double> %i.ei) ; 4 uses
  %i.ek = shufflevector <2 x double> %i.ad, <2 x double> %i.ej, <2 x i32> <i32 1, i32 2>
  %i.el = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ai, <2 x double> %i.ek, <2 x double> %i.dd)
  %i.em = fadd <2 x double> %i.el, %i.cy
  store <2 x double> %i.em, ptr %.sroa.5128.0..sroa_idx, align 8
  %i.en = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ch, <2 x double> %i.ej, <2 x double> %i.dw)
  %i.eo = shufflevector <2 x double> %i.ej, <2 x double> %i.ad, <2 x i32> <i32 1, i32 3>
  %i.ep = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.eb, <2 x double> %i.eo, <2 x double> %i.ea)
  %i.eq = fadd <2 x double> %i.en, %i.dg
  %i.er = fadd <2 x double> %i.ep, %i.ef
  store <2 x double> %i.eq, ptr %3, align 8
  store <2 x double> %i.er, ptr %.sroa.7130.0..sroa_idx, align 8
  %i.es = fadd double %i.de, 0.000000e+00
  %i.et = tail call double @llvm.fmuladd.f64(double %i.bv, double 0.000000e+00, double %i.dn) ; 2 uses
  %i.eu = fadd double %i.af, %i.et
  %i.ev = shufflevector <2 x double> %i.eh, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.ew = insertelement <2 x double> %i.ev, double %i.et, i64 1
  %i.ex = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ad, <2 x double> zeroinitializer, <2 x double> %i.ew)
  %i.ey = fadd double %i.eu, %i.ds
  %i.ez = tail call double @llvm.fmuladd.f64(double %i.ci, double 0.000000e+00, double %i.ec)
  %i.fa = insertelement <2 x double> poison, double %i.es, i64 0
  %i.fb = insertelement <2 x double> %i.fa, double %i.ez, i64 1
  %i.fc = fadd <2 x double> %i.ej, %i.fb
  %i.fd = fadd <2 x double> %i.ex, %i.fc
  store <2 x double> %i.fd, ptr %.sroa.9132.0..sroa_idx, align 8
  %.sroa.11134.0..sroa_idx = getelementptr inbounds nuw i8, ptr %3, i64 64
  store double %i.ey, ptr %.sroa.11134.0..sroa_idx, align 8, !tbaa !25
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c
  %.not36 = icmp eq ptr %4, null
  br i1 %.not36, label %bb.g, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fe = fneg double %i.c                        ; 2 uses
  %i.ff = fsub double 0.000000e+00, %i.d
  %i.fg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> zeroinitializer)
  %6 = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1> ; 3 uses
  %7 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.z, <2 x double> zeroinitializer)
  %.sroa.471.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.fh = insertelement <2 x double> %i.j, double %i.fe, i64 1
  %i.fi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.t, <2 x double> zeroinitializer, <2 x double> %i.fg) ; 4 uses
  %i.fj = extractelement <2 x double> %i.fi, i64 1 ; 2 uses
  %i.fk = fneg double %i.fj                       ; 2 uses
  %i.fl = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.fm = shufflevector <2 x double> %i.fl, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fn = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.fo = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.u, <2 x double> zeroinitializer, <2 x double> %7)
  %i.fp = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fq = insertelement <2 x double> %i.fp, double %i.ag, i64 1
  %.sroa.673.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 24
  %i.fr = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.fs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fr, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.ft = shufflevector <2 x double> %i.u, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.fu = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %i.ft, <2 x double> %i.fs)
  %i.fv = shufflevector <2 x double> %i.fi, <2 x double> <double 0.000000e+00, double poison>, <2 x i32> <i32 2, i32 0>
  %i.fw = shufflevector <2 x double> %i.ai, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.fx = insertelement <2 x double> poison, double %i.fk, i64 0
  %i.fy = shufflevector <2 x double> %i.fx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fy, <2 x double> %i.ad, <2 x double> %i.fu)
  %.sroa.875.0..sroa_idx = getelementptr inbounds nuw i8, ptr %4, i64 40
  %i.ga = extractelement <2 x double> %i.z, i64 1
  %i.gb = insertelement <2 x double> %i.z, double %i.f, i64 0
  %i.gc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gb, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 2 uses
  %i.gd = shufflevector <2 x double> %i.gc, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ge = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.o, <2 x double> zeroinitializer, <2 x double> %i.gd)
  %i.gf = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fh, <2 x double> %i.s, <2 x double> %i.ge) ; 4 uses
  %i.gg = extractelement <2 x double> %i.gf, i64 1
  %i.gh = fneg double %i.gg                       ; 2 uses
  %i.gi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.gf, <2 x double> zeroinitializer)
  %i.gj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> zeroinitializer, <2 x double> %i.gi)
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fn, <2 x double> %i.z, <2 x double> %i.gj)
  %i.gl = insertelement <2 x double> poison, double %i.gh, i64 0
  %i.gm = shufflevector <2 x double> %i.gl, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gm, <2 x double> %i.fq, <2 x double> %i.fo)
  %i.go = fadd <2 x double> %i.gn, %i.gk
  store <2 x double> %i.go, ptr %.sroa.471.0..sroa_idx, align 8
  %i.gp = insertelement <2 x double> %6, double %i.ag, i64 1
  %i.gq = insertelement <2 x double> %i.fn, double %i.gh, i64 0
  %i.gr = insertelement <2 x double> %i.ad, double %.scalar, i64 1
  %i.gs = shufflevector <2 x double> %i.z, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.gt = shufflevector <4 x double> %i.gs, <4 x double> <double poison, double 1.000000e+00, double 0.000000e+00, double 0.000000e+00>, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  %i.gu = shufflevector <2 x double> %i.u, <2 x double> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 1>
  %i.gv = insertelement <4 x double> %i.gu, double 0.000000e+00, i64 1
  %i.gw = shufflevector <2 x double> %i.gc, <2 x double> %i.fs, <4 x i32> <i32 1, i32 2, i32 3, i32 1>
  %i.gx = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gt, <4 x double> %i.gv, <4 x double> %i.gw)
  %i.gy = insertelement <4 x double> <double poison, double 0.000000e+00, double 0.000000e+00, double 0.000000e+00>, double %i.fk, i64 0
  %i.gz = shufflevector <2 x double> %i.ad, <2 x double> poison, <4 x i32> <i32 poison, i32 0, i32 1, i32 poison>
  %i.ha = insertelement <4 x double> poison, double %i.ag, i64 0
  %i.hb = shufflevector <4 x double> %i.ha, <4 x double> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 0>
  %i.hc = shufflevector <4 x double> %i.hb, <4 x double> %i.gz, <4 x i32> <i32 0, i32 5, i32 6, i32 3>
  %i.hd = tail call <4 x double> @llvm.fmuladd.v4f64(<4 x double> %i.gy, <4 x double> %i.hc, <4 x double> %i.gx)
  %i.he = insertelement <2 x double> %i.gf, double %i.fe, i64 0
  %i.hf = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ff, i64 0
  %i.hg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.he, <2 x double> zeroinitializer, <2 x double> %i.hf) ; 4 uses
  %i.hh = shufflevector <2 x double> %i.hg, <2 x double> %i.gf, <2 x i32> <i32 0, i32 2>
  %i.hi = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hh, <2 x double> zeroinitializer, <2 x double> zeroinitializer) ; 3 uses
  %i.hj = extractelement <2 x double> %i.hi, i64 0
  %i.hk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fm, <2 x double> %i.fv, <2 x double> %i.hi)
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fw, <2 x double> %i.fr, <2 x double> %i.hk)
  %i.hm = fadd <2 x double> %i.fz, %i.hl
  store <2 x double> %i.hm, ptr %.sroa.673.0..sroa_idx, align 8
  %i.hn = shufflevector <2 x double> %i.h, <2 x double> %i.hg, <2 x i32> <i32 0, i32 2>
  %i.ho = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gp, <2 x double> %i.hn, <2 x double> zeroinitializer)
  %i.hp = fadd <2 x double> %i.ho, zeroinitializer
  %i.hq = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gq, <2 x double> %i.gr, <2 x double> %i.hp)
  %i.hr = tail call reassoc double @llvm.vector.reduce.fadd.v2f64(double -0.000000e+00, <2 x double> %i.hq)
  store double %i.hr, ptr %4, align 8
  %i.hs = fadd double %i.hj, 0.000000e+00
  %i.ht = fadd double %.scalar, %i.hs
  %i.hu = extractelement <2 x double> %i.hg, i64 1
  %i.hv = tail call double @llvm.fmuladd.f64(double %i.ag, double %i.fj, double %i.hu)
  %i.hw = extractelement <2 x double> %i.ai, i64 1
  %i.hx = tail call double @llvm.fmuladd.f64(double %i.hw, double %i.ga, double %i.hv)
  %i.hy = shufflevector <2 x double> %i.hi, <2 x double> %i.hg, <2 x i32> <i32 1, i32 3>
  %i.hz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fi, <2 x double> zeroinitializer, <2 x double> %i.hy)
  %i.ia = fadd <2 x double> %i.z, %i.hz
  %i.ib = insertelement <4 x double> poison, double %i.hx, i64 0
  %i.ic = insertelement <4 x double> %i.ib, double %i.ht, i64 1
  %i.id = shufflevector <2 x double> %i.ia, <2 x double> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.ie = shufflevector <4 x double> %i.ic, <4 x double> %i.id, <4 x i32> <i32 0, i32 1, i32 4, i32 5>
  %i.if = fadd <4 x double> %i.hd, %i.ie
  store <4 x double> %i.if, ptr %.sroa.875.0..sroa_idx, align 8
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.e
  %.not37 = icmp eq ptr %5, null
  br i1 %.not37, label %bb.i, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ig = fdiv double 1.000000e+00, %i.ag         ; 5 uses
  %i.ih = extractelement <2 x double> %i.z, i64 1
  %i.ii = fmul double %i.ih, %i.ig                ; 2 uses
  %i.ij = extractelement <2 x double> %i.u, i64 1 ; 2 uses
  %i.ik = fmul double %i.ij, %i.ig                ; 2 uses
  %i.il = shufflevector <2 x double> %i.h, <2 x double> %i.z, <2 x i32> <i32 0, i32 2>
  %i.im = insertelement <2 x double> poison, double %i.ii, i64 0
  %i.in = shufflevector <2 x double> %i.im, <2 x double> poison, <2 x i32> zeroinitializer
  %i.io = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.il, <2 x double> %i.in, <2 x double> zeroinitializer)
  %i.ip = shufflevector <2 x double> <double 0.000000e+00, double poison>, <2 x double> %i.u, <2 x i32> <i32 0, i32 2>
  %i.iq = insertelement <2 x double> poison, double %i.ik, i64 0
  %i.ir = shufflevector <2 x double> %i.iq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.is = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ip, <2 x double> %i.ir, <2 x double> %i.io)
  %i.it = fadd <2 x double> %i.ad, %i.is          ; 2 uses
  %i.iu = shufflevector <2 x double> %i.z, <2 x double> %i.h, <2 x i32> <i32 1, i32 2>
  %i.iv = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ii, i64 0
  %i.iw = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.iu, <2 x double> %i.iv, <2 x double> zeroinitializer) ; 2 uses
  %i.ix = extractelement <2 x double> %i.iw, i64 0
  %i.iy = tail call double @llvm.fmuladd.f64(double %i.ij, double %i.ik, double %i.ix)
  %i.iz = fadd double %i.ag, %i.iy
  %i.ja = insertelement <2 x double> poison, double %i.ig, i64 0
  %i.jb = shufflevector <2 x double> %i.ja, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jc = insertelement <2 x double> %i.iw, double 0.000000e+00, i64 0
  %i.jd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.h, <2 x double> %i.jb, <2 x double> %i.jc)
  %i.je = fadd <2 x double> %i.jd, <double 0.000000e+00, double -0.000000e+00>
  %i.jf = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jf, <2 x double> zeroinitializer, <2 x double> %i.je)
  store <2 x double> %i.jg, ptr %5, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 16
  %i.jh = extractelement <2 x double> %i.it, i64 0
  store double %i.jh, ptr %.sroa.5.0..sroa_idx, align 8
  %.sroa.640.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 24
  %i.ji = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jj = insertelement <2 x double> <double poison, double 0.000000e+00>, double %i.ig, i64 0 ; 2 uses
  %i.jk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ji, <2 x double> %i.jj, <2 x double> zeroinitializer)
  %i.jl = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jm = insertelement <2 x double> <double 0.000000e+00, double poison>, double %i.ig, i64 1 ; 2 uses
  %i.jn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jl, <2 x double> %i.jm, <2 x double> %i.jk)
  %i.jo = shufflevector <2 x double> %i.ad, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.jp = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jo, <2 x double> zeroinitializer, <2 x double> %i.jn)
  store <2 x double> %i.jp, ptr %.sroa.640.0..sroa_idx, align 8
  %.sroa.841.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 40
  %i.jq = extractelement <2 x double> %i.it, i64 1
  store double %i.jq, ptr %.sroa.841.0..sroa_idx, align 8
  %.sroa.9.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 48
  %i.jr = shufflevector <2 x double> %i.z, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.js = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jr, <2 x double> %i.jj, <2 x double> zeroinitializer)
  %i.jt = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> <i32 1, i32 1>
  %i.ju = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jt, <2 x double> %i.jm, <2 x double> %i.js)
  %i.jv = insertelement <2 x double> poison, double %i.ag, i64 0
  %i.jw = shufflevector <2 x double> %i.jv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.jx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.jw, <2 x double> zeroinitializer, <2 x double> %i.ju)
  store <2 x double> %i.jx, ptr %.sroa.9.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %5, i64 64
  store double %i.iz, ptr %.sroa.11.0..sroa_idx, align 8, !tbaa !25
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  ret void
}

declare void @_ZN2cv3Mat6createEiii(ptr noundef nonnull align 8 dereferenceable(208), i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3Mat5zerosEiii(ptr dead_on_unwind writable sret(%"class.cv::MatExpr") align 8, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

declare void @_ZN2cv3MatC1ENS_5Size_IiEEi(ptr noundef nonnull align 8 dereferenceable(208), i64, i32 noundef) unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_(ptr dead_on_unwind noalias nofree writable writeonly sret(%"class.cv::Vec.1") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(24) %1, ptr noundef nonnull align 8 dereferenceable(24) %2, ptr noundef nonnull align 8 dereferenceable(24) %3, ptr noundef nonnull align 8 dereferenceable(24) %4, ptr noundef nonnull align 8 dereferenceable(24) %5, ptr noundef nonnull align 8 dereferenceable(24) %6) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.cv::utils::trace::details::Region", align 8 ; 7 uses
  %8 = alloca %"class.cv::Matx.0", align 16       ; 16 uses
  %9 = alloca %"class.cv::Matx.0", align 16       ; 10 uses
  %10 = alloca %"class.cv::Mat", align 8          ; 9 uses
  %11 = alloca %"class.cv::_OutputArray", align 8 ; 7 uses
  %12 = alloca %"class.cv::Matx.0", align 8       ; 12 uses
  %13 = alloca %"class.cv::Matx.0", align 16      ; 15 uses
  %14 = alloca %"class.cv::Matx.0", align 16      ; 14 uses
  %15 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %16 = alloca %"class.std::allocator", align 1   ; 3 uses
  %17 = alloca %"class.cv::Matx.0", align 8       ; 13 uses
  %18 = alloca %"class.std::__cxx11::basic_string", align 8 ; 6 uses
  %19 = alloca %"class.std::allocator", align 1   ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #20
  call void @_ZN2cv5utils5trace7details6RegionC1ERKNS3_21LocationStaticStorageE(ptr noundef nonnull align 8 dereferenceable(12) %7, ptr noundef nonnull align 8 dereferenceable(32) @_ZZN2cv11RQDecomp3x3ERKNS_11_InputArrayERKNS_12_OutputArrayES5_S5_S5_S5_E26__cv_trace_location_fn1039)
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %8, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #20
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 16 dereferenceable(72) %9, i8 0, i64 72, i1 false), !tbaa !31
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #20
  %i.a = invoke noundef i32 @_ZNK2cv11_InputArray4kindEv(ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %.noexc unwind label %bb.f

.noexc:                                           ; preds = %bb.a
  %i.b = icmp eq i32 %i.a, 65536
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !12, !noalias !208
  invoke void @_ZN2cv3MatC1ERKS0_(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(208) %i.d)
          to label %bb.d unwind label %bb.f

bb.c:                                             ; preds = %.noexc
  invoke void @_ZNK2cv11_InputArray7getMat_Ei(ptr dead_on_unwind nonnull writable sret(%"class.cv::Mat") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %1, i32 noundef -1)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = load i32, ptr %10, align 8, !tbaa !20
  %i.f = and i32 %i.e, 31                         ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #20
  %i.g = getelementptr inbounds nuw i8, ptr %11, i64 8
  store i32 -1040056314, ptr %11, align 8, !tbaa !50
  store ptr %8, ptr %i.g, align 8, !tbaa !12
  %i.h = getelementptr inbounds nuw i8, ptr %11, i64 16
  store i64 12884901891, ptr %i.h, align 8, !tbaa !41
  invoke void @_ZNK2cv3Mat9convertToERKNS_12_OutputArrayEidd(ptr noundef nonnull align 8 dereferenceable(208) %10, ptr noundef nonnull align 8 dereferenceable(24) %11, i32 noundef 6, double noundef 1.000000e+00, double noundef 0.000000e+00)
end_hunk_0
