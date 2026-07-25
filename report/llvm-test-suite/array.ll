loop-unroll.NumCompletelyUnrolled: 2
loop-unroll.NumUnrolled: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local noundef ptr @new_Array2D_double(i32 noundef %0, i32 noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = sext i32 %0 to i64
  %i.b = shl nsw i64 %i.a, 3
  %i.c = tail call noalias ptr @malloc(i64 noundef %i.b) #4 ; 6 uses
  %i.d = icmp eq ptr %i.c, null
  br i1 %i.d, label %.critedge, label %.preheader21

.preheader21:                                     ; preds = %bb.a
  %.not23 = icmp sgt i32 %0, 0
  br i1 %.not23, label %.lr.ph, label %.critedge

.lr.ph:                                           ; preds = %.preheader21
  %i.e = sext i32 %1 to i64
  %i.f = shl nsw i64 %i.e, 3
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.c
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.c ] ; 4 uses
  %i.g = tail call noalias ptr @malloc(i64 noundef %i.f) #4 ; 2 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %i.c, i64 %indvars.iv
  store ptr %i.g, ptr %i.h, align 8, !tbaa !8
  %i.i = icmp eq ptr %i.g, null
  br i1 %i.i, label %.preheader, label %bb.c

.preheader:                                       ; preds = %bb.b
  %i.j = icmp samesign ult i64 %indvars.iv, 2
  br i1 %i.j, label %.lr.ph26, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.critedge, label %bb.b, !llvm.loop !11

.lr.ph26:                                         ; preds = %.preheader, %.lr.ph26
  %indvars.iv30 = phi i64 [ %indvars.iv.next31, %.lr.ph26 ], [ %indvars.iv, %.preheader ]
  %indvars.iv.next31 = add nsw i64 %indvars.iv30, -1 ; 2 uses
  %i.k = getelementptr inbounds [8 x i8], ptr %i.c, i64 %indvars.iv.next31
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.l) #5
  br label %.lr.ph26

._crit_edge:                                      ; preds = %.preheader
  tail call void @free(ptr noundef nonnull %i.c) #5
  br label %.critedge

.critedge:                                        ; preds = %bb.c, %.preheader21, %bb.a, %._crit_edge
  %.0 = phi ptr [ null, %bb.a ], [ null, %._crit_edge ], [ %i.c, %.preheader21 ], [ %i.c, %bb.c ]
  ret ptr %.0
}

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #2

; Function Attrs: nounwind memory(readwrite, target_mem: none) uwtable
define dso_local void @Array2D_double_delete(i32 noundef %0, i32 noundef %1, ptr noundef captures(address_is_null) %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq ptr %2, null
  br i1 %i.a, label %bb.b, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph.preheader, label %._crit_edge

.lr.ph.preheader:                                 ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %0 to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %.lr.ph
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %.lr.ph ] ; 2 uses
  %i.c = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  tail call void @free(ptr noundef %i.d) #5
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %.lr.ph, !llvm.loop !13

._crit_edge:                                      ; preds = %.lr.ph, %.preheader
  tail call void @free(ptr noundef nonnull %2) #5
  br label %bb.b

bb.b:                                             ; preds = %bb.a, %._crit_edge
  ret void
}

; Function Attrs: nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define dso_local void @Array2D_double_copy(i32 noundef %0, i32 noundef %1, ptr nofree noundef readonly captures(none) %2, ptr nofree noundef readonly captures(none) %3) local_unnamed_addr #3 {
bb.a:
  %i.a = and i32 %1, 3                            ; 5 uses
  %i.b = icmp sgt i32 %0, 0
  br i1 %i.b, label %.lr.ph41, label %._crit_edge42

.lr.ph41:                                         ; preds = %bb.a
  %.not = icmp eq i32 %i.a, 0                     ; 2 uses
  %i.c = icmp sgt i32 %1, 3
  br i1 %i.c, label %.lr.ph41.split.us, label %.lr.ph41.split

.lr.ph41.split.us:                                ; preds = %.lr.ph41
  br i1 %.not, label %.preheader.us.preheader, label %.lr.ph.us.us.preheader

.lr.ph.us.us.preheader:                           ; preds = %.lr.ph41.split.us
  %i.d = and i32 %1, 3
  %i.e = zext nneg i32 %i.d to i64
  %i.f = zext nneg i32 %1 to i64
  %wide.trip.count62 = zext nneg i32 %0 to i64
  %exitcond55.not = icmp eq i32 %i.a, 1
  %exitcond55.not.1 = icmp eq i32 %i.a, 2
  br label %.lr.ph.us.us

.preheader.us.preheader:                          ; preds = %.lr.ph41.split.us
  %i.g = zext nneg i32 %1 to i64
  %wide.trip.count70 = zext nneg i32 %0 to i64
  br label %.preheader.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv59 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next60, %._crit_edge.us.us ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv59
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv59
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 7 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !14
  store double %i.l, ptr %i.i, align 8, !tbaa !14
  br i1 %exitcond55.not, label %..preheader_crit_edge.us.us.preheader, label %4

4:                                                ; preds = %.lr.ph.us.us
  %5 = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %6 = load double, ptr %5, align 8, !tbaa !14
  %7 = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store double %6, ptr %7, align 8, !tbaa !14
  br i1 %exitcond55.not.1, label %..preheader_crit_edge.us.us.preheader, label %8

