Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sundials/original/arkode_interp?download=true
inline.NumInlined: 17
loop-unroll.NumRuntimeUnrolled: 10
loop-unroll.NumUnrolled: 10
begin_hunk_0_@arkInterpEvaluate_Hermite:bb.a
  br label %bb.u

bb.r:                                             ; preds = %bb.p
  %i.ci = fadd double %2, %i.j
  %i.cj = insertelement <2 x double> poison, double %i.ci, i64 0
  %i.ck = shufflevector <2 x double> %i.cj, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cl = fmul <2 x double> %i.ck, <double 6.000000e+00, double -6.000000e+00>
  %i.cm = insertelement <2 x double> poison, double %i.e, i64 0
  %i.cn = shufflevector <2 x double> %i.cm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.co = fdiv <2 x double> %i.cl, %i.cn
  store <2 x double> %i.co, ptr %i.a, align 16, !tbaa !49
  %i.cp = fmul double %i.j, 3.000000e+00
  %i.cq = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.cr = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.cp, i64 0
  %i.cs = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double 2.000000e+00, double 4.000000e+00>, <2 x double> %i.cr) ; 2 uses
  %i.ct = extractelement <2 x double> %i.cs, i64 0
  store double %i.ct, ptr %i.cq, align 16, !tbaa !49
  %i.cu = extractelement <2 x double> %i.cs, i64 1
  %i.cv = tail call double @llvm.fmuladd.f64(double %i.j, double 3.000000e+00, double %i.cu)
  br label %bb.u

bb.s:                                             ; preds = %bb.p
  %i.cw = tail call double @llvm.fmuladd.f64(double %2, double 2.000000e+00, double 1.000000e+00)
  %i.cx = insertelement <2 x double> poison, double %i.cw, i64 0
  %i.cy = shufflevector <2 x double> %i.cx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.cz = fmul <2 x double> %i.cy, <double 6.000000e+00, double -6.000000e+00>
  %i.da = insertelement <2 x double> poison, double %i.n, i64 0
  %i.db = shufflevector <2 x double> %i.da, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dc = fdiv <2 x double> %i.cz, %i.db
  store <2 x double> %i.dc, ptr %i.a, align 16, !tbaa !49
  %i.dd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> splat (double 6.000000e+00), <2 x double> <double 2.000000e+00, double 4.000000e+00>)
  %i.de = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.df = insertelement <2 x double> poison, double %i.e, i64 0
  %i.dg = shufflevector <2 x double> %i.df, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dh = fdiv <2 x double> %i.dd, %i.dg          ; 2 uses
  %i.di = extractelement <2 x double> %i.dh, i64 0
  store double %i.di, ptr %i.de, align 16, !tbaa !49
  %i.dj = extractelement <2 x double> %i.dh, i64 1
  br label %bb.u

bb.t:                                             ; preds = %bb.p
  %i.dk = insertelement <2 x double> poison, double %i.o, i64 0
  %i.dl = shufflevector <2 x double> %i.dk, <2 x double> poison, <2 x i32> zeroinitializer
  %i.dm = fdiv <2 x double> <double 1.200000e+01, double -1.200000e+01>, %i.dl
  store <2 x double> %i.dm, ptr %i.a, align 16, !tbaa !49
  %i.dn = fdiv double 6.000000e+00, %i.n          ; 2 uses
  %i.do = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  store double %i.dn, ptr %i.do, align 16, !tbaa !49
  br label %bb.u

