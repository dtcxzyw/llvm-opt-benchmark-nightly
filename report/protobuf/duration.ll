inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = sitofp i64 %0 to double
  %i.i = uitofp i32 %1 to double
  %i.j = sitofp i64 %2 to double
  %i.k = uitofp i32 %3 to double
  %4 = insertelement <2 x double> poison, double %i.h, i64 0
  %5 = insertelement <2 x double> %4, double %i.j, i64 1
  %6 = insertelement <2 x double> poison, double %i.i, i64 0
  %7 = insertelement <2 x double> %6, double %i.k, i64 1
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %5, <2 x double> splat (double 4.000000e+09), <2 x double> %7) ; 2 uses
  %9 = extractelement <2 x double> %8, i64 0
  %10 = extractelement <2 x double> %8, i64 1
  %i.l = fdiv double %9, %10
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit
end_hunk_0
begin_hunk_1_@llvm.fabs.f64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
