inline.NumInlined: 107
inline.NumDeleted: 58
begin_hunk_0_@_ZSt20__throw_system_errori

declare i32 @nanosleep(ptr noundef, ptr noundef) local_unnamed_addr #7

; Function Attrs: mustprogress nofree nosync nounwind willreturn memory(none)
declare ptr @__errno_location() local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly4coro15SharedMutexFair15try_lock_sharedEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::LockedPtr", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %1, align 8, !tbaa !11, !alias.scope !35
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !35
  invoke void @_ZNSt11unique_lockIN5folly8SpinLockEE4lockEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !19, !alias.scope !35
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 4 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  switch i64 %i.e, label %bb.c [
    i64 0, label %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit.thread4
    i64 1, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit
  ]

bb.c:                                             ; preds = %bb.b
  %i.f = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.g = load i64, ptr %i.f, align 8, !tbaa !38
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !39
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit.thread4, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit.thread4: ; preds = %bb.b, %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit
  %i.l = add i64 %i.e, 4
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.b, %bb.c, %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit.thread4, %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit
  %i.m = phi i1 [ true, %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit.thread4 ], [ false, %_ZN5folly4coro15SharedMutexFair13canLockSharedERKNS1_5StateE.exit ], [ false, %bb.c ], [ false, %bb.b ]
  store atomic i8 0, ptr %i.c release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %i.m

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #13
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly4coro15SharedMutexFair16try_lock_upgradeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::LockedPtr", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %1, align 8, !tbaa !11, !alias.scope !40
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !40
  invoke void @_ZNSt11unique_lockIN5folly8SpinLockEE4lockEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !19, !alias.scope !40
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 3 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 3 uses
  %i.f = icmp eq i64 %i.e, 0
  br i1 %i.f, label %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit.thread, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %i.e, 3
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit: ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 8
  %i.j = load i64, ptr %i.i, align 8, !tbaa !38
  %i.k = icmp eq i64 %i.j, 0
  br i1 %i.k, label %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit.thread: ; preds = %bb.b, %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit
  %i.l = or i64 %i.e, 2
  store i64 %i.l, ptr %i.d, align 8, !tbaa !20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.c, %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit.thread, %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit
  %i.m = phi i1 [ false, %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit ], [ true, %_ZN5folly4coro15SharedMutexFair14canLockUpgradeERKNS1_5StateE.exit.thread ], [ false, %bb.c ]
  store atomic i8 0, ptr %i.c release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %i.m

bb.d:                                             ; preds = %bb.a
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #13
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define noundef zeroext i1 @_ZN5folly4coro15SharedMutexFair27try_unlock_upgrade_and_lockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::LockedPtr", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %1, align 8, !tbaa !11, !alias.scope !43
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !43
  invoke void @_ZNSt11unique_lockIN5folly8SpinLockEE4lockEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.d

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !19, !alias.scope !43
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 2 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = icmp eq i64 %i.e, 2                      ; 2 uses
  br i1 %i.f, label %bb.c, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  store i64 1, ptr %i.d, align 8, !tbaa !20
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.c, %bb.b
  store atomic i8 0, ptr %i.c release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  ret i1 %i.f

bb.d:                                             ; preds = %bb.a
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  call void @__clang_call_terminate(ptr %i.h) #13
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly4coro15SharedMutexFair6unlockEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::LockedPtr", align 8  ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %1, align 8, !tbaa !11, !alias.scope !46
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 3 uses
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !46
  invoke void @_ZNSt11unique_lockIN5folly8SpinLockEE4lockEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.g

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !19, !alias.scope !46
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 2 uses
  store i64 0, ptr %i.d, align 8, !tbaa !20
  %i.e = call noundef ptr @_ZN5folly4coro15SharedMutexFair18getWaitersToResumeERNS1_5StateENS1_8LockTypeE(ptr noundef nonnull align 8 dereferenceable(40) %i.d, i8 noundef zeroext 0) #12
  %i.f = load i8, ptr %i.b, align 8, !tbaa !19, !range !26, !noundef !27
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.c:                                             ; preds = %bb.b
  %i.h = load ptr, ptr %1, align 8, !tbaa !11     ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.h, null
  br i1 %.not.i.i.i, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  store atomic i8 0, ptr %i.h release, align 1
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.b, %bb.c, %bb.d
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i

_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i: ; preds = %bb.e, %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %.0.i = phi ptr [ %i.e, %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit ], [ %i.j, %bb.e ] ; 3 uses
  %.not.i = icmp eq ptr %.0.i, null
  br i1 %.not.i, label %_ZN5folly4coro15SharedMutexFair13resumeWaitersEPNS1_15LockAwaiterBaseE.exit, label %bb.e

bb.e:                                             ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i
  %i.i = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !49
  %i.k = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !50   ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  invoke fastcc void %i.m(ptr nonnull %i.l)
          to label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i unwind label %bb.f, !llvm.loop !52, !inline_history !53

bb.f:                                             ; preds = %bb.e
  %i.n = landingpad { ptr, i32 }
          catch ptr null
  %i.o = extractvalue { ptr, i32 } %i.n, 0
  call void @__clang_call_terminate(ptr %i.o) #13
  unreachable