bb.u:                                             ; preds = %bb.r, %bb.t, %bb.s, %bb.q
  %.sink356 = phi double [ %i.cv, %bb.r ], [ %i.dn, %bb.t ], [ %i.dj, %bb.s ], [ %i.ch, %bb.q ]
  %i.dp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %.sink356, ptr %i.dp, align 8, !tbaa !49
  %i.dq = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !39
  store ptr %i.ds, ptr %i.b, align 16, !tbaa !50
  %i.dt = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !42
  %i.dv = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.du, ptr %i.dv, align 8, !tbaa !50
  %i.dw = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.dx = load ptr, ptr %i.dw, align 8, !tbaa !38
  %i.dy = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.dx, ptr %i.dy, align 16, !tbaa !50
  %i.dz = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !47
  %i.eb = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.ea, ptr %i.eb, align 8, !tbaa !50
  %i.ec = call i32 @N_VLinearCombination(i32 noundef 4, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not348 = icmp eq i32 %i.ec, 0
  br i1 %.not348, label %bb.ao, label %bb.ap

arkInterpEvaluate.exit:                           ; preds = %bb.h
  %i.ed = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !11
  %i.ef = getelementptr inbounds nuw i8, ptr %i.ee, i64 48
  %i.eg = load ptr, ptr %i.ef, align 8, !tbaa !19
  %i.eh = tail call i32 %i.eg(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFD5555555555555, i32 noundef 0, i32 noundef 3, ptr noundef %5) #14, !inline_history !65
  %.not345 = icmp eq i32 %i.eh, 0
  br i1 %.not345, label %bb.v, label %bb.ap

bb.v:                                             ; preds = %arkInterpEvaluate.exit
  %i.ei = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.ej = getelementptr inbounds nuw i8, ptr %i.ei, i64 48
  %i.ek = load double, ptr %i.ej, align 8, !tbaa !36
  %i.el = fdiv double %i.e, 3.000000e+00
  %i.em = fsub double %i.ek, %i.el
  %i.en = getelementptr inbounds nuw i8, ptr %0, i64 152
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !45
  %i.ep = getelementptr inbounds nuw i8, ptr %i.ei, i64 24
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !40
  %i.er = tail call i32 %i.eo(ptr noundef nonnull %0, double noundef %i.em, ptr noundef %5, ptr noundef %i.eq, i32 noundef 2) #14
  %.not346 = icmp eq i32 %i.er, 0
  br i1 %.not346, label %bb.w, label %bb.ap

bb.w:                                             ; preds = %bb.v
  switch i32 %3, label %bb.ab [
    i32 0, label %bb.x
    i32 1, label %bb.y
    i32 2, label %bb.z
    i32 3, label %bb.aa
  ]

bb.x:                                             ; preds = %bb.w
  %i.es = fmul double %i.k, -1.600000e+01
  %i.et = insertelement <2 x double> %i.i, double %i.k, i64 1
  %i.eu = insertelement <2 x double> poison, double %i.es, i64 0
  %i.ev = insertelement <2 x double> poison, double %i.l, i64 0 ; 2 uses
  %i.ew = shufflevector <2 x double> %i.ev, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ex = fmul double %i.e, 2.500000e-01
  %i.ey = fmul double %i.k, -1.400000e+01
  %i.ez = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.fa = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.ey, i64 1
  %i.fb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ez, <2 x double> <double 6.000000e+00, double -5.000000e+00>, <2 x double> %i.fa) ; 2 uses
  %i.fc = shufflevector <2 x double> %i.eu, <2 x double> %i.fb, <2 x i32> <i32 0, i32 2>
  %i.fd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.et, <2 x double> <double -6.000000e+00, double 1.600000e+01>, <2 x double> %i.fc)
  %i.fe = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ew, <2 x double> <double -9.000000e+00, double 9.000000e+00>, <2 x double> %i.fd)
  store <2 x double> %i.fe, ptr %i.a, align 16, !tbaa !49
  %i.ff = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.fg = shufflevector <2 x double> %i.ev, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.fh = shufflevector <2 x double> %i.fb, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %i.fi = insertelement <2 x double> %i.fh, double %2, i64 1
  %i.fj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.fg, <2 x double> <double -9.000000e+00, double 2.000000e+00>, <2 x double> %i.fi) ; 2 uses
  %i.fk = extractelement <2 x double> %i.fj, i64 0
  %i.fl = fmul double %i.fk, %i.ex
  store double %i.fl, ptr %i.ff, align 16, !tbaa !49
  %i.fm = extractelement <2 x double> %i.fj, i64 1
  %i.fn = fadd double %i.fm, %i.k
  %i.fo = fmul double %i.fn, %i.e
  %i.fp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double %i.fo, ptr %i.fp, align 8, !tbaa !49
  %i.fq = fmul double %i.e, 2.700000e+01
  %i.fr = fmul double %i.fq, 2.500000e-01
  %i.fs = fneg double %i.l
  %i.ft = tail call double @llvm.fmuladd.f64(double %i.k, double -2.000000e+00, double %i.fs)
  %i.fu = fsub double %i.ft, %i.j
  %i.fv = fmul double %i.fu, %i.fr
  br label %bb.ac

