Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/test_irr_matrix4?download=true
inline.NumInlined: 575
inline.NumDeleted: 139
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumUnrolled: 1
begin_hunk_0_@"_ZZL22CATCH2_INTERNAL_TEST_4vENK3$_3clEN4core8vector3dIfEES2_":bb.a
  %5 = alloca %"class.Catch::UnaryExpr", align 8  ; 7 uses
  %6 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %7 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %8 = alloca %"class.Catch::AssertionHandler", align 8 ; 11 uses
  %9 = alloca %"struct.Catch::SourceLineInfo", align 8 ; 5 uses
  %.sroa.083.0.vec.extract = extractelement <2 x float> %2, i64 0
  %.sroa.084.0.vec.extract = extractelement <2 x float> %0, i64 0
  %.sroa.084.4.vec.extract = extractelement <2 x float> %0, i64 1
  %i.a = fpext nsz float %1 to double
  %sincos39.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.a) ; 2 uses
  %sin40.i = extractvalue { double, double } %sincos39.i, 0 ; 4 uses
  %cos41.i = extractvalue { double, double } %sincos39.i, 1 ; 4 uses
  %i.b = fneg nsz double %sin40.i
  %i.c = fneg nsz double %cos41.i
  %i.d = fpext nsz float %.sroa.084.0.vec.extract to double
  %sincos.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.d) ; 2 uses
  %sin.i = extractvalue { double, double } %sincos.i, 0 ; 3 uses
  %cos.i = extractvalue { double, double } %sincos.i, 1 ; 3 uses
  %i.e = fpext nsz float %.sroa.084.4.vec.extract to double
  %sincos36.i = tail call nsz { double, double } @llvm.sincos.f64(double %i.e) ; 2 uses
  %sin37.i = extractvalue { double, double } %sincos36.i, 0 ; 3 uses
  %cos38.i = extractvalue { double, double } %sincos36.i, 1 ; 3 uses
  %i.f = insertelement <2 x double> poison, double %cos38.i, i64 0
  %i.g = shufflevector <2 x double> %i.f, <2 x double> poison, <2 x i32> zeroinitializer
  %i.h = insertelement <2 x double> poison, double %cos41.i, i64 0
  %i.i = insertelement <2 x double> %i.h, double %sin40.i, i64 1 ; 2 uses
  %i.j = fmul nsz <2 x double> %i.g, %i.i
  %i.k = fptrunc <2 x double> %i.j to <2 x float> ; 7 uses
  %i.l = fptrunc nsz double %sin37.i to float     ; 3 uses
  %i.m = fneg nsz float %i.l                      ; 2 uses
  %i.n = fmul nsz double %sin.i, %sin37.i
  %i.o = fmul nsz double %cos.i, %sin37.i
  %i.p = insertelement <2 x double> poison, double %cos.i, i64 0
  %i.q = shufflevector <2 x double> %i.p, <2 x double> poison, <2 x i32> zeroinitializer
  %i.r = insertelement <2 x double> poison, double %i.b, i64 0
  %i.s = insertelement <2 x double> %i.r, double %cos41.i, i64 1
  %i.t = fmul nsz <2 x double> %i.q, %i.s
  %i.u = insertelement <2 x double> poison, double %i.n, i64 0
  %i.v = shufflevector <2 x double> %i.u, <2 x double> poison, <2 x i32> zeroinitializer
  %i.w = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.v, <2 x double> %i.i, <2 x double> %i.t)
  %i.x = fptrunc <2 x double> %i.w to <2 x float> ; 6 uses
  %i.y = fmul nsz double %sin.i, %cos38.i
  %i.z = fptrunc nsz double %i.y to float         ; 4 uses
  %i.aa = fmul nsz double %cos.i, %cos38.i
  %i.ab = fptrunc nsz double %i.aa to float       ; 4 uses
  %i.ac = fmul nsz float %i.z, 0.000000e+00       ; 2 uses
  %i.ad = tail call nsz float @llvm.fmuladd.f32(float %i.m, float %.sroa.083.0.vec.extract, float %i.ac)
  %i.ae = tail call nsz float @llvm.fmuladd.f32(float %i.ab, float 0.000000e+00, float %i.ad) ; 3 uses
  %i.af = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.ag = fmul nsz <2 x float> %i.af, %i.x
  %i.ah = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> zeroinitializer, <2 x float> %i.ag) ; 2 uses
  %i.ai = fmul nsz <2 x float> %i.x, zeroinitializer ; 3 uses
  %i.aj = shufflevector <2 x float> %2, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ak = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.k, <2 x float> %i.aj, <2 x float> %i.ai) ; 2 uses
  %i.al = extractelement <2 x float> %i.ak, i64 0
  %i.am = insertelement <2 x double> poison, double %sin.i, i64 0
  %i.an = shufflevector <2 x double> %i.am, <2 x double> poison, <2 x i32> zeroinitializer
  %i.ao = insertelement <2 x double> poison, double %i.c, i64 0
  %i.ap = insertelement <2 x double> %i.ao, double %sin40.i, i64 1
  %i.aq = fmul nsz <2 x double> %i.an, %i.ap
  %i.ar = insertelement <2 x double> poison, double %i.o, i64 0
  %i.as = shufflevector <2 x double> %i.ar, <2 x double> poison, <2 x i32> zeroinitializer
  %i.at = insertelement <2 x double> poison, double %sin40.i, i64 0
  %i.au = insertelement <2 x double> %i.at, double %cos41.i, i64 1
  %i.av = tail call nsz <2 x double> @llvm.fmuladd.v2f64(<2 x double> %i.as, <2 x double> %i.au, <2 x double> %i.aq)
  %i.aw = fptrunc <2 x double> %i.av to <2 x float> ; 3 uses
  %i.ax = extractelement <2 x float> %i.aw, i64 1 ; 4 uses
  %i.ay = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float 0.000000e+00, float %i.al) ; 3 uses
  %i.az = shufflevector <2 x float> %i.ak, <2 x float> %i.ah, <2 x i32> <i32 1, i32 2>
  %i.ba = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.aw, <2 x float> zeroinitializer, <2 x float> %i.az) ; 5 uses
  %i.bb = extractelement <2 x float> %i.ah, i64 1
  %i.bc = extractelement <2 x float> %i.aw, i64 0 ; 4 uses
  %i.bd = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float 0.000000e+00, float %i.bb) ; 2 uses
  %foldExtExtBinop = fmul nsz <2 x float> %i.ba, %i.ba
  %i.be = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.bf = tail call nsz float @llvm.fmuladd.f32(float %i.ay, float %i.ay, float %i.be)
  %i.bg = tail call nsz float @llvm.fmuladd.f32(float %i.ae, float %i.ae, float %i.bf)
  %i.bh = tail call nsz noundef float @llvm.sqrt.f32(float %i.bg) ; 2 uses
  %i.bi = tail call nsz float @llvm.fabs.f32(float %i.bh)
  %i.bj = fcmp nsz ole float %i.bi, f0x358637BD
  %i.bk = fpext nsz float %i.bh to double
  %i.bl = fdiv nsz double 1.000000e+00, %i.bk
  %i.bm = select i1 %i.bj, double f0x37F0000010000010, double %i.bl ; 3 uses
  %i.bn = fpext nsz float %i.ae to double
  %i.bo = fmul nsz double %i.bm, %i.bn            ; 2 uses
  %i.bp = fcmp nsz olt double %i.bo, -1.000000e+00
  %i.bq = select i1 %i.bp, double -1.000000e+00, double %i.bo ; 2 uses
  %i.br = fcmp nsz olt double %i.bq, 1.000000e+00
  %i.bs = select i1 %i.br, double %i.bq, double 1.000000e+00 ; 2 uses
  %i.bt = tail call nsz noundef double @llvm.fabs.f64(double %i.bs)
  %i.bu = fadd nsz double %i.bt, -1.000000e+00
  %i.bv = tail call nsz noundef double @llvm.fabs.f64(double %i.bu)
  %i.bw = fcmp nsz ugt double %i.bv, 1.000000e-08
  br i1 %i.bw, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.bx = extractelement <2 x float> %i.ba, i64 0
  %.sroa.083.4.vec.extract = extractelement <2 x float> %2, i64 1
  %i.by = fmul nsz float %.sroa.083.4.vec.extract, %i.z
  %i.bz = insertelement <2 x float> poison, float %i.m, i64 0
  %i.ca = shufflevector <2 x float> %i.bz, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cb = insertelement <2 x float> poison, float %i.by, i64 0
  %i.cc = insertelement <2 x float> %i.cb, float %i.ac, i64 1
  %i.cd = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ca, <2 x float> zeroinitializer, <2 x float> %i.cc)
  %i.ce = insertelement <2 x float> poison, float %i.ab, i64 0
  %i.cf = shufflevector <2 x float> %i.ce, <2 x float> poison, <2 x i32> zeroinitializer
  %i.cg = insertelement <2 x float> <float 0.000000e+00, float poison>, float %3, i64 1
  %i.ch = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.cf, <2 x float> %i.cg, <2 x float> %i.cd) ; 3 uses
  %i.ci = extractelement <2 x float> %i.k, i64 1
  %i.cj = extractelement <2 x float> %i.ai, i64 1
  %i.ck = tail call nsz float @llvm.fmuladd.f32(float %i.ci, float 0.000000e+00, float %i.cj)
  %i.cl = tail call nsz float @llvm.fmuladd.f32(float %i.bc, float %3, float %i.ck)
  %i.cm = extractelement <2 x float> %i.k, i64 0
  %i.cn = extractelement <2 x float> %i.ai, i64 0
  %i.co = tail call nsz float @llvm.fmuladd.f32(float %i.cm, float 0.000000e+00, float %i.cn)
  %i.cp = tail call nsz float @llvm.fmuladd.f32(float %i.ax, float %3, float %i.co)
  %i.cq = insertelement <2 x float> poison, float %i.cl, i64 0
  %i.cr = insertelement <2 x float> %i.cq, float %i.bd, i64 1 ; 2 uses
  %i.cs = fmul nsz <2 x float> %i.cr, %i.cr
  %i.ct = insertelement <2 x float> %i.ba, float %i.cp, i64 0 ; 2 uses
  %i.cu = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ct, <2 x float> %i.ct, <2 x float> %i.cs)
  %i.cv = shufflevector <2 x float> %i.cu, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.cw = tail call nsz <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ch, <2 x float> %i.ch, <2 x float> %i.cv)
  %i.cx = tail call nsz <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.cw) ; 2 uses
  %i.cy = tail call nsz <2 x float> @llvm.fabs.v2f32(<2 x float> %i.cx)
  %i.cz = fcmp nsz ole <2 x float> %i.cy, splat (float f0x358637BD)
  %i.da = fpext <2 x float> %i.cx to <2 x double>
  %i.db = fdiv nsz <2 x double> splat (double 1.000000e+00), %i.da
  %i.dc = select <2 x i1> %i.cz, <2 x double> splat (double f0x37F0000010000010), <2 x double> %i.db
  %i.dd = fpext <2 x float> %i.ch to <2 x double>
  %i.de = fmul nsz <2 x double> %i.dc, %i.dd      ; 2 uses
  %i.df = extractelement <2 x double> %i.de, i64 0
  %i.dg = extractelement <2 x double> %i.de, i64 1
  %i.dh = tail call nsz double @llvm.atan2.f64(double %i.df, double %i.dg)
  %i.di = fpext nsz float %i.ay to double
  %i.dj = fmul nsz double %i.bm, %i.di
  %i.dk = fpext nsz float %i.bx to double
  %i.dl = fmul nsz double %i.bm, %i.dk
  %i.dm = tail call nsz double @llvm.atan2.f64(double %i.dl, double %i.dj)
  %i.dn = fptrunc nsz double %i.dh to float
  %i.do = fpext nsz float %i.dn to double
  %i.dp = tail call nsz { double, double } @llvm.sincos.f64(double %i.do)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

