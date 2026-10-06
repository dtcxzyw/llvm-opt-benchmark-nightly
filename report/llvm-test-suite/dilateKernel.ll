Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/llvm-test-suite/original/dilateKernel?download=true
loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local void @dilateKernel(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef writeonly captures(none) %3, ptr nofree noundef captures(none) %4) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i32 %1 to i64                       ; 6 uses
  %i.b = icmp sgt i32 %0, 0
  %i.c = icmp sgt i32 %1, 0
  %or.cond84 = and i1 %i.b, %i.c
  br i1 %or.cond84, label %.preheader73.preheader, label %._crit_edge83.split

.preheader73.preheader:                           ; preds = %bb.a
  %i.d = zext nneg i32 %1 to i64                  ; 2 uses
  %wide.trip.count103 = zext nneg i32 %0 to i64
  %i.e = icmp ugt i32 %1, 1
  %exitcond.peel.not = icmp eq i32 %1, 1
  %i.f = icmp ugt i32 %1, 2
  %exitcond.peel98.not = icmp eq i32 %1, 2
  br label %bb.b

bb.b:                                             ; preds = %.preheader73.preheader, %._crit_edge
  %indvars.iv100 = phi i64 [ 0, %.preheader73.preheader ], [ %indvars.iv.next101, %._crit_edge ] ; 3 uses
  %i.g = getelementptr inbounds nuw [4096 x i8], ptr %2, i64 %indvars.iv100 ; 7 uses
  %i.h = mul nuw nsw i64 %indvars.iv100, %i.a
  %i.i = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %i.h ; 5 uses
  br i1 %i.e, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store i32 0, ptr %i.i, align 4, !tbaa !7
  br i1 %exitcond.peel.not, label %._crit_edge, label %.thread126

.thread126:                                       ; preds = %bb.c
  %i.j = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.k = load i32, ptr %i.j, align 4, !tbaa !7
  %..059.1.peel93127 = tail call i32 @llvm.smax.i32(i32 %i.k, i32 0)
  br label %.thread128

bb.d:                                             ; preds = %bb.b
  %i.l = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.m = load i32, ptr %i.l, align 4, !tbaa !7
  %..059.2.peel = tail call i32 @llvm.smax.i32(i32 %i.m, i32 0)
  store i32 %..059.2.peel, ptr %i.i, align 4, !tbaa !7
  %i.n = getelementptr inbounds nuw i8, ptr %i.g, i64 4
  %i.o = load i32, ptr %i.n, align 4, !tbaa !7
  %..059.1.peel93 = tail call i32 @llvm.smax.i32(i32 %i.o, i32 0) ; 2 uses
  br i1 %i.f, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %i.g, i64 8
  %i.q = load i32, ptr %i.p, align 4, !tbaa !7
  %..059.2.peel96 = tail call i32 @llvm.smax.i32(i32 %i.q, i32 %..059.1.peel93)
  br label %.thread128

.thread128:                                       ; preds = %.thread126, %bb.e
  %.160.2.peel97.ph = phi i32 [ %..059.1.peel93127, %.thread126 ], [ %..059.2.peel96, %bb.e ]
  %i.r = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %.160.2.peel97.ph, ptr %i.r, align 4, !tbaa !7
  br label %.preheader72.peel.next87.preheader

bb.f:                                             ; preds = %bb.d
  %i.s = getelementptr inbounds nuw i8, ptr %i.i, i64 4
  store i32 %..059.1.peel93, ptr %i.s, align 4, !tbaa !7
  br i1 %exitcond.peel98.not, label %._crit_edge, label %.preheader72.peel.next87.preheader

.preheader72.peel.next87.preheader:               ; preds = %.thread128, %bb.f
  br label %.preheader72

.preheader70.preheader:                           ; preds = %._crit_edge
  %i.t = zext nneg i32 %0 to i64                  ; 2 uses
  %wide.trip.count114 = zext nneg i32 %0 to i64
  br label %.preheader70

.preheader72:                                     ; preds = %.preheader72.peel.next87.preheader, %bb.h
  %indvars.iv = phi i64 [ %indvars.iv.next, %bb.h ], [ 2, %.preheader72.peel.next87.preheader ] ; 5 uses
  %.not = icmp samesign ugt i64 %indvars.iv, %i.d
  br i1 %.not, label %.preheader72.peel.next87, label %5

._crit_edge:                                      ; preds = %bb.h, %bb.f, %bb.c
  %indvars.iv.next101 = add nuw nsw i64 %indvars.iv100, 1 ; 2 uses
  %exitcond104.not = icmp eq i64 %indvars.iv.next101, %wide.trip.count103
  br i1 %exitcond104.not, label %.preheader70.preheader, label %bb.b, !llvm.loop !8

5:                                                ; preds = %.preheader72
  %6 = getelementptr [4 x i8], ptr %i.g, i64 %indvars.iv
  %7 = getelementptr i8, ptr %6, i64 -4
  %8 = load i32, ptr %7, align 4, !tbaa !7
  %..059 = tail call i32 @llvm.smax.i32(i32 %8, i32 0)
  br label %.preheader72.peel.next87

