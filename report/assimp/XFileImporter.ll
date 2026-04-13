inline.NumInlined: 969
inline.NumDeleted: 533
begin_hunk_0_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.if = fsub float %i.ie, %i.hi
  %i.ig = tail call noundef float @sqrtf(float noundef %i.if) #19
  %i.ih = fmul float %i.ig, 2.000000e+00
  %i.ii = extractelement <4 x float> %i.hd, i64 1
  %i.ij = fsub float %i.he, %i.ii
  %i.ik = insertelement <4 x float> poison, float %i.ij, i64 0
  %4 = insertelement <4 x float> %i.ik, float %i.ih, i64 1 ; 2 uses
  %i.il = shufflevector <4 x float> %i.hd, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.im = shufflevector <2 x float> %i.gu, <2 x float> poison, <4 x i32> <i32 1, i32 0, i32 poison, i32 poison>
  %i.in = fadd <4 x float> %i.il, %i.im
  %i.io = shufflevector <4 x float> %4, <4 x float> %i.in, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %5 = shufflevector <4 x float> %4, <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1> ; 2 uses
  %i.ip = fdiv <4 x float> %i.io, %5
  %i.iq = fmul <4 x float> %i.io, %5
  %i.ir = shufflevector <4 x float> %i.ip, <4 x float> %i.iq, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
end_hunk_0
begin_hunk_1_@_ZN6Assimp13XFileImporter16CreateAnimationsEP7aiScenePKNS_5XFile5SceneE:bb.a
  %i.qg = fsub float %i.qf, %i.pj
  %i.qh = tail call noundef float @sqrtf(float noundef %i.qg) #19
  %i.qi = fmul float %i.qh, 2.000000e+00
  %i.qj = extractelement <4 x float> %i.pd, i64 1
  %i.qk = fsub float %i.pg, %i.qj
  %i.ql = insertelement <4 x float> poison, float %i.qk, i64 0
  %6 = insertelement <4 x float> %i.ql, float %i.qi, i64 1 ; 2 uses
  %i.qm = shufflevector <2 x float> %i.oq, <2 x float> poison, <4 x i32> <i32 0, i32 1, i32 poison, i32 poison>
  %i.qn = shufflevector <4 x float> %i.pd, <4 x float> poison, <4 x i32> <i32 3, i32 2, i32 poison, i32 poison>
  %i.qo = fadd <4 x float> %i.qm, %i.qn
  %i.qp = shufflevector <4 x float> %6, <4 x float> %i.qo, <4 x i32> <i32 0, i32 1, i32 4, i32 5> ; 2 uses
  %7 = shufflevector <4 x float> %6, <4 x float> <float poison, float 2.500000e-01, float poison, float poison>, <4 x i32> <i32 1, i32 5, i32 1, i32 1> ; 2 uses
  %i.qq = fdiv <4 x float> %i.qp, %7
  %i.qr = fmul <4 x float> %i.qp, %7
  %i.qs = shufflevector <4 x float> %i.qq, <4 x float> %i.qr, <4 x i32> <i32 0, i32 5, i32 2, i32 3>
  br label %_ZN13aiQuaterniontIfEC2ERK12aiMatrix3x3tIfE.exit162

end_hunk_1
