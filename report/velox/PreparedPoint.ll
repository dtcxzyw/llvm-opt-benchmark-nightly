inline.NumInlined: 10
inline.NumDeleted: 9
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4geos4geom4prep21BasicPreparedGeometryD2Ev = comdat any

$_ZN4geos4geom4prep13PreparedPointD0Ev = comdat any

$_ZNK4geos4geom4prep21BasicPreparedGeometry11getGeometryEv = comdat any

@_ZTVN4geos4geom4prep13PreparedPointE = unnamed_addr constant { [18 x ptr] } { [18 x ptr] [ptr null, ptr @_ZTIN4geos4geom4prep13PreparedPointE, ptr @_ZN4geos4geom4prep21BasicPreparedGeometryD2Ev, ptr @_ZN4geos4geom4prep13PreparedPointD0Ev, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry11getGeometryEv, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry8containsEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry16containsProperlyEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry9coveredByEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry6coversEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry7crossesEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry8disjointEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep13PreparedPoint10intersectsEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry8overlapsEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry7touchesEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry6withinEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry13nearestPointsEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry8distanceEPKNS0_8GeometryE, ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry16isWithinDistanceEPKNS0_8GeometryEd] }, align 8
@_ZTIN4geos4geom4prep13PreparedPointE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4geom4prep13PreparedPointE, ptr @_ZTIN4geos4geom4prep21BasicPreparedGeometryE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4geom4prep13PreparedPointE = constant [33 x i8] c"N4geos4geom4prep13PreparedPointE\00", align 1
@_ZTIN4geos4geom4prep21BasicPreparedGeometryE = external constant ptr
@_ZTVN4geos4geom4prep21BasicPreparedGeometryE = external unnamed_addr constant { [18 x ptr] }, align 8

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4geos4geom4prep13PreparedPoint10intersectsEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry18envelopesIntersectEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.b = tail call noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry26isAnyTargetComponentInTestEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40) %0, ptr noundef %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i1 [ %i.b, %bb.b ], [ false, %bb.a ]
  ret i1 %.0
}

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry18envelopesIntersectEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry26isAnyTargetComponentInTestEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom4prep21BasicPreparedGeometryD2Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4geos4geom4prep21BasicPreparedGeometryE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i, label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #5
  br label %_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit

_ZNSt6vectorIPKN4geos4geom10CoordinateESaIS4_EED2Ev.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom4prep13PreparedPointD0Ev(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #3 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 128) (i8, ptr @_ZTVN4geos4geom4prep21BasicPreparedGeometryE, i64 16), ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !9    ; 2 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN4geos4geom4prep21BasicPreparedGeometryD2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #5
  br label %_ZN4geos4geom4prep21BasicPreparedGeometryD2Ev.exit

_ZN4geos4geom4prep21BasicPreparedGeometryD2Ev.exit: ; preds = %bb.a, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr noundef nonnull align 1 ptr @_ZNK4geos4geom4prep21BasicPreparedGeometry11getGeometryEv(ptr noundef nonnull align 8 dereferenceable(40) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !14
  ret ptr %i.b
}

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry8containsEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry16containsProperlyEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry9coveredByEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry6coversEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry7crossesEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry8disjointEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry8overlapsEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry7touchesEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry6withinEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare void @_ZNK4geos4geom4prep21BasicPreparedGeometry13nearestPointsEPKNS0_8GeometryE() unnamed_addr

declare noundef double @_ZNK4geos4geom4prep21BasicPreparedGeometry8distanceEPKNS0_8GeometryE(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef) unnamed_addr #1

declare noundef zeroext i1 @_ZNK4geos4geom4prep21BasicPreparedGeometry16isWithinDistanceEPKNS0_8GeometryEd(ptr noundef nonnull align 8 dereferenceable(40), ptr noundef, double noundef) unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind }

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
!7 = !{!8, !8, i64 0}
!8 = !{!"vtable pointer", !6, i64 0}
!9 = !{!10, !11, i64 0}
!10 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE17_Vector_impl_dataE", !11, i64 0, !11, i64 8, !11, i64 16}
!11 = !{!"p2 _ZTSN4geos4geom10CoordinateE", !12, i64 0}
!12 = !{!"any p2 pointer", !13, i64 0}
!13 = !{!"any pointer", !5, i64 0}
!14 = !{!15, !17, i64 8}
!15 = !{!"_ZTSN4geos4geom4prep21BasicPreparedGeometryE", !16, i64 0, !17, i64 8, !18, i64 16}
!16 = !{!"_ZTSN4geos4geom4prep16PreparedGeometryE"}
!17 = !{!"p1 _ZTSN4geos4geom8GeometryE", !13, i64 0}
!18 = !{!"_ZTSSt6vectorIPKN4geos4geom10CoordinateESaIS4_EE", !19, i64 0}
!19 = !{!"_ZTSSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE", !20, i64 0}
!20 = !{!"_ZTSNSt12_Vector_baseIPKN4geos4geom10CoordinateESaIS4_EE12_Vector_implE", !10, i64 0}
end_hunk_0
