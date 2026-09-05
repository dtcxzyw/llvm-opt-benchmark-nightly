Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/sem_waiter?download=true
inline.NumInlined: 7
inline.NumDeleted: 5
begin_hunk_0
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-i128:128-f80:128-n8:16:32:64-S128"
target triple = "x86_64-pc-linux-gnu"

%"class.absl::lts_20260526::synchronization_internal::KernelTimeout" = type { i64 }
%struct.timespec = type { i64, i64 }

@.str = private unnamed_addr constant [67 x i8] c"third_party/abseil-cpp/absl/synchronization/internal/sem_waiter.cc\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"sem_init failed with errno %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"sem_wait failed: %d\00", align 1
@.str.3 = private unnamed_addr constant [34 x i8] c"SemWaiter::TimedWait() failed: %d\00", align 1
@.str.4 = private unnamed_addr constant [31 x i8] c"sem_post failed with errno %d\0A\00", align 1

@_ZN4absl12lts_2026052624synchronization_internal9SemWaiterC1Ev = dso_local unnamed_addr alias void (ptr), ptr @_ZN4absl12lts_2026052624synchronization_internal9SemWaiterC2Ev

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052624synchronization_internal9SemWaiterC2Ev(ptr noundef nonnull align 8 dereferenceable(36) initializes((32, 36)) %0) unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  store i32 0, ptr %i.a, align 8, !tbaa !11
  %i.b = tail call i32 @sem_init(ptr noundef nonnull %0, i32 noundef 0, i32 noundef 0) #5
  %.not = icmp eq i32 %i.b, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = tail call ptr @__errno_location() #6
  %i.d = load i32, ptr %i.c, align 4, !tbaa !9
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 38, ptr noundef nonnull @.str.1, i32 noundef %i.d)
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

