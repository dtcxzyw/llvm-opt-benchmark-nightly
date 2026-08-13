begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_Py_ctype_tolower = external local_unnamed_addr constant [256 x i8], align 16

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -255, 256) i32 @PyOS_mystrnicmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1, i64 noundef %2) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp eq i64 %2, 0
  br i1 %i.a, label %bb.e, label %.preheader

.preheader:                                       ; preds = %bb.a
  %i.b = add i64 %2, -1                           ; 2 uses
  %i.c = icmp sgt i64 %i.b, 0
  br i1 %i.c, label %.lr.ph.preheader, label %.critedge

.lr.ph.preheader:                                 ; preds = %.preheader
  %3 = getelementptr i8, ptr %0, i64 %2
  %scevgep = getelementptr i8, ptr %3, i64 -1
  %scevgep.a = getelementptr i8, ptr %1, i64 %2
  %scevgep32 = getelementptr i8, ptr %scevgep.a, i64 -1
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %i.d = phi i64 [ %i.p, %bb.d ], [ %i.b, %.lr.ph.preheader ] ; 2 uses
  %.021 = phi ptr [ %i.o, %bb.d ], [ %1, %.lr.ph.preheader ] ; 5 uses
  %.01220 = phi ptr [ %i.n, %bb.d ], [ %0, %.lr.ph.preheader ] ; 5 uses
  %i.e = load i8, ptr %.01220, align 1, !tbaa !11 ; 2 uses
  %.not = icmp eq i8 %i.e, 0
  br i1 %.not, label %.critedge, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.f = load i8, ptr %.021, align 1, !tbaa !11   ; 2 uses
  %.not19 = icmp eq i8 %i.f, 0
  br i1 %.not19, label %.critedge, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = zext i8 %i.e to i64
  %i.h = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = zext i8 %i.f to i64
  %i.k = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.j
  %i.l = load i8, ptr %i.k, align 1, !tbaa !11
  %i.m = icmp eq i8 %i.i, %i.l
  br i1 %i.m, label %bb.d, label %.critedge

bb.d:                                             ; preds = %bb.c
  %i.n = getelementptr i8, ptr %.01220, i64 1
  %i.o = getelementptr i8, ptr %.021, i64 1
  %i.p = add nsw i64 %i.d, -1
  %i.q = icmp sgt i64 %i.d, 1
  br i1 %i.q, label %.lr.ph, label %.critedge, !llvm.loop !12

.critedge:                                        ; preds = %bb.c, %bb.d, %.lr.ph, %bb.b, %.preheader
  %.012.lcssa = phi ptr [ %0, %.preheader ], [ %.01220, %bb.b ], [ %.01220, %.lr.ph ], [ %scevgep, %bb.d ], [ %.01220, %bb.c ]
  %.0.lcssa = phi ptr [ %1, %.preheader ], [ %.021, %bb.b ], [ %.021, %.lr.ph ], [ %scevgep32, %bb.d ], [ %.021, %bb.c ]
  %i.r = load i8, ptr %.012.lcssa, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i32
  %i.w = load i8, ptr %.0.lcssa, align 1, !tbaa !11
  %i.x = zext i8 %i.w to i64
  %i.y = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.x
  %i.z = load i8, ptr %i.y, align 1, !tbaa !11
  %i.aa = zext i8 %i.z to i32
  %i.ab = sub nsw i32 %i.v, %i.aa
  br label %bb.e

bb.e:                                             ; preds = %bb.a, %.critedge
  %.014 = phi i32 [ %i.ab, %.critedge ], [ 0, %bb.a ]
  ret i32 %.014
}

; Function Attrs: nofree norecurse nosync nounwind memory(argmem: read) uwtable
define dso_local range(i32 -255, 256) i32 @PyOS_mystricmp(ptr nofree noundef readonly captures(none) %0, ptr nofree noundef readonly captures(none) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !11      ; 2 uses
  %.not14 = icmp eq i8 %i.a, 0
  br i1 %.not14, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.c
  %i.b = phi i8 [ %i.m, %bb.c ], [ %i.a, %bb.a ]  ; 3 uses
  %.016 = phi ptr [ %i.l, %bb.c ], [ %1, %bb.a ]  ; 4 uses
  %.01015 = phi ptr [ %i.k, %bb.c ], [ %0, %bb.a ]
  %i.c = load i8, ptr %.016, align 1, !tbaa !11   ; 2 uses
  %.not13 = icmp eq i8 %i.c, 0
  br i1 %.not13, label %.critedge.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.d = zext i8 %i.b to i64
  %i.e = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.d
  %i.f = load i8, ptr %i.e, align 1, !tbaa !11
  %i.g = zext i8 %i.c to i64
  %i.h = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.g
  %i.i = load i8, ptr %i.h, align 1, !tbaa !11
  %i.j = icmp eq i8 %i.f, %i.i
  br i1 %i.j, label %bb.c, label %.critedge.loopexit

bb.c:                                             ; preds = %bb.b
  %i.k = getelementptr i8, ptr %.01015, i64 1     ; 2 uses
  %i.l = getelementptr i8, ptr %.016, i64 1       ; 2 uses
  %i.m = load i8, ptr %i.k, align 1, !tbaa !11    ; 2 uses
  %.not = icmp eq i8 %i.m, 0
  br i1 %.not, label %.critedge.loopexit, label %.lr.ph, !llvm.loop !14

.critedge.loopexit:                               ; preds = %.lr.ph, %bb.c, %bb.b
  %.0.lcssa.ph = phi ptr [ %.016, %bb.b ], [ %i.l, %bb.c ], [ %.016, %.lr.ph ]
  %.lcssa.ph = phi i8 [ %i.b, %bb.b ], [ 0, %bb.c ], [ %i.b, %.lr.ph ]
  %i.n = zext i8 %.lcssa.ph to i64
  br label %.critedge

.critedge:                                        ; preds = %.critedge.loopexit, %bb.a
  %.0.lcssa = phi ptr [ %1, %bb.a ], [ %.0.lcssa.ph, %.critedge.loopexit ]
  %.lcssa = phi i64 [ 0, %bb.a ], [ %i.n, %.critedge.loopexit ]
  %i.o = getelementptr i8, ptr @_Py_ctype_tolower, i64 %.lcssa
  %i.p = load i8, ptr %i.o, align 1, !tbaa !11
  %i.q = zext i8 %i.p to i32
  %i.r = load i8, ptr %.0.lcssa, align 1, !tbaa !11
  %i.s = zext i8 %i.r to i64
  %i.t = getelementptr i8, ptr @_Py_ctype_tolower, i64 %i.s
  %i.u = load i8, ptr %i.t, align 1, !tbaa !11
  %i.v = zext i8 %i.u to i32
  %i.w = sub nsw i32 %i.q, %i.v
  ret i32 %i.w
}

attributes #0 = { nofree norecurse nosync nounwind memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 8, !"PIC Level", i32 2}
!3 = !{i32 7, !"PIE Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C/C++ TBAA"}
!11 = !{!9, !9, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
end_hunk_0
