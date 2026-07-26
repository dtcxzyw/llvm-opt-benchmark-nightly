inline.NumInlined: 1
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

@_ZZN5folly29globalJemallocNodumpAllocatorEvE8instance = internal unnamed_addr global ptr null, align 8
@_ZGVZN5folly29globalJemallocNodumpAllocatorEvE8instance = internal global i64 0, align 8

@_ZN5folly23JemallocNodumpAllocatorC1ENS0_5StateE = unnamed_addr alias void (ptr, i32), ptr @_ZN5folly23JemallocNodumpAllocatorC2ENS0_5StateE

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define void @_ZN5folly23JemallocNodumpAllocatorC2ENS0_5StateE(ptr nofree noundef nonnull writeonly align 4 captures(none) dereferenceable(8) initializes((0, 8)) %0, i32 %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i32 0, ptr %0, align 4, !tbaa !12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  store i32 0, ptr %i.a, align 4, !tbaa !14
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define noundef zeroext i1 @_ZN5folly23JemallocNodumpAllocator22extend_and_setup_arenaEv(ptr nofree noundef nonnull readnone align 4 captures(none) dereferenceable(8) %0) local_unnamed_addr #1 align 2 {
bb.a:
  ret i1 false
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5folly23JemallocNodumpAllocator8allocateEm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, i64 noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr @mallocx, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = tail call ptr @mallocx(i64 noundef %1, i32 noundef %i.b) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call noalias ptr @malloc(i64 noundef %1) #12
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %i.e
}

; Function Attrs: nounwind
declare extern_weak ptr @mallocx(i64 noundef, i32 noundef) #3

; Function Attrs: mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @malloc(i64 noundef) local_unnamed_addr #4

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN5folly23JemallocNodumpAllocator10reallocateEPvm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr @rallocx, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  %i.c = tail call ptr @rallocx(ptr noundef %1, i64 noundef %2, i32 noundef %i.b) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.d = tail call ptr @realloc(ptr noundef %1, i64 noundef %2) #13
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.e = phi ptr [ %i.c, %bb.b ], [ %i.d, %bb.c ]
  ret ptr %i.e
}

; Function Attrs: nounwind
declare extern_weak ptr @rallocx(ptr noundef, i64 noundef, i32 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write)
declare noalias noundef ptr @realloc(ptr allocptr noundef captures(none), i64 noundef) local_unnamed_addr #5

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly23JemallocNodumpAllocator10deallocateEPvm(ptr nofree noundef nonnull readonly align 4 captures(none) dereferenceable(8) %0, ptr noundef %1, i64 noundef %2) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr @dallocx, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 4
  %i.b = load i32, ptr %i.a, align 4, !tbaa !14
  tail call void @dallocx(ptr noundef %1, i32 noundef %i.b) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %1) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: nounwind
declare extern_weak void @dallocx(ptr noundef, i32 noundef) #3

; Function Attrs: mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite)
declare void @free(ptr allocptr noundef captures(none)) local_unnamed_addr #6

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly23JemallocNodumpAllocator10deallocateEPvS1_(ptr noundef %0, ptr noundef %1) local_unnamed_addr #2 align 2 {
bb.a:
  %.not = icmp eq ptr @dallocx, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = ptrtoint ptr %1 to i64
  %i.b = trunc i64 %i.a to i32
  tail call void @dallocx(ptr noundef %0, i32 noundef %i.b) #11
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  tail call void @free(ptr noundef %0) #11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef nonnull align 4 dereferenceable(8) ptr @_ZN5folly29globalJemallocNodumpAllocatorEv() local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN5folly29globalJemallocNodumpAllocatorEvE8instance acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.f, !prof !15

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly29globalJemallocNodumpAllocatorEvE8instance) #11
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.f, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = invoke noalias noundef nonnull dereferenceable(8) ptr @_Znwm(i64 noundef 8) #14
          to label %bb.d unwind label %bb.g       ; 3 uses

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN5folly23JemallocNodumpAllocatorC1ENS0_5StateE(ptr noundef nonnull align 4 dereferenceable(8) %i.d, i32 noundef 0)
          to label %bb.e unwind label %bb.h

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr @_ZZN5folly29globalJemallocNodumpAllocatorEvE8instance, align 8, !tbaa !16
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly29globalJemallocNodumpAllocatorEvE8instance) #11
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.b, %bb.a
  %i.e = load ptr, ptr @_ZZN5folly29globalJemallocNodumpAllocatorEvE8instance, align 8, !tbaa !16
  ret ptr %i.e

bb.g:                                             ; preds = %bb.c
  %i.f = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.h:                                             ; preds = %bb.d
  %i.g = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 8) #15
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.g
  %.pn = phi { ptr, i32 } [ %i.g, %bb.h ], [ %i.f, %bb.g ]
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN5folly29globalJemallocNodumpAllocatorEvE8instance) #11
  resume { ptr, i32 } %.pn
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #8

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #9

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #10

; Function Attrs: nofree nounwind
declare void @__cxa_guard_abort(ptr) local_unnamed_addr #8

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #8

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nounwind willreturn allockind("alloc,uninitialized") allocsize(0) memory(inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress nounwind willreturn allockind("realloc") allocsize(1) memory(argmem: readwrite, inaccessiblemem: readwrite, errnomem: write) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { mustprogress nounwind willreturn allockind("free") memory(argmem: readwrite, inaccessiblemem: readwrite) "alloc-family"="malloc" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { nofree nounwind }
attributes #9 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(1) }
attributes #14 = { builtin allocsize(0) }
attributes #15 = { builtin nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260707081847+70646dd3eda3-1~exp1~20260707082012.1709)"}
!7 = !{!8, !9, i64 0}
!8 = !{!"__libc_errno", !9, i64 0}
!9 = !{!"int", !10, i64 0}
!10 = !{!"omnipotent char", !11, i64 0}
!11 = !{!"Simple C++ TBAA"}
!12 = !{!13, !9, i64 0}
!13 = !{!"_ZTSN5folly23JemallocNodumpAllocatorE", !9, i64 0, !9, i64 4}
!14 = !{!13, !9, i64 4}
!15 = !{!"branch_weights", i32 1, i32 1048575}
!16 = !{!17, !17, i64 0}
!17 = !{!"p1 _ZTSN5folly23JemallocNodumpAllocatorE", !18, i64 0}
!18 = !{!"any pointer", !10, i64 0}
end_hunk_0
