inline.NumInlined: 6
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::Condition" = type { [16 x i8], ptr, ptr }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [81 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/synchronization/barrier.cc\00", align 1
@.str.1 = private unnamed_addr constant [65 x i8] c"Block() called too many times.  num_to_block_=%d out of total=%d\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"Check %s failed: %s\00", align 1
@.str.3 = private unnamed_addr constant [24 x i8] c"this->num_to_exit_ >= 0\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"barrier underflow\00", align 1

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_202401167Barrier5BlockEv(ptr noundef nonnull align 8 dereferenceable(16) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.absl::lts_20240116::Condition", align 8 ; 5 uses
  tail call void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 3 uses
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8    ; 2 uses
  %i.c = add nsw i32 %i.b, -1                     ; 2 uses
  store i32 %i.c, ptr %i.a, align 8, !tbaa !8
  %i.d = icmp slt i32 %i.b, 1
  br i1 %i.d, label %bb.b, label %bb.e

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 12
  %i.f = load i32, ptr %i.e, align 4, !tbaa !14
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 36, ptr noundef nonnull @.str.1, i32 noundef %i.c, i32 noundef %i.f)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.e:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #6
  invoke void @_ZN4absl12lts_202401169ConditionC1EPFbPvES2_(ptr noundef nonnull align 8 dereferenceable(32) %1, ptr noundef nonnull @_ZN4absl12lts_20240116L6IsZeroEPv, ptr noundef nonnull %i.a)
          to label %bb.f unwind label %bb.i

bb.f:                                             ; preds = %bb.e
  %i.h = invoke noundef zeroext i1 @_ZN4absl12lts_202401165Mutex11AwaitCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 -1)
          to label %_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit unwind label %bb.i ; 0 uses

_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit: ; preds = %bb.f
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 12 ; 2 uses
  %i.j = load i32, ptr %i.i, align 4, !tbaa !14   ; 2 uses
  %i.k = add nsw i32 %i.j, -1                     ; 2 uses
  store i32 %i.k, ptr %i.i, align 4, !tbaa !14
  %i.l = icmp slt i32 %i.j, 1
  br i1 %i.l, label %bb.g, label %bb.k, !prof !15

bb.g:                                             ; preds = %_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 70), i32 noundef 43, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3, ptr noundef nonnull @.str.4)
          to label %bb.h unwind label %bb.j

bb.h:                                             ; preds = %bb.g
  unreachable

bb.i:                                             ; preds = %bb.f, %bb.e
  %i.m = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #6
  br label %bb.m

bb.j:                                             ; preds = %bb.g
  %i.n = landingpad { ptr, i32 }
          cleanup
  br label %bb.m

bb.k:                                             ; preds = %_ZN4absl12lts_202401165Mutex5AwaitERKNS0_9ConditionE.exit
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit unwind label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  call void @__clang_call_terminate(ptr %i.p) #7
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit:        ; preds = %bb.k
  %i.q = icmp eq i32 %i.k, 0
  ret i1 %i.q

bb.m:                                             ; preds = %bb.j, %bb.i, %bb.d
  %.pn = phi { ptr, i32 } [ %i.g, %bb.d ], [ %i.n, %bb.j ], [ %i.m, %bb.i ]
  invoke void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %_ZN4absl12lts_202401169MutexLockD2Ev.exit5 unwind label %bb.n

bb.n:                                             ; preds = %bb.m
  %i.r = landingpad { ptr, i32 }
          catch ptr null
  %i.s = extractvalue { ptr, i32 } %i.r, 0
  call void @__clang_call_terminate(ptr %i.s) #7
  unreachable

_ZN4absl12lts_202401169MutexLockD2Ev.exit5:       ; preds = %bb.m
  resume { ptr, i32 } %.pn
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare void @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

declare i32 @__gxx_personality_v0(...)

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_20240116L6IsZeroEPv(ptr nofree noundef readonly captures(none) %0) #3 {
bb.a:
  %i.a = load i32, ptr %0, align 4, !tbaa !16
  %i.b = icmp eq i32 %i.a, 0
  ret i1 %i.b
}

declare void @_ZN4absl12lts_202401169ConditionC1EPFbPvES2_(ptr noundef nonnull align 8 dereferenceable(32), ptr noundef, ptr noundef) unnamed_addr #2

declare void @_ZN4absl12lts_202401165Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

declare noundef zeroext i1 @_ZN4absl12lts_202401165Mutex11AwaitCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef nonnull align 8 dereferenceable(32), i64) local_unnamed_addr #2

declare void @_ZN4absl12lts_202401165Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #4 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #6 ; 0 uses
  tail call void @_ZSt9terminatev() #7
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #5

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { cold nofree noreturn }
attributes #6 = { nounwind }
attributes #7 = { noreturn nounwind }

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
!8 = !{!9, !5, i64 8}
!9 = !{!"_ZTSN4absl12lts_202401167BarrierE", !10, i64 0, !5, i64 8, !5, i64 12}
!10 = !{!"_ZTSN4absl12lts_202401165MutexE", !11, i64 0}
!11 = !{!"_ZTSSt6atomicIlE", !12, i64 0}
!12 = !{!"_ZTSSt13__atomic_baseIlE", !13, i64 0}
!13 = !{!"long", !6, i64 0}
!14 = !{!9, !5, i64 12}
!15 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!16 = !{!5, !5, i64 0}
end_hunk_0
