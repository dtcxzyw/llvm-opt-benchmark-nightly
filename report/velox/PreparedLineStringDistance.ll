begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm
    ".globl _ZSt21ios_base_library_initv"

; Function Attrs: mustprogress uwtable
define noundef double @_ZNK4geos4geom4prep26PreparedLineStringDistance8distanceEPKNS0_8GeometryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !7, !nonnull !11, !align !12 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !13
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  %i.d = load ptr, ptr %i.c, align 8
  %i.e = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.d(ptr noundef nonnull align 8 dereferenceable(40) %i.a) ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !13
  %i.g = getelementptr inbounds nuw i8, ptr %i.f, i64 104
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = tail call noundef zeroext i1 %i.h(ptr noundef nonnull align 8 dereferenceable(40) %i.e)
  br i1 %i.i, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.j = load ptr, ptr %1, align 8, !tbaa !13
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 104
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = tail call noundef zeroext i1 %i.l(ptr noundef nonnull align 8 dereferenceable(40) %1)
  br i1 %i.m, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.n = load ptr, ptr %0, align 8, !tbaa !7, !nonnull !11, !align !12
  %i.o = tail call noundef ptr @_ZNK4geos4geom4prep18PreparedLineString23getIndexedFacetDistanceEv(ptr noundef nonnull align 8 dereferenceable(80) %i.n)
  %i.p = tail call noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8) %i.o, ptr noundef nonnull %1)
  br label %bb.d

bb.d:                                             ; preds = %bb.a, %bb.b, %bb.c
  %.0 = phi double [ %i.p, %bb.c ], [ +inf, %bb.b ], [ +inf, %bb.a ]
  ret double %.0
}

declare noundef ptr @_ZNK4geos4geom4prep18PreparedLineString23getIndexedFacetDistanceEv(ptr noundef nonnull align 8 dereferenceable(80)) local_unnamed_addr #1

declare noundef double @_ZNK4geos9operation8distance20IndexedFacetDistance8distanceEPKNS_4geom8GeometryE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

!llvm.module.flags = !{!0, !1}
!llvm.ident = !{!2}
!llvm.errno.tbaa = !{!3}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"uwtable", i32 2}
!2 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!3 = !{!4, !4, i64 0}
!4 = !{!"int", !5, i64 0}
!5 = !{!"omnipotent char", !6, i64 0}
!6 = !{!"Simple C++ TBAA"}
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSN4geos4geom4prep26PreparedLineStringDistanceE", !9, i64 0}
!9 = !{!"p1 _ZTSN4geos4geom4prep18PreparedLineStringE", !10, i64 0}
!10 = !{!"any pointer", !5, i64 0}
!11 = !{}
!12 = !{i64 8}
!13 = !{!14, !14, i64 0}
!14 = !{!"vtable pointer", !6, i64 0}
end_hunk_0
