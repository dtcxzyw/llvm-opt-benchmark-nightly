inline.NumInlined: 269
inline.NumDeleted: 179
begin_hunk_0_@_ZN2v88platform30DefaultWorkerThreadsTaskRunner12PostTaskImplESt10unique_ptrINS_4TaskESt14default_deleteIS3_EERKNS_14SourceLocationE:bb.a
bb.a:
  %3 = alloca %"class.std::unique_ptr.13", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !28, !noundef !29
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %1, align 8
  store i64 %i.f, ptr %3, align 8
  store ptr null, ptr %1, align 8
  call void @_ZN2v88platform16DelayedTaskQueue6AppendESt10unique_ptrINS_4TaskESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull %3) #13
  %i.g = load ptr, ptr %3, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #13, !inline_history !30
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #13
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.m, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, %bb.c, %bb.a
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  ret void
}

declare void @_ZN2v88platform16DelayedTaskQueue6AppendESt10unique_ptrINS_4TaskESt14default_deleteIS3_EE(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThread6NotifyEv(ptr noundef nonnull align 8 dereferenceable(64) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56
  tail call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform30DefaultWorkerThreadsTaskRunner19PostDelayedTaskImplESt10unique_ptrINS_4TaskESt14default_deleteIS3_EEdRKNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(304) %0, ptr nofree noundef captures(none) %1, double noundef %2, ptr nofree nonnull readnone align 8 captures(none) %3) unnamed_addr #0 align 2 {
bb.a:
  %4 = alloca %"class.std::unique_ptr.13", align 8 ; 3 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.c = load i8, ptr %i.b, align 8, !range !28, !noundef !29
  %i.d = trunc nuw i8 %i.c to i1
  br i1 %i.d, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.f = load i64, ptr %1, align 8
  store i64 %i.f, ptr %4, align 8
  store ptr null, ptr %1, align 8
  call void @_ZN2v88platform16DelayedTaskQueue13AppendDelayedESt10unique_ptrINS_4TaskESt14default_deleteIS3_EEd(ptr noundef nonnull align 8 dereferenceable(144) %i.e, ptr noundef nonnull %4, double noundef %2) #13
  %i.g = load ptr, ptr %4, align 8                ; 3 uses
  %.not.i = icmp eq ptr %i.g, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i: ; preds = %bb.b
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 8
  %i.j = load ptr, ptr %i.i, align 8
  call void %i.j(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.g) #13, !inline_history !30
  br label %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.b, %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.l = load ptr, ptr %i.k, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  %i.n = load ptr, ptr %i.m, align 8              ; 2 uses
  %i.o = icmp eq ptr %i.l, %i.n
  br i1 %i.o, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit, label %bb.c

bb.c:                                             ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit
  %i.p = getelementptr inbounds i8, ptr %i.n, i64 -8
  %i.q = load ptr, ptr %i.p, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 56
  call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.r) #13
  %i.s = load ptr, ptr %i.m, align 8
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  store ptr %i.t, ptr %i.m, align 8
  br label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZNSt10unique_ptrIN2v84TaskESt14default_deleteIS1_EED2Ev.exit, %bb.c, %bb.a
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  ret void
}

declare void @_ZN2v88platform16DelayedTaskQueue13AppendDelayedESt10unique_ptrINS_4TaskESt14default_deleteIS3_EEd(ptr noundef nonnull align 8 dereferenceable(144), ptr noundef, double noundef) local_unnamed_addr #1

; Function Attrs: mustprogress noreturn nounwind uwtable
define dso_local void @_ZN2v88platform30DefaultWorkerThreadsTaskRunner16PostIdleTaskImplESt10unique_ptrINS_8IdleTaskESt14default_deleteIS3_EERKNS_14SourceLocationE(ptr nofree nonnull readnone align 8 captures(none) %0, ptr nofree readnone captures(none) %1, ptr nofree nonnull readnone align 8 captures(none) %2) unnamed_addr #5 align 2 {
bb.a:
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str) #15
  unreachable
}

