inline.NumInlined: 611
inline.NumDeleted: 181
begin_hunk_0_@_ZN4absl12lts_2025051212FDivDurationENS0_8DurationES1_:bb.a
bb.d:                                             ; preds = %bb.c
  %i.h = sitofp i64 %0 to double
  %i.i = uitofp i32 %1 to double
  %4 = tail call double @llvm.fmuladd.f64(double %i.h, double 4.000000e+09, double %i.i)
  %i.j = sitofp i64 %2 to double
  %i.k = uitofp i32 %3 to double
  %5 = tail call double @llvm.fmuladd.f64(double %i.j, double 4.000000e+09, double %i.k)
  %i.l = fdiv double %4, %5
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.d, %_ZN4absl12lts_20250512ltENS0_8DurationES1_.exit
end_hunk_0
begin_hunk_1_@llvm.fabs.f64
; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
end_hunk_1
