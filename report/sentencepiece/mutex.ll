Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/sentencepiece/original/mutex?download=true
inline.NumInlined: 284
inline.NumDeleted: 115
begin_hunk_0_@_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_:bb.a
  %i.ac = icmp eq ptr %i.z, %i.ab
  br i1 %i.ac, label %bb.g, label %_ZN4absl12lts_202605269Condition15GuaranteedEqualEPKS1_S3_.exit

bb.g:                                             ; preds = %bb.f
  %i.ad = load i128, ptr %i.n, align 1
  %i.ae = load i128, ptr %i.p, align 1
  %i.af = icmp ne i128 %i.ad, %i.ae
  %i.ag = zext i1 %i.af to i32
  %.not.i = icmp eq i32 %i.ag, 0
  br label %_ZN4absl12lts_202605269Condition15GuaranteedEqualEPKS1_S3_.exit

_ZN4absl12lts_202605269Condition15GuaranteedEqualEPKS1_S3_.exit: ; preds = %bb.g, %bb.f, %bb.e, %bb.d, %bb.b, %bb.a
  %i.ah = phi i1 [ false, %bb.b ], [ false, %bb.a ], [ %i.s, %bb.d ], [ false, %bb.f ], [ false, %bb.e ], [ %.not.i, %bb.g ]
  ret i1 %i.ah
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %0) unnamed_addr #7 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !69, !range !47, !noundef !48
  %i.b = trunc nuw i8 %i.a to i1
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard18EnableReschedulingEb.exit

bb.b:                                             ; preds = %bb.a
  %i.c = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc unwind label %bb.c

.noexc:                                           ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 76 ; 2 uses
  %i.e = load atomic i32, ptr %i.d monotonic, align 4
  %i.f = add nsw i32 %i.e, -1
  store atomic i32 %i.f, ptr %i.d monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard18EnableReschedulingEb.exit

_ZN4absl12lts_2026052613base_internal15SchedulingGuard18EnableReschedulingEb.exit: ; preds = %.noexc, %bb.a
  ret void

bb.c:                                             ; preds = %bb.b
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #24
  unreachable
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0, ptr nofree noundef captures(address) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.absl::lts_20260526::base_internal::SchedulingGuard::ScopedEnable", align 4 ; 6 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 28 ; 2 uses
  %i.b = load atomic i32, ptr %i.a acquire, align 4
  %i.c = icmp eq i32 %i.b, 1
  br i1 %i.c, label %.lr.ph17, label %._crit_edge18

.lr.ph17:                                         ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  br label %bb.b

bb.b:                                             ; preds = %.lr.ph17, %bb.r
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !52
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 16
  %.sroa.01.0.copyload = load i64, ptr %i.f, align 8, !tbaa !42
  %i.g = tail call noundef zeroext i1 @AbslInternalPerThreadSemWait_lts_20260526(i64 %.sroa.01.0.copyload)
  br i1 %i.g, label %bb.r, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @_ZN4absl12lts_202605265Mutex9TryRemoveEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  %i.h = load ptr, ptr %1, align 8, !tbaa !51
  %.not1314 = icmp eq ptr %i.h, null
  br i1 %.not1314, label %._crit_edge, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit
  %.015 = phi i32 [ %.1.i, %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit ], [ 0, %bb.c ] ; 4 uses
  %i.i = load atomic i32, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE acquire, align 64
  %.not.i.i.i = icmp eq i32 %i.i, 221
  br i1 %.not.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %.lr.ph
  tail call fastcc void @"_ZN4absl12lts_2026052613base_internal12CallOnceImplIZNS0_12_GLOBAL__N_115GetMutexGlobalsEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i

_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i: ; preds = %bb.d, %.lr.ph
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 12), align 4, !tbaa !15 ; 2 uses
  %i.k = load atomic i32, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE acquire, align 64
  %.not.i.i15.i = icmp eq i32 %i.k, 221
  br i1 %.not.i.i15.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i
  tail call fastcc void @"_ZN4absl12lts_2026052613base_internal12CallOnceImplIZNS0_12_GLOBAL__N_115GetMutexGlobalsEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i

_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i: ; preds = %bb.e, %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i
  %.sroa.03.0.copyload.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 16), align 16, !tbaa !15
  %.sroa.5.0.copyload.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 24), align 8, !tbaa !15
  %i.l = icmp slt i32 %.015, %i.j
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i
  %i.m = add nsw i32 %.015, 1
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit

bb.g:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.n = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 76 ; 2 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4 ; 3 uses
  store i32 %i.p, ptr %2, align 4, !tbaa !17
  %.not4.i.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i.i, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i32 0, ptr %i.o monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i

bb.j:                                             ; preds = %bb.g
  store i32 0, ptr %2, align 4, !tbaa !17
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i

_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.q = phi i32 [ 0, %bb.h ], [ %i.p, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %i.r = icmp eq i32 %.015, %i.j
  br i1 %i.r, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i
  invoke void @AbslInternalMutexYield_lts_20260526()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %.015, 1
  br label %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %i.t

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i
  invoke void @AbslInternalSleepFor_lts_20260526(i64 %.sroa.03.0.copyload.i, i32 %.sroa.5.0.copyload.i)
          to label %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i unwind label %bb.m

_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i: ; preds = %bb.n, %bb.l
  %.0.i = phi i32 [ %i.s, %bb.l ], [ 0, %bb.n ]
  %i.u = icmp eq i32 %i.q, 0
  br i1 %i.u, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i
  %i.v = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  store atomic i32 %i.q, ptr %i.w monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i

bb.q:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable

_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i: ; preds = %bb.p, %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit

_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit: ; preds = %bb.f, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i
  %.1.i = phi i32 [ %i.m, %bb.f ], [ %.0.i, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i ]
  tail call void @_ZN4absl12lts_202605265Mutex9TryRemoveEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1)
  %i.z = load ptr, ptr %1, align 8, !tbaa !51
  %.not13 = icmp eq ptr %i.z, null
  br i1 %.not13, label %._crit_edge, label %.lr.ph, !llvm.loop !110

._crit_edge:                                      ; preds = %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit, %bb.c
  %i.aa = load ptr, ptr %i.d, align 8, !tbaa !52  ; 2 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 16
  store i64 -1, ptr %i.ab, align 8, !tbaa !42
  %i.ac = getelementptr inbounds nuw i8, ptr %i.aa, i64 8
  store ptr null, ptr %i.ac, align 8, !tbaa !61
  br label %bb.r

bb.r:                                             ; preds = %._crit_edge, %bb.b
  %i.ad = load atomic i32, ptr %i.a acquire, align 4
  %i.ae = icmp eq i32 %i.ad, 1
  br i1 %i.ae, label %bb.b, label %._crit_edge18, !llvm.loop !111

._crit_edge18:                                    ; preds = %bb.r, %bb.a
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !52
  %.not = icmp eq ptr %i.ag, null
  br i1 %.not, label %bb.s, label %.critedge

bb.s:                                             ; preds = %._crit_edge18
  %i.ah = getelementptr inbounds nuw i8, ptr %1, i64 20
  %i.ai = load i8, ptr %i.ah, align 4, !tbaa !70, !range !47, !noundef !48
  %3 = trunc nuw i8 %i.ai to i1
  br i1 %3, label %.critedge, label %bb.t, !prof !14

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 1202, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2, ptr noundef nonnull @.str.3)
  unreachable

.critedge:                                        ; preds = %._crit_edge18, %bb.s
  store ptr null, ptr %i.af, align 8, !tbaa !52
  ret void
}

declare void @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: mustprogress uwtable
define dso_local noundef ptr @_ZN4absl12lts_202605265Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %1, align 8, !tbaa !51
  store ptr null, ptr %1, align 8, !tbaa !51
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 28
  store atomic i32 0, ptr %i.b release, align 4
  tail call void @AbslInternalPerThreadSemPost_lts_20260526(ptr noundef nonnull %1)
  ret ptr %i.a
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex18ForgetDeadlockInfoEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable
define dso_local void @_ZNK4absl12lts_202605265Mutex13AssertNotHeldEv(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #8 align 2 {
bb.a:
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex4lockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, 25
  %.not = icmp eq i64 %i.b, 0
  br i1 %.not, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b, !prof !14

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.c = or disjoint i64 %i.a, 8
  %i.d = cmpxchg ptr %0, i64 %i.a, i64 %i.c acquire monotonic, align 8
  %i.e = extractvalue { i64, i1 } %i.d, 1
  br i1 %i.e, label %_ZN4absl12lts_20260526L22TryAcquireWithSpinningEPSt6atomicIlE.exit, label %bb.b, !prof !14

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  %i.f = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 4) monotonic, align 4
  br label %bb.c

bb.c:                                             ; preds = %bb.e, %bb.b
  %.04.i = phi i32 [ %i.f, %bb.b ], [ %i.n, %bb.e ] ; 2 uses
  %i.g = load atomic i64, ptr %0 monotonic, align 8 ; 4 uses
  %i.h = and i64 %i.g, 17
  %.not.i = icmp eq i64 %i.h, 0
  br i1 %.not.i, label %bb.d, label %bb.f, !prof !113

bb.d:                                             ; preds = %bb.c
  %i.i = and i64 %i.g, 8
  %i.j = icmp eq i64 %i.i, 0
  br i1 %i.j, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, label %bb.e

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %bb.d
  %i.k = or disjoint i64 %i.g, 8
  %i.l = cmpxchg ptr %0, i64 %i.g, i64 %i.k acquire monotonic, align 8
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %_ZN4absl12lts_20260526L22TryAcquireWithSpinningEPSt6atomicIlE.exit, label %bb.e

bb.e:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.d
  %i.n = add nsw i32 %.04.i, -1
  %i.o = icmp sgt i32 %.04.i, 1
  br i1 %i.o, label %bb.c, label %bb.f, !prof !113, !llvm.loop !112

bb.f:                                             ; preds = %bb.e, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex8LockSlowEPKNS0_6MuHowSEPKNS0_9ConditionEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN4absl12lts_20260526L11kExclusiveSE, ptr noundef null, i32 noundef 0) #25
  br label %_ZN4absl12lts_20260526L22TryAcquireWithSpinningEPSt6atomicIlE.exit

_ZN4absl12lts_20260526L22TryAcquireWithSpinningEPSt6atomicIlE.exit: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.f, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  ret void
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex8LockSlowEPKNS0_6MuHowSEPKNS0_9ConditionEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i32 noundef %3) local_unnamed_addr #9 align 2 {
bb.a:
  %i.a = load atomic i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 4) monotonic, align 4
  %i.b = icmp eq i32 %i.a, 0
  br i1 %i.b, label %.sink.split, label %bb.b, !prof !71

.sink.split:                                      ; preds = %bb.a
  %i.c = tail call noundef i32 @_ZN4absl12lts_2026052613base_internal7NumCPUsEv()
  %i.d = icmp sgt i32 %i.c, 1
  %. = select i1 %i.d, i32 1500, i32 -1
  store atomic i32 %., ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 4) monotonic, align 4
  br label %bb.b

bb.b:                                             ; preds = %.sink.split, %bb.a
  %i.e = tail call noundef zeroext i1 @_ZN4absl12lts_202605265Mutex20LockSlowWithDeadlineEPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i64 -1, i32 noundef %3)
  br i1 %i.e, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 1849, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.6, ptr noundef nonnull @.str.7)
  unreachable

bb.d:                                             ; preds = %bb.b
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex11lock_sharedEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %i.b = and i64 %i.a, 28
  %.not4 = icmp eq i64 %i.b, 0
  br i1 %.not4, label %.lr.ph, label %._crit_edge, !prof !72