; Function Attrs: noreturn
declare void @_Z8V8_FatalPKcz(ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local noundef zeroext i1 @_ZN2v88platform30DefaultWorkerThreadsTaskRunner16IdleTasksEnabledEv(ptr nofree nonnull readnone align 8 captures(none) %0) unnamed_addr #7 align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadC2EPS1_NS_4base6Thread8PriorityE(ptr noundef nonnull align 8 dereferenceable(64) %0, ptr noundef %1, i32 noundef %2) unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"class.v8::base::Thread::Options", align 8 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #13
  store ptr @.str.1, ptr %3, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %3, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %3, i64 12
  store i32 0, ptr %i.b, align 4
  call void @_ZN2v84base6ThreadC2ERKNS1_7OptionsE(ptr noundef nonnull align 8 dereferenceable(48) %0, ptr noundef nonnull align 8 dereferenceable(16) %3) #13
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #13
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadE, i64 16), ptr %0, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store ptr %1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56
  call void @_ZN2v84base17ConditionVariableC1Ev(ptr noundef nonnull align 8 dereferenceable(8) %i.d) #13
  %i.e = call noundef zeroext i1 @_ZN2v84base6Thread5StartEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  br i1 %i.e, label %bb.c, label %bb.b, !prof !8

bb.b:                                             ; preds = %bb.a
  call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3) #15
  unreachable

bb.c:                                             ; preds = %bb.a
  ret void
}

declare void @_ZN2v84base6ThreadC2ERKNS1_7OptionsE(ptr noundef nonnull align 8 dereferenceable(48), ptr noundef nonnull align 8 dereferenceable(16)) unnamed_addr #1

declare void @_ZN2v84base17ConditionVariableC1Ev(ptr noundef nonnull align 8 dereferenceable(8)) unnamed_addr #1

declare noundef zeroext i1 @_ZN2v84base6Thread5StartEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadD2Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13
  tail call void @_ZN2v84base6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(48) %0) #13
  tail call void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #13
  tail call void @_ZN2v84base6ThreadD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48) %0) #13
  ret void
}

declare void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(48)) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8)) unnamed_addr #3

; Function Attrs: nounwind
declare void @_ZN2v84base6ThreadD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(48)) unnamed_addr #3

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadD0Ev(ptr noundef nonnull align 8 dereferenceable(64) initializes((0, 8)) %0) unnamed_addr #0 align 2 {
bb.a:
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadE, i64 16), ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  tail call void @_ZN2v84base17ConditionVariable9NotifyAllEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a) #13, !inline_history !31
  tail call void @_ZN2v84base6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(64) %0) #13, !inline_history !31
  tail call void @_ZN2v84base17ConditionVariableD1Ev(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.a) #13, !inline_history !31
  tail call void @_ZN2v84base6ThreadD2Ev(ptr noundef nonnull align 8 dead_on_return(48) dereferenceable(64) %0) #13, !inline_history !31
  tail call void @_ZdlPvm(ptr noundef nonnull %0, i64 noundef 64) #16
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define dso_local void @_ZN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThread3RunEv(ptr noundef nonnull align 8 dereferenceable(64) %0) unnamed_addr #0 align 2 {
bb.a:
  %1 = alloca %"struct.v8::platform::DelayedTaskQueue::MaybeNextTask", align 8 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 8 uses
  %i.b = load ptr, ptr %i.a, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 16 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.backedge

.backedge:                                        ; preds = %.backedge.backedge, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #13
  %i.g = load ptr, ptr %i.a, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.g, i64 72
  call void @_ZN2v88platform16DelayedTaskQueue10TryGetNextEv(ptr dead_on_unwind nonnull writable sret(%"struct.v8::platform::DelayedTaskQueue::MaybeNextTask") align 8 %1, ptr noundef nonnull align 8 dereferenceable(144) %i.h) #13
  %i.i = load i32, ptr %1, align 8
  switch i32 %i.i, label %bb.o [
    i32 0, label %bb.b
    i32 3, label %bb.p
    i32 1, label %bb.c
    i32 2, label %bb.i
  ]

bb.b:                                             ; preds = %.backedge
  %i.j = load ptr, ptr %i.a, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 16
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.k) #13
  %i.l = load ptr, ptr %i.f, align 8              ; 2 uses
  %i.m = load ptr, ptr %i.l, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.m, i64 16
  %i.o = load ptr, ptr %i.n, align 8
  call void %i.o(ptr noundef nonnull align 8 dereferenceable(8) %i.l) #13
  %i.p = load ptr, ptr %i.a, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 16
  call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.q) #13
  br label %bb.p, !llvm.loop !32

