begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrsv_TUU(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq i64 %4, 1                       ; 2 uses
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %5 to i64
  %i.b = shl i64 %0, 3
  %i.c = add i64 %i.b, 4095
  %i.d = add i64 %i.c, %i.a
  %i.e = and i64 %i.d, -4096
  %i.f = inttoptr i64 %i.e to ptr
  %i.g = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %3, i64 noundef %4, ptr noundef %5, i64 noundef 1) #3 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.050 = phi ptr [ %i.f, %bb.b ], [ %5, %bb.a ]
  %.049 = phi ptr [ %5, %bb.b ], [ %3, %bb.a ]    ; 3 uses
  %i.h = icmp sgt i64 %0, 0
  br i1 %i.h, label %.lr.ph59, label %._crit_edge60

.lr.ph59:                                         ; preds = %bb.c, %._crit_edge
  %indvars.iv = phi i64 [ %indvars.iv.next, %._crit_edge ], [ %0, %bb.c ] ; 3 uses
  %.04857 = phi i64 [ %i.aa, %._crit_edge ], [ 0, %bb.c ] ; 9 uses
  %i.i = tail call i64 @llvm.umin.i64(i64 %indvars.iv, i64 32)
  %i.j = sub nsw i64 %0, %.04857                  ; 2 uses
  %.not54 = icmp eq i64 %.04857, 0
  br i1 %.not54, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph59
  %i.k = tail call i64 @llvm.smin.i64(i64 %i.j, i64 32)
  %i.l = mul nsw i64 %.04857, %2
  %i.m = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.049, i64 %.04857
  %i.o = tail call i32 @dgemv_t(i64 noundef %.04857, i64 noundef %i.k, i64 noundef 0, double noundef -1.000000e+00, ptr noundef %i.m, i64 noundef %2, ptr noundef %.049, i64 noundef 1, ptr noundef nonnull %i.n, i64 noundef 1, ptr noundef %.050) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph59
  %i.p = icmp sgt i64 %i.j, 0
  br i1 %i.p, label %bb.f, label %._crit_edge

bb.f:                                             ; preds = %bb.e
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %.049, i64 %.04857 ; 2 uses
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.04857
  %exitcond.peel.not = icmp slt i64 %indvars.iv, 2
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.f, %.peel.next
  %.056 = phi i64 [ %i.z, %.peel.next ], [ 1, %bb.f ] ; 4 uses
  %i.s = add nuw nsw i64 %.056, %.04857
  %i.t = mul nsw i64 %i.s, %2
  %i.u = getelementptr inbounds [8 x i8], ptr %i.r, i64 %i.t
  %i.v = tail call double @ddot_k(i64 noundef %.056, ptr noundef %i.u, i64 noundef 1, ptr noundef %i.q, i64 noundef 1) #3
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.q, i64 %.056 ; 2 uses
  %i.x = load double, ptr %i.w, align 8, !tbaa !8
  %i.y = fsub double %i.x, %i.v
  store double %i.y, ptr %i.w, align 8, !tbaa !8
  %i.z = add nuw nsw i64 %.056, 1                 ; 2 uses
  %exitcond.not = icmp eq i64 %i.z, %i.i
  br i1 %exitcond.not, label %._crit_edge, label %.peel.next, !llvm.loop !10

._crit_edge:                                      ; preds = %.peel.next, %bb.f, %bb.e
  %i.aa = add nuw nsw i64 %.04857, 32             ; 2 uses
  %i.ab = icmp slt i64 %i.aa, %0
  %indvars.iv.next = add i64 %indvars.iv, -32
  br i1 %i.ab, label %.lr.ph59, label %._crit_edge60, !llvm.loop !13

._crit_edge60:                                    ; preds = %._crit_edge, %bb.c
  br i1 %.not, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge60
  %i.ac = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %5, i64 noundef 1, ptr noundef %3, i64 noundef %4) #3 ; 0 uses
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %._crit_edge60
  ret i32 0
}

declare i32 @dcopy_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemv_t(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare double @ddot_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.smin.i64(i64, i64) #2

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umin.i64(i64, i64) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="skylake-avx512" "target-features"="+adx,+aes,+avx,+avx2,+avx512bw,+avx512cd,+avx512dq,+avx512f,+avx512vl,+bmi,+bmi2,+clflushopt,+clwb,+cmov,+crc32,+cx16,+cx8,+f16c,+fma,+fsgsbase,+fxsr,+invpcid,+lzcnt,+mmx,+movbe,+pclmul,+pku,+popcnt,+prfchw,+rdrnd,+rdseed,+sahf,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave,+xsavec,+xsaveopt,+xsaves" }
attributes #2 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #3 = { nounwind }

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
!13 = distinct !{!13, !11}
end_hunk_0
