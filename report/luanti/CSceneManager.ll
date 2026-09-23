Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/luanti/original/CSceneManager?download=true
inline.NumInlined: 1657
inline.NumDeleted: 524
loop-unroll.NumCompletelyUnrolled: 14
loop-unroll.NumUnrolled: 14
begin_hunk_0_@_ZN5scene12SViewFrustum25recalculateBoundingSphereEv:.preheader.preheader
  call void @llvm.lifetime.end.p0(ptr nonnull %6)
  %i.bv = load float, ptr %i.ba, align 4, !tbaa !139
  %i.bw = load float, ptr %i.bd, align 4, !tbaa !140
  %i.bx = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %5)
  store <2 x float> zeroinitializer, ptr %5, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bj, align 8, !tbaa !141
  %i.by = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.j, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %5) ; 0 uses
  %.sroa.0.0.copyload.i191 = load <2 x float>, ptr %5, align 8
  %.sroa.2.0.copyload.i192 = load float, ptr %i.bj, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %5)
  %i.bz = load float, ptr %i.ba, align 4, !tbaa !139
  %i.ca = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 0, i32 2, i32 poison, i32 poison>
  %i.cb = shufflevector <2 x float> %.sroa.0.0.copyload.i183, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.cc = shufflevector <4 x float> %i.ca, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 4, i32 poison>
  %i.cd = shufflevector <2 x float> %.sroa.0.0.copyload.i191, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.ce = shufflevector <4 x float> %i.cc, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.cf = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 0, i32 poison, i32 poison, i32 poison>
  %i.cg = insertelement <4 x float> %i.cf, float %i.bq, i64 1
  %i.ch = insertelement <4 x float> %i.cg, float %i.bv, i64 2
  %i.ci = insertelement <4 x float> %i.ch, float %i.bz, i64 3
  %i.cj = fsub <4 x float> %i.ce, %i.ci           ; 2 uses
  %i.ck = load float, ptr %i.bd, align 4, !tbaa !140
  %i.cl = shufflevector <2 x float> %.sroa.0.0.copyload.i167, <2 x float> %.sroa.0.0.copyload.i175, <4 x i32> <i32 1, i32 3, i32 poison, i32 poison>
  %i.cm = shufflevector <4 x float> %i.cl, <4 x float> %i.cb, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.cn = shufflevector <4 x float> %i.cm, <4 x float> %i.cd, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.co = shufflevector <2 x float> %i.bo, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.cp = insertelement <4 x float> %i.co, float %i.br, i64 1
  %i.cq = insertelement <4 x float> %i.cp, float %i.bw, i64 2
  %i.cr = insertelement <4 x float> %i.cq, float %i.ck, i64 3
  %i.cs = fsub <4 x float> %i.cn, %i.cr           ; 2 uses
  %i.ct = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %4)
  store <2 x float> zeroinitializer, ptr %4, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bk, align 8, !tbaa !141
  %i.cu = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %4) ; 0 uses
  %.sroa.0.0.copyload.i199 = load <2 x float>, ptr %4, align 8
  %.sroa.2.0.copyload.i200 = load float, ptr %i.bk, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %4)
  %i.cv = load float, ptr %i.ba, align 4, !tbaa !139
  %i.cw = load float, ptr %i.bd, align 4, !tbaa !140
  %i.cx = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  store <2 x float> zeroinitializer, ptr %3, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bl, align 8, !tbaa !141
  %i.cy = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.bi, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %3) ; 0 uses
  %.sroa.0.0.copyload.i207 = load <2 x float>, ptr %3, align 8
  %.sroa.2.0.copyload.i208 = load float, ptr %i.bl, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  %i.cz = load float, ptr %i.ba, align 4, !tbaa !139
  %i.da = load float, ptr %i.bd, align 4, !tbaa !140
  %i.db = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store <2 x float> zeroinitializer, ptr %2, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bm, align 8, !tbaa !141
  %i.dc = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.g, ptr noundef nonnull align 4 dereferenceable(12) %2) ; 0 uses
  %.sroa.0.0.copyload.i215 = load <2 x float>, ptr %2, align 8 ; 2 uses
  %.sroa.2.0.copyload.i216 = load float, ptr %i.bm, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.dd = load float, ptr %i.ba, align 4, !tbaa !139
  %i.de = load float, ptr %i.bd, align 4, !tbaa !140
  %i.df = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  %i.dg = fsub float %.sroa.2.0.copyload.i216, %i.df ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1)
  store <2 x float> zeroinitializer, ptr %1, align 8, !tbaa !19
  store float 0.000000e+00, ptr %i.bn, align 8, !tbaa !141
  %i.dh = call noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %i.b, ptr noundef nonnull align 4 dereferenceable(16) %i.c, ptr noundef nonnull align 4 dereferenceable(16) %i.d, ptr noundef nonnull align 4 dereferenceable(12) %1) ; 0 uses
  %.sroa.0.0.copyload.i223 = load <2 x float>, ptr %1, align 8 ; 2 uses
  %.sroa.2.0.copyload.i224 = load float, ptr %i.bn, align 8
  call void @llvm.lifetime.end.p0(ptr nonnull %1)
  %i.di = load float, ptr %i.ba, align 4, !tbaa !139
  %i.dj = load float, ptr %i.bd, align 4, !tbaa !140
  %i.dk = load float, ptr %.sroa.497.0..sroa_idx, align 4, !tbaa !141
  %i.dl = fsub float %.sroa.2.0.copyload.i224, %i.dk ; 2 uses
  %i.dm = fmul <4 x float> %i.cs, %i.cs
  %i.dn = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.cj, <4 x float> %i.cj, <4 x float> %i.dm) ; 3 uses
  %i.do = extractelement <4 x float> %i.dn, i64 0
  %i.dp = call noundef float @llvm.fmuladd.f32(float %i.bf, float %i.bf, float %i.do) ; 2 uses
  %i.dq = extractelement <4 x float> %i.dn, i64 1
  %i.dr = call noundef float @llvm.fmuladd.f32(float %i.bt, float %i.bt, float %i.dq) ; 2 uses
  %i.ds = shufflevector <2 x float> %.sroa.0.0.copyload.i199, <2 x float> %.sroa.0.0.copyload.i207, <4 x i32> <i32 1, i32 3, i32 0, i32 2> ; 2 uses
  %i.dt = insertelement <4 x float> %i.ds, float %.sroa.2.0.copyload.i184, i64 0
  %i.du = insertelement <4 x float> %i.dt, float %.sroa.2.0.copyload.i192, i64 1
  %i.dv = insertelement <4 x float> poison, float %i.bx, i64 0
  %i.dw = insertelement <4 x float> %i.dv, float %i.ct, i64 1
  %i.dx = insertelement <4 x float> %i.dw, float %i.cv, i64 2
  %i.dy = insertelement <4 x float> %i.dx, float %i.cz, i64 3
  %i.dz = fsub <4 x float> %i.du, %i.dy           ; 2 uses
  %i.ea = shufflevector <2 x float> %.sroa.0.0.copyload.i215, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.eb = shufflevector <4 x float> %i.ds, <4 x float> %i.ea, <4 x i32> <i32 0, i32 1, i32 5, i32 poison>
  %i.ec = shufflevector <2 x float> %.sroa.0.0.copyload.i223, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ed = shufflevector <4 x float> %i.eb, <4 x float> %i.ec, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ee = insertelement <4 x float> poison, float %i.cw, i64 0
  %i.ef = insertelement <4 x float> %i.ee, float %i.da, i64 1
  %i.eg = insertelement <4 x float> %i.ef, float %i.de, i64 2
  %i.eh = insertelement <4 x float> %i.eg, float %i.dj, i64 3
  %i.ei = fsub <4 x float> %i.ed, %i.eh           ; 2 uses
  %i.ej = fmul <4 x float> %i.ei, %i.ei           ; 2 uses
  %i.ek = shufflevector <4 x float> %i.dn, <4 x float> %i.ej, <4 x i32> <i32 2, i32 3, i32 4, i32 5>
  %i.el = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dz, <4 x float> %i.dz, <4 x float> %i.ek) ; 3 uses
  %i.em = shufflevector <2 x float> %.sroa.0.0.copyload.i215, <2 x float> %.sroa.0.0.copyload.i223, <4 x i32> <i32 poison, i32 poison, i32 0, i32 2>
  %i.en = insertelement <4 x float> %i.em, float %.sroa.2.0.copyload.i200, i64 0
  %i.eo = insertelement <4 x float> %i.en, float %.sroa.2.0.copyload.i208, i64 1
  %i.ep = insertelement <4 x float> poison, float %i.cx, i64 0
  %i.eq = insertelement <4 x float> %i.ep, float %i.db, i64 1
  %i.er = insertelement <4 x float> %i.eq, float %i.dd, i64 2
  %i.es = insertelement <4 x float> %i.er, float %i.di, i64 3
  %i.et = fsub <4 x float> %i.eo, %i.es           ; 2 uses
  %i.eu = shufflevector <4 x float> %i.el, <4 x float> %i.ej, <4 x i32> <i32 2, i32 3, i32 6, i32 7>
  %i.ev = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.et, <4 x float> %i.et, <4 x float> %i.eu) ; 4 uses
  %i.ew = extractelement <4 x float> %i.ev, i64 2
  %i.ex = call noundef float @llvm.fmuladd.f32(float %i.dg, float %i.dg, float %i.ew) ; 2 uses
  %i.ey = extractelement <4 x float> %i.ev, i64 3
  %i.ez = call noundef float @llvm.fmuladd.f32(float %i.dl, float %i.dl, float %i.ey) ; 2 uses
  %i.fa = fcmp ogt float %i.dp, 0.000000e+00
  %.1 = select i1 %i.fa, float %i.dp, float 0.000000e+00 ; 2 uses
  %i.fb = fcmp ogt float %i.dr, %.1
  %.1.1 = select i1 %i.fb, float %i.dr, float %.1 ; 2 uses
  %i.fc = extractelement <4 x float> %i.el, i64 0 ; 2 uses
  %i.fd = fcmp ogt float %i.fc, %.1.1
  %.1.2 = select i1 %i.fd, float %i.fc, float %.1.1 ; 2 uses
  %i.fe = extractelement <4 x float> %i.el, i64 1 ; 2 uses
  %i.ff = fcmp ogt float %i.fe, %.1.2
  %.1.3 = select i1 %i.ff, float %i.fe, float %.1.2 ; 2 uses
  %i.fg = extractelement <4 x float> %i.ev, i64 0 ; 2 uses
  %i.fh = fcmp ogt float %i.fg, %.1.3
  %.1.4 = select i1 %i.fh, float %i.fg, float %.1.3 ; 2 uses
  %i.fi = extractelement <4 x float> %i.ev, i64 1 ; 2 uses
  %i.fj = fcmp ogt float %i.fi, %.1.4
  %.1.5 = select i1 %i.fj, float %i.fi, float %.1.4 ; 2 uses
  %i.fk = fcmp ogt float %i.ex, %.1.5
  %.1.6 = select i1 %i.fk, float %i.ex, float %.1.5 ; 2 uses
  %i.fl = fcmp ogt float %i.ez, %.1.6
  %.1.7 = select i1 %i.fl, float %i.ez, float %.1.6
  %i.fm = call float @sqrtf(float noundef %.1.7) #33
  %i.fn = getelementptr inbounds nuw i8, ptr %0, i64 260
  store float %i.fm, ptr %i.fn, align 4, !tbaa !143
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZNK4core7plane3dIfE25getIntersectionWithPlanesERKS1_S3_RNS_8vector3dIfEE(ptr noundef nonnull align 4 dereferenceable(16) %0, ptr noundef nonnull align 4 dereferenceable(16) %1, ptr noundef nonnull align 4 dereferenceable(16) %2, ptr noundef nonnull align 4 dereferenceable(12) %3) local_unnamed_addr #15 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 4
  %i.c = load <2 x float>, ptr %0, align 4, !tbaa !19 ; 6 uses
  %i.d = load <2 x float>, ptr %i.a, align 4, !tbaa !19 ; 5 uses
  %i.e = load <2 x float>, ptr %1, align 4, !tbaa !19 ; 6 uses
  %i.f = load <2 x float>, ptr %i.b, align 4, !tbaa !19 ; 5 uses
  %i.g = extractelement <2 x float> %i.e, i64 1   ; 2 uses
  %i.h = extractelement <2 x float> %i.c, i64 1   ; 2 uses
  %i.i = fmul float %i.h, %i.g
  %i.j = extractelement <2 x float> %i.e, i64 0   ; 2 uses
  %i.k = extractelement <2 x float> %i.c, i64 0   ; 2 uses
  %i.l = tail call float @llvm.fmuladd.f32(float %i.k, float %i.j, float %i.i)
  %i.m = extractelement <2 x float> %i.d, i64 1
  %i.n = extractelement <2 x float> %i.f, i64 1
  %i.o = tail call noundef float @llvm.fmuladd.f32(float %i.m, float %i.n, float %i.l) ; 3 uses
  %i.p = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.q = fmul <2 x float> %i.p, %i.p
  %i.r = shufflevector <2 x float> %i.c, <2 x float> %i.e, <2 x i32> <i32 0, i32 2> ; 2 uses
  %i.s = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.r, <2 x float> %i.r, <2 x float> %i.q)
  %i.t = shufflevector <2 x float> %i.d, <2 x float> %i.f, <2 x i32> <i32 1, i32 3> ; 2 uses
  %i.u = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.t, <2 x float> %i.t, <2 x float> %i.s)
  %i.v = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u) ; 3 uses
  %i.w = fneg float %i.o
  %i.x = fmul float %i.o, %i.w
  %i.y = extractelement <2 x float> %i.v, i64 0
  %i.z = extractelement <2 x float> %i.v, i64 1
  %i.aa = tail call float @llvm.fmuladd.f32(float %i.y, float %i.z, float %i.x)
  %i.ab = fpext float %i.aa to double             ; 2 uses
  %i.ac = tail call double @llvm.fabs.f64(double %i.ab)
  %i.ad = fcmp uge double %i.ac, 1.000000e-08
  br i1 %i.ad, label %bb.b, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.b:                                             ; preds = %bb.a
  %i.ae = fneg <2 x float> %i.f
  %i.af = shufflevector <2 x float> %i.d, <2 x float> %i.c, <2 x i32> <i32 1, i32 2>
  %i.ag = fmul <2 x float> %i.af, %i.ae
  %i.ah = shufflevector <2 x float> %i.f, <2 x float> %i.e, <2 x i32> <i32 1, i32 2>
  %i.ai = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.d, <2 x float> %i.ah, <2 x float> %i.ag) ; 3 uses
  %i.aj = fneg float %i.j
  %i.ak = fmul float %i.h, %i.aj
  %i.al = tail call float @llvm.fmuladd.f32(float %i.k, float %i.g, float %i.ak) ; 2 uses
  %i.am = load float, ptr %2, align 4, !tbaa !139 ; 2 uses
  %i.an = getelementptr inbounds nuw i8, ptr %2, i64 4
  %i.ao = load float, ptr %i.an, align 4, !tbaa !140 ; 2 uses
  %i.ap = extractelement <2 x float> %i.ai, i64 1
  %i.aq = fmul float %i.ap, %i.ao
  %i.ar = extractelement <2 x float> %i.ai, i64 0
  %i.as = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ar, float %i.aq)
  %i.at = getelementptr inbounds nuw i8, ptr %2, i64 8
  %i.au = load float, ptr %i.at, align 4, !tbaa !141 ; 2 uses
  %i.av = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.al, float %i.as) ; 2 uses
  %i.aw = fcmp une float %i.av, 0.000000e+00
  br i1 %i.aw, label %bb.c, label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

