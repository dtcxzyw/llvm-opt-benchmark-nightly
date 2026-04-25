inline.NumInlined: 3741
inline.NumDeleted: 859
begin_hunk_0_@_ZN6Assimp15ColladaExporter21WriteAnimationLibraryEm:bb.a
  %i.ow = insertelement <4 x float> %i.ov, float %i.os, i64 1
  %i.ox = insertelement <4 x float> %i.ow, float %i.or, i64 2
  %i.oy = shufflevector <4 x float> %i.nu, <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float -0.000000e+00>, <4 x i32> <i32 4, i32 5, i32 3, i32 7>
  %i.oz = insertelement <4 x float> <float -0.000000e+00, float -0.000000e+00, float poison, float 0.000000e+00>, float %.sroa.6.0.copyload, i64 2 ; 2 uses
  %i.pa = fadd <4 x float> %i.oz, <float -0.000000e+00, float -0.000000e+00, float 0.000000e+00, float -0.000000e+00> ; 2 uses
  %i.pb = insertelement <2 x float> poison, float %.sroa.6.0.copyload, i64 0
  %i.pc = insertelement <2 x float> %i.pb, float %i.lu, i64 1
  %i.pd = insertelement <2 x float> poison, float %i.mu, i64 0
end_hunk_0
