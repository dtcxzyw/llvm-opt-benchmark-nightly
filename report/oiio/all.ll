inline.NumInlined: 593
inline.NumDeleted: 266
begin_hunk_0_@_Z23mergeOverlappingSamplesffffRfS_:bb.a
  %i.a = fcmp ogt float %0, 1.000000e+00
  %.sroa.speculated46 = select i1 %i.a, float 1.000000e+00, float %0 ; 2 uses
  %i.b = fcmp ogt float %.sroa.speculated46, 0.000000e+00
  %.sroa.speculated34 = select i1 %i.b, float %.sroa.speculated46, float 0.000000e+00 ; 4 uses
  %i.c = fcmp ogt float %2, 1.000000e+00
  %.sroa.speculated40 = select i1 %i.c, float 1.000000e+00, float %2 ; 2 uses
  %i.d = fcmp ogt float %.sroa.speculated40, 0.000000e+00
  %.sroa.speculated = select i1 %i.d, float %.sroa.speculated40, float 0.000000e+00 ; 5 uses
  %i.e = fadd float %.sroa.speculated34, %.sroa.speculated
  %i.f = fneg float %.sroa.speculated34           ; 2 uses
  %i.g = tail call float @llvm.fmuladd.f32(float %i.f, float %.sroa.speculated, float %i.e) ; 3 uses
  store float %i.g, ptr %4, align 4, !tbaa !59
  %6 = fcmp oge float %0, 1.000000e+00            ; 3 uses
  %7 = fcmp oge float %2, 1.000000e+00            ; 2 uses
  %or.cond = and i1 %6, %7
  br i1 %or.cond, label %bb.b, label %bb.c

end_hunk_0
begin_hunk_1_@_Z17splitVolumeSamplefffffRfS_S_S_:bb.a
  %i.a = fcmp ogt float %0, 1.000000e+00
  %.sroa.speculated40 = select i1 %i.a, float 1.000000e+00, float %0 ; 2 uses
  %i.b = fcmp ogt float %.sroa.speculated40, 0.000000e+00
  %.sroa.speculated = select i1 %i.b, float %.sroa.speculated40, float 0.000000e+00 ; 6 uses
  %9 = fcmp ult float %0, 1.000000e+00
  br i1 %9, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store float 1.000000e+00, ptr %7, align 4, !tbaa !59
end_hunk_1
