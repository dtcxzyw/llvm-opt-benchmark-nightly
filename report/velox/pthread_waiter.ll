inline.NumInlined: 11
inline.NumDeleted: 3
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::synchronization_internal::KernelTimeout" = type { i64 }
%struct.timespec = type { i64, i64 }

$__clang_call_terminate = comdat any

@.str = private unnamed_addr constant [97 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/synchronization/internal/pthread_waiter.cc\00", align 1
@.str.1 = private unnamed_addr constant [30 x i8] c"pthread_mutex_init failed: %d\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"pthread_cond_init failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"pthread_cond_wait failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [38 x i8] c"PthreadWaiter::TimedWait() failed: %d\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"pthread_cond_signal failed: %d\00", align 1
@.str.6 = private unnamed_addr constant [30 x i8] c"pthread_mutex_lock failed: %d\00", align 1
@.str.7 = private unnamed_addr constant [32 x i8] c"pthread_mutex_unlock failed: %d\00", align 1

@_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiterC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiterC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiterC2Ev(ptr noundef nonnull align 8 dereferenceable(96) initializes((88, 96)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  store i32 0, ptr %i.a, align 8, !tbaa !8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92
  store i32 0, ptr %i.b, align 4, !tbaa !10
  %i.c = tail call i32 @pthread_mutex_init(ptr noundef nonnull %0, ptr noundef null) #7 ; 2 uses
  %.not = icmp eq i32 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 68, ptr noundef nonnull @.str.1, i32 noundef %i.c)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = tail call i32 @pthread_cond_init(ptr noundef nonnull %i.d, ptr noundef null) #7 ; 2 uses
  %.not5 = icmp eq i32 %i.e, 0
  br i1 %.not5, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 73, ptr noundef nonnull @.str.2, i32 noundef %i.e)
  unreachable

bb.e:                                             ; preds = %bb.c
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_mutex_init(ptr noundef, ptr noundef) local_unnamed_addr #2

declare void @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #1

; Function Attrs: nounwind
declare i32 @pthread_cond_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter9TimedWaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::synchronization_internal::KernelTimeout", align 8 ; 3 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  store i64 %1, ptr %2, align 8
  %i.a = trunc i64 %1 to i1
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.c = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.d = extractvalue { i64, i64 } %i.c, 0
  store i64 %i.d, ptr %3, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.f = extractvalue { i64, i64 } %i.c, 1
  store i64 %i.f, ptr %i.e, align 8
  %i.g = call i32 @pthread_cond_clockwait(ptr noundef nonnull %i.b, ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.h = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.i = extractvalue { i64, i64 } %i.h, 0
  store i64 %i.i, ptr %4, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.k = extractvalue { i64, i64 } %i.h, 1
  store i64 %i.k, ptr %i.j, align 8
  %i.l = call i32 @pthread_cond_timedwait(ptr noundef nonnull %i.b, ptr noundef nonnull %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.g, %bb.b ], [ %i.l, %bb.c ]
  ret i32 %.0
}

declare { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare i32 @pthread_cond_clockwait(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @pthread_cond_timedwait(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter4WaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(96) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::synchronization_internal::KernelTimeout", align 8 ; 14 uses
  %3 = alloca %struct.timespec, align 8           ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 9 uses
  %.fr80 = freeze i64 %1                          ; 5 uses
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 42, ptr noundef nonnull @.str.6, i32 noundef %i.a)
  unreachable

_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88 ; 4 uses
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 8, !tbaa !8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 8 uses
  %i.f = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %.not = icmp eq i32 %i.f, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit
  %.not34 = icmp eq i64 %.fr80, -1
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 6 uses
  %i.h = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not34, label %.lr.ph.split.us.preheader, label %.lr.ph.split

.lr.ph.split.us.preheader:                        ; preds = %.lr.ph
  %i.j = invoke i32 @pthread_cond_wait(ptr noundef nonnull %i.g, ptr noundef nonnull %0)
          to label %bb.c unwind label %.split60.us.loopexit.split-lp ; 2 uses

bb.c:                                             ; preds = %.lr.ph.split.us.preheader
  %.not.us.peel = icmp eq i32 %i.j, 0
  br i1 %.not.us.peel, label %bb.d, label %.split63.us

bb.d:                                             ; preds = %bb.c
  %i.k = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %.not83.peel = icmp eq i32 %i.k, 0
  br i1 %.not83.peel, label %.lr.ph.split.us.peel.next, label %._crit_edge

.lr.ph.split.us.peel.next:                        ; preds = %bb.d, %bb.g
  invoke void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
          to label %bb.e unwind label %.split.us

bb.e:                                             ; preds = %.lr.ph.split.us.peel.next
  %i.l = invoke i32 @pthread_cond_wait(ptr noundef nonnull %i.g, ptr noundef nonnull %0)
          to label %bb.f unwind label %.split60.us.loopexit ; 2 uses

bb.f:                                             ; preds = %bb.e
  %.not.us = icmp eq i32 %i.l, 0
  br i1 %.not.us, label %bb.g, label %.split63.us

bb.g:                                             ; preds = %bb.f
  %i.m = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %.not83 = icmp eq i32 %i.m, 0
  br i1 %.not83, label %.lr.ph.split.us.peel.next, label %._crit_edge, !llvm.loop !11

.split.us:                                        ; preds = %.lr.ph.split.us.peel.next
  %lpad.loopexit110 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split60.us.loopexit:                             ; preds = %bb.e
  %lpad.loopexit113 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split60.us.loopexit.split-lp:                    ; preds = %.lr.ph.split.us.preheader
  %lpad.loopexit.split-lp114 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split:                                     ; preds = %.lr.ph
  %i.n = trunc i64 %.fr80 to i1
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr80, ptr %2, align 8
  br i1 %i.n, label %.lr.ph.split.split.us.preheader, label %.lr.ph.split.split.preheader

.lr.ph.split.split.preheader:                     ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.o = invoke { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc29.peel unwind label %.split70.loopexit.split-lp ; 2 uses

.noexc29.peel:                                    ; preds = %.lr.ph.split.split.preheader
  %i.p = extractvalue { i64, i64 } %i.o, 0
  store i64 %i.p, ptr %4, align 8
  %i.q = extractvalue { i64, i64 } %i.o, 1
  store i64 %i.q, ptr %i.h, align 8
  %i.r = invoke i32 @pthread_cond_timedwait(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %4)
          to label %.noexc30.peel unwind label %.split70.loopexit.split-lp ; 2 uses

.noexc30.peel:                                    ; preds = %.noexc29.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  switch i32 %i.r, label %.split73.us [
    i32 110, label %.thread
    i32 0, label %bb.h
  ]

bb.h:                                             ; preds = %.noexc30.peel
  %i.s = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %.not81.peel = icmp eq i32 %i.s, 0
  br i1 %.not81.peel, label %.lr.ph.split.split.peel.next, label %._crit_edge

.lr.ph.split.split.us.preheader:                  ; preds = %.lr.ph.split
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.t = invoke { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1)
          to label %.noexc.us.peel unwind label %.split70.us.loopexit.split-lp ; 2 uses

.noexc.us.peel:                                   ; preds = %.lr.ph.split.split.us.preheader
  %i.u = extractvalue { i64, i64 } %i.t, 0
  store i64 %i.u, ptr %3, align 8
  %i.v = extractvalue { i64, i64 } %i.t, 1
  store i64 %i.v, ptr %i.i, align 8
  %i.w = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 1, ptr noundef nonnull %3)
          to label %.noexc28.us.peel unwind label %.split70.us.loopexit.split-lp ; 2 uses

.noexc28.us.peel:                                 ; preds = %.noexc.us.peel
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  switch i32 %i.w, label %.split73.us [
    i32 110, label %.thread
    i32 0, label %bb.i
  ]

bb.i:                                             ; preds = %.noexc28.us.peel
  %i.x = load i32, ptr %i.e, align 4, !tbaa !10   ; 2 uses
  %.not82.peel = icmp eq i32 %i.x, 0
  br i1 %.not82.peel, label %.lr.ph.split.split.us.peel.next, label %._crit_edge

.lr.ph.split.split.us.peel.next:                  ; preds = %bb.i, %bb.k
  invoke void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
          to label %bb.j unwind label %.split.split.us

bb.j:                                             ; preds = %.lr.ph.split.split.us.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr80, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #7
  %i.y = invoke { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1)
          to label %.noexc.us unwind label %.split70.us.loopexit ; 2 uses

.noexc.us:                                        ; preds = %bb.j
  %i.z = extractvalue { i64, i64 } %i.y, 0
  store i64 %i.z, ptr %3, align 8
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  store i64 %i.aa, ptr %i.i, align 8
  %i.ab = invoke i32 @pthread_cond_clockwait(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(96) %0, i32 noundef 1, ptr noundef nonnull %3)
          to label %.noexc28.us unwind label %.split70.us.loopexit ; 2 uses

.noexc28.us:                                      ; preds = %.noexc.us
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  switch i32 %i.ab, label %.split73.us [
    i32 110, label %.thread
    i32 0, label %bb.k
  ]

bb.k:                                             ; preds = %.noexc28.us
  %i.ac = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %.not82 = icmp eq i32 %i.ac, 0
  br i1 %.not82, label %.lr.ph.split.split.us.peel.next, label %._crit_edge, !llvm.loop !14

.split.split.us:                                  ; preds = %.lr.ph.split.split.us.peel.next
  %lpad.loopexit103 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split70.us.loopexit:                             ; preds = %bb.j, %.noexc.us
  %lpad.loopexit106 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split70.us.loopexit.split-lp:                    ; preds = %.lr.ph.split.split.us.preheader, %.noexc.us.peel
  %lpad.loopexit.split-lp107 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.lr.ph.split.split.peel.next:                     ; preds = %bb.h, %bb.q
  invoke void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
          to label %bb.l unwind label %.split.split

.split.split:                                     ; preds = %.lr.ph.split.split.peel.next
  %lpad.loopexit = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.l:                                             ; preds = %.lr.ph.split.split.peel.next
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr80, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #7
  %i.ad = invoke { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2)
          to label %.noexc29 unwind label %.split70.loopexit ; 2 uses

.split63.us:                                      ; preds = %bb.f, %bb.c
  %.lcssa = phi i32 [ %i.j, %bb.c ], [ %i.l, %bb.f ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 123, ptr noundef nonnull @.str.3, i32 noundef %.lcssa)
          to label %bb.m unwind label %bb.n

bb.m:                                             ; preds = %.split63.us
  unreachable

bb.n:                                             ; preds = %.split63.us
  %i.ae = landingpad { ptr, i32 }
          cleanup
  br label %.split

.noexc29:                                         ; preds = %bb.l
  %i.af = extractvalue { i64, i64 } %i.ad, 0
  store i64 %i.af, ptr %4, align 8
  %i.ag = extractvalue { i64, i64 } %i.ad, 1
  store i64 %i.ag, ptr %i.h, align 8
  %i.ah = invoke i32 @pthread_cond_timedwait(ptr noundef nonnull %i.g, ptr noundef nonnull align 8 dereferenceable(96) %0, ptr noundef nonnull %4)
          to label %.noexc30 unwind label %.split70.loopexit ; 2 uses

.noexc30:                                         ; preds = %.noexc29
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #7
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  switch i32 %i.ah, label %.split73.us [
    i32 110, label %.thread
    i32 0, label %bb.q
  ]

.split70.loopexit:                                ; preds = %bb.l, %.noexc29
  %lpad.loopexit99 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split70.loopexit.split-lp:                       ; preds = %.lr.ph.split.split.preheader, %.noexc29.peel
  %lpad.loopexit.split-lp100 = landingpad { ptr, i32 }
          cleanup
  br label %.split

.split73.us:                                      ; preds = %.noexc30, %.noexc28.us, %.noexc30.peel, %.noexc28.us.peel
  %.us-phi74 = phi i32 [ %i.ab, %.noexc28.us ], [ %i.w, %.noexc28.us.peel ], [ %i.r, %.noexc30.peel ], [ %i.ah, %.noexc30 ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 132, ptr noundef nonnull @.str.4, i32 noundef %.us-phi74)
          to label %bb.o unwind label %bb.p

bb.o:                                             ; preds = %.split73.us
  unreachable

bb.p:                                             ; preds = %.split73.us
  %i.ai = landingpad { ptr, i32 }
          cleanup
  br label %.split

bb.q:                                             ; preds = %.noexc30
  %i.aj = load i32, ptr %i.e, align 4, !tbaa !10  ; 2 uses
  %.not81 = icmp eq i32 %i.aj, 0
  br i1 %.not81, label %.lr.ph.split.split.peel.next, label %._crit_edge, !llvm.loop !15

._crit_edge:                                      ; preds = %bb.q, %bb.k, %bb.g, %bb.h, %bb.i, %bb.d, %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit
  %.lcssa42 = phi i32 [ %i.f, %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit ], [ %i.m, %bb.g ], [ %i.ac, %bb.k ], [ %i.k, %bb.d ], [ %i.x, %bb.i ], [ %i.s, %bb.h ], [ %i.aj, %bb.q ]
  %i.ak = add nsw i32 %.lcssa42, -1
  store i32 %i.ak, ptr %i.e, align 4, !tbaa !10
  br label %.thread

.thread:                                          ; preds = %.noexc30, %.noexc28.us, %.noexc30.peel, %.noexc28.us.peel, %._crit_edge
  %i.al = phi i1 [ true, %._crit_edge ], [ false, %.noexc28.us.peel ], [ false, %.noexc30.peel ], [ false, %.noexc28.us ], [ false, %.noexc30 ]
  %storemerge.in = load i32, ptr %i.b, align 8, !tbaa !8
  %storemerge = add nsw i32 %storemerge.in, -1
  store i32 %storemerge, ptr %i.b, align 8, !tbaa !8
  %i.am = call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #7 ; 2 uses
  %.not.i31 = icmp eq i32 %i.am, 0
  br i1 %.not.i31, label %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev.exit, label %bb.r

bb.r:                                             ; preds = %.thread
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 52, ptr noundef nonnull @.str.7, i32 noundef %i.am)
          to label %bb.s unwind label %bb.t

bb.s:                                             ; preds = %bb.r
  unreachable

bb.t:                                             ; preds = %bb.r
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #8
  unreachable

_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev.exit: ; preds = %.thread
  ret i1 %i.al

.split:                                           ; preds = %.split70.loopexit, %.split70.loopexit.split-lp, %.split70.us.loopexit, %.split70.us.loopexit.split-lp, %.split60.us.loopexit, %.split60.us.loopexit.split-lp, %.split.us, %.split.split.us, %.split.split, %bb.p, %bb.n
  %.pn23.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp114, %.split60.us.loopexit.split-lp ], [ %lpad.loopexit103, %.split.split.us ], [ %i.ae, %bb.n ], [ %i.ai, %bb.p ], [ %lpad.loopexit110, %.split.us ], [ %lpad.loopexit, %.split.split ], [ %lpad.loopexit.split-lp107, %.split70.us.loopexit.split-lp ], [ %lpad.loopexit113, %.split60.us.loopexit ], [ %lpad.loopexit106, %.split70.us.loopexit ], [ %lpad.loopexit99, %.split70.loopexit ], [ %lpad.loopexit.split-lp100, %.split70.loopexit.split-lp ]
  call fastcc void @_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev(ptr nonnull %0) #7
  resume { ptr, i32 } %.pn23.pn
}

