inline.NumInlined: 13
inline.NumDeleted: 10
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::Condition" = type { [16 x i8], ptr, ptr }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [90 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/synchronization/blocking_counter.cc\00", align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.2 = private unnamed_addr constant [19 x i8] c"initial_count >= 0\00", align 1
@.str.3 = private unnamed_addr constant [39 x i8] c"BlockingCounter initial_count negative\00", align 1
@.str.4 = private unnamed_addr constant [11 x i8] c"count >= 0\00", align 1
@.str.5 = private unnamed_addr constant [56 x i8] c"BlockingCounter::DecrementCount() called too many times\00", align 1
@.str.6 = private unnamed_addr constant [18 x i8] c"num_waiting_ == 0\00", align 1
@.str.7 = private unnamed_addr constant [31 x i8] c"multiple threads called Wait()\00", align 1

@_ZN4absl12lts_2024011615BlockingCounterC1Ei = unnamed_addr alias void (ptr, i32), ptr @_ZN4absl12lts_2024011615BlockingCounterC2Ei

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011615BlockingCounterC2Ei(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(17) initializes((0, 17)) %0, i32 noundef %1) unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  store i64 0, ptr %0, align 8, !tbaa !7
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %1, ptr %i.a, align 8, !tbaa !10
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 0, ptr %i.b, align 4, !tbaa !12
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = icmp eq i32 %1, 0
  %i.e = zext i1 %i.d to i8
  store i8 %i.e, ptr %i.c, align 8, !tbaa !18
  %i.f = icmp slt i32 %1, 0
  br i1 %i.f, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 35, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011615BlockingCounter14DecrementCountEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = atomicrmw sub ptr %i.a, i32 1 acq_rel, align 4 ; 2 uses
  %i.c = icmp slt i32 %i.b, 1
  br i1 %i.c, label %bb.b, label %bb.c, !prof !19

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 41, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = icmp eq i32 %i.b, 1                      ; 2 uses
  br i1 %i.d, label %bb.d, label %_ZN4absl12lts_202401169MutexLockD2Ev.exit

bb.d:                                             ; preds = %bb.c
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.e, align 8, !tbaa !18
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #6
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.d, %bb.c
  ret i1 %i.d
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011615BlockingCounter4WaitEv(ptr noundef nonnull align 8 dereferenceable(17) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20240116::Condition", align 8 ; 5 uses
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.b = load i32, ptr %i.a, align 4, !tbaa !12
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.e, label %bb.b, !prof !20

bb.b:                                             ; preds = %bb.a
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 55, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.c = landingpad { ptr, i32 }
          cleanup
  br label %bb.i

bb.e:                                             ; preds = %bb.a
  store i32 1, ptr %i.a, align 4, !tbaa !12
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #7
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  invoke void @_ZN4absl12lts_202401169ConditionC1EPFbPvES2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN4absl12lts_2024011612_GLOBAL__N_16IsDoneEPv, ptr noundef nonnull %i.d)
          to label %bb.f unwind label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.e = invoke noundef zeroext i1 @_ZN4absl12lts_202401165Mutex11AwaitCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 -1)
          to label %_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit unwind label %bb.h ; 0 uses

_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.g

bb.g:                                             ; preds = %_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  call void @__clang_call_terminate(ptr %i.g) #6
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit
  ret void

bb.h:                                             ; preds = %bb.f, %bb.e
  %i.h = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #7
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %bb.d
  %.pn = phi { ptr, i32 } [ %i.c, %bb.d ], [ %i.h, %bb.h ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit4 unwind label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  call void @__clang_call_terminate(ptr %i.j) #6
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit4:       ; preds = %bb.i
  resume { ptr, i32 } %.pn
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_2024011612_GLOBAL__N_16IsDoneEPv(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !21, !range !22, !noundef !23
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

declare void @_ZN4absl12lts_202401169ConditionC1EPFbPvES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

declare void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_202401165Mutex11AwaitCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i64) local_unnamed_addr #2

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { noreturn nounwind }
attributes #7 = { nounwind }

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
!7 = !{!8, !9, i64 0}
!8 = !{!"_ZTSSt13__atomic_baseIlE", !9, i64 0}
!9 = !{!"long", !5, i64 0}
!10 = !{!11, !4, i64 0}
!11 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!12 = !{!13, !4, i64 12}
!13 = !{!"_ZTSN4absl12lts_2024011615BlockingCounterE", !14, i64 0, !16, i64 8, !4, i64 12, !17, i64 16}
!14 = !{!"_ZTSN4absl12lts_202401165MutexE", !15, i64 0}
!15 = !{!"_ZTSSt6atomicIlE", !8, i64 0}
!16 = !{!"_ZTSSt6atomicIiE", !11, i64 0}
!17 = !{!"bool", !5, i64 0}
!18 = !{!13, !17, i64 16}
!19 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!20 = !{!"branch_weights", !"expected", i32 2000, i32 1}
!21 = !{!17, !17, i64 0}
!22 = !{i8 0, i8 2}
!23 = !{}
end_hunk_0
