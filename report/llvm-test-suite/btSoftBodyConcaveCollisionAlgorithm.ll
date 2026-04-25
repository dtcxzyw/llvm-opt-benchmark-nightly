inline.NumInlined: 432
inline.NumDeleted: 156
begin_hunk_0_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 13 uses
  %8 = getelementptr inbounds nuw i8, ptr %i.ad, i64 8
  %9 = getelementptr inbounds nuw i8, ptr %i.ad, i64 24
  %10 = getelementptr inbounds nuw i8, ptr %i.ad, i64 40
  %11 = getelementptr inbounds nuw i8, ptr %i.ad, i64 12
  %12 = getelementptr inbounds nuw i8, ptr %i.ad, i64 28
  %13 = getelementptr inbounds nuw i8, ptr %i.ad, i64 44
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 32
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 48
  %14 = load float, ptr %i.ae, align 4, !tbaa !139, !noalias !167 ; 7 uses
  %15 = load float, ptr %i.af, align 4, !tbaa !139, !noalias !167 ; 7 uses
  %16 = load float, ptr %i.ag, align 4, !tbaa !139, !noalias !167 ; 7 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !139, !noalias !172
  %i.aj = fneg float %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.al = load float, ptr %i.ak, align 4, !tbaa !139, !noalias !172
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ao = load float, ptr %i.an, align 4, !tbaa !139, !noalias !172
  %i.ap = fneg float %i.ao
  %i.aq = load float, ptr %i.ab, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.as = load float, ptr %i.ar, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ba = load float, ptr %i.az, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.be = load float, ptr %i.bd, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !139, !noalias !173 ; 3 uses
  %17 = fmul float %15, %i.as
  %18 = tail call float @llvm.fmuladd.f32(float %i.aq, float %14, float %17)
  %19 = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %16, float %18)
  %20 = fmul float %15, %i.ay
  %21 = tail call float @llvm.fmuladd.f32(float %i.aw, float %14, float %20)
  %22 = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %16, float %21)
  %23 = fmul float %15, %i.be
  %24 = tail call float @llvm.fmuladd.f32(float %i.bc, float %14, float %23)
  %25 = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %16, float %24)
  %i.bh = load float, ptr %i.ac, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.br = load float, ptr %i.bq, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %i.bx = load float, ptr %i.bw, align 4, !tbaa !139, !noalias !178 ; 3 uses
  %26 = fmul float %15, %i.bj
  %27 = tail call float @llvm.fmuladd.f32(float %i.bh, float %14, float %26)
  %28 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %16, float %27)
  %29 = fmul float %15, %i.bp
  %30 = tail call float @llvm.fmuladd.f32(float %i.bn, float %14, float %29)
  %31 = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %16, float %30)
  %i.by = fmul float %15, %i.bv
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.bt, float %14, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %16, float %i.bz)
  %32 = load <2 x float>, ptr %8, align 4, !tbaa !139, !noalias !167 ; 2 uses
  %33 = load float, ptr %11, align 4, !tbaa !139, !noalias !167 ; 6 uses
  %34 = load <2 x float>, ptr %9, align 4, !tbaa !139, !noalias !167 ; 2 uses
  %35 = load float, ptr %12, align 4, !tbaa !139, !noalias !167 ; 6 uses
  %36 = load <2 x float>, ptr %10, align 4, !tbaa !139, !noalias !167 ; 2 uses
  %37 = load float, ptr %13, align 4, !tbaa !139, !noalias !167 ; 6 uses
  %i.cb = extractelement <2 x float> %34, i64 0   ; 6 uses
  %i.cc = fmul float %i.cb, %i.as
  %i.cd = extractelement <2 x float> %32, i64 0   ; 6 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.cd, float %i.cc)
  %i.cf = extractelement <2 x float> %36, i64 0   ; 6 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.cf, float %i.ce)
  %i.ch = fmul float %i.cb, %i.ay
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.cd, float %i.ch)
end_hunk_0
begin_hunk_1_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.ck = fmul float %i.cb, %i.be
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.cd, float %i.ck)
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.cf, float %i.cl)
  %38 = fmul float %35, %i.as
  %39 = tail call float @llvm.fmuladd.f32(float %i.aq, float %33, float %38)
  %40 = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %37, float %39)
  %41 = fmul float %35, %i.ay
  %42 = tail call float @llvm.fmuladd.f32(float %i.aw, float %33, float %41)
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %37, float %42)
  %i.co = fmul float %35, %i.be
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.bc, float %33, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %37, float %i.cp)
  %43 = shufflevector <2 x float> %34, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %44 = insertelement <4 x float> poison, float %15, i64 0
  %45 = shufflevector <4 x float> %44, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %46 = shufflevector <4 x float> %43, <4 x float> %45, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.cr = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.am, i64 1 ; 3 uses
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cu = fmul <4 x float> %46, %i.ct
  %i.cv = load <2 x float>, ptr %i.h, align 4, !tbaa !139, !noalias !183 ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> %i.cs, <4 x i32> <i32 0, i32 3, i32 0, i32 2>
  %i.cy = fmul <4 x float> %46, %i.cx
  %i.cz = shufflevector <2 x float> %i.cs, <2 x float> %i.cv, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.da = fmul <4 x float> %46, %i.cz
  %47 = shufflevector <2 x float> %32, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %48 = insertelement <4 x float> poison, float %14, i64 0
  %49 = shufflevector <4 x float> %48, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %50 = shufflevector <4 x float> %47, <4 x float> %49, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.db = insertelement <2 x float> %i.k, float %i.aj, i64 1 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %i.dc, <4 x float> %i.cu)
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %i.df = insertelement <4 x float> poison, float %i.g, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.de, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %i.dh, <4 x float> %i.cy)
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %50, <4 x float> %i.dj, <4 x float> %i.da)
  %51 = shufflevector <2 x float> %36, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 0, i32 poison>
  %52 = insertelement <4 x float> poison, float %16, i64 0
  %53 = shufflevector <4 x float> %52, <4 x float> poison, <4 x i32> <i32 poison, i32 0, i32 poison, i32 0>
  %54 = shufflevector <4 x float> %51, <4 x float> %53, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 3 uses
  %i.dl = insertelement <4 x float> poison, float %i.s, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.ap, i64 1 ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %i.dn, <4 x float> %i.dd)
  %i.dp = shufflevector <4 x float> %i.cw, <4 x float> %i.dm, <4 x i32> <i32 1, i32 5, i32 1, i32 4> ; 2 uses
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %i.dp, <4 x float> %i.di)
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %54, <4 x float> %i.dr, <4 x float> %i.dk) ; 2 uses
  %i.dt = fadd <4 x float> %i.do, %i.ds           ; 8 uses
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.dw = fadd <4 x float> %i.dv, %i.dq           ; 4 uses
  %i.dx = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dy = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.dt, <2 x i32> <i32 5, i32 1> ; 3 uses
  %i.dz = fmul float %i.cb, %i.bj
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cd, float %i.dz)
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.cf, float %i.ea)
end_hunk_1
begin_hunk_2_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.cf, float %i.ed)
  %i.ef = fmul float %i.cb, %i.bv
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.cd, float %i.ef)
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %i.cf, float %i.eg)
  %i.ei = fmul float %35, %i.bj
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.bh, float %33, float %i.ei)
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %37, float %i.ej)
  %i.el = fmul float %35, %i.bp
  %i.em = tail call float @llvm.fmuladd.f32(float %i.bn, float %33, float %i.el)
  %i.en = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %37, float %i.em)
  %i.eo = fmul float %35, %i.bv
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.bt, float %33, float %i.eo)
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %i.bx, float %37, float %i.ep)
  %i.er = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.es = insertelement <2 x float> %i.dx, float 0.000000e+00, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
