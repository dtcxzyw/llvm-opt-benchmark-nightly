inline.NumInlined: 15
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZN6icu_7811StringPiece4nposE = dso_local local_unnamed_addr constant i32 2147483647, align 4

@_ZN6icu_7811StringPieceC1EPKc = dso_local unnamed_addr alias void (ptr, ptr), ptr @_ZN6icu_7811StringPieceC2EPKc
@_ZN6icu_7811StringPieceC1ERKS0_i = dso_local unnamed_addr alias void (ptr, ptr, i32), ptr @_ZN6icu_7811StringPieceC2ERKS0_i
@_ZN6icu_7811StringPieceC1ERKS0_ii = dso_local unnamed_addr alias void (ptr, ptr, i32, i32), ptr @_ZN6icu_7811StringPieceC2ERKS0_ii

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7811StringPieceC2EPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = icmp eq ptr %1, null
  br i1 %i.a, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  %i.c = trunc i64 %i.b to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %i.d = phi i32 [ %i.c, %bb.b ], [ 0, %bb.a ]
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.d, ptr %i.e, align 8
  ret void
}

; Function Attrs: mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i64 @strlen(ptr noundef captures(none)) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7811StringPieceC2ERKS0_i(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  %i.c = load i32, ptr %i.b, align 8
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.c)
  %.0 = select i1 %i.a, i32 0, i32 %spec.select   ; 2 uses
  %i.d = load ptr, ptr %1, align 8
  %i.e = sext i32 %.0 to i64
  %i.f = getelementptr inbounds i8, ptr %i.d, i64 %i.e
  store ptr %i.f, ptr %0, align 8
  %i.g = load i32, ptr %i.b, align 8
  %i.h = sub nsw i32 %i.g, %.0
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %i.h, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7811StringPieceC2ERKS0_ii(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = icmp slt i32 %2, 0
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.c = load i32, ptr %i.b, align 8              ; 2 uses
  %spec.select = tail call i32 @llvm.smin.i32(i32 %2, i32 %i.c)
  %.013 = select i1 %i.a, i32 0, i32 %spec.select ; 2 uses
  %i.d = icmp slt i32 %3, 0
  %i.e = sub nsw i32 %i.c, %.013
  %spec.select18 = tail call i32 @llvm.smin.i32(i32 %3, i32 %i.e)
  %.0 = select i1 %i.d, i32 0, i32 %spec.select18
  %i.f = load ptr, ptr %1, align 8
  %i.g = sext i32 %.013 to i64
  %i.h = getelementptr inbounds i8, ptr %i.f, i64 %i.g
  store ptr %i.h, ptr %0, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.0, ptr %i.i, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define dso_local void @_ZN6icu_7811StringPiece3setEPKc(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(12) initializes((0, 12)) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8
  %.not = icmp eq ptr %1, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 @strlen(ptr noundef nonnull dereferenceable(1) %1) #5
  %i.b = trunc i64 %i.a to i32
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.sink = phi i32 [ %i.b, %bb.b ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %.sink, ptr %i.c, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6icu_7811StringPiece4findES0_i(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i32 %2, i32 noundef %3) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp eq i32 %i.b, 0
  %i.d = icmp eq i32 %2, 0
  %or.cond = select i1 %i.c, i1 %i.d, i1 false
  br i1 %or.cond, label %.loopexit, label %.preheader29

.preheader29:                                     ; preds = %bb.a
  %i.e = icmp slt i32 %3, %i.b
  br i1 %i.e, label %.preheader.lr.ph, label %.loopexit

.preheader.lr.ph:                                 ; preds = %.preheader29
  %i.f = icmp sgt i32 %2, 0
  %i.g = load ptr, ptr %0, align 8
  br i1 %i.f, label %.preheader.us.preheader, label %.preheader._crit_edge

.preheader.us.preheader:                          ; preds = %.preheader.lr.ph
  %i.h = sext i32 %3 to i64                       ; 2 uses
  %i.i = add nsw i32 %2, -1
  %i.j = zext nneg i32 %i.i to i64
  %i.k = add nsw i64 %i.h, %i.j
  %wide.trip.count = zext nneg i32 %2 to i64
  br label %.preheader.us

.preheader.us:                                    ; preds = %.preheader.us.preheader, %bb.c
  %indvars.iv46.in = phi i64 [ %i.k, %.preheader.us.preheader ], [ %indvars.iv46, %bb.c ]
  %indvars.iv42 = phi i64 [ %i.h, %.preheader.us.preheader ], [ %indvars.iv.next43, %bb.c ] ; 2 uses
  %indvars.iv46 = add nsw i64 %indvars.iv46.in, 1 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.preheader.us, %4
  %indvars.iv44 = phi i64 [ %indvars.iv42, %.preheader.us ], [ %indvars.iv.next45, %4 ] ; 3 uses
  %indvars.iv = phi i64 [ 0, %.preheader.us ], [ %indvars.iv.next, %4 ] ; 3 uses
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %indvars.iv44
  %i.m = load i8, ptr %i.l, align 1
  %i.n = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.o = load i8, ptr %i.n, align 1
  %.not.us = icmp eq i8 %i.m, %i.o
  br i1 %.not.us, label %4, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.p = trunc nsw i64 %indvars.iv44 to i32
  %i.q = trunc nuw nsw i64 %indvars.iv to i32
  %i.r = add i32 %i.p, 1
  %i.s = sub i32 %i.r, %i.q
  %i.t = icmp slt i32 %i.s, %i.b
  %indvars.iv.next43 = add nsw i64 %indvars.iv42, 1
  br i1 %i.t, label %.preheader.us, label %.loopexit, !llvm.loop !5

4:                                                ; preds = %bb.b
  %indvars.iv.next45 = add nsw i64 %indvars.iv44, 1
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %.preheader._crit_edge.loopexit, label %bb.b, !llvm.loop !7

.preheader._crit_edge.loopexit:                   ; preds = %4
  %i.u = trunc nsw i64 %indvars.iv46 to i32
  br label %.preheader._crit_edge

.preheader._crit_edge:                            ; preds = %.preheader._crit_edge.loopexit, %.preheader.lr.ph
  %.117.lcssa = phi i32 [ %3, %.preheader.lr.ph ], [ %i.u, %.preheader._crit_edge.loopexit ]
  %.0.lcssa = phi i32 [ 0, %.preheader.lr.ph ], [ %2, %.preheader._crit_edge.loopexit ]
  %i.v = sub nsw i32 %.117.lcssa, %.0.lcssa
  br label %.loopexit

.loopexit:                                        ; preds = %bb.c, %.preheader29, %bb.a, %.preheader._crit_edge
  %.3 = phi i32 [ 0, %bb.a ], [ %i.v, %.preheader._crit_edge ], [ -1, %.preheader29 ], [ -1, %bb.c ]
  ret i32 %.3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef i32 @_ZN6icu_7811StringPiece7compareES0_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree readonly captures(none) %1, i32 %2) local_unnamed_addr #2 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = icmp sgt i32 %i.b, 0
  br i1 %i.c, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %bb.a
  %i.d = load ptr, ptr %0, align 8
  %i.e = zext i32 %2 to i64
  %wide.trip.count = zext nneg i32 %i.b to i64
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph ], [ %indvars.iv.next, %bb.d ] ; 4 uses
  %.021 = phi i32 [ undef, %.lr.ph ], [ %.1, %bb.d ]
  %i.f = icmp eq i64 %indvars.iv, %i.e
  br i1 %i.f, label %.loopexit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 %indvars.iv
  %i.h = load i8, ptr %i.g, align 1               ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 %indvars.iv
  %i.j = load i8, ptr %i.i, align 1               ; 3 uses
  %.not = icmp slt i8 %i.h, %i.j
  %.not18 = icmp sgt i8 %i.h, %i.j
  %..0 = select i1 %.not18, i32 1, i32 %.021
  %cond = icmp eq i8 %i.h, %i.j
  %.1 = select i1 %.not, i32 -1, i32 %..0         ; 2 uses
  br i1 %cond, label %bb.d, label %.loopexit

bb.d:                                             ; preds = %bb.c
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %exitcond.not = icmp eq i64 %indvars.iv.next, %wide.trip.count
  br i1 %exitcond.not, label %._crit_edge, label %bb.b, !llvm.loop !8

._crit_edge:                                      ; preds = %bb.d, %bb.a
  %.012.lcssa = phi i32 [ 0, %bb.a ], [ %i.b, %bb.d ]
  %i.k = icmp slt i32 %.012.lcssa, %2
  %.16 = sext i1 %i.k to i32
  br label %.loopexit

.loopexit:                                        ; preds = %bb.b, %bb.c, %._crit_edge
  %.2 = phi i32 [ %.16, %._crit_edge ], [ %.1, %bb.c ], [ 1, %bb.b ]
  ret i32 %.2
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable
define dso_local noundef signext range(i8 0, 2) i8 @_ZN6icu_78eqERKNS_11StringPieceES2_(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %0, ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(12) %1) local_unnamed_addr #2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i32, ptr %i.a, align 8              ; 3 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = load i32, ptr %i.c, align 8
  %.not = icmp eq i32 %i.b, %i.d
  br i1 %.not, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = icmp eq i32 %i.b, 0
  br i1 %i.e, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.f = load ptr, ptr %0, align 8                ; 2 uses
  %i.g = load ptr, ptr %1, align 8                ; 2 uses
  %i.h = add nsw i32 %i.b, -1
  %i.i = sext i32 %i.h to i64                     ; 3 uses
  %i.j = getelementptr inbounds i8, ptr %i.f, i64 %i.i
  %i.k = load i8, ptr %i.j, align 1
  %i.l = getelementptr inbounds i8, ptr %i.g, i64 %i.i
  %i.m = load i8, ptr %i.l, align 1
  %.not15 = icmp eq i8 %i.k, %i.m
  br i1 %.not15, label %bb.d, label %bb.e

bb.d:                                             ; preds = %bb.c
  %bcmp = tail call i32 @bcmp(ptr nonnull %i.f, ptr nonnull %i.g, i64 %i.i)
  %i.n = icmp eq i32 %bcmp, 0
  %i.o = zext i1 %i.n to i8
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.c, %bb.b, %bb.a
  %.1 = phi i8 [ 1, %bb.b ], [ 0, %bb.a ], [ %i.o, %bb.d ], [ 0, %bb.c ]
  ret i8 %.1
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: read)
declare i32 @bcmp(ptr captures(none), ptr captures(none), i64) local_unnamed_addr #3

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i32 @llvm.smin.i32(i32, i32) #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { mustprogress nocallback nofree nosync nounwind willreturn memory(argmem: read) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(read, inaccessiblemem: none, target_mem: none) uwtable "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nocallback nofree nosync nounwind willreturn memory(argmem: read) }
attributes #4 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #5 = { nounwind willreturn memory(read) }

!llvm.module.flags = !{!0, !1, !2, !3}
!llvm.ident = !{!4}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{i32 7, !"frame-pointer", i32 2}
!4 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!5 = distinct !{!5, !6}
!6 = !{!"llvm.loop.mustprogress"}
!7 = distinct !{!7, !6}
!8 = distinct !{!8, !6}
end_hunk_0
