inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZN6Assimp13ColladaLoader14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:bb.a
  %i.hk = call float @llvm.fmuladd.f32(float %i.fe, float 0.000000e+00, float %i.fh) ; 2 uses
  %i.hl = call float @llvm.fmuladd.f32(float %i.ei, float %i.hi, float %i.hk)
  %i.hm = call float @llvm.fmuladd.f32(float %i.ft, float 0.000000e+00, float %i.fr)
  %6 = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 1, i32 1, i32 0, i32 poison>
  %7 = insertelement <4 x float> %6, float %i.fv, i64 3
  %i.hn = insertelement <4 x float> poison, float %i.hj, i64 0
  %i.ho = insertelement <4 x float> %i.hn, float %i.hl, i64 1
  %i.hp = insertelement <4 x float> %i.ho, float %i.hk, i64 2
  %i.hq = insertelement <4 x float> %i.hp, float %i.hm, i64 3
  %i.hr = call <4 x float> @llvm.fmuladd.v4f32(<4 x float> %7, <4 x float> zeroinitializer, <4 x float> %i.hq)
  %i.hs = shufflevector <2 x float> %i.hh, <2 x float> poison, <4 x i32> <i32 poison, i32 1, i32 poison, i32 poison>
  %i.ht = shufflevector <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x float> %i.hs, <4 x i32> <i32 0, i32 1, i32 5, i32 3>
  %i.hu = fadd <4 x float> %i.ht, %i.hr
end_hunk_0
