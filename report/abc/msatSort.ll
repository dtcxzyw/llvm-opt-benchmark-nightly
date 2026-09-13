Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abc/original/msatSort?download=true
inline.NumInlined: 3
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define void @Msat_SolverSortDB(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = tail call ptr @Msat_SolverReadLearned(ptr noundef %0) #2 ; 2 uses
  %i.b = tail call i32 @Msat_ClauseVecReadSize(ptr noundef %i.a) #2
  %i.c = tail call ptr @Msat_ClauseVecReadArray(ptr noundef %i.a) #2
  tail call fastcc void @Msat_SolverSort(ptr noundef %i.c, i32 noundef %i.b)
  ret void
}

declare ptr @Msat_SolverReadLearned(ptr noundef) local_unnamed_addr #1

declare i32 @Msat_ClauseVecReadSize(ptr noundef) local_unnamed_addr #1

declare ptr @Msat_ClauseVecReadArray(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind uwtable
define internal fastcc void @Msat_SolverSort(ptr nofree noundef captures(none) %0, i32 noundef %1) unnamed_addr #0 {
bb.a:
  %i.a = icmp slt i32 %1, 16
  br i1 %i.a, label %tailrecurse._crit_edge, label %.lr.ph

tailrecurse._crit_edge:                           ; preds = %tailrecurse, %bb.a
  %.tr.lcssa = phi ptr [ %0, %bb.a ], [ %i.ad, %tailrecurse ] ; 4 uses
  %.tr40.lcssa = phi i32 [ %1, %bb.a ], [ %i.an, %tailrecurse ] ; 3 uses
  %i.b = icmp sgt i32 %.tr40.lcssa, 1
  br i1 %i.b, label %.lr.ph27.preheader.i, label %Msat_SolverSortSelection.exit

.lr.ph27.preheader.i:                             ; preds = %tailrecurse._crit_edge
  %i.c = add nsw i32 %.tr40.lcssa, -1
  %wide.trip.count35.i = zext nneg i32 %i.c to i64
  %wide.trip.count.i = zext nneg i32 %.tr40.lcssa to i64
  br label %.lr.ph.preheader.i

.lr.ph.preheader.i:                               ; preds = %._crit_edge.i, %.lr.ph27.preheader.i
  %indvars.iv32.i = phi i64 [ 0, %.lr.ph27.preheader.i ], [ %indvars.iv.next33.i, %._crit_edge.i ] ; 3 uses
  %indvars.iv.i = phi i64 [ 1, %.lr.ph27.preheader.i ], [ %indvars.iv.next.i, %._crit_edge.i ] ; 2 uses
  %i.d = trunc nuw nsw i64 %indvars.iv32.i to i32
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i, %.lr.ph.preheader.i
  %indvars.iv29.i = phi i64 [ %indvars.iv.i, %.lr.ph.preheader.i ], [ %indvars.iv.next30.i, %.lr.ph.i ] ; 3 uses
  %.024.i = phi i32 [ %i.d, %.lr.ph.preheader.i ], [ %spec.select.i, %.lr.ph.i ] ; 2 uses
  %i.e = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %indvars.iv29.i
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !12
  %i.g = tail call float @Msat_ClauseReadActivity(ptr noundef %i.f) #2
  %i.h = sext i32 %.024.i to i64
  %i.i = getelementptr inbounds [8 x i8], ptr %.tr.lcssa, i64 %i.h
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !12
  %i.k = tail call float @Msat_ClauseReadActivity(ptr noundef %i.j) #2
  %i.l = fcmp olt float %i.g, %i.k
  %i.m = trunc nuw nsw i64 %indvars.iv29.i to i32
  %spec.select.i = select i1 %i.l, i32 %i.m, i32 %.024.i ; 2 uses
  %indvars.iv.next30.i = add nuw nsw i64 %indvars.iv29.i, 1 ; 2 uses
  %exitcond.not.i = icmp eq i64 %indvars.iv.next30.i, %wide.trip.count.i
  br i1 %exitcond.not.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i
  %indvars.iv.next33.i = add nuw nsw i64 %indvars.iv32.i, 1 ; 2 uses
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %.tr.lcssa, i64 %indvars.iv32.i ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !12
  %i.p = sext i32 %spec.select.i to i64
  %i.q = getelementptr inbounds [8 x i8], ptr %.tr.lcssa, i64 %i.p ; 2 uses
  %i.r = load ptr, ptr %i.q, align 8, !tbaa !12
  store ptr %i.r, ptr %i.n, align 8, !tbaa !12
  store ptr %i.o, ptr %i.q, align 8, !tbaa !12
  %indvars.iv.next.i = add nuw nsw i64 %indvars.iv.i, 1
  %exitcond36.not.i = icmp eq i64 %indvars.iv.next33.i, %wide.trip.count35.i
  br i1 %exitcond36.not.i, label %Msat_SolverSortSelection.exit, label %.lr.ph.preheader.i, !llvm.loop !1

.lr.ph:                                           ; preds = %bb.a, %tailrecurse
  %.tr4047 = phi i32 [ %i.an, %tailrecurse ], [ %1, %bb.a ] ; 3 uses
  %.tr46 = phi ptr [ %i.ad, %tailrecurse ], [ %0, %bb.a ] ; 6 uses
  %i.s = uitofp nneg i32 %.tr4047 to double
  %i.t = fmul nnan double %i.s, f0x3FD898F6823131ED
  %i.u = fptosi double %i.t to i32
  %2 = sext i32 %i.u to i64
  %i.v = getelementptr inbounds [8 x i8], ptr %.tr46, i64 %2
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !12   ; 2 uses
  %i.x = zext nneg i32 %.tr4047 to i64
  br label %bb.b

bb.b:                                             ; preds = %bb.f, %.lr.ph
  %.033 = phi i64 [ -1, %.lr.ph ], [ %indvars.iv.next, %bb.f ]
  %.0 = phi i64 [ %i.x, %.lr.ph ], [ %indvars.iv.next56, %bb.f ]
  br label %bb.c

bb.c:                                             ; preds = %bb.c, %bb.b
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.c ], [ %.033, %bb.b ]
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 6 uses
  %i.y = getelementptr inbounds [8 x i8], ptr %.tr46, i64 %indvars.iv.next
  %i.z = load ptr, ptr %i.y, align 8, !tbaa !12
  %i.aa = tail call float @Msat_ClauseReadActivity(ptr noundef %i.z) #2
  %i.ab = tail call float @Msat_ClauseReadActivity(ptr noundef %i.w) #2
  %i.ac = fcmp olt float %i.aa, %i.ab
  br i1 %i.ac, label %bb.c, label %.preheader, !llvm.loop !14