bb.c:                                             ; preds = %bb.b
  %i.ax = fdiv double 1.000000e+00, %i.ab
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.az = load float, ptr %i.ay, align 4, !tbaa !145
  %i.ba = getelementptr inbounds nuw i8, ptr %1, i64 12
  %i.bb = load float, ptr %i.ba, align 4, !tbaa !145
  %i.bc = getelementptr inbounds nuw i8, ptr %2, i64 12
  %i.bd = load float, ptr %i.bc, align 4, !tbaa !145
  %i.be = insertelement <2 x float> poison, float %i.bb, i64 0
  %i.bf = insertelement <2 x float> %i.be, float %i.az, i64 1 ; 2 uses
  %i.bg = fneg <2 x float> %i.bf
  %i.bh = insertelement <2 x float> poison, float %i.o, i64 0
  %i.bi = shufflevector <2 x float> %i.bh, <2 x float> poison, <2 x i32> zeroinitializer
  %4 = shufflevector <2 x float> %i.bf, <2 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.bj = fmul <2 x float> %i.bi, %4
  %i.bk = tail call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.v, <2 x float> %i.bg, <2 x float> %i.bj)
  %i.bl = fpext <2 x float> %i.bk to <2 x double>
  %i.bm = insertelement <2 x double> poison, double %i.ax, i64 0
  %i.bn = shufflevector <2 x double> %i.bm, <2 x double> poison, <2 x i32> zeroinitializer
  %i.bo = fmul <2 x double> %i.bn, %i.bl
  %i.bp = fptrunc <2 x double> %i.bo to <2 x float> ; 3 uses
  %i.bq = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> <i32 1, i32 1>
  %i.br = fmul <2 x float> %i.c, %i.bq
  %i.bs = shufflevector <2 x float> %i.bp, <2 x float> poison, <2 x i32> zeroinitializer
  %i.bt = fmul <2 x float> %i.e, %i.bs
  %i.bu = fadd <2 x float> %i.bt, %i.br           ; 3 uses
  %i.bv = shufflevector <2 x float> %i.f, <2 x float> %i.d, <2 x i32> <i32 1, i32 3>
  %i.bw = fmul <2 x float> %i.bv, %i.bp           ; 2 uses
  %shift = shufflevector <2 x float> %i.bw, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fadd <2 x float> %i.bw, %shift
  %i.bx = extractelement <2 x float> %foldExtExtBinop, i64 0 ; 2 uses
  %i.by = extractelement <2 x float> %i.bu, i64 1
  %i.bz = fmul float %i.ao, %i.by
  %i.ca = extractelement <2 x float> %i.bu, i64 0
  %i.cb = tail call float @llvm.fmuladd.f32(float %i.am, float %i.ca, float %i.bz)
  %i.cc = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.bx, float %i.cb)
  %i.cd = fadd float %i.bd, %i.cc
  %i.ce = fneg float %i.cd
  %i.cf = fdiv float %i.ce, %i.av                 ; 2 uses
  %i.cg = insertelement <2 x float> poison, float %i.cf, i64 0
  %i.ch = shufflevector <2 x float> %i.cg, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ci = fmul <2 x float> %i.ai, %i.ch
  %i.cj = fmul float %i.al, %i.cf
  %i.ck = fadd <2 x float> %i.bu, %i.ci
  %i.cl = fadd float %i.bx, %i.cj
  store <2 x float> %i.ck, ptr %3, align 4
  %.sroa.4.0..sroa_idx.i5 = getelementptr inbounds nuw i8, ptr %3, i64 8
  store float %i.cl, ptr %.sroa.4.0..sroa_idx.i5, align 4, !tbaa !19
  br label %_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit

