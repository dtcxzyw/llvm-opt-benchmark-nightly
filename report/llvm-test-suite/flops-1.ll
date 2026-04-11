begin_hunk_0_@main:bb.a
  %i.e = load double, ptr @D3, align 8, !tbaa !8  ; 2 uses
  %i.f = load double, ptr @E2, align 8, !tbaa !8  ; 2 uses
  %i.g = load double, ptr @E3, align 8, !tbaa !8  ; 2 uses
  %0 = insertelement <2 x double> poison, double %i.e, i64 0
  %1 = insertelement <2 x double> poison, double %i.d, i64 0
  %2 = insertelement <2 x double> %1, double %i.c, i64 1
  %3 = insertelement <2 x double> poison, double %i.c, i64 0
  %4 = insertelement <2 x double> %3, double %i.a, i64 1
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %bb.b
end_hunk_0
begin_hunk_1_@main:bb.a
  %.01924 = phi double [ 0.000000e+00, %bb.a ], [ %i.l, %bb.b ]
  %.02023 = phi double [ 0.000000e+00, %bb.a ], [ %i.h, %bb.b ]
  %i.h = fadd double %i.a, %.02023                ; 2 uses
  %i.i = fmul double %i.b, %i.h                   ; 2 uses
  %i.j = tail call double @llvm.fmuladd.f64(double %i.i, double %i.g, double %i.f)
  %5 = insertelement <2 x double> poison, double %i.i, i64 0
  %6 = shufflevector <2 x double> %5, <2 x double> poison, <2 x i32> zeroinitializer ; 2 uses
  %7 = insertelement <2 x double> %0, double %i.j, i64 1
  %8 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %7, <2 x double> %2)
  %9 = tail call <2 x double> @llvm.fmuladd.v2f64(<2 x double> %6, <2 x double> %8, <2 x double> %4) ; 2 uses
  %10 = extractelement <2 x double> %9, i64 0
  %11 = extractelement <2 x double> %9, i64 1
  %i.k = fdiv double %10, %11
  %i.l = fadd double %.01924, %i.k                ; 2 uses
  %i.m = add nuw nsw i64 %.025, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.m, 312500000
end_hunk_1
begin_hunk_2_@putchar
; Function Attrs: nofree nounwind
declare noundef i32 @puts(ptr noundef readonly captures(none)) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare <2 x double> @llvm.fmuladd.v2f64(<2 x double>, <2 x double>, <2 x double>) #2

attributes #0 = { nofree nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
end_hunk_2