bb.c:                                             ; preds = %.backedge
  %i.r = load ptr, ptr %i.a, align 8              ; 3 uses
  %i.s = getelementptr inbounds nuw i8, ptr %i.r, i64 24 ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %i.r, i64 32 ; 4 uses
  %i.u = load ptr, ptr %i.t, align 8              ; 3 uses
  %i.v = getelementptr inbounds nuw i8, ptr %i.r, i64 40 ; 2 uses
  %i.w = load ptr, ptr %i.v, align 8
  %.not.i.i = icmp eq ptr %i.u, %i.w
  br i1 %.not.i.i, label %bb.e, label %bb.d

bb.d:                                             ; preds = %bb.c
  store ptr %0, ptr %i.u, align 8
  %i.x = load ptr, ptr %i.t, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.x, i64 8
  store ptr %i.y, ptr %i.t, align 8
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit

bb.e:                                             ; preds = %bb.c
  %i.z = load ptr, ptr %i.s, align 8              ; 4 uses
  %i.aa = ptrtoint ptr %i.u to i64
  %i.ab = ptrtoint ptr %i.z to i64
  %i.ac = sub i64 %i.aa, %i.ab                    ; 6 uses
  %i.ad = icmp eq i64 %i.ac, 9223372036854775800
  br i1 %i.ad, label %bb.f, label %_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i

bb.f:                                             ; preds = %bb.e
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i: ; preds = %bb.e
  %i.ae = ashr exact i64 %i.ac, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i = call i64 @llvm.umax.i64(i64 %i.ae, i64 1)
  %i.af = add nsw i64 %.sroa.speculated.i.i.i.i, %i.ae ; 2 uses
  %i.ag = icmp ult i64 %i.af, %i.ae
  %i.ah = call i64 @llvm.umin.i64(i64 %i.af, i64 1152921504606846975)
  %i.ai = select i1 %i.ag, i64 1152921504606846975, i64 %i.ah ; 3 uses
  %.not.i.i.i.i = icmp ne i64 %i.ai, 0
  call void @llvm.assume(i1 %.not.i.i.i.i)
  %i.aj = shl nuw nsw i64 %i.ai, 3
  %i.ak = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.aj) #14 ; 4 uses
  %i.al = getelementptr inbounds i8, ptr %i.ak, i64 %i.ac ; 2 uses
  store ptr %0, ptr %i.al, align 8
  %i.am = icmp sgt i64 %i.ac, 0
  br i1 %i.am, label %bb.g, label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

bb.g:                                             ; preds = %_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.ak, ptr align 8 %i.z, i64 %i.ac, i1 false)
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i

_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i: ; preds = %bb.g, %_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %i.al, i64 8
  %.not.i17.i.i.i = icmp eq ptr %i.z, null
  br i1 %.not.i17.i.i.i, label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i, label %bb.h

bb.h:                                             ; preds = %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  call void @_ZdlPvm(ptr noundef nonnull %i.z, i64 noundef %i.ac) #16
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i

_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i: ; preds = %bb.h, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i
  store ptr %i.ak, ptr %i.s, align 8
  store ptr %i.an, ptr %i.t, align 8
  %i.ao = getelementptr inbounds nuw [8 x i8], ptr %i.ak, i64 %i.ai
  store ptr %i.ao, ptr %i.v, align 8
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit

_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit: ; preds = %bb.d, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i
  %i.ap = load ptr, ptr %i.a, align 8
  %i.aq = getelementptr inbounds nuw i8, ptr %i.ap, i64 16
  call void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.aq) #13
  br label %bb.p, !llvm.loop !32

bb.i:                                             ; preds = %.backedge
  %i.ar = load ptr, ptr %i.a, align 8             ; 3 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 24 ; 2 uses
  %i.at = getelementptr inbounds nuw i8, ptr %i.ar, i64 32 ; 4 uses
  %i.au = load ptr, ptr %i.at, align 8            ; 3 uses
  %i.av = getelementptr inbounds nuw i8, ptr %i.ar, i64 40 ; 2 uses
  %i.aw = load ptr, ptr %i.av, align 8
  %.not.i.i1 = icmp eq ptr %i.au, %i.aw
  br i1 %.not.i.i1, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  store ptr %0, ptr %i.au, align 8
  %i.ax = load ptr, ptr %i.at, align 8
  %i.ay = getelementptr inbounds nuw i8, ptr %i.ax, i64 8
  store ptr %i.ay, ptr %i.at, align 8
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit8