bb.y:                                             ; preds = %bb.w
  %i.fw = fmul double %i.j, 4.800000e+01          ; 2 uses
  %i.fx = fneg double %i.fw
  %i.fy = insertelement <2 x double> poison, double %i.fx, i64 0
  %i.fz = insertelement <2 x double> %i.fy, double %i.fw, i64 1
  %i.ga = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -1.200000e+01, double 1.200000e+01>, <2 x double> %i.fz)
  %i.gb = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.gc = shufflevector <2 x double> %i.gb, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gc, <2 x double> <double -3.600000e+01, double 3.600000e+01>, <2 x double> %i.ga)
  %i.ge = insertelement <2 x double> poison, double %i.e, i64 0
  %i.gf = shufflevector <2 x double> %i.ge, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gg = fdiv <2 x double> %i.gd, %i.gf
  store <2 x double> %i.gg, ptr %i.a, align 16, !tbaa !49
  %i.gh = fmul double %i.j, -2.100000e+01
  %i.gi = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.gj = insertelement <2 x double> <double poison, double 1.000000e+00>, double %i.gh, i64 0
  %i.gk = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -5.000000e+00, double 4.000000e+00>, <2 x double> %i.gj)
  %i.gl = shufflevector <2 x double> %i.gb, <2 x double> %i.i, <2 x i32> <i32 0, i32 2>
  %i.gm = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gl, <2 x double> <double -1.800000e+01, double 3.000000e+00>, <2 x double> %i.gk) ; 2 uses
  %i.gn = extractelement <2 x double> %i.gm, i64 0
  %i.go = fmul double %i.gn, 5.000000e-01
  store double %i.go, ptr %i.gi, align 16, !tbaa !49
  %i.gp = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.gq = extractelement <2 x double> %i.gm, i64 1
  store double %i.gq, ptr %i.gp, align 8, !tbaa !49
  %i.gr = fmul double %i.j, 3.000000e+00
  %i.gs = tail call double @llvm.fmuladd.f64(double %i.k, double 2.000000e+00, double %i.gr)
  %i.gt = fadd double %2, %i.gs
  %i.gu = fmul double %i.gt, -1.350000e+01
  br label %bb.ac

bb.z:                                             ; preds = %bb.w
  %i.gv = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -9.600000e+01, double 9.600000e+01>, <2 x double> <double -1.200000e+01, double 1.200000e+01>)
  %i.gw = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer
  %i.gx = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.gw, <2 x double> <double -1.080000e+02, double 1.080000e+02>, <2 x double> %i.gv)
  %i.gy = insertelement <2 x double> poison, double %i.n, i64 0
  %i.gz = shufflevector <2 x double> %i.gy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ha = fdiv <2 x double> %i.gx, %i.gz
  store <2 x double> %i.ha, ptr %i.a, align 16, !tbaa !49
  %i.hb = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.hc = insertelement <2 x double> %i.f, double -0.000000e+00, i64 1
  %i.hd = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.hc, <2 x double> <double -2.100000e+01, double 0.000000e+00>, <2 x double> <double -2.500000e+00, double 4.000000e+00>)
  %i.he = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.i, <2 x double> <double -2.700000e+01, double 6.000000e+00>, <2 x double> %i.hd)
  %i.hf = insertelement <2 x double> poison, double %i.e, i64 0
  %i.hg = shufflevector <2 x double> %i.hf, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hh = fdiv <2 x double> %i.he, %i.hg
  store <2 x double> %i.hh, ptr %i.hb, align 16, !tbaa !49
  %i.hi = tail call double @llvm.fmuladd.f64(double %2, double -8.100000e+01, double -1.350000e+01)
  %i.hj = tail call double @llvm.fmuladd.f64(double %i.j, double -8.100000e+01, double %i.hi)
  %i.hk = fdiv double %i.hj, %i.e
  br label %bb.ac

