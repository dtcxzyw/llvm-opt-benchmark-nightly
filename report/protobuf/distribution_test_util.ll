inline.NumInlined: 84
inline.NumDeleted: 56
begin_hunk_0_@_ZN4absl12lts_2025051215random_internal12_GLOBAL__N_121BetaIncompleteInvImplEdddd:bb.a

bb.d:                                             ; preds = %bb.c
  %i.p = tail call double @llvm.fmuladd.f64(double %i.m, double %i.m, double -3.000000e+00)
  %4 = insertelement <2 x double> poison, double %1, i64 0
  %5 = insertelement <2 x double> %4, double %0, i64 1 ; 2 uses
  %6 = fadd <2 x double> %5, %5
  %7 = fadd <2 x double> %6, splat (double -1.000000e+00)
  %8 = fdiv <2 x double> splat (double 1.000000e+00), %7 ; 5 uses
  %9 = extractelement <2 x double> %8, i64 0
  %shift = shufflevector <2 x double> %8, <2 x double> poison, <2 x i32> <i32 1, i32 poison>
  %foldExtExtBinop = fsub <2 x double> %8, %shift
  %10 = extractelement <2 x double> %foldExtExtBinop, i64 0
  %11 = insertelement <2 x double> <double poison, double 2.000000e+00>, double %i.p, i64 0
  %12 = insertelement <2 x double> %8, double 6.000000e+00, i64 0
  %13 = fdiv <2 x double> %11, %12                ; 2 uses
  %14 = shufflevector <2 x double> <double 0x3FEAAAAAAAAAAAAB, double poison>, <2 x double> %8, <2 x i32> <i32 0, i32 2>
  %15 = fadd <2 x double> %13, %14                ; 3 uses
  %16 = extractelement <2 x double> %15, i64 1    ; 2 uses
  %17 = extractelement <2 x double> %13, i64 0
  %i.q = fadd double %16, %17
  %i.r = tail call double @sqrt(double noundef %i.q) #13, !tbaa !3
  %i.s = fmul double %i.m, %i.r
  %i.t = fdiv double %i.s, %16
  %18 = extractelement <2 x double> %15, i64 1
  %19 = fmul double %18, 3.000000e+00
  %20 = fdiv double %9, %19
  %21 = extractelement <2 x double> %15, i64 0
  %i.u = fsub double %21, %20
  %i.v = fneg double %10
  %i.w = tail call double @llvm.fmuladd.f64(double %i.v, double %i.u, double %i.t) ; 2 uses
  %i.x = fadd double %i.w, %i.w
  %i.y = tail call double @exp(double noundef %i.x) #13, !tbaa !3
end_hunk_0
