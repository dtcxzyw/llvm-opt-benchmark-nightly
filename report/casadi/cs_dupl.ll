begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: nounwind uwtable
define i32 @cs_dupl(ptr noundef %0) local_unnamed_addr #0 {
bb.a:
  %.not = icmp eq ptr %0, null
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %i.c = icmp eq i32 %i.b, -1
  br i1 %i.c, label %bb.c, label %bb.g

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.e = load i32, ptr %i.d, align 4, !tbaa !13   ; 3 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.g = load i32, ptr %i.f, align 8, !tbaa !14   ; 3 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !15   ; 4 uses
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !16   ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !17   ; 4 uses
  %i.n = tail call ptr @cs_malloc(i32 noundef %i.e, i64 noundef 4) #3 ; 4 uses
  %.not60 = icmp eq ptr %i.n, null
  br i1 %.not60, label %bb.g, label %.preheader62

.preheader62:                                     ; preds = %bb.c
  %i.o = icmp sgt i32 %i.e, 0
  br i1 %i.o, label %.lr.ph.preheader, label %.preheader

.lr.ph.preheader:                                 ; preds = %.preheader62
  %i.p = zext nneg i32 %i.e to i64
  %i.q = shl nuw nsw i64 %i.p, 2
  tail call void @llvm.memset.p0.i64(ptr nonnull align 4 %i.n, i8 -1, i64 %i.q, i1 false), !tbaa !18
  br label %.preheader

.preheader:                                       ; preds = %.lr.ph.preheader, %.preheader62
  %i.r = icmp sgt i32 %i.g, 0
  br i1 %i.r, label %.lr.ph70.preheader, label %._crit_edge71

.lr.ph70.preheader:                               ; preds = %.preheader
  %wide.trip.count = zext nneg i32 %i.g to i64
  %.pre = load i32, ptr %i.i, align 4, !tbaa !18
  br label %.lr.ph70

.lr.ph70:                                         ; preds = %.lr.ph70.preheader, %._crit_edge
  %i.s = phi i32 [ %.pre, %.lr.ph70.preheader ], [ %i.at, %._crit_edge ] ; 2 uses
  %indvars.iv75 = phi i64 [ 0, %.lr.ph70.preheader ], [ %indvars.iv.next76, %._crit_edge ] ; 2 uses
  %.05568 = phi i32 [ 0, %.lr.ph70.preheader ], [ %.1.lcssa, %._crit_edge ] ; 4 uses
  %i.t = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv75
  %indvars.iv.next76 = add nuw nsw i64 %indvars.iv75, 1 ; 3 uses
  %i.u = getelementptr inbounds nuw [4 x i8], ptr %i.i, i64 %indvars.iv.next76 ; 2 uses
  %i.v = load i32, ptr %i.u, align 4, !tbaa !18   ; 3 uses
  %i.w = icmp slt i32 %i.s, %i.v
  br i1 %i.w, label %.lr.ph66.preheader, label %._crit_edge

.lr.ph66.preheader:                               ; preds = %.lr.ph70
  %i.x = sext i32 %i.s to i64
  br label %.lr.ph66

.lr.ph66:                                         ; preds = %.lr.ph66.preheader, %bb.f
  %i.y = phi i32 [ %i.v, %.lr.ph66.preheader ], [ %i.aq, %bb.f ]
  %indvars.iv = phi i64 [ %i.x, %.lr.ph66.preheader ], [ %indvars.iv.next, %bb.f ] ; 4 uses
  %.164 = phi i32 [ %.05568, %.lr.ph66.preheader ], [ %.2, %bb.f ] ; 4 uses
  %i.z = getelementptr inbounds [4 x i8], ptr %i.k, i64 %indvars.iv
  %i.aa = load i32, ptr %i.z, align 4, !tbaa !18  ; 2 uses
  %i.ab = sext i32 %i.aa to i64
  %i.ac = getelementptr inbounds [4 x i8], ptr %i.n, i64 %i.ab ; 2 uses
  %i.ad = load i32, ptr %i.ac, align 4, !tbaa !18 ; 2 uses
  %.not61 = icmp slt i32 %i.ad, %.05568
  br i1 %.not61, label %bb.e, label %bb.d

bb.d:                                             ; preds = %.lr.ph66
  %i.ae = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.af = load double, ptr %i.ae, align 8, !tbaa !19
  %i.ag = sext i32 %i.ad to i64
  %i.ah = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ag ; 2 uses
  %i.ai = load double, ptr %i.ah, align 8, !tbaa !19
  %i.aj = fadd double %i.af, %i.ai
  store double %i.aj, ptr %i.ah, align 8, !tbaa !19
  br label %bb.f

