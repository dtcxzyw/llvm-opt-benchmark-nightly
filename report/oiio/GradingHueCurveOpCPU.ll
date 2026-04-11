inline.NumInlined: 349
inline.NumDeleted: 183
begin_hunk_0_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123GradingHueCurveFwdOpCPU5applyEPKvPvl:bb.a
  %i.q = load ptr, ptr %i.i, align 8, !tbaa !48
  tail call void %i.q(ptr noundef %.05892)
  %i.r = load float, ptr %.05892, align 4, !tbaa !111
  %i.s = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 1, float noundef %i.r, float noundef 1.000000e+00)
  %i.t = load float, ptr %.05892, align 4, !tbaa !111
  %i.u = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 2, float noundef %i.t, float noundef 1.000000e+00) ; 2 uses
  %i.v = fcmp ogt float %i.u, 0.000000e+00
end_hunk_0
begin_hunk_1_@_ZNK16OpenColorIO_v2_512_GLOBAL__N_123GradingHueCurveFwdOpCPU5applyEPKvPvl:bb.a
  store float %.sroa.speculated78, ptr %i.y, align 4, !tbaa !111
  %i.ac = getelementptr inbounds nuw i8, ptr %.05892, i64 8 ; 5 uses
  %i.ad = load float, ptr %i.ac, align 4, !tbaa !111
  %i.ae = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 3, float noundef %i.ad, float noundef 1.000000e+00)
  %4 = insertelement <2 x float> poison, float %i.s, i64 0
  %5 = insertelement <2 x float> %4, float %i.ae, i64 1 ; 2 uses
  %6 = fcmp ogt <2 x float> %5, zeroinitializer
  %7 = select <2 x i1> %6, <2 x float> %5, <2 x float> zeroinitializer ; 2 uses
  %shift = shufflevector <2 x float> %7, <2 x float> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fmul <2 x float> %7, %shift
  %8 = extractelement <2 x float> %foldExtExtBinop, i64 0
  %i.af = load float, ptr %i.y, align 4, !tbaa !111
  %i.ag = fmul float %i.af, %8                    ; 2 uses
  store float %i.ag, ptr %i.y, align 4, !tbaa !111
  %i.ah = tail call noundef float @_ZNK16OpenColorIO_v2_523GradingBSplineCurveImpl10KnotsCoefs9evalCurveEiff(ptr noundef nonnull align 8 dereferenceable(112) %i.f, i32 noundef 6, float noundef %i.ag, float noundef 1.000000e+00) ; 2 uses
  %i.ai = fcmp ogt float %i.ah, 0.000000e+00
end_hunk_1
