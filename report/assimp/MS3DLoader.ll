inline.NumInlined: 1117
inline.NumDeleted: 529
begin_hunk_0_@_ZN6Assimp12MS3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.bro = fsub float %i.brn, %i.bqt
  %i.brp = call noundef float @sqrtf(float noundef %i.bro) #25
  %i.brq = fmul float %i.brp, 2.000000e+00
  %22 = insertelement <2 x float> <float poison, float 2.500000e-01>, float %i.brq, i64 0
  %23 = shufflevector <2 x float> %22, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 0, i32 0> ; 3 uses
  %i.brr = extractelement <4 x float> %i.bql, i64 3
  %i.brs = fadd float %i.bpv, %i.brr
  %i.brt = extractelement <4 x float> %i.bql, i64 2
end_hunk_0
begin_hunk_1_@_ZN6Assimp12MS3DImporter14InternReadFileERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEEP7aiScenePNS_8IOSystemE:._crit_edge.i.i
  %i.brx = insertelement <4 x float> poison, float %i.brs, i64 0
  %i.bry = insertelement <4 x float> %i.brx, float %i.bru, i64 1
  %i.brz = insertelement <4 x float> poison, float %i.brw, i64 0
  %24 = shufflevector <4 x float> %i.brz, <4 x float> %23, <4 x i32> <i32 0, i32 4, i32 poison, i32 poison>
  %i.bsa = shufflevector <4 x float> %24, <4 x float> %i.bry, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %i.bsb = fdiv <4 x float> %i.bsa, %23
  %i.bsc = fmul <4 x float> %i.bsa, %23
  %i.bsd = shufflevector <4 x float> %i.bsb, <4 x float> %i.bsc, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
end_hunk_1
