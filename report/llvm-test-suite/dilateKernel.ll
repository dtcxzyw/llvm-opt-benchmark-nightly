begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dilateKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = icmp sgt i32 %0, 0                       ; 2 uses
  %i.c = icmp sgt i32 %1, 0
  %or.cond84 = and i1 %i.b, %i.c
  br i1 %or.cond84, label %.preheader73.preheader, label %._crit_edge82

.preheader73.preheader:                           ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %wide.trip.count103 = zext nneg i32 %0 to i64
  %exitcond.peel.not = icmp eq i32 %1, 1
  %i.e = icmp ugt i32 %1, 2
  %exitcond.peel98.not = icmp eq i32 %1, 2
  br label %bb.b

bb.b:                                             ; preds = %.preheader73.preheader, %._crit_edge.us
  %indvars.iv100 = phi i64 [ 0, %.preheader73.preheader ], [ %indvars.iv.next101, %._crit_edge.us ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv100 ; 6 uses
  %i.g = mul nuw nsw i64 %indvars.iv100, %i.a
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.g ; 5 uses
  br i1 %exitcond.peel.not, label %.thread126, label %bb.c

.thread126:                                       ; preds = %bb.b
  store i32 0, ptr %i.h, align 4, !tbaa !4
  br label %._crit_edge.us

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %..059.2.peel = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  store i32 %..059.2.peel, ptr %i.h, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %..059.1.peel93 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0) ; 2 uses
  br i1 %i.e, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %..059.2.peel96 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %..059.1.peel93)
  %5 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %..059.2.peel96, ptr %5, align 4, !tbaa !4
  br label %.preheader70.preheader

bb.e:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %..059.1.peel93, ptr %i.o, align 4, !tbaa !4
  br i1 %exitcond.peel98.not, label %._crit_edge.us, label %.preheader70.preheader

.preheader70.preheader:                           ; preds = %bb.d, %bb.e
  br label %.preheader72.peel.next87

.preheader72.peel.next87:                         ; preds = %.preheader70.preheader, %bb.g
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.g ], [ 2, %.preheader70.preheader ] ; 4 uses
  %i.p = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %..059 = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %i.t)
  %..059.1 = tail call i32 @llvm.smax.i32(i32 %..059, i32 0) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.u, label %bb.f, label %bb.g

bb.f:                                             ; preds = %.preheader72.peel.next87
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %..059.2 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %..059.1)
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.preheader72.peel.next87
  %.160.2 = phi i32 [ %..059.2, %bb.f ], [ %..059.1, %.preheader72.peel.next87 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.160.2, ptr %i.x, align 4, !tbaa !4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge.us, label %.preheader72.peel.next87, !llvm.loop !8

._crit_edge.us:                                   ; preds = %bb.g, %.thread126, %bb.e
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %.preheader71, label %bb.b, !llvm.loop !11

.preheader71:                                     ; preds = %._crit_edge.us
  br i1 %i.b, label %.preheader70.us.preheader, label %._crit_edge82

.preheader70.us.preheader:                        ; preds = %.preheader71
  %6 = zext nneg i32 %0 to i64
  %wide.trip.count114 = zext nneg i32 %0 to i64
  br label %.preheader70

.preheader70:                                     ; preds = %.preheader70.us.preheader, %._crit_edge.us83
  %indvars.iv111 = phi i64 [ 0, %.preheader70.us.preheader ], [ %i.ad, %._crit_edge.us83 ] ; 5 uses
  %i.y = mul nuw nsw i64 %indvars.iv111, %i.a     ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y
  %i.aa = icmp samesign ugt i64 %indvars.iv111, 1
  %.not = icmp eq i64 %indvars.iv111, 0
  %i.ab = add nsw i64 %indvars.iv111, -1
  %i.ac = mul nuw nsw i64 %i.ab, %i.a
  %i.ad = add nuw nsw i64 %indvars.iv111, 1       ; 4 uses
  %i.ae = icmp samesign ult i64 %i.ad, %6
  %i.af = mul nuw nsw i64 %i.ad, %i.a
  br label %.preheader.us

.thread131:                                       ; preds = %.preheader.us
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.us, i64 %i.ac
  %i.ag = load i32, ptr %gep, align 4, !tbaa !4
  %..055 = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  br label %bb.i

bb.h:                                             ; preds = %.preheader.us
  br i1 %.not, label %bb.j, label %bb.i

bb.i:                                             ; preds = %.thread131, %bb.h
  %.1134 = phi i32 [ %..055, %.thread131 ], [ 0, %bb.h ]
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.us, i64 %i.y
  %i.ah = load i32, ptr %gep.1, align 4, !tbaa !4
  %..055.1 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %.1134)
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h
  %.1.1 = phi i32 [ %..055.1, %bb.i ], [ 0, %bb.h ] ; 2 uses
  br i1 %i.ae, label %bb.k, label %bb.l

bb.k:                                             ; preds = %bb.j
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep.us, i64 %i.af
  %i.ai = load i32, ptr %gep.2, align 4, !tbaa !4
  %..055.2 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %.1.1)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  %.1.2 = phi i32 [ %..055.2, %bb.k ], [ %.1.1, %bb.j ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv106
  store i32 %.1.2, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %i.a
  br i1 %exitcond110.not, label %._crit_edge.us83, label %.preheader.us, !llvm.loop !12

.preheader.us:                                    ; preds = %.preheader70, %bb.l
  %indvars.iv106 = phi i64 [ 0, %.preheader70 ], [ %indvars.iv.next107, %bb.l ] ; 3 uses
  %invariant.gep.us = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106 ; 3 uses
  br i1 %i.aa, label %.thread131, label %bb.h

._crit_edge.us83:                                 ; preds = %bb.l
  %exitcond115.not = icmp eq i64 %i.ad, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge82, label %.preheader70, !llvm.loop !13

._crit_edge82:                                    ; preds = %._crit_edge.us83, %bb.a, %.preheader71
  ret void
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!8 = distinct !{!8, !9, !10}
!9 = !{!"llvm.loop.mustprogress"}
!10 = !{!"llvm.loop.peeled.count", i32 2}
!11 = distinct !{!11, !9}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
end_hunk_0