.preheader:                                       ; preds = %bb.c
  %i.ad = getelementptr inbounds [8 x i8], ptr %.tr46, i64 %indvars.iv.next ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader, %bb.d
  %indvars.iv55 = phi i64 [ %.0, %.preheader ], [ %indvars.iv.next56, %bb.d ]
  %indvars.iv.next56 = add nsw i64 %indvars.iv55, -1 ; 5 uses
  %i.ae = tail call float @Msat_ClauseReadActivity(ptr noundef %i.w) #2
  %i.af = getelementptr inbounds [8 x i8], ptr %.tr46, i64 %indvars.iv.next56
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !12
  %i.ah = tail call float @Msat_ClauseReadActivity(ptr noundef %i.ag) #2
  %i.ai = fcmp olt float %i.ae, %i.ah
  br i1 %i.ai, label %bb.d, label %bb.e, !llvm.loop !15

bb.e:                                             ; preds = %bb.d
  %.not = icmp slt i64 %indvars.iv.next, %indvars.iv.next56
  br i1 %.not, label %bb.f, label %tailrecurse

bb.f:                                             ; preds = %bb.e
  %i.aj = getelementptr inbounds [8 x i8], ptr %.tr46, i64 %indvars.iv.next56 ; 2 uses
  %i.ak = load ptr, ptr %i.ad, align 8, !tbaa !12
  %i.al = load ptr, ptr %i.aj, align 8, !tbaa !12
  store ptr %i.al, ptr %i.ad, align 8, !tbaa !12
  store ptr %i.ak, ptr %i.aj, align 8, !tbaa !12
  br label %bb.b

