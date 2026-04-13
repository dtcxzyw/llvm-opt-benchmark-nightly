inline.NumInlined: 1626
inline.NumDeleted: 658
begin_hunk_0_@_ZNK12aiMatrix4x4tIfE9DecomposeER10aiVector3tIfER13aiQuaterniontIfES3_:bb.a
  %i.et = fadd float %i.er, 1.000000e+00
  %i.eu = tail call noundef float @sqrtf(float noundef %i.et) #48
  %i.ev = fsub float %.sroa.7.0, %.sroa.17.0
  %.scalar = fmul float %i.eu, 2.000000e+00
  %4 = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %5 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.ew = fsub float %.sroa.32.0, %.sroa.1260.0
  %i.ex = fsub float %.sroa.27.0, %.sroa.37.0
  %6 = shufflevector <2 x float> %4, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ey = insertelement <4 x float> %6, float %i.ex, i64 1
  %i.ez = insertelement <4 x float> %i.ey, float %i.ew, i64 2
  %i.fa = insertelement <4 x float> %i.ez, float %i.ev, i64 3 ; 2 uses
  %i.fb = fmul <4 x float> %i.fa, %5
  %i.fc = fdiv <4 x float> %i.fa, %5
  %i.fd = shufflevector <4 x float> %i.fb, <4 x float> %i.fc, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

end_hunk_0
begin_hunk_1_@_ZNK12aiMatrix4x4tIfE18DecomposeNoScalingER13aiQuaterniontIfER10aiVector3tIfE:bb.a
  %i.ac = fadd float %i.aa, 1.000000e+00
  %i.ad = tail call noundef float @sqrtf(float noundef %i.ac) #48
  %i.ae = fsub float %i.n, %i.u
  %.scalar = fmul float %i.ad, 2.000000e+00
  %3 = insertelement <2 x float> <float 2.500000e-01, float poison>, float %.scalar, i64 1 ; 2 uses
  %4 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 1, i32 1> ; 2 uses
  %i.af = fsub float %i.t, %i.w
  %i.ag = fsub float %i.v, %i.r
  %5 = shufflevector <2 x float> %3, <2 x float> poison, <4 x i32> <i32 1, i32 poison, i32 poison, i32 poison>
  %i.ah = insertelement <4 x float> %5, float %i.ag, i64 1
  %i.ai = insertelement <4 x float> %i.ah, float %i.af, i64 2
  %i.aj = insertelement <4 x float> %i.ai, float %i.ae, i64 3 ; 2 uses
  %i.ak = fmul <4 x float> %i.aj, %4
  %i.al = fdiv <4 x float> %i.aj, %4
  %i.am = shufflevector <4 x float> %i.ak, <4 x float> %i.al, <4 x i32> <i32 0, i32 5, i32 6, i32 7>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit

end_hunk_1