bb.e:                                             ; preds = %.lr.ph66
  store i32 %.164, ptr %i.ac, align 4, !tbaa !18
  %i.ak = sext i32 %.164 to i64                   ; 2 uses
  %i.al = getelementptr inbounds [4 x i8], ptr %i.k, i64 %i.ak
  store i32 %i.aa, ptr %i.al, align 4, !tbaa !18
  %i.am = getelementptr inbounds [8 x i8], ptr %i.m, i64 %indvars.iv
  %i.an = load double, ptr %i.am, align 8, !tbaa !19
  %i.ao = add nsw i32 %.164, 1
  %i.ap = getelementptr inbounds [8 x i8], ptr %i.m, i64 %i.ak
  store double %i.an, ptr %i.ap, align 8, !tbaa !19
  %.pre78 = load i32, ptr %i.u, align 4, !tbaa !18
  br label %bb.f

bb.f:                                             ; preds = %bb.d, %bb.e
  %i.aq = phi i32 [ %i.y, %bb.d ], [ %.pre78, %bb.e ] ; 3 uses
  %.2 = phi i32 [ %.164, %bb.d ], [ %i.ao, %bb.e ] ; 2 uses
  %indvars.iv.next = add nsw i64 %indvars.iv, 1   ; 2 uses
  %i.ar = sext i32 %i.aq to i64
  %i.as = icmp slt i64 %indvars.iv.next, %i.ar
  br i1 %i.as, label %.lr.ph66, label %._crit_edge, !llvm.loop !21

._crit_edge:                                      ; preds = %bb.f, %.lr.ph70
  %i.at = phi i32 [ %i.v, %.lr.ph70 ], [ %i.aq, %bb.f ]
  %.1.lcssa = phi i32 [ %.05568, %.lr.ph70 ], [ %.2, %bb.f ] ; 2 uses
  store i32 %.05568, ptr %i.t, align 4, !tbaa !18
  %exitcond.not = icmp eq i64 %indvars.iv.next76, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge71, label %.lr.ph70, !llvm.loop !23

._crit_edge71:                                    ; preds = %._crit_edge, %.preheader
  %.055.lcssa = phi i32 [ 0, %.preheader ], [ %.1.lcssa, %._crit_edge ]
  %i.au = sext i32 %i.g to i64
  %i.av = getelementptr inbounds [4 x i8], ptr %i.i, i64 %i.au
  store i32 %.055.lcssa, ptr %i.av, align 4, !tbaa !18
  %i.aw = tail call ptr @cs_free(ptr noundef nonnull %i.n) #3 ; 0 uses
  %i.ax = tail call i32 @cs_sprealloc(ptr noundef nonnull %0, i32 noundef 0) #3
  br label %bb.g

bb.g:                                             ; preds = %bb.c, %bb.a, %bb.b, %._crit_edge71
  %.0 = phi i32 [ %i.ax, %._crit_edge71 ], [ 0, %bb.a ], [ 0, %bb.b ], [ 0, %bb.c ]
  ret i32 %.0
}

declare ptr @cs_malloc(i32 noundef, i64 noundef) local_unnamed_addr #1

declare ptr @cs_free(ptr noundef) local_unnamed_addr #1

declare i32 @cs_sprealloc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #2

attributes #0 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #3 = { nounwind }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 24.0.0 (++20260802081851+e18c3ea02484-1~exp1~20260802082001.1761)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C/C++ TBAA"}
!8 = !{!9, !5, i64 40}
!9 = !{!"cs_sparse", !5, i64 0, !5, i64 4, !5, i64 8, !10, i64 16, !10, i64 24, !12, i64 32, !5, i64 40}
!10 = !{!"p1 int", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!"p1 double", !11, i64 0}
!13 = !{!9, !5, i64 4}
!14 = !{!9, !5, i64 8}
!15 = !{!9, !10, i64 16}
!16 = !{!9, !10, i64 24}
!17 = !{!9, !12, i64 32}
!18 = !{!5, !5, i64 0}
!19 = !{!20, !20, i64 0}
!20 = !{!"double", !6, i64 0}
!21 = distinct !{!21, !22}
!22 = !{!"llvm.loop.mustprogress"}
!23 = distinct !{!23, !22}
end_hunk_0
