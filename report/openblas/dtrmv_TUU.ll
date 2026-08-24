Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrmv_TUU?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrmv_TUU(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
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
  %.057 = phi ptr [ %i.f, %bb.b ], [ %5, %bb.a ]
  %.0 = phi ptr [ %5, %bb.b ], [ %3, %bb.a ]      ; 3 uses
  %i.h = icmp sgt i64 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %8
  %.05865 = phi i64 [ %9, %8 ], [ %0, %bb.c ]     ; 6 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.05865, i64 32) ; 6 uses
  %i.i = add nsw i64 %umin, -1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.f
  %.05964 = phi i64 [ 0, %.lr.ph ], [ %i.x, %bb.f ] ; 3 uses
  %i.j = icmp slt i64 %.05964, %i.i
  br i1 %i.j, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.k = xor i64 %.05964, -1                      ; 2 uses
  %i.l = add nsw i64 %.05865, %i.k                ; 3 uses
  %i.m = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.l ; 3 uses
  %i.n = getelementptr inbounds [8 x i8], ptr %1, i64 %i.l
  %i.o = mul nsw i64 %i.l, %2
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = add nsw i64 %umin, %i.k                  ; 2 uses
  %i.r = sub nsw i64 0, %i.q                      ; 2 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %i.p, i64 %i.r
  %i.t = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.r
  %i.u = tail call double @ddot_k(i64 noundef %i.q, ptr noundef %i.s, i64 noundef 1, ptr noundef %i.t, i64 noundef 1) #3
  %i.v = load double, ptr %i.m, align 8, !tbaa !8
  %i.w = fadd double %i.u, %i.v
  store double %i.w, ptr %i.m, align 8, !tbaa !8
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.d
  %i.x = add nuw nsw i64 %.05964, 1               ; 2 uses
  %exitcond.not = icmp eq i64 %i.x, %umin
  br i1 %exitcond.not, label %bb.g, label %bb.d, !llvm.loop !10

bb.g:                                             ; preds = %bb.f
  %6 = sub nsw i64 %.05865, %umin                 ; 3 uses
  %7 = icmp sgt i64 %6, 0
  br i1 %7, label %bb.h, label %8

bb.h:                                             ; preds = %bb.g
  %i.y = mul nsw i64 %6, %2
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %i.y
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.05865
  %i.ab = sub nsw i64 0, %umin
  %i.ac = getelementptr inbounds [8 x i8], ptr %i.aa, i64 %i.ab
  %i.ad = tail call i32 @dgemv_t(i64 noundef %6, i64 noundef %umin, i64 noundef 0, double noundef 1.000000e+00, ptr noundef %i.z, i64 noundef %2, ptr noundef %.0, i64 noundef 1, ptr noundef nonnull %i.ac, i64 noundef 1, ptr noundef %.057) #3 ; 0 uses
  br label %8

8:                                                ; preds = %bb.g, %bb.h
  %9 = add nsw i64 %.05865, -32
  %10 = icmp sgt i64 %.05865, 32
  br i1 %10, label %.lr.ph, label %._crit_edge, !llvm.loop !12

._crit_edge:                                      ; preds = %8, %bb.c
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %._crit_edge
  %i.ae = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %5, i64 noundef 1, ptr noundef %3, i64 noundef %4) #3 ; 0 uses
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %._crit_edge
  ret i32 0
}

declare i32 @dcopy_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare double @ddot_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemv_t(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

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
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
end_hunk_0