._crit_edge:                                      ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.a
  tail call void @_ZN4absl12lts_202605265Mutex8LockSlowEPKNS0_6MuHowSEPKNS0_9ConditionEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull @_ZN4absl12lts_20260526L8kSharedSE, ptr noundef null, i32 noundef 0) #25
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit
  %.05 = phi i64 [ %i.g, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = or i64 %.05, 1
  %i.d = add nsw i64 %i.c, 256
  %i.e = cmpxchg weak ptr %0, i64 %.05, i64 %i.d acquire monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %.lr.ph
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 2 uses
  %i.h = and i64 %i.g, 28
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %.lr.ph, label %._crit_edge, !prof !73

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit.thread: ; preds = %.lr.ph, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex14LockWhenCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEb(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2, i1 noundef zeroext %3) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = select i1 %3, ptr @_ZN4absl12lts_20260526L11kExclusiveSE, ptr @_ZN4absl12lts_20260526L8kSharedSE
  %i.b = tail call noundef zeroext i1 @_ZN4absl12lts_202605265Mutex20LockSlowWithDeadlineEPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %i.a, ptr noundef nonnull %1, i64 %2, i32 noundef 0)
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex20LockSlowWithDeadlineEPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, ptr noundef %2, i64 %3, i32 noundef %4) local_unnamed_addr #0 align 2 {
bb.a:
  %5 = alloca %"struct.absl::lts_20260526::SynchWaitParams", align 8 ; 12 uses
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = load i64, ptr %1, align 8, !tbaa !114
  %i.c = and i64 %i.b, %i.a
  %i.d = icmp eq i64 %i.c, 0
  br i1 %i.d, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.d

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.f = load i64, ptr %i.e, align 8, !tbaa !75
  %trunc.i = trunc i32 %4 to i1
  %..i = select i1 %trunc.i, i64 -3, i64 -1
  %i.g = and i64 %i.a, %..i
  %i.h = or i64 %i.f, %i.g
  %i.i = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.j = load i64, ptr %i.i, align 8, !tbaa !76
  %i.k = add nsw i64 %i.h, %i.j
  %i.l = cmpxchg ptr %0, i64 %i.a, i64 %i.k acquire monotonic, align 8
  %i.m = extractvalue { i64, i1 } %i.l, 1
  br i1 %i.m, label %bb.b, label %bb.d

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %i.n = icmp eq ptr %2, null
  br i1 %i.n, label %bb.l, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.o = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !63
  %i.q = tail call noundef zeroext i1 %i.p(ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !1
  br i1 %i.q, label %bb.l, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  %.020 = phi i1 [ false, %bb.a ], [ false, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ true, %bb.c ]
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.r = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %i.s = icmp eq ptr %i.r, null
  br i1 %i.s, label %bb.e, label %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit, !prof !71

bb.e:                                             ; preds = %bb.d
  %i.t = tail call noundef ptr @_ZN4absl12lts_2026052624synchronization_internal20CreateThreadIdentityEv()
  br label %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit

_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit: ; preds = %bb.d, %bb.e
  %.0.i.i.i = phi ptr [ %i.t, %bb.e ], [ %i.r, %bb.d ]
  store ptr %1, ptr %5, align 8, !tbaa !59
  %i.u = getelementptr inbounds nuw i8, ptr %5, i64 8 ; 2 uses
  store ptr %2, ptr %i.u, align 8, !tbaa !61
  %i.v = getelementptr inbounds nuw i8, ptr %5, i64 16
  store i64 %3, ptr %i.v, align 8, !tbaa !42
  %i.w = getelementptr inbounds nuw i8, ptr %5, i64 24
  store ptr null, ptr %i.w, align 8, !tbaa !77
  %i.x = getelementptr inbounds nuw i8, ptr %5, i64 32 ; 2 uses
  store ptr %.0.i.i.i, ptr %i.x, align 8, !tbaa !78
  %i.y = getelementptr inbounds nuw i8, ptr %5, i64 40
  store ptr null, ptr %i.y, align 8, !tbaa !79
  %i.z = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.aa = icmp eq ptr %i.z, null
  br i1 %i.aa, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.ab = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !80 ; 2 uses
  %i.ac = extractvalue { i64, i64 } %i.ab, 0
  %i.ad = extractvalue { i64, i64 } %i.ab, 1
  %i.ae = shl i64 %i.ad, 32
  %i.af = or i64 %i.ae, %i.ac
  br label %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

bb.g:                                             ; preds = %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.ag = tail call noundef i64 %i.z(), !inline_history !2
  br label %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit: ; preds = %bb.f, %bb.g
  %.0.in.i.i = phi i64 [ %i.af, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.0.i.i = ashr i64 %.0.in.i.i, 1
  store i64 %.0.i.i, ptr %i.ah, align 8, !tbaa !81
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i8 0, ptr %i.ai, align 8, !tbaa !82
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.aj = or i32 %4, 2
  %spec.select = select i1 %.not, i32 %4, i32 %i.aj ; 2 uses
  br i1 %.020, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  call void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #25
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !78
  call void @_ZN4absl12lts_202605265Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ak)
  %i.al = or i32 %spec.select, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  %.1 = phi i32 [ %i.al, %bb.h ], [ %spec.select, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ]
  call void @_ZN4absl12lts_202605265Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5, i32 noundef %.1)
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !61
  %i.an = icmp ne ptr %i.am, null
  %or.cond = or i1 %.not, %i.an
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !63
  %i.aq = call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = phi i1 [ %i.aq, %bb.j ], [ true, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.k
  %.0 = phi i1 [ %i.ar, %bb.k ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex11AwaitCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::SynchWaitParams", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !115
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %0 monotonic, align 8
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  %i.f = select i1 %.not, ptr @_ZN4absl12lts_20260526L8kSharedSE, ptr @_ZN4absl12lts_20260526L11kExclusiveSE
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit, !prof !71

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN4absl12lts_2026052624synchronization_internal20CreateThreadIdentityEv()
  br label %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit

_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.g, %bb.b ]
  store ptr %i.f, ptr %3, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !79
  %i.o = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.q = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !80 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  %i.t = shl i64 %i.s, 32
  %i.u = or i64 %i.t, %i.r
  br label %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

bb.e:                                             ; preds = %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.v = tail call noundef i64 %i.o(), !inline_history !2
  br label %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit: ; preds = %bb.d, %bb.e
  %.0.in.i.i = phi i64 [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.0.i.i = ashr i64 %.0.in.i.i, 1
  store i64 %.0.i.i, ptr %i.w, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.x, align 8, !tbaa !82
  call void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #25
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !78
  call void @_ZN4absl12lts_202605265Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.y)
  call void @_ZN4absl12lts_202605265Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3, i32 noundef 3)
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !61
  %.not8 = icmp eq ptr %i.z, null
  br i1 %.not8, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !1
  br i1 %i.ab, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not10 = icmp eq i64 %2, -1
  br i1 %.not10, label %bb.h, label %.critedge, !prof !71

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 1604, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  unreachable

.critedge:                                        ; preds = %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit, %bb.f, %bb.g
  %i.ac = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.critedge
  %.0 = phi i1 [ %i.ac, %.critedge ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZNK4absl12lts_202605269Condition4EvalEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !63
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull %0)
  ret i1 %i.c
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"struct.absl::lts_20260526::base_internal::SchedulingGuard::ScopedDisable", align 1 ; 6 uses
  %i.a = alloca ptr, align 8                      ; 7 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %2) #23
  %i.b = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.i = icmp ne ptr %i.b, null              ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 76 ; 2 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 4
  %i.e = add nsw i32 %i.d, 1
  store atomic i32 %i.e, ptr %i.c monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.f = zext i1 %.not.i.i to i8
  store i8 %i.f, ptr %2, align 1, !tbaa !69
  %i.g = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  invoke void @_ZNK4absl12lts_202605265Mutex16AssertReaderHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit
  invoke fastcc void @_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc(i64 noundef %i.g, ptr noundef nonnull @.str.14)
          to label %bb.d unwind label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.h = and i64 %i.g, 16
  %.not = icmp eq i64 %i.h, 0
  br i1 %.not, label %bb.g, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.i = and i64 %i.g, 8
  %.not181 = icmp eq i64 %i.i, 0
  %i.j = select i1 %.not181, i32 9, i32 8
  invoke fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %i.j)
          to label %bb.g unwind label %bb.f

bb.f:                                             ; preds = %bb.e, %bb.c, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit
  %i.k = landingpad { ptr, i32 }
          cleanup
  br label %bb.by

bb.g:                                             ; preds = %bb.e, %bb.d
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !tbaa !123
  %i.l = icmp eq ptr %1, null                     ; 7 uses
  br i1 %i.l, label %.outer.preheader, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.m = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !78   ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !52
  %i.q = icmp eq ptr %i.p, null
  br i1 %i.q, label %.outer.preheader, label %bb.i

bb.i:                                             ; preds = %bb.h
  %i.r = getelementptr inbounds nuw i8, ptr %i.n, i64 20
  %i.s = load i8, ptr %i.r, align 4, !tbaa !70, !range !47, !noundef !48
  %3 = trunc nuw i8 %i.s to i1
  br i1 %3, label %.outer.preheader, label %.invoke, !prof !14

.outer.preheader:                                 ; preds = %bb.h, %bb.g, %bb.i
  br label %.outer