end_hunk_2
begin_hunk_3_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.cg, ptr %i.gc, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %i.cj, ptr %.sroa.563.0..sroa_idx, align 4
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %i.cm, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !164
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %40, ptr %i.gd, align 8
  %.sroa.1067.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %i.cn, ptr %.sroa.1067.16..sroa_idx, align 4
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.cq, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !164
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %19, ptr %i.ge, align 8
  %.sroa.1571.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %22, ptr %.sroa.1571.32..sroa_idx, align 4
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %25, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !164
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 56
end_hunk_3
begin_hunk_4_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %i.dy, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !164
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 72
  store float %i.eb, ptr %i.gg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 76
  store float %i.ee, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store float %i.eh, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !164
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 88
  store float %i.ek, ptr %i.gh, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 92
  store float %i.en, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.eq, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !164
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 104
  store float %28, ptr %i.gi, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 108
  store float %31, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  store float %i.ca, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !164
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 120
end_hunk_4
begin_hunk_5_@llvm.fmuladd.v4f32
!164 = !{!6, !6, i64 0}
!165 = !{!145, !5, i64 8}
!166 = !{!56, !23, i64 268}
!167 = !{!168, !170}
!168 = distinct !{!168, !169, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!169 = distinct !{!169, !"_ZNK11btMatrix3x39transposeEv"}
!170 = distinct !{!170, !171, !"_ZNK11btTransform7inverseEv: argument 0"}
!171 = distinct !{!171, !"_ZNK11btTransform7inverseEv"}
!172 = !{!170}
!173 = !{!174, !176}
!174 = distinct !{!174, !175, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!175 = distinct !{!175, !"_ZmlRK11btMatrix3x3S1_"}
!176 = distinct !{!176, !177, !"_ZNK11btTransformmlERKS_: argument 0"}
!177 = distinct !{!177, !"_ZNK11btTransformmlERKS_"}
!178 = !{!179, !181}
!179 = distinct !{!179, !180, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!180 = distinct !{!180, !"_ZmlRK11btMatrix3x3S1_"}
!181 = distinct !{!181, !182, !"_ZNK11btTransformmlERKS_: argument 0"}
!182 = distinct !{!182, !"_ZNK11btTransformmlERKS_"}
!183 = !{!181}
!184 = !{!56, !23, i64 264}
!185 = !{!186, !23, i64 200}
!186 = !{!"_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !17, i64 0, !57, i64 8, !57, i64 72, !57, i64 136, !23, i64 200, !23, i64 204}
end_hunk_5