.preheader72.peel.next87:                         ; preds = %.preheader72, %5
  %.160 = phi i32 [ %..059, %5 ], [ 0, %.preheader72 ]
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv
  %i.v = load i32, ptr %i.u, align 4, !tbaa !7
  %..059.1 = tail call i32 @llvm.smax.i32(i32 %i.v, i32 %.160) ; 2 uses
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 4 uses
  %i.w = icmp samesign ult i64 %indvars.iv.next, %i.d
  br i1 %i.w, label %bb.g, label %bb.h

bb.g:                                             ; preds = %.preheader72.peel.next87
  %i.x = getelementptr inbounds nuw [4 x i8], ptr %i.g, i64 %indvars.iv.next
  %i.y = load i32, ptr %i.x, align 4, !tbaa !7
  %..059.2 = tail call i32 @llvm.smax.i32(i32 %i.y, i32 %..059.1)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.preheader72.peel.next87
  %.160.2 = phi i32 [ %..059.2, %bb.g ], [ %..059.1, %.preheader72.peel.next87 ]
  %i.z = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv
  store i32 %.160.2, ptr %i.z, align 4, !tbaa !7
  %exitcond.not = icmp eq i64 %indvars.iv.next, %i.a
  br i1 %exitcond.not, label %._crit_edge, label %.preheader72, !llvm.loop !9

.preheader70:                                     ; preds = %.preheader70.preheader, %._crit_edge81
  %indvars.iv111 = phi i64 [ 0, %.preheader70.preheader ], [ %i.af, %._crit_edge81 ] ; 6 uses
  %i.aa = mul nuw nsw i64 %indvars.iv111, %i.a    ; 2 uses
  %i.ab = getelementptr inbounds nuw [4 x i8], ptr %3, i64 %i.aa
  %i.ac = icmp samesign ugt i64 %indvars.iv111, 1
  %9 = icmp samesign ule i64 %indvars.iv111, %i.t
  %or.cond69 = and i1 %i.ac, %9
  %.not.a = icmp eq i64 %indvars.iv111, 0
  %i.ad = add nsw i64 %indvars.iv111, -1
  %i.ae = mul nuw nsw i64 %i.ad, %i.a
  %i.af = add nuw nsw i64 %indvars.iv111, 1       ; 4 uses
  %i.ag = icmp samesign ult i64 %i.af, %i.t
  %i.ah = mul nuw nsw i64 %i.af, %i.a
  br label %.preheader

._crit_edge83.split:                              ; preds = %._crit_edge81, %bb.a
  ret void

.preheader:                                       ; preds = %.preheader70, %bb.m
  %indvars.iv106 = phi i64 [ 0, %.preheader70 ], [ %indvars.iv.next107, %bb.m ] ; 3 uses
  %invariant.gep = getelementptr inbounds nuw [4 x i8], ptr %4, i64 %indvars.iv106 ; 3 uses
  br i1 %or.cond69, label %.thread131, label %bb.i

._crit_edge81:                                    ; preds = %bb.m
  %exitcond115.not = icmp eq i64 %i.af, %wide.trip.count114
  br i1 %exitcond115.not, label %._crit_edge83.split, label %.preheader70, !llvm.loop !10

.thread131:                                       ; preds = %.preheader
  %gep = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ae
  %i.ai = load i32, ptr %gep, align 4, !tbaa !7
  %..055 = tail call i32 @llvm.smax.i32(i32 %i.ai, i32 0)
  br label %bb.j

bb.i:                                             ; preds = %.preheader
  br i1 %.not.a, label %bb.k, label %bb.j

bb.j:                                             ; preds = %.thread131, %bb.i
  %.1134 = phi i32 [ %..055, %.thread131 ], [ 0, %bb.i ]
  %gep.1 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.aa
  %i.aj = load i32, ptr %gep.1, align 4, !tbaa !7
  %..055.1 = tail call i32 @llvm.smax.i32(i32 %i.aj, i32 %.1134)
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %.1.1 = phi i32 [ %..055.1, %bb.j ], [ 0, %bb.i ] ; 2 uses
  br i1 %i.ag, label %bb.l, label %bb.m

bb.l:                                             ; preds = %bb.k
  %gep.2 = getelementptr inbounds nuw [4 x i8], ptr %invariant.gep, i64 %i.ah
  %i.ak = load i32, ptr %gep.2, align 4, !tbaa !7
  %..055.2 = tail call i32 @llvm.smax.i32(i32 %i.ak, i32 %.1.1)
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.k
  %.1.2 = phi i32 [ %..055.2, %bb.l ], [ %.1.1, %bb.k ]
  %i.al = getelementptr inbounds nuw [4 x i8], ptr %i.ab, i64 %indvars.iv106
  store i32 %.1.2, ptr %i.al, align 4, !tbaa !7
  %indvars.iv.next107 = add nuw nsw i64 %indvars.iv106, 1 ; 2 uses
  %exitcond110.not = icmp eq i64 %indvars.iv.next107, %i.a
  br i1 %exitcond110.not, label %._crit_edge81, label %.preheader, !llvm.loop !11
}

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smax.i32(i32, i32) #1

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!4 = !{!"Simple C/C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!6, !6, i64 0}
!8 = distinct !{!8, !12}
!9 = distinct !{!9, !12, !13}
!10 = distinct !{!10, !12}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.peeled.count", i32 2}
end_hunk_0
