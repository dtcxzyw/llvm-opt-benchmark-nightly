inline.NumInlined: 432
inline.NumDeleted: 156
begin_hunk_0_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
bb.b:                                             ; preds = %bb.a
  %i.ab = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.d, i64 72
  %i.ad = select i1 %i.c, ptr %1, ptr %2          ; 7 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ad, i64 8 ; 2 uses
  %i.af = getelementptr inbounds nuw i8, ptr %i.ad, i64 24 ; 2 uses
  %i.ag = getelementptr inbounds nuw i8, ptr %i.ad, i64 40 ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ad, i64 56
  %i.ai = load float, ptr %i.ah, align 4, !tbaa !139, !noalias !167
  %i.aj = fneg float %i.ai
  %i.ak = getelementptr inbounds nuw i8, ptr %i.ad, i64 60
  %i.al = load float, ptr %i.ak, align 4, !tbaa !139, !noalias !167
  %i.am = fneg float %i.al
  %i.an = getelementptr inbounds nuw i8, ptr %i.ad, i64 64
  %i.ao = load float, ptr %i.an, align 4, !tbaa !139, !noalias !167
  %i.ap = fneg float %i.ao
  %i.aq = load float, ptr %i.ab, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.ar = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.as = load float, ptr %i.ar, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.d, i64 40
  %i.au = load float, ptr %i.at, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.d, i64 12
  %i.aw = load float, ptr %i.av, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.ax = getelementptr inbounds nuw i8, ptr %i.d, i64 28
  %i.ay = load float, ptr %i.ax, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.az = getelementptr inbounds nuw i8, ptr %i.d, i64 44
  %i.ba = load float, ptr %i.az, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.bb = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.bc = load float, ptr %i.bb, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.bd = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  %i.be = load float, ptr %i.bd, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.bf = getelementptr inbounds nuw i8, ptr %i.d, i64 48
  %i.bg = load float, ptr %i.bf, align 4, !tbaa !139, !noalias !170 ; 3 uses
  %i.bh = load float, ptr %i.ac, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bi = getelementptr inbounds nuw i8, ptr %i.d, i64 88
  %i.bj = load float, ptr %i.bi, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bk = getelementptr inbounds nuw i8, ptr %i.d, i64 104
  %i.bl = load float, ptr %i.bk, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bm = getelementptr inbounds nuw i8, ptr %i.d, i64 76
  %i.bn = load float, ptr %i.bm, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bo = getelementptr inbounds nuw i8, ptr %i.d, i64 92
  %i.bp = load float, ptr %i.bo, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bq = getelementptr inbounds nuw i8, ptr %i.d, i64 108
  %i.br = load float, ptr %i.bq, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bs = getelementptr inbounds nuw i8, ptr %i.d, i64 80
  %i.bt = load float, ptr %i.bs, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bu = getelementptr inbounds nuw i8, ptr %i.d, i64 96
  %i.bv = load float, ptr %i.bu, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bw = getelementptr inbounds nuw i8, ptr %i.d, i64 112
  %8 = load float, ptr %i.bw, align 4, !tbaa !139, !noalias !175 ; 3 uses
  %i.bx = load float, ptr %i.ae, align 4, !tbaa !139, !noalias !180 ; 6 uses
  %9 = load <3 x float>, ptr %i.ae, align 4, !tbaa !139, !noalias !180 ; 3 uses
  %10 = shufflevector <3 x float> %9, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %11 = load float, ptr %i.af, align 4, !tbaa !139, !noalias !180 ; 6 uses
  %12 = load <3 x float>, ptr %i.af, align 4, !tbaa !139, !noalias !180 ; 3 uses
  %13 = shufflevector <3 x float> %12, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %14 = load float, ptr %i.ag, align 4, !tbaa !139, !noalias !180 ; 6 uses
  %15 = load <3 x float>, ptr %i.ag, align 4, !tbaa !139, !noalias !180 ; 3 uses
  %16 = shufflevector <3 x float> %15, <3 x float> poison, <4 x i32> <i32 1, i32 2, i32 0, i32 2> ; 3 uses
  %i.by = fmul float %11, %i.as
  %i.bz = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.bx, float %i.by)
  %i.ca = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %14, float %i.bz)
  %17 = fmul float %11, %i.ay
  %18 = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.bx, float %17)
  %19 = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %14, float %18)
  %20 = fmul float %11, %i.be
  %21 = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.bx, float %20)
  %22 = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %14, float %21)
  %i.cb = extractelement <3 x float> %12, i64 1   ; 6 uses
  %i.cc = fmul float %i.cb, %i.as
  %i.cd = extractelement <3 x float> %9, i64 1    ; 6 uses
  %i.ce = tail call float @llvm.fmuladd.f32(float %i.aq, float %i.cd, float %i.cc)
  %i.cf = extractelement <3 x float> %15, i64 1   ; 6 uses
  %i.cg = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %i.cf, float %i.ce)
  %i.ch = fmul float %i.cb, %i.ay
  %i.ci = tail call float @llvm.fmuladd.f32(float %i.aw, float %i.cd, float %i.ch)