_ZN5folly4coro15SharedMutexFair13resumeWaitersEPNS1_15LockAwaiterBaseE.exit: ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i
  ret void

bb.g:                                             ; preds = %bb.a
  %i.p = landingpad { ptr, i32 }
          catch ptr null
  %i.q = extractvalue { ptr, i32 } %i.p, 0
  call void @__clang_call_terminate(ptr %i.q) #13
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable
define noundef ptr @_ZN5folly4coro15SharedMutexFair18getWaitersToResumeERNS1_5StateENS1_8LockTypeE(ptr noundef nonnull align 8 dereferenceable(40) %0, i8 noundef zeroext %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !39   ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load i64, ptr %0, align 8, !tbaa !20
  %i.d = icmp eq i64 %i.c, 2
  br i1 %i.d, label %bb.c, label %bb.q

bb.c:                                             ; preds = %bb.b
  store ptr null, ptr %i.a, align 8, !tbaa !49
  store i64 1, ptr %0, align 8, !tbaa !20
  br label %bb.q

bb.d:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 3 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !54   ; 6 uses
  %i.g = icmp eq ptr %i.f, null
  br i1 %i.g, label %bb.q, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.h = getelementptr inbounds nuw i8, ptr %i.f, i64 24
  %i.i = load i8, ptr %i.h, align 8, !tbaa !55
  %.promoted.i.pre = load i64, ptr %0, align 8    ; 3 uses
  switch i8 %i.i, label %.lr.ph.i.preheader [
    i8 0, label %bb.f
    i8 1, label %bb.h
  ]

bb.f:                                             ; preds = %bb.e
  %i.j = icmp eq i64 %.promoted.i.pre, 0
  br i1 %i.j, label %bb.g, label %bb.q

bb.g:                                             ; preds = %bb.f
  %i.k = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !49
  store ptr null, ptr %i.k, align 8, !tbaa !49
  store ptr %i.l, ptr %i.e, align 8, !tbaa !54
  store i64 1, ptr %0, align 8, !tbaa !20
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.n = load i64, ptr %i.m, align 8, !tbaa !38
  %i.o = add i64 %i.n, -1
  store i64 %i.o, ptr %i.m, align 8, !tbaa !38
  br label %bb.q

bb.h:                                             ; preds = %bb.e
  %i.p = and i64 %.promoted.i.pre, 2
  %i.q = icmp eq i64 %i.p, 0
  br i1 %i.q, label %.lr.ph.i.preheader, label %bb.q

.lr.ph.i.preheader:                               ; preds = %bb.e, %bb.h
  br label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.lr.ph.i.preheader, %bb.l
  %.02953.i = phi ptr [ %i.y, %bb.l ], [ %i.f, %.lr.ph.i.preheader ] ; 9 uses
  %.03152.i = phi ptr [ %.02953.i, %bb.l ], [ null, %.lr.ph.i.preheader ] ; 3 uses
  %.promoted55.i = phi i64 [ %storemerge.i, %bb.l ], [ %.promoted.i.pre, %.lr.ph.i.preheader ] ; 4 uses
  %i.r = getelementptr inbounds nuw i8, ptr %.02953.i, i64 24
  %i.s = load i8, ptr %i.r, align 8, !tbaa !55
  switch i8 %i.s, label %bb.m [
    i8 2, label %bb.i
    i8 1, label %bb.j
  ]

bb.i:                                             ; preds = %.lr.ph.i
  %i.t = add i64 %.promoted55.i, 4
  br label %bb.l

bb.j:                                             ; preds = %.lr.ph.i
  %i.u = and i64 %.promoted55.i, 2
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %bb.k, label %bb.m

bb.k:                                             ; preds = %bb.j
  %i.w = or disjoint i64 %.promoted55.i, 2
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.i
  %storemerge.i = phi i64 [ %i.w, %bb.k ], [ %i.t, %bb.i ] ; 2 uses
  store i64 %storemerge.i, ptr %0, align 8, !tbaa !59
  %i.x = getelementptr inbounds nuw i8, ptr %.02953.i, i64 8
  %i.y = load ptr, ptr %i.x, align 8, !tbaa !60   ; 2 uses
  %.not.i = icmp eq ptr %i.y, null
  br i1 %.not.i, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit, label %.lr.ph.i, !llvm.loop !61

bb.m:                                             ; preds = %bb.j, %.lr.ph.i
  %i.z = icmp eq i8 %1, 0
  br i1 %i.z, label %.preheader.i, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit

.preheader.i:                                     ; preds = %bb.m, %bb.p
  %i.aa = phi i64 [ %i.ao, %bb.p ], [ %.promoted55.i, %bb.m ] ; 2 uses
  %.132.i = phi ptr [ %.233.i, %bb.p ], [ %.03152.i, %bb.m ] ; 3 uses
  %.130.i = phi ptr [ %.2.i, %bb.p ], [ %.02953.i, %bb.m ] ; 7 uses
  %.0.i = phi ptr [ %.1.i, %bb.p ], [ %.03152.i, %bb.m ] ; 3 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %.130.i, i64 24
  %i.ac = load i8, ptr %i.ab, align 8, !tbaa !55
  switch i8 %i.ac, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit [
    i8 2, label %bb.n
    i8 1, label %bb.o
  ]

bb.n:                                             ; preds = %.preheader.i
  %i.ad = add i64 %i.aa, 4                        ; 2 uses
  store i64 %i.ad, ptr %0, align 8, !tbaa !59
  %i.ae = getelementptr inbounds nuw i8, ptr %.130.i, i64 8 ; 2 uses
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !60
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  store ptr %i.af, ptr %i.ag, align 8, !tbaa !60
  %i.ah = getelementptr inbounds nuw i8, ptr %.132.i, i64 8
  store ptr %.130.i, ptr %i.ah, align 8, !tbaa !60
  %i.ai = load ptr, ptr %i.ae, align 8, !tbaa !60 ; 2 uses
  %i.aj = icmp eq ptr %i.ai, null
  br i1 %i.aj, label %.thread39.i, label %bb.p

.thread39.i:                                      ; preds = %bb.n
  %i.ak = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.al = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.ak, ptr %i.al, align 8, !tbaa !62
  br label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit

bb.o:                                             ; preds = %.preheader.i
  %i.am = getelementptr inbounds nuw i8, ptr %.130.i, i64 8
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !60
  br label %bb.p

bb.p:                                             ; preds = %bb.o, %bb.n
  %i.ao = phi i64 [ %i.aa, %bb.o ], [ %i.ad, %bb.n ]
  %.233.i = phi ptr [ %.132.i, %bb.o ], [ %.130.i, %bb.n ] ; 2 uses
  %.2.i = phi ptr [ %i.an, %bb.o ], [ %i.ai, %bb.n ] ; 2 uses
  %.1.i = phi ptr [ %.130.i, %bb.o ], [ %.0.i, %bb.n ]
  %.old1.not.i = icmp eq ptr %.2.i, null
  br i1 %.old1.not.i, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit, label %.preheader.i

_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit: ; preds = %bb.l, %.preheader.i, %bb.p, %bb.m, %.thread39.i
  %.02947.i = phi ptr [ %.02953.i, %.thread39.i ], [ %.02953.i, %.preheader.i ], [ %.02953.i, %bb.m ], [ %.02953.i, %bb.p ], [ null, %bb.l ]
  %.3.i = phi ptr [ %.130.i, %.thread39.i ], [ %.132.i, %.preheader.i ], [ %.03152.i, %bb.m ], [ %.233.i, %bb.p ], [ %.02953.i, %bb.l ]
  %i.ap = getelementptr inbounds nuw i8, ptr %.3.i, i64 8
  store ptr null, ptr %i.ap, align 8, !tbaa !60
  store ptr %.02947.i, ptr %i.e, align 8, !tbaa !54
  br label %bb.q

bb.q:                                             ; preds = %bb.c, %bb.b, %bb.f, %bb.h, %bb.d, %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit, %bb.g
  %.1 = phi ptr [ %i.b, %bb.c ], [ null, %bb.b ], [ %i.f, %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit ], [ %i.f, %bb.g ], [ null, %bb.d ], [ null, %bb.h ], [ null, %bb.f ]
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  %i.ar = load ptr, ptr %i.aq, align 8, !tbaa !54
  %i.as = icmp eq ptr %i.ar, null
  br i1 %i.as, label %bb.r, label %"_ZN5folly6detail14ScopeGuardImplIZNS_4coro15SharedMutexFair18getWaitersToResumeERNS3_5StateENS3_8LockTypeEE3$_0Lb1EED2Ev.exit"

bb.r:                                             ; preds = %bb.q
  %i.at = getelementptr inbounds nuw i8, ptr %0, i64 32
  store ptr %i.aq, ptr %i.at, align 8, !tbaa !62
  br label %"_ZN5folly6detail14ScopeGuardImplIZNS_4coro15SharedMutexFair18getWaitersToResumeERNS3_5StateENS3_8LockTypeEE3$_0Lb1EED2Ev.exit"

"_ZN5folly6detail14ScopeGuardImplIZNS_4coro15SharedMutexFair18getWaitersToResumeERNS3_5StateENS3_8LockTypeEE3$_0Lb1EED2Ev.exit": ; preds = %bb.q, %bb.r
  ret ptr %.1
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly4coro15SharedMutexFair13resumeWaitersEPNS1_15LockAwaiterBaseE(ptr noundef readonly captures(address) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  br label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit

_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit: ; preds = %bb.b, %bb.a
  %.0 = phi ptr [ %0, %bb.a ], [ %i.b, %bb.b ]    ; 3 uses
  %.not = icmp eq ptr %.0, null
  br i1 %.not, label %bb.d, label %bb.b

bb.b:                                             ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit
  %i.a = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !49
  %i.c = getelementptr inbounds nuw i8, ptr %.0, i64 16
  %i.d = load ptr, ptr %i.c, align 8, !tbaa !50   ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8
  invoke fastcc void %i.e(ptr nonnull %i.d)
          to label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit unwind label %bb.c, !llvm.loop !52, !inline_history !53

bb.c:                                             ; preds = %bb.b
  %i.f = landingpad { ptr, i32 }
          catch ptr null
  %i.g = extractvalue { ptr, i32 } %i.f, 0
  tail call void @__clang_call_terminate(ptr %i.g) #13
  unreachable

bb.d:                                             ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly4coro15SharedMutexFair13unlock_sharedEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::LockedPtr", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %1, align 8, !tbaa !11, !alias.scope !63
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !63
  invoke void @_ZNSt11unique_lockIN5folly8SpinLockEE4lockEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.r

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !19, !alias.scope !63
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 10 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20   ; 2 uses
  %i.f = add i64 %i.e, -4                         ; 4 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24 ; 2 uses
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39   ; 2 uses
  %.not.i = icmp eq ptr %i.h, null
  br i1 %.not.i, label %bb.e, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.i = icmp eq i64 %i.f, 2
  br i1 %i.i, label %bb.d, label %bb.n

bb.d:                                             ; preds = %bb.c
  store ptr null, ptr %i.g, align 8, !tbaa !49
  store i64 1, ptr %i.d, align 8, !tbaa !20
  br label %bb.n

bb.e:                                             ; preds = %bb.b
  %i.j = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.k = load ptr, ptr %i.j, align 8, !tbaa !54   ; 6 uses
  %i.l = icmp eq ptr %i.k, null
  br i1 %i.l, label %bb.n, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.m = getelementptr inbounds nuw i8, ptr %i.k, i64 24
  %i.n = load i8, ptr %i.m, align 8, !tbaa !55
  switch i8 %i.n, label %.lr.ph.i.i.preheader [
    i8 0, label %bb.g
    i8 1, label %bb.i
  ]

bb.g:                                             ; preds = %bb.f
  %i.o = icmp eq i64 %i.f, 0
  br i1 %i.o, label %bb.h, label %bb.n

bb.h:                                             ; preds = %bb.g
  %i.p = getelementptr inbounds nuw i8, ptr %i.k, i64 8 ; 2 uses
  %i.q = load ptr, ptr %i.p, align 8, !tbaa !49
  store ptr null, ptr %i.p, align 8, !tbaa !49
  store ptr %i.q, ptr %i.j, align 8, !tbaa !54
  store i64 1, ptr %i.d, align 8, !tbaa !20
  %i.r = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.s = load i64, ptr %i.r, align 8, !tbaa !38
  %i.t = add i64 %i.s, -1
  store i64 %i.t, ptr %i.r, align 8, !tbaa !38
  br label %bb.n

bb.i:                                             ; preds = %bb.f
  %i.u = and i64 %i.e, 2
  %i.v = icmp eq i64 %i.u, 0
  br i1 %i.v, label %.lr.ph.i.i.preheader, label %bb.n

.lr.ph.i.i.preheader:                             ; preds = %bb.f, %bb.i
  br label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.lr.ph.i.i.preheader, %bb.m
  %.02953.i.i = phi ptr [ %i.ad, %bb.m ], [ %i.k, %.lr.ph.i.i.preheader ] ; 6 uses
  %.03152.i.i = phi ptr [ %.02953.i.i, %bb.m ], [ null, %.lr.ph.i.i.preheader ] ; 2 uses
  %.promoted55.i.i = phi i64 [ %storemerge.i.i, %bb.m ], [ %i.f, %.lr.ph.i.i.preheader ] ; 3 uses
  %i.w = getelementptr inbounds nuw i8, ptr %.02953.i.i, i64 24
  %i.x = load i8, ptr %i.w, align 8, !tbaa !55
  switch i8 %i.x, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i [
    i8 2, label %bb.j
    i8 1, label %bb.k
  ]

bb.j:                                             ; preds = %.lr.ph.i.i
  %i.y = add i64 %.promoted55.i.i, 4
  br label %bb.m

bb.k:                                             ; preds = %.lr.ph.i.i
  %i.z = and i64 %.promoted55.i.i, 2
  %i.aa = icmp eq i64 %i.z, 0
  br i1 %i.aa, label %bb.l, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i

bb.l:                                             ; preds = %bb.k
  %i.ab = or disjoint i64 %.promoted55.i.i, 2
  br label %bb.m

bb.m:                                             ; preds = %bb.l, %bb.j
  %storemerge.i.i = phi i64 [ %i.ab, %bb.l ], [ %i.y, %bb.j ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !59
  %i.ac = getelementptr inbounds nuw i8, ptr %.02953.i.i, i64 8
  %i.ad = load ptr, ptr %i.ac, align 8, !tbaa !60 ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.ad, null
  br i1 %.not.i.i4, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i, label %.lr.ph.i.i, !llvm.loop !61

_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i: ; preds = %.lr.ph.i.i, %bb.k, %bb.m
  %.02947.i.i = phi ptr [ null, %bb.m ], [ %.02953.i.i, %bb.k ], [ %.02953.i.i, %.lr.ph.i.i ]
  %.3.i.i = phi ptr [ %.02953.i.i, %bb.m ], [ %.03152.i.i, %bb.k ], [ %.03152.i.i, %.lr.ph.i.i ]
  %i.ae = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8
  store ptr null, ptr %i.ae, align 8, !tbaa !60
  store ptr %.02947.i.i, ptr %i.j, align 8, !tbaa !54
  br label %bb.n

bb.n:                                             ; preds = %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i, %bb.i, %bb.h, %bb.g, %bb.e, %bb.d, %bb.c
  %.1.i = phi ptr [ %i.h, %bb.d ], [ null, %bb.c ], [ %i.k, %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i ], [ %i.k, %bb.h ], [ null, %bb.e ], [ null, %bb.i ], [ null, %bb.g ]
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !54
  %i.ah = icmp eq ptr %i.ag, null
  br i1 %i.ah, label %bb.o, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.o:                                             ; preds = %bb.n
  %i.ai = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.af, ptr %i.ai, align 8, !tbaa !62
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.o, %bb.n
  store atomic i8 0, ptr %i.c release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i

_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i: ; preds = %bb.p, %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %.0.i = phi ptr [ %.1.i, %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit ], [ %i.ak, %bb.p ] ; 3 uses
  %.not.i5 = icmp eq ptr %.0.i, null
  br i1 %.not.i5, label %_ZN5folly4coro15SharedMutexFair13resumeWaitersEPNS1_15LockAwaiterBaseE.exit, label %bb.p

bb.p:                                             ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i
  %i.aj = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !49
  %i.al = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.am = load ptr, ptr %i.al, align 8, !tbaa !50 ; 2 uses
  %i.an = load ptr, ptr %i.am, align 8
  invoke fastcc void %i.an(ptr nonnull %i.am)
          to label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i unwind label %bb.q, !llvm.loop !52, !inline_history !53

bb.q:                                             ; preds = %bb.p
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  call void @__clang_call_terminate(ptr %i.ap) #13
  unreachable

_ZN5folly4coro15SharedMutexFair13resumeWaitersEPNS1_15LockAwaiterBaseE.exit: ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i
  ret void

bb.r:                                             ; preds = %bb.a
  %i.aq = landingpad { ptr, i32 }
          catch ptr null
  %i.ar = extractvalue { ptr, i32 } %i.aq, 0
  call void @__clang_call_terminate(ptr %i.ar) #13
  unreachable
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN5folly4coro15SharedMutexFair14unlock_upgradeEv(ptr noundef nonnull align 8 dereferenceable(48) %0) local_unnamed_addr #1 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"class.folly::LockedPtr", align 8  ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #12
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store ptr %i.a, ptr %1, align 8, !tbaa !11, !alias.scope !66
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  store i8 0, ptr %i.b, align 8, !tbaa !19, !alias.scope !66
  invoke void @_ZNSt11unique_lockIN5folly8SpinLockEE4lockEv(ptr noundef nonnull align 8 dereferenceable(16) %1)
          to label %bb.b unwind label %bb.m

bb.b:                                             ; preds = %bb.a
  store i8 1, ptr %i.b, align 8, !tbaa !19, !alias.scope !66
  %i.c = load ptr, ptr %1, align 8, !tbaa !11     ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, null
  %.neg.i.i = select i1 %.not.i.i, i64 0, i64 -40
  %i.d = getelementptr inbounds i8, ptr %i.c, i64 %.neg.i.i ; 9 uses
  %i.e = load i64, ptr %i.d, align 8, !tbaa !20
  %i.f = and i64 %i.e, -3                         ; 3 uses
  store i64 %i.f, ptr %i.d, align 8, !tbaa !20
  %i.g = getelementptr inbounds nuw i8, ptr %i.d, i64 24
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !39
  %.not.i = icmp eq ptr %i.h, null
  %i.i = getelementptr inbounds nuw i8, ptr %i.d, i64 16 ; 3 uses
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !54   ; 7 uses
  br i1 %.not.i, label %bb.c, label %._crit_edge

bb.c:                                             ; preds = %bb.b
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.thread, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.l = getelementptr inbounds nuw i8, ptr %i.j, i64 24
  %i.m = load i8, ptr %i.l, align 8, !tbaa !55
  %cond = icmp eq i8 %i.m, 0
  br i1 %cond, label %bb.e, label %.lr.ph.i.i

bb.e:                                             ; preds = %bb.d
  %i.n = icmp eq i64 %i.f, 0
  br i1 %i.n, label %bb.f, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

bb.f:                                             ; preds = %bb.e
  %i.o = getelementptr inbounds nuw i8, ptr %i.j, i64 8 ; 2 uses
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !49   ; 2 uses
  store ptr null, ptr %i.o, align 8, !tbaa !49
  store ptr %i.p, ptr %i.i, align 8, !tbaa !54
  store i64 1, ptr %i.d, align 8, !tbaa !20
  %i.q = getelementptr inbounds nuw i8, ptr %i.d, i64 8 ; 2 uses
  %i.r = load i64, ptr %i.q, align 8, !tbaa !38
  %i.s = add i64 %i.r, -1
  store i64 %i.s, ptr %i.q, align 8, !tbaa !38
  br label %._crit_edge

.lr.ph.i.i:                                       ; preds = %bb.d, %bb.j
  %.02953.i.i = phi ptr [ %i.aa, %bb.j ], [ %i.j, %bb.d ] ; 6 uses
  %.03152.i.i = phi ptr [ %.02953.i.i, %bb.j ], [ null, %bb.d ] ; 2 uses
  %.promoted55.i.i = phi i64 [ %storemerge.i.i, %bb.j ], [ %i.f, %bb.d ] ; 3 uses
  %i.t = getelementptr inbounds nuw i8, ptr %.02953.i.i, i64 24
  %i.u = load i8, ptr %i.t, align 8, !tbaa !55
  switch i8 %i.u, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i [
    i8 2, label %bb.g
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %.lr.ph.i.i
  %i.v = add i64 %.promoted55.i.i, 4
  br label %bb.j

bb.h:                                             ; preds = %.lr.ph.i.i
  %i.w = and i64 %.promoted55.i.i, 2
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %bb.i, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i

bb.i:                                             ; preds = %bb.h
  %i.y = or disjoint i64 %.promoted55.i.i, 2
  br label %bb.j

bb.j:                                             ; preds = %bb.i, %bb.g
  %storemerge.i.i = phi i64 [ %i.y, %bb.i ], [ %i.v, %bb.g ] ; 2 uses
  store i64 %storemerge.i.i, ptr %i.d, align 8, !tbaa !59
  %i.z = getelementptr inbounds nuw i8, ptr %.02953.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !60  ; 2 uses
  %.not.i.i4 = icmp eq ptr %i.aa, null
  br i1 %.not.i.i4, label %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i, label %.lr.ph.i.i, !llvm.loop !61

_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i: ; preds = %.lr.ph.i.i, %bb.h, %bb.j
  %.02947.i.i = phi ptr [ null, %bb.j ], [ %.02953.i.i, %bb.h ], [ %.02953.i.i, %.lr.ph.i.i ] ; 2 uses
  %.3.i.i = phi ptr [ %.02953.i.i, %bb.j ], [ %.03152.i.i, %bb.h ], [ %.03152.i.i, %.lr.ph.i.i ]
  %i.ab = getelementptr inbounds nuw i8, ptr %.3.i.i, i64 8
  store ptr null, ptr %i.ab, align 8, !tbaa !60
  store ptr %.02947.i.i, ptr %i.i, align 8, !tbaa !54
  br label %._crit_edge

._crit_edge:                                      ; preds = %bb.b, %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i, %bb.f
  %i.ac = phi ptr [ %.02947.i.i, %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i ], [ %i.p, %bb.f ], [ %i.j, %bb.b ]
  %.1.i = phi ptr [ %i.j, %_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE.exit.i ], [ %i.j, %bb.f ], [ null, %bb.b ] ; 2 uses
  %i.ad = icmp eq ptr %i.ac, null
  br i1 %i.ad, label %.thread, label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

.thread:                                          ; preds = %bb.c, %._crit_edge
  %.1.i9 = phi ptr [ %.1.i, %._crit_edge ], [ null, %bb.c ]
  %i.ae = getelementptr inbounds nuw i8, ptr %i.d, i64 16
  %i.af = getelementptr inbounds nuw i8, ptr %i.d, i64 32
  store ptr %i.ae, ptr %i.af, align 8, !tbaa !62
  br label %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit

_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit: ; preds = %bb.e, %.thread, %._crit_edge
  %.1.i8 = phi ptr [ %.1.i9, %.thread ], [ %.1.i, %._crit_edge ], [ null, %bb.e ]
  store atomic i8 0, ptr %i.c release, align 1
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #12
  br label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i

_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i: ; preds = %bb.k, %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit
  %.0.i = phi ptr [ %.1.i8, %_ZN5folly9LockedPtrINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEENS_6detail22SynchronizedLockPolicyILNS7_22SynchronizedMutexLevelE1ELNS7_23SynchronizedMutexMethodE0EEEED2Ev.exit ], [ %i.ah, %bb.k ] ; 3 uses
  %.not.i5 = icmp eq ptr %.0.i, null
  br i1 %.not.i5, label %_ZN5folly4coro15SharedMutexFair13resumeWaitersEPNS1_15LockAwaiterBaseE.exit, label %bb.k

bb.k:                                             ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i
  %i.ag = getelementptr inbounds nuw i8, ptr %.0.i, i64 8
  %i.ah = load ptr, ptr %i.ag, align 8, !tbaa !49
  %i.ai = getelementptr inbounds nuw i8, ptr %.0.i, i64 16
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !50 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8
  invoke fastcc void %i.ak(ptr nonnull %i.aj)
          to label %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i unwind label %bb.l, !llvm.loop !52, !inline_history !53

bb.l:                                             ; preds = %bb.k
  %i.al = landingpad { ptr, i32 }
          catch ptr null
  %i.am = extractvalue { ptr, i32 } %i.al, 0
  call void @__clang_call_terminate(ptr %i.am) #13
  unreachable

_ZN5folly4coro15SharedMutexFair13resumeWaitersEPNS1_15LockAwaiterBaseE.exit: ; preds = %_ZN5folly4coro15SharedMutexFair15LockAwaiterBase6resumeEv.exit.i
  ret void

bb.m:                                             ; preds = %bb.a
  %i.an = landingpad { ptr, i32 }
          catch ptr null
  %i.ao = extractvalue { ptr, i32 } %i.an, 0
  call void @__clang_call_terminate(ptr %i.ao) #13
  unreachable
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable
define noundef ptr @_ZN5folly4coro15SharedMutexFair22scanReadersAndUpgraderEPNS1_15LockAwaiterBaseERNS1_5StateENS1_8LockTypeE(ptr noundef %0, ptr noundef nonnull align 8 captures(none) dereferenceable(40) %1, i8 noundef zeroext %2) local_unnamed_addr #10 align 2 {
bb.a:
  %.promoted = load i64, ptr %1, align 8
  call void @llvm.assume(i1 true) [ "nonnull"(ptr %0) ]
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %bb.e
  %.02953 = phi ptr [ %i.h, %bb.e ], [ %0, %bb.a ] ; 9 uses
  %.03152 = phi ptr [ %.02953, %bb.e ], [ null, %bb.a ] ; 3 uses
  %.promoted55 = phi i64 [ %storemerge, %bb.e ], [ %.promoted, %bb.a ] ; 4 uses
  %i.a = getelementptr inbounds nuw i8, ptr %.02953, i64 24
  %i.b = load i8, ptr %i.a, align 8, !tbaa !55
  switch i8 %i.b, label %bb.f [
    i8 2, label %bb.b
    i8 1, label %bb.c
  ]

bb.b:                                             ; preds = %.lr.ph
  %i.c = add i64 %.promoted55, 4
  br label %bb.e

bb.c:                                             ; preds = %.lr.ph
  %i.d = and i64 %.promoted55, 2
  %i.e = icmp eq i64 %i.d, 0
  br i1 %i.e, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.f = or disjoint i64 %.promoted55, 2
  br label %bb.e

bb.e:                                             ; preds = %bb.d, %bb.b
  %storemerge = phi i64 [ %i.f, %bb.d ], [ %i.c, %bb.b ] ; 2 uses
  store i64 %storemerge, ptr %1, align 8, !tbaa !59
  %i.g = getelementptr inbounds nuw i8, ptr %.02953, i64 8
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !60   ; 2 uses
  %.not = icmp eq ptr %i.h, null
  br i1 %.not, label %.thread, label %.lr.ph, !llvm.loop !61

bb.f:                                             ; preds = %.lr.ph, %bb.c
  %i.i = icmp eq i8 %2, 0
  br i1 %i.i, label %.preheader, label %.thread

.preheader:                                       ; preds = %bb.f, %bb.i
  %i.j = phi i64 [ %i.x, %bb.i ], [ %.promoted55, %bb.f ] ; 2 uses
  %.132 = phi ptr [ %.233, %bb.i ], [ %.03152, %bb.f ] ; 3 uses
  %.130 = phi ptr [ %.2, %bb.i ], [ %.02953, %bb.f ] ; 7 uses
  %.0 = phi ptr [ %.1, %bb.i ], [ %.03152, %bb.f ] ; 3 uses
  %i.k = getelementptr inbounds nuw i8, ptr %.130, i64 24
  %i.l = load i8, ptr %i.k, align 8, !tbaa !55
  switch i8 %i.l, label %.thread [
    i8 2, label %bb.g
    i8 1, label %bb.h
  ]

bb.g:                                             ; preds = %.preheader
  %i.m = add i64 %i.j, 4                          ; 2 uses
  store i64 %i.m, ptr %1, align 8, !tbaa !59
  %i.n = getelementptr inbounds nuw i8, ptr %.130, i64 8 ; 2 uses
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !60
  %i.p = getelementptr inbounds nuw i8, ptr %.0, i64 8
  store ptr %i.o, ptr %i.p, align 8, !tbaa !60
  %i.q = getelementptr inbounds nuw i8, ptr %.132, i64 8
  store ptr %.130, ptr %i.q, align 8, !tbaa !60
  %i.r = load ptr, ptr %i.n, align 8, !tbaa !60   ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %.thread39, label %bb.i

.thread39:                                        ; preds = %bb.g
  %i.t = getelementptr inbounds nuw i8, ptr %.0, i64 8
  %i.u = getelementptr inbounds nuw i8, ptr %1, i64 32
  store ptr %i.t, ptr %i.u, align 8, !tbaa !62
  br label %.thread

bb.h:                                             ; preds = %.preheader
  %i.v = getelementptr inbounds nuw i8, ptr %.130, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !60
  br label %bb.i

bb.i:                                             ; preds = %bb.g, %bb.h
  %i.x = phi i64 [ %i.j, %bb.h ], [ %i.m, %bb.g ]
  %.233 = phi ptr [ %.132, %bb.h ], [ %.130, %bb.g ] ; 2 uses
  %.2 = phi ptr [ %i.w, %bb.h ], [ %i.r, %bb.g ]  ; 2 uses
  %.1 = phi ptr [ %.130, %bb.h ], [ %.0, %bb.g ]
  %.old1.not = icmp eq ptr %.2, null
  br i1 %.old1.not, label %.thread, label %.preheader

.thread:                                          ; preds = %bb.e, %.preheader, %bb.i, %.thread39, %bb.f
  %.02947 = phi ptr [ %.02953, %.thread39 ], [ %.02953, %.preheader ], [ %.02953, %bb.f ], [ %.02953, %bb.i ], [ null, %bb.e ]
  %.3 = phi ptr [ %.130, %.thread39 ], [ %.132, %.preheader ], [ %.03152, %bb.f ], [ %.233, %bb.i ], [ %.02953, %bb.e ]
  %i.y = getelementptr inbounds nuw i8, ptr %.3, i64 8
  store ptr null, ptr %i.y, align 8, !tbaa !60
  ret ptr %.02947
}

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb1EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #5 align 2

; Function Attrs: mustprogress uwtable
declare void @_ZN5folly15SharedMutexImplILb0EvSt6atomicNS_24SharedMutexPolicyDefaultEE25wakeRegisteredWaitersImplERjj(ptr noundef nonnull align 4 dereferenceable(4), ptr noundef nonnull align 4 dereferenceable(4), i32 noundef) #5 align 2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write)
declare void @llvm.assume(i1 noundef) #11

attributes #0 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #1 = { mustprogress nounwind uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #2 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #3 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #4 = { cold nofree noreturn }
attributes #5 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #6 = { noreturn "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #7 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #8 = { mustprogress nofree nosync nounwind willreturn memory(none) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #9 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind memory(readwrite, inaccessiblemem: write, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+avx,+avx2,+bmi2,+cmov,+crc32,+cx8,+f16c,+fma,+fxsr,+lzcnt,+mmx,+popcnt,+sse,+sse2,+sse3,+sse4.1,+sse4.2,+ssse3,+x87,+xsave" "tune-cpu"="generic" }
attributes #11 = { nocallback nofree nosync nounwind willreturn memory(inaccessiblemem: write) }
attributes #12 = { nounwind }
attributes #13 = { noreturn nounwind }
attributes #14 = { noreturn }
attributes #15 = { nounwind willreturn memory(none) }

!llvm.module.flags = !{!0, !1, !2, !3, !4, !5}
!llvm.ident = !{!6}
!llvm.errno.tbaa = !{!7}

!0 = !{i32 7, !"Dwarf Version", i32 5}
!1 = !{i32 2, !"Debug Info Version", i32 3}
!2 = !{i32 7, !"openmp", i32 51}
!3 = !{i32 8, !"PIC Level", i32 2}
!4 = !{i32 7, !"uwtable", i32 2}
!5 = !{i32 7, !"debug-info-assignment-tracking", i1 true}
!6 = !{!"Ubuntu clang version 23.0.0 (++20260326081736+e69c7312f31b-1~exp1~20260326081905.1542)"}
!7 = !{!8, !8, i64 0}
!8 = !{!"int", !9, i64 0}
!9 = !{!"omnipotent char", !10, i64 0}
!10 = !{!"Simple C++ TBAA"}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt11unique_lockIN5folly8SpinLockEE", !13, i64 0, !15, i64 8}
!13 = !{!"p1 _ZTSN5folly8SpinLockE", !14, i64 0}
!14 = !{!"any pointer", !9, i64 0}
!15 = !{!"bool", !9, i64 0}
!16 = !{!17}
!17 = distinct !{!17, !18, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv: argument 0"}
!18 = distinct !{!18, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv"}
!19 = !{!12, !15, i64 8}
!20 = !{!21, !22, i64 0}
!21 = !{!"_ZTSN5folly4coro15SharedMutexFair5StateE", !22, i64 0, !22, i64 8, !23, i64 16, !23, i64 24, !24, i64 32}
!22 = !{!"long", !9, i64 0}
!23 = !{!"p1 _ZTSN5folly4coro15SharedMutexFair15LockAwaiterBaseE", !14, i64 0}
!24 = !{!"p2 _ZTSN5folly4coro15SharedMutexFair15LockAwaiterBaseE", !25, i64 0}
!25 = !{!"any p2 pointer", !14, i64 0}
!26 = !{i8 0, i8 2}
!27 = !{}
!28 = !{i64 12369572}
!29 = !{!30, !22, i64 0}
!30 = !{!"_ZTS8timespec", !22, i64 0, !22, i64 8}
!31 = !{!30, !22, i64 8}
!32 = distinct !{!32, !33}
!33 = !{!"llvm.loop.mustprogress"}
!34 = distinct !{!34, !33}
!35 = !{!36}
!36 = distinct !{!36, !37, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv: argument 0"}
!37 = distinct !{!37, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv"}
!38 = !{!21, !22, i64 8}
!39 = !{!21, !23, i64 24}
!40 = !{!41}
!41 = distinct !{!41, !42, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv: argument 0"}
!42 = distinct !{!42, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv"}
!43 = !{!44}
!44 = distinct !{!44, !45, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv: argument 0"}
!45 = distinct !{!45, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv"}
!46 = !{!47}
!47 = distinct !{!47, !48, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv: argument 0"}
!48 = distinct !{!48, !"_ZN5folly16SynchronizedBaseINS_12SynchronizedINS_4coro15SharedMutexFair5StateENS_8SpinLockEEELNS_6detail22SynchronizedMutexLevelE1EE4lockEv"}
!49 = !{!23, !23, i64 0}
!50 = !{!51, !14, i64 0}
!51 = !{!"_ZTSNSt7__n486116coroutine_handleIvEE", !14, i64 0}
!52 = distinct !{!52, !33}
!53 = distinct !{null}
!54 = !{!21, !23, i64 16}
end_hunk_0