declare void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv() local_unnamed_addr #3

declare i32 @__gxx_personality_v0(...)

declare i32 @pthread_cond_wait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define internal fastcc void @_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev(ptr %.0.val) unnamed_addr #4 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_unlock(ptr noundef %.0.val) #7 ; 2 uses
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 52, ptr noundef nonnull @.str.7, i32 noundef %i.a)
          to label %bb.c unwind label %bb.e

bb.c:                                             ; preds = %bb.b
  unreachable

bb.d:                                             ; preds = %bb.a
  ret void

bb.e:                                             ; preds = %bb.b
  %i.b = landingpad { ptr, i32 }
          catch ptr null
  %i.c = extractvalue { ptr, i32 } %i.b, 0
  tail call void @__clang_call_terminate(ptr %i.c) #8
  unreachable
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter4PostEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 42, ptr noundef nonnull @.str.6, i32 noundef %i.a)
  unreachable

_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 92 ; 2 uses
  %i.c = load i32, ptr %i.b, align 4, !tbaa !10
  %i.d = add nsw i32 %i.c, 1
  store i32 %i.d, ptr %i.b, align 4, !tbaa !10
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.f = load i32, ptr %i.e, align 8, !tbaa !8
  %.not.i3 = icmp eq i32 %i.f, 0
  br i1 %.not.i3, label %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.h = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.g) #7 ; 2 uses
  %.not2.i = icmp eq i32 %i.h, 0
  br i1 %.not2.i, label %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 158, ptr noundef nonnull @.str.5, i32 noundef %i.h)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit: ; preds = %bb.c, %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit
  %i.i = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #7 ; 2 uses
  %.not.i4 = icmp eq i32 %i.i, 0
  br i1 %.not.i4, label %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 52, ptr noundef nonnull @.str.7, i32 noundef %i.i)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.j = landingpad { ptr, i32 }
          catch ptr null
  %i.k = extractvalue { ptr, i32 } %i.j, 0
  tail call void @__clang_call_terminate(ptr %i.k) #8
  unreachable