end_hunk_0
begin_hunk_1_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.ck = fmul float %i.cb, %i.be
  %i.cl = tail call float @llvm.fmuladd.f32(float %i.bc, float %i.cd, float %i.ck)
  %i.cm = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %i.cf, float %i.cl)
  %23 = extractelement <3 x float> %12, i64 2     ; 6 uses
  %24 = fmul float %23, %i.as
  %25 = extractelement <3 x float> %9, i64 2      ; 6 uses
  %26 = tail call float @llvm.fmuladd.f32(float %i.aq, float %25, float %24)
  %27 = extractelement <3 x float> %15, i64 2     ; 6 uses
  %i.cn = tail call noundef float @llvm.fmuladd.f32(float %i.au, float %27, float %26)
  %i.co = fmul float %23, %i.ay
  %i.cp = tail call float @llvm.fmuladd.f32(float %i.aw, float %25, float %i.co)
  %i.cq = tail call noundef float @llvm.fmuladd.f32(float %i.ba, float %27, float %i.cp)
  %28 = fmul float %23, %i.be
  %29 = tail call float @llvm.fmuladd.f32(float %i.bc, float %25, float %28)
  %30 = tail call noundef float @llvm.fmuladd.f32(float %i.bg, float %27, float %29)
  %i.cr = shufflevector <2 x float> %i.k, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %i.cs = insertelement <2 x float> %i.cr, float %i.am, i64 1 ; 3 uses
  %i.ct = shufflevector <2 x float> %i.cs, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.cu = fmul <4 x float> %13, %i.ct
  %i.cv = load <2 x float>, ptr %i.h, align 4, !tbaa !139, !noalias !183 ; 3 uses
  %i.cw = shufflevector <2 x float> %i.cv, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.cx = shufflevector <2 x float> %i.cv, <2 x float> %i.cs, <4 x i32> <i32 0, i32 3, i32 0, i32 2>
  %i.cy = fmul <4 x float> %13, %i.cx
  %i.cz = shufflevector <2 x float> %i.cs, <2 x float> %i.cv, <4 x i32> <i32 1, i32 1, i32 1, i32 2>
  %i.da = fmul <4 x float> %13, %i.cz
  %i.db = insertelement <2 x float> %i.k, float %i.aj, i64 1 ; 2 uses
  %i.dc = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dd = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.dc, <4 x float> %i.cu)
  %i.de = shufflevector <2 x float> %i.db, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 0>
  %i.df = insertelement <4 x float> poison, float %i.g, i64 0
  %i.dg = shufflevector <4 x float> %i.df, <4 x float> poison, <4 x i32> <i32 0, i32 poison, i32 0, i32 poison>
  %i.dh = shufflevector <4 x float> %i.dg, <4 x float> %i.de, <4 x i32> <i32 0, i32 5, i32 2, i32 7> ; 2 uses
  %i.di = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.dh, <4 x float> %i.cy)
  %i.dj = shufflevector <4 x float> %i.dh, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.dk = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.dj, <4 x float> %i.da)
  %i.dl = insertelement <4 x float> poison, float %i.s, i64 0
  %i.dm = insertelement <4 x float> %i.dl, float %i.ap, i64 1 ; 2 uses
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %i.dn, <4 x float> %i.dd)
  %i.dp = shufflevector <4 x float> %i.cw, <4 x float> %i.dm, <4 x i32> <i32 1, i32 5, i32 1, i32 4> ; 2 uses
  %i.dq = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %i.dp, <4 x float> %i.di)
  %i.dr = shufflevector <4 x float> %i.dp, <4 x float> poison, <4 x i32> <i32 1, i32 1, i32 1, i32 0>
  %i.ds = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %16, <4 x float> %i.dr, <4 x float> %i.dk) ; 2 uses
  %i.dt = fadd <4 x float> %i.do, %i.ds           ; 8 uses
  %i.du = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 2, i32 0> ; 2 uses
  %i.dv = shufflevector <4 x float> %i.ds, <4 x float> poison, <4 x i32> <i32 0, i32 3, i32 2, i32 1>
  %i.dw = fadd <4 x float> %i.dv, %i.dq           ; 4 uses
  %i.dx = shufflevector <4 x float> %i.dt, <4 x float> poison, <2 x i32> <i32 3, i32 poison>
  %i.dy = shufflevector <4 x float> <float poison, float 0.000000e+00, float poison, float poison>, <4 x float> %i.dt, <2 x i32> <i32 5, i32 1> ; 3 uses
  %31 = fmul float %11, %i.bj
  %32 = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.bx, float %31)
  %33 = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %14, float %32)
  %34 = fmul float %11, %i.bp
  %35 = tail call float @llvm.fmuladd.f32(float %i.bn, float %i.bx, float %34)
  %36 = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %14, float %35)
  %37 = fmul float %11, %i.bv
  %38 = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.bx, float %37)
  %39 = tail call noundef float @llvm.fmuladd.f32(float %8, float %14, float %38)
  %i.dz = fmul float %i.cb, %i.bj
  %i.ea = tail call float @llvm.fmuladd.f32(float %i.bh, float %i.cd, float %i.dz)
  %i.eb = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %i.cf, float %i.ea)