_ZNK4core7plane3dIfE24getIntersectionWithPlaneERKS1_RNS_8vector3dIfEES6_.exit: ; preds = %bb.c, %bb.b, %bb.a
  %.0 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ true, %bb.c ]
  ret i1 %.0
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare double @llvm.fabs.f64(double) #21

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(errnomem: write)
declare float @sqrtf(float noundef) local_unnamed_addr #23

declare noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(8), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #24

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE14_M_copy_assignERKS6_(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(33) %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = alloca i64, align 8                      ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.c = load i8, ptr %i.b, align 8, !tbaa !17, !range !106, !noundef !107
  %i.d = trunc nuw i8 %i.c to i1                  ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.f = load i8, ptr %i.e, align 8, !range !106
  %i.g = trunc nuw i8 %i.f to i1                  ; 2 uses
  %or.cond = select i1 %i.d, i1 %i.g, i1 false
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  tail call void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32) %0, ptr noundef nonnull align 8 dereferenceable(32) %1)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.c:                                             ; preds = %bb.a
  br i1 %i.g, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  store ptr %i.h, ptr %0, align 8, !tbaa !130
  %i.i = load ptr, ptr %1, align 8, !tbaa !111    ; 2 uses
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.k = load i64, ptr %i.j, align 8, !tbaa !131  ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #33
  store i64 %i.k, ptr %i.a, align 8, !tbaa !170
  %i.l = icmp ugt i64 %i.k, 15
  br i1 %i.l, label %.noexc.i.i.i, label %._crit_edge.i.i.i.i

