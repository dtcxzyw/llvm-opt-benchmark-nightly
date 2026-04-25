inline.NumInlined: 1117
inline.NumDeleted: 529
begin_hunk_0_@_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE:bb.a
  store float 1.000000e+00, ptr %.sroa.44.0..sroa_idx, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #25
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %6, ptr noundef nonnull align 4 dereferenceable(64) %4, i64 64, i1 false)
  %i.do = load float, ptr %6, align 4             ; 2 uses
  %i.dp = load float, ptr %i.u, align 4           ; 3 uses
  %i.dq = fmul float %i.di, %i.dp
  %i.dr = fmul float %i.dj, %i.dp
end_hunk_0
begin_hunk_1_@_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE:bb.a
  %i.he = insertelement <2 x float> poison, float %i.dp, i64 0
  %i.hf = shufflevector <2 x float> %i.he, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hg = fmul <2 x float> %i.fh, %i.hf
  %i.hh = insertelement <2 x float> poison, float %i.do, i64 0 ; 2 uses
  %i.hi = shufflevector <2 x float> %i.hh, <2 x float> poison, <2 x i32> zeroinitializer
  %i.hj = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fv, <2 x float> %i.hi, <2 x float> %i.hg)
  %i.hk = extractelement <4 x float> %i.gu, i64 1
  %i.hl = call float @llvm.fmuladd.f32(float %i.gc, float %i.ds, float %i.du)
  %i.hm = load <2 x float>, ptr %i.z, align 4     ; 3 uses
  %i.hn = load float, ptr %i.aa, align 4          ; 2 uses
  %i.ho = insertelement <4 x float> poison, float %i.df, i64 2
  %i.hp = insertelement <4 x float> %i.ho, float %i.gh, i64 3
  %i.hq = shufflevector <2 x float> %i.gn, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %i.hr = shufflevector <4 x float> %i.hq, <4 x float> %i.hp, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %8 = shufflevector <2 x float> %i.gy, <2 x float> %i.hh, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %9 = shufflevector <2 x float> %i.hm, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison> ; 2 uses
  %10 = shufflevector <4 x float> %8, <4 x float> %9, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.hs = insertelement <4 x float> poison, float %i.dr, i64 2
  %i.ht = insertelement <4 x float> %i.hs, float %i.hl, i64 3
  %i.hu = shufflevector <2 x float> %i.hj, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_1
begin_hunk_2_@_ZN6Assimp12MS3DImporter18CollectChildJointsERKSt6vectorINS0_9TempJointESaIS2_EERS1_IbSaIbEEP6aiNodeRK12aiMatrix4x4tIfE:bb.a
  %i.ix = shufflevector <4 x float> %i.iw, <4 x float> %i.iv, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.ip, <4 x float> %i.it, <4 x float> %i.ix)
  %i.iz = shufflevector <4 x float> %i.hy, <4 x float> %i.is, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ja = shufflevector <4 x float> %9, <4 x float> %i.gu, <4 x i32> <i32 poison, i32 poison, i32 0, i32 6>
  %i.jb = insertelement <4 x float> poison, float %i.hn, i64 0
  %i.jc = shufflevector <4 x float> %i.jb, <4 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.jd = shufflevector <4 x float> %i.jc, <4 x float> %i.ja, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
end_hunk_2
begin_hunk_3_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 11 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 8 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_3
begin_hunk_4_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 3, i32 1> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_4
begin_hunk_5_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_5
begin_hunk_6_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.er = shufflevector <2 x float> %i.az, <2 x float> %i.bc, <4 x i32> <i32 1, i32 3, i32 1, i32 3> ; 2 uses
  %i.es = fmul <4 x float> %i.er, %i.dt
  %i.et = insertelement <4 x float> poison, float %i.n, i64 0
  %i.eu = insertelement <4 x float> %1, float %i.n, i64 0 ; 2 uses
  %3 = shufflevector <4 x float> %i.eu, <4 x float> poison, <4 x i32> <i32 2, i32 0, i32 poison, i32 poison>
  %i.ev = insertelement <4 x float> %3, float %i.n, i64 2
  %i.ew = shufflevector <2 x float> %i.az, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %4 = shufflevector <4 x float> %i.ev, <4 x float> %i.ew, <4 x i32> <i32 0, i32 1, i32 2, i32 5>
  %i.ex = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.eu, <4 x float> %4, <4 x float> %i.es) ; 2 uses
  %i.ey = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.ez = shufflevector <2 x float> %i.ah, <2 x float> %i.ay, <4 x i32> <i32 0, i32 2, i32 2, i32 2>
  %i.fa = fmul <4 x float> %i.ez, %i.ex
end_hunk_6