.outer:                                           ; preds = %.outer.preheader, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0158.ph = phi i32 [ %i.hb, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  %.0152.ph = phi ptr [ %.0152, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0146.ph = phi ptr [ %.0146, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0144.ph = phi ptr [ %.0144, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0140.ph = phi i64 [ %.0140, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, %bb.aq
  %.0152.ph658 = phi ptr [ %.2154, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1124363, %bb.aq ]
  %.0146.ph659 = phi ptr [ %.2148, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1121365, %bb.aq ]
  %.0140.ph660 = phi i64 [ %.2142, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ 32, %bb.aq ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %.0152 = phi ptr [ %.0152.ph, %.outer ], [ %.0152.ph658, %._crit_edge.loopexit ] ; 5 uses
  %.0146 = phi ptr [ %.0146.ph, %.outer ], [ %.0146.ph659, %._crit_edge.loopexit ] ; 4 uses
  %.0144 = phi ptr [ %.0144.ph, %.outer ], [ %i.bg, %._crit_edge.loopexit ] ; 11 uses
  %.0140 = phi i64 [ %.0140.ph, %.outer ], [ %.0140.ph660, %._crit_edge.loopexit ] ; 3 uses
  %i.t = load atomic i64, ptr %0 monotonic, align 8 ; 23 uses
  %i.u = and i64 %i.t, 8
  %.not182 = icmp eq i64 %i.u, 0
  br i1 %.not182, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.v = and i64 %i.t, 6
  %i.w = icmp ne i64 %i.v, 4
  %or.cond = and i1 %i.l, %i.w
  br i1 %or.cond, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225, label %bb.k

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225: ; preds = %bb.j
  %i.x = and i64 %i.t, -41
  %i.y = cmpxchg ptr %0, i64 %i.t, i64 %i.x release monotonic, align 8
  %i.z = extractvalue { i64, i1 } %i.y, 1
  br i1 %i.z, label %.loopexit278, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.aa = and i64 %i.t, 5
  %i.ab = icmp eq i64 %i.aa, 1
  %or.cond3 = and i1 %i.l, %i.ab
  br i1 %or.cond3, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224, label %bb.l

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224: ; preds = %bb.k
  %i.ac = icmp ult i64 %i.t, 512
  %.neg = select i1 %i.ac, i64 -257, i64 -256
  %i.ad = add i64 %.neg, %i.t
  %i.ae = cmpxchg ptr %0, i64 %i.t, i64 %i.ad release monotonic, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %.loopexit278, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = and i64 %i.t, 64
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.m, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.ai = or disjoint i64 %i.t, 64
  %i.aj = cmpxchg ptr %0, i64 %i.t, i64 %i.ai acquire monotonic, align 8
  %i.ak = extractvalue { i64, i1 } %i.aj, 1
  br i1 %i.ak, label %bb.n, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %i.al = and i64 %i.t, 4
  %i.am = icmp eq i64 %i.al, 0
  br i1 %i.am, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.l, label %.invoke, label %.preheader, !prof !71

.preheader:                                       ; preds = %bb.o
  %i.an = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit
  %.0132 = phi i1 [ %.1133, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ], [ true, %.preheader ]
  %i.ao = load atomic i64, ptr %0 monotonic, align 8 ; 6 uses
  %i.ap = icmp sgt i64 %i.ao, 255
  %i.aq = add nsw i64 %i.ao, -256
  %i.ar = select i1 %i.ap, i64 %i.aq, i64 %i.ao   ; 2 uses
  br i1 %.0132, label %bb.q, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

bb.q:                                             ; preds = %bb.p
  %i.as = load ptr, ptr %i.an, align 8, !tbaa !79
  %i.at = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.ar, i32 noundef 2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.au = icmp eq ptr %i.as, null
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %bb.r, %bb.p
  %.1133 = phi i1 [ %i.au, %bb.r ], [ false, %bb.p ]
  %.0131 = phi ptr [ %i.at, %bb.r ], [ null, %bb.p ] ; 2 uses
  %i.av = and i64 %i.ao, -504
  %i.aw = icmp eq i64 %i.av, 0
  %i.ax = select i1 %i.aw, i64 -34, i64 -41
  %i.ay = and i64 %i.ao, 159
  %i.az = and i64 %i.ay, %i.ax
  %.not206 = icmp eq ptr %.0131, null
  %i.ba = ptrtoint ptr %.0131 to i64
  %i.bb = or i64 %i.ba, 4
  %i.bc = and i64 %i.ar, -256
  %.pn207 = select i1 %.not206, i64 %i.bc, i64 %i.bb
  %.0134 = or i64 %.pn207, %i.az
  %i.bd = cmpxchg weak ptr %0, i64 %i.ao, i64 %.0134 release monotonic, align 8
  %i.be = extractvalue { i64, i1 } %i.bd, 1
  br i1 %i.be, label %.loopexit278, label %bb.p, !llvm.loop !116

bb.s:                                             ; preds = %bb.n
  %i.bf = and i64 %i.t, -256
  %i.bg = inttoptr i64 %i.bf to ptr               ; 21 uses
  %i.bh = and i64 %i.t, 1
  %.not183 = icmp eq i64 %i.bh, 0
  br i1 %.not183, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bi = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bj = load i64, ptr %i.bi, align 8, !tbaa !66 ; 2 uses
  %i.bk = and i64 %i.bj, -256
  %i.bl = icmp sgt i64 %i.bk, 256
  br i1 %i.bl, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bm = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  %i.bn = add nsw i64 %i.bj, -256
  store i64 %i.bn, ptr %i.bm, align 8, !tbaa !66
  br i1 %i.l, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bo = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bg, ptr noundef nonnull %1, i64 noundef %i.t, i32 noundef 2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not201 = icmp eq ptr %i.bo, null
  br i1 %.not201, label %.invoke, label %bb.x, !prof !71

bb.x:                                             ; preds = %bb.w
  %i.bp = ptrtoint ptr %i.bo to i64
  %i.bq = and i64 %i.t, 191
  %i.br = or i64 %i.bq, %i.bp
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.0128 = phi i64 [ %i.br, %bb.x ], [ %i.t, %bb.u ]
  store atomic i64 %.0128, ptr %0 release, align 8
  br label %.loopexit278

bb.z:                                             ; preds = %bb.s, %bb.t
  %i.bs = icmp eq ptr %.0144, null                ; 2 uses
  br i1 %i.bs, label %.critedge219.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  %i.bu = load i8, ptr %i.bt, align 1, !tbaa !67, !range !47, !noundef !48
  %4 = trunc nuw i8 %i.bu to i1
  br i1 %4, label %.critedge219, label %.invoke, !prof !14

.critedge219:                                     ; preds = %bb.aa
  %i.bv = getelementptr inbounds nuw i8, ptr %.0144, i64 16 ; 2 uses
  %i.bw = load i8, ptr %i.bv, align 8, !tbaa !83, !range !47, !noundef !48
  %i.bx = trunc nuw i8 %i.bw to i1
  br i1 %i.bx, label %.critedge219.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge219
  store i8 1, ptr %i.bv, align 8, !tbaa !83
  %i.by = getelementptr inbounds nuw i8, ptr %.0144, i64 8 ; 2 uses
  %i.bz = load ptr, ptr %i.by, align 8, !tbaa !65
  %.not185 = icmp eq ptr %i.bz, null
  br i1 %.not185, label %bb.ac, label %.invoke, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %.not186 = icmp eq ptr %.0144, %i.bg
  br i1 %.not186, label %.critedge219.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.ca = load ptr, ptr %.0144, align 8, !tbaa !51 ; 2 uses
  %i.cb = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_(ptr noundef nonnull %.0144, ptr noundef %i.ca)
  br i1 %i.cb, label %bb.ae, label %.critedge219.thread

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.ca, ptr %i.by, align 8, !tbaa !65
  br label %.critedge219.thread

.critedge219.thread:                              ; preds = %bb.z, %bb.ac, %bb.ad, %bb.ae, %.critedge219
  %i.cc = load ptr, ptr %i.bg, align 256, !tbaa !51 ; 2 uses
  %i.cd = getelementptr inbounds nuw i8, ptr %i.cc, i64 32
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !52 ; 2 uses
  %i.cf = load ptr, ptr %i.ce, align 8, !tbaa !59
  %i.cg = icmp eq ptr %i.cf, @_ZN4absl12lts_20260526L11kExclusiveSE
  br i1 %i.cg, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge219.thread
  %i.ch = getelementptr inbounds nuw i8, ptr %i.ce, i64 8
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !61
  %i.cj = icmp eq ptr %i.ci, null
  br i1 %i.cj, label %.thread486, label %bb.ag

.thread486:                                       ; preds = %bb.af
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cc, i64 17
  store i8 1, ptr %i.ck, align 1, !tbaa !84
  br label %.preheader274.preheader

bb.ag:                                            ; preds = %bb.af, %.critedge219.thread
  %.not187 = icmp eq ptr %.0152, null
  br i1 %.not187, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cl = getelementptr inbounds nuw i8, ptr %.0152, i64 32
  %i.cm = load ptr, ptr %i.cl, align 8, !tbaa !52
  %i.cn = load ptr, ptr %i.cm, align 8, !tbaa !59
  %i.co = icmp eq ptr %i.cn, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.cp = icmp eq ptr %.0144, %i.bg
  %or.cond220 = or i1 %i.cp, %i.co
  br i1 %or.cond220, label %bb.aw, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cq = icmp eq ptr %.0144, %i.bg
  br i1 %i.cq, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.cr = and i64 %i.t, -106
  %i.cs = getelementptr inbounds nuw i8, ptr %i.bg, i64 40
  store i64 0, ptr %i.cs, align 8, !tbaa !66
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  store i8 0, ptr %i.ct, align 1, !tbaa !67
  br i1 %i.l, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cu = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bg, ptr noundef nonnull %1, i64 noundef %i.t, i32 noundef 2)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.cv = and i64 %i.t, 150
  %i.cw = ptrtoint ptr %i.cu to i64
  %.0126 = or i64 %i.cv, %i.cw
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.1127 = phi i64 [ %.0126, %bb.al ], [ %i.cr, %bb.aj ]
  store atomic i64 %.1127, ptr %0 release, align 8
  br label %.loopexit278

bb.an:                                            ; preds = %bb.ai
  %..0144 = select i1 %i.bs, ptr %i.bg, ptr %.0144
  %.0123 = load ptr, ptr %..0144, align 8, !tbaa !51
  %i.cx = getelementptr inbounds nuw i8, ptr %i.bg, i64 16
  store i8 0, ptr %i.cx, align 16, !tbaa !83
  %i.cy = getelementptr inbounds nuw i8, ptr %i.bg, i64 8
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !65
  %.not188 = icmp eq ptr %i.cz, null
  br i1 %.not188, label %.lr.ph.preheader, label %.invoke, !prof !14

.lr.ph.preheader:                                 ; preds = %bb.an
  %i.da = getelementptr inbounds nuw i8, ptr %i.bg, i64 19
  store i8 1, ptr %i.da, align 1, !tbaa !67
  store atomic i64 %i.t, ptr %0 release, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.av, %.lr.ph.preheader
  %.1121365 = phi ptr [ %.2122, %bb.av ], [ %.0144, %.lr.ph.preheader ] ; 2 uses
  %.1124363 = phi ptr [ %i.eb, %bb.av ], [ %.0123, %.lr.ph.preheader ] ; 8 uses
  %.1141362 = phi i64 [ %.2142, %bb.av ], [ %.0140, %.lr.ph.preheader ] ; 3 uses
  %.1147361 = phi ptr [ %.2148, %bb.av ], [ %.0146, %.lr.ph.preheader ] ; 3 uses
  %.1153360 = phi ptr [ %.2154, %bb.av ], [ %.0152, %.lr.ph.preheader ] ; 4 uses
  %i.db = getelementptr inbounds nuw i8, ptr %.1124363, i64 17 ; 4 uses
  store i8 0, ptr %i.db, align 1, !tbaa !84
  %i.dc = getelementptr inbounds nuw i8, ptr %.1124363, i64 32 ; 3 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !52
  %i.de = getelementptr inbounds nuw i8, ptr %i.dd, i64 8
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !61 ; 3 uses
  %i.dg = icmp eq ptr %i.df, null
  br i1 %i.dg, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.dh = getelementptr inbounds nuw i8, ptr %i.df, i64 16
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !63
  %i.dj = invoke noundef zeroext i1 %i.di(ptr noundef nonnull align 8 dereferenceable(32) %i.df)
          to label %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !117

_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit: ; preds = %bb.ao
  br i1 %i.dj, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit, %.lr.ph
  %i.dk = icmp eq ptr %.1153360, null
  br i1 %i.dk, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.db, align 1, !tbaa !84
  %i.dl = load ptr, ptr %i.dc, align 8, !tbaa !52
  %i.dm = load ptr, ptr %i.dl, align 8, !tbaa !59
  %i.dn = icmp eq ptr %i.dm, @_ZN4absl12lts_20260526L11kExclusiveSE
  br i1 %i.dn, label %._crit_edge.loopexit, label %bb.at

bb.ar:                                            ; preds = %bb.ap
  %i.do = load ptr, ptr %i.dc, align 8, !tbaa !52
  %i.dp = load ptr, ptr %i.do, align 8, !tbaa !59
  %i.dq = icmp eq ptr %i.dp, @_ZN4absl12lts_20260526L8kSharedSE
  br i1 %i.dq, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 1, ptr %i.db, align 1, !tbaa !84
  br label %bb.at

bb.at:                                            ; preds = %bb.ar, %bb.aq, %bb.as, %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit
  %.2154 = phi ptr [ %.1124363, %bb.aq ], [ %.1153360, %bb.as ], [ %.1153360, %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ], [ %.1153360, %bb.ar ] ; 2 uses
  %.2148 = phi ptr [ %.1121365, %bb.aq ], [ %.1147361, %bb.as ], [ %.1147361, %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ], [ %.1147361, %bb.ar ] ; 2 uses
  %.2142 = phi i64 [ %.1141362, %bb.aq ], [ %.1141362, %bb.as ], [ %.1141362, %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ], [ 32, %bb.ar ] ; 2 uses
  %i.dr = load i8, ptr %i.db, align 1, !tbaa !84, !range !47, !noundef !48
  %i.ds = trunc nuw i8 %i.dr to i1
  br i1 %i.ds, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dt = getelementptr inbounds nuw i8, ptr %.1124363, i64 8 ; 2 uses
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !65 ; 4 uses
  %.not.i = icmp eq ptr %i.du, null
  br i1 %.not.i, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.au
  %i.dv = getelementptr inbounds nuw i8, ptr %i.du, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !65 ; 2 uses
  %.not1415.i = icmp eq ptr %i.dw, null
  br i1 %.not1415.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dx = phi ptr [ %i.ea, %.lr.ph.i ], [ %i.dw, %.preheader.i ] ; 4 uses
  %.017.i = phi ptr [ %i.dx, %.lr.ph.i ], [ %i.du, %.preheader.i ]
  %.01116.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.1124363, %.preheader.i ]
  %i.dy = getelementptr inbounds nuw i8, ptr %.01116.i, i64 8
  store ptr %i.dx, ptr %i.dy, align 8, !tbaa !65
  %i.dz = getelementptr inbounds nuw i8, ptr %i.dx, i64 8
  %i.ea = load ptr, ptr %i.dz, align 8, !tbaa !65 ; 2 uses
  %.not14.i = icmp eq ptr %i.ea, null
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.du, %.preheader.i ], [ %i.dx, %.lr.ph.i ] ; 2 uses
  store ptr %.0.lcssa.i, ptr %i.dt, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit: ; preds = %._crit_edge.i, %bb.au, %bb.at
  %.2122 = phi ptr [ %.1124363, %bb.at ], [ %.0.lcssa.i, %._crit_edge.i ], [ %.1124363, %bb.au ] ; 3 uses
  %.not190 = icmp eq ptr %.2122, %i.bg
  br i1 %.not190, label %._crit_edge.loopexit, label %bb.av

bb.av:                                            ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit
  %i.eb = load ptr, ptr %.2122, align 8, !tbaa !51
  br label %.lr.ph

bb.aw:                                            ; preds = %bb.ah
  %i.ec = icmp eq ptr %.0146, null
  %spec.select221 = select i1 %i.ec, ptr %i.bg, ptr %.0146 ; 2 uses
  %.pre = load ptr, ptr %spec.select221, align 8, !tbaa !51
  %i.ed = icmp eq ptr %.pre, %.0152
  br i1 %i.ed, label %.preheader274.preheader, label %.invoke, !prof !124

.preheader274.preheader:                          ; preds = %.thread486, %bb.aw
  %.4491 = phi i64 [ 32, %.thread486 ], [ %.0140, %bb.aw ]
  %.4150490 = phi ptr [ %i.bg, %.thread486 ], [ %spec.select221, %bb.aw ]
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.preheader, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i
  %.024.i = phi ptr [ %.12532.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %.4150490, %.preheader274.preheader ] ; 8 uses
  %.022.i = phi ptr [ %.12333.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.a, %.preheader274.preheader ] ; 4 uses
  %.019.i = phi i1 [ %.12034.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ false, %.preheader274.preheader ]
  %.0.i = phi ptr [ %.135.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.bg, %.preheader274.preheader ] ; 13 uses
  %.021.i = load ptr, ptr %.024.i, align 8, !tbaa !51 ; 10 uses
  %i.ee = getelementptr inbounds nuw i8, ptr %.021.i, i64 17
  %i.ef = load i8, ptr %i.ee, align 1, !tbaa !84, !range !47, !noundef !48
  %i.eg = trunc nuw i8 %i.ef to i1
  br i1 %i.eg, label %bb.ax, label %bb.bj

bb.ax:                                            ; preds = %.preheader274
  %i.eh = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 3 uses
  %i.ei = load ptr, ptr %i.eh, align 8, !tbaa !65
  %.not.i227 = icmp eq ptr %i.ei, null
  br i1 %.not.i227, label %bb.ay, label %.invoke, !prof !14

bb.ay:                                            ; preds = %bb.ax
  %i.ej = load ptr, ptr %.021.i, align 8, !tbaa !51 ; 5 uses
  store ptr %i.ej, ptr %.024.i, align 8, !tbaa !51
  %i.ek = icmp eq ptr %.0.i, %.021.i
  %i.el = icmp eq ptr %.024.i, %.0.i              ; 2 uses
  br i1 %i.ek, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.em = select i1 %i.el, ptr null, ptr %.024.i
  br label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.el, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.en = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !52 ; 2 uses
  %i.ep = load ptr, ptr %i.eo, align 8, !tbaa !59
  %i.eq = getelementptr inbounds nuw i8, ptr %i.ej, i64 32
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !52 ; 2 uses
  %i.es = load ptr, ptr %i.er, align 8, !tbaa !59
  %i.et = icmp eq ptr %i.ep, %i.es
  br i1 %i.et, label %bb.bc, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.eu = getelementptr inbounds nuw i8, ptr %.024.i, i64 24
  %i.ev = load i32, ptr %i.eu, align 8, !tbaa !60
  %i.ew = getelementptr inbounds nuw i8, ptr %i.ej, i64 24
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !60
  %i.ey = icmp eq i32 %i.ev, %i.ex
  br i1 %i.ey, label %bb.bd, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.ez = getelementptr inbounds nuw i8, ptr %i.eo, i64 8
  %i.fa = load ptr, ptr %i.ez, align 8, !tbaa !61 ; 5 uses
  %i.fb = getelementptr inbounds nuw i8, ptr %i.er, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !61 ; 5 uses
  %i.fd = icmp eq ptr %i.fa, null
  %i.fe = icmp eq ptr %i.fc, null
  %or.cond.i.i.i.i = or i1 %i.fd, %i.fe
  br i1 %or.cond.i.i.i.i, label %.split.i.i, label %bb.be

.split.i.i:                                       ; preds = %bb.bd
  %i.ff = icmp eq ptr %i.fa, %i.fc
  br i1 %i.ff, label %bb.bg, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.fg = getelementptr inbounds nuw i8, ptr %i.fa, i64 16
  %i.fh = load ptr, ptr %i.fg, align 8, !tbaa !63
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !63
  %i.fk = icmp eq ptr %i.fh, %i.fj
  br i1 %i.fk, label %bb.bf, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.fl = getelementptr inbounds nuw i8, ptr %i.fa, i64 24
  %i.fm = load ptr, ptr %i.fl, align 8, !tbaa !64
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !64
  %i.fp = icmp eq ptr %i.fm, %i.fo
  br i1 %i.fp, label %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i: ; preds = %bb.bf
  %i.fq = load i128, ptr %i.fa, align 1
  %i.fr = load i128, ptr %i.fc, align 1
  %i.fs = icmp ne i128 %i.fq, %i.fr
  %i.ft = zext i1 %i.fs to i32
  %.not.i.i.i.i = icmp eq i32 %i.ft, 0
  br i1 %.not.i.i.i.i, label %bb.bg, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bg:                                            ; preds = %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, %.split.i.i
  %i.fu = getelementptr inbounds nuw i8, ptr %i.ej, i64 8
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !65 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fv, null
  br i1 %.not22.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.fv, ptr %i.eh, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bi:                                            ; preds = %bb.bg
  store ptr %i.ej, ptr %i.eh, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i: ; preds = %bb.bi, %bb.bh, %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, %bb.bf, %bb.be, %.split.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.0.i.i = phi ptr [ %i.em, %bb.az ], [ %.0.i, %bb.bh ], [ %.0.i, %bb.bi ], [ %.0.i, %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i ], [ %.0.i, %bb.ba ], [ %.0.i, %.split.i.i ], [ %.0.i, %bb.bc ], [ %.0.i, %bb.bb ], [ %.0.i, %bb.bf ], [ %.0.i, %bb.be ] ; 3 uses
  %i.fw = load ptr, ptr %.022.i, align 8, !tbaa !123
  store ptr %i.fw, ptr %.021.i, align 8, !tbaa !51
  store ptr %.021.i, ptr %.022.i, align 8, !tbaa !123
  %i.fx = getelementptr inbounds nuw i8, ptr %.021.i, i64 32
  %i.fy = load ptr, ptr %i.fx, align 8, !tbaa !52
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !59
  %i.ga = icmp ne ptr %i.fz, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.gb = icmp eq ptr %.0.i.i, %i.bg
  %or.cond.i = and i1 %i.gb, %i.ga
  br i1 %or.cond.i, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, label %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit

bb.bj:                                            ; preds = %.preheader274
  %i.gc = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %i.gd = load ptr, ptr %i.gc, align 8, !tbaa !65 ; 4 uses
  %.not.i.i226 = icmp eq ptr %i.gd, null
  br i1 %.not.i.i226, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bj
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gd, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !65 ; 2 uses
  %.not1415.i.i = icmp eq ptr %i.gf, null
  br i1 %.not1415.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.gg = phi ptr [ %i.gj, %.lr.ph.i.i ], [ %i.gf, %.preheader.i.i ] ; 4 uses
  %.017.i.i = phi ptr [ %i.gg, %.lr.ph.i.i ], [ %i.gd, %.preheader.i.i ]
  %.01116.i.i = phi ptr [ %.017.i.i, %.lr.ph.i.i ], [ %.021.i, %.preheader.i.i ]
  %i.gh = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 8
  store ptr %i.gg, ptr %i.gh, align 8, !tbaa !65
  %i.gi = getelementptr inbounds nuw i8, ptr %i.gg, i64 8
  %i.gj = load ptr, ptr %i.gi, align 8, !tbaa !65 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.gj, null
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.gd, %.preheader.i.i ], [ %i.gg, %.lr.ph.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i, ptr %i.gc, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i

_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i: ; preds = %._crit_edge.i.i, %bb.bj, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i
  %.135.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.0.i, %bb.bj ], [ %.0.i, %._crit_edge.i.i ] ; 3 uses
  %.12034.i = phi i1 [ %.019.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ true, %bb.bj ], [ true, %._crit_edge.i.i ] ; 2 uses
  %.12333.i = phi ptr [ %.021.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.022.i, %bb.bj ], [ %.022.i, %._crit_edge.i.i ]
  %.12532.i = phi ptr [ %.024.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.021.i, %bb.bj ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.gk = icmp eq ptr %.12532.i, %.135.i
  %.not27.i = select i1 %i.gk, i1 %.12034.i, i1 false
  br i1 %.not27.i, label %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit, label %.preheader274, !llvm.loop !118

_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit: ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i
  %.2.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.135.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ] ; 2 uses
  %i.gl = and i64 %i.t, 16                        ; 2 uses
  %i.gm = or disjoint i64 %i.gl, 2
  br i1 %i.l, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit
  %i.gn = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef %.2.i, ptr noundef nonnull %1, i64 noundef %i.t, i32 noundef 2)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk, %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit
  %.0129 = phi ptr [ %.2.i, %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit ], [ %i.gn, %bb.bk ] ; 4 uses
  %.0..0..0.239 = load ptr, ptr %i.a, align 8, !tbaa !123
  %.not196 = icmp eq ptr %.0..0..0.239, inttoptr (i64 1 to ptr)
  br i1 %.not196, label %.invoke, label %bb.bm, !prof !71

.invoke:                                          ; preds = %bb.an, %bb.ab, %bb.aa, %bb.ax, %bb.bl, %bb.aw, %bb.w, %bb.o, %bb.i
  %i.go = phi i32 [ 2381, %bb.bl ], [ 2175, %bb.o ], [ 2358, %bb.aw ], [ 2146, %bb.i ], [ 1092, %bb.ax ], [ 2219, %bb.w ], [ 2231, %bb.aa ], [ 2237, %bb.ab ], [ 2301, %bb.an ]
  %i.gp = phi ptr [ @.str.26, %bb.bl ], [ @.str.16, %bb.o ], [ @.str.24, %bb.aw ], [ @.str.15, %bb.i ], [ @.str.73, %bb.ax ], [ @.str.11, %bb.w ], [ @.str.19, %bb.aa ], [ @.str.21, %bb.ab ], [ @.str.23, %bb.an ]
  %i.gq = phi ptr [ @.str.27, %bb.bl ], [ @.str.17, %bb.o ], [ @.str.25, %bb.aw ], [ @.str.9, %bb.i ], [ @.str.74, %bb.ax ], [ @.str.18, %bb.w ], [ @.str.20, %bb.aa ], [ @.str.22, %bb.ab ], [ @.str.22, %bb.an ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef %i.go, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.gp, ptr noundef nonnull %i.gq)
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %.not197 = icmp eq ptr %.0129, null
  br i1 %.not197, label %bb.bp, label %bb.bn

bb.bn:                                            ; preds = %bb.bm
  %i.gr = getelementptr inbounds nuw i8, ptr %.0129, i64 40
  store i64 0, ptr %i.gr, align 8, !tbaa !66
  %i.gs = getelementptr inbounds nuw i8, ptr %.0129, i64 19
  store i8 0, ptr %i.gs, align 1, !tbaa !67
  %i.gt = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc229 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

.noexc229:                                        ; preds = %bb.bn
  %i.gu = icmp eq ptr %i.gt, null
  br i1 %i.gu, label %bb.bo, label %_ZN4absl12lts_2026052624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit, !prof !71

bb.bo:                                            ; preds = %.noexc229
  %i.gv = invoke noundef ptr @_ZN4absl12lts_2026052624synchronization_internal20CreateThreadIdentityEv()
          to label %_ZN4absl12lts_2026052624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_2026052624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit: ; preds = %.noexc229, %bb.bo
  %.0.i228 = phi ptr [ %i.gt, %.noexc229 ], [ %i.gv, %bb.bo ] ; 2 uses
  %i.gw = ptrtoint ptr %.0129 to i64
  %i.gx = or i64 %.4491, %i.gw
  %i.gy = or i64 %i.gx, %i.gl
  %i.gz = or i64 %i.gy, 6
  %i.ha = getelementptr inbounds nuw i8, ptr %.0.i228, i64 88
  store i8 1, ptr %i.ha, align 8, !tbaa !125
  br label %bb.bp

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.m, %bb.l, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225
  %i.hb = invoke noundef i32 @_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii(i32 noundef %.0158.ph, i32 noundef 0)
          to label %.outer unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !119

bb.bp:                                            ; preds = %_ZN4absl12lts_2026052624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit, %bb.bm
  %.1138 = phi ptr [ %.0.i228, %_ZN4absl12lts_2026052624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit ], [ null, %bb.bm ] ; 2 uses
  %.0119 = phi i64 [ %i.gz, %_ZN4absl12lts_2026052624synchronization_internal32GetOrCreateCurrentThreadIdentityEv.exit ], [ %i.gm, %bb.bm ]
  store atomic i64 %.0119, ptr %0 release, align 8
  %i.hc = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.hd = icmp eq ptr %i.hc, null
  br i1 %i.hd, label %bb.bq, label %bb.br

bb.bq:                                            ; preds = %bb.bp
  %i.he = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !80 ; 2 uses
  %i.hf = extractvalue { i64, i64 } %i.he, 0
  %i.hg = extractvalue { i64, i64 } %i.he, 1
  %i.hh = shl i64 %i.hg, 32
  %i.hi = or i64 %i.hh, %i.hf
  br label %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit

bb.br:                                            ; preds = %bb.bp
  %i.hj = invoke noundef i64 %i.hc()
          to label %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !3

_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit: ; preds = %bb.br, %bb.bq
  %.0.in.i = phi i64 [ %i.hi, %bb.bq ], [ %i.hj, %bb.br ]
  %.0.i231 = ashr i64 %.0.in.i, 1                 ; 2 uses
  %.0..0..promoted = load ptr, ptr %i.a, align 8, !tbaa !123
  br label %bb.bs

bb.bs:                                            ; preds = %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit, %_ZN4absl12lts_202605265Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE.exit
  %i.hk = phi ptr [ %.0..0..promoted, %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit ], [ %i.hv, %_ZN4absl12lts_202605265Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE.exit ] ; 6 uses
  %.0261 = phi i64 [ 0, %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit ], [ %.1, %_ZN4absl12lts_202605265Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE.exit ] ; 2 uses
  %i.hl = getelementptr inbounds nuw i8, ptr %i.hk, i64 18
  %i.hm = load i8, ptr %i.hl, align 2, !tbaa !85, !range !47, !noundef !48
  %i.hn = trunc nuw i8 %i.hm to i1
  br i1 %i.hn, label %bb.bu, label %bb.bt

bb.bt:                                            ; preds = %bb.bs
  %i.ho = getelementptr inbounds nuw i8, ptr %i.hk, i64 32
  %i.hp = load ptr, ptr %i.ho, align 8, !tbaa !52 ; 2 uses
  %i.hq = getelementptr inbounds nuw i8, ptr %i.hp, i64 48 ; 2 uses
  %i.hr = load i64, ptr %i.hq, align 8, !tbaa !81
  %i.hs = sub nsw i64 %.0.i231, %i.hr
  %i.ht = add nsw i64 %i.hs, %.0261
  store i64 %.0.i231, ptr %i.hq, align 8, !tbaa !81
  %i.hu = getelementptr inbounds nuw i8, ptr %i.hp, i64 56
  store i8 1, ptr %i.hu, align 8, !tbaa !82
  br label %bb.bu

bb.bu:                                            ; preds = %bb.bt, %bb.bs
  %.1 = phi i64 [ %.0261, %bb.bs ], [ %i.ht, %bb.bt ] ; 4 uses
  %i.hv = load ptr, ptr %i.hk, align 8, !tbaa !51 ; 2 uses
  store ptr null, ptr %i.hk, align 8, !tbaa !51
  %i.hw = getelementptr inbounds nuw i8, ptr %i.hk, i64 28
  store atomic i32 0, ptr %i.hw release, align 4
  invoke void @AbslInternalPerThreadSemPost_lts_20260526(ptr noundef nonnull %i.hk)
          to label %_ZN4absl12lts_202605265Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZN4absl12lts_202605265Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE.exit: ; preds = %bb.bu
  %.not209 = icmp eq ptr %i.hv, inttoptr (i64 1 to ptr)
  br i1 %.not209, label %bb.bv, label %bb.bs, !llvm.loop !120

bb.bv:                                            ; preds = %_ZN4absl12lts_202605265Mutex6WakeupEPNS0_13base_internal14PerThreadSynchE.exit
  %i.hx = icmp sgt i64 %.1, 0
  br i1 %i.hx, label %bb.bw, label %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit

bb.bw:                                            ; preds = %bb.bv
  %i.hy = load atomic ptr, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_112mutex_tracerE acquire, align 8
  invoke void %i.hy(ptr noundef nonnull @.str.28, ptr noundef nonnull %0, i64 noundef %.1)
          to label %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvlEEclIJRA13_S3_PNS0_5MutexERlEEEvDpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !121

_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvlEEclIJRA13_S3_PNS0_5MutexERlEEEvDpOT_.exit: ; preds = %bb.bw
  %i.hz = load atomic ptr, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_119submit_profile_dataE acquire, align 8
  invoke void %i.hz(i64 noundef %.1)
          to label %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !122

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.ao, %bb.bu, %bb.q, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %.invoke, %bb.bw, %bb.bk, %bb.v, %bb.ak, %bb.bn, %bb.bo, %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvlEEclIJRA13_S3_PNS0_5MutexERlEEEvDpOT_.exit, %bb.br
  %lpad.loopexit.split-lp = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  br label %bb.by

_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit: ; preds = %bb.bv, %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvlEEclIJRA13_S3_PNS0_5MutexERlEEEvDpOT_.exit
  %.not212 = icmp eq ptr %.1138, null
  br i1 %.not212, label %.loopexit278, label %bb.bx

bb.bx:                                            ; preds = %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit
  %i.ia = getelementptr inbounds nuw i8, ptr %.1138, i64 88
  store i8 0, ptr %i.ia, align 8, !tbaa !125
  br label %.loopexit278

.loopexit278:                                     ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.y, %bb.am, %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit, %bb.bx
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a)
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  ret void

