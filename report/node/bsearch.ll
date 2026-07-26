begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define dso_local ptr @ossl_bsearch(ptr noundef %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr nofree noundef readonly captures(none) %4, i32 noundef %5) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i32 %2, 0
  br i1 %i.a, label %bb.f, label %.preheader57

.preheader57:                                     ; preds = %bb.a
  %i.b = icmp sgt i32 %2, 0
  br i1 %i.b, label %.lr.ph, label %.thread

.lr.ph:                                           ; preds = %.preheader57, %bb.d
  %.03763 = phi i32 [ %.138, %bb.d ], [ %2, %.preheader57 ] ; 2 uses
  %.03962 = phi i32 [ %.140, %bb.d ], [ 0, %.preheader57 ] ; 2 uses
  %i.c = add nuw nsw i32 %.03763, %.03962
  %i.d = lshr i32 %i.c, 1                         ; 5 uses
  %i.e = mul nsw i32 %i.d, %3
  %i.f = sext i32 %i.e to i64
  %i.g = getelementptr inbounds i8, ptr %1, i64 %i.f ; 3 uses
  %i.h = tail call i32 %4(ptr noundef %0, ptr noundef %i.g) #1 ; 2 uses
  %i.i = icmp slt i32 %i.h, 0
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %.not = icmp eq i32 %i.h, 0
  br i1 %.not, label %.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.j = add nuw nsw i32 %i.d, 1
  br label %bb.d

bb.d:                                             ; preds = %.lr.ph, %bb.c
  %.140 = phi i32 [ %i.j, %bb.c ], [ %.03962, %.lr.ph ] ; 2 uses
  %.138 = phi i32 [ %.03763, %bb.c ], [ %i.d, %.lr.ph ] ; 2 uses
  %i.k = icmp slt i32 %.140, %.138
  br i1 %i.k, label %.lr.ph, label %._crit_edge, !llvm.loop !10

._crit_edge:                                      ; preds = %bb.d
  %i.l = and i32 %5, 1
  %.not45 = icmp eq i32 %i.l, 0
  br i1 %.not45, label %bb.f, label %.thread

.thread:                                          ; preds = %bb.b, %.preheader57, %._crit_edge
  %.not4456 = phi i1 [ true, %._crit_edge ], [ false, %.preheader57 ], [ false, %bb.b ]
  %.155 = phi ptr [ %i.g, %._crit_edge ], [ null, %.preheader57 ], [ %i.g, %bb.b ]
  %.13554 = phi i32 [ %i.d, %._crit_edge ], [ 0, %.preheader57 ], [ %i.d, %bb.b ] ; 2 uses
  %i.m = and i32 %5, 2
  %.not46 = icmp eq i32 %i.m, 0
  %or.cond47 = or i1 %.not46, %.not4456
  br i1 %or.cond47, label %bb.f, label %.preheader.preheader

.preheader.preheader:                             ; preds = %.thread
  %i.n = sext i32 %3 to i64
  %.not89 = icmp eq i32 %.13554, 0
  br i1 %.not89, label %.critedge, label %.lr.ph88

.lr.ph88:                                         ; preds = %.preheader.preheader
  %i.o = zext nneg i32 %.13554 to i64
  br label %bb.e

.preheader:                                       ; preds = %bb.e
  %i.p = icmp sgt i64 %indvars.iv87, 1
  br i1 %i.p, label %bb.e, label %.critedge, !llvm.loop !12

bb.e:                                             ; preds = %.lr.ph88, %.preheader
  %indvars.iv87 = phi i64 [ %i.o, %.lr.ph88 ], [ %indvars.iv.next, %.preheader ] ; 3 uses
  %indvars.iv.next = add nsw i64 %indvars.iv87, -1 ; 2 uses
  %i.q = mul nsw i64 %indvars.iv.next, %i.n
  %i.r = getelementptr inbounds i8, ptr %1, i64 %i.q
  %i.s = tail call i32 %4(ptr noundef %0, ptr noundef %i.r) #1
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.preheader, label %.critedge.split.loop.exit81, !llvm.loop !12

.critedge.split.loop.exit81:                      ; preds = %bb.e
  %i.u = trunc nuw nsw i64 %indvars.iv87 to i32
  %i.v = mul nsw i32 %3, %i.u
  %i.w = sext i32 %i.v to i64
  br label %.critedge

.critedge:                                        ; preds = %.preheader, %.preheader.preheader, %.critedge.split.loop.exit81
  %.236.lcssa = phi i64 [ %i.w, %.critedge.split.loop.exit81 ], [ 0, %.preheader.preheader ], [ 0, %.preheader ]
  %i.x = getelementptr inbounds i8, ptr %1, i64 %.236.lcssa
  br label %bb.f

bb.f:                                             ; preds = %.critedge, %.thread, %._crit_edge, %bb.a
  %.041 = phi ptr [ null, %bb.a ], [ %i.x, %.critedge ], [ null, %._crit_edge ], [ %.155, %.thread ]
  ret ptr %.041
}

attributes #0 = { nounwind uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!5}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!5 = !{!6, !7, i64 0}
!6 = !{!"__libc_errno", !7, i64 0}
!7 = !{!"int", !8, i64 0}
!8 = !{!"omnipotent char", !9, i64 0}
!9 = !{!"Simple C/C++ TBAA"}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
!12 = distinct !{!12, !11}
end_hunk_0