bb.k:                                             ; preds = %bb.i
  %i.az = load ptr, ptr %i.as, align 8            ; 4 uses
  %i.ba = ptrtoint ptr %i.au to i64
  %i.bb = ptrtoint ptr %i.az to i64
  %i.bc = sub i64 %i.ba, %i.bb                    ; 6 uses
  %i.bd = icmp eq i64 %i.bc, 9223372036854775800
  br i1 %i.bd, label %bb.l, label %_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i2

bb.l:                                             ; preds = %bb.k
  call void @_ZSt20__throw_length_errorPKc(ptr noundef nonnull @.str.4) #15
  unreachable

_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i2: ; preds = %bb.k
  %i.be = ashr exact i64 %i.bc, 3                 ; 3 uses
  %.sroa.speculated.i.i.i.i3 = call i64 @llvm.umax.i64(i64 %i.be, i64 1)
  %i.bf = add nsw i64 %.sroa.speculated.i.i.i.i3, %i.be ; 2 uses
  %i.bg = icmp ult i64 %i.bf, %i.be
  %i.bh = call i64 @llvm.umin.i64(i64 %i.bf, i64 1152921504606846975)
  %i.bi = select i1 %i.bg, i64 1152921504606846975, i64 %i.bh ; 3 uses
  %.not.i.i.i.i4 = icmp ne i64 %i.bi, 0
  call void @llvm.assume(i1 %.not.i.i.i.i4)
  %i.bj = shl nuw nsw i64 %i.bi, 3
  %i.bk = call noalias noundef nonnull ptr @_Znwm(i64 noundef %i.bj) #14 ; 4 uses
  %i.bl = getelementptr inbounds i8, ptr %i.bk, i64 %i.bc ; 2 uses
  store ptr %0, ptr %i.bl, align 8
  %i.bm = icmp sgt i64 %i.bc, 0
  br i1 %i.bm, label %bb.m, label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i5

bb.m:                                             ; preds = %_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i2
  call void @llvm.memmove.p0.p0.i64(ptr nonnull align 8 %i.bk, ptr align 8 %i.az, i64 %i.bc, i1 false)
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i5

_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i5: ; preds = %bb.m, %_ZNKSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE12_M_check_lenEmPKc.exit.i.i.i2
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bl, i64 8
  %.not.i17.i.i.i6 = icmp eq ptr %i.az, null
  br i1 %.not.i17.i.i.i6, label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i7, label %bb.n

bb.n:                                             ; preds = %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i5
  call void @_ZdlPvm(ptr noundef nonnull %i.az, i64 noundef %i.bc) #16
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i7

_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i7: ; preds = %bb.n, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE11_S_relocateEPS4_S7_S7_RS5_.exit16.i.i.i5
  store ptr %i.bk, ptr %i.as, align 8
  store ptr %i.bn, ptr %i.at, align 8
  %i.bo = getelementptr inbounds nuw [8 x i8], ptr %i.bk, i64 %i.bi
  store ptr %i.bo, ptr %i.av, align 8
  br label %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit8

_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit8: ; preds = %bb.j, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE17_M_realloc_insertIJS4_EEEvN9__gnu_cxx17__normal_iteratorIPS4_S6_EEDpOT_.exit.i.i7
  %i.bp = load ptr, ptr %i.a, align 8
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bp, i64 16
  %i.br = call noundef zeroext i1 @_ZN2v84base17ConditionVariable7WaitForEPNS0_5MutexERKNS0_9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(8) %i.d, ptr noundef nonnull %i.bq, ptr noundef nonnull align 8 dereferenceable(8) %i.e) #13 ; 0 uses
  br label %bb.p

bb.o:                                             ; preds = %.backedge
  br label %bb.p

