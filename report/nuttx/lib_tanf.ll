Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/nuttx/original/lib_tanf?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(errnomem: write) uwtable
define dso_local float @tanf(float noundef %0) local_unnamed_addr #0 {
bb.a:
  %sincos.sin = alloca float, align 4             ; 2 uses
  %sincos.cos = alloca float, align 4             ; 2 uses
  call void @sincosf(float %0, ptr nonnull %sincos.sin, ptr nonnull %sincos.cos)
  %sin = load float, ptr %sincos.sin, align 4
  %cos = load float, ptr %sincos.cos, align 4
  %i.a = fdiv float %sin, %cos
  ret float %i.a
}

; Function Attrs: mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(argmem: readwrite, errnomem: write)
declare void @sincosf(float noundef, ptr, ptr) local_unnamed_addr #1

attributes #0 = { mustprogress nofree norecurse noredzone nosync nounwind optsize willreturn memory(errnomem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree noredzone nosync nounwind optsize willreturn memory(argmem: readwrite, errnomem: write) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+rdrnd,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 1, !"Code Model", i32 4}
!3 = !{i32 1, !"Large Data Threshold", i64 0}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
end_hunk_0
