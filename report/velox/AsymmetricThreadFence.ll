inline.NumInlined: 22
inline.NumDeleted: 20
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.folly::detail::safe_assert_arg" = type { ptr, ptr, i32, ptr, ptr }
%"struct.folly::c_array" = type { [1 x i8] }
%"class.folly::Indestructible" = type { %"struct.folly::Indestructible<std::mutex>::Storage" }
%"struct.folly::Indestructible<std::mutex>::Storage" = type { %"union.std::aligned_storage<40, 8>::type" }
%"union.std::aligned_storage<40, 8>::type" = type { [40 x i8] }

$__clang_call_terminate = comdat any

$_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE = comdat any

@.str = private unnamed_addr constant [6 x i8] c"impl_\00", align 1
@_ZZN5folly32asymmetric_thread_fence_heavy_fn5impl_ESt12memory_orderE30__folly_detail_safe_assert_arg = internal constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.1, ptr @.str.2, i32 82, ptr @.str, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE }, align 8
@.str.1 = private unnamed_addr constant [46 x i8] c"-1 != detail::sysMembarrierPrivateExpedited()\00", align 1
@.str.2 = private unnamed_addr constant [98 x i8] c"/opt-bench/work/velox/velox/build/_deps/folly-src/folly/synchronization/AsymmetricThreadFence.cpp\00", align 1
@_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE = linkonce_odr constant %"struct.folly::c_array" zeroinitializer, comdat, align 1
@_ZZN5folly12_GLOBAL__N_128sysMembarrierAvailableCachedEvE5cache.0 = internal unnamed_addr global i8 0, align 1
@_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex = internal global %"class.folly::Indestructible" zeroinitializer, align 8
@_ZGVZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex = internal global i64 0, align 8
@_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE9dummyPage = internal unnamed_addr global ptr null, align 8
@.str.3 = private unnamed_addr constant [19 x i8] c"mprotectMembarrier\00", align 1
@_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE30__folly_detail_safe_assert_arg = internal constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.4, ptr @.str.2, i32 49, ptr @.str.3, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE }, align 8
@.str.4 = private unnamed_addr constant [27 x i8] c"((void *) -1) != dummyPage\00", align 1
@_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE30__folly_detail_safe_assert_arg_0 = internal constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.5, ptr @.str.2, i32 54, ptr @.str.3, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE }, align 8
@.str.5 = private unnamed_addr constant [40 x i8] c"-1 != mprotect(dummyPage, 1, 0x1 | 0x2)\00", align 1
@_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE30__folly_detail_safe_assert_arg_1 = internal constant %"struct.folly::detail::safe_assert_arg" { ptr @.str.7, ptr @.str.2, i32 63, ptr @.str.3, ptr @_ZN5folly6detail21safe_assert_msg_typesINS0_22safe_assert_msg_type_sIJEEEE5valueE }, align 8
@.str.7 = private unnamed_addr constant [34 x i8] c"-1 != mprotect(dummyPage, 1, 0x1)\00", align 1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly32asymmetric_thread_fence_heavy_fn5impl_ESt12memory_order(i32 noundef %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZZN5folly12_GLOBAL__N_128sysMembarrierAvailableCachedEvE5cache.0 monotonic, align 1 ; 2 uses
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef zeroext i1 @_ZN5folly6detail38sysMembarrierPrivateExpeditedAvailableEv()
          to label %.noexc unwind label %bb.s

.noexc:                                           ; preds = %bb.b
  %i.d = select i1 %i.c, i8 1, i8 -1              ; 2 uses
  store atomic i8 %i.d, ptr @_ZZN5folly12_GLOBAL__N_128sysMembarrierAvailableCachedEvE5cache.0 monotonic, align 1
  br label %bb.c

bb.c:                                             ; preds = %.noexc, %bb.a
  %.0.i = phi i8 [ %i.d, %.noexc ], [ %i.a, %bb.a ]
  %i.e = icmp eq i8 %.0.i, 1
  br i1 %i.e, label %bb.d, label %bb.g

bb.d:                                             ; preds = %bb.c
  %i.f = invoke noundef i32 @_ZN5folly6detail29sysMembarrierPrivateExpeditedEv()
          to label %bb.e unwind label %bb.s

bb.e:                                             ; preds = %bb.d
  %.not = icmp eq i32 %i.f, -1
  br i1 %.not, label %bb.f, label %bb.r

bb.f:                                             ; preds = %bb.e
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly32asymmetric_thread_fence_heavy_fn5impl_ESt12memory_orderE30__folly_detail_safe_assert_arg) #9
  unreachable

bb.g:                                             ; preds = %bb.c
  %i.g = load atomic i8, ptr @_ZGVZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex acquire, align 8
  %i.h = icmp eq i8 %i.g, 0
  br i1 %i.h, label %bb.h, label %bb.j, !prof !11