bb.p:                                             ; preds = %.backedge, %bb.o, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit8, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit, %bb.b
  %.0 = phi i32 [ 0, %bb.o ], [ 2, %bb.b ], [ 2, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit8 ], [ 2, %_ZNSt6vectorIPN2v88platform30DefaultWorkerThreadsTaskRunner12WorkerThreadESaIS4_EE9push_backEOS4_.exit ], [ 1, %.backedge ]
  %i.bs = load ptr, ptr %i.f, align 8             ; 3 uses
  %.not.i.i9 = icmp eq ptr %i.bs, null
  br i1 %.not.i.i9, label %_ZN2v88platform16DelayedTaskQueue13MaybeNextTaskD2Ev.exit, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i: ; preds = %bb.p
  %i.bt = load ptr, ptr %i.bs, align 8
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bt, i64 8
  %i.bv = load ptr, ptr %i.bu, align 8
  call void %i.bv(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.bs) #13, !inline_history !33
  br label %_ZN2v88platform16DelayedTaskQueue13MaybeNextTaskD2Ev.exit

_ZN2v88platform16DelayedTaskQueue13MaybeNextTaskD2Ev.exit: ; preds = %bb.p, %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #13
  switch i32 %.0, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit [
    i32 0, label %.backedge.backedge
    i32 2, label %.backedge.backedge
  ]

.backedge.backedge:                               ; preds = %_ZN2v88platform16DelayedTaskQueue13MaybeNextTaskD2Ev.exit, %_ZN2v88platform16DelayedTaskQueue13MaybeNextTaskD2Ev.exit
  br label %.backedge, !llvm.loop !32

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit:      ; preds = %_ZN2v88platform16DelayedTaskQueue13MaybeNextTaskD2Ev.exit
  call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c) #13
  ret void
}

declare void @_ZN2v88platform16DelayedTaskQueue10TryGetNextEv(ptr dead_on_unwind writable sret(%"struct.v8::platform::DelayedTaskQueue::MaybeNextTask") align 8, ptr noundef nonnull align 8 dereferenceable(144)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

declare void @_ZN2v84base17ConditionVariable4WaitEPNS0_5MutexE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef) local_unnamed_addr #1

declare noundef zeroext i1 @_ZN2v84base17ConditionVariable7WaitForEPNS0_5MutexERKNS0_9TimeDeltaE(ptr noundef nonnull align 8 dereferenceable(8), ptr noundef, ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #1

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v810TaskRunner23NonNestableTasksEnabledEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden noundef zeroext i1 @_ZNK2v810TaskRunner30NonNestableDelayedTasksEnabledEv(ptr noundef nonnull align 8 dereferenceable(8) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  ret i1 false
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v810TaskRunner23PostNonNestableTaskImplESt10unique_ptrINS_4TaskESt14default_deleteIS2_EERKNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef nonnull align 8 dereferenceable(8) %2) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZN2v810TaskRunner30PostNonNestableDelayedTaskImplESt10unique_ptrINS_4TaskESt14default_deleteIS2_EEdRKNS_14SourceLocationE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, double noundef %2, ptr noundef nonnull align 8 dereferenceable(8) %3) unnamed_addr #0 comdat align 2 {
bb.a:
  ret void
}

; Function Attrs: noreturn
declare void @_ZSt20__throw_length_errorPKc(ptr noundef) local_unnamed_addr #6

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #8

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr hidden void @_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EED2Ev(ptr noundef nonnull align 8 dereferenceable(80) %0) unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !noalias !34 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.d = load ptr, ptr %i.c, align 8, !noalias !34 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 40 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !noalias !34 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 48
  %i.h = load ptr, ptr %i.g, align 8, !noalias !37 ; 4 uses
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 56
  %i.j = load ptr, ptr %i.i, align 8, !noalias !37 ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 72 ; 2 uses
  %i.l = load ptr, ptr %i.k, align 8, !noalias !37 ; 3 uses
  %.030.i.i = getelementptr inbounds nuw i8, ptr %i.f, i64 8 ; 2 uses
  %i.m = icmp ult ptr %.030.i.i, %i.l
  br i1 %i.m, label %.lr.ph.i.i, label %._crit_edge.i.i

._crit_edge.i.i:                                  ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit.i.i, %bb.a
  %.not.i.i = icmp eq ptr %i.f, %i.l
  br i1 %.not.i.i, label %bb.c, label %bb.b

