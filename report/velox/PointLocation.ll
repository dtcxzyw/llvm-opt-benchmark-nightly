inline.NumInlined: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9algorithm13PointLocation8isOnLineERKNS_4geom10CoordinateEPKNS2_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 48
  %i.c = load ptr, ptr %i.b, align 8
  %i.d = tail call noundef i64 %i.c(ptr noundef nonnull align 8 dereferenceable(8) %1) ; 3 uses
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %.critedge, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.f = load ptr, ptr %1, align 8, !tbaa !8
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.h(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef 0)
  %.not21.not = icmp eq i64 %i.d, 1
  br i1 %.not21.not, label %.critedge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %.lr.ph
  %.01523 = phi i64 [ %i.o, %.lr.ph ], [ 1, %bb.b ] ; 2 uses
  %.01622 = phi ptr [ %i.m, %.lr.ph ], [ %i.i, %bb.b ]
  %i.j = load ptr, ptr %1, align 8, !tbaa !8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef nonnull align 8 dereferenceable(24) ptr %i.l(ptr noundef nonnull align 8 dereferenceable(8) %1, i64 noundef %.01523) ; 2 uses
  %i.n = tail call noundef zeroext i1 @_ZN4geos9algorithm15LineIntersector15hasIntersectionERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %.01622, ptr noundef nonnull align 8 dereferenceable(24) %i.m) ; 2 uses
  %i.o = add nuw i64 %.01523, 1                   ; 2 uses
  %exitcond.not = icmp eq i64 %i.o, %i.d
  %or.cond = select i1 %i.n, i1 true, i1 %exitcond.not
  br i1 %or.cond, label %.critedge, label %.lr.ph, !llvm.loop !10

.critedge:                                        ; preds = %.lr.ph, %bb.b, %bb.a
  %.4 = phi i1 [ false, %bb.a ], [ false, %bb.b ], [ %i.n, %.lr.ph ]
  ret i1 %.4
}

declare noundef zeroext i1 @_ZN4geos9algorithm15LineIntersector15hasIntersectionERKNS_4geom10CoordinateES5_S5_(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9algorithm13PointLocation8isInRingERKNS_4geom10CoordinateERKSt6vectorIPS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef signext i8 @_ZN4geos9algorithm18RayCrossingCounter17locatePointInRingERKNS_4geom10CoordinateERKSt6vectorIPS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  %i.b = icmp ne i8 %i.a, 2
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN4geos9algorithm13PointLocation12locateInRingERKNS_4geom10CoordinateERKSt6vectorIPS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef signext i8 @_ZN4geos9algorithm18RayCrossingCounter17locatePointInRingERKNS_4geom10CoordinateERKSt6vectorIPS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(24) %1)
  ret i8 %i.a
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos9algorithm13PointLocation8isInRingERKNS_4geom10CoordinateEPKNS2_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef signext i8 @_ZN4geos9algorithm18RayCrossingCounter17locatePointInRingERKNS_4geom10CoordinateERKNS2_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  %i.b = icmp ne i8 %i.a, 2
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define noundef signext i8 @_ZN4geos9algorithm13PointLocation12locateInRingERKNS_4geom10CoordinateERKNS2_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef signext i8 @_ZN4geos9algorithm18RayCrossingCounter17locatePointInRingERKNS_4geom10CoordinateERKNS2_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24) %0, ptr noundef nonnull align 8 dereferenceable(8) %1)
  ret i8 %i.a
}

declare noundef signext i8 @_ZN4geos9algorithm18RayCrossingCounter17locatePointInRingERKNS_4geom10CoordinateERKSt6vectorIPS4_SaIS7_EE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(24)) local_unnamed_addr #1

declare noundef signext i8 @_ZN4geos9algorithm18RayCrossingCounter17locatePointInRingERKNS_4geom10CoordinateERKNS2_18CoordinateSequenceE(ptr noundef nonnull align 8 dereferenceable(24), ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!3 = !{!4, !5, i64 0}
!4 = !{!"__libc_errno", !5, i64 0}
!5 = !{!"int", !6, i64 0}
!6 = !{!"omnipotent char", !7, i64 0}
!7 = !{!"Simple C++ TBAA"}
!8 = !{!9, !9, i64 0}
!9 = !{!"vtable pointer", !7, i64 0}
!10 = distinct !{!10, !11}
!11 = !{!"llvm.loop.mustprogress"}
end_hunk_0
