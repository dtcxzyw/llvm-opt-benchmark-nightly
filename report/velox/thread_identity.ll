inline.NumInlined: 21
inline.NumDeleted: 16
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" = type { i32, i32, i8 }
%struct.__sigset_t = type { [16 x i64] }

$_ZN4absl12lts_2024011613base_internal12CallOnceImplIRFvPFvPvEEJRS5_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_ = comdat any

$_ZZN4absl12lts_2024011613base_internal12CallOnceImplIRFvPFvPvEEJRS5_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans = comdat any

@_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_127thread_identity_pthread_keyE = internal global i32 0, align 4
@_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_123pthread_key_initializedE.0 = internal unnamed_addr global i8 0, align 1
@_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_129init_thread_identity_key_onceE = internal global { { i32 } } zeroinitializer, align 4
@_ZZN4absl12lts_2024011613base_internal12CallOnceImplIRFvPFvPvEEJRS5_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans = linkonce_odr constant [3 x %"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition"] [%"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" { i32 0, i32 1707250555, i8 1 }, %"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" { i32 1707250555, i32 94570706, i8 0 }, %"struct.absl::lts_20240116::base_internal::SpinLockWaitTransition" { i32 221, i32 221, i8 1 }], comdat, align 16

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011613base_internal24SetCurrentThreadIdentityEPNS1_14ThreadIdentityEPFvPvE(ptr noundef %0, ptr noundef %1) local_unnamed_addr #0 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 2 uses
  %2 = alloca %struct.__sigset_t, align 8         ; 4 uses
  %3 = alloca %struct.__sigset_t, align 8         ; 4 uses
  store ptr %1, ptr %i.a, align 8, !tbaa !8
  %i.b = load atomic i32, ptr @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_129init_thread_identity_key_onceE acquire, align 4
  %.not.i = icmp eq i32 %i.b, 221
  br i1 %.not.i, label %_ZN4absl12lts_202401169call_onceIRFvPFvPvEEJRS4_EEEvRNS0_9once_flagEOT_DpOT0_.exit, label %bb.b, !prof !10

bb.b:                                             ; preds = %bb.a
  call void @_ZN4absl12lts_2024011613base_internal12CallOnceImplIRFvPFvPvEEJRS5_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef nonnull @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_129init_thread_identity_key_onceE, i32 noundef 1, ptr noundef nonnull @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_125AllocateThreadIdentityKeyEPFvPvE, ptr noundef nonnull align 8 dereferenceable(8) %i.a)
  br label %_ZN4absl12lts_202401169call_onceIRFvPFvPvEEJRS4_EEEvRNS0_9once_flagEOT_DpOT0_.exit

_ZN4absl12lts_202401169call_onceIRFvPFvPvEEJRS4_EEEvRNS0_9once_flagEOT_DpOT0_.exit: ; preds = %bb.a, %bb.b
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #7
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.c = call i32 @sigfillset(ptr noundef nonnull %2) #7 ; 0 uses
  %i.d = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %2, ptr noundef nonnull %3) #7 ; 0 uses
  %i.e = load i32, ptr @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_127thread_identity_pthread_keyE, align 4, !tbaa !11
  %i.f = call i32 @pthread_setspecific(i32 noundef %i.e, ptr noundef %0) #7 ; 0 uses
  %i.g = call i32 @pthread_sigmask(i32 noundef 2, ptr noundef nonnull %3, ptr noundef null) #7 ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #7
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define internal void @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_125AllocateThreadIdentityKeyEPFvPvE(ptr noundef %0) #1 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_key_create(ptr noundef nonnull @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_127thread_identity_pthread_keyE, ptr noundef %0) #7 ; 0 uses
  store atomic i8 1, ptr @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_123pthread_key_initializedE.0 release, align 1
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

; Function Attrs: nounwind
declare i32 @sigfillset(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_sigmask(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_setspecific(i32 noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define void @_ZN4absl12lts_2024011613base_internal26ClearCurrentThreadIdentityEv() local_unnamed_addr #4 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define noundef ptr @_ZN4absl12lts_2024011613base_internal30CurrentThreadIdentityIfPresentEv() local_unnamed_addr #1 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_123pthread_key_initializedE.0 acquire, align 1, !range !12, !noundef !13
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = load i32, ptr @_ZN4absl12lts_2024011613base_internal12_GLOBAL__N_127thread_identity_pthread_keyE, align 4, !tbaa !11
  %i.d = tail call ptr @pthread_getspecific(i32 noundef %i.c) #7
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  %.0 = phi ptr [ %i.d, %bb.b ], [ null, %bb.a ]
  ret ptr %.0
}

; Function Attrs: nounwind
declare ptr @pthread_getspecific(i32 noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_key_create(ptr noundef, ptr noundef) local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

; Function Attrs: mustprogress noinline uwtable
define linkonce_odr void @_ZN4absl12lts_2024011613base_internal12CallOnceImplIRFvPFvPvEEJRS5_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_(ptr noundef %0, i32 noundef %1, ptr noundef nonnull %2, ptr noundef nonnull align 8 dereferenceable(8) %3) local_unnamed_addr #5 comdat personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = cmpxchg ptr %0, i32 0, i32 1707250555 monotonic monotonic, align 4
  %i.b = extractvalue { i32, i1 } %i.a, 1
  br i1 %i.b, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2024011613base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef nonnull %0, i32 noundef 3, ptr noundef nonnull @_ZZN4absl12lts_2024011613base_internal12CallOnceImplIRFvPFvPvEEJRS5_EEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_E5trans, i32 noundef %1)
  %i.d = icmp eq i32 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread: ; preds = %bb.a, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  %i.e = load ptr, ptr %3, align 8, !tbaa !8
  tail call void %2(ptr noundef %i.e), !inline_history !14
  %i.f = atomicrmw xchg ptr %0, i32 221 release, align 4
  %i.g = icmp eq i32 %i.f, 94570706
  br i1 %i.g, label %bb.b, label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread
  tail call void @AbslInternalSpinLockWake_lts_20240116(ptr noundef nonnull %0, i1 noundef zeroext true)
  br label %_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit

_ZN4absl12lts_2024011613base_internal12SpinLockWakeEPSt6atomicIjEb.exit: ; preds = %bb.b, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit.thread, %_ZNSt13__atomic_baseIjE23compare_exchange_strongERjjSt12memory_orderS2_.exit
  ret void
}

declare noundef i32 @_ZN4absl12lts_2024011613base_internal12SpinLockWaitEPSt6atomicIjEiPKNS1_22SpinLockWaitTransitionENS1_14SchedulingModeE(ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #6

declare void @AbslInternalSpinLockWake_lts_20240116(ptr noundef, i1 noundef zeroext) local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { mustprogress noinline uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { nounwind }

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
!8 = !{!9, !9, i64 0}
!9 = !{!"any pointer", !6, i64 0}
!10 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!11 = !{!5, !5, i64 0}
!12 = !{i8 0, i8 2}
!13 = !{}
!14 = distinct !{null}
end_hunk_0