tailrecurse:                                      ; preds = %bb.e
  %i.am = trunc nsw i64 %indvars.iv.next to i32   ; 2 uses
  tail call fastcc void @Msat_SolverSort(ptr noundef nonnull %.tr46, i32 noundef %i.am)
  %i.an = sub nsw i32 %.tr4047, %i.am             ; 3 uses
  %i.ao = icmp slt i32 %i.an, 16
  br i1 %i.ao, label %tailrecurse._crit_edge, label %.lr.ph

Msat_SolverSortSelection.exit:                    ; preds = %._crit_edge.i, %tailrecurse._crit_edge
  ret void
}

; Function Attrs: nounwind uwtable
define void @Msat_SolverSortSelection(ptr nofree noundef captures(none) %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %1, 1
  br i1 %i.a, label %.lr.ph27.preheader, label %._crit_edge28

.lr.ph27.preheader:                               ; preds = %bb.a
  %i.b = add nsw i32 %1, -1
  %wide.trip.count35 = zext nneg i32 %i.b to i64
  %wide.trip.count = zext nneg i32 %1 to i64
  br label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %._crit_edge, %.lr.ph27.preheader
  %indvars.iv32 = phi i64 [ 0, %.lr.ph27.preheader ], [ %indvars.iv.next33, %._crit_edge ] ; 3 uses
  %indvars.iv = phi i64 [ 1, %.lr.ph27.preheader ], [ %indvars.iv.next, %._crit_edge ] ; 2 uses
  %indvars.iv.next33 = add nuw nsw i64 %indvars.iv32, 1 ; 2 uses
  %i.c = trunc nuw nsw i64 %indvars.iv32 to i32
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv29 = phi i64 [ %indvars.iv, %.lr.ph.preheader ], [ %indvars.iv.next30, %.lr.ph ] ; 3 uses
  %.024 = phi i32 [ %i.c, %.lr.ph.preheader ], [ %spec.select, %.lr.ph ] ; 2 uses
  %i.d = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv29
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !12
  %i.f = tail call float @Msat_ClauseReadActivity(ptr noundef %i.e) #2
  %i.g = sext i32 %.024 to i64
  %i.h = getelementptr inbounds [8 x i8], ptr %0, i64 %i.g
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !12
  %i.j = tail call float @Msat_ClauseReadActivity(ptr noundef %i.i) #2
  %i.k = fcmp olt float %i.f, %i.j
  %i.l = trunc nuw nsw i64 %indvars.iv29 to i32
  %spec.select = select i1 %i.k, i32 %i.l, i32 %.024 ; 2 uses
  %indvars.iv.next30 = add nuw nsw i64 %indvars.iv29, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next30, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !0

._crit_edge:                                      ; preds = %.lr.ph
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %0, i64 %indvars.iv32 ; 2 uses
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !12
  %i.o = sext i32 %spec.select to i64
  %i.p = getelementptr inbounds [8 x i8], ptr %0, i64 %i.o ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !12
  store ptr %i.q, ptr %i.m, align 8, !tbaa !12
  store ptr %i.n, ptr %i.p, align 8, !tbaa !12
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1
  %exitcond36.not = icmp eq i64 %indvars.iv.next33, %wide.trip.count35
  br i1 %exitcond36.not, label %._crit_edge28, label %.lr.ph.preheader, !llvm.loop !1

._crit_edge28:                                    ; preds = %._crit_edge, %bb.a
  ret void
}

declare float @Msat_ClauseReadActivity(ptr noundef) local_unnamed_addr #1

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!2, !3}
!llvm.ident = !{!4}
!llvm.errno.tbaa = !{!9}

!0 = distinct !{!0, !13}
!1 = distinct !{!1, !13}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"uwtable", i32 2}
!4 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!5 = !{!"Simple C/C++ TBAA"}
!6 = !{!"omnipotent char", !5, i64 0}
!7 = !{!"int", !6, i64 0}
!8 = !{!"__libc_errno", !7, i64 0}
!9 = !{!8, !7, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = !{!"p1 _ZTS14Msat_Clause_t_", !10, i64 0}
!12 = !{!11, !11, i64 0}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
end_hunk_0