bb.c:                                             ; preds = %bb.a
  %i.dq = fpext nsz float %i.bd to double
  %i.dr = extractelement <2 x float> %i.ba, i64 1
  %i.ds = fneg nsz float %i.dr
  %i.dt = fpext nsz float %i.ds to double
  %i.du = tail call nsz double @llvm.atan2.f64(double %i.dt, double %i.dq)
  br label %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit

_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit: ; preds = %bb.b, %bb.c
  %.025.i.i.i = phi { double, double } [ { double 0.000000e+00, double 1.000000e+00 }, %bb.c ], [ %i.dp, %bb.b ] ; 2 uses
  %.0.i.i.i = phi nsz double [ %i.du, %bb.c ], [ %i.dm, %bb.b ]
  %i.dv = tail call nsz double @llvm.asin.f64(double %i.bs)
  %i.dw = fptrunc nsz double %i.dv to float       ; 2 uses
  %i.dx = fneg nsz float %i.dw
  %i.dy = fptrunc nsz double %.0.i.i.i to float
  %sin.i24 = extractvalue { double, double } %.025.i.i.i, 0 ; 4 uses
  %cos.i25 = extractvalue { double, double } %.025.i.i.i, 1 ; 4 uses
  %i.dz = fpext nsz float %i.dx to double
  %sincos36.i26 = tail call nsz { double, double } @llvm.sincos.f64(double %i.dz) ; 2 uses
  %sin37.i27 = extractvalue { double, double } %sincos36.i26, 0 ; 3 uses
  %cos38.i28 = extractvalue { double, double } %sincos36.i26, 1 ; 4 uses
  %i.ea = fpext nsz float %i.dy to double
  %sincos39.i29 = tail call nsz { double, double } @llvm.sincos.f64(double %i.ea) ; 2 uses
  %sin40.i30 = extractvalue { double, double } %sincos39.i29, 0 ; 5 uses
  %cos41.i31 = extractvalue { double, double } %sincos39.i29, 1 ; 5 uses
  %i.eb = fmul nsz double %cos38.i28, %cos41.i31
  %i.ec = fptrunc nsz double %i.eb to float
  %i.ed = fmul nsz double %cos38.i28, %sin40.i30
  %i.ee = fptrunc nsz double %i.ed to float       ; 2 uses
  %i.ef = fptrunc nsz double %sin37.i27 to float  ; 2 uses
  %i.eg = fmul nsz double %sin37.i27, %sin.i24    ; 2 uses
  %i.eh = fmul nsz double %sin37.i27, %cos.i25    ; 2 uses
  %i.ei = fneg nsz double %sin40.i30
  %i.ej = fmul nsz double %cos.i25, %i.ei
  %i.ek = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double %cos41.i31, double %i.ej)
  %i.el = fptrunc nsz double %i.ek to float       ; 2 uses
  %i.em = fmul nsz double %cos.i25, %cos41.i31
  %i.en = tail call nsz double @llvm.fmuladd.f64(double %i.eg, double %sin40.i30, double %i.em)
  %i.eo = fptrunc nsz double %i.en to float       ; 2 uses
  %i.ep = fmul nsz double %cos38.i28, %sin.i24
  %i.eq = fptrunc nsz double %i.ep to float       ; 2 uses
  %i.er = fmul nsz double %sin.i24, %sin40.i30
  %i.es = tail call nsz double @llvm.fmuladd.f64(double %i.eh, double %cos41.i31, double %i.er)
  %i.et = fptrunc nsz double %i.es to float       ; 2 uses
  %i.eu = fneg nsz double %cos41.i31
  %i.ev = fmul nsz double %sin.i24, %i.eu
  %i.ew = tail call nsz double @llvm.fmuladd.f64(double %i.eh, double %sin40.i30, double %i.ev)
  %i.ex = fptrunc nsz double %i.ew to float       ; 2 uses
  %i.ey = fmul nsz double %cos38.i28, %cos.i25
  %i.ez = fptrunc nsz double %i.ey to float       ; 2 uses
  %i.fa = tail call nsz float @llvm.fabs.f32(float %i.dw)
  %i.fb = fadd nsz float %i.fa, f0xBFC90FDB
  %i.fc = tail call nsz noundef float @llvm.fabs.f32(float %i.fb)
  %i.fd = fcmp nsz olt float %i.fc, f0x3C23D70A
  %i.fe = extractelement <2 x float> %i.k, i64 0
  %i.ff = fsub nsz float %i.fe, %i.ec
  %i.fg = tail call nsz float @llvm.fabs.f32(float %i.ff) ; 2 uses
  br i1 %i.fd, label %bb.d, label %bb.w

