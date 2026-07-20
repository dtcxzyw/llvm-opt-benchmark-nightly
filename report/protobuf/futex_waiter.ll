inline.NumInlined: 11
inline.NumDeleted: 8
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"struct.absl::lts_20250512::synchronization_internal::FutexTimespec" = type { i64, i64 }
%"class.absl::lts_20250512::synchronization_internal::KernelTimeout" = type { i64 }

@.str = private unnamed_addr constant [101 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/synchronization/internal/futex_waiter.cc\00", align 1
@.str.1 = private unnamed_addr constant [38 x i8] c"Futex operation failed with error %d\0A\00", align 1

; Function Attrs: mustprogress uwtable
define noundef range(i32 -2147483647, -2147483648) i32 @_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter9WaitUntilEPSt6atomicIiEiNS1_13KernelTimeoutE(ptr noundef %0, i32 noundef %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.absl::lts_20250512::synchronization_internal::FutexTimespec", align 8 ; 5 uses
  %4 = alloca %"struct.absl::lts_20250512::synchronization_internal::FutexTimespec", align 8 ; 5 uses
  %5 = alloca %"class.absl::lts_20250512::synchronization_internal::KernelTimeout", align 8 ; 3 uses
  store i64 %2, ptr %5, align 8
  %.not = icmp eq i64 %2, -1
  br i1 %.not, label %bb.b, label %6

bb.b:                                             ; preds = %bb.a
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %0, i32 noundef 393, i32 noundef %1, ptr noundef null, ptr noundef null, i32 noundef -1) #5
  %.not.i.i = icmp eq i64 %i.a, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WaitEPSt6atomicIiEi.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.b = tail call ptr @__errno_location() #6
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  %i.d = sub nsw i32 0, %i.c
  br label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WaitEPSt6atomicIiEi.exit

6:                                                ; preds = %bb.a
  %7 = trunc i64 %2 to i1
  br i1 %7, label %bb.d, label %bb.f

bb.d:                                             ; preds = %6
  %i.e = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20MakeRelativeTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %5) ; 2 uses
  %i.f = extractvalue { i64, i64 } %i.e, 0
  %i.g = extractvalue { i64, i64 } %i.e, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  store i64 %i.f, ptr %4, align 8, !tbaa !7
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8
  store i64 %i.g, ptr %i.h, align 8, !tbaa !10
  %i.i = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %0, i32 noundef 128, i32 noundef %1, ptr noundef nonnull %4) #5
  %.not.i = icmp eq i64 %i.i, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitRelativeTimeoutEPSt6atomicIiEiPK8timespec.exit, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.j = tail call ptr @__errno_location() #6
  %i.k = load i32, ptr %i.j, align 4, !tbaa !3
  %i.l = sub nsw i32 0, %i.k
  br label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitRelativeTimeoutEPSt6atomicIiEiPK8timespec.exit

_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitRelativeTimeoutEPSt6atomicIiEiPK8timespec.exit: ; preds = %bb.d, %bb.e
  %.0.i = phi i32 [ %i.l, %bb.e ], [ 0, %bb.d ]
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WaitEPSt6atomicIiEi.exit

bb.f:                                             ; preds = %6
  %i.m = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %5) ; 2 uses
  %i.n = extractvalue { i64, i64 } %i.m, 0
  %i.o = extractvalue { i64, i64 } %i.m, 1
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  store i64 %i.n, ptr %3, align 8, !tbaa !7
  %i.p = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i64 %i.o, ptr %i.p, align 8, !tbaa !10
  %i.q = call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef %0, i32 noundef 393, i32 noundef %1, ptr noundef nonnull %3, ptr noundef null, i32 noundef -1) #5
  %.not.i8 = icmp eq i64 %i.q, 0
  br i1 %.not.i8, label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitAbsoluteTimeoutEPSt6atomicIiEiPK8timespec.exit, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.r = tail call ptr @__errno_location() #6
  %i.s = load i32, ptr %i.r, align 4, !tbaa !3
  %i.t = sub nsw i32 0, %i.s
  br label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitAbsoluteTimeoutEPSt6atomicIiEiPK8timespec.exit