.lr.ph.i.i:                                       ; preds = %bb.a, %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit.i.i
  %.031.i.i = phi ptr [ %.0.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit.i.i ], [ %.030.i.i, %bb.a ] ; 2 uses
  %i.n = load ptr, ptr %.031.i.i, align 8
  br label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, %.lr.ph.i.i
  %.05.i.i.idx.i.i = phi i64 [ %.05.i.i.add.i.i, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i ], [ 0, %.lr.ph.i.i ] ; 2 uses
  %.05.i.i.ptr.i.i = getelementptr inbounds nuw i8, ptr %i.n, i64 %.05.i.i.idx.i.i
  %i.o = load ptr, ptr %.05.i.i.ptr.i.i, align 8  ; 3 uses
  %.not.i.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i.i.i: ; preds = %.lr.ph.i.i.i.i
  %i.p = load ptr, ptr %i.o, align 8
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  tail call void %i.r(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.o) #13, !inline_history !40
  br label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i

_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i.i.i, %.lr.ph.i.i.i.i
  %.05.i.i.add.i.i = add nuw nsw i64 %.05.i.i.idx.i.i, 8 ; 2 uses
  %.not.i.i.i.i = icmp eq i64 %.05.i.i.add.i.i, 512
  br i1 %.not.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit.i.i, label %.lr.ph.i.i.i.i, !llvm.loop !41

_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i.i.i
  %.0.i.i = getelementptr inbounds nuw i8, ptr %.031.i.i, i64 8 ; 2 uses
  %i.s = icmp ult ptr %.0.i.i, %i.l
  br i1 %i.s, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !42

bb.b:                                             ; preds = %._crit_edge.i.i
  %.not4.i.i.i.i = icmp eq ptr %i.b, %i.d
  br i1 %.not4.i.i.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit12.i.i, label %.lr.ph.i.i6.i.i

.lr.ph.i.i6.i.i:                                  ; preds = %bb.b, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i10.i.i
  %.05.i.i7.i.i = phi ptr [ %i.x, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i10.i.i ], [ %i.b, %bb.b ] ; 2 uses
  %i.t = load ptr, ptr %.05.i.i7.i.i, align 8     ; 3 uses
  %.not.i.i.i.i.i8.i.i = icmp eq ptr %i.t, null
  br i1 %.not.i.i.i.i.i8.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i10.i.i, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i9.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i9.i.i: ; preds = %.lr.ph.i.i6.i.i
  %i.u = load ptr, ptr %i.t, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8
  tail call void %i.w(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.t) #13, !inline_history !40
  br label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i10.i.i

_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i10.i.i: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i9.i.i, %.lr.ph.i.i6.i.i
  %i.x = getelementptr inbounds nuw i8, ptr %.05.i.i7.i.i, i64 8 ; 2 uses
  %.not.i.i11.i.i = icmp eq ptr %i.x, %i.d
  br i1 %.not.i.i11.i.i, label %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit12.i.i, label %.lr.ph.i.i6.i.i, !llvm.loop !41

_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit12.i.i: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i10.i.i, %bb.b
  %.not4.i.i13.i.i = icmp eq ptr %i.j, %i.h
  br i1 %.not4.i.i13.i.i, label %_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_.exit, label %.lr.ph.i.i14.i.i

.lr.ph.i.i14.i.i:                                 ; preds = %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit12.i.i, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i18.i.i
  %.05.i.i15.i.i = phi ptr [ %i.ac, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i18.i.i ], [ %i.j, %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit12.i.i ] ; 2 uses
  %i.y = load ptr, ptr %.05.i.i15.i.i, align 8    ; 3 uses
  %.not.i.i.i.i.i16.i.i = icmp eq ptr %i.y, null
  br i1 %.not.i.i.i.i.i16.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i18.i.i, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i17.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i17.i.i: ; preds = %.lr.ph.i.i14.i.i
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.z, i64 8
  %i.ab = load ptr, ptr %i.aa, align 8
  tail call void %i.ab(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.y) #13, !inline_history !40
  br label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i18.i.i

_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i18.i.i: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i17.i.i, %.lr.ph.i.i14.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.05.i.i15.i.i, i64 8 ; 2 uses
  %.not.i.i19.i.i = icmp eq ptr %i.ac, %i.h
  br i1 %.not.i.i19.i.i, label %_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_.exit, label %.lr.ph.i.i14.i.i, !llvm.loop !41

