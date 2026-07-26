inline.NumInlined: 4
inline.NumDeleted: 2
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$_ZN4geos4geom4prep24PreparedPolygonPredicateD2Ev = comdat any

$_ZN4geos4geom4prep23PreparedPolygonContainsD0Ev = comdat any

$_ZTIN4geos4geom4prep31AbstractPreparedPolygonContainsE = comdat any

$_ZTSN4geos4geom4prep31AbstractPreparedPolygonContainsE = comdat any

$_ZTIN4geos4geom4prep24PreparedPolygonPredicateE = comdat any

$_ZTSN4geos4geom4prep24PreparedPolygonPredicateE = comdat any

@_ZTVN4geos4geom4prep23PreparedPolygonContainsE = constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos4geom4prep23PreparedPolygonContainsE, ptr @_ZN4geos4geom4prep24PreparedPolygonPredicateD2Ev, ptr @_ZN4geos4geom4prep23PreparedPolygonContainsD0Ev, ptr @_ZN4geos4geom4prep23PreparedPolygonContains24fullTopologicalPredicateEPKNS0_8GeometryE] }, align 8
@_ZTIN4geos4geom4prep23PreparedPolygonContainsE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4geom4prep23PreparedPolygonContainsE, ptr @_ZTIN4geos4geom4prep31AbstractPreparedPolygonContainsE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4geom4prep23PreparedPolygonContainsE = constant [43 x i8] c"N4geos4geom4prep23PreparedPolygonContainsE\00", align 1
@_ZTIN4geos4geom4prep31AbstractPreparedPolygonContainsE = linkonce_odr constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos4geom4prep31AbstractPreparedPolygonContainsE, ptr @_ZTIN4geos4geom4prep24PreparedPolygonPredicateE }, comdat, align 8
@_ZTSN4geos4geom4prep31AbstractPreparedPolygonContainsE = linkonce_odr constant [51 x i8] c"N4geos4geom4prep31AbstractPreparedPolygonContainsE\00", comdat, align 1
@_ZTIN4geos4geom4prep24PreparedPolygonPredicateE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos4geom4prep24PreparedPolygonPredicateE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos4geom4prep24PreparedPolygonPredicateE = linkonce_odr constant [44 x i8] c"N4geos4geom4prep24PreparedPolygonPredicateE\00", comdat, align 1

@_ZN4geos4geom4prep23PreparedPolygonContainsC1EPKNS1_15PreparedPolygonE = unnamed_addr alias void (ptr, ptr), ptr @_ZN4geos4geom4prep23PreparedPolygonContainsC2EPKNS1_15PreparedPolygonE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN4geos4geom4prep23PreparedPolygonContainsC2EPKNS1_15PreparedPolygonE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(20) initializes((0, 20)) %0, ptr noundef %1) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %1, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 16
  store <4 x i8> <i8 0, i8 0, i8 0, i8 1>, ptr %i.b, align 8, !tbaa !12
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN4geos4geom4prep23PreparedPolygonContainsE, i64 16), ptr %0, align 8, !tbaa !14
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4geos4geom4prep23PreparedPolygonContains24fullTopologicalPredicateEPKNS0_8GeometryE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(20) %0, ptr noundef %1) unnamed_addr #1 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = tail call noundef nonnull align 8 dereferenceable(40) ptr %i.e(ptr noundef nonnull align 8 dereferenceable(40) %i.b) ; 2 uses
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !14
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 224
  %i.i = load ptr, ptr %i.h, align 8
  %i.j = tail call noundef zeroext i1 %i.i(ptr noundef nonnull align 8 dereferenceable(40) %i.f, ptr noundef %1)
  ret i1 %i.j
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom4prep24PreparedPolygonPredicateD2Ev(ptr noundef nonnull align 8 dead_on_return(16) dereferenceable(16) %0) unnamed_addr #2 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos4geom4prep23PreparedPolygonContainsD0Ev(ptr noundef nonnull align 8 dereferenceable(20) %0) unnamed_addr #3 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #5
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #4

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { builtin nounwind }

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
!8 = !{!9, !10, i64 8}
!9 = !{!"_ZTSN4geos4geom4prep24PreparedPolygonPredicateE", !10, i64 8}
!10 = !{!"p1 _ZTSN4geos4geom4prep15PreparedPolygonE", !11, i64 0}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"bool", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
end_hunk_0
