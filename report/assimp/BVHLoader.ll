inline.NumInlined: 1147
inline.NumDeleted: 488
begin_hunk_0_@_ZN6Assimp9BVHLoader15CreateAnimationEP7aiScene:_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %i.ke = fsub float %i.kd, %.sroa.85.0.lcssa
  %i.kf = call noundef float @sqrtf(float noundef %i.ke) #25
  %i.kg = fmul float %i.kf, 2.000000e+00
  %i.kh = fadd <2 x float> %i.jf, %i.jg
  %i.ki = fsub float %.sroa.74.0.lcssa, %.sroa.52.0.lcssa
  %i.kj = insertelement <4 x float> poison, float %i.ki, i64 0
  %4 = insertelement <4 x float> %i.kj, float %i.kg, i64 1 ; 2 uses
  %i.kk = shufflevector <2 x float> %i.kh, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.kl = shufflevector <4 x float> %4, <4 x float> %i.kk, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %5 = shufflevector <4 x float> %4, <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1> ; 2 uses
  %i.km = fdiv <4 x float> %i.kl, %5
  %i.kn = fmul <4 x float> %i.kl, %5
  %i.ko = shufflevector <4 x float> %i.km, <4 x float> %i.kn, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
end_hunk_0
