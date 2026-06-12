begin_hunk_0_@new_Array2D_double:bb.a
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
  %wide.trip.count68 = zext nneg i32 %0 to i64
  %exitcond61.not = icmp eq i32 %i.a, 1
  %exitcond61.not.1 = icmp eq i32 %i.a, 2
  br label %.lr.ph.us.us

.preheader.us.preheader:                          ; preds = %.lr.ph41.split.us
  %i.g = zext nneg i32 %1 to i64
  %wide.trip.count76 = zext nneg i32 %0 to i64
  br label %.preheader.us

.lr.ph.us.us:                                     ; preds = %.lr.ph.us.us.preheader, %._crit_edge.us.us
  %indvars.iv65 = phi i64 [ 0, %.lr.ph.us.us.preheader ], [ %indvars.iv.next66, %._crit_edge.us.us ] ; 3 uses
  %i.h = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv65
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !8    ; 7 uses
  %i.j = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv65
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !8    ; 7 uses
  %i.l = load double, ptr %i.k, align 8, !tbaa !14
  store double %i.l, ptr %i.i, align 8, !tbaa !14
  br i1 %exitcond61.not, label %..preheader_crit_edge.us.us.preheader, label %bb.b

..preheader_crit_edge.us.us:                      ; preds = %..preheader_crit_edge.us.us.preheader, %..preheader_crit_edge.us.us
  %indvars.iv62 = phi i64 [ %indvars.iv.next63, %..preheader_crit_edge.us.us ], [ %i.e, %..preheader_crit_edge.us.us.preheader ] ; 6 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %indvars.iv62
  %i.n = load double, ptr %i.m, align 8, !tbaa !14
  %i.o = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %indvars.iv62
  store double %i.n, ptr %i.o, align 8, !tbaa !14
  %i.p = add nuw nsw i64 %indvars.iv62, 1         ; 2 uses
  %i.q = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.p
  %i.r = load double, ptr %i.q, align 8, !tbaa !14
  %i.s = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.p
  store double %i.r, ptr %i.s, align 8, !tbaa !14
  %i.t = add nuw nsw i64 %indvars.iv62, 2         ; 2 uses
  %i.u = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.t
  %i.v = load double, ptr %i.u, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.t
  store double %i.v, ptr %i.w, align 8, !tbaa !14
  %i.x = add nuw nsw i64 %indvars.iv62, 3         ; 2 uses
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.x
  %i.z = load double, ptr %i.y, align 8, !tbaa !14
  %i.aa = getelementptr inbounds nuw [8 x i8], ptr %i.i, i64 %i.x
  store double %i.z, ptr %i.aa, align 8, !tbaa !14
  %indvars.iv.next63 = add nuw nsw i64 %indvars.iv62, 4 ; 2 uses
  %i.ab = icmp samesign ult i64 %indvars.iv.next63, %i.f
  br i1 %i.ab, label %..preheader_crit_edge.us.us, label %._crit_edge.us.us, !llvm.loop !16

bb.b:                                             ; preds = %.lr.ph.us.us
  %i.ac = getelementptr inbounds nuw i8, ptr %i.k, i64 8
  %i.ad = load double, ptr %i.ac, align 8, !tbaa !14
  %i.ae = getelementptr inbounds nuw i8, ptr %i.i, i64 8
  store double %i.ad, ptr %i.ae, align 8, !tbaa !14
  br i1 %exitcond61.not.1, label %..preheader_crit_edge.us.us.preheader, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.af = getelementptr inbounds nuw i8, ptr %i.k, i64 16
  %i.ag = load double, ptr %i.af, align 8, !tbaa !14
  %i.ah = getelementptr inbounds nuw i8, ptr %i.i, i64 16
  store double %i.ag, ptr %i.ah, align 8, !tbaa !14
  br label %..preheader_crit_edge.us.us.preheader

..preheader_crit_edge.us.us.preheader:            ; preds = %bb.c, %bb.b, %.lr.ph.us.us
  br label %..preheader_crit_edge.us.us

._crit_edge.us.us:                                ; preds = %..preheader_crit_edge.us.us
  %indvars.iv.next66 = add nuw nsw i64 %indvars.iv65, 1 ; 2 uses
  %exitcond69.not = icmp eq i64 %indvars.iv.next66, %wide.trip.count68
  br i1 %exitcond69.not, label %._crit_edge42, label %.lr.ph.us.us, !llvm.loop !17

.preheader.us:                                    ; preds = %.preheader.us.preheader, %._crit_edge.us
  %indvars.iv73 = phi i64 [ 0, %.preheader.us.preheader ], [ %indvars.iv.next74, %._crit_edge.us ] ; 3 uses
  %i.ai = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv73
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !8  ; 4 uses
  %i.ak = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv73
  %i.al = load ptr, ptr %i.ak, align 8, !tbaa !8  ; 4 uses
  br label %bb.d

