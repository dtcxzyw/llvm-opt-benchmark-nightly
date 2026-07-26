inline.NumInlined: 15
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::chrono::(anonymous namespace)::VdsoInitializer" = type { ptr }
%struct.timespec = type { i64, i64 }

@_ZN5folly6chrono13clock_gettimeE = local_unnamed_addr global ptr @clock_gettime, align 8
@_ZN5folly6chrono16clock_gettime_nsE = local_unnamed_addr global ptr @_ZN5folly6chronoL25clock_gettime_ns_fallbackEi, align 8
@_ZN5folly6chrono12_GLOBAL__N_116vdso_initializerE = internal global %"struct.folly::chrono::(anonymous namespace)::VdsoInitializer" zeroinitializer, align 8
@__dso_handle = external hidden global i8
@.str = private unnamed_addr constant [16 x i8] c"linux-vdso.so.1\00", align 1
@.str.1 = private unnamed_addr constant [21 x i8] c"__vdso_clock_gettime\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"__vdso_clock_gettime_ns\00", align 1
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_ClockGettimeWrappers.cpp, ptr null }]

; Function Attrs: nounwind
declare i32 @clock_gettime(i32 noundef, ptr noundef) #0

; Function Attrs: mustprogress uwtable
define internal noundef i64 @_ZN5folly6chronoL25clock_gettime_ns_fallbackEi(i32 noundef %0) #1 {
bb.a:
  %1 = alloca %struct.timespec, align 8           ; 5 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  %i.a = load ptr, ptr @_ZN5folly6chrono13clock_gettimeE, align 8, !tbaa !11
  %i.b = call noundef i32 %i.a(i32 noundef %0, ptr noundef nonnull %1)
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.b, label %bb.c, !prof !13

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %1, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.e = load i64, ptr %i.d, align 8, !tbaa !14
  %i.f = mul nsw i64 %i.c, 1000000000
  %i.g = add nsw i64 %i.f, %i.e
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi i64 [ %i.g, %bb.b ], [ -1, %bb.a ]
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  ret i64 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN5folly6chrono12_GLOBAL__N_115VdsoInitializerD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(8) dereferenceable(8) %0) unnamed_addr #3 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !16
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr @clock_gettime, ptr @_ZN5folly6chrono13clock_gettimeE, align 8, !tbaa !11
  store ptr @_ZN5folly6chronoL25clock_gettime_ns_fallbackEi, ptr @_ZN5folly6chrono16clock_gettime_nsE, align 8, !tbaa !11
  %i.b = load ptr, ptr %0, align 8, !tbaa !16
  %i.c = tail call i32 @dlclose(ptr noundef %i.b) #6 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: nofree nounwind
declare i32 @__cxa_atexit(ptr, ptr, ptr) local_unnamed_addr #4

; Function Attrs: nounwind
declare ptr @dlopen(ptr noundef, i32 noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare ptr @dlsym(ptr noundef, ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind
declare i32 @dlclose(ptr noundef) local_unnamed_addr #0

; Function Attrs: nounwind uwtable
define internal void @_GLOBAL__sub_I_ClockGettimeWrappers.cpp() #5 section ".text.startup" {
bb.a:
  %i.a = tail call ptr @dlopen(ptr noundef nonnull @.str, i32 noundef 5) #6 ; 3 uses
  store ptr %i.a, ptr @_ZN5folly6chrono12_GLOBAL__N_116vdso_initializerE, align 8, !tbaa !16
  %.not.i.i = icmp eq ptr %i.a, null
  br i1 %.not.i.i, label %__cxx_global_var_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @dlsym(ptr noundef nonnull %i.a, ptr noundef nonnull @.str.1) #6 ; 2 uses
  %.not7.i.i = icmp eq ptr %i.b, null
  br i1 %.not7.i.i, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  store ptr %i.b, ptr @_ZN5folly6chrono13clock_gettimeE, align 8, !tbaa !11
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %i.c = load ptr, ptr @_ZN5folly6chrono12_GLOBAL__N_116vdso_initializerE, align 8, !tbaa !16
  %i.d = tail call ptr @dlsym(ptr noundef %i.c, ptr noundef nonnull @.str.2) #6 ; 2 uses
  %.not8.i.i = icmp eq ptr %i.d, null
  br i1 %.not8.i.i, label %__cxx_global_var_init.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  store ptr %i.d, ptr @_ZN5folly6chrono16clock_gettime_nsE, align 8, !tbaa !11
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.d, %bb.e
  %i.e = tail call i32 @__cxa_atexit(ptr nonnull @_ZN5folly6chrono12_GLOBAL__N_115VdsoInitializerD2Ev, ptr nonnull @_ZN5folly6chrono12_GLOBAL__N_116vdso_initializerE, ptr nonnull @__dso_handle) #6 ; 0 uses
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { nofree nounwind }
attributes #5 = { nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { nounwind }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !12, i64 0}
!12 = !{!"any pointer", !9, i64 0}
!13 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!14 = !{!15, !15, i64 0}
!15 = !{!"long", !9, i64 0}
!16 = !{!17, !12, i64 0}
!17 = !{!"_ZTSN5folly6chrono12_GLOBAL__N_115VdsoInitializerE", !12, i64 0}
end_hunk_0