bb.by:                                            ; preds = %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, %bb.f
  %.pn215.pn = phi { ptr, i32 } [ %lpad.loopexit.split-lp, %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ], [ %i.k, %bb.f ]
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  resume { ptr, i32 } %.pn215.pn
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605265Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i32 noundef %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::base_internal::SchedulingGuard::ScopedDisable", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.a = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.i = icmp ne ptr %i.a, null              ; 2 uses
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %i.d = add nsw i32 %i.c, 1
  store atomic i32 %i.d, ptr %i.b monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = zext i1 %.not.i.i to i8
  store i8 %i.e, ptr %3, align 1, !tbaa !69
  %i.f = load atomic i64, ptr %0 monotonic, align 8
  %i.g = and i64 %i.f, 16
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c

bb.c:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit
  %i.h = load ptr, ptr %1, align 8, !tbaa !59
  %i.i = icmp eq ptr %i.h, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.j = select i1 %i.i, i32 4, i32 6
  invoke fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %i.j)
          to label %bb.d unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.d:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit, %bb.c
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 7 uses
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !78   ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 32
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !52
  %i.o = icmp eq ptr %i.n, null
  br i1 %i.o, label %.critedge.preheader, label %bb.e

.critedge.preheader:                              ; preds = %bb.e, %bb.d
  %i.p = getelementptr inbounds nuw i8, ptr %1, i64 8 ; 2 uses
  br label %.critedge

