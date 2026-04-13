inline.NumInlined: 3826
inline.NumDeleted: 1929
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.et = fadd float %i.er, 1.000000e+00
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #27
  %i.ev = fsub float %.sroa.7.0, %.sroa.17.0
  %i.ew = fsub float %.sroa.32.0, %.sroa.1260.0
  %i.ex = fsub float %.sroa.27.0, %.sroa.37.0
  %4 = fmul float %i.eu, 2.000000e+00
  %5 = insertelement <4 x float> poison, float %4, i64 0 ; 2 uses
  %i.ey = insertelement <4 x float> %5, float %i.ex, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.ew, i64 2
  %i.fa = insertelement <4 x float> %i.ez, float %i.ev, i64 3 ; 2 uses
  %6 = shufflevector <4 x float> %5, <4 x float> <float 2.500000e-01, float poison, float poison, float poison>, <4 x i32> <i32 4, i32 0, i32 0, i32 0> ; 2 uses
  %i.fb = fmul <4 x float> %i.fa, %6
  %i.fc = fdiv <4 x float> %i.fa, %6
  %i.fd = shufflevector <4 x float> %i.fb, <4 x float> %i.fc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

end_hunk_0
