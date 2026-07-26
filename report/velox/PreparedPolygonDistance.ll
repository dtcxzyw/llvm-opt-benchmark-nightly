begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4geos4geom4prep23PreparedPolygonDistance8distanceEPKNS0_8GeometryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !14
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br i1 %i.i, label %bb.e, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !14
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.m, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !14
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = tail call noundef zeroext i1 %i.q(ptr noundef nonnull align 8 dereferenceable(96) %i.n, ptr noundef nonnull %1)
  br i1 %i.r, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.s = load ptr, ptr %0, align 8, !tbaa !8, !nonnull !12, !align !13
  %i.t = tail call noundef ptr @_ZNK4geos4geom4prep15PreparedPolygon23getIndexedFacetDistanceEv(ptr noundef nonnull align 8 dereferenceable(96) %i.s)
  %i.u = tail call noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %i.t, ptr noundef nonnull %1)
  br label %bb.e

bb.e:                                             ; preds = %bb.c, %bb.a, %bb.b, %bb.d
  %.0 = phi double [ %i.u, %bb.d ], [ +inf, %bb.a ], [ +inf, %bb.b ], [ 0.000000e+00, %bb.c ]
  ret double %.0
}

declare noundef ptr @_ZNK4geos4geom4prep15PreparedPolygon23getIndexedFacetDistanceEv(ptr noundef nonnull align 8 dereferenceable(96)) local_unnamed_addr #1

declare noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

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
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSN4geos4geom4prep23PreparedPolygonDistanceE", !10, i64 0}
!10 = !{!"p1 _ZTSN4geos4geom4prep15PreparedPolygonE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{}
!13 = !{i64 8}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
end_hunk_0
