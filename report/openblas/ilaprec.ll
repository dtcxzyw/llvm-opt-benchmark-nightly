Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/ilaprec?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"S\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"D\00", align 1
@.str.2 = private unnamed_addr constant [2 x i8] c"I\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"X\00", align 1
@.str.4 = private unnamed_addr constant [2 x i8] c"E\00", align 1

; Function Attrs: nounwind uwtable
define range(i32 -1, 215) i32 @ilaprec_(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str) #2
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.b, label %bb.f

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.1) #2
  %.not5 = icmp eq i32 %i.b, 0
  br i1 %.not5, label %bb.c, label %bb.f

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.2) #2
  %.not6 = icmp eq i32 %i.c, 0
  br i1 %.not6, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.d = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.3) #2
  %.not7 = icmp eq i32 %i.d, 0
  br i1 %.not7, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.e = tail call i32 @lsame_(ptr noundef %0, ptr noundef nonnull @.str.4) #2
  %.not8 = icmp eq i32 %i.e, 0
  br i1 %.not8, label %1, label %bb.f

1:                                                ; preds = %bb.e
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e, %bb.c, %bb.b, %bb.a, %1
  %.0 = phi i32 [ -1, %1 ], [ 211, %bb.a ], [ 212, %bb.b ], [ 213, %bb.c ], [ 214, %bb.e ], [ 214, %bb.d ]
  ret i32 %.0
}

declare i32 @lsame_(ptr noundef, ptr noundef) local_unnamed_addr #1

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
end_hunk_0
