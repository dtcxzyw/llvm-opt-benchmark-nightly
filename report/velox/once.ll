inline.NumInlined: 10
inline.NumDeleted: 4
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%union.pthread_mutex_t = type { %struct.__pthread_mutex_s }
%struct.__pthread_mutex_s = type { i32, i32, i32, i32, i32, i16, i16, %struct.__pthread_internal_list }
%struct.__pthread_internal_list = type { ptr, ptr }
%union.pthread_cond_t = type { %struct.__pthread_cond_s }
%struct.__pthread_cond_s = type { %union.__atomic_wide_counter, %union.__atomic_wide_counter, [2 x i32], [2 x i32], i32, i32, [2 x i32] }
%union.__atomic_wide_counter = type { i64 }

$__clang_call_terminate = comdat any

@_ZN5boost13thread_detailL10once_mutexE = internal global %union.pthread_mutex_t zeroinitializer, align 8
@_ZN5boost13thread_detailL7once_cvE = internal global %union.pthread_cond_t zeroinitializer, align 8

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5boost13thread_detail17enter_once_regionERNS_9once_flagE(ptr noundef nonnull align 4 captures(address) dereferenceable(4) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit:
  %i.a = load atomic volatile i32, ptr %0 acquire, align 4
  %.not = icmp eq i32 %i.a, 2
  br i1 %.not, label %bb.b, label %.preheader19

.preheader19:                                     ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit, %.preheader19
  %i.b = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN5boost13thread_detailL10once_mutexE) #5
  %i.c = icmp eq i32 %i.b, 4
  br i1 %i.c, label %.preheader19, label %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit11, !llvm.loop !7

_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit11: ; preds = %.preheader19
  %i.d = load atomic volatile i32, ptr %0 acquire, align 4
  %.not9 = icmp eq i32 %i.d, 2                    ; 2 uses
  br i1 %.not9, label %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit.thread, label %.preheader18

.preheader18:                                     ; preds = %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit11
  %i.e = cmpxchg volatile ptr %0, i32 0, i32 1 acq_rel acquire, align 4 ; 2 uses
  %i.f = extractvalue { i32, i1 } %i.e, 1
  br i1 %i.f, label %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit.thread, label %.lr.ph

.lr.ph:                                           ; preds = %.preheader18, %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit
  %i.g = phi { i32, i1 } [ %i.k, %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit ], [ %i.e, %.preheader18 ]
  %i.h = extractvalue { i32, i1 } %i.g, 0
  %.not22.not = icmp ne i32 %i.h, 2               ; 3 uses
  br i1 %.not22.not, label %.preheader, label %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit.thread

.preheader:                                       ; preds = %.lr.ph, %.noexc
  %i.i = invoke i32 @pthread_cond_wait(ptr noundef nonnull @_ZN5boost13thread_detailL7once_cvE, ptr noundef nonnull @_ZN5boost13thread_detailL10once_mutexE)
          to label %.noexc unwind label %bb.d

.noexc:                                           ; preds = %.preheader
  %i.j = icmp eq i32 %i.i, 4
  br i1 %i.j, label %.preheader, label %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit, !llvm.loop !9

_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit: ; preds = %.noexc
  %i.k = cmpxchg volatile ptr %0, i32 0, i32 1 acq_rel acquire, align 4 ; 2 uses
  %i.l = extractvalue { i32, i1 } %i.k, 1
  br i1 %i.l, label %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit.thread, label %.lr.ph, !llvm.loop !10

_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit.thread: ; preds = %.lr.ph, %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit, %.preheader18, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit11
  %.2 = phi i1 [ undef, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit11 ], [ true, %.preheader18 ], [ %.not22.not, %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit ], [ %.not22.not, %.lr.ph ]
  br label %bb.a

bb.a:                                             ; preds = %bb.a, %_ZN5boost5posix17pthread_cond_waitEP14pthread_cond_tP15pthread_mutex_t.exit.thread
  %i.m = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN5boost13thread_detailL10once_mutexE) #5
  %i.n = icmp eq i32 %i.m, 4
  br i1 %i.n, label %bb.a, label %_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit, !llvm.loop !11

_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit: ; preds = %bb.a
  br i1 %.not9, label %bb.b, label %bb.c

bb.b:                                             ; preds = %_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit, %_ZN5boost7atomics6detail26core_operations_gcc_atomicILm4ELb0ELb0EE4loadERVKjNS_12memory_orderE.exit
  br label %bb.c

bb.c:                                             ; preds = %_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit, %bb.b
  %.3 = phi i1 [ false, %bb.b ], [ %.2, %_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit ]
  ret i1 %.3

bb.d:                                             ; preds = %.preheader
  %i.o = landingpad { ptr, i32 }
          catch ptr null
  %i.p = extractvalue { ptr, i32 } %i.o, 0
  tail call void @__clang_call_terminate(ptr %i.p) #6
  unreachable
}

declare i32 @__gxx_personality_v0(...)

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #1 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #5 ; 0 uses
  tail call void @_ZSt9terminatev() #6
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost13thread_detail18commit_once_regionERNS_9once_flagE(ptr noundef nonnull align 4 captures(address) dereferenceable(4) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN5boost13thread_detailL10once_mutexE) #5
  %i.b = icmp eq i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  store atomic volatile i32 2, ptr %0 release, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN5boost13thread_detailL10once_mutexE) #5
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.d, label %_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit, !llvm.loop !11

_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit: ; preds = %bb.d
  %i.e = tail call noundef i32 @pthread_cond_broadcast(ptr noundef nonnull @_ZN5boost13thread_detailL7once_cvE) #5 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5boost13thread_detail20rollback_once_regionERNS_9once_flagE(ptr noundef nonnull align 4 captures(address) dereferenceable(4) %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %bb.b, %bb.a
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull @_ZN5boost13thread_detailL10once_mutexE) #5
  %i.b = icmp eq i32 %i.a, 4
  br i1 %i.b, label %bb.b, label %bb.c, !llvm.loop !7

bb.c:                                             ; preds = %bb.b
  store atomic volatile i32 0, ptr %0 release, align 4
  br label %bb.d

bb.d:                                             ; preds = %bb.d, %bb.c
  %i.c = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull @_ZN5boost13thread_detailL10once_mutexE) #5
  %i.d = icmp eq i32 %i.c, 4
  br i1 %i.d, label %bb.d, label %_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit, !llvm.loop !11

_ZN5boost7pthread25pthread_mutex_scoped_lockD2Ev.exit: ; preds = %bb.d
  %i.e = tail call noundef i32 @pthread_cond_broadcast(ptr noundef nonnull @_ZN5boost13thread_detailL7once_cvE) #5 ; 0 uses
  ret void
}

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #3

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #4

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #3

; Function Attrs: nounwind
declare i32 @pthread_cond_broadcast(ptr noundef) local_unnamed_addr #3

attributes #0 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { cold nofree noreturn }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { noreturn nounwind }

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
!7 = distinct !{!7, !8}
!8 = !{!"llvm.loop.mustprogress"}
!9 = distinct !{!9, !8}
!10 = distinct !{!10, !8}
!11 = distinct !{!11, !8}
end_hunk_0
