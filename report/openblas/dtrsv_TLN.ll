Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/openblas/original/dtrsv_TLN?download=true
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define noundef i32 @dtrsv_TLN(i64 noundef %0, ptr noundef %1, i64 noundef %2, ptr noundef %3, i64 noundef %4, ptr noundef %5) local_unnamed_addr #0 {
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
  %.055 = phi ptr [ %i.f, %bb.b ], [ %5, %bb.a ]
  %.0 = phi ptr [ %5, %bb.b ], [ %3, %bb.a ]      ; 3 uses
  %i.h = icmp sgt i64 %0, 0
  br i1 %i.h, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.c, %.loopexit
  %.05662 = phi i64 [ %i.al, %.loopexit ], [ %0, %bb.c ] ; 11 uses
  %umin = tail call i64 @llvm.umin.i64(i64 %.05662, i64 32) ; 4 uses
  %.not71 = icmp eq i64 %0, %.05662
  br i1 %.not71, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph
  %i.i = sub nuw nsw i64 %0, %.05662
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %1, i64 %.05662
  %i.k = sub nsw i64 %.05662, %umin
  %i.l = mul nsw i64 %i.k, %2
  %i.m = getelementptr inbounds [8 x i8], ptr %i.j, i64 %i.l
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.0, i64 %.05662 ; 2 uses
  %i.o = sub nsw i64 0, %umin
  %i.p = getelementptr inbounds [8 x i8], ptr %i.n, i64 %i.o
  %i.q = tail call i32 @dgemv_t(i64 noundef %i.i, i64 noundef %umin, i64 noundef 0, double noundef -1.000000e+00, ptr noundef nonnull %i.m, i64 noundef %2, ptr noundef nonnull %i.n, i64 noundef 1, ptr noundef nonnull %i.p, i64 noundef 1, ptr noundef %.055) #3 ; 0 uses
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %.lr.ph
  %i.r = add nsw i64 %.05662, -1                  ; 3 uses
  %i.s = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.r ; 2 uses
  %.pre64 = load double, ptr %i.s, align 8, !tbaa !8
  %i.t = getelementptr inbounds [8 x i8], ptr %1, i64 %i.r
  %i.u = mul nsw i64 %i.r, %2
  %i.v = getelementptr inbounds [8 x i8], ptr %i.t, i64 %i.u
  %.pre = load double, ptr %i.v, align 8, !tbaa !8
  %i.w = fdiv double %.pre64, %.pre
  store double %i.w, ptr %i.s, align 8, !tbaa !8
  %exitcond.peel.not = icmp samesign ult i64 %.05662, 2
  br i1 %exitcond.peel.not, label %._crit_edge, label %.peel.next

.peel.next:                                       ; preds = %bb.e, %.peel.next
  %.05761 = phi i64 [ %i.ak, %.peel.next ], [ 1, %bb.e ] ; 3 uses
  %i.x = xor i64 %.05761, -1
  %i.y = add nsw i64 %.05662, %i.x                ; 3 uses
  %i.z = getelementptr inbounds [8 x i8], ptr %1, i64 %i.y
  %i.aa = mul nsw i64 %i.y, %2
  %i.ab = getelementptr inbounds [8 x i8], ptr %i.z, i64 %i.aa ; 2 uses
  %i.ac = getelementptr inbounds [8 x i8], ptr %.0, i64 %i.y ; 4 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ab, i64 8
  %i.ae = getelementptr inbounds nuw i8, ptr %i.ac, i64 8
  %i.af = tail call double @ddot_k(i64 noundef %.05761, ptr noundef nonnull %i.ad, i64 noundef 1, ptr noundef nonnull %i.ae, i64 noundef 1) #3
  %i.ag = load double, ptr %i.ac, align 8, !tbaa !8
  %i.ah = fsub double %i.ag, %i.af                ; 2 uses
  store double %i.ah, ptr %i.ac, align 8, !tbaa !8
  %i.ai = load double, ptr %i.ab, align 8, !tbaa !8
  %i.aj = fdiv double %i.ah, %i.ai
  store double %i.aj, ptr %i.ac, align 8, !tbaa !8
  %i.ak = add nuw nsw i64 %.05761, 1              ; 2 uses
  %exitcond.not = icmp eq i64 %umin, %i.ak
  br i1 %exitcond.not, label %.loopexit, label %.peel.next, !llvm.loop !10

.loopexit:                                        ; preds = %.peel.next
  %i.al = add nsw i64 %.05662, -32
  %i.am = icmp sgt i64 %.05662, 32
  br i1 %i.am, label %.lr.ph, label %._crit_edge, !llvm.loop !13

._crit_edge:                                      ; preds = %bb.e, %.loopexit, %bb.c
  br i1 %.not, label %bb.g, label %bb.f

bb.f:                                             ; preds = %._crit_edge
  %i.an = tail call i32 @dcopy_k(i64 noundef %0, ptr noundef %5, i64 noundef 1, ptr noundef %3, i64 noundef %4) #3 ; 0 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %._crit_edge
  ret i32 0
}

declare i32 @dcopy_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

declare i32 @dgemv_t(i64 noundef, i64 noundef, i64 noundef, double noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef, ptr noundef) local_unnamed_addr #1

declare double @ddot_k(i64 noundef, ptr noundef, i64 noundef, ptr noundef, i64 noundef) local_unnamed_addr #1

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
