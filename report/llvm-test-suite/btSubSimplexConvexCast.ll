inline.NumInlined: 96
inline.NumDeleted: 29
begin_hunk_0_@_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a
  %i.ew = getelementptr inbounds nuw i8, ptr %12, i64 8
  %i.ex = getelementptr inbounds nuw i8, ptr %13, i64 8
  %.sroa.45.0..sroa_idx = getelementptr inbounds nuw i8, ptr %11, i64 8
  %16 = shufflevector <2 x float> %i.x, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.ey = insertelement <4 x float> %16, float %i.af, i64 2
  %i.ez = insertelement <4 x float> %i.ey, float %i.f, i64 3
  %i.fa = insertelement <2 x float> poison, float %.sroa.7199.0.copyload, i64 0
end_hunk_0
begin_hunk_1_@_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a
  %i.hr = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.fi, <2 x float> %i.hq, <2 x float> %i.hp)
  %i.hs = shufflevector <2 x float> %i.hn, <2 x float> poison, <2 x i32> zeroinitializer
  %i.ht = call <2 x float> @llvm.fmuladd.v2f32(<2 x float> %i.ff, <2 x float> %i.hs, <2 x float> %i.hr)
  %17 = shufflevector <4 x float> %i.fl, <4 x float> poison, <2 x i32> <i32 1, i32 0>
  %i.hu = fadd <2 x float> %17, %i.ht             ; 2 uses
  %i.hv = fmul float %.sroa.19.32.copyload, %.sroa.0138.4.vec.extract
  %i.hw = call float @llvm.fmuladd.f32(float %.sroa.16190.32.copyload, float %.sroa.0138.0.vec.extract, float %i.hv)
end_hunk_1
begin_hunk_2_@_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a
  %i.je = call float @llvm.fmuladd.f32(float %i.iu, float %i.jb, float %i.jd)
  %i.jf = load float, ptr %i.ae, align 4, !tbaa !18
  %i.jg = load float, ptr %i.ac, align 4, !tbaa !18
  %18 = load <2 x float>, ptr %i.r, align 4, !tbaa !18
  %i.jh = insertelement <4 x float> poison, float %i.it, i64 0
  %i.ji = shufflevector <4 x float> %i.jh, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jj = insertelement <4 x float> poison, float %i.jg, i64 2
  %i.jk = insertelement <4 x float> %i.jj, float %i.iw, i64 3
  %19 = shufflevector <2 x float> %18, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.jl = shufflevector <4 x float> %19, <4 x float> %i.jk, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.jm = fmul <4 x float> %i.ji, %i.jl
  %20 = load <2 x float>, ptr %i.s, align 4, !tbaa !18
  %i.jn = insertelement <4 x float> poison, float %i.iu, i64 0
  %i.jo = shufflevector <4 x float> %i.jn, <4 x float> poison, <4 x i32> zeroinitializer
  %i.jp = insertelement <4 x float> poison, float %i.jf, i64 2
  %i.jq = insertelement <4 x float> %i.jp, float %i.iv, i64 3
  %21 = shufflevector <2 x float> %20, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.jr = shufflevector <4 x float> %21, <4 x float> %i.jq, <4 x i32> <i32 0, i32 1, i32 6, i32 7>
  %i.js = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %i.jo, <4 x float> %i.jr, <4 x float> %i.jm)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c
  %.sroa.0149.1.a = phi float [ %i.ik, %bb.e ], [ %.sroa.0149.0240278, %bb.c ] ; 3 uses
  %.sroa.6151.1 = phi float [ %i.if, %bb.e ], [ %.sroa.6151.0241277, %bb.c ] ; 3 uses
  %.sroa.9.1 = phi float [ %i.ie, %bb.e ], [ %.sroa.9.0242276, %bb.c ] ; 3 uses
  %.sroa.26217.1 = phi float [ %i.ja, %bb.e ], [ %.sroa.26217.0247271, %bb.c ]
  %.sroa.28218.1 = phi float [ %i.je, %bb.e ], [ %.sroa.28218.0248270, %bb.c ]
  %.151 = phi float [ %i.it, %bb.e ], [ %.050250269, %bb.c ] ; 3 uses
end_hunk_2
begin_hunk_3_@_ZN22btSubsimplexConvexCast16calcTimeOfImpactERK11btTransformS2_S2_S2_RN12btConvexCast10CastResultE:bb.a
  %i.kf = getelementptr inbounds nuw i8, ptr %5, i64 168
  store float %.050.lcssa, ptr %i.kf, align 8, !tbaa !21
  %i.kg = fmul float %.sroa.6151.0.lcssa, %.sroa.6151.0.lcssa
  %i.kh = call float @llvm.fmuladd.f32(float %.sroa.9.0.lcssa, float %.sroa.9.0.lcssa, float %i.kg)
  %i.ki = call noundef float @llvm.fmuladd.f32(float %.sroa.0149.0.lcssa.a, float %.sroa.0149.0.lcssa.a, float %i.kh) ; 2 uses
  %i.kj = fcmp ult float %i.ki, 0x3D10000000000000
  br i1 %i.kj, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.critedge
  %sqrt.i.i = call noundef float @llvm.sqrt.f32(float %i.ki)
  %i.kk = fdiv float 1.000000e+00, %sqrt.i.i      ; 3 uses
  %i.kl = fmul float %.sroa.9.0.lcssa, %i.kk      ; 2 uses
  %i.km = fmul float %.sroa.6151.0.lcssa, %i.kk   ; 2 uses
  %i.kn = fmul float %.sroa.0149.0.lcssa.a, %i.kk ; 2 uses
  %.sroa.0.0.vec.insert.i.i.i = insertelement <2 x float> poison, float %i.kl, i64 0
  %.sroa.0.4.vec.insert.i.i.i = insertelement <2 x float> %.sroa.0.0.vec.insert.i.i.i, float %i.km, i64 1
  %.sroa.3.12.vec.insert.i.i.i = insertelement <2 x float> <float poison, float 0.000000e+00>, float %i.kn, i64 0
end_hunk_3
