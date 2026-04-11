inline.NumInlined: 349
inline.NumDeleted: 183
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123GradingHueCurveFwdOpCPU5applyEPKvPvl:bb.a
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !48
  tail call void %i.q(ptr noundef %.05892)
  %i.r = load float, ptr %.05892, align 4, !tbaa !111
  %i.s = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 1, float noundef %i.r, float noundef 1.000000e+00) ; 2 uses
  %4 = fcmp ogt float %i.s, 0.000000e+00
  %.sroa.speculated88 = select i1 %4, float %i.s, float 0.000000e+00
  %i.t = load float, ptr %.05892, align 4, !tbaa !111
  %i.u = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 2, float noundef %i.t, float noundef 1.000000e+00) ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123GradingHueCurveFwdOpCPU5applyEPKvPvl:bb.a
  store float %.sroa.speculated78, ptr %i.y, align 4, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %.05892, i64 8 ; 5 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !111
  %i.ae = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 3, float noundef %i.ad, float noundef 1.000000e+00) ; 2 uses
  %5 = fcmp ogt float %i.ae, 0.000000e+00
  %.sroa.speculated73 = select i1 %5, float %i.ae, float 0.000000e+00
  %6 = fmul float %.sroa.speculated88, %.sroa.speculated73
  %i.af = load float, ptr %i.y, align 4, !tbaa !111
  %i.ag = fmul float %i.af, %6                    ; 2 uses
  store float %i.ag, ptr %i.y, align 4, !tbaa !111
  %i.ah = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 6, float noundef %i.ag, float noundef 1.000000e+00) ; 2 uses
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
end_hunk_1
