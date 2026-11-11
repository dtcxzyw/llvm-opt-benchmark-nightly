Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_ldexpl?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(none) uwtable
define dso_local x86_fp80 @ldexpl(x86_fp80 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %ldexpl = tail call x86_fp80 @ldexpl(x86_fp80 1.000000e+00, i32 %1)
  %i.a = fmul x86_fp80 %0, %ldexpl
  ret x86_fp80 %i.a
}

attributes #0 = { mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
