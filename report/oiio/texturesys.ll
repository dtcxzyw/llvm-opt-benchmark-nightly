inline.NumInlined: 5153
inline.NumDeleted: 1482
begin_hunk_0_@_ZN11OpenImageIO4v3_112ellipse_axesEffffRfS1_S1_Pf:_ZN11OpenImageIO4v3_19safe_sqrtIfEET_S2_.exit50
  %i.u = fptrunc <2 x double> %i.t to <2 x float>
  %i.v = fcmp ult <2 x double> %i.t, splat (double 0xB690000000000000)
  %i.w = tail call <2 x float> @llvm.sqrt.v2f32(<2 x float> %i.u)
  %i.x = select <2 x i1> %i.v, <2 x float> zeroinitializer, <2 x float> %i.w ; 2 uses
  %i.y = fcmp ogt <2 x float> %i.x, splat (float 1.000000e+03)
  %8 = select <2 x i1> %i.y, <2 x float> splat (float 1.000000e+03), <2 x float> %i.x ; 2 uses
  %i.z = extractelement <2 x float> %8, i64 1
  store float %i.z, ptr %4, align 4, !tbaa !26
  %i.aa = extractelement <2 x float> %8, i64 0
  store float %i.aa, ptr %5, align 4, !tbaa !26
  %i.ab = fptrunc double %i.j to float            ; 3 uses
  %i.ac = fptrunc double %i.m to float
  %i.ad = tail call float @llvm.fabs.f32(float %i.ac) ; 4 uses
end_hunk_0