_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev.exit: ; preds = %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit
  ret void

bb.h:                                             ; preds = %bb.d
  %i.l = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev(ptr nonnull %0) #7
  resume { ptr, i32 } %i.l
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.b = load i32, ptr %i.a, align 8, !tbaa !8
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.d = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.c) #7 ; 2 uses
  %.not2 = icmp eq i32 %i.d, 0
  br i1 %.not2, label %bb.d, label %bb.c, !prof !16

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 158, ptr noundef nonnull @.str.5, i32 noundef %i.d)
  unreachable

bb.d:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter4PokeEv(ptr noundef nonnull align 8 dereferenceable(96) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = tail call i32 @pthread_mutex_lock(ptr noundef nonnull %0) #7 ; 2 uses
  %.not.i = icmp eq i32 %i.a, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 42, ptr noundef nonnull @.str.6, i32 noundef %i.a)
  unreachable

_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit: ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = load i32, ptr %i.b, align 8, !tbaa !8
  %.not.i3 = icmp eq i32 %i.c, 0
  br i1 %.not.i3, label %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.e = tail call i32 @pthread_cond_signal(ptr noundef nonnull %i.d) #7 ; 2 uses
  %.not2.i = icmp eq i32 %i.e, 0
  br i1 %.not2.i, label %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit, label %bb.d, !prof !16