8:                                                ; preds = %4
  %9 = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %10 = load double, ptr %9, align 8, !tbaa !14
  %11 = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store double %10, ptr %11, align 8, !tbaa !14
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %8, %4, %.lr.ph.us.us
  br label %..preheader_crit_edge.us.us

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv56 = phi i64 [ %indvars.iv.next57, %..preheader_crit_edge.us.us ], [ %i.e, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv56
  %i.n = load double, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv56
  store double %i.n, ptr %i.o, align 8, !tbaa !14
  %i.p = add nuw nsw i64 %indvars.iv56, 1         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p
  store double %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = add nuw nsw i64 %indvars.iv56, 2         ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t
  store double %i.v, ptr %i.w, align 8, !tbaa !14
  %i.x = add nuw nsw i64 %indvars.iv56, 3         ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.x
  store double %i.z, ptr %i.aa, align 8, !tbaa !14
  %indvars.iv.next57 = add nuw nsw i64 %indvars.iv56, 4 ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next57, %i.f
  br i1 %i.ab, label %..preheader_crit_edge.us.us, label %._crit_edge.us.us, !llvm.loop !16

._crit_edge.us.us:                                ; preds = %..preheader_crit_edge.us.us
  %indvars.iv.next60 = add nuw nsw i64 %indvars.iv59, 1 ; 2 uses
  %exitcond63.not = icmp eq i64 %indvars.iv.next60, %wide.trip.count62
  br i1 %exitcond63.not, label %._crit_edge42, label %.lr.ph.us.us, !llvm.loop !17

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv67 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next68, %._crit_edge.us ] ; 3 uses
  %i.ac = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv67
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !8  ; 4 uses
  %i.ae = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv67
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !8  ; 4 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %bb.b
  %indvars.iv64 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next65, %bb.b ] ; 6 uses
  %i.ag = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %indvars.iv64
  %i.ah = load double, ptr %i.ag, align 8, !tbaa !14
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %indvars.iv64
  store double %i.ah, ptr %i.ai, align 8, !tbaa !14
  %i.aj = or disjoint i64 %indvars.iv64, 1        ; 2 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.aj
  %i.al = load double, ptr %i.ak, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.aj
  store double %i.al, ptr %i.am, align 8, !tbaa !14
  %i.an = or disjoint i64 %indvars.iv64, 2        ; 2 uses
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.an
  %i.ap = load double, ptr %i.ao, align 8, !tbaa !14
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.an
  store double %i.ap, ptr %i.aq, align 8, !tbaa !14
  %i.ar = or disjoint i64 %indvars.iv64, 3        ; 2 uses
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.af, i64 %i.ar
  %i.at = load double, ptr %i.as, align 8, !tbaa !14
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.ad, i64 %i.ar
  store double %i.at, ptr %i.au, align 8, !tbaa !14
  %indvars.iv.next65 = add nuw nsw i64 %indvars.iv64, 4 ; 2 uses
  %i.av = icmp samesign ult i64 %indvars.iv.next65, %i.g
  br i1 %i.av, label %bb.b, label %._crit_edge.us, !llvm.loop !16

._crit_edge.us:                                   ; preds = %bb.b
  %indvars.iv.next68 = add nuw nsw i64 %indvars.iv67, 1 ; 2 uses
  %exitcond71.not = icmp eq i64 %indvars.iv.next68, %wide.trip.count70
  br i1 %exitcond71.not, label %._crit_edge42, label %.preheader.us, !llvm.loop !17

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %.not, label %._crit_edge42, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %.lr.ph41.split
  %wide.trip.count49 = zext nneg i32 %0 to i64
  %exitcond.not = icmp eq i32 %i.a, 1
  %exitcond.not.1 = icmp eq i32 %i.a, 2
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %..preheader_crit_edge
  %indvars.iv46 = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next47, %..preheader_crit_edge ] ; 3 uses
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv46
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !8  ; 3 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv46
  %i.az = load ptr, ptr %i.ay, align 8, !tbaa !8  ; 3 uses
  %i.ba = load double, ptr %i.az, align 8, !tbaa !14
  store double %i.ba, ptr %i.ax, align 8, !tbaa !14
  br i1 %exitcond.not, label %..preheader_crit_edge, label %bb.c

..preheader_crit_edge:                            ; preds = %bb.d, %bb.c, %.lr.ph
  %indvars.iv.next47 = add nuw nsw i64 %indvars.iv46, 1 ; 2 uses
  %exitcond50.not = icmp eq i64 %indvars.iv.next47, %wide.trip.count49
  br i1 %exitcond50.not, label %._crit_edge42, label %.lr.ph, !llvm.loop !17

bb.c:                                             ; preds = %.lr.ph
  %i.bb = getelementptr inbounds nuw i8, ptr %i.az, i64 8
  %i.bc = load double, ptr %i.bb, align 8, !tbaa !14
  %i.bd = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store double %i.bc, ptr %i.bd, align 8, !tbaa !14
  br i1 %exitcond.not.1, label %..preheader_crit_edge, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.be = getelementptr inbounds nuw i8, ptr %i.az, i64 16
  %i.bf = load double, ptr %i.be, align 8, !tbaa !14
  %i.bg = getelementptr inbounds nuw i8, ptr %i.ax, i64 16
  store double %i.bf, ptr %i.bg, align 8, !tbaa !14
  br label %..preheader_crit_edge

._crit_edge42:                                    ; preds = %..preheader_crit_edge, %._crit_edge.us.us, %._crit_edge.us, %.lr.ph41.split, %bb.a
  ret void
}

attributes #0 = { nounwind memory(readwrite, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nounwind allocsize(0) }
attributes #5 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"p1 double", !10, i64 0}
!10 = !{!"any pointer", !6, i64 0}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = distinct !{!13, !12}
!14 = !{!15, !15, i64 0}
!15 = !{!"double", !6, i64 0}
!16 = distinct !{!16, !12}
!17 = distinct !{!17, !12}
end_hunk_0
