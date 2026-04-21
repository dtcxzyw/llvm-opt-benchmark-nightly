inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dq, i64 24
  %i.ec = load float, ptr %i.eb, align 4, !noalias !69 ; 4 uses
  %i.ed = getelementptr inbounds nuw i8, ptr %i.dq, i64 40
  %i.ee = load float, ptr %i.ed, align 4, !noalias !69
  %i.ef = getelementptr inbounds nuw i8, ptr %i.dq, i64 28
  %i.eg = load float, ptr %i.ef, align 4, !noalias !69 ; 4 uses
  %i.eh = load <2 x float>, ptr %i.du, align 4, !noalias !64 ; 5 uses
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.ga = insertelement <2 x float> poison, float %i.ea, i64 0
  %i.gb = shufflevector <2 x float> %i.ga, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gc = fmul <2 x float> %i.fh, %i.gb           ; 4 uses
  %6 = shufflevector <2 x float> %i.ft, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.gd = insertelement <4 x float> %6, float %i.fy, i64 2
  %7 = insertelement <4 x float> %i.gd, float %i.ee, i64 3 ; 2 uses
  %8 = shufflevector <4 x float> %7, <4 x float> <float poison, float poison, float 1.000000e+00, float poison>, <4 x i32> <i32 3, i32 3, i32 6, i32 poison>
  %i.ge = insertelement <4 x float> %8, float %i.fk, i64 3
  %i.gf = fmul <4 x float> %7, %i.ge              ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.cz, i64 64, i1 false)
  %i.gg = load float, ptr %5, align 4             ; 2 uses
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre4Bone34CalculateWorldMatrixAndDefaultPoseEPNS0_8SkeletonE:bb.a
  %i.bf = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.bg = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.bh = load float, ptr %i.bg, align 4
  %4 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %5 = insertelement <4 x float> %4, float %i.al, i64 2
  %6 = insertelement <4 x float> %5, float %i.bh, i64 3
  %i.bi = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.be, i64 0
  %7 = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bj = fmul <4 x float> %6, %7
  store <4 x float> %i.bj, ptr %i.bf, align 16
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.bl = load float, ptr %i.bk, align 4
  %i.bm = getelementptr inbounds nuw i8, ptr %2, i64 32
  %i.bn = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.bo = load float, ptr %i.bn, align 8
  %8 = shufflevector <2 x float> %i.aq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %9 = insertelement <4 x float> %8, float %i.at, i64 2
  %10 = insertelement <4 x float> %9, float %i.bo, i64 3
  %i.bp = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.bl, i64 0
  %11 = shufflevector <4 x float> %i.bp, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bq = fmul <4 x float> %10, %11
  store <4 x float> %i.bq, ptr %i.bm, align 16
  %i.br = getelementptr inbounds nuw i8, ptr %2, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.br, align 16
end_hunk_2
begin_hunk_3_@_ZN6Assimp4Ogre4Bone34CalculateWorldMatrixAndDefaultPoseEPNS0_8SkeletonE:bb.a
  %i.dn = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.do = getelementptr inbounds nuw i8, ptr %0, i64 84
  %i.dp = load float, ptr %i.do, align 4
  %12 = shufflevector <2 x float> %i.cq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %13 = insertelement <4 x float> %12, float %i.ct, i64 2
  %14 = insertelement <4 x float> %13, float %i.dp, i64 3
  %i.dq = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dm, i64 0
  %15 = shufflevector <4 x float> %i.dq, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dr = fmul <4 x float> %14, %15
  store <4 x float> %i.dr, ptr %i.dn, align 16
  %i.ds = getelementptr inbounds nuw i8, ptr %0, i64 116
  %i.dt = load float, ptr %i.ds, align 4
  %i.du = getelementptr inbounds nuw i8, ptr %3, i64 32
  %i.dv = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.dw = load float, ptr %i.dv, align 8
  %16 = shufflevector <2 x float> %i.cy, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %17 = insertelement <4 x float> %16, float %i.db, i64 2
  %18 = insertelement <4 x float> %17, float %i.dw, i64 3
  %i.dx = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.dt, i64 0
  %19 = shufflevector <4 x float> %i.dx, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.dy = fmul <4 x float> %18, %19
  store <4 x float> %i.dy, ptr %i.du, align 16
  %i.dz = getelementptr inbounds nuw i8, ptr %3, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.dz, align 16
end_hunk_3
begin_hunk_4_@_ZN6Assimp4Ogre4Bone34CalculateWorldMatrixAndDefaultPoseEPNS0_8SkeletonE:bb.a
  store <4 x float> %i.ij, ptr %i.ib, align 8
  %.sroa.7.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 200
  %i.ik = load float, ptr %i.hx, align 4
  %20 = shufflevector <2 x float> %i.hi, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %21 = insertelement <4 x float> %20, float %i.hl, i64 2
  %22 = insertelement <4 x float> %21, float %i.ik, i64 3
  %i.il = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hw, i64 0
  %23 = shufflevector <4 x float> %i.il, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.im = fmul <4 x float> %22, %23
  store <4 x float> %i.im, ptr %.sroa.7.0..sroa_idx, align 8
  %.sroa.11.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 216
  %i.in = load float, ptr %i.ia, align 8
  %24 = shufflevector <2 x float> %i.hq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %25 = insertelement <4 x float> %24, float %i.ht, i64 2
  %26 = insertelement <4 x float> %25, float %i.in, i64 3
  %i.io = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.hz, i64 0
  %27 = shufflevector <4 x float> %i.io, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.ip = fmul <4 x float> %26, %27
  store <4 x float> %i.ip, ptr %.sroa.11.0..sroa_idx, align 8
  %.sroa.15.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 232
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %.sroa.15.0..sroa_idx, align 8
end_hunk_4
begin_hunk_5_@_ZN6Assimp4Ogre17TransformKeyFrame9TransformEv:bb.a
  %i.ay = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.az = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.ba = load float, ptr %i.az, align 4
  %2 = shufflevector <2 x float> %i.ab, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %3 = insertelement <4 x float> %2, float %i.ae, i64 2
  %4 = insertelement <4 x float> %3, float %i.ba, i64 3
  %i.bb = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.ax, i64 0
  %5 = shufflevector <4 x float> %i.bb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bc = fmul <4 x float> %4, %5
  store <4 x float> %i.bc, ptr %i.ay, align 4
  %i.bd = getelementptr inbounds nuw i8, ptr %1, i64 40
  %i.be = load float, ptr %i.bd, align 4
  %i.bf = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.bg = getelementptr inbounds nuw i8, ptr %1, i64 28
  %i.bh = load float, ptr %i.bg, align 4
  %6 = shufflevector <2 x float> %i.aj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %7 = insertelement <4 x float> %6, float %i.am, i64 2
  %8 = insertelement <4 x float> %7, float %i.bh, i64 3
  %i.bi = insertelement <4 x float> <float poison, float 1.000000e+00, float poison, float poison>, float %i.be, i64 0
  %9 = shufflevector <4 x float> %i.bi, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1>
  %i.bj = fmul <4 x float> %8, %9
  store <4 x float> %i.bj, ptr %i.bf, align 4
  %i.bk = getelementptr inbounds nuw i8, ptr %0, i64 48
  store <4 x float> <float 0.000000e+00, float 0.000000e+00, float 0.000000e+00, float 1.000000e+00>, ptr %i.bk, align 4
end_hunk_5
