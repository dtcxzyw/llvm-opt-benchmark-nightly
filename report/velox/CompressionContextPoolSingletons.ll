inline.NumInlined: 16
inline.NumDeleted: 12
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.google::FlagRegisterer" = type { i8 }

@_ZN3fLDL53FLAGS_nonofolly_zstd_cctx_pool_stripes_cpu_multiplierE = internal global double 0.000000e+00, align 8
@_ZN3fLD49FLAGS_folly_zstd_cctx_pool_stripes_cpu_multiplierE = global double 0.000000e+00, align 8
@_ZN3fLDL45o_folly_zstd_cctx_pool_stripes_cpu_multiplierE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str = private unnamed_addr constant [44 x i8] c"folly_zstd_cctx_pool_stripes_cpu_multiplier\00", align 1
@.str.3 = private unnamed_addr constant [98 x i8] c"Number of stripes for compression context pool specified as a multiplier of hardware concurrency.\00", align 1
@.str.4 = private unnamed_addr constant [105 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/compression/CompressionContextPoolSingletons.cpp\00", align 1
@_ZN3fLDL51FLAGS_nofolly_zstd_cctx_pool_stripes_cpu_multiplierE = internal global double 0.000000e+00, align 8
@_ZN3fLDL53FLAGS_nonofolly_zstd_dctx_pool_stripes_cpu_multiplierE = internal global double 0.000000e+00, align 8
@_ZN3fLD49FLAGS_folly_zstd_dctx_pool_stripes_cpu_multiplierE = global double 0.000000e+00, align 8
@_ZN3fLDL45o_folly_zstd_dctx_pool_stripes_cpu_multiplierE = internal global %"class.google::FlagRegisterer" zeroinitializer, align 1
@.str.9 = private unnamed_addr constant [44 x i8] c"folly_zstd_dctx_pool_stripes_cpu_multiplier\00", align 1
@.str.10 = private unnamed_addr constant [100 x i8] c"Number of stripes for decompression context pool specified as a multiplier of hardware concurrency.\00", align 1
@_ZN3fLDL51FLAGS_nofolly_zstd_dctx_pool_stripes_cpu_multiplierE = internal global double 0.000000e+00, align 8
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 65535, ptr @_GLOBAL__sub_I_CompressionContextPoolSingletons.cpp, ptr null }]
@llvm.compiler.used = appending global [2 x ptr] [ptr @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj, ptr @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj], section "llvm.metadata"

; Function Attrs: nounwind
declare extern_weak noundef double @_Z51folly_zstd_cctx_pool_stripes_cpu_multiplier_defaultv() #0

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare ptr @llvm.invariant.start.p0(i64 immarg, ptr captures(none)) #1

declare void @_ZN6google14FlagRegistererC1IdEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1), ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: nounwind
declare extern_weak noundef double @_Z51folly_zstd_dctx_pool_stripes_cpu_multiplier_defaultv() #0

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #3 align 2

; Function Attrs: uwtable
define internal void @_GLOBAL__sub_I_CompressionContextPoolSingletons.cpp() #4 section ".text.startup" {
bb.a:
  %.not.i = icmp eq ptr @_Z51folly_zstd_cctx_pool_stripes_cpu_multiplier_defaultv, null
  br i1 %.not.i, label %__cxx_global_var_init.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = tail call noundef double @_Z51folly_zstd_cctx_pool_stripes_cpu_multiplier_defaultv() #5
  br label %__cxx_global_var_init.exit

__cxx_global_var_init.exit:                       ; preds = %bb.a, %bb.b
  %i.b = phi double [ %i.a, %bb.b ], [ 0.000000e+00, %bb.a ] ; 3 uses
  store double %i.b, ptr @_ZN3fLDL53FLAGS_nonofolly_zstd_cctx_pool_stripes_cpu_multiplierE, align 8, !tbaa !12
  %i.c = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN3fLDL53FLAGS_nonofolly_zstd_cctx_pool_stripes_cpu_multiplierE) ; 0 uses
  store double %i.b, ptr @_ZN3fLD49FLAGS_folly_zstd_cctx_pool_stripes_cpu_multiplierE, align 8, !tbaa !12
  store double %i.b, ptr @_ZN3fLDL51FLAGS_nofolly_zstd_cctx_pool_stripes_cpu_multiplierE, align 8, !tbaa !12
  tail call void @_ZN6google14FlagRegistererC1IdEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLDL45o_folly_zstd_cctx_pool_stripes_cpu_multiplierE, ptr noundef nonnull @.str, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN3fLD49FLAGS_folly_zstd_cctx_pool_stripes_cpu_multiplierE, ptr noundef nonnull @_ZN3fLDL51FLAGS_nofolly_zstd_cctx_pool_stripes_cpu_multiplierE)
  %.not.i1 = icmp eq ptr @_Z51folly_zstd_dctx_pool_stripes_cpu_multiplier_defaultv, null
  br i1 %.not.i1, label %__cxx_global_var_init.6.exit, label %bb.c

bb.c:                                             ; preds = %__cxx_global_var_init.exit
  %i.d = tail call noundef double @_Z51folly_zstd_dctx_pool_stripes_cpu_multiplier_defaultv() #5
  br label %__cxx_global_var_init.6.exit

__cxx_global_var_init.6.exit:                     ; preds = %__cxx_global_var_init.exit, %bb.c
  %i.e = phi double [ %i.d, %bb.c ], [ 0.000000e+00, %__cxx_global_var_init.exit ] ; 3 uses
  store double %i.e, ptr @_ZN3fLDL53FLAGS_nonofolly_zstd_dctx_pool_stripes_cpu_multiplierE, align 8, !tbaa !12
  %i.f = tail call ptr @llvm.invariant.start.p0(i64 8, ptr nonnull @_ZN3fLDL53FLAGS_nonofolly_zstd_dctx_pool_stripes_cpu_multiplierE) ; 0 uses
  store double %i.e, ptr @_ZN3fLD49FLAGS_folly_zstd_dctx_pool_stripes_cpu_multiplierE, align 8, !tbaa !12
  store double %i.e, ptr @_ZN3fLDL51FLAGS_nofolly_zstd_dctx_pool_stripes_cpu_multiplierE, align 8, !tbaa !12
  tail call void @_ZN6google14FlagRegistererC1IdEEPKcS3_S3_PT_S5_(ptr noundef nonnull align 1 dereferenceable(1) @_ZN3fLDL45o_folly_zstd_dctx_pool_stripes_cpu_multiplierE, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.10, ptr noundef nonnull @.str.4, ptr noundef nonnull @_ZN3fLD49FLAGS_folly_zstd_dctx_pool_stripes_cpu_multiplierE, ptr noundef nonnull @_ZN3fLDL51FLAGS_nofolly_zstd_dctx_pool_stripes_cpu_multiplierE)
  ret void
}

attributes #0 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }

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
!12 = !{!13, !13, i64 0}
!13 = !{!"double", !10, i64 0}
end_hunk_0
