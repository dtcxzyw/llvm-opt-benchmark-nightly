begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtpsv_NUN(i64 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 1                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef 1) #2 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %4, %bb.b ], [ %2, %bb.a ]      ; 2 uses
  %i.b = icmp sgt i64 %0, 0
  br i1 %i.b, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c
  %i.c = add nuw nsw i64 %0, 1
  %i.d = mul nuw nsw i64 %i.c, %0
  %i.e = lshr i64 %i.d, 1
  %i.f = getelementptr [8 x i8], ptr %1, i64 %i.e
  %i.g = getelementptr i8, ptr %i.f, i64 -8
  %i.h = add nsw i64 %0, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.03541 = phi i64 [ 0, %.lr.ph ], [ %i.t, %bb.f ] ; 3 uses
  %.03640 = phi ptr [ %i.g, %.lr.ph ], [ %i.s, %bb.f ] ; 3 uses
  %i.i = load double, ptr %.03640, align 8, !tbaa !8
  %i.j = sub nsw i64 %0, %.03541                  ; 4 uses
  %5 = getelementptr [8 x i8], ptr %.0, i64 %i.j
  %6 = getelementptr i8, ptr %5, i64 -8           ; 2 uses
  %i.k = load double, ptr %6, align 8, !tbaa !8
  %i.l = fdiv double %i.k, %i.i                   ; 2 uses
  store double %i.l, ptr %6, align 8, !tbaa !8
  %i.m = icmp slt i64 %.03541, %i.h
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %7 = add nsw i64 %i.j, -1
  %i.n = fneg double %i.l
  %i.o = sub nsw i64 1, %i.j
  %i.p = getelementptr inbounds [8 x i8], ptr %.03640, i64 %i.o
  %i.q = tail call i32 @daxpy_k(i64 noundef %7, i64 noundef 0, i64 noundef 0, double noundef %i.n, ptr noundef nonnull %i.p, i64 noundef 1, ptr noundef nonnull %.0, i64 noundef 1, ptr noundef null, i64 noundef 0) #2 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.r = sub nsw i64 0, %i.j
  %i.s = getelementptr inbounds [8 x i8], ptr %.03640, i64 %i.r
  %i.t = add nuw nsw i64 %.03541, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.t, %0
  br i1 %exitcond.not, label %._crit_edge, label %bb.d, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.f, %bb.c
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.u = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %4, i64 noundef 1, ptr noundef %2, i64 noundef %3) #2 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge
  ret i32 0
}

declare i32 @dcopy_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @daxpy_k(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