bb.aa:                                            ; preds = %bb.w
  %i.hl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double -2.160000e+02, double 2.160000e+02>, <2 x double> <double -9.600000e+01, double 9.600000e+01>)
  %i.hm = insertelement <2 x double> poison, double %i.o, i64 0
  %i.hn = shufflevector <2 x double> %i.hm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ho = fdiv <2 x double> %i.hl, %i.hn
  store <2 x double> %i.ho, ptr %i.a, align 16, !tbaa !49
  %i.hp = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %.scalar = tail call double @llvm.fmuladd.f64(double %2, double -5.400000e+01, double -2.100000e+01)
  %6 = insertelement <2 x double> <double poison, double 6.000000e+00>, double %.scalar, i64 0
  %i.hq = insertelement <2 x double> poison, double %i.n, i64 0
  %i.hr = shufflevector <2 x double> %i.hq, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hs = fdiv <2 x double> %6, %i.hr
  store <2 x double> %i.hs, ptr %i.hp, align 16, !tbaa !49
  %i.ht = tail call double @llvm.fmuladd.f64(double %2, double -1.620000e+02, double -8.100000e+01)
  %i.hu = fdiv double %i.ht, %i.n
  br label %bb.ac

bb.ab:                                            ; preds = %bb.w
  %i.hv = insertelement <2 x double> poison, double %i.p, i64 0
  %i.hw = shufflevector <2 x double> %i.hv, <2 x double> poison, <2 x i32> zeroinitializer
  %i.hx = fdiv <2 x double> <double -2.160000e+02, double 2.160000e+02>, %i.hw
  store <2 x double> %i.hx, ptr %i.a, align 16, !tbaa !49
  %i.hy = insertelement <2 x double> poison, double %i.o, i64 0
  %i.hz = shufflevector <2 x double> %i.hy, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ia = fdiv <2 x double> <double -5.400000e+01, double -1.620000e+02>, %i.hz ; 2 uses
  %i.ib = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ic = extractelement <2 x double> %i.ia, i64 0
  store double %i.ic, ptr %i.ib, align 16, !tbaa !49
  %i.id = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  store double 0.000000e+00, ptr %i.id, align 8, !tbaa !49
  %i.ie = extractelement <2 x double> %i.ia, i64 1
  br label %bb.ac

bb.ac:                                            ; preds = %bb.y, %bb.aa, %bb.ab, %bb.z, %bb.x
  %.sink358 = phi double [ %i.gu, %bb.y ], [ %i.hu, %bb.aa ], [ %i.ie, %bb.ab ], [ %i.hk, %bb.z ], [ %i.fv, %bb.x ]
  %i.if = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  store double %.sink358, ptr %i.if, align 16, !tbaa !49
  %i.ig = load ptr, ptr %1, align 8, !tbaa !20    ; 3 uses
  %i.ih = getelementptr inbounds nuw i8, ptr %i.ig, i64 16
  %i.ii = load ptr, ptr %i.ih, align 8, !tbaa !39
  store ptr %i.ii, ptr %i.b, align 16, !tbaa !50
  %i.ij = getelementptr inbounds nuw i8, ptr %0, i64 632
  %i.ik = load ptr, ptr %i.ij, align 8, !tbaa !42
  %i.il = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %i.ik, ptr %i.il, align 8, !tbaa !50
  %i.im = getelementptr inbounds nuw i8, ptr %i.ig, i64 8
  %i.in = load ptr, ptr %i.im, align 8, !tbaa !38
  %i.io = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.in, ptr %i.io, align 16, !tbaa !50
  %i.ip = getelementptr inbounds nuw i8, ptr %0, i64 640
  %i.iq = load ptr, ptr %i.ip, align 8, !tbaa !47
  %i.ir = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  store ptr %i.iq, ptr %i.ir, align 8, !tbaa !50
  %i.is = getelementptr inbounds nuw i8, ptr %i.ig, i64 24
  %i.it = load ptr, ptr %i.is, align 8, !tbaa !40
  %i.iu = getelementptr inbounds nuw i8, ptr %i.b, i64 32
  store ptr %i.it, ptr %i.iu, align 16, !tbaa !50
  %i.iv = call i32 @N_VLinearCombination(i32 noundef 5, ptr noundef nonnull %i.a, ptr noundef nonnull %i.b, ptr noundef %5) #14
  %.not347 = icmp eq i32 %i.iv, 0
  br i1 %.not347, label %bb.ao, label %bb.ap