_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitAbsoluteTimeoutEPSt6atomicIiEiPK8timespec.exit: ; preds = %bb.f, %bb.g
  %.0.i9 = phi i32 [ %i.t, %bb.g ], [ 0, %bb.f ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WaitEPSt6atomicIiEi.exit

_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WaitEPSt6atomicIiEi.exit: ; preds = %bb.c, %bb.b, %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitAbsoluteTimeoutEPSt6atomicIiEiPK8timespec.exit, %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitRelativeTimeoutEPSt6atomicIiEiPK8timespec.exit
  %.0 = phi i32 [ %.0.i, %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitRelativeTimeoutEPSt6atomicIiEiPK8timespec.exit ], [ %.0.i9, %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl19WaitAbsoluteTimeoutEPSt6atomicIiEiPK8timespec.exit ], [ %i.d, %bb.c ], [ 0, %bb.b ]
  ret i32 %.0
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

declare { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout20MakeRelativeTimespecEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

declare { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter4WaitENS1_13KernelTimeoutE(ptr noundef nonnull align 4 dereferenceable(4) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %bb.b

bb.b:                                             ; preds = %.backedge, %bb.a
  %.010 = phi i1 [ true, %bb.a ], [ false, %.backedge ]
  %i.a = load atomic i32, ptr %0 monotonic, align 4 ; 2 uses
  %.not30.not = icmp eq i32 %i.a, 0
  br i1 %.not30.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.b, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit
  %.01931 = phi i32 [ %i.e, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit ], [ %i.a, %bb.b ] ; 2 uses
  %i.b = add nsw i32 %.01931, -1
  %i.c = cmpxchg weak ptr %0, i32 %.01931, i32 %i.b acquire monotonic, align 4 ; 2 uses
  %i.d = extractvalue { i32, i1 } %i.c, 1
  br i1 %i.d, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.e = extractvalue { i32, i1 } %i.c, 0         ; 2 uses
  %.not.not = icmp eq i32 %i.e, 0
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit, %bb.b
  br i1 %.010, label %bb.d, label %bb.c

bb.c:                                             ; preds = %._crit_edge
  tail call void @_ZN4absl12lts_2025051224synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %._crit_edge
  %i.f = tail call noundef i32 @_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter9WaitUntilEPSt6atomicIiEiNS1_13KernelTimeoutE(ptr noundef nonnull %0, i32 noundef 0, i64 %1) ; 2 uses
  switch i32 %i.f, label %bb.e [
    i32 0, label %.backedge
    i32 -4, label %.backedge
    i32 -11, label %.backedge
    i32 -110, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread
  ]

.backedge:                                        ; preds = %bb.d, %bb.d, %bb.d
  br label %bb.b, !llvm.loop !11

bb.e:                                             ; preds = %bb.d
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 81, ptr noundef nonnull @.str.1, i32 noundef %i.f)
  unreachable

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread: ; preds = %bb.d, %.lr.ph
  %.not27 = phi i1 [ true, %.lr.ph ], [ false, %bb.d ]
  ret i1 %.not27
}

declare void @_ZN4absl12lts_2025051224synchronization_internal10WaiterBase15MaybeBecomeIdleEv() local_unnamed_addr #2

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter4PostEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = atomicrmw add ptr %0, i32 1 release, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter4PokeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull align 4 dereferenceable(4) %0, i32 noundef 129, i32 noundef 1) #5
  %i.d = icmp slt i64 %i.c, 0
  br i1 %i.d, label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit.i, label %_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter4PokeEv.exit, !prof !13

_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit.i: ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #6
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3    ; 2 uses
  %i.g = icmp sgt i32 %i.f, 0
  br i1 %i.g, label %bb.c, label %_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter4PokeEv.exit, !prof !14

bb.c:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit.i
  %i.h = sub nsw i32 0, %i.f
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 99, ptr noundef nonnull @.str.1, i32 noundef %i.h)
  unreachable

_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter4PokeEv.exit: ; preds = %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit.i, %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal11FutexWaiter4PokeEv(ptr noundef nonnull align 4 dereferenceable(4) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i64 (i64, ...) @syscall(i64 noundef 202, ptr noundef nonnull %0, i32 noundef 129, i32 noundef 1) #5
  %i.b = icmp slt i64 %i.a, 0
  br i1 %i.b, label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit, label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit.thread, !prof !13

_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit: ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #6
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3    ; 2 uses
  %i.e = icmp sgt i32 %i.d, 0
  br i1 %i.e, label %bb.b, label %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit.thread, !prof !14

bb.b:                                             ; preds = %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit
  %i.f = sub nsw i32 0, %i.d
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 99, ptr noundef nonnull @.str.1, i32 noundef %i.f)
  unreachable

_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit.thread: ; preds = %bb.a, %_ZN4absl12lts_2025051224synchronization_internal9FutexImpl4WakeEPSt6atomicIiEi.exit
  ret void
}

; Function Attrs: nounwind
declare i64 @syscall(i64 noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #5 = { nounwind }
attributes #6 = { nounwind willreturn memory(none) }

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
!8 = !{!"_ZTSN4absl12lts_2025051224synchronization_internal13FutexTimespecE", !9, i64 0, !9, i64 8}
!9 = !{!"long", !5, i64 0}
!10 = !{!8, !9, i64 8}
!11 = distinct !{!11, !12}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"branch_weights", !"expected", i32 1, i32 2000}
!14 = !{!"branch_weights", !"expected", i32 2001, i32 2147481647}
end_hunk_0
