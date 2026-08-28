Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/cmake/original/cmDuration?download=true
inline.NumInlined: 66
inline.NumDeleted: 38
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_Z12cmDurationToIiET_NSt6chrono8durationIdSt5ratioILl1ELl1EEEE = comdat any

$_Z12cmDurationToIjET_NSt6chrono8durationIdSt5ratioILl1ELl1EEEE = comdat any

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i32 @_Z12cmDurationToIiET_NSt6chrono8durationIdSt5ratioILl1ELl1EEEE(double %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp uge double %0, f0x41DFFFFFFFC00000
  %1 = fcmp ogt double %0, f0xC1E0000000000000
  %spec.select8 = select i1 %1, double %0, double f0xC1E0000000000000
  %spec.select = fptosi double %spec.select8 to i32
  %.0 = select i1 %i.a, i32 2147483647, i32 %spec.select
  ret i32 %.0
}

; Function Attrs: mustprogress uwtable
define weak_odr dso_local noundef i32 @_Z12cmDurationToIjET_NSt6chrono8durationIdSt5ratioILl1ELl1EEEE(double %0) local_unnamed_addr #0 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = fcmp uge double %0, f0x41EFFFFFFFE00000
  %1 = fcmp ogt double %0, 0.000000e+00
  %spec.select8 = select i1 %1, double %0, double 0.000000e+00
  %spec.select = fptoui double %spec.select8 to i32
  %.0 = select i1 %i.a, i32 -1, i32 %spec.select
  ret i32 %.0
}

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260804081852+44c6aed9bd9b-1~exp1~20260804202019.1766)"}
!4 = !{!5, !6, i64 0}
!5 = !{!"__libc_errno", !6, i64 0}
!6 = !{!"int", !7, i64 0}
!7 = !{!"omnipotent char", !8, i64 0}
!8 = !{!"Simple C++ TBAA"}
end_hunk_0