bb.c:                                             ; preds = %._crit_edge.i.i
  %.not4.i.i21.i.i = icmp eq ptr %i.b, %i.h
  br i1 %.not4.i.i21.i.i, label %_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_.exit, label %.lr.ph.i.i22.i.i

.lr.ph.i.i22.i.i:                                 ; preds = %bb.c, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i26.i.i
  %.05.i.i23.i.i = phi ptr [ %i.ah, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i26.i.i ], [ %i.b, %bb.c ] ; 2 uses
  %i.ad = load ptr, ptr %.05.i.i23.i.i, align 8   ; 3 uses
  %.not.i.i.i.i.i24.i.i = icmp eq ptr %i.ad, null
  br i1 %.not.i.i.i.i.i24.i.i, label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i26.i.i, label %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i25.i.i

_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i25.i.i: ; preds = %.lr.ph.i.i22.i.i
  %i.ae = load ptr, ptr %i.ad, align 8
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 8
  %i.ag = load ptr, ptr %i.af, align 8
  tail call void %i.ag(ptr noundef nonnull align 8 dead_on_return(8) dereferenceable(8) %i.ad) #13, !inline_history !40
  br label %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i26.i.i

_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i26.i.i: ; preds = %_ZNKSt14default_deleteIN2v84TaskEEclEPS1_.exit.i.i.i.i.i25.i.i, %.lr.ph.i.i22.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %.05.i.i23.i.i, i64 8 ; 2 uses
  %.not.i.i27.i.i = icmp eq ptr %i.ah, %i.h
  br i1 %.not.i.i27.i.i, label %_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_.exit, label %.lr.ph.i.i22.i.i, !llvm.loop !41

_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_.exit: ; preds = %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i18.i.i, %_ZSt8_DestroyISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvPT_.exit.i.i26.i.i, %_ZSt8_DestroyIPSt10unique_ptrIN2v84TaskESt14default_deleteIS2_EEEvT_S7_.exit12.i.i, %bb.c
  %i.ai = load ptr, ptr %0, align 8               ; 2 uses
  %.not.i = icmp eq ptr %i.ai, null
  br i1 %.not.i, label %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EED2Ev.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_.exit
  %i.aj = load ptr, ptr %i.e, align 8             ; 2 uses
  %i.ak = load ptr, ptr %i.k, align 8             ; 2 uses
  %i.al = getelementptr inbounds nuw i8, ptr %i.ak, i64 8
  %i.am = icmp ult ptr %i.aj, %i.al
  br i1 %i.am, label %.lr.ph.i.i1, label %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

.lr.ph.i.i1:                                      ; preds = %bb.d, %.lr.ph.i.i1
  %.06.i.i = phi ptr [ %i.ao, %.lr.ph.i.i1 ], [ %i.aj, %bb.d ] ; 3 uses
  %i.an = load ptr, ptr %.06.i.i, align 8
  tail call void @_ZdlPvm(ptr noundef %i.an, i64 noundef 512) #16
  %i.ao = getelementptr inbounds nuw i8, ptr %.06.i.i, i64 8
  %i.ap = icmp ult ptr %.06.i.i, %i.ak
  br i1 %i.ap, label %.lr.ph.i.i1, label %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i, !llvm.loop !43

_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i: ; preds = %.lr.ph.i.i1
  %.pre.i = load ptr, ptr %0, align 8
  br label %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i

_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i: ; preds = %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i, %bb.d
  %i.aq = phi ptr [ %.pre.i, %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.loopexit.i ], [ %i.ai, %bb.d ]
  %i.ar = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.as = load i64, ptr %i.ar, align 8
  %i.at = shl i64 %i.as, 3
  tail call void @_ZdlPvm(ptr noundef %i.aq, i64 noundef %i.at) #16
  br label %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EED2Ev.exit

_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EED2Ev.exit: ; preds = %_ZNSt5dequeISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE15_M_destroy_dataESt15_Deque_iteratorIS5_RS5_PS5_ESB_RKS6_.exit, %_ZNSt11_Deque_baseISt10unique_ptrIN2v84TaskESt14default_deleteIS2_EESaIS5_EE16_M_destroy_nodesEPPS5_S9_.exit.i
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: readwrite)
declare void @llvm.memmove.p0.p0.i64(ptr writeonly captures(none), ptr readonly captures(none), i64, i1 immarg) #2

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
end_hunk_0