bb.d:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #19
  store ptr @.str, ptr %7, align 8, !tbaa !16
  %i.fh = getelementptr inbounds nuw i8, ptr %7, i64 8
  store i64 131, ptr %i.fh, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %7, ptr nonnull @.str.41, i64 24, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %7) #19
  %i.fi = fcmp nsz ugt float %i.fg, 1.000000e-03
  br i1 %i.fi, label %bb.l, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.fj = extractelement <2 x float> %i.k, i64 1
  %i.fk = fsub nsz float %i.fj, %i.ee
  %i.fl = call nsz noundef float @llvm.fabs.f32(float %i.fk)
  %i.fm = fcmp nsz ugt float %i.fl, 1.000000e-03
  br i1 %i.fm, label %bb.l, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.fn = fsub nsz float %i.ef, %i.l
  %i.fo = call nsz noundef float @llvm.fabs.f32(float %i.fn)
  %i.fp = fcmp nsz ugt float %i.fo, 1.000000e-03
  %i.fq = extractelement <2 x float> %i.x, i64 0
  %i.fr = fsub nsz float %i.fq, %i.el
  %i.fs = call nsz float @llvm.fabs.f32(float %i.fr)
  %i.ft = fcmp nsz ugt float %i.fs, 1.000000e-03
  %or.cond = select i1 %i.fp, i1 true, i1 %i.ft
  br i1 %or.cond, label %bb.l, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.fu = extractelement <2 x float> %i.x, i64 1
  %i.fv = fsub nsz float %i.fu, %i.eo
  %i.fw = call nsz noundef float @llvm.fabs.f32(float %i.fv)
  %i.fx = fcmp nsz ugt float %i.fw, 1.000000e-03
  br i1 %i.fx, label %bb.l, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.fy = fsub nsz float %i.z, %i.eq
  %i.fz = call nsz noundef float @llvm.fabs.f32(float %i.fy)
  %i.ga = fcmp nsz ugt float %i.fz, 1.000000e-03
  br i1 %i.ga, label %bb.l, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.gb = fsub nsz float %i.ax, %i.et
  %i.gc = call nsz noundef float @llvm.fabs.f32(float %i.gb)
  %i.gd = fcmp nsz ugt float %i.gc, 1.000000e-03
  br i1 %i.gd, label %bb.l, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ge = fsub nsz float %i.bc, %i.ex
  %i.gf = call nsz noundef float @llvm.fabs.f32(float %i.ge)
  %i.gg = fcmp nsz ugt float %i.gf, 1.000000e-03
  br i1 %i.gg, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.gh = fsub nsz float %i.ab, %i.ez
  %i.gi = call nsz noundef float @llvm.fabs.f32(float %i.gh)
  %i.gj = fcmp nsz ole float %i.gi, 1.000000e-03
  %i.gk = zext i1 %i.gj to i8
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j, %bb.i, %bb.h, %bb.g, %bb.f, %bb.e, %bb.d
  %.lcssa.i = phi i8 [ 0, %bb.d ], [ 0, %bb.i ], [ 0, %bb.e ], [ 0, %bb.j ], [ 0, %bb.f ], [ %i.gk, %bb.k ], [ 0, %bb.h ], [ 0, %bb.g ] ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #19
  %i.gl = getelementptr inbounds nuw i8, ptr %5, i64 8
  store i8 0, ptr %i.gl, align 8, !tbaa !22, !alias.scope !181
  %i.gm = getelementptr inbounds nuw i8, ptr %5, i64 9
  store i8 %.lcssa.i, ptr %i.gm, align 1, !tbaa !23, !alias.scope !181
  store ptr getelementptr inbounds nuw inrange(-16, 8) (i8, ptr @_ZTVN5Catch9UnaryExprIbEE, i64 16), ptr %5, align 8, !tbaa !25, !alias.scope !181
  %i.gn = getelementptr inbounds nuw i8, ptr %5, i64 10
  store i8 %.lcssa.i, ptr %i.gn, align 2, !tbaa !27, !alias.scope !181
  invoke void @_ZN5Catch16AssertionHandler10handleExprERKNS_20ITransientExpressionE(ptr noundef nonnull align 8 dereferenceable(72) %6, ptr noundef nonnull align 8 dereferenceable(10) %5)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %bb.l
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #19
  br label %bb.p