bb.h:                                             ; preds = %bb.g
  %i.i = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex) #10
  %.not.i = icmp eq i32 %i.i, 0
  br i1 %.not.i, label %bb.j, label %bb.i

bb.i:                                             ; preds = %bb.h
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex, i8 0, i64 40, i1 false)
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex) #10
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.h, %bb.g
  %i.j = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex) #10 ; 2 uses
  %.not.i.i.i = icmp eq i32 %i.j, 0
  br i1 %.not.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.j) #11
          to label %.noexc1 unwind label %bb.s

.noexc1:                                          ; preds = %bb.k
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i:        ; preds = %bb.j
  %i.k = load ptr, ptr @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE9dummyPage, align 8, !tbaa !12 ; 2 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.l, label %bb.n

bb.l:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.m = tail call ptr @mmap(ptr noundef null, i64 noundef 1, i32 noundef 1, i32 noundef 34, i32 noundef -1, i64 noundef 0) #10 ; 3 uses
  store ptr %i.m, ptr @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE9dummyPage, align 8, !tbaa !12
  %.not1.i = icmp eq ptr %i.m, inttoptr (i64 -1 to ptr)
  br i1 %.not1.i, label %bb.m, label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE30__folly_detail_safe_assert_arg) #9
  unreachable

bb.n:                                             ; preds = %bb.l, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i
  %i.n = phi ptr [ %i.k, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i ], [ %i.m, %bb.l ]
  %i.o = tail call i32 @mprotect(ptr noundef %i.n, i64 noundef 1, i32 noundef 3) #10
  %.not2.i = icmp eq i32 %i.o, -1
  br i1 %.not2.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE30__folly_detail_safe_assert_arg_0) #9
  unreachable

bb.p:                                             ; preds = %bb.n
  %i.p = load ptr, ptr @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE9dummyPage, align 8, !tbaa !12 ; 2 uses
  store volatile i8 0, ptr %i.p, align 1, !tbaa !14
  %i.q = tail call i32 @mprotect(ptr noundef nonnull %i.p, i64 noundef 1, i32 noundef 1) #10
  %.not3.i = icmp eq i32 %i.q, -1
  br i1 %.not3.i, label %bb.q, label %_ZN5folly12_GLOBAL__N_118mprotectMembarrierEv.exit

bb.q:                                             ; preds = %bb.p
  tail call void (ptr, ...) @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr noundef nonnull @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE30__folly_detail_safe_assert_arg_1) #9
  unreachable

_ZN5folly12_GLOBAL__N_118mprotectMembarrierEv.exit: ; preds = %bb.p
  %i.r = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) @_ZZN5folly12_GLOBAL__N_118mprotectMembarrierEvE13mprotectMutex) #10 ; 0 uses
  br label %bb.r

bb.r:                                             ; preds = %_ZN5folly12_GLOBAL__N_118mprotectMembarrierEv.exit, %bb.e
  ret void

bb.s:                                             ; preds = %bb.k, %bb.b, %bb.d
  %i.s = landingpad { ptr, i32 }
          catch ptr null
  %i.t = extractvalue { ptr, i32 } %i.s, 0
  tail call void @__clang_call_terminate(ptr %i.t) #12
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #10 ; 0 uses
  tail call void @_ZSt9terminatev() #12
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

declare noundef i32 @_ZN5folly6detail29sysMembarrierPrivateExpeditedEv() local_unnamed_addr #3

declare noundef zeroext i1 @_ZN5folly6detail38sysMembarrierPrivateExpeditedAvailableEv() local_unnamed_addr #3

; Function Attrs: cold noreturn nounwind
declare void @_ZN5folly6detail21safe_assert_terminateILb1EEEvPKNS0_15safe_assert_argEz(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nofree nounwind
declare i32 @__cxa_guard_acquire(ptr) local_unnamed_addr #5

; Function Attrs: nofree nounwind
declare void @__cxa_guard_release(ptr) local_unnamed_addr #5

; Function Attrs: nounwind
declare ptr @mmap(ptr noundef, i64 noundef, i32 noundef, i32 noundef, i32 noundef, i64 noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @mprotect(ptr noundef, i64 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #7

; Function Attrs: noreturn
declare void @_ZSt20__throw_system_errori(i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #6

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #6

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold noreturn nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nofree nounwind }
attributes #6 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #8 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { cold noreturn nounwind }
attributes #10 = { nounwind }
attributes #11 = { noreturn }
attributes #12 = { noreturn nounwind }

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
!11 = !{!"branch_weights", i32 1, i32 1048575}
!12 = !{!13, !13, i64 0}
!13 = !{!"any pointer", !9, i64 0}
!14 = !{!9, !9, i64 0}
end_hunk_0
