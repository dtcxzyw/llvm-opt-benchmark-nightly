Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dlarmm?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"Safe minimum\00", align 1
@.str.1 = private unnamed_addr constant [10 x i8] c"Precision\00", align 1

; Function Attrs: nounwind uwtable
define double @dlarmm_(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call double @dlamch_(ptr noundef nonnull @.str) #2
  %i.b = tail call double @dlamch_(ptr noundef nonnull @.str.1) #2
  %i.c = fdiv double %i.a, %i.b
  %i.d = fdiv double 1.000000e+00, %i.c
  %i.e = fmul double %i.d, 2.500000e-01           ; 2 uses
  %i.f = load double, ptr %1, align 8, !tbaa !8   ; 4 uses
  %i.g = fcmp ugt double %i.f, 1.000000e+00
  %i.h = load double, ptr %0, align 8, !tbaa !8   ; 2 uses
  br i1 %i.g, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.i = fmul double %i.f, %i.h
  %i.j = load double, ptr %2, align 8, !tbaa !8
  %i.k = fsub double %i.e, %i.j
  %i.l = fcmp ogt double %i.i, %i.k
  br i1 %i.l, label %3, label %bb.d

3:                                                ; preds = %bb.b
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.m = load double, ptr %2, align 8, !tbaa !8
  %i.n = fsub double %i.e, %i.m
  %i.o = fdiv double %i.n, %i.f
  %i.p = fcmp ogt double %i.h, %i.o
  br i1 %i.p, label %4, label %bb.d

4:                                                ; preds = %bb.c
  %5 = fdiv double 5.000000e-01, %i.f
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %4, %bb.b, %3
  %.0 = phi double [ 5.000000e-01, %3 ], [ 1.000000e+00, %bb.b ], [ %5, %4 ], [ 1.000000e+00, %bb.c ]
  ret double %.0
}

declare double @dlamch_(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260805082234+d31b11c260ae-1~exp1~20260805082243.1767)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"double", !6, i64 0}
end_hunk_0