bb.e:                                             ; preds = %bb.d
  %i.q = getelementptr inbounds nuw i8, ptr %i.l, i64 20
  %i.r = load i8, ptr %i.q, align 4, !tbaa !70, !range !47, !noundef !48
  %4 = trunc nuw i8 %i.r to i1
  br i1 %4, label %.critedge.preheader, label %.invoke, !prof !14

.critedge:                                        ; preds = %.critedge.preheader, %.critedge88
  %.067 = phi i32 [ %.572, %.critedge88 ], [ %2, %.critedge.preheader ] ; 13 uses
  %.063 = phi i32 [ %i.do, %.critedge88 ], [ 0, %.critedge.preheader ] ; 5 uses
  %i.s = load atomic i64, ptr %0 monotonic, align 8 ; 26 uses
  %i.t = shl i64 %i.s, 3
  %i.u = xor i64 %i.t, 32
  %i.v = and i64 %i.s, 40
  %i.w = and i64 %i.v, %i.u
  %i.x = icmp eq i64 %i.w, 0
  br i1 %i.x, label %_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc.exit, label %bb.f, !prof !14

bb.f:                                             ; preds = %.critedge
  %i.y = and i64 %i.s, 9
  %.not.i = icmp eq i64 %i.y, 9
  br i1 %.not.i, label %bb.g, label %bb.h, !prof !71

bb.g:                                             ; preds = %bb.f
  %i.z = inttoptr i64 %i.s to ptr
  br label %.invoke

bb.h:                                             ; preds = %bb.f
  %i.aa = and i64 %i.s, 36
  %.not8.i = icmp eq i64 %i.aa, 32
  br i1 %.not8.i, label %bb.i, label %_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc.exit, !prof !71

bb.i:                                             ; preds = %bb.h
  %i.ab = inttoptr i64 %i.s to ptr
  br label %.invoke

.invoke:                                          ; preds = %bb.af, %bb.r, %bb.ai, %bb.e, %bb.ak, %bb.g, %bb.i
  %i.ac = phi i32 [ 1991, %bb.i ], [ 1988, %bb.g ], [ 2005, %bb.e ], [ 2108, %bb.ak ], [ 2034, %bb.r ], [ 2102, %bb.ai ], [ 2081, %bb.af ]
  %i.ad = phi ptr [ @.str.66, %bb.i ], [ @.str.65, %bb.g ], [ @.str.1, %bb.e ], [ @.str.1, %bb.ak ], [ @.str.1, %bb.ai ], [ @.str.1, %bb.r ], [ @.str.1, %bb.af ]
  %i.ae = phi ptr [ @.str.10, %bb.i ], [ @.str.10, %bb.g ], [ @.str.8, %bb.e ], [ @.str.8, %bb.ak ], [ @.str.11, %bb.r ], [ @.str.8, %bb.ai ], [ @.str.11, %bb.af ]
  %i.af = phi ptr [ %i.ab, %bb.i ], [ %i.z, %bb.g ], [ @.str.9, %bb.e ], [ @.str.9, %bb.ak ], [ @.str.12, %bb.r ], [ @.str.9, %bb.ai ], [ @.str.13, %bb.af ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef %i.ac, ptr noundef nonnull %i.ad, ptr noundef nonnull %i.ae, ptr noundef %i.af)
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc.exit: ; preds = %bb.h, %.critedge
  %i.ag = load ptr, ptr %1, align 8, !tbaa !59    ; 4 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 24
  %i.ai = load i64, ptr %i.ah, align 8, !tbaa !128
  %i.aj = and i64 %i.ai, %i.s
  %i.ak = icmp eq i64 %i.aj, 0
  br i1 %i.ak, label %bb.j, label %bb.p

bb.j:                                             ; preds = %_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc.exit
  %i.al = getelementptr inbounds nuw i8, ptr %i.ag, i64 8
  %i.am = load i64, ptr %i.al, align 8, !tbaa !75
  %trunc.i = trunc i32 %.067 to i1
  %..i = select i1 %trunc.i, i64 -3, i64 -1
  %i.an = and i64 %i.s, %..i
  %i.ao = or i64 %i.am, %i.an
  %i.ap = getelementptr inbounds nuw i8, ptr %i.ag, i64 16
  %i.aq = load i64, ptr %i.ap, align 8, !tbaa !76
  %i.ar = add nsw i64 %i.ao, %i.aq
  %i.as = cmpxchg ptr %0, i64 %i.s, i64 %i.ar acquire monotonic, align 8
  %i.at = extractvalue { i64, i1 } %i.as, 1
  br i1 %i.at, label %bb.k, label %.thread147

bb.k:                                             ; preds = %bb.j
  %i.au = load ptr, ptr %i.p, align 8, !tbaa !61  ; 3 uses
  %i.av = icmp eq ptr %i.au, null
  br i1 %i.av, label %bb.aj, label %bb.l

bb.l:                                             ; preds = %bb.k
  %i.aw = getelementptr inbounds nuw i8, ptr %i.au, i64 16
  %i.ax = load ptr, ptr %i.aw, align 8, !tbaa !63
  %i.ay = invoke noundef zeroext i1 %i.ax(ptr noundef nonnull align 8 dereferenceable(32) %i.au)
          to label %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit: ; preds = %bb.l
  br i1 %i.ay, label %bb.aj, label %bb.m

bb.m:                                             ; preds = %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit
  invoke void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #25
          to label %bb.n unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.n:                                             ; preds = %bb.m
  %i.az = load ptr, ptr %i.k, align 8, !tbaa !78
  invoke void @_ZN4absl12lts_202605265Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.az)
          to label %bb.o unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.o:                                             ; preds = %bb.n
  %i.ba = or i32 %.067, 1
  br label %.thread147

bb.p:                                             ; preds = %_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc.exit
  %i.bb = and i64 %i.s, 68
  %i.bc = icmp eq i64 %i.bb, 0
  br i1 %i.bc, label %bb.q, label %bb.u

bb.q:                                             ; preds = %bb.p
  %i.bd = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.s, i32 noundef %.067)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.r:                                             ; preds = %bb.q
  %.not78 = icmp eq ptr %i.bd, null
  br i1 %.not78, label %.invoke, label %bb.s, !prof !71