.noexc.i.i.i:                                     ; preds = %bb.d
  %i.m = call noundef ptr @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_createERmm(ptr noundef nonnull align 8 dereferenceable(33) %0, ptr noundef nonnull align 8 dereferenceable(8) %i.a, i64 noundef 0) ; 2 uses
  store ptr %i.m, ptr %0, align 8, !tbaa !111
  %i.n = load i64, ptr %i.a, align 8, !tbaa !170
  store i64 %i.n, ptr %i.h, align 8, !tbaa !112
  br label %._crit_edge.i.i.i.i

._crit_edge.i.i.i.i:                              ; preds = %.noexc.i.i.i, %bb.d
  %i.o = phi ptr [ %i.m, %.noexc.i.i.i ], [ %i.h, %bb.d ] ; 2 uses
  switch i64 %i.k, label %bb.f [
    i64 1, label %bb.e
    i64 0, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit
  ]

bb.e:                                             ; preds = %._crit_edge.i.i.i.i
  %i.p = load i8, ptr %i.i, align 1, !tbaa !112
  store i8 %i.p, ptr %i.o, align 1, !tbaa !112
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

bb.f:                                             ; preds = %._crit_edge.i.i.i.i
  call void @llvm.memcpy.p0.p0.i64(ptr align 1 %i.o, ptr align 1 %i.i, i64 %i.k, i1 false)
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit: ; preds = %._crit_edge.i.i.i.i, %bb.e, %bb.f
  %i.q = load i64, ptr %i.a, align 8, !tbaa !170  ; 2 uses
  %i.r = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 %i.q, ptr %i.r, align 8, !tbaa !131
  %i.s = load ptr, ptr %0, align 8, !tbaa !111
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 %i.q
  store i8 0, ptr %i.t, align 1, !tbaa !112
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #33
  store i8 1, ptr %i.b, align 8, !tbaa !17
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.g:                                             ; preds = %bb.c
  store i8 0, ptr %i.b, align 8, !tbaa !17
  br i1 %i.d, label %bb.h, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