bb.d:                                             ; preds = %.preheader.us, %bb.d
  %indvars.iv70 = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next71, %bb.d ] ; 6 uses
  %i.am = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %indvars.iv70
  %i.an = load double, ptr %i.am, align 8, !tbaa !14
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %indvars.iv70
  store double %i.an, ptr %i.ao, align 8, !tbaa !14
  %i.ap = or disjoint i64 %indvars.iv70, 1        ; 2 uses
  %i.aq = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ap
  %i.ar = load double, ptr %i.aq, align 8, !tbaa !14
  %i.as = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ap
  store double %i.ar, ptr %i.as, align 8, !tbaa !14
  %i.at = or disjoint i64 %indvars.iv70, 2        ; 2 uses
  %i.au = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.at
  %i.av = load double, ptr %i.au, align 8, !tbaa !14
  %i.aw = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.at
  store double %i.av, ptr %i.aw, align 8, !tbaa !14
  %i.ax = or disjoint i64 %indvars.iv70, 3        ; 2 uses
  %i.ay = getelementptr inbounds nuw [8 x i8], ptr %i.al, i64 %i.ax
  %i.az = load double, ptr %i.ay, align 8, !tbaa !14
  %i.ba = getelementptr inbounds nuw [8 x i8], ptr %i.aj, i64 %i.ax
  store double %i.az, ptr %i.ba, align 8, !tbaa !14
  %indvars.iv.next71 = add nuw nsw i64 %indvars.iv70, 4 ; 2 uses
  %i.bb = icmp samesign ult i64 %indvars.iv.next71, %i.g
  br i1 %i.bb, label %bb.d, label %._crit_edge.us, !llvm.loop !16

._crit_edge.us:                                   ; preds = %bb.d
  %indvars.iv.next74 = add nuw nsw i64 %indvars.iv73, 1 ; 2 uses
  %exitcond77.not = icmp eq i64 %indvars.iv.next74, %wide.trip.count76
  br i1 %exitcond77.not, label %._crit_edge42, label %.preheader.us, !llvm.loop !17

.lr.ph41.split:                                   ; preds = %.lr.ph41
  br i1 %.not, label %._crit_edge42, label %.lr.ph.us46.preheader

.lr.ph.us46.preheader:                            ; preds = %.lr.ph41.split
  %wide.trip.count55 = zext nneg i32 %0 to i64
  %exitcond.not = icmp eq i32 %i.a, 1
  %exitcond.not.1 = icmp eq i32 %i.a, 2
  br label %.lr.ph.us46

.lr.ph.us46:                                      ; preds = %.lr.ph.us46.preheader, %..preheader_crit_edge.us47
  %indvars.iv52 = phi i64 [ 0, %.lr.ph.us46.preheader ], [ %indvars.iv.next53, %..preheader_crit_edge.us47 ] ; 3 uses
  %i.bc = getelementptr inbounds nuw [8 x i8], ptr %2, i64 %indvars.iv52
  %i.bd = load ptr, ptr %i.bc, align 8, !tbaa !8  ; 3 uses
  %i.be = getelementptr inbounds nuw [8 x i8], ptr %3, i64 %indvars.iv52
  %i.bf = load ptr, ptr %i.be, align 8, !tbaa !8  ; 3 uses
  %i.bg = load double, ptr %i.bf, align 8, !tbaa !14
  store double %i.bg, ptr %i.bd, align 8, !tbaa !14
  br i1 %exitcond.not, label %..preheader_crit_edge.us47, label %bb.e

bb.e:                                             ; preds = %.lr.ph.us46
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bf, i64 8
  %i.bi = load double, ptr %i.bh, align 8, !tbaa !14
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bd, i64 8
  store double %i.bi, ptr %i.bj, align 8, !tbaa !14
  br i1 %exitcond.not.1, label %..preheader_crit_edge.us47, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bf, i64 16
  %i.bl = load double, ptr %i.bk, align 8, !tbaa !14
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  store double %i.bl, ptr %i.bm, align 8, !tbaa !14
  br label %..preheader_crit_edge.us47

..preheader_crit_edge.us47:                       ; preds = %bb.f, %bb.e, %.lr.ph.us46
  %indvars.iv.next53 = add nuw nsw i64 %indvars.iv52, 1 ; 2 uses
  %exitcond56.not = icmp eq i64 %indvars.iv.next53, %wide.trip.count55
  br i1 %exitcond56.not, label %._crit_edge42, label %.lr.ph.us46, !llvm.loop !17

._crit_edge42:                                    ; preds = %..preheader_crit_edge.us47, %._crit_edge.us.us, %._crit_edge.us, %.lr.ph41.split, %bb.a
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
