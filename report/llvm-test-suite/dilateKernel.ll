begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dilateKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = icmp sgt i32 %0, 0
  %i.c = icmp sgt i32 %1, 0
  %or.cond = and i1 %i.b, %i.c
  br i1 %or.cond, label %.preheader73.us.preheader, label %._crit_edge83.split

.preheader73.us.preheader:                        ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64
  %wide.trip.count103 = zext nneg i32 %0 to i64
  %5 = icmp ugt i32 %1, 1
  %.not.a = icmp eq i32 %1, 1
  %i.e = icmp ugt i32 %1, 2
  %exitcond.peel98.not = icmp eq i32 %1, 2
  br label %bb.b

bb.b:                                             ; preds = %.preheader73.us.preheader, %._crit_edge
  %indvars.iv100 = phi i64 [ 0, %.preheader73.us.preheader ], [ %indvars.iv.next101, %._crit_edge ] ; 3 uses
  %i.f = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv100 ; 7 uses
  %i.g = mul nuw nsw i64 %indvars.iv100, %i.a
  %i.h = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.g ; 5 uses
  br i1 %5, label %bb.c, label %6

6:                                                ; preds = %bb.b
  store i32 0, ptr %i.h, align 4, !tbaa !4
  br i1 %.not.a, label %._crit_edge, label %.thread

.thread:                                          ; preds = %6
  %7 = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %8 = load i32, ptr %7, align 4, !tbaa !4
  %..059.1.peel93127 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  br label %.thread128

bb.c:                                             ; preds = %bb.b
  %i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.j = load i32, ptr %i.i, align 4, !tbaa !4
  %..059.us.2.peel = tail call i32 @llvm.smax.i32(i32 %i.j, i32 0)
  store i32 %..059.us.2.peel, ptr %i.h, align 4, !tbaa !4
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 4
  %i.l = load i32, ptr %i.k, align 4, !tbaa !4
  %..059.us.1.peel93 = tail call i32 @llvm.smax.i32(i32 %i.l, i32 0) ; 2 uses
  br i1 %i.e, label %.thread125, label %bb.d

.thread125:                                       ; preds = %bb.c
  %i.m = getelementptr inbounds nuw i8, ptr %i.f, i64 8
  %i.n = load i32, ptr %i.m, align 4, !tbaa !4
  %..059.us.2.peel96 = tail call i32 @llvm.smax.i32(i32 %i.n, i32 %..059.us.1.peel93)
  br label %.thread128

.thread128:                                       ; preds = %.thread, %.thread125
  %.160.2.peel97.ph = phi i32 [ %..059.1.peel93127, %.thread ], [ %..059.us.2.peel96, %.thread125 ]
  %9 = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %.160.2.peel97.ph, ptr %9, align 4, !tbaa !4
  br label %.preheader72.peel.next87.preheader

bb.d:                                             ; preds = %bb.c
  %i.o = getelementptr inbounds nuw i8, ptr %i.h, i64 4
  store i32 %..059.us.1.peel93, ptr %i.o, align 4, !tbaa !4
  br i1 %exitcond.peel98.not, label %._crit_edge, label %.preheader72.peel.next87.preheader

.preheader72.peel.next87.preheader:               ; preds = %.thread128, %bb.d
  br label %.preheader72.us.peel.next87

.preheader72.us.peel.next87.preheader:            ; preds = %._crit_edge
  %10 = zext nneg i32 %0 to i64
  %wide.trip.count114 = zext nneg i32 %0 to i64
  br label %.preheader70.us

._crit_edge:                                      ; preds = %bb.f, %bb.d, %6
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %.preheader72.us.peel.next87.preheader, label %bb.b, !llvm.loop !8