; Function Attrs: nounwind
declare i32 @sem_init(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.start.p0(ptr captures(none)) #2

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #4

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.lifetime.end.p0(ptr captures(none)) #2

; Function Attrs: mustprogress uwtable
define dso_local noundef i32 @_ZN4absl12lts_2026052624synchronization_internal9SemWaiter9TimedWaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #0 align 2 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::synchronization_internal::KernelTimeout", align 8 ; 3 uses
  %3 = alloca %struct.timespec, align 8           ; 5 uses
  %4 = alloca %struct.timespec, align 8           ; 5 uses
  store i64 %1, ptr %2, align 8
  %i.a = trunc i64 %1 to i1
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.b = call { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
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
  %i.g = call { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
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

declare { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8), i32 noundef) local_unnamed_addr #3

declare i32 @sem_clockwait(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #3

declare { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #3

declare i32 @sem_timedwait(ptr noundef, ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_2026052624synchronization_internal9SemWaiter4WaitENS1_13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(36) %0, i64 %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::synchronization_internal::KernelTimeout", align 8 ; 16 uses
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

.lr.ph.us:                                        ; preds = %.split39.us
  %5 = add nsw i32 %i.d, -1
  %6 = cmpxchg weak ptr %i.a, i32 %i.d, i32 %5 acquire monotonic, align 4 ; 2 uses
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us
  %i.e = add nsw i32 %i.i, -1
  %i.f = cmpxchg weak ptr %i.a, i32 %i.i, i32 %i.e acquire monotonic, align 4 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  br i1 %i.g, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us: ; preds = %.lr.ph.us, %bb.b
  %i.h = phi { i32, i1 } [ %i.f, %bb.b ], [ %6, %.lr.ph.us ]
  %i.i = extractvalue { i32, i1 } %i.h, 0         ; 3 uses
  %.not.us.not = icmp eq i32 %i.i, 0
  br i1 %.not.us.not, label %._crit_edge.us, label %bb.b

._crit_edge.us:                                   ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us, %.split39.us
  br i1 %.03.us, label %.split.us.us, label %bb.c

bb.c:                                             ; preds = %._crit_edge.us
  tail call void @_ZN4absl12lts_2026052624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split.us.us

.split.us.us:                                     ; preds = %bb.c, %._crit_edge.us
  %i.j = tail call i32 @sem_wait(ptr noundef nonnull %0)
  %i.k = icmp eq i32 %i.j, 0
  br i1 %i.k, label %.split30.us.us, label %.backedge.us.lr.ph.us

bb.d:                                             ; preds = %.backedge.us.us
  %i.l = tail call i32 @sem_wait(ptr noundef nonnull %0)
  %i.m = icmp eq i32 %i.l, 0
  br i1 %i.m, label %.split30.us.us, label %.backedge.us.us, !llvm.loop !12

.backedge.us.us:                                  ; preds = %.backedge.us.lr.ph.us, %bb.d
  %i.n = load i32, ptr %i.p, align 4, !tbaa !9    ; 2 uses
  %i.o = icmp eq i32 %i.n, 4
  br i1 %i.o, label %bb.d, label %.split32.us

.split30.us.us:                                   ; preds = %bb.d, %.split.us.us
  br label %.split39.us, !llvm.loop !13

.backedge.us.lr.ph.us:                            ; preds = %.split.us.us
  %i.p = tail call ptr @__errno_location() #6
  br label %.backedge.us.us

.split39:                                         ; preds = %bb.a
  %i.q = trunc i64 %.fr60 to i1
  br i1 %i.q, label %.split39.split.us, label %.split39.split

.split39.split.us:                                ; preds = %.split39, %.lr.ph38.us
  %.03.us42 = phi i1 [ false, %.lr.ph38.us ], [ true, %.split39 ]
  %i.r = load atomic i32, ptr %i.a monotonic, align 8 ; 3 uses
  %.not26.us43.not = icmp eq i32 %i.r, 0
  br i1 %.not26.us43.not, label %._crit_edge.us50, label %.lr.ph.us44

.lr.ph.us44:                                      ; preds = %.split39.split.us
  %8 = add nsw i32 %i.r, -1
  %9 = cmpxchg weak ptr %i.a, i32 %i.r, i32 %8 acquire monotonic, align 4 ; 2 uses
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46
  %i.s = add nsw i32 %i.w, -1
  %i.t = cmpxchg weak ptr %i.a, i32 %i.w, i32 %i.s acquire monotonic, align 4 ; 2 uses
  %i.u = extractvalue { i32, i1 } %i.t, 1
  br i1 %i.u, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46: ; preds = %.lr.ph.us44, %bb.e
  %i.v = phi { i32, i1 } [ %i.t, %bb.e ], [ %9, %.lr.ph.us44 ]
  %i.w = extractvalue { i32, i1 } %i.v, 0         ; 3 uses
  %.not.us47.not = icmp eq i32 %i.w, 0
  br i1 %.not.us47.not, label %._crit_edge.us50, label %bb.e

._crit_edge.us50:                                 ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.us46, %.split39.split.us
  br i1 %.03.us42, label %.split.us, label %bb.f

bb.f:                                             ; preds = %._crit_edge.us50
  call void @_ZN4absl12lts_2026052624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split.us

.split.us:                                        ; preds = %bb.f, %._crit_edge.us50
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.x = call { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.y = extractvalue { i64, i64 } %i.x, 0
  store i64 %i.y, ptr %3, align 8
  %i.z = extractvalue { i64, i64 } %i.x, 1
  store i64 %i.z, ptr %i.c, align 8
  %i.aa = call i32 @sem_clockwait(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ab = icmp eq i32 %i.aa, 0
  br i1 %i.ab, label %.lr.ph38.us, label %.lr.ph.us49

.lr.ph.us49:                                      ; preds = %.split.us
  %11 = tail call ptr @__errno_location() #6
  br label %bb.g

bb.g:                                             ; preds = %.backedge.us33.us, %.lr.ph.us49
  %i.ac = load i32, ptr %11, align 4, !tbaa !9    ; 2 uses
  switch i32 %i.ac, label %.split35.us [
    i32 4, label %.backedge.us33.us
    i32 110, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread
  ]

.backedge.us33.us:                                ; preds = %bb.g
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #5
  %i.ad = call { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout25MakeClockAbsoluteTimespecEi(ptr noundef nonnull align 8 dereferenceable(8) %2, i32 noundef 1) ; 2 uses
  %i.ae = extractvalue { i64, i64 } %i.ad, 0
  store i64 %i.ae, ptr %3, align 8
  %i.af = extractvalue { i64, i64 } %i.ad, 1
  store i64 %i.af, ptr %i.c, align 8
  %i.ag = call i32 @sem_clockwait(ptr noundef nonnull align 8 dereferenceable(36) %0, i32 noundef 1, ptr noundef nonnull %3)
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ah = icmp eq i32 %i.ag, 0
  br i1 %i.ah, label %.lr.ph38.us, label %bb.g, !llvm.loop !12

.lr.ph38.us:                                      ; preds = %.backedge.us33.us, %.split.us
  br label %.split39.split.us, !llvm.loop !13

.split39.split:                                   ; preds = %.split39, %.split30.split
  %.03 = phi i1 [ false, %.split30.split ], [ true, %.split39 ]
  %i.ai = load atomic i32, ptr %i.a monotonic, align 8 ; 2 uses
  %.not26.not = icmp eq i32 %i.ai, 0
  br i1 %.not26.not, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %.split39.split, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit
  %.01127 = phi i32 [ %i.am, %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit ], [ %i.ai, %.split39.split ] ; 2 uses
  %i.aj = add nsw i32 %.01127, -1
  %i.ak = cmpxchg weak ptr %i.a, i32 %.01127, i32 %i.aj acquire monotonic, align 4 ; 2 uses
  %i.al = extractvalue { i32, i1 } %i.ak, 1
  br i1 %i.al, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.am = extractvalue { i32, i1 } %i.ak, 0       ; 2 uses
  %.not.not = icmp eq i32 %i.am, 0
  br i1 %.not.not, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit, %.split39.split
  br i1 %.03, label %.split, label %bb.h

bb.h:                                             ; preds = %._crit_edge
  call void @_ZN4absl12lts_2026052624synchronization_internal10WaiterBase15MaybeBecomeIdleEv()
  br label %.split

.split:                                           ; preds = %bb.h, %._crit_edge
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.an = call { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.ao = extractvalue { i64, i64 } %i.an, 0
  store i64 %i.ao, ptr %4, align 8
  %i.ap = extractvalue { i64, i64 } %i.an, 1
  store i64 %i.ap, ptr %i.b, align 8
  %i.aq = call i32 @sem_timedwait(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ar = icmp eq i32 %i.aq, 0
  br i1 %i.ar, label %.split30.split, label %.lr.ph37

.lr.ph37:                                         ; preds = %.split
  %i.as = tail call ptr @__errno_location() #6
  br label %bb.i

.backedge:                                        ; preds = %bb.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2)
  store i64 %.fr60, ptr %2, align 8
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #5
  %i.at = call { i64, i64 } @_ZNK4absl12lts_2026052624synchronization_internal13KernelTimeout15MakeAbsTimespecEv(ptr noundef nonnull align 8 dereferenceable(8) %2) ; 2 uses
  %i.au = extractvalue { i64, i64 } %i.at, 0
  store i64 %i.au, ptr %4, align 8
  %i.av = extractvalue { i64, i64 } %i.at, 1
  store i64 %i.av, ptr %i.b, align 8
  %i.aw = call i32 @sem_timedwait(ptr noundef nonnull align 8 dereferenceable(36) %0, ptr noundef nonnull %4)
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #5
  call void @llvm.lifetime.end.p0(ptr nonnull %2)
  %i.ax = icmp eq i32 %i.aw, 0
  br i1 %i.ax, label %.split30.split, label %bb.i, !llvm.loop !12

.split32.us:                                      ; preds = %.backedge.us.us
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 88, ptr noundef nonnull @.str.2, i32 noundef %i.n)
  unreachable

bb.i:                                             ; preds = %.lr.ph37, %.backedge
  %i.ay = load i32, ptr %i.as, align 4, !tbaa !9  ; 2 uses
  switch i32 %i.ay, label %.split35.us [
    i32 4, label %.backedge
    i32 110, label %_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread
  ]

.split35.us:                                      ; preds = %bb.i, %bb.g
  %.us-phi = phi i32 [ %i.ac, %bb.g ], [ %i.ay, %bb.i ]
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 93, ptr noundef nonnull @.str.3, i32 noundef %.us-phi)
  unreachable

.split30.split:                                   ; preds = %.backedge, %.split
  br label %.split39.split, !llvm.loop !13

_ZNSt13__atomic_baseIiE21compare_exchange_weakERiiSt12memory_orderS2_.exit.thread: ; preds = %.lr.ph, %bb.i, %.lr.ph.us44, %bb.e, %bb.g, %.lr.ph.us, %bb.b
  %.not21 = phi i1 [ true, %bb.e ], [ true, %bb.b ], [ true, %.lr.ph.us44 ], [ false, %bb.i ], [ true, %.lr.ph.us ], [ false, %bb.g ], [ true, %.lr.ph ]
  ret i1 %.not21
}

declare void @_ZN4absl12lts_2026052624synchronization_internal10WaiterBase15MaybeBecomeIdleEv() local_unnamed_addr #3

declare i32 @sem_wait(ptr noundef) local_unnamed_addr #3

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052624synchronization_internal9SemWaiter4PostEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.b = atomicrmw add ptr %i.a, i32 1 release, align 4
  %i.c = icmp eq i32 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZN4absl12lts_2026052624synchronization_internal9SemWaiter4PokeEv.exit

bb.b:                                             ; preds = %bb.a
  %i.d = tail call i32 @sem_post(ptr noundef nonnull align 8 dereferenceable(36) %0) #5
  %.not.i = icmp eq i32 %i.d, 0
  br i1 %.not.i, label %_ZN4absl12lts_2026052624synchronization_internal9SemWaiter4PokeEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.e = tail call ptr @__errno_location() #6
  %i.f = load i32, ptr %i.e, align 4, !tbaa !9
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 110, ptr noundef nonnull @.str.4, i32 noundef %i.f)
  unreachable

_ZN4absl12lts_2026052624synchronization_internal9SemWaiter4PokeEv.exit: ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052624synchronization_internal9SemWaiter4PokeEv(ptr noundef nonnull align 8 dereferenceable(36) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = tail call i32 @sem_post(ptr noundef nonnull %0) #5
  %.not = icmp eq i32 %i.a, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.b = tail call ptr @__errno_location() #6
  %i.c = load i32, ptr %i.b, align 4, !tbaa !9
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 53), i32 noundef 110, ptr noundef nonnull @.str.4, i32 noundef %i.c)
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

!llvm.module.flags = !{!0, !1, !2}
!llvm.ident = !{!3}
!llvm.errno.tbaa = !{!8}

!0 = !{i32 8, !"PIC Level", i32 2}
!1 = !{i32 7, !"PIE Level", i32 2}
!2 = !{i32 7, !"uwtable", i32 2}
!3 = !{!"Ubuntu clang version 24.0.0 (++20260903081701+7ece48b9e5bb-1~exp1~20260903201841.1826)"}
!4 = !{!"Simple C++ TBAA"}
!5 = !{!"omnipotent char", !4, i64 0}
!6 = !{!"int", !5, i64 0}
!7 = !{!"__libc_errno", !6, i64 0}
!8 = !{!7, !6, i64 0}
!9 = !{!6, !6, i64 0}
!10 = !{!"_ZTSSt13__atomic_baseIiE", !6, i64 0}
!11 = !{!10, !6, i64 0}
!12 = distinct !{!12, !14}
!13 = distinct !{!13, !14}
!14 = !{!"llvm.loop.mustprogress"}
end_hunk_0