arkInterpEvaluate.exit351:                        ; preds = %bb.h
  %i.iw = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.ix = load ptr, ptr %i.iw, align 8, !tbaa !11
  %i.iy = getelementptr inbounds nuw i8, ptr %i.ix, i64 48
  %i.iz = load ptr, ptr %i.iy, align 8, !tbaa !19
  %i.ja = tail call i32 %i.iz(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFD5555555555555, i32 noundef 0, i32 noundef 4, ptr noundef %5) #14, !inline_history !65
  %.not340 = icmp eq i32 %i.ja, 0
  br i1 %.not340, label %bb.ad, label %bb.ap

bb.ad:                                            ; preds = %arkInterpEvaluate.exit351
  %i.jb = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.jc = getelementptr inbounds nuw i8, ptr %i.jb, i64 48
  %i.jd = load double, ptr %i.jc, align 8, !tbaa !36
  %i.je = fdiv double %i.e, 3.000000e+00
  %i.jf = fsub double %i.jd, %i.je
  %i.jg = getelementptr inbounds nuw i8, ptr %0, i64 152 ; 2 uses
  %i.jh = load ptr, ptr %i.jg, align 8, !tbaa !45
  %i.ji = getelementptr inbounds nuw i8, ptr %i.jb, i64 24
  %i.jj = load ptr, ptr %i.ji, align 8, !tbaa !40
  %i.jk = tail call i32 %i.jh(ptr noundef nonnull %0, double noundef %i.jf, ptr noundef %5, ptr noundef %i.jj, i32 noundef 2) #14
  %.not341 = icmp eq i32 %i.jk, 0
  br i1 %.not341, label %arkInterpEvaluate.exit353, label %bb.ap

arkInterpEvaluate.exit353:                        ; preds = %bb.ad
  %i.jl = load ptr, ptr %i.iw, align 8, !tbaa !11
  %i.jm = getelementptr inbounds nuw i8, ptr %i.jl, i64 48
  %i.jn = load ptr, ptr %i.jm, align 8, !tbaa !19
  %i.jo = tail call i32 %i.jn(ptr noundef nonnull %0, ptr noundef nonnull %1, double noundef f0xBFE5555555555555, i32 noundef 0, i32 noundef 4, ptr noundef %5) #14, !inline_history !65
  %.not342 = icmp eq i32 %i.jo, 0
  br i1 %.not342, label %bb.ae, label %bb.ap

bb.ae:                                            ; preds = %arkInterpEvaluate.exit353
  %i.jp = load ptr, ptr %1, align 8, !tbaa !20    ; 2 uses
  %i.jq = getelementptr inbounds nuw i8, ptr %i.jp, i64 48
  %i.jr = load double, ptr %i.jq, align 8, !tbaa !36
  %i.js = fmul double %i.e, 2.000000e+00          ; 4 uses
  %i.jt = fdiv double %i.js, 3.000000e+00
  %i.ju = fsub double %i.jr, %i.jt
  %i.jv = load ptr, ptr %i.jg, align 8, !tbaa !45
  %i.jw = getelementptr inbounds nuw i8, ptr %i.jp, i64 32
  %i.jx = load ptr, ptr %i.jw, align 8, !tbaa !41
  %i.jy = tail call i32 %i.jv(ptr noundef nonnull %0, double noundef %i.ju, ptr noundef %5, ptr noundef %i.jx, i32 noundef 2) #14
  %.not343 = icmp eq i32 %i.jy, 0
  br i1 %.not343, label %bb.af, label %bb.ap

bb.af:                                            ; preds = %bb.ae
  switch i32 %3, label %bb.al [
    i32 0, label %bb.ag
    i32 1, label %bb.ah
    i32 2, label %bb.ai
    i32 3, label %bb.aj
    i32 4, label %bb.ak
  ]

