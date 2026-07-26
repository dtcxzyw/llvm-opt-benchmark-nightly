begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define noundef range(i32 -255, 256) i32 @_ZN4absl12lts_2024011616strings_internal10memcasecmpEPKcS3_m(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %.not4146.not = icmp eq i64 %2, 0
  br i1 %.not4146.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %.thread
  %.03647 = phi i64 [ %i.n, %.thread ], [ 0, %bb.a ] ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 %.03647
  %i.b = load i8, ptr %i.a, align 1, !tbaa !7     ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 %.03647
  %i.d = load i8, ptr %i.c, align 1, !tbaa !7     ; 4 uses
  %.not = icmp eq i8 %i.b, %i.d
  br i1 %.not, label %.thread, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.e = add i8 %i.b, -65
  %or.cond = icmp ult i8 %i.e, 26
  %i.f = add i8 %i.b, 32
  %i.g = select i1 %or.cond, i8 %i.f, i8 %i.b
  %i.h = add i8 %i.d, -65
  %or.cond7 = icmp ult i8 %i.h, 26
  %i.i = add i8 %i.d, 32
  %i.j = select i1 %or.cond7, i8 %i.i, i8 %i.d
  %i.k = zext i8 %i.g to i32
  %i.l = zext i8 %i.j to i32
  %i.m = sub nsw i32 %i.k, %i.l                   ; 2 uses
  %.not40 = icmp eq i32 %i.m, 0
  br i1 %.not40, label %.thread, label %._crit_edge

.thread:                                          ; preds = %.lr.ph, %bb.b
  %i.n = add nuw i64 %.03647, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.n, %2
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.b, %.thread, %bb.a
  %spec.select = phi i32 [ 0, %bb.a ], [ 0, %.thread ], [ %i.m, %bb.b ]
  ret i32 %spec.select
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!5, !5, i64 0}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
end_hunk_0