bb.d:                                             ; preds = %bb.c
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 158, ptr noundef nonnull @.str.5, i32 noundef %i.e)
          to label %.noexc unwind label %bb.h

.noexc:                                           ; preds = %bb.d
  unreachable

_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit: ; preds = %bb.c, %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderC2EP15pthread_mutex_t.exit
  %i.f = tail call i32 @pthread_mutex_unlock(ptr noundef nonnull %0) #7 ; 2 uses
  %.not.i4 = icmp eq i32 %i.f, 0
  br i1 %.not.i4, label %_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev.exit, label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 52, ptr noundef nonnull @.str.7, i32 noundef %i.f)
          to label %bb.f unwind label %bb.g

bb.f:                                             ; preds = %bb.e
  unreachable

bb.g:                                             ; preds = %bb.e
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #8
  unreachable

_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev.exit: ; preds = %_ZN4absl12lts_2024011624synchronization_internal13PthreadWaiter19InternalCondVarPokeEv.exit
  ret void

bb.h:                                             ; preds = %bb.d
  %i.i = landingpad { ptr, i32 }
          cleanup
  tail call fastcc void @_ZN4absl12lts_2024011624synchronization_internal12_GLOBAL__N_118PthreadMutexHolderD2Ev(ptr nonnull %0) #7
  resume { ptr, i32 } %i.i
}

; Function Attrs: nounwind
declare i32 @pthread_cond_signal(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_lock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare i32 @pthread_mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #5 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #7 ; 0 uses
  tail call void @_ZSt9terminatev() #8
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #6

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #2 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #5 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { cold nofree noreturn }
attributes #7 = { nounwind }
attributes #8 = { noreturn nounwind }

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
!8 = !{!9, !5, i64 88}
!9 = !{!"_ZTSN4absl12lts_2024011624synchronization_internal13PthreadWaiterE", !6, i64 0, !6, i64 40, !5, i64 88, !5, i64 92}
!10 = !{!9, !5, i64 92}
!11 = distinct !{!11, !12, !13}
!12 = !{!"llvm.loop.mustprogress"}
!13 = !{!"llvm.loop.peeled.count", i32 1}
!14 = distinct !{!14, !12, !13}
!15 = distinct !{!15, !12, !13}
!16 = !{!"branch_weights", !"expected", i32 2000, i32 1}
end_hunk_0