bb.ag:                                            ; preds = %bb.af
  %i.jz = insertelement <2 x double> poison, double %i.l, i64 0
  %i.ka = shufflevector <2 x double> %i.jz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kb = fmul <2 x double> %i.ka, <double 1.350000e+02, double 6.300000e+01>
  %i.kc = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.kd = fmul double %i.e, 2.500000e-01          ; 3 uses
  %i.ke = insertelement <2 x double> poison, double %i.m, i64 0
  %i.kf = shufflevector <2 x double> %i.ke, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kg = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> <double 5.400000e+01, double 2.700000e+01>, <2 x double> %i.kb)
  %i.kh = insertelement <2 x double> poison, double %i.k, i64 0 ; 2 uses
  %i.ki = shufflevector <2 x double> %i.kh, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kj = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ki, <2 x double> <double 1.100000e+02, double 4.900000e+01>, <2 x double> %i.kg)
  %i.kk = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.kl = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kk, <2 x double> <double 3.000000e+01, double 1.300000e+01>, <2 x double> %i.kj) ; 3 uses
  %i.km = extractelement <2 x double> %i.kl, i64 0
  store double %i.km, ptr %i.a, align 16, !tbaa !49
  %i.kn = insertelement <2 x double> <double 1.000000e+00, double poison>, double %i.kd, i64 1 ; 2 uses
  %i.ko = fsub <2 x double> %i.kn, %i.kl
  %i.kp = fmul <2 x double> %i.kn, %i.kl
  %i.kq = shufflevector <2 x double> %i.ko, <2 x double> %i.kp, <2 x i32> <i32 0, i32 3>
  store <2 x double> %i.kq, ptr %i.kc, align 8, !tbaa !49
  %i.kr = fmul <2 x double> %i.ka, <double 7.200000e+01, double 2.160000e+02>
  %i.ks = getelementptr inbounds nuw i8, ptr %i.a, i64 24
  %i.kt = fmul double %i.l, 1.890000e+02
  %i.ku = insertelement <2 x double> %i.kh, double %i.m, i64 1
  %i.kv = insertelement <2 x double> %i.i, double %i.k, i64 1
  %i.kw = insertelement <2 x double> %i.kk, double %2, i64 0
  %i.kx = insertelement <2 x double> poison, double %i.kd, i64 0
  %i.ky = shufflevector <2 x double> %i.kx, <2 x double> poison, <2 x i32> zeroinitializer
  %i.kz = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kf, <2 x double> <double 2.700000e+01, double 8.100000e+01>, <2 x double> %i.kr) ; 2 uses
  %i.la = insertelement <2 x double> %i.kz, double %i.kt, i64 1
  %i.lb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ku, <2 x double> <double 6.700000e+01, double 8.100000e+01>, <2 x double> %i.la)
  %i.lc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kv, <2 x double> <double 2.600000e+01, double 1.350000e+02>, <2 x double> %i.lb)
  %i.ld = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.kw, <2 x double> <double 4.000000e+00, double 2.700000e+01>, <2 x double> %i.lc)
  %i.le = fmul <2 x double> %i.ld, %i.ky
  store <2 x double> %i.le, ptr %i.ks, align 8, !tbaa !49
  %i.lf = extractelement <2 x double> %i.kz, i64 1
  %i.lg = tail call double @llvm.fmuladd.f64(double %i.k, double 1.890000e+02, double %i.lf)
  %i.lh = tail call double @llvm.fmuladd.f64(double %i.j, double 5.400000e+01, double %i.lg)
  %i.li = fmul double %i.lh, %i.kd
  br label %bb.am

