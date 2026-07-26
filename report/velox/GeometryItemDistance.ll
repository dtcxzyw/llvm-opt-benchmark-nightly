inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

module asm(target_features: "+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave", target_cpu: "x86-64")
    ".globl _ZSt21ios_base_library_initv"

$_ZTIN4geos5index7strtree12ItemDistanceE = comdat any

$_ZTSN4geos5index7strtree12ItemDistanceE = comdat any

@_ZTVN4geos5index7strtree20GeometryItemDistanceE = local_unnamed_addr constant { [3 x ptr] } { [3 x ptr] [ptr null, ptr @_ZTIN4geos5index7strtree20GeometryItemDistanceE, ptr @_ZN4geos5index7strtree20GeometryItemDistance8distanceEPKNS1_13ItemBoundableES5_] }, align 8
@_ZTIN4geos5index7strtree20GeometryItemDistanceE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos5index7strtree20GeometryItemDistanceE, ptr @_ZTIN4geos5index7strtree12ItemDistanceE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index7strtree20GeometryItemDistanceE = constant [44 x i8] c"N4geos5index7strtree20GeometryItemDistanceE\00", align 1
@_ZTIN4geos5index7strtree12ItemDistanceE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos5index7strtree12ItemDistanceE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index7strtree12ItemDistanceE = linkonce_odr constant [36 x i8] c"N4geos5index7strtree12ItemDistanceE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define noundef double @_ZN4geos5index7strtree20GeometryItemDistance8distanceEPKNS1_13ItemBoundableES5_(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree noundef readonly captures(none) %1, ptr nofree noundef readonly captures(none) %2) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !8
  %i.e = load ptr, ptr %i.b, align 8, !tbaa !12
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 360
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = tail call noundef double %i.g(ptr noundef nonnull align 8 dereferenceable(40) %i.b, ptr noundef %i.d)
  ret double %i.h
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }

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
!8 = !{!9, !11, i64 16}
!9 = !{!"_ZTSN4geos5index7strtree13ItemBoundableE", !10, i64 0, !11, i64 8, !11, i64 16}
!10 = !{!"_ZTSN4geos5index7strtree9BoundableE"}
!11 = !{!"any pointer", !6, i64 0}
!12 = !{!13, !13, i64 0}
!13 = !{!"vtable pointer", !7, i64 0}
end_hunk_0
