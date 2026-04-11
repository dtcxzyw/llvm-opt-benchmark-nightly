inline.NumInlined: 84
inline.NumDeleted: 56
begin_hunk_0_@_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd:bb.a

bb.d:                                             ; preds = %bb.c
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double -3.000000e+00)
  %4 = fdiv double %i.p, 6.000000e+00             ; 2 uses
  %5 = fadd double %0, %0
  %6 = fadd double %5, -1.000000e+00
  %7 = fdiv double 1.000000e+00, %6               ; 2 uses
  %8 = fadd double %1, %1
  %9 = fadd double %8, -1.000000e+00
  %10 = fdiv double 1.000000e+00, %9              ; 3 uses
  %11 = fdiv double 2.000000e+00, %7
  %12 = fadd double %11, %10                      ; 3 uses
  %i.q = fadd double %12, %4
  %i.r = tail call double @sqrt(double noundef %i.q) #13, !tbaa !3
  %i.s = fmul double %i.m, %i.r
  %i.t = fdiv double %i.s, %12
  %13 = fsub double %10, %7
  %14 = fadd double %4, 0x3FEAAAAAAAAAAAAB
  %15 = fmul double %12, 3.000000e+00
  %16 = fdiv double %10, %15
  %i.u = fsub double %14, %16
  %i.v = fneg double %13
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.u, double %i.t) ; 2 uses
  %i.x = fadd double %i.w, %i.w
  %i.y = tail call double @exp(double noundef %i.x) #13, !tbaa !3
end_hunk_0
