inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20240116::synchronization_internal::KernelTimeout" = type { i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [93 x i8] c"/opt-bench/work/velox/velox/build/_deps/absl-src/absl/synchronization/internal/sem_waiter.cc\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sem_init failed with errno %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sem_wait failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"SemWaiter::TimedWait() failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"sem_post failed with errno %d\0A\00", align 1

@_ZN4absl12lts_2024011624synchronization_internal9SemWaiterC1Ev = unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2024011624synchronization_internal9SemWaiterC2Ev

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal9SemWaiterC2Ev(ptr noundef nonnull align 8 dereferenceable(36) initializes((32, 36)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !7
  %i.b = tail call i32 @sem_init(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #5
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #6
  %i.d = load i32, ptr %i.c, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 42, ptr noundef nonnull @.str.1, i32 noundef %i.d)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define noundef i32 @_ZN4absl12lts_2024011624synchronization_internal9SemWaiter9TimedWaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::synchronization_internal::KernelTimeout", align 8 ; 3 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  store i64 %1, ptr %2, align 8
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.b = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
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
  %i.g = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
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

declare { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare i32 @sem_clockwait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @sem_timedwait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_2024011624synchronization_internal9SemWaiter4WaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20240116::synchronization_internal::KernelTimeout", align 8 ; 16 uses
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

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us
  %i.e = add nsw i32 %i.i, -1
  %i.f = cmpxchg weak ptr %i.a, i32 %i.i, i32 %i.e acquire monotonic, align 4 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us: ; preds = %.lr.ph.us, %bb.b
  %i.h = phi { i32, i1 } [ %i.f, %bb.b ], [ %i.m, %.lr.ph.us ]
  %i.i = extractvalue { i32, i1 } %i.h, 0         ; 3 uses
  %.not.us.not = icmp eq i32 %i.i, 0
  br i1 %.not.us.not, label %._crit_edge.us, label %bb.b

._crit_edge.us:                                   ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us, %.split39.us
  br i1 %.03.us, label %.split.us.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  tail call void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split.us.us

.split.us.us:                                     ; preds = %bb.c, %._crit_edge.us
  %i.j = tail call i32 @sem_wait(ptr noundef nonnull %0)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.split30.us.us, label %.backedge.us.lr.ph.us

.lr.ph.us:                                        ; preds = %.split39.us
  %i.l = add nsw i32 %i.d, -1
  %i.m = cmpxchg weak ptr %i.a, i32 %i.d, i32 %i.l acquire monotonic, align 4 ; 2 uses
  %i.n = extractvalue { i32, i1 } %i.m, 1
  br i1 %i.n, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us

bb.d:                                             ; preds = %.backedge.us.us
  %i.o = tail call i32 @sem_wait(ptr noundef nonnull %0)
  %i.p = icmp eq i32 %i.o, 0
  br i1 %i.p, label %.split30.us.us, label %.backedge.us.us, !llvm.loop !9

.backedge.us.us:                                  ; preds = %.backedge.us.lr.ph.us, %bb.d
  %i.q = load i32, ptr %i.s, align 4, !tbaa !3    ; 2 uses
  %i.r = icmp eq i32 %i.q, 4
  br i1 %i.r, label %bb.d, label %.split32.us

.split30.us.us:                                   ; preds = %bb.d, %.split.us.us
  br label %.split39.us, !llvm.loop !11

.backedge.us.lr.ph.us:                            ; preds = %.split.us.us
  %i.s = tail call ptr @__errno_location() #6
  br label %.backedge.us.us

.split39:                                         ; preds = %bb.a
  %i.t = trunc i64 %.fr60 to i1
  br i1 %i.t, label %.split39.split.us, label %.split39.split

.split39.split.us:                                ; preds = %.split39, %.split30.split.us.us
  %.03.us42 = phi i1 [ false, %.split30.split.us.us ], [ true, %.split39 ]
  %i.u = load atomic i32, ptr %i.a monotonic, align 8 ; 3 uses
  %.not26.us43.not = icmp eq i32 %i.u, 0
  br i1 %.not26.us43.not, label %._crit_edge.us50, label %.lr.ph.us49

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46
  %i.v = add nsw i32 %i.z, -1
  %i.w = cmpxchg weak ptr %i.a, i32 %i.z, i32 %i.v acquire monotonic, align 4 ; 2 uses
  %i.x = extractvalue { i32, i1 } %i.w, 1
  br i1 %i.x, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46: ; preds = %.lr.ph.us49, %bb.e
  %i.y = phi { i32, i1 } [ %i.w, %bb.e ], [ %i.ag, %.lr.ph.us49 ]
  %i.z = extractvalue { i32, i1 } %i.y, 0         ; 3 uses
  %.not.us47.not = icmp eq i32 %i.z, 0
  br i1 %.not.us47.not, label %._crit_edge.us50, label %bb.e

._crit_edge.us50:                                 ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46, %.split39.split.us
  br i1 %.03.us42, label %.split.us, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us50
  call void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split.us

.split.us:                                        ; preds = %bb.f, %._crit_edge.us50
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.aa = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.ab = extractvalue { i64, i64 } %i.aa, 0
  store i64 %i.ab, ptr %3, align 8
  %i.ac = extractvalue { i64, i64 } %i.aa, 1
  store i64 %i.ac, ptr %i.c, align 8
  %i.ad = call i32 @sem_clockwait(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ae = icmp eq i32 %i.ad, 0
  br i1 %i.ae, label %.split30.split.us.us, label %.lr.ph38.us

.lr.ph.us49:                                      ; preds = %.split39.split.us
  %i.af = add nsw i32 %i.u, -1
  %i.ag = cmpxchg weak ptr %i.a, i32 %i.u, i32 %i.af acquire monotonic, align 4 ; 2 uses
  %i.ah = extractvalue { i32, i1 } %i.ag, 1
  br i1 %i.ah, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46

bb.g:                                             ; preds = %.lr.ph38.us, %.backedge.us33.us
  %i.ai = load i32, ptr %i.ao, align 4, !tbaa !3  ; 2 uses
  switch i32 %i.ai, label %.split35.us [
    i32 4, label %.backedge.us33.us
    i32 110, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread
  ]

.backedge.us33.us:                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.aj = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.ak = extractvalue { i64, i64 } %i.aj, 0
  store i64 %i.ak, ptr %3, align 8
  %i.al = extractvalue { i64, i64 } %i.aj, 1
  store i64 %i.al, ptr %i.c, align 8
  %i.am = call i32 @sem_clockwait(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.an = icmp eq i32 %i.am, 0
  br i1 %i.an, label %.split30.split.us.us, label %bb.g, !llvm.loop !9

.split30.split.us.us:                             ; preds = %.backedge.us33.us, %.split.us
  br label %.split39.split.us, !llvm.loop !11

.lr.ph38.us:                                      ; preds = %.split.us
  %i.ao = tail call ptr @__errno_location() #6
  br label %bb.g

.split39.split:                                   ; preds = %.split39, %.split30.split
  %.03 = phi i1 [ false, %.split30.split ], [ true, %.split39 ]
  %i.ap = load atomic i32, ptr %i.a monotonic, align 8 ; 2 uses
  %.not26.not = icmp eq i32 %i.ap, 0
  br i1 %.not26.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split39.split, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit
  %.01127 = phi i32 [ %i.at, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit ], [ %i.ap, %.split39.split ] ; 2 uses
  %i.aq = add nsw i32 %.01127, -1
  %i.ar = cmpxchg weak ptr %i.a, i32 %.01127, i32 %i.aq acquire monotonic, align 4 ; 2 uses
  %i.as = extractvalue { i32, i1 } %i.ar, 1
  br i1 %i.as, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.at = extractvalue { i32, i1 } %i.ar, 0       ; 2 uses
  %.not.not = icmp eq i32 %i.at, 0
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit, %.split39.split
  br i1 %.03, label %.split, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split

.split:                                           ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.au = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.av = extractvalue { i64, i64 } %i.au, 0
  store i64 %i.av, ptr %4, align 8
  %i.aw = extractvalue { i64, i64 } %i.au, 1
  store i64 %i.aw, ptr %i.b, align 8
  %i.ax = call i32 @sem_timedwait(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ay = icmp eq i32 %i.ax, 0
  br i1 %i.ay, label %.split30.split, label %.lr.ph37

.lr.ph37:                                         ; preds = %.split
  %i.az = tail call ptr @__errno_location() #6
  br label %bb.i

.backedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.ba = call { i64, i64 } @_ZNK4absl12lts_2024011624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.bb = extractvalue { i64, i64 } %i.ba, 0
  store i64 %i.bb, ptr %4, align 8
  %i.bc = extractvalue { i64, i64 } %i.ba, 1
  store i64 %i.bc, ptr %i.b, align 8
  %i.bd = call i32 @sem_timedwait(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.be = icmp eq i32 %i.bd, 0
  br i1 %i.be, label %.split30.split, label %bb.i, !llvm.loop !9

.split32.us:                                      ; preds = %.backedge.us.us
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 92, ptr noundef nonnull @.str.2, i32 noundef %i.q)
  unreachable

bb.i:                                             ; preds = %.lr.ph37, %.backedge
  %i.bf = load i32, ptr %i.az, align 4, !tbaa !3  ; 2 uses
  switch i32 %i.bf, label %.split35.us [
    i32 4, label %.backedge
    i32 110, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread
  ]

.split35.us:                                      ; preds = %bb.i, %bb.g
  %.us-phi = phi i32 [ %i.ai, %bb.g ], [ %i.bf, %bb.i ]
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 97, ptr noundef nonnull @.str.3, i32 noundef %.us-phi)
  unreachable

.split30.split:                                   ; preds = %.backedge, %.split
  br label %.split39.split, !llvm.loop !11

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread: ; preds = %.lr.ph, %bb.i, %.lr.ph.us49, %bb.e, %bb.g, %.lr.ph.us, %bb.b
  %.not21 = phi i1 [ true, %bb.e ], [ true, %bb.b ], [ true, %.lr.ph.us49 ], [ false, %bb.i ], [ true, %.lr.ph.us ], [ false, %bb.g ], [ true, %.lr.ph ]
  ret i1 %.not21
}

declare void @_ZN4absl12lts_2024011624synchronization_internal10WaiterBase15MaybeBecomeIdleEv() local_unnamed_addr #3

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal9SemWaiter4PostEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = atomicrmw add ptr %i.a, i32 1 release, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2024011624synchronization_internal9SemWaiter4PokeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @sem_post(ptr noundef nonnull align 8 dereferenceable(36) %0) #5
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4absl12lts_2024011624synchronization_internal9SemWaiter4PokeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #6
  %i.f = load i32, ptr %i.e, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 114, ptr noundef nonnull @.str.4, i32 noundef %i.f)
  unreachable

_ZN4absl12lts_2024011624synchronization_internal9SemWaiter4PokeEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2024011624synchronization_internal9SemWaiter4PokeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @sem_post(ptr noundef nonnull %0) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #6
  %i.c = load i32, ptr %i.b, align 4, !tbaa !3
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2024011616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 114, ptr noundef nonnull @.str.4, i32 noundef %i.c)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_post(ptr noundef) local_unnamed_addr #1

declare i32 @__gxx_personality_v0(...)

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
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