.preheader72.us.peel.next87:                      ; preds = %.preheader72.peel.next87.preheader, %bb.f
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.f ], [ 2, %.preheader72.peel.next87.preheader ] ; 4 uses
  %i.p = getelementptr [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.q = getelementptr i8, ptr %i.p, i64 -4
  %i.r = load i32, ptr %i.q, align 4, !tbaa !4
  %i.s = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv
  %i.t = load i32, ptr %i.s, align 4, !tbaa !4
  %..059.us = tail call i32 @llvm.smax.i32(i32 %i.r, i32 %i.t)
  %..059.us.1 = tail call i32 @llvm.smax.i32(i32 %..059.us, i32 0) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.u = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.u, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.preheader72.us.peel.next87
  %i.v = getelementptr inbounds nuw [4 x i8], ptr %i.f, i64 %indvars.iv.next
  %i.w = load i32, ptr %i.v, align 4, !tbaa !4
  %..059.us.2 = tail call i32 @llvm.smax.i32(i32 %i.w, i32 %..059.us.1)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.preheader72.us.peel.next87
  %.160.us.2 = phi i32 [ %..059.us.2, %bb.e ], [ %..059.us.1, %.preheader72.us.peel.next87 ]
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.h, i64 %indvars.iv
  store i32 %.160.us.2, ptr %i.x, align 4, !tbaa !4
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.preheader72.us.peel.next87, !llvm.loop !10

.preheader70.us:                                  ; preds = %.preheader72.us.peel.next87.preheader, %._crit_edge81
  %indvars.iv111 = phi i64 [ 0, %.preheader72.us.peel.next87.preheader ], [ %i.ad, %._crit_edge81 ] ; 5 uses
  %i.y = mul nuw nsw i64 %indvars.iv111, %i.a     ; 2 uses
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.y
  %i.aa = icmp samesign ugt i64 %indvars.iv111, 1
  %.not122 = icmp eq i64 %indvars.iv111, 0
  %i.ab = add nsw i64 %indvars.iv111, -1
  %i.ac = mul nuw nsw i64 %i.ab, %i.a
  %i.ad = add nuw nsw i64 %indvars.iv111, 1       ; 4 uses
  %i.ae = icmp samesign ult i64 %i.ad, %10
  %i.af = mul nuw nsw i64 %i.ad, %i.a
  br label %.preheader

._crit_edge83.split:                              ; preds = %._crit_edge81, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader70.us, %bb.k
  %indvars.iv106 = phi i64 [ 0, %.preheader70.us ], [ %indvars.iv.next107, %bb.k ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106 ; 3 uses
  br i1 %i.aa, label %.thread129, label %bb.g

._crit_edge81:                                    ; preds = %bb.k
  %exitcond115.not = icmp eq i64 %i.ad, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge83.split, label %.preheader70.us, !llvm.loop !12

.thread129:                                       ; preds = %.preheader
  %gep.us = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ac
  %i.ag = load i32, ptr %gep.us, align 4, !tbaa !4
  %..055.us = tail call i32 @llvm.smax.i32(i32 %i.ag, i32 0)
  br label %bb.h

bb.g:                                             ; preds = %.preheader
  br i1 %.not122, label %bb.i, label %bb.h

bb.h:                                             ; preds = %.thread129, %bb.g
  %.1.us132 = phi i32 [ %..055.us, %.thread129 ], [ 0, %bb.g ]
  %gep.us.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.y
  %i.ah = load i32, ptr %gep.us.1, align 4, !tbaa !4
  %..055.us.1 = tail call i32 @llvm.smax.i32(i32 %i.ah, i32 %.1.us132)
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.1.us.1 = phi i32 [ %..055.us.1, %bb.h ], [ 0, %bb.g ] ; 2 uses
  br i1 %i.ae, label %bb.j, label %bb.k

bb.j:                                             ; preds = %bb.i
  %gep.us.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.af
  %i.ai = load i32, ptr %gep.us.2, align 4, !tbaa !4
  %..055.us.2 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 %.1.us.1)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.us.2 = phi i32 [ %..055.us.2, %bb.j ], [ %.1.us.1, %bb.i ]
  %i.aj = getelementptr inbounds nuw [4 x i8], ptr %i.z, i64 %indvars.iv106
  store i32 %.1.us.2, ptr %i.aj, align 4, !tbaa !4
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %i.a
  br i1 %exitcond110.not, label %._crit_edge81, label %.preheader, !llvm.loop !13
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
!8 = distinct !{!8, !9}
!9 = !{!"llvm.loop.mustprogress"}
!10 = distinct !{!10, !9, !11}
!11 = !{!"llvm.loop.peeled.count", i32 2}
!12 = distinct !{!12, !9}
!13 = distinct !{!13, !9}
end_hunk_0