bb.s:                                             ; preds = %bb.r
  %trunc.i97 = trunc i32 %.067 to i1
  %..i98 = select i1 %trunc.i97, i64 249, i64 251
  %i.be = and i64 %i.s, %..i98
  %i.bf = load ptr, ptr %1, align 8, !tbaa !59
  %i.bg = icmp eq ptr %i.bf, @_ZN4absl12lts_20260526L11kExclusiveSE
  %.not79 = trunc i64 %i.s to i1
  %i.bh = and i1 %i.bg, %.not79
  %.054.v = select i1 %i.bh, i64 36, i64 4
  %i.bi = ptrtoint ptr %i.bd to i64
  %.054 = or i64 %i.be, %i.bi
  %i.bj = or i64 %.054, %.054.v
  %i.bk = cmpxchg ptr %0, i64 %i.s, i64 %i.bj release monotonic, align 8
  %i.bl = extractvalue { i64, i1 } %i.bk, 1
  br i1 %i.bl, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bm = load ptr, ptr %i.k, align 8, !tbaa !78
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bm, i64 32
  store ptr null, ptr %i.bn, align 8, !tbaa !52
  br label %.thread147

bb.u:                                             ; preds = %bb.p
  %i.bo = getelementptr inbounds nuw i8, ptr %i.ag, i64 32
  %i.bp = load i64, ptr %i.bo, align 8, !tbaa !129
  %trunc.i99 = trunc i32 %.067 to i1              ; 3 uses
  %..i100 = select i1 %trunc.i99, i64 -33, i64 -1
  %i.bq = and i64 %..i100, %i.bp
  %i.br = and i64 %i.bq, %i.s
  %i.bs = icmp eq i64 %i.br, 0
  br i1 %i.bs, label %bb.v, label %bb.ac

bb.v:                                             ; preds = %bb.u
  %..i102 = select i1 %trunc.i99, i64 -68, i64 -66
  %i.bt = and i64 %i.s, %..i102
  %i.bu = or disjoint i64 %i.bt, 65
  %i.bv = cmpxchg ptr %0, i64 %i.s, i64 %i.bu acquire monotonic, align 8
  %i.bw = extractvalue { i64, i1 } %i.bv, 1
  br i1 %i.bw, label %bb.w, label %.thread147

bb.w:                                             ; preds = %bb.v
  %i.bx = and i64 %i.s, -256
  %i.by = inttoptr i64 %i.bx to ptr
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 40 ; 2 uses
  %i.ca = load i64, ptr %i.bz, align 8, !tbaa !66
  %i.cb = add nsw i64 %i.ca, 256
  store i64 %i.cb, ptr %i.bz, align 8, !tbaa !66
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit94

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit94: ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit94, %bb.w
  %i.cc = load atomic i64, ptr %0 monotonic, align 8 ; 4 uses
  %i.cd = and i64 %i.cc, -66
  %i.ce = or disjoint i64 %i.cd, 1
  %i.cf = cmpxchg weak ptr %0, i64 %i.cc, i64 %i.ce release monotonic, align 8
  %i.cg = extractvalue { i64, i1 } %i.cf, 1
  br i1 %i.cg, label %bb.x, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit94

bb.x:                                             ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit94
  %i.ch = load ptr, ptr %i.p, align 8, !tbaa !61  ; 3 uses
  %i.ci = icmp eq ptr %i.ch, null
  br i1 %i.ci, label %bb.aj, label %bb.y

bb.y:                                             ; preds = %bb.x
  %i.cj = getelementptr inbounds nuw i8, ptr %i.ch, i64 16
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !63
  %i.cl = invoke noundef zeroext i1 %i.ck(ptr noundef nonnull align 8 dereferenceable(32) %i.ch)
          to label %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit104 unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !126

_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit104: ; preds = %bb.y
  br i1 %i.cl, label %bb.aj, label %bb.z

bb.z:                                             ; preds = %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit104
  invoke void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %1) #25
          to label %bb.aa unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.aa:                                            ; preds = %bb.z
  %i.cm = load ptr, ptr %i.k, align 8, !tbaa !78
  invoke void @_ZN4absl12lts_202605265Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.cm)
          to label %bb.ab unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ab:                                            ; preds = %bb.aa
  %i.cn = or i32 %.067, 1
  br label %.thread147

bb.ac:                                            ; preds = %bb.u
  %i.co = and i64 %i.s, 64
  %i.cp = icmp eq i64 %i.co, 0
  br i1 %i.cp, label %bb.ad, label %.thread147

bb.ad:                                            ; preds = %bb.ac
  %..i106 = select i1 %trunc.i99, i64 -71, i64 -69
  %i.cq = and i64 %i.s, %..i106
  %i.cr = or disjoint i64 %i.cq, 68
  %i.cs = cmpxchg ptr %0, i64 %i.s, i64 %i.cr acquire monotonic, align 8
  %i.ct = extractvalue { i64, i1 } %i.cs, 1
  br i1 %i.ct, label %bb.ae, label %.thread147

bb.ae:                                            ; preds = %bb.ad
  %i.cu = and i64 %i.s, -256
  %i.cv = inttoptr i64 %i.cu to ptr
  %i.cw = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef %i.cv, ptr noundef nonnull %1, i64 noundef %i.s, i32 noundef %.067)
          to label %bb.af unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.af:                                            ; preds = %bb.ae
  %.not75 = icmp eq ptr %i.cw, null
  br i1 %.not75, label %.invoke, label %bb.ag, !prof !71

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %bb.y, %bb.l, %bb.q, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread, %bb.aa, %bb.z, %bb.m, %bb.n, %.critedge88, %bb.ae, %.invoke, %bb.c, %bb.al
  %lpad.loopexit.split-lp186 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp186

bb.ag:                                            ; preds = %bb.af
  %i.cx = load ptr, ptr %1, align 8, !tbaa !59
  %i.cy = icmp eq ptr %i.cx, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.cz = shl i64 %i.s, 5
  %spec.select86 = and i64 %i.cz, 32
  %.0 = select i1 %i.cy, i64 %spec.select86, i64 0
  %i.da = ptrtoint ptr %i.cw to i64
  %i.db = or i64 %.0, %i.da
  %invariant.op = or i64 %i.db, 4
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.ag
  %i.dc = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %i.dd = and i64 %i.dc, 187
  %.reass = or i64 %i.dd, %invariant.op
  %i.de = cmpxchg weak ptr %0, i64 %i.dc, i64 %.reass release monotonic, align 8
  %i.df = extractvalue { i64, i1 } %i.de, 1
  br i1 %i.df, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread: ; preds = %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit, %bb.s
  %i.dg = load ptr, ptr %i.k, align 8, !tbaa !78
  invoke void @_ZN4absl12lts_202605265Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.dg)
          to label %bb.ah unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.ah:                                            ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit92.thread
  %i.dh = or i32 %.067, 1
  br label %.thread147

.thread147:                                       ; preds = %bb.j, %bb.ad, %bb.v, %bb.t, %bb.ab, %bb.ac, %bb.ah, %bb.o
  %.572 = phi i32 [ %i.ba, %bb.o ], [ %.067, %bb.ad ], [ %i.dh, %bb.ah ], [ %.067, %bb.v ], [ %.067, %bb.t ], [ %.067, %bb.ac ], [ %i.cn, %bb.ab ], [ %.067, %bb.j ]
  %.5 = phi i32 [ 0, %bb.o ], [ %.063, %bb.ad ], [ 0, %bb.ah ], [ %.063, %bb.v ], [ %.063, %bb.t ], [ %.063, %bb.ac ], [ 0, %bb.ab ], [ %.063, %bb.j ]
  %i.di = load ptr, ptr %i.k, align 8, !tbaa !78  ; 2 uses
  %i.dj = getelementptr inbounds nuw i8, ptr %i.di, i64 32
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !52
  %i.dl = icmp eq ptr %i.dk, null
  br i1 %i.dl, label %.critedge88, label %bb.ai

bb.ai:                                            ; preds = %.thread147
  %i.dm = getelementptr inbounds nuw i8, ptr %i.di, i64 20
  %i.dn = load i8, ptr %i.dm, align 4, !tbaa !70, !range !47, !noundef !48
  %5 = trunc nuw i8 %i.dn to i1
  br i1 %5, label %.critedge88, label %.invoke, !prof !14

.critedge88:                                      ; preds = %.thread147, %bb.ai
  %i.do = invoke noundef i32 @_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii(i32 noundef %.5, i32 noundef 1)
          to label %.critedge unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !llvm.loop !127

bb.aj:                                            ; preds = %bb.x, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit104, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit, %bb.k
  %.2 = phi i64 [ %i.s, %bb.k ], [ %i.s, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit ], [ %i.cc, %_ZN4absl12lts_20260526L22EvalConditionAnnotatedEPKNS0_9ConditionEPNS0_5MutexEbbb.exit104 ], [ %i.cc, %bb.x ]
  %i.dp = load ptr, ptr %i.k, align 8, !tbaa !78  ; 2 uses
  %i.dq = getelementptr inbounds nuw i8, ptr %i.dp, i64 32
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !52
  %i.ds = icmp eq ptr %i.dr, null
  br i1 %i.ds, label %.critedge90, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dp, i64 20
  %i.du = load i8, ptr %i.dt, align 4, !tbaa !70, !range !47, !noundef !48
  %6 = trunc nuw i8 %i.du to i1
  br i1 %6, label %.critedge90, label %.invoke, !prof !14

.critedge90:                                      ; preds = %bb.aj, %bb.ak
  %i.dv = and i64 %.2, 16
  %.not83 = icmp eq i64 %i.dv, 0
  br i1 %.not83, label %bb.am, label %bb.al

bb.al:                                            ; preds = %.critedge90
  %i.dw = load ptr, ptr %1, align 8, !tbaa !59
  %i.dx = icmp eq ptr %i.dw, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.dy = select i1 %i.dx, i32 5, i32 7
  invoke fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %i.dy)
          to label %bb.am unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.am:                                            ; preds = %bb.al, %.critedge90
  %i.dz = load i8, ptr %3, align 1, !tbaa !69, !range !47, !noundef !48
  %i.ea = trunc nuw i8 %i.dz to i1
  br i1 %i.ea, label %bb.an, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit

bb.an:                                            ; preds = %bb.am
  %i.eb = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc.i unwind label %bb.ao

.noexc.i:                                         ; preds = %bb.an
  %i.ec = getelementptr inbounds nuw i8, ptr %i.eb, i64 76 ; 2 uses
  %i.ed = load atomic i32, ptr %i.ec monotonic, align 4
  %i.ee = add nsw i32 %i.ed, -1
  store atomic i32 %i.ee, ptr %i.ec monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit

bb.ao:                                            ; preds = %bb.an
  %i.ef = landingpad { ptr, i32 }
          catch ptr null
  %i.eg = extractvalue { ptr, i32 } %i.ef, 0
  tail call void @__clang_call_terminate(ptr %i.eg) #24
  unreachable

_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit: ; preds = %bb.am, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex8try_lockEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 4 uses
  %i.b = and i64 %i.a, 25
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b, !prof !14

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.d = or disjoint i64 %i.a, 8
  %i.e = cmpxchg ptr %0, i64 %i.a, i64 %i.d acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.g = and i64 %i.a, 16
  %.not = icmp eq i64 %i.g, 0
  br i1 %.not, label %bb.d, label %bb.c, !prof !14

bb.c:                                             ; preds = %bb.b
  %i.h = tail call noundef zeroext i1 @_ZN4absl12lts_202605265Mutex11TryLockSlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  br label %bb.d

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.b, %bb.c
  %.0 = phi i1 [ %i.f, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.h, %bb.c ], [ false, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress noinline uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex11TryLockSlowEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #10 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, 9
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, label %bb.b

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.a
  %i.d = or disjoint i64 %i.a, 8
  %i.e = cmpxchg ptr %0, i64 %i.a, i64 %i.d acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %bb.b

bb.b:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a
  br label %bb.c

bb.c:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.b
  %.sink = phi i32 [ 1, %bb.b ], [ 0, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ]
  %.0 = phi i1 [ false, %bb.b ], [ true, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ]
  tail call fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %.sink)
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define internal fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef nonnull %0, i32 noundef range(i32 0, 14) %1) unnamed_addr #0 {
bb.a:
  %i.a = alloca [40 x ptr], align 16              ; 4 uses
  %i.b = alloca [960 x i8], align 16              ; 5 uses
  %i.c = tail call fastcc noundef ptr @_ZN4absl12lts_20260526L13GetSynchEventEPKv(ptr noundef %0) ; 6 uses
  %i.d = icmp ne ptr %i.c, null                   ; 3 uses
  br i1 %i.d, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.f = load i8, ptr %i.e, align 8, !tbaa !41, !range !47, !noundef !48
  %i.g = trunc nuw i8 %i.f to i1
  br i1 %i.g, label %bb.c, label %bb.e

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  %i.h = call noundef i32 @_ZN4absl12lts_2026052613GetStackTraceEPPvii(ptr noundef nonnull %i.a, i32 noundef 40, i32 noundef 1) ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %i.b) #23
  call void @llvm.memcpy.p0.p0.i64(ptr noundef nonnull align 16 dereferenceable(3) %i.b, ptr noundef nonnull align 1 dereferenceable(3) @.str.47, i64 3, i1 false)
  %.not41 = icmp eq i32 %i.h, 0
  br i1 %.not41, label %._crit_edge, label %.lr.ph.preheader

