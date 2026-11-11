Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_roundl?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable
define dso_local x86_fp80 @roundl(x86_fp80 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call x86_fp80 @llvm.fabs.f80(x86_fp80 %0)
  %or.cond22 = fcmp ueq x86_fp80 %i.a, +inf
  br i1 %or.cond22, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call { x86_fp80, x86_fp80 } @llvm.modf.f80(x86_fp80 %0) ; 2 uses
  %i.c = extractvalue { x86_fp80, x86_fp80 } %i.b, 0 ; 2 uses
  %i.d = extractvalue { x86_fp80, x86_fp80 } %i.b, 1 ; 4 uses
  %i.e = fcmp ole x86_fp80 %i.d, 0.000000e+00
  %i.f = fcmp ole x86_fp80 %i.c, -5.000000e-01
  %or.cond3 = select i1 %i.e, i1 %i.f, i1 false
  %i.g = fadd x86_fp80 %i.d, -1.000000e+00
  %spec.select = select i1 %or.cond3, x86_fp80 %i.g, x86_fp80 %i.d ; 2 uses
  %i.h = fcmp oge x86_fp80 %spec.select, 0.000000e+00
  %i.i = fcmp oge x86_fp80 %i.c, 5.000000e-01
  %or.cond5 = select i1 %i.h, i1 %i.i, i1 false
  %i.j = fadd x86_fp80 %i.d, 1.000000e+00
  %.1 = select i1 %or.cond5, x86_fp80 %i.j, x86_fp80 %spec.select
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi x86_fp80 [ %.1, %bb.b ], [ %0, %bb.a ]
  ret x86_fp80 %.0
}

; Function Attrs: nocallback nofree nosync nounwind speculatable willreturn memory(none)
declare { x86_fp80, x86_fp80 } @llvm.modf.f80(x86_fp80) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare x86_fp80 @llvm.fabs.f80(x86_fp80) #2

attributes #0 = { mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind speculatable willreturn memory(none) }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5, !6}
!llvm.ident = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"long-double-type", !"x86_fp80"}
!3 = !{i32 1, !"Code Model", i32 4}
!4 = !{i32 1, !"Large Data Threshold", i64 0}
!5 = !{i32 7, !"uwtable", i32 2}
!6 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!7 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
end_hunk_0
