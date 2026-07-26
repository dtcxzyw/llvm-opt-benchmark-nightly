inline.NumInlined: 2
inline.NumDeleted: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

$_ZN4geos5index13intervalrtree17IntervalRTreeNodeD2Ev = comdat any

$_ZN4geos5index13intervalrtree21IntervalRTreeLeafNodeD0Ev = comdat any

$_ZTIN4geos5index13intervalrtree17IntervalRTreeNodeE = comdat any

$_ZTSN4geos5index13intervalrtree17IntervalRTreeNodeE = comdat any

@_ZTVN4geos5index13intervalrtree21IntervalRTreeLeafNodeE = local_unnamed_addr constant { [5 x ptr] } { [5 x ptr] [ptr null, ptr @_ZTIN4geos5index13intervalrtree21IntervalRTreeLeafNodeE, ptr @_ZN4geos5index13intervalrtree17IntervalRTreeNodeD2Ev, ptr @_ZN4geos5index13intervalrtree21IntervalRTreeLeafNodeD0Ev, ptr @_ZNK4geos5index13intervalrtree21IntervalRTreeLeafNode5queryEddPNS0_11ItemVisitorE] }, align 8
@_ZTIN4geos5index13intervalrtree21IntervalRTreeLeafNodeE = constant { ptr, ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv120__si_class_type_infoE, i64 2), ptr @_ZTSN4geos5index13intervalrtree21IntervalRTreeLeafNodeE, ptr @_ZTIN4geos5index13intervalrtree17IntervalRTreeNodeE }, align 8
@_ZTVN10__cxxabiv120__si_class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index13intervalrtree21IntervalRTreeLeafNodeE = constant [52 x i8] c"N4geos5index13intervalrtree21IntervalRTreeLeafNodeE\00", align 1
@_ZTIN4geos5index13intervalrtree17IntervalRTreeNodeE = linkonce_odr constant { ptr, ptr } { ptr getelementptr inbounds (ptr, ptr @_ZTVN10__cxxabiv117__class_type_infoE, i64 2), ptr @_ZTSN4geos5index13intervalrtree17IntervalRTreeNodeE }, comdat, align 8
@_ZTVN10__cxxabiv117__class_type_infoE = external global [0 x ptr]
@_ZTSN4geos5index13intervalrtree17IntervalRTreeNodeE = linkonce_odr constant [48 x i8] c"N4geos5index13intervalrtree17IntervalRTreeNodeE\00", comdat, align 1

; Function Attrs: mustprogress uwtable
define void @_ZNK4geos5index13intervalrtree21IntervalRTreeLeafNode5queryEddPNS0_11ItemVisitorE(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(32) %0, double noundef %1, double noundef %2, ptr noundef %3) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load double, ptr %i.a, align 8, !tbaa !8
  %i.c = fcmp ule double %i.b, %2
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load double, ptr %i.d, align 8
  %i.f = fcmp uge double %i.e, %1
  %or.cond.not.i = select i1 %i.c, i1 %i.f, i1 false
  br i1 %or.cond.not.i, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !11
  %i.i = load ptr, ptr %3, align 8, !tbaa !14
  %i.j = load ptr, ptr %i.i, align 8
  tail call void %i.j(ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef %i.h)
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index13intervalrtree17IntervalRTreeNodeD2Ev(ptr noundef nonnull align 8 dead_on_return(24) dereferenceable(24) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr void @_ZN4geos5index13intervalrtree21IntervalRTreeLeafNodeD0Ev(ptr noundef nonnull align 8 dereferenceable(32) %0) unnamed_addr #1 comdat align 2 {
bb.a:
  tail call void @_ZdlPv(ptr noundef nonnull %0) #3
  ret void
}

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPv(ptr noundef) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { builtin nounwind }

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
!9 = !{!"_ZTSN4geos5index13intervalrtree17IntervalRTreeNodeE", !10, i64 8, !10, i64 16}
!10 = !{!"double", !6, i64 0}
!11 = !{!12, !13, i64 24}
!12 = !{!"_ZTSN4geos5index13intervalrtree21IntervalRTreeLeafNodeE", !9, i64 0, !13, i64 24}
!13 = !{!"any pointer", !6, i64 0}
!14 = !{!15, !15, i64 0}
!15 = !{!"vtable pointer", !7, i64 0}
end_hunk_0