bb.n:                                             ; preds = %bb.l
  %i.go = landingpad { ptr, i32 }
          catch ptr null
  %i.gp = extractvalue { ptr, i32 } %i.go, 0
  %i.gq = call ptr @__cxa_begin_catch(ptr %i.gp) #19 ; 0 uses
  invoke void @_ZN5Catch16AssertionHandler33handleUnexpectedInflightExceptionEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.o unwind label %bb.t

bb.o:                                             ; preds = %bb.n
  invoke void @__cxa_end_catch()
          to label %bb.p unwind label %bb.u

bb.p:                                             ; preds = %bb.o, %bb.m
  invoke void @_ZN5Catch16AssertionHandler8completeEv(ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %bb.q unwind label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.gr = getelementptr inbounds nuw i8, ptr %6, i64 59
  %i.gs = load i8, ptr %i.gr, align 1, !tbaa !34, !range !35, !noundef !36
  %i.gt = trunc nuw i8 %i.gs to i1
  br i1 %i.gt, label %_ZN5Catch16AssertionHandlerD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %bb.q
  %i.gu = getelementptr inbounds nuw i8, ptr %6, i64 64
  %i.gv = load ptr, ptr %i.gu, align 8, !tbaa !37, !nonnull !36, !align !38 ; 2 uses
  %i.gw = load ptr, ptr %i.gv, align 8, !tbaa !25
  %i.gx = getelementptr inbounds nuw i8, ptr %i.gw, i64 160
  %i.gy = load ptr, ptr %i.gx, align 8
  invoke void %i.gy(ptr noundef nonnull align 8 dereferenceable(8) %i.gv, ptr noundef nonnull align 8 dereferenceable(72) %6)
          to label %_ZN5Catch16AssertionHandlerD2Ev.exit unwind label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.gz = landingpad { ptr, i32 }
          catch ptr null
  %i.ha = extractvalue { ptr, i32 } %i.gz, 0
  call void @__clang_call_terminate(ptr %i.ha) #20
  unreachable

_ZN5Catch16AssertionHandlerD2Ev.exit:             ; preds = %bb.q, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.ap

bb.t:                                             ; preds = %bb.n
  %i.hb = landingpad { ptr, i32 }
          cleanup
  invoke void @__cxa_end_catch()
          to label %bb.v unwind label %bb.ar

bb.u:                                             ; preds = %bb.p, %bb.o
  %i.hc = landingpad { ptr, i32 }
          cleanup
  br label %bb.v

bb.v:                                             ; preds = %bb.t, %bb.u
  %.pn20 = phi { ptr, i32 } [ %i.hc, %bb.u ], [ %i.hb, %bb.t ]
  call void @_ZN5Catch16AssertionHandlerD2Ev(ptr noundef nonnull align 8 dead_on_return(72) dereferenceable(72) %6) #19
  call void @llvm.lifetime.end.p0(ptr nonnull %6) #19
  br label %bb.aq

bb.w:                                             ; preds = %_ZNK4core8CMatrix4IfE18getRotationRadiansEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %8) #19
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #19
  store ptr @.str, ptr %9, align 8, !tbaa !16
  %i.hd = getelementptr inbounds nuw i8, ptr %9, i64 8
  store i64 133, ptr %i.hd, align 8, !tbaa !17
  call void @_ZN5Catch16AssertionHandlerC1ENS_9StringRefERKNS_14SourceLineInfoES1_NS_17ResultDisposition5FlagsE(ptr noundef nonnull align 8 dereferenceable(72) %8, ptr nonnull @.str.5, i64 5, ptr noundef nonnull align 8 dereferenceable(16) %9, ptr nonnull @.str.42, i64 19, i32 noundef 2)
  call void @llvm.lifetime.end.p0(ptr nonnull %9) #19
  %i.he = fcmp nsz ugt float %i.fg, f0x3727C5AC
  br i1 %i.he, label %bb.ae, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.hf = extractelement <2 x float> %i.k, i64 1
  %i.hg = fsub nsz float %i.hf, %i.ee
  %i.hh = call nsz noundef float @llvm.fabs.f32(float %i.hg)
  %i.hi = fcmp nsz ugt float %i.hh, f0x3727C5AC
  br i1 %i.hi, label %bb.ae, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.hj = fsub nsz float %i.ef, %i.l
  %i.hk = call nsz noundef float @llvm.fabs.f32(float %i.hj)
  %i.hl = fcmp nsz ugt float %i.hk, f0x3727C5AC
  %i.hm = extractelement <2 x float> %i.x, i64 0
  %i.hn = fsub nsz float %i.hm, %i.el
  %i.ho = call nsz float @llvm.fabs.f32(float %i.hn)
  %i.hp = fcmp nsz ugt float %i.ho, f0x3727C5AC
  %or.cond94 = select i1 %i.hl, i1 true, i1 %i.hp
  br i1 %or.cond94, label %bb.ae, label %bb.z