end_hunk_1
begin_hunk_2_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %i.ee = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %i.cf, float %i.ed)
  %i.ef = fmul float %i.cb, %i.bv
  %i.eg = tail call float @llvm.fmuladd.f32(float %i.bt, float %i.cd, float %i.ef)
  %i.eh = tail call noundef float @llvm.fmuladd.f32(float %8, float %i.cf, float %i.eg)
  %i.ei = fmul float %23, %i.bj
  %i.ej = tail call float @llvm.fmuladd.f32(float %i.bh, float %25, float %i.ei)
  %i.ek = tail call noundef float @llvm.fmuladd.f32(float %i.bl, float %27, float %i.ej)
  %i.el = fmul float %23, %i.bp
  %i.em = tail call float @llvm.fmuladd.f32(float %i.bn, float %25, float %i.el)
  %i.en = tail call noundef float @llvm.fmuladd.f32(float %i.br, float %27, float %i.em)
  %i.eo = fmul float %23, %i.bv
  %i.ep = tail call float @llvm.fmuladd.f32(float %i.bt, float %25, float %i.eo)
  %i.eq = tail call noundef float @llvm.fmuladd.f32(float %8, float %27, float %i.ep)
  %i.er = shufflevector <4 x float> %i.dw, <4 x float> poison, <2 x i32> <i32 2, i32 0>
  %i.es = insertelement <2 x float> %i.dx, float 0.000000e+00, i64 1
  %i.et = getelementptr inbounds nuw i8, ptr %i.ad, i64 200
end_hunk_2
begin_hunk_3_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #14
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback, i64 16), ptr %7, align 8, !tbaa !8
  %i.gc = getelementptr inbounds nuw i8, ptr %7, i64 8
  store float %i.ca, ptr %i.gc, align 8
  %.sroa.563.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 12
  store float %19, ptr %.sroa.563.0..sroa_idx, align 4
  %.sroa.664.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 16
  store float %22, ptr %.sroa.664.0..sroa_idx, align 8
  %.sroa.765.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 20
  store float 0.000000e+00, ptr %.sroa.765.0..sroa_idx, align 4, !tbaa !164
  %i.gd = getelementptr inbounds nuw i8, ptr %7, i64 24
  store float %i.cg, ptr %i.gd, align 8
  %.sroa.1067.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 28
  store float %i.cj, ptr %.sroa.1067.16..sroa_idx, align 4
  %.sroa.1168.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 32
  store float %i.cm, ptr %.sroa.1168.16..sroa_idx, align 8
  %.sroa.1269.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 36
  store float 0.000000e+00, ptr %.sroa.1269.16..sroa_idx, align 4, !tbaa !164
  %i.ge = getelementptr inbounds nuw i8, ptr %7, i64 40
  store float %i.cn, ptr %i.ge, align 8
  %.sroa.1571.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 44
  store float %i.cq, ptr %.sroa.1571.32..sroa_idx, align 4
  %.sroa.1672.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 48
  store float %30, ptr %.sroa.1672.32..sroa_idx, align 8
  %.sroa.1773.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 52
  store float 0.000000e+00, ptr %.sroa.1773.32..sroa_idx, align 4, !tbaa !164
  %i.gf = getelementptr inbounds nuw i8, ptr %7, i64 56