bb.ah:                                            ; preds = %bb.af
  %i.lj = fmul double %i.k, 5.400000e+02
  %i.lk = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.ll = fmul double %i.k, 2.520000e+02
  %i.lm = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.ln = fmul double %i.k, 2.880000e+02
  %i.lo = tail call double @llvm.fmuladd.f64(double %i.l, double 2.700000e+02, double %i.lj)
  %i.lp = tail call double @llvm.fmuladd.f64(double %i.j, double 3.300000e+02, double %i.lo)
  %i.lq = insertelement <2 x double> %i.f, double %i.l, i64 1 ; 2 uses
  %i.lr = insertelement <2 x double> poison, double %i.lp, i64 0
  %i.ls = insertelement <2 x double> %i.lr, double %i.ln, i64 1
  %i.lt = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> <double 6.000000e+01, double 1.350000e+02>, <2 x double> %i.ls) ; 2 uses
  %i.lu = extractelement <2 x double> %i.lt, i64 0
  %i.lv = fdiv double %i.lu, %i.e                 ; 2 uses
  store double %i.lv, ptr %i.a, align 16, !tbaa !49
  %i.lw = fneg double %i.lv
  store double %i.lw, ptr %i.lk, align 8, !tbaa !49
  %i.lx = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> <i32 poison, i32 0>
  %i.ly = insertelement <2 x double> %i.lx, double %i.l, i64 0
  %i.lz = insertelement <2 x double> %i.lt, double %i.ll, i64 0
  %i.ma = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.ly, <2 x double> <double 1.350000e+02, double 2.010000e+02>, <2 x double> %i.lz)
  %i.mb = insertelement <2 x double> %i.i, double %2, i64 1
  %i.mc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.mb, <2 x double> <double 1.470000e+02, double 5.200000e+01>, <2 x double> %i.ma)
  %i.md = insertelement <2 x double> <double poison, double 4.000000e+00>, double %2, i64 0
  %i.me = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.md, <2 x double> <double 2.600000e+01, double 1.000000e+00>, <2 x double> %i.mc)
  %i.mf = fmul <2 x double> %i.me, splat (double 2.500000e-01)
  store <2 x double> %i.mf, ptr %i.lm, align 16, !tbaa !49
  %i.mg = fmul double %i.k, 7.560000e+02
  %i.mh = getelementptr inbounds nuw i8, ptr %i.a, i64 32
  %i.mi = fmul double %i.k, 8.640000e+02
  %i.mj = tail call double @llvm.fmuladd.f64(double %i.l, double 4.050000e+02, double %i.mg)
  %i.mk = tail call double @llvm.fmuladd.f64(double %i.j, double 4.050000e+02, double %i.mj)
  %i.ml = insertelement <2 x double> poison, double %i.mk, i64 0
  %i.mm = insertelement <2 x double> %i.ml, double %i.mi, i64 1
  %i.mn = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.lq, <2 x double> <double 5.400000e+01, double 4.050000e+02>, <2 x double> %i.mm) ; 2 uses
  %i.mo = extractelement <2 x double> %i.mn, i64 0
  %i.mp = fmul double %i.mo, 2.500000e-01
  store double %i.mp, ptr %i.mh, align 16, !tbaa !49
  %i.mq = extractelement <2 x double> %i.mn, i64 1
  %i.mr = tail call double @llvm.fmuladd.f64(double %i.j, double 5.670000e+02, double %i.mq)
  %i.ms = tail call double @llvm.fmuladd.f64(double %2, double 1.080000e+02, double %i.mr)
  %i.mt = fmul double %i.ms, 2.500000e-01
  br label %bb.am

bb.ai:                                            ; preds = %bb.af
  %i.mu = shufflevector <2 x double> %i.i, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.mv = fmul <2 x double> %i.mu, <double 1.620000e+03, double 1.134000e+03>
  %i.mw = getelementptr inbounds nuw i8, ptr %i.a, i64 8
  %i.mx = fmul <2 x double> %i.mu, <double 3.780000e+02, double 4.320000e+02>
  %i.my = getelementptr inbounds nuw i8, ptr %i.a, i64 16
  %i.mz = insertelement <2 x double> poison, double %i.k, i64 0
  %i.na = shufflevector <2 x double> %i.mz, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %i.nb = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.na, <2 x double> splat (double 2.700000e+02), <2 x double> %i.mx)
  %i.nc = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.g, <2 x double> <double 1.470000e+02, double 2.010000e+02>, <2 x double> %i.nb)
  %i.nd = fadd <2 x double> %i.nc, <double 1.300000e+01, double 2.600000e+01>
end_hunk_0
