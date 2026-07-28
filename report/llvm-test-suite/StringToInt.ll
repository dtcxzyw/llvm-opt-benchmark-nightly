inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_Z21ConvertStringToUInt64PKcPS0_(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %i.b = add i8 %i.a, -48
  %or.cond25 = icmp ult i8 %i.b, 10
  br i1 %or.cond25, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi ptr [ %0, %bb.a ], [ %i.e, %.lr.ph ]
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %i.d, %.lr.ph ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %.017.lcssa, ptr %1, align 8, !tbaa !9
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i8 [ %i.f, %.lr.ph ], [ %i.a, %bb.a ]
  %.01527 = phi i64 [ %i.d, %.lr.ph ], [ 0, %bb.a ]
  %.01726 = phi ptr [ %i.e, %.lr.ph ], [ %0, %bb.a ]
  %2 = zext nneg i8 %i.c to i64
  %3 = mul i64 %.01527, 10
  %4 = add i64 %3, -48
  %i.d = add i64 %4, %2                           ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.01726, i64 1 ; 3 uses
  %i.f = load i8, ptr %i.e, align 1, !tbaa !8     ; 2 uses
  %i.g = add i8 %i.f, -48
  %or.cond = icmp ult i8 %i.g, 10
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !12

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret i64 %.015.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_Z24ConvertOctStringToUInt64PKcPS0_(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 2 uses
  %i.b = and i8 %i.a, -8
  %or.cond25 = icmp eq i8 %i.b, 48
  br i1 %or.cond25, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.017.lcssa = phi ptr [ %0, %bb.a ], [ %i.d, %.lr.ph ]
  %.015.lcssa = phi i64 [ 0, %bb.a ], [ %5, %.lr.ph ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %.017.lcssa, ptr %1, align 8, !tbaa !9
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i8 [ %i.e, %.lr.ph ], [ %i.a, %bb.a ]
  %.01527 = phi i64 [ %5, %.lr.ph ], [ 0, %bb.a ]
  %.01726 = phi ptr [ %i.d, %.lr.ph ], [ %0, %bb.a ]
  %2 = zext nneg i8 %i.c to i64
  %3 = shl i64 %.01527, 3
  %4 = add nsw i64 %2, -48
  %5 = add nuw nsw i64 %4, %3                     ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.01726, i64 1 ; 3 uses
  %i.e = load i8, ptr %i.d, align 1, !tbaa !8     ; 2 uses
  %i.f = and i8 %i.e, -8
  %or.cond = icmp eq i8 %i.f, 48
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !14

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret i64 %.015.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_Z24ConvertHexStringToUInt64PKcPS0_(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.g, %bb.a
  %.031 = phi ptr [ %0, %bb.a ], [ %i.i, %bb.g ]  ; 3 uses
  %.029 = phi i64 [ 0, %bb.a ], [ %i.h, %bb.g ]   ; 2 uses
  %i.a = load i8, ptr %.031, align 1, !tbaa !8    ; 4 uses
  %i.b = sext i8 %i.a to i64
  %i.c = add i8 %i.a, -48
  %or.cond = icmp ult i8 %i.c, 10
  br i1 %or.cond, label %bb.g, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = add i8 %i.a, -65
  %or.cond5 = icmp ult i8 %i.d, 6
  br i1 %or.cond5, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add i8 %i.a, -97
  %or.cond8 = icmp ult i8 %i.e, 6
  br i1 %or.cond8, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.h, label %bb.f

bb.f:                                             ; preds = %bb.e
  store ptr %.031, ptr %1, align 8, !tbaa !9
  br label %bb.h

bb.g:                                             ; preds = %bb.d, %bb.c, %bb.b
  %.sink = phi i64 [ -48, %bb.b ], [ -55, %bb.c ], [ -87, %bb.d ]
  %i.f = add nsw i64 %.sink, %i.b
  %i.g = shl i64 %.029, 4
  %i.h = or i64 %i.g, %i.f
  %i.i = getelementptr inbounds nuw i8, ptr %.031, i64 1
  br label %bb.b, !llvm.loop !15

bb.h:                                             ; preds = %bb.f, %bb.e
  ret i64 %.029
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_Z21ConvertStringToUInt64PKwPS0_(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16
  %i.b = add i32 %i.a, -48                        ; 2 uses
  %or.cond24 = icmp ult i32 %i.b, 10
  br i1 %or.cond24, label %.lr.ph, label %._crit_edge

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.016.lcssa = phi ptr [ %0, %bb.a ], [ %i.g, %.lr.ph ]
  %.014.lcssa = phi i64 [ 0, %bb.a ], [ %i.f, %.lr.ph ]
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %._crit_edge
  store ptr %.016.lcssa, ptr %1, align 8, !tbaa !18
  br label %bb.c

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %i.c = phi i32 [ %i.i, %.lr.ph ], [ %i.b, %bb.a ]
  %.01426 = phi i64 [ %i.f, %.lr.ph ], [ 0, %bb.a ]
  %.01625 = phi ptr [ %i.g, %.lr.ph ], [ %0, %bb.a ]
  %i.d = mul i64 %.01426, 10
  %i.e = zext nneg i32 %i.c to i64
  %i.f = add i64 %i.d, %i.e                       ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.01625, i64 4 ; 3 uses
  %i.h = load i32, ptr %i.g, align 4, !tbaa !16
  %i.i = add i32 %i.h, -48                        ; 2 uses
  %or.cond = icmp ult i32 %i.i, 10
  br i1 %or.cond, label %.lr.ph, label %._crit_edge, !llvm.loop !20

bb.c:                                             ; preds = %._crit_edge, %bb.b
  ret i64 %.014.lcssa
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable
define dso_local noundef i64 @_Z20ConvertStringToInt64PKcPS0_(ptr noundef %0, ptr nofree noundef writeonly captures(address_is_null) %1) local_unnamed_addr #0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !8       ; 3 uses
  %i.b = icmp eq i8 %i.a, 45
  br i1 %i.b, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 1 ; 3 uses
  %i.d = load i8, ptr %i.c, align 1, !tbaa !8     ; 2 uses
  %i.e = add i8 %i.d, -48
  %or.cond25.i = icmp ult i8 %i.e, 10
  br i1 %or.cond25.i, label %.lr.ph.i, label %._crit_edge.i

._crit_edge.i:                                    ; preds = %.lr.ph.i, %bb.b
  %.017.lcssa.i = phi ptr [ %i.c, %bb.b ], [ %i.h, %.lr.ph.i ]
  %.015.lcssa.i = phi i64 [ 0, %bb.b ], [ %i.g, %.lr.ph.i ]
  %.not.i = icmp eq ptr %1, null
  br i1 %.not.i, label %_Z21ConvertStringToUInt64PKcPS0_.exit, label %bb.c

bb.c:                                             ; preds = %._crit_edge.i
  store ptr %.017.lcssa.i, ptr %1, align 8, !tbaa !9
  br label %_Z21ConvertStringToUInt64PKcPS0_.exit

.lr.ph.i:                                         ; preds = %bb.b, %.lr.ph.i
  %i.f = phi i8 [ %i.i, %.lr.ph.i ], [ %i.d, %bb.b ]
  %.01527.i = phi i64 [ %i.g, %.lr.ph.i ], [ 0, %bb.b ]
  %.01726.i = phi ptr [ %i.h, %.lr.ph.i ], [ %i.c, %bb.b ]
  %2 = zext nneg i8 %i.f to i64
  %3 = mul i64 %.01527.i, 10
  %4 = add nsw i64 %2, -48
  %i.g = add i64 %4, %3                           ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %.01726.i, i64 1 ; 3 uses
  %i.i = load i8, ptr %i.h, align 1, !tbaa !8     ; 2 uses
  %i.j = add i8 %i.i, -48
  %or.cond.i = icmp ult i8 %i.j, 10
  br i1 %or.cond.i, label %.lr.ph.i, label %._crit_edge.i, !llvm.loop !12

_Z21ConvertStringToUInt64PKcPS0_.exit:            ; preds = %._crit_edge.i, %bb.c
  %i.k = sub nsw i64 0, %.015.lcssa.i
  br label %_Z21ConvertStringToUInt64PKcPS0_.exit14

bb.d:                                             ; preds = %bb.a
  %i.l = add i8 %i.a, -48
  %or.cond25.i5 = icmp ult i8 %i.l, 10
  br i1 %or.cond25.i5, label %.lr.ph.i10, label %._crit_edge.i6

._crit_edge.i6:                                   ; preds = %.lr.ph.i10, %bb.d
  %.017.lcssa.i7 = phi ptr [ %0, %bb.d ], [ %i.o, %.lr.ph.i10 ]
  %.015.lcssa.i8 = phi i64 [ 0, %bb.d ], [ %i.n, %.lr.ph.i10 ] ; 2 uses
  %.not.i9 = icmp eq ptr %1, null
  br i1 %.not.i9, label %_Z21ConvertStringToUInt64PKcPS0_.exit14, label %bb.e

bb.e:                                             ; preds = %._crit_edge.i6
  store ptr %.017.lcssa.i7, ptr %1, align 8, !tbaa !9
  br label %_Z21ConvertStringToUInt64PKcPS0_.exit14

.lr.ph.i10:                                       ; preds = %bb.d, %.lr.ph.i10
  %i.m = phi i8 [ %i.p, %.lr.ph.i10 ], [ %i.a, %bb.d ]
  %.01527.i11 = phi i64 [ %i.n, %.lr.ph.i10 ], [ 0, %bb.d ]
  %.01726.i12 = phi ptr [ %i.o, %.lr.ph.i10 ], [ %0, %bb.d ]
  %5 = zext nneg i8 %i.m to i64
  %6 = mul i64 %.01527.i11, 10
  %7 = add nsw i64 %5, -48
  %i.n = add i64 %7, %6                           ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.01726.i12, i64 1 ; 3 uses
  %i.p = load i8, ptr %i.o, align 1, !tbaa !8     ; 2 uses
  %i.q = add i8 %i.p, -48
  %or.cond.i13 = icmp ult i8 %i.q, 10
  br i1 %or.cond.i13, label %.lr.ph.i10, label %._crit_edge.i6, !llvm.loop !12

_Z21ConvertStringToUInt64PKcPS0_.exit14:          ; preds = %bb.e, %._crit_edge.i6, %_Z21ConvertStringToUInt64PKcPS0_.exit
  %.0 = phi i64 [ %i.k, %_Z21ConvertStringToUInt64PKcPS0_.exit ], [ %.015.lcssa.i8, %._crit_edge.i6 ], [ %.015.lcssa.i8, %bb.e ]
  ret i64 %.0
}

attributes #0 = { mustprogress nofree norecurse nosync nounwind memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }

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
!7 = !{!"Simple C++ TBAA"}
!8 = !{!6, !6, i64 0}
!9 = !{!10, !10, i64 0}
!10 = !{!"p1 omnipotent char", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = distinct !{!12, !13}
!13 = !{!"llvm.loop.mustprogress"}
!14 = distinct !{!14, !13}
!15 = distinct !{!15, !13}
!16 = !{!17, !17, i64 0}
!17 = !{!"wchar_t", !6, i64 0}
!18 = !{!19, !19, i64 0}
!19 = !{!"p1 wchar_t", !11, i64 0}
!20 = distinct !{!20, !13}
end_hunk_0
