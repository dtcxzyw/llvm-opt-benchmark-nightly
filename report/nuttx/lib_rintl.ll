Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_rintl?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable
define dso_local x86_fp80 @rintl(x86_fp80 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = fptosi x86_fp80 %0 to i64                ; 5 uses
  %i.b = sitofp i64 %i.a to x86_fp80
  %i.c = fsub x86_fp80 %0, %i.b                   ; 4 uses
  %i.d = fcmp olt x86_fp80 %0, 0.000000e+00
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = fcmp oeq x86_fp80 %i.c, -5.000000e-01
  br i1 %i.e, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.f = add nsw i64 %i.a, 1
  %i.g = and i64 %i.f, -2
  br label %bb.h

bb.d:                                             ; preds = %bb.b
  %i.h = fcmp olt x86_fp80 %i.c, -5.000000e-01
  %i.i = sext i1 %i.h to i64
  %spec.select = add nsw i64 %i.i, %i.a
  br label %bb.h

bb.e:                                             ; preds = %bb.a
  %i.j = fcmp oeq x86_fp80 %i.c, 5.000000e-01
  br i1 %i.j, label %bb.f, label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.k = add nsw i64 %i.a, 1
  %i.l = and i64 %i.k, -2
  br label %bb.h

bb.g:                                             ; preds = %bb.e
  %i.m = fcmp ogt x86_fp80 %i.c, 5.000000e-01
  %i.n = zext i1 %i.m to i64
  %spec.select14 = add nsw i64 %i.n, %i.a
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.d, %bb.f, %bb.c
  %.0 = phi i64 [ %i.g, %bb.c ], [ %spec.select, %bb.d ], [ %spec.select14, %bb.g ], [ %i.l, %bb.f ]
  %i.o = sitofp i64 %.0 to x86_fp80
  ret x86_fp80 %i.o
}

attributes #0 = { mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
