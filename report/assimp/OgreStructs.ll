inline.NumInlined: 1851
inline.NumDeleted: 929
begin_hunk_0_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.gi = insertelement <4 x float> %i.gh, float %i.ee, i64 3
  %i.gj = fmul <4 x float> %i.gf, %i.gi           ; 4 uses
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 4 dereferenceable(64) %5, ptr noundef nonnull align 4 dereferenceable(64) %i.cz, i64 64, i1 false)
  %i.gk = load float, ptr %5, align 4             ; 2 uses
  %i.gl = load float, ptr %i.da, align 4          ; 3 uses
  %i.gm = fmul float %i.fz, %i.gl
  %i.gn = call float @llvm.fmuladd.f32(float %i.fu, float %i.gk, float %i.gm)
end_hunk_0
begin_hunk_1_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.gu = insertelement <2 x float> poison, float %i.gl, i64 0
  %i.gv = shufflevector <2 x float> %i.gu, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gw = fmul <2 x float> %i.gc, %i.gv
  %i.gx = insertelement <2 x float> poison, float %i.gk, i64 0 ; 2 uses
  %i.gy = shufflevector <2 x float> %i.gx, <2 x float> poison, <2 x i32> zeroinitializer
  %i.gz = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fx, <2 x float> %i.gy, <2 x float> %i.gw)
  %i.ha = fmul float %i.ec, %i.gl
end_hunk_1
begin_hunk_2_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.he = call float @llvm.fmuladd.f32(float %i.fu, float %i.hb, float %i.hd)
  %i.hf = load <2 x float>, ptr %i.df, align 4    ; 3 uses
  %i.hg = load float, ptr %i.dg, align 4          ; 2 uses
  %6 = shufflevector <2 x float> %i.go, <2 x float> %i.gx, <4 x i32> <i32 0, i32 0, i32 2, i32 poison>
  %7 = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 2 uses
  %8 = shufflevector <4 x float> %6, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
  %i.hh = insertelement <4 x float> poison, float %i.ha, i64 2
  %i.hi = insertelement <4 x float> %i.hh, float %i.he, i64 3
  %i.hj = shufflevector <2 x float> %i.gz, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
end_hunk_2
begin_hunk_3_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.ik = load <2 x float>, ptr %i.dj, align 4    ; 2 uses
  %i.il = load float, ptr %i.dk, align 4          ; 2 uses
  %i.im = insertelement <4 x float> %i.gj, float %i.fy, i64 2 ; 2 uses
  %9 = shufflevector <2 x float> %i.hf, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 poison, i32 poison>
  %i.in = insertelement <4 x float> %9, float %i.hb, i64 2
  %i.io = shufflevector <2 x float> %i.ik, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 poison> ; 3 uses
  %i.ip = shufflevector <4 x float> %i.in, <4 x float> %i.io, <4 x i32> <i32 0, i32 1, i32 2, i32 4>
end_hunk_3
begin_hunk_4_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.it = shufflevector <4 x float> %i.is, <4 x float> %i.ir, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.iu = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.ip, <4 x float> %i.it)
  %i.iv = insertelement <4 x float> poison, float %i.hg, i64 0
  %i.iw = insertelement <4 x float> %i.iv, float %i.eg, i64 2
  %10 = shufflevector <4 x float> %i.iw, <4 x float> %i.io, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.ix = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %7, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.iy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %10, <4 x float> %i.ix, <4 x float> %i.iu)
  %i.iz = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, float %i.hg, i64 2
  %i.ja = fadd <4 x float> %i.iz, %i.iy
end_hunk_4
begin_hunk_5_@_ZN6Assimp4Ogre20VertexAnimationTrack28ConvertToAssimpAnimationNodeEPNS0_8SkeletonE:bb.a
  %i.jt = shufflevector <4 x float> %i.js, <4 x float> %i.jr, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.ju = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.im, <4 x float> %i.jp, <4 x float> %i.jt)
  %i.jv = insertelement <4 x float> poison, float %i.il, i64 0
  %i.jw = insertelement <4 x float> %i.jv, float %i.eg, i64 2
  %11 = shufflevector <4 x float> %i.jw, <4 x float> %i.jo, <4 x i32> <i32 0, i32 0, i32 2, i32 5>
  %i.jx = shufflevector <4 x float> <float 0.000000e+00, float 0.000000e+00, float poison, float 0.000000e+00>, <4 x float> %i.io, <4 x i32> <i32 0, i32 1, i32 6, i32 3>
  %i.jy = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %11, <4 x float> %i.jx, <4 x float> %i.ju)
  %i.jz = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, float %i.il, i64 2
end_hunk_5
begin_hunk_6_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.ae = load <2 x float>, ptr %i.l, align 4     ; 6 uses
  %i.af = extractelement <2 x float> %i.ae, i64 0
  %i.ag = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.ah = load <2 x float>, ptr %i.h, align 4     ; 11 uses
  %i.ai = load <2 x float>, ptr %i.c, align 4     ; 8 uses
  %i.aj = load float, ptr %i.f, align 4           ; 7 uses
  %i.ak = fneg float %i.aj                        ; 3 uses
  %i.al = extractelement <2 x float> %i.ai, i64 0 ; 2 uses
end_hunk_6
begin_hunk_7_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
bb.b:                                             ; preds = %bb.a
  %i.de = shufflevector <2 x float> %i.y, <2 x float> poison, <4 x i32> <i32 0, i32 0, i32 0, i32 1> ; 2 uses
  %i.df = fdiv float 1.000000e+00, %i.dc          ; 3 uses
  %1 = shufflevector <2 x float> %i.ah, <2 x float> %i.ai, <4 x i32> <i32 3, i32 1, i32 3, i32 1> ; 2 uses
  %i.dg = shufflevector <2 x float> %i.ai, <2 x float> %i.ah, <4 x i32> <i32 1, i32 1, i32 3, i32 3>
  %i.dh = fmul <4 x float> %i.dg, %i.de
  %i.di = fneg float %i.e
end_hunk_7
begin_hunk_8_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
  %i.dk = fneg float %i.df                        ; 2 uses
  %i.dl = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 1, i32 1, i32 3, i32 3> ; 2 uses
  %i.dm = insertelement <4 x float> poison, float %i.e, i64 0 ; 2 uses
  %2 = shufflevector <2 x float> %i.ai, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.dn = shufflevector <4 x float> %i.dm, <4 x float> %2, <4 x i32> <i32 0, i32 0, i32 0, i32 5>
  %i.do = tail call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.dl, <4 x float> %i.dn, <4 x float> %i.dh) ; 2 uses
  %i.dp = shufflevector <2 x float> %i.u, <2 x float> %i.r, <4 x i32> <i32 0, i32 2, i32 0, i32 2> ; 3 uses
end_hunk_8
begin_hunk_9_@_ZN12aiMatrix4x4tIfE7InverseEv:bb.a
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
end_hunk_9