bb.z:                                             ; preds = %bb.y
  %i.hq = extractelement <2 x float> %i.x, i64 1
  %i.hr = fsub nsz float %i.hq, %i.eo
  %i.hs = call nsz noundef float @llvm.fabs.f32(float %i.hr)
  %i.ht = fcmp nsz ugt float %i.hs, f0x3727C5AC
  br i1 %i.ht, label %bb.ae, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.hu = fsub nsz float %i.z, %i.eq
  %i.hv = call nsz noundef float @llvm.fabs.f32(float %i.hu)
  %i.hw = fcmp nsz ugt float %i.hv, f0x3727C5AC
  br i1 %i.hw, label %bb.ae, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  %i.hx = fsub nsz float %i.ax, %i.et
  %i.hy = call nsz noundef float @llvm.fabs.f32(float %i.hx)
  %i.hz = fcmp nsz ugt float %i.hy, f0x3727C5AC
  br i1 %i.hz, label %bb.ae, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.ia = fsub nsz float %i.bc, %i.ex
  %i.ib = call nsz noundef float @llvm.fabs.f32(float %i.ia)
  %i.ic = fcmp nsz ugt float %i.ib, f0x3727C5AC
  br i1 %i.ic, label %bb.ae, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.id = fsub nsz float %i.ab, %i.ez
  %i.ie = call nsz noundef float @llvm.fabs.f32(float %i.id)
  %i.if = fcmp nsz ole float %i.ie, f0x3727C5AC
  %i.ig = zext i1 %i.if to i8
  br label %bb.ae

end_hunk_0