.lr.ph.preheader:                                 ; preds = %bb.c
  %i.i = zext i32 %i.h to i64
  br label %.lr.ph

.lr.ph:                                           ; preds = %.lr.ph.preheader, %bb.d
  %indvars.iv = phi i64 [ 0, %.lr.ph.preheader ], [ %indvars.iv.next, %bb.d ] ; 2 uses
  %.043 = phi i32 [ 2, %.lr.ph.preheader ], [ %i.r, %bb.d ] ; 2 uses
  %i.j = zext nneg i32 %.043 to i64               ; 2 uses
  %i.k = getelementptr inbounds nuw i8, ptr %i.b, i64 %i.j
  %i.l = sub nsw i64 960, %i.j                    ; 2 uses
  %i.m = getelementptr inbounds nuw [8 x i8], ptr %i.a, i64 %indvars.iv
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !132
  %i.o = call i32 (ptr, i64, ptr, ...) @snprintf(ptr noundef nonnull %i.k, i64 noundef %i.l, ptr noundef nonnull @.str.48, ptr noundef %i.n) #23 ; 3 uses
  %i.p = icmp sgt i32 %i.o, -1
  %i.q = zext nneg i32 %i.o to i64
  %.not38 = icmp ugt i64 %i.l, %i.q
  %or.cond40 = select i1 %i.p, i1 %.not38, i1 false
  br i1 %or.cond40, label %bb.d, label %._crit_edge

bb.d:                                             ; preds = %.lr.ph
  %i.r = add nuw nsw i32 %i.o, %.043
  %indvars.iv.next = add nuw nsw i64 %indvars.iv, 1 ; 2 uses
  %.not = icmp eq i64 %indvars.iv.next, %i.i
  br i1 %.not, label %._crit_edge, label %.lr.ph, !llvm.loop !130

._crit_edge:                                      ; preds = %.lr.ph, %bb.d, %bb.c
  %i.s = zext nneg i32 %1 to i64
  %i.t = getelementptr inbounds nuw [16 x i8], ptr @_ZN4absl12lts_20260526L16event_propertiesE, i64 %i.s
  %i.u = getelementptr inbounds nuw i8, ptr %i.t, i64 8
  %i.v = load ptr, ptr %i.u, align 8, !tbaa !135
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 41
  %i.x = select i1 %i.d, ptr %i.w, ptr @.str.35
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 0, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 452, ptr noundef nonnull @.str.49, ptr noundef %i.v, ptr noundef nonnull %0, ptr noundef nonnull %i.x, ptr noundef nonnull %i.b)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.b) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.e

bb.e:                                             ; preds = %._crit_edge, %bb.b
  %i.y = trunc nuw nsw i32 %1 to i16
  %i.z = lshr i16 933, %i.y
  %i.aa = trunc i16 %i.z to i1
  %or.cond = and i1 %i.d, %i.aa
  br i1 %or.cond, label %bb.f, label %bb.h

bb.f:                                             ; preds = %bb.e
  %i.ab = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !49 ; 2 uses
  %.not39 = icmp eq ptr %i.ac, null
  br i1 %.not39, label %bb.h, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ad = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  %i.ae = load ptr, ptr %i.ad, align 8, !tbaa !50
  call void %i.ac(ptr noundef %i.ae), !inline_history !131
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %bb.f, %bb.e
  call fastcc void @_ZN4absl12lts_20260526L15UnrefSynchEventEPNS0_10SynchEventE(ptr noundef %i.c)
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605265Mutex15try_lock_sharedEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  %i.b = and i64 %i.a, 28
  %.not612 = icmp eq i64 %i.b, 0
  br i1 %.not612, label %.lr.ph, label %.critedge, !prof !137

.lr.ph:                                           ; preds = %bb.a, %bb.b
  %.0414 = phi i32 [ %i.h, %bb.b ], [ 5, %bb.a ]
  %.013 = phi i64 [ %i.g, %bb.b ], [ %i.a, %bb.a ] ; 2 uses
  %i.c = or i64 %.013, 1
  %i.d = add nsw i64 %i.c, 256
  %i.e = cmpxchg ptr %0, i64 %.013, i64 %i.d acquire monotonic, align 8 ; 2 uses
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %.loopexit, label %bb.b

bb.b:                                             ; preds = %.lr.ph
  %i.g = extractvalue { i64, i1 } %i.e, 0         ; 3 uses
  %i.h = add nsw i32 %.0414, -1                   ; 2 uses
  %.not = icmp ne i32 %i.h, 0
  %i.i = and i64 %i.g, 28
  %.not6 = icmp eq i64 %i.i, 0
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_20260526L23CheckForMutexCorruptionElPKc:bb.a

bb.c:                                             ; preds = %bb.b
  %i.g = inttoptr i64 %0 to ptr
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 1988, ptr noundef nonnull @.str.65, ptr noundef %1, ptr noundef %i.g)
  unreachable

bb.d:                                             ; preds = %bb.b
  %i.h = and i64 %0, 36
  %.not8 = icmp eq i64 %i.h, 32
  br i1 %.not8, label %bb.e, label %bb.f, !prof !71

bb.e:                                             ; preds = %bb.d
  %i.i = inttoptr i64 %0 to ptr
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 1991, ptr noundef nonnull @.str.66, ptr noundef %1, ptr noundef %i.i)
  unreachable

bb.f:                                             ; preds = %bb.d, %bb.a
  ret void
}

; Function Attrs: mustprogress uwtable
define internal fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr nofree noundef captures(address, ret: address, provenance) %0, ptr noundef %1, i64 noundef %2, i32 noundef %3) unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %4 = alloca %"class.absl::lts_20260526::base_internal::SchedulingGuard::ScopedEnable", align 4 ; 6 uses
  %i.a = alloca i32, align 4                      ; 3 uses
  %5 = alloca %struct.sched_param, align 4        ; 4 uses
  %i.b = getelementptr inbounds nuw i8, ptr %1, i64 40 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !79   ; 4 uses
  %.not = icmp eq ptr %i.c, null
  br i1 %.not, label %bb.v, label %bb.b

bb.b:                                             ; preds = %bb.a
  store ptr null, ptr %i.b, align 8, !tbaa !79
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i

_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i: ; preds = %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i.backedge, %bb.b
  %.0.i = phi i32 [ 0, %bb.b ], [ %.0.i.be, %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i.backedge ] ; 4 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 5 uses
  %i.e = and i64 %i.d, 1
  %.not.i = icmp eq i64 %i.e, 0
  br i1 %.not.i, label %bb.c, label %.critedge.i

bb.c:                                             ; preds = %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i
  %i.f = or disjoint i64 %i.d, 1
  %i.g = cmpxchg weak ptr %i.c, i64 %i.d, i64 %i.f acquire monotonic, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %bb.r, label %.critedge.i

.critedge.i:                                      ; preds = %bb.c, %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i
  %i.i = load atomic i32, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE acquire, align 64
  %.not.i.i.i.i = icmp eq i32 %i.i, 221
  br i1 %.not.i.i.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i.i, label %bb.d, !prof !14

bb.d:                                             ; preds = %.critedge.i
  tail call fastcc void @"_ZN4absl12lts_2026052613base_internal12CallOnceImplIZNS0_12_GLOBAL__N_115GetMutexGlobalsEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i.i: ; preds = %bb.d, %.critedge.i
  %i.j = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 12), align 4, !tbaa !15 ; 2 uses
  %i.k = load atomic i32, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE acquire, align 64
  %.not.i.i15.i.i = icmp eq i32 %i.k, 221
  br i1 %.not.i.i15.i.i, label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i.i, label %bb.e, !prof !14

bb.e:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i.i
  tail call fastcc void @"_ZN4absl12lts_2026052613base_internal12CallOnceImplIZNS0_12_GLOBAL__N_115GetMutexGlobalsEvE3$_0JEEEvPSt6atomicIjENS1_14SchedulingModeEOT_DpOT0_"(ptr noundef nonnull @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE)
  br label %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i.i

_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i.i: ; preds = %bb.e, %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit.i.i
  %.sroa.03.0.copyload.i.i = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 16), align 16, !tbaa !15
  %.sroa.5.0.copyload.i.i = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_17globalsE, i64 24), align 8, !tbaa !15
  %i.l = icmp slt i32 %.0.i, %i.j
  br i1 %i.l, label %bb.f, label %bb.g

bb.f:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i.i
  %i.m = add nsw i32 %.0.i, 1
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i.backedge

bb.g:                                             ; preds = %_ZN4absl12lts_2026052612_GLOBAL__N_115GetMutexGlobalsEv.exit16.i.i
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #23
  %i.n = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %bb.j, label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.o = getelementptr inbounds nuw i8, ptr %i.n, i64 76 ; 2 uses
  %i.p = load atomic i32, ptr %i.o monotonic, align 4 ; 3 uses
  store i32 %i.p, ptr %4, align 4, !tbaa !17
  %.not4.i.i.i = icmp eq i32 %i.p, 0
  br i1 %.not4.i.i.i, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i.i, label %bb.i

bb.i:                                             ; preds = %bb.h
  store atomic i32 0, ptr %i.o monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i.i

bb.j:                                             ; preds = %bb.g
  store i32 0, ptr %4, align 4, !tbaa !17
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i.i

_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i.i: ; preds = %bb.j, %bb.i, %bb.h
  %i.q = phi i32 [ 0, %bb.h ], [ %i.p, %bb.i ], [ 0, %bb.j ] ; 2 uses
  %i.r = icmp eq i32 %.0.i, %i.j
  br i1 %i.r, label %bb.k, label %bb.n

bb.k:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i.i
  invoke void @AbslInternalMutexYield_lts_20260526()
          to label %bb.l unwind label %bb.m

bb.l:                                             ; preds = %bb.k
  %i.s = add nsw i32 %.0.i, 1
  br label %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i.i

bb.m:                                             ; preds = %bb.n, %bb.k
  %i.t = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %4) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  resume { ptr, i32 } %i.t

bb.n:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i.i
  invoke void @AbslInternalSleepFor_lts_20260526(i64 %.sroa.03.0.copyload.i.i, i32 %.sroa.5.0.copyload.i.i)
          to label %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i.i unwind label %bb.m

_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i.i: ; preds = %bb.n, %bb.l
  %.0.i.i = phi i32 [ %i.s, %bb.l ], [ 0, %bb.n ]
  %i.u = icmp eq i32 %i.q, 0
  br i1 %i.u, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i.i, label %bb.o

bb.o:                                             ; preds = %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i.i
  %i.v = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %bb.p unwind label %bb.q

bb.p:                                             ; preds = %bb.o
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 76
  store atomic i32 %i.q, ptr %i.w monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i.i

bb.q:                                             ; preds = %bb.o
  %i.x = landingpad { ptr, i32 }
          catch ptr null
  %i.y = extractvalue { ptr, i32 } %i.x, 0
  tail call void @__clang_call_terminate(ptr %i.y) #24
  unreachable

_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i.i: ; preds = %bb.p, %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i.i
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #23
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i.backedge

_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i.backedge: ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i.i, %bb.f
  %.0.i.be = phi i32 [ %i.m, %bb.f ], [ %.0.i.i, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i.i ]
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.i, !llvm.loop !141

bb.r:                                             ; preds = %bb.c
  %i.z = getelementptr inbounds nuw i8, ptr %1, i64 32 ; 2 uses
  %i.aa = load ptr, ptr %i.z, align 8, !tbaa !78  ; 5 uses
  %i.ab = getelementptr inbounds nuw i8, ptr %i.aa, i64 32 ; 2 uses
  %i.ac = load ptr, ptr %i.ab, align 8, !tbaa !52
  %.not19.i = icmp eq ptr %i.ac, null
  br i1 %.not19.i, label %bb.t, label %bb.s, !prof !14

bb.s:                                             ; preds = %bb.r
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 2614, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.72)
  unreachable

bb.t:                                             ; preds = %bb.r
  store ptr %1, ptr %i.ab, align 8, !tbaa !52
  %i.ad = and i64 %i.d, -4                        ; 2 uses
  %i.ae = icmp eq i64 %i.ad, 0
  br i1 %i.ae, label %_ZN4absl12lts_20260526L14CondVarEnqueueEPNS0_15SynchWaitParamsE.exit, label %bb.u

