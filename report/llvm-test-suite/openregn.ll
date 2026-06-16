begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@p = external local_unnamed_addr global [19 x [19 x i8]], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define dso_local range(i32 0, 2) i32 @openregion(i32 noundef %0, i32 noundef %1, i32 noundef %2, i32 noundef %3) local_unnamed_addr #0 {
bb.a:
  %. = tail call i32 @llvm.smax.i32(i32 %0, i32 %2)
  %.027 = tail call i32 @llvm.smax.i32(i32 %1, i32 %3)
  %i.a = tail call i32 @llvm.smin.i32(i32 %3, i32 %1)
  %smin = sext i32 %i.a to i64
  %4 = sext i32 %.027 to i64
  %i.b = tail call i32 @llvm.smin.i32(i32 %2, i32 %0)
  %smin43 = sext i32 %i.b to i64
  %5 = sext i32 %. to i64
  br label %.preheader

.preheader:                                       ; preds = %bb.a, %bb.d
  %indvars.iv44 = phi i64 [ %smin43, %bb.a ], [ %indvars.iv.next45, %bb.d ] ; 2 uses
  %i.c = getelementptr inbounds [19 x i8], ptr @p, i64 %indvars.iv44
  br label %bb.c

bb.b:                                             ; preds = %bb.c
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %.not36 = icmp sgt i64 %indvars.iv.next, %4
  br i1 %.not36, label %bb.d, label %bb.c, !llvm.loop !8

bb.c:                                             ; preds = %.preheader, %bb.b
  %indvars.iv = phi i64 [ %smin, %.preheader ], [ %indvars.iv.next, %bb.b ] ; 2 uses
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %indvars.iv
  %i.e = load i8, ptr %i.d, align 1, !tbaa !10
  %.not37 = icmp eq i8 %i.e, 0
  br i1 %.not37, label %bb.b, label %.loopexit

bb.d:                                             ; preds = %bb.b
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1 ; 2 uses
  %.not = icmp sgt i64 %indvars.iv.next45, %5
  br i1 %.not, label %.loopexit, label %.preheader, !llvm.loop !11

.loopexit:                                        ; preds = %bb.d, %bb.c
  %.028 = phi i32 [ 0, %bb.c ], [ 1, %bb.d ]
  ret i32 %.028
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #1

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(read, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!5, !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!6, !6, i64 0}
!11 = distinct !{!11, !9}
end_hunk_0
