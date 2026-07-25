inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20250512::synchronization_internal::KernelTimeout" = type { i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [99 x i8] c"/opt-bench/work/protobuf/protobuf/build/_deps/absl-src/absl/synchronization/internal/sem_waiter.cc\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sem_init failed with errno %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sem_wait failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"SemWaiter::TimedWait() failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"sem_post failed with errno %d\0A\00", align 1

@_ZN4absl12lts_2025051224synchronization_internal9SemWaiterC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2025051224synchronization_internal9SemWaiterC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal9SemWaiterC2Ev(ptr noundef nonnull align 8 dereferenceable(36) initializes((32, 36)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !7
  %i.b = tail call i32 @sem_init(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #5
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #6
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 38, ptr noundef nonnull @.str.1, i32 noundef %i.d)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2025051224synchronization_internal9SemWaiter9TimedWaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::synchronization_internal::KernelTimeout", align 8 ; 3 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  store i64 %1, ptr %2, align 8
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.b = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.c = extractvalue { i64, i64 } %i.b, 0
  store i64 %i.c, ptr %3, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %3, i64 8
  %i.e = extractvalue { i64, i64 } %i.b, 1
  store i64 %i.e, ptr %i.d, align 8
  %i.f = call i32 @sem_clockwait(ptr noundef nonnull %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.g = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.h = extractvalue { i64, i64 } %i.g, 0
  store i64 %i.h, ptr %4, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %4, i64 8
  %i.j = extractvalue { i64, i64 } %i.g, 1
  store i64 %i.j, ptr %i.i, align 8
  %i.k = call i32 @sem_timedwait(ptr noundef nonnull %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  %.0 = phi i32 [ %i.f, %bb.b ], [ %i.k, %bb.c ]
  ret i32 %.0
}

declare { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare i32 @sem_clockwait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @sem_timedwait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051224synchronization_internal9SemWaiter4WaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20250512::synchronization_internal::KernelTimeout", align 8 ; 16 uses
  %3 = alloca %struct.timespec, align 8           ; 9 uses
  %4 = alloca %struct.timespec, align 8           ; 9 uses
  %.fr60 = freeze i64 %1                          ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 8 uses
  %.not18 = icmp eq i64 %.fr60, -1
  %i.b = getelementptr inbounds nuw i8, ptr %4, i64 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  br i1 %.not18, label %.split39.us, label %.split39

.split39.us:                                      ; preds = %bb.a, %.split30.us.us
  %.03.us = phi i1 [ false, %.split30.us.us ], [ true, %bb.a ]
  %i.d = load atomic i32, ptr %i.a monotonic, align 8 ; 3 uses
  %.not26.us.not = icmp eq i32 %i.d, 0
  br i1 %.not26.us.not, label %._crit_edge.us, label %.lr.ph.us

._crit_edge.us:                                   ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us, %.split39.us
  br i1 %.03.us, label %.split.us.us.a, label %bb.b

bb.b:                                             ; preds = %._crit_edge.us
  tail call void @_ZN4absl12lts_2025051224synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split.us.us.a

.split.us.us.a:                                   ; preds = %bb.b, %._crit_edge.us
  %5 = tail call i32 @sem_wait(ptr noundef nonnull %0)
  %i.e = icmp eq i32 %5, 0
  br i1 %i.e, label %.split30.us.us, label %.backedge.us.lr.ph.us

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us
  %6 = add nsw i32 %10, -1
  %7 = cmpxchg weak ptr %i.a, i32 %10, i32 %6 acquire monotonic, align 4 ; 2 uses
  %8 = extractvalue { i32, i1 } %7, 1
  br i1 %8, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us: ; preds = %.lr.ph.us, %bb.c
  %9 = phi { i32, i1 } [ %7, %bb.c ], [ %i.g, %.lr.ph.us ]
  %10 = extractvalue { i32, i1 } %9, 0            ; 3 uses
  %.not.us.not = icmp eq i32 %10, 0
  br i1 %.not.us.not, label %._crit_edge.us, label %bb.c

.lr.ph.us:                                        ; preds = %.split39.us
  %i.f = add nsw i32 %i.d, -1
  %i.g = cmpxchg weak ptr %i.a, i32 %i.d, i32 %i.f acquire monotonic, align 4 ; 2 uses
  %i.h = extractvalue { i32, i1 } %i.g, 1
  br i1 %i.h, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us

bb.d:                                             ; preds = %.backedge.us.us
  %i.i = tail call i32 @sem_wait(ptr noundef nonnull %0)
  %i.j = icmp eq i32 %i.i, 0
  br i1 %i.j, label %.split30.us.us, label %.backedge.us.us, !llvm.loop !9

.backedge.us.us:                                  ; preds = %.backedge.us.lr.ph.us, %bb.d
  %i.k = load i32, ptr %i.m, align 4, !tbaa !3    ; 2 uses
  %i.l = icmp eq i32 %i.k, 4
  br i1 %i.l, label %bb.d, label %.split32.us

.split30.us.us:                                   ; preds = %bb.d, %.split.us.us.a
  br label %.split39.us, !llvm.loop !11

.backedge.us.lr.ph.us:                            ; preds = %.split.us.us.a
  %i.m = tail call ptr @__errno_location() #6
  br label %.backedge.us.us

.split39:                                         ; preds = %bb.a
  %i.n = trunc i64 %.fr60 to i1
  br i1 %i.n, label %.split39.split.us, label %.split39.split

.split39.split.us:                                ; preds = %.split39, %.split30.split.us.us
  %.03.us42 = phi i1 [ false, %.split30.split.us.us ], [ true, %.split39 ]
  %i.o = load atomic i32, ptr %i.a monotonic, align 8 ; 3 uses
  %.not26.us43.not = icmp eq i32 %i.o, 0
  br i1 %.not26.us43.not, label %._crit_edge.us50, label %.lr.ph.us49

._crit_edge.us50:                                 ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us47, %.split39.split.us
  br i1 %.03.us42, label %.split.us, label %bb.e

bb.e:                                             ; preds = %._crit_edge.us50
  call void @_ZN4absl12lts_2025051224synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split.us

.split.us:                                        ; preds = %bb.e, %._crit_edge.us50
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.p = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.q = extractvalue { i64, i64 } %i.p, 0
  store i64 %i.q, ptr %3, align 8
  %i.r = extractvalue { i64, i64 } %i.p, 1
  store i64 %i.r, ptr %i.c, align 8
  %i.s = call i32 @sem_clockwait(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.t = icmp eq i32 %i.s, 0
  br i1 %i.t, label %.split30.split.us.us, label %.lr.ph38.us

11:                                               ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us47
  %12 = add nsw i32 %16, -1
  %13 = cmpxchg weak ptr %i.a, i32 %16, i32 %12 acquire monotonic, align 4 ; 2 uses
  %14 = extractvalue { i32, i1 } %13, 1
  br i1 %14, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us47

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us47: ; preds = %.lr.ph.us49, %11
  %15 = phi { i32, i1 } [ %13, %11 ], [ %i.v, %.lr.ph.us49 ]
  %16 = extractvalue { i32, i1 } %15, 0           ; 3 uses
  %.not.us48.not = icmp eq i32 %16, 0
  br i1 %.not.us48.not, label %._crit_edge.us50, label %11

.lr.ph.us49:                                      ; preds = %.split39.split.us
  %i.u = add nsw i32 %i.o, -1
  %i.v = cmpxchg weak ptr %i.a, i32 %i.o, i32 %i.u acquire monotonic, align 4 ; 2 uses
  %i.w = extractvalue { i32, i1 } %i.v, 1
  br i1 %i.w, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us47

bb.f:                                             ; preds = %.lr.ph38.us, %.backedge.us33.us
  %i.x = load i32, ptr %i.ad, align 4, !tbaa !3   ; 2 uses
  switch i32 %i.x, label %.split35.us [
    i32 4, label %.backedge.us33.us
    i32 110, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread
  ]

.backedge.us33.us:                                ; preds = %bb.f
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.y = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.z = extractvalue { i64, i64 } %i.y, 0
  store i64 %i.z, ptr %3, align 8
  %i.aa = extractvalue { i64, i64 } %i.y, 1
  store i64 %i.aa, ptr %i.c, align 8
  %i.ab = call i32 @sem_clockwait(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ac = icmp eq i32 %i.ab, 0
  br i1 %i.ac, label %.split30.split.us.us, label %bb.f, !llvm.loop !9

.split30.split.us.us:                             ; preds = %.backedge.us33.us, %.split.us
  br label %.split39.split.us, !llvm.loop !11

.lr.ph38.us:                                      ; preds = %.split.us
  %i.ad = tail call ptr @__errno_location() #6
  br label %bb.f

.split39.split:                                   ; preds = %.split39, %.split30.split
  %.03 = phi i1 [ false, %.split30.split ], [ true, %.split39 ]
  %i.ae = load atomic i32, ptr %i.a monotonic, align 8 ; 2 uses
  %.not26.not = icmp eq i32 %i.ae, 0
  br i1 %.not26.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split39.split, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit
  %.01127 = phi i32 [ %i.ai, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit ], [ %i.ae, %.split39.split ] ; 2 uses
  %i.af = add nsw i32 %.01127, -1
  %i.ag = cmpxchg weak ptr %i.a, i32 %.01127, i32 %i.af acquire monotonic, align 4 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.ai = extractvalue { i32, i1 } %i.ag, 0       ; 2 uses
  %.not.not = icmp eq i32 %i.ai, 0
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit, %.split39.split
  br i1 %.03, label %.split, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  call void @_ZN4absl12lts_2025051224synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split

.split:                                           ; preds = %bb.g, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.aj = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  store i64 %i.ak, ptr %4, align 8
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  store i64 %i.al, ptr %i.b, align 8
  %i.am = call i32 @sem_timedwait(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.split30.split, label %.lr.ph37

.lr.ph37:                                         ; preds = %.split
  %i.ao = tail call ptr @__errno_location() #6
  br label %bb.h

.backedge:                                        ; preds = %bb.h
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.ap = call { i64, i64 } @_ZNK4absl12lts_2025051224synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.aq = extractvalue { i64, i64 } %i.ap, 0
  store i64 %i.aq, ptr %4, align 8
  %i.ar = extractvalue { i64, i64 } %i.ap, 1
  store i64 %i.ar, ptr %i.b, align 8
  %i.as = call i32 @sem_timedwait(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.at = icmp eq i32 %i.as, 0
  br i1 %i.at, label %.split30.split, label %bb.h, !llvm.loop !9

.split32.us:                                      ; preds = %.backedge.us.us
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 88, ptr noundef nonnull @.str.2, i32 noundef %i.k)
  unreachable

bb.h:                                             ; preds = %.lr.ph37, %.backedge
  %i.au = load i32, ptr %i.ao, align 4, !tbaa !3  ; 2 uses
  switch i32 %i.au, label %.split35.us [
    i32 4, label %.backedge
    i32 110, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread
  ]

.split35.us:                                      ; preds = %bb.h, %bb.f
  %.us-phi = phi i32 [ %i.x, %bb.f ], [ %i.au, %bb.h ]
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 93, ptr noundef nonnull @.str.3, i32 noundef %.us-phi)
  unreachable

.split30.split:                                   ; preds = %.backedge, %.split
  br label %.split39.split, !llvm.loop !11

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread: ; preds = %.lr.ph, %bb.h, %.lr.ph.us49, %11, %bb.f, %.lr.ph.us, %bb.c
  %.not21 = phi i1 [ true, %11 ], [ true, %bb.c ], [ true, %.lr.ph.us49 ], [ false, %bb.h ], [ true, %.lr.ph.us ], [ false, %bb.f ], [ true, %.lr.ph ]
  ret i1 %.not21
}

declare void @_ZN4absl12lts_2025051224synchronization_internal10WaiterBase15MaybeBecomeIdleEv() local_unnamed_addr #3

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal9SemWaiter4PostEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = atomicrmw add ptr %i.a, i32 1 release, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2025051224synchronization_internal9SemWaiter4PokeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @sem_post(ptr noundef nonnull align 8 dereferenceable(36) %0) #5
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051224synchronization_internal9SemWaiter4PokeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #6
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 110, ptr noundef nonnull @.str.4, i32 noundef %i.f)
  unreachable

_ZN4absl12lts_2025051224synchronization_internal9SemWaiter4PokeEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051224synchronization_internal9SemWaiter4PokeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @sem_post(ptr noundef nonnull %0) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #6
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 85), i32 noundef 110, ptr noundef nonnull @.str.4, i32 noundef %i.c)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
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
!7 = !{!8, !4, i64 0}
!8 = !{!"_ZTSSt13__atomic_baseIiE", !4, i64 0}
!9 = distinct !{!9, !10}
!10 = !{!"llvm.loop.mustprogress"}
!11 = distinct !{!11, !10}
end_hunk_0
