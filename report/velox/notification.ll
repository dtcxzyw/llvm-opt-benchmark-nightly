inline.NumInlined: 21
inline.NumDeleted: 13
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::Condition" = type { [16 x i8], ptr, ptr }
%"class.absl::lts_20240116::synchronization_internal::KernelTimeout" = type { i64 }

$__clang_call_terminate = comdat any

$_ZN4absl12lts_2024011612Notification23HasBeenNotifiedInternalEPKSt6atomicIbE = comdat any

$_ZN4absl12lts_202401169Condition19CastAndCallFunctionIKSt6atomicIbEEEbPKS1_ = comdat any

@_ZN4absl12lts_2024011612NotificationD1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2024011612NotificationD2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011612Notification6NotifyEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store atomic i8 1, ptr %i.a release, align 8
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #7
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN4absl12lts_2024011612NotificationD2Ev(ptr noundef nonnull align 8 dead_on_return(9) dereferenceable(9) %0) unnamed_addr #2 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  invoke void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit unwind label %bb.c

_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.a
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.b

bb.b:                                             ; preds = %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit
  %i.a = landingpad { ptr, i32 }
          catch ptr null
  %i.b = extractvalue { ptr, i32 } %i.a, 0
  tail call void @__clang_call_terminate(ptr %i.b) #7
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %_ZN4absl12lts_202401169MutexLockC2EPNS0_5MutexE.exit
  ret void

bb.c:                                             ; preds = %bb.a
  %i.c = landingpad { ptr, i32 }
          catch ptr null
  %i.d = extractvalue { ptr, i32 } %i.c, 0
  tail call void @__clang_call_terminate(ptr %i.d) #7
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #3 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #8 ; 0 uses
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define void @_ZNK4absl12lts_2024011612Notification19WaitForNotificationEv(ptr noundef nonnull align 8 dereferenceable(9) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"class.absl::lts_20240116::Condition", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i8, ptr %i.a acquire, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #8
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN4absl12lts_202401169Condition19CastAndCallFunctionIKSt6atomicIbEEEbPKS1_, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 24
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr @_ZN4absl12lts_2024011612Notification23HasBeenNotifiedInternalEPKSt6atomicIbE, ptr %1, align 8
  %i.g = call noundef zeroext i1 @_ZN4absl12lts_202401165Mutex14LockWhenCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 -1, i1 noundef zeroext true) ; 0 uses
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #8
  call void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: inlinehint mustprogress nounwind uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_2024011612Notification23HasBeenNotifiedInternalEPKSt6atomicIbE(ptr noundef %0) #5 comdat align 2 {
bb.a:
  %i.a = load atomic i8, ptr %0 acquire, align 1, !range !8, !noundef !9
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

declare void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2024011612Notification30WaitForNotificationWithTimeoutENS0_8DurationE(ptr noundef nonnull align 8 dereferenceable(9) %0, i64 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20240116::synchronization_internal::KernelTimeout", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20240116::Condition", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i8, ptr %i.a acquire, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN4absl12lts_202401169Condition19CastAndCallFunctionIKSt6atomicIbEEEbPKS1_, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr @_ZN4absl12lts_2024011612Notification23HasBeenNotifiedInternalEPKSt6atomicIbE, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4absl12lts_2024011624synchronization_internal13KernelTimeoutC1ENS0_8DurationE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %1, i32 %2)
  %i.g = load i64, ptr %3, align 8
  %i.h = call noundef zeroext i1 @_ZN4absl12lts_202401165Mutex14LockWhenCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %i.g, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.0.in
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_2024011612Notification31WaitForNotificationWithDeadlineENS0_4TimeE(ptr noundef nonnull align 8 dereferenceable(9) %0, i64 %1, i32 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.absl::lts_20240116::synchronization_internal::KernelTimeout", align 8 ; 4 uses
  %4 = alloca %"class.absl::lts_20240116::Condition", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = load atomic i8, ptr %i.a acquire, align 8, !range !8, !noundef !9
  %i.c = trunc nuw i8 %i.b to i1
  br i1 %i.c, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #8
  %i.d = getelementptr inbounds nuw i8, ptr %4, i64 16
  %i.e = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 0, ptr %i.e, align 8
  store ptr @_ZN4absl12lts_202401169Condition19CastAndCallFunctionIKSt6atomicIbEEEbPKS1_, ptr %i.d, align 8, !tbaa !10
  %i.f = getelementptr inbounds nuw i8, ptr %4, i64 24
  store ptr %i.a, ptr %i.f, align 8, !tbaa !13
  store ptr @_ZN4absl12lts_2024011612Notification23HasBeenNotifiedInternalEPKSt6atomicIbE, ptr %4, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3)
  call void @_ZN4absl12lts_2024011624synchronization_internal13KernelTimeoutC1ENS0_4TimeE(ptr noundef nonnull align 8 dereferenceable(8) %3, i64 %1, i32 %2)
  %i.g = load i64, ptr %3, align 8
  %i.h = call noundef zeroext i1 @_ZN4absl12lts_202401165Mutex14LockWhenCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %4, i64 %i.g, i1 noundef zeroext true)
  call void @llvm.lifetime.end.p0(ptr nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #8
  call void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %.0.in = phi i1 [ true, %bb.a ], [ %i.h, %bb.b ]
  ret i1 %.0.in
}

declare void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #6

declare noundef zeroext i1 @_ZN4absl12lts_202401165Mutex14LockWhenCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEb(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i64, i1 noundef zeroext) local_unnamed_addr #6

declare void @_ZN4absl12lts_2024011624synchronization_internal13KernelTimeoutC1ENS0_8DurationE(ptr noundef nonnull align 8 dereferenceable(8), i64, i32) unnamed_addr #6

declare void @_ZN4absl12lts_2024011624synchronization_internal13KernelTimeoutC1ENS0_4TimeE(ptr noundef nonnull align 8 dereferenceable(8), i64, i32) unnamed_addr #6

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN4absl12lts_202401169Condition19CastAndCallFunctionIKSt6atomicIbEEEbPKS1_(ptr noundef %0) #0 comdat align 2 {
bb.a:
  %i.a = load i64, ptr %0, align 8
  %i.b = inttoptr i64 %i.a to ptr
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !13
  %i.e = tail call noundef zeroext i1 %i.b(ptr noundef %i.d)
  ret i1 %i.e
}

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { inlinehint mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { noreturn nounwind }
attributes #8 = { nounwind }

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
!8 = !{i8 0, i8 2}
!9 = !{}
!10 = !{!11, !12, i64 16}
!11 = !{!"_ZTSN4absl12lts_202401169ConditionE", !6, i64 0, !12, i64 16, !12, i64 24}
!12 = !{!"any pointer", !6, i64 0}
!13 = !{!11, !12, i64 24}
end_hunk_0
