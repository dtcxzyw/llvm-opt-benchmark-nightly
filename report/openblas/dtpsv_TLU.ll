begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtpsv_TLU(i64 noundef %0, ptr noundef %1, ptr noundef %2, i64 noundef %3, ptr noundef %4) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %3, 1                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %2, i64 noundef %3, ptr noundef %4, i64 noundef 1) #2 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %4, %bb.b ], [ %2, %bb.a ]
  %i.b = icmp sgt i64 %0, 0
  br i1 %i.b, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %bb.c
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %0 ; 2 uses
  %exitcond.peel.not = icmp eq i64 %0, 1
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.d
  %i.d = add nuw nsw i64 %0, 1
  %i.e = mul nuw nsw i64 %i.d, %0
  %i.f = lshr i64 %i.e, 1
  %i.g = getelementptr [8 x i8], ptr %1, i64 %i.f
  %i.h = getelementptr i8, ptr %i.g, i64 -24
  br label %bb.e

bb.e:                                             ; preds = %.peel.next, %bb.e
  %.02835 = phi i64 [ 1, %.peel.next ], [ %i.q, %bb.e ] ; 4 uses
  %.02934 = phi ptr [ %i.h, %.peel.next ], [ %i.p, %bb.e ] ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %.02934, i64 8
  %i.j = tail call double @ddot_k(i64 noundef %.02835, ptr noundef nonnull %i.i, i64 noundef 1, ptr noundef nonnull %i.c, i64 noundef 1) #2
  %i.k = xor i64 %.02835, -1
  %i.l = getelementptr [8 x i8], ptr %i.c, i64 %i.k ; 2 uses
  %i.m = load double, ptr %i.l, align 8, !tbaa !8
  %i.n = fsub double %i.m, %i.j
  store double %i.n, ptr %i.l, align 8, !tbaa !8
  %i.o = sub nuw nsw i64 -2, %.02835
  %i.p = getelementptr inbounds [8 x i8], ptr %.02934, i64 %i.o
  %i.q = add nuw nsw i64 %.02835, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.q, %0
  br i1 %exitcond.not, label %._crit_edge, label %bb.e, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.e, %bb.d, %bb.c
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.r = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %4, i64 noundef 1, ptr noundef %2, i64 noundef %3) #2 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret i32 0
}

declare i32 @dcopy_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare double @ddot_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

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
!10 = distinct !{!10, !11, !12}
!11 = !{!"llvm.loop.mustprogress"}
!12 = !{!"llvm.loop.peeled.count", i32 1}
end_hunk_0