bb.h:                                             ; preds = %bb.g
  %i.u = load ptr, ptr %0, align 8, !tbaa !111    ; 2 uses
  %i.v = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.w = icmp eq ptr %i.u, %i.v
  br i1 %i.w, label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i: ; preds = %bb.h
  %i.x = load i64, ptr %i.v, align 8, !tbaa !112
  %i.y = add i64 %i.x, 1
  tail call void @_ZdlPvm(ptr noundef %i.u, i64 noundef %i.y) #32
  br label %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit

_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE8_M_resetEv.exit: ; preds = %bb.h, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i.i.i, %bb.g, %_ZNSt22_Optional_payload_baseINSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEE12_M_constructIJRKS5_EEEvDpOT_.exit, %bb.b
  ret void
}

declare void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE9_M_assignERKS4_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef nonnull align 8 dereferenceable(32)) local_unnamed_addr #5

; Function Attrs: cold noreturn nounwind memory(inaccessiblemem: write)
declare void @llvm.trap() #25

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %0, i64 noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %1, 0
  br i1 %.not, label %bb.f, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !173  ; 5 uses
  %i.c = load ptr, ptr %0, align 8, !tbaa !174    ; 5 uses
  %i.d = ptrtoint ptr %i.b to i64                 ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64                 ; 2 uses
  %i.f = sub i64 %i.d, %i.e                       ; 2 uses
  %i.g = sdiv exact i64 %i.f, 12                  ; 4 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !252
  %i.j = ptrtoint ptr %i.i to i64
  %i.k = sub i64 %i.j, %i.d
  %i.l = sdiv exact i64 %i.k, 12                  ; 2 uses
  %i.m = icmp ult i64 %i.g, 768614336404564651
  tail call void @llvm.assume(i1 %i.m)
  %i.n = sub nuw nsw i64 768614336404564650, %i.g ; 2 uses
  %i.o = icmp ule i64 %i.l, %i.n
  tail call void @llvm.assume(i1 %i.o)
  %.not28 = icmp ult i64 %i.l, %1
  br i1 %.not28, label %bb.c, label %_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit

_ZSt27__uninitialized_default_n_aIPN4core8vector3dIfEEmS2_ET_S4_T0_RSaIT1_E.exit: ; preds = %bb.b
  %i.p = mul nuw nsw i64 %1, 12                   ; 2 uses
  tail call void @llvm.memset.p0.i64(ptr align 4 %i.b, i8 0, i64 %i.p, i1 false), !tbaa !19
  %scevgep.i.i.i = getelementptr i8, ptr %i.b, i64 %i.p
  store ptr %scevgep.i.i.i, ptr %i.a, align 8, !tbaa !173
  br label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.q = icmp ult i64 %i.n, %1
  br i1 %i.q, label %bb.d, label %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.7) #35
  unreachable

_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit: ; preds = %bb.c
  %.sroa.speculated.i = tail call i64 @llvm.umax.i64(i64 %i.g, i64 %1)
  %i.r = add nuw nsw i64 %.sroa.speculated.i, %i.g
  %i.s = tail call i64 @llvm.umin.i64(i64 %i.r, i64 768614336404564650) ; 2 uses
  %i.t = mul nuw nsw i64 %i.s, 12
  %i.u = tail call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.t) #34 ; 4 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 %i.f ; 2 uses
  %i.w = mul nuw nsw i64 %1, 12
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.v, i8 0, i64 %i.w, i1 false), !tbaa !19
  %.not10.i.i.i = icmp eq ptr %i.c, %i.b
  br i1 %.not10.i.i.i, label %_ZNSt6vectorIN4core8vector3dIfEESaIS2_EE11_S_relocateEPS2_S5_S5_RS3_.exit, label %.lr.ph.i.i.i

.lr.ph.i.i.i:                                     ; preds = %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit, %.lr.ph.i.i.i
  %.012.i.i.i = phi ptr [ %i.y, %.lr.ph.i.i.i ], [ %i.u, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  %.0911.i.i.i = phi ptr [ %i.x, %.lr.ph.i.i.i ], [ %i.c, %_ZNKSt6vectorIN4core8vector3dIfEESaIS2_EE12_M_check_lenEmPKc.exit ] ; 2 uses
  tail call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(12) %.012.i.i.i, ptr noundef nonnull align 4 dereferenceable(12) %.0911.i.i.i, i64 12, i1 false), !tbaa.struct !146, !alias.scope !253
  %i.x = getelementptr inbounds nuw i8, ptr %.0911.i.i.i, i64 12 ; 2 uses
end_hunk_0