end_hunk_3
begin_hunk_4_@_ZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResult:bb.a
  %.sroa.22.48..sroa_idx79 = getelementptr inbounds nuw i8, ptr %7, i64 64
  store <2 x float> %i.dy, ptr %.sroa.22.48..sroa_idx79, align 8, !tbaa !164
  %i.gg = getelementptr inbounds nuw i8, ptr %7, i64 72
  store float %33, ptr %i.gg, align 8
  %.sroa.5.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 76
  store float %36, ptr %.sroa.5.0..sroa_idx, align 4
  %.sroa.652.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 80
  store float %39, ptr %.sroa.652.0..sroa_idx, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 84
  store float 0.000000e+00, ptr %.sroa.7.0..sroa_idx, align 4, !tbaa !164
  %i.gh = getelementptr inbounds nuw i8, ptr %7, i64 88
  store float %i.eb, ptr %i.gh, align 8
  %.sroa.10.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 92
  store float %i.ee, ptr %.sroa.10.16..sroa_idx, align 4
  %.sroa.11.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 96
  store float %i.eh, ptr %.sroa.11.16..sroa_idx, align 8
  %.sroa.12.16..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 100
  store float 0.000000e+00, ptr %.sroa.12.16..sroa_idx, align 4, !tbaa !164
  %i.gi = getelementptr inbounds nuw i8, ptr %7, i64 104
  store float %i.ek, ptr %i.gi, align 8
  %.sroa.15.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 108
  store float %i.en, ptr %.sroa.15.32..sroa_idx, align 4
  %.sroa.16.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 112
  store float %i.eq, ptr %.sroa.16.32..sroa_idx, align 8
  %.sroa.17.32..sroa_idx = getelementptr inbounds nuw i8, ptr %7, i64 116
  store float 0.000000e+00, ptr %.sroa.17.32..sroa_idx, align 4, !tbaa !164
  %i.gj = getelementptr inbounds nuw i8, ptr %7, i64 120
end_hunk_4
begin_hunk_5_@llvm.fmuladd.v4f32
!164 = !{!6, !6, i64 0}
!165 = !{!145, !5, i64 8}
!166 = !{!56, !23, i64 268}
!167 = !{!168}
!168 = distinct !{!168, !169, !"_ZNK11btTransform7inverseEv: argument 0"}
!169 = distinct !{!169, !"_ZNK11btTransform7inverseEv"}
!170 = !{!171, !173}
!171 = distinct !{!171, !172, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!172 = distinct !{!172, !"_ZmlRK11btMatrix3x3S1_"}
!173 = distinct !{!173, !174, !"_ZNK11btTransformmlERKS_: argument 0"}
!174 = distinct !{!174, !"_ZNK11btTransformmlERKS_"}
!175 = !{!176, !178}
!176 = distinct !{!176, !177, !"_ZmlRK11btMatrix3x3S1_: argument 0"}
!177 = distinct !{!177, !"_ZmlRK11btMatrix3x3S1_"}
!178 = distinct !{!178, !179, !"_ZNK11btTransformmlERKS_: argument 0"}
!179 = distinct !{!179, !"_ZNK11btTransformmlERKS_"}
!180 = !{!181, !168}
!181 = distinct !{!181, !182, !"_ZNK11btMatrix3x39transposeEv: argument 0"}
!182 = distinct !{!182, !"_ZNK11btMatrix3x39transposeEv"}
!183 = !{!178}
!184 = !{!56, !23, i64 264}
!185 = !{!186, !23, i64 200}
!186 = !{!"_ZTSZN35btSoftBodyConcaveCollisionAlgorithm21calculateTimeOfImpactEP17btCollisionObjectS1_RK16btDispatcherInfoP16btManifoldResultE31LocalTriangleSphereCastCallback", !17, i64 0, !57, i64 8, !57, i64 72, !57, i64 136, !23, i64 200, !23, i64 204}
end_hunk_5