bb.u:                                             ; preds = %bb.t
  %i.af = inttoptr i64 %i.ad to ptr               ; 2 uses
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !51
  store ptr %i.ag, ptr %i.aa, align 8, !tbaa !51
  br label %_ZN4absl12lts_20260526L14CondVarEnqueueEPNS0_15SynchWaitParamsE.exit

_ZN4absl12lts_20260526L14CondVarEnqueueEPNS0_15SynchWaitParamsE.exit: ; preds = %bb.t, %bb.u
  %.sink.i = phi ptr [ %i.af, %bb.u ], [ %i.aa, %bb.t ]
  store ptr %i.aa, ptr %.sink.i, align 8, !tbaa !51
  %i.ah = getelementptr inbounds nuw i8, ptr %i.aa, i64 28
  store atomic i32 1, ptr %i.ah monotonic, align 4
  %i.ai = and i64 %i.d, 2
  %i.aj = load ptr, ptr %i.z, align 8, !tbaa !78
  %i.ak = ptrtoint ptr %i.aj to i64
  %i.al = or i64 %i.ai, %i.ak
  store atomic i64 %i.al, ptr %i.c release, align 8
  br label %bb.bp

bb.v:                                             ; preds = %bb.a
  %i.am = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.an = load ptr, ptr %i.am, align 8, !tbaa !78 ; 35 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %i.an, i64 32 ; 6 uses
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 2 uses
  %i.aq = icmp eq ptr %i.ap, null
  %i.ar = icmp eq ptr %i.ap, %1
  %or.cond = or i1 %i.aq, %i.ar
  br i1 %or.cond, label %.critedge, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.as = getelementptr inbounds nuw i8, ptr %i.an, i64 20
  %i.at = load i8, ptr %i.as, align 4, !tbaa !70, !range !47, !noundef !48
  %6 = trunc nuw i8 %i.at to i1
  br i1 %6, label %.critedge, label %bb.x, !prof !14

bb.x:                                             ; preds = %bb.w
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 938, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.67, ptr noundef nonnull @.str.9)
  unreachable

.critedge:                                        ; preds = %bb.v, %bb.w
  store ptr %1, ptr %i.ao, align 8, !tbaa !52
  %i.au = getelementptr inbounds nuw i8, ptr %i.an, i64 8 ; 3 uses
  store ptr null, ptr %i.au, align 8, !tbaa !65
  %i.av = getelementptr inbounds nuw i8, ptr %i.an, i64 16
  store i8 1, ptr %i.av, align 8, !tbaa !83
  %i.aw = getelementptr inbounds nuw i8, ptr %i.an, i64 17
  store i8 0, ptr %i.aw, align 1, !tbaa !84
  %i.ax = getelementptr inbounds nuw i8, ptr %i.an, i64 18
  %i.ay = trunc i32 %3 to i8
  %i.az = lshr i8 %i.ay, 1
  %i.ba = and i8 %i.az, 1
  store i8 %i.ba, ptr %i.ax, align 2, !tbaa !85
  %i.bb = and i32 %3, 4
  %i.bc = icmp eq i32 %i.bb, 0
  br i1 %i.bc, label %bb.y, label %bb.af

bb.y:                                             ; preds = %.critedge
  %i.bd = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.be = icmp eq ptr %i.bd, null
  br i1 %i.be, label %bb.z, label %bb.aa

bb.z:                                             ; preds = %bb.y
  %i.bf = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !80 ; 2 uses
  %i.bg = extractvalue { i64, i64 } %i.bf, 0
  %i.bh = extractvalue { i64, i64 } %i.bf, 1
  %i.bi = shl i64 %i.bh, 32
  %i.bj = or i64 %i.bi, %i.bg
  br label %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit

bb.aa:                                            ; preds = %bb.y
  %i.bk = tail call noundef i64 %i.bd(), !inline_history !3
  br label %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit

_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit: ; preds = %bb.z, %bb.aa
  %.0.in.i = phi i64 [ %i.bj, %bb.z ], [ %i.bk, %bb.aa ]
  %.0.i105 = ashr i64 %.0.in.i, 1                 ; 2 uses
  %i.bl = getelementptr inbounds nuw i8, ptr %i.an, i64 48 ; 2 uses
  %i.bm = load i64, ptr %i.bl, align 8, !tbaa !143
  %i.bn = icmp slt i64 %i.bm, %.0.i105
  br i1 %i.bn, label %bb.ab, label %bb.af

bb.ab:                                            ; preds = %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a) #23
  call void @llvm.lifetime.start.p0(ptr nonnull %5) #23
  %i.bo = tail call i64 @pthread_self() #27
  %i.bp = call i32 @pthread_getschedparam(i64 noundef %i.bo, ptr noundef nonnull %i.a, ptr noundef nonnull %5) #23 ; 2 uses
  %.not97 = icmp eq i32 %i.bp, 0
  br i1 %.not97, label %bb.ad, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 44), i32 noundef 956, ptr noundef nonnull @.str.68, i32 noundef %i.bp)
  br label %bb.ae

bb.ad:                                            ; preds = %bb.ab
  %i.bq = load i32, ptr %5, align 4, !tbaa !145
  %i.br = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  store i32 %i.bq, ptr %i.br, align 8, !tbaa !60
  %i.bs = call noundef double @_ZN4absl12lts_2026052613base_internal18UnscaledCycleClock9FrequencyEv()
  %i.bt = fmul double %i.bs, 5.000000e-01
  %i.bu = fptosi double %i.bt to i64
  %i.bv = add nsw i64 %.0.i105, %i.bu
  store i64 %i.bv, ptr %i.bl, align 8, !tbaa !143
  br label %bb.ae

bb.ae:                                            ; preds = %bb.ad, %bb.ac
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %i.a) #23
  br label %bb.af

bb.af:                                            ; preds = %_ZN4absl12lts_2026052613base_internal10CycleClock3NowEv.exit, %bb.ae, %.critedge
  %i.bw = icmp eq ptr %0, null
  br i1 %i.bw, label %bb.ag, label %bb.ah

bb.ag:                                            ; preds = %bb.af
  store ptr %i.an, ptr %i.an, align 8, !tbaa !51
  %i.bx = getelementptr inbounds nuw i8, ptr %i.an, i64 40
  store i64 %2, ptr %i.bx, align 8, !tbaa !66
  %i.by = getelementptr inbounds nuw i8, ptr %i.an, i64 19
  store i8 0, ptr %i.by, align 1, !tbaa !67
  br label %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit114.thread

bb.ah:                                            ; preds = %bb.af
  %i.bz = getelementptr inbounds nuw i8, ptr %i.an, i64 24
  %i.ca = load i32, ptr %i.bz, align 8, !tbaa !60 ; 7 uses
  %i.cb = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.cc = load i32, ptr %i.cb, align 8, !tbaa !60 ; 2 uses
  %i.cd = icmp sgt i32 %i.ca, %i.cc
  br i1 %i.cd, label %bb.ai, label %bb.bc

bb.ai:                                            ; preds = %bb.ah
  %i.ce = getelementptr inbounds nuw i8, ptr %0, i64 19
  %i.cf = load i8, ptr %i.ce, align 1, !tbaa !67, !range !47, !noundef !48
  %i.cg = trunc nuw i8 %i.cf to i1
  br i1 %i.cg, label %bb.aj, label %.preheader

.preheader:                                       ; preds = %bb.ai, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit
  %.090 = phi ptr [ %.1.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %0, %bb.ai ] ; 2 uses
  %i.ch = load ptr, ptr %.090, align 8, !tbaa !51 ; 4 uses
  %i.ci = getelementptr inbounds nuw i8, ptr %i.ch, i64 8 ; 2 uses
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !65 ; 4 uses
  %.not.i106 = icmp eq ptr %i.cj, null
  br i1 %.not.i106, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %.preheader
  %i.ck = getelementptr inbounds nuw i8, ptr %i.cj, i64 8
  %i.cl = load ptr, ptr %i.ck, align 8, !tbaa !65 ; 2 uses
  %.not1415.i = icmp eq ptr %i.cl, null
  br i1 %.not1415.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.cm = phi ptr [ %i.cp, %.lr.ph.i ], [ %i.cl, %.preheader.i ] ; 4 uses
  %.017.i = phi ptr [ %i.cm, %.lr.ph.i ], [ %i.cj, %.preheader.i ]
  %.01116.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %i.ch, %.preheader.i ]
  %i.cn = getelementptr inbounds nuw i8, ptr %.01116.i, i64 8
  store ptr %i.cm, ptr %i.cn, align 8, !tbaa !65
  %i.co = getelementptr inbounds nuw i8, ptr %i.cm, i64 8
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !65 ; 2 uses
  %.not14.i = icmp eq ptr %i.cp, null
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.cj, %.preheader.i ], [ %i.cm, %.lr.ph.i ] ; 2 uses
  store ptr %.0.lcssa.i, ptr %i.ci, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit: ; preds = %.preheader, %._crit_edge.i
  %.1.i = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %i.ch, %.preheader ] ; 2 uses
  %i.cq = getelementptr inbounds nuw i8, ptr %.1.i, i64 24
  %i.cr = load i32, ptr %i.cq, align 8, !tbaa !60
  %.not98 = icmp sgt i32 %i.ca, %i.cr
  br i1 %.not98, label %select.unfold, label %.preheader, !llvm.loop !142

bb.aj:                                            ; preds = %bb.ai
  %i.cs = load ptr, ptr %1, align 8, !tbaa !59
  %i.ct = icmp eq ptr %i.cs, @_ZN4absl12lts_20260526L11kExclusiveSE
  br i1 %i.ct, label %bb.ak, label %bb.bc

bb.ak:                                            ; preds = %bb.aj
  %i.cu = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !61
  %i.cw = icmp eq ptr %i.cv, null
  br i1 %i.cw, label %.select.unfold_crit_edge, label %bb.bc

.select.unfold_crit_edge:                         ; preds = %bb.ak
  %.pre132 = load ptr, ptr %0, align 8, !tbaa !51
  br label %select.unfold

select.unfold:                                    ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, %.select.unfold_crit_edge
  %i.cx = phi ptr [ %.pre132, %.select.unfold_crit_edge ], [ %i.ch, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ]
  %.091 = phi ptr [ %0, %.select.unfold_crit_edge ], [ %.090, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ] ; 8 uses
  store ptr %i.cx, ptr %i.an, align 8, !tbaa !51
  store ptr %i.an, ptr %.091, align 8, !tbaa !51
  %i.cy = getelementptr inbounds nuw i8, ptr %.091, i64 8 ; 2 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !65
  %i.da = icmp eq ptr %i.cz, null
  br i1 %i.da, label %.critedge104, label %bb.al

bb.al:                                            ; preds = %select.unfold
  %i.db = getelementptr inbounds nuw i8, ptr %.091, i64 32
  %i.dc = load ptr, ptr %i.db, align 8, !tbaa !52 ; 2 uses
  %i.dd = load ptr, ptr %i.dc, align 8, !tbaa !59
  %i.de = load ptr, ptr %i.ao, align 8, !tbaa !52 ; 2 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !59
  %i.dg = icmp eq ptr %i.dd, %i.df
  br i1 %i.dg, label %bb.am, label %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.thread

bb.am:                                            ; preds = %bb.al
  %i.dh = getelementptr inbounds nuw i8, ptr %.091, i64 24
  %i.di = load i32, ptr %i.dh, align 8, !tbaa !60
  %i.dj = icmp eq i32 %i.di, %i.ca
  br i1 %i.dj, label %bb.an, label %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.thread

bb.an:                                            ; preds = %bb.am
  %i.dk = getelementptr inbounds nuw i8, ptr %i.dc, i64 8
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !61 ; 5 uses
  %i.dm = getelementptr inbounds nuw i8, ptr %i.de, i64 8
  %i.dn = load ptr, ptr %i.dm, align 8, !tbaa !61 ; 5 uses
  %i.do = icmp eq ptr %i.dl, null
  %i.dp = icmp eq ptr %i.dn, null
  %or.cond.i.i = or i1 %i.do, %i.dp
  br i1 %or.cond.i.i, label %.split155, label %bb.ao

.split155:                                        ; preds = %bb.an
  %i.dq = icmp eq ptr %i.dl, %i.dn
  br i1 %i.dq, label %.critedge104, label %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.thread, !prof !146

bb.ao:                                            ; preds = %bb.an
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dl, i64 16
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !63
  %i.dt = getelementptr inbounds nuw i8, ptr %i.dn, i64 16
  %i.du = load ptr, ptr %i.dt, align 8, !tbaa !63
  %i.dv = icmp eq ptr %i.ds, %i.du
  br i1 %i.dv, label %bb.ap, label %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.thread

end_hunk_1
