Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/abseil-cpp/original/mutex?download=true
inline.NumInlined: 284
inline.NumDeleted: 115
begin_hunk_0_@_ZN4absl12lts_202605265Mutex20LockSlowWithDeadlineEPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEi:bb.a
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
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 1604, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
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
  %i.t = trunc nuw i8 %i.s to i1
  br i1 %i.t, label %.outer.preheader, label %.invoke, !prof !14

.outer.preheader:                                 ; preds = %bb.h, %bb.g, %bb.i
  br label %.outer

.outer:                                           ; preds = %.outer.preheader, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0158.ph = phi i32 [ %i.hd, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  %.0152.ph = phi ptr [ %.0152, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0146.ph = phi ptr [ %.0146, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0144.ph = phi ptr [ %.0144, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0140.ph = phi i64 [ %.0140, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, %bb.aq
  %.0152.ph658 = phi ptr [ %.2154268, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1124363, %bb.aq ]
  %.0146.ph659 = phi ptr [ %.2148269, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1121365, %bb.aq ]
  %.0140.ph660 = phi i64 [ %.2142270, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ 32, %bb.aq ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %.0152 = phi ptr [ %.0152.ph, %.outer ], [ %.0152.ph658, %._crit_edge.loopexit ] ; 5 uses
  %.0146 = phi ptr [ %.0146.ph, %.outer ], [ %.0146.ph659, %._crit_edge.loopexit ] ; 4 uses
  %.0144 = phi ptr [ %.0144.ph, %.outer ], [ %i.bh, %._crit_edge.loopexit ] ; 11 uses
  %.0140 = phi i64 [ %.0140.ph, %.outer ], [ %.0140.ph660, %._crit_edge.loopexit ] ; 3 uses
  %i.u = load atomic i64, ptr %0 monotonic, align 8 ; 23 uses
  %i.v = and i64 %i.u, 8
  %.not182 = icmp eq i64 %i.v, 0
  br i1 %.not182, label %bb.k, label %bb.j

bb.j:                                             ; preds = %._crit_edge
  %i.w = and i64 %i.u, 6
  %i.x = icmp ne i64 %i.w, 4
  %or.cond = and i1 %i.l, %i.x
  br i1 %or.cond, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225, label %bb.k

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit225: ; preds = %bb.j
  %i.y = and i64 %i.u, -41
  %i.z = cmpxchg ptr %0, i64 %i.u, i64 %i.y release monotonic, align 8
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %.loopexit278, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.k:                                             ; preds = %bb.j, %._crit_edge
  %i.ab = and i64 %i.u, 5
  %i.ac = icmp eq i64 %i.ab, 1
  %or.cond3 = and i1 %i.l, %i.ac
  br i1 %or.cond3, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224, label %bb.l

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit224: ; preds = %bb.k
  %i.ad = icmp ult i64 %i.u, 512
  %.neg = select i1 %i.ad, i64 -257, i64 -256
  %i.ae = add i64 %.neg, %i.u
  %i.af = cmpxchg ptr %0, i64 %i.u, i64 %i.ae release monotonic, align 8
  %i.ag = extractvalue { i64, i1 } %i.af, 1
  br i1 %i.ag, label %.loopexit278, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.l:                                             ; preds = %bb.k
  %i.ah = and i64 %i.u, 64
  %i.ai = icmp eq i64 %i.ah, 0
  br i1 %i.ai, label %bb.m, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.m:                                             ; preds = %bb.l
  %i.aj = or disjoint i64 %i.u, 64
  %i.ak = cmpxchg ptr %0, i64 %i.u, i64 %i.aj acquire monotonic, align 8
  %i.al = extractvalue { i64, i1 } %i.ak, 1
  br i1 %i.al, label %bb.n, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.n:                                             ; preds = %bb.m
  %i.am = and i64 %i.u, 4
  %i.an = icmp eq i64 %i.am, 0
  br i1 %i.an, label %bb.o, label %bb.s

bb.o:                                             ; preds = %bb.n
  br i1 %i.l, label %.invoke, label %.preheader, !prof !71

.preheader:                                       ; preds = %bb.o
  %i.ao = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.p

bb.p:                                             ; preds = %.preheader, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit
  %.0132 = phi i1 [ %.1133, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ], [ true, %.preheader ]
  %i.ap = load atomic i64, ptr %0 monotonic, align 8 ; 6 uses
  %i.aq = icmp sgt i64 %i.ap, 255
  %i.ar = add nsw i64 %i.ap, -256
  %i.as = select i1 %i.aq, i64 %i.ar, i64 %i.ap   ; 2 uses
  br i1 %.0132, label %bb.q, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

bb.q:                                             ; preds = %bb.p
  %i.at = load ptr, ptr %i.ao, align 8, !tbaa !79
  %i.au = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.as, i32 noundef 2)
          to label %bb.r unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.r:                                             ; preds = %bb.q
  %i.av = icmp eq ptr %i.at, null
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %bb.r, %bb.p
  %.1133 = phi i1 [ %i.av, %bb.r ], [ false, %bb.p ]
  %.0131 = phi ptr [ %i.au, %bb.r ], [ null, %bb.p ] ; 2 uses
  %i.aw = and i64 %i.ap, -504
  %i.ax = icmp eq i64 %i.aw, 0
  %i.ay = select i1 %i.ax, i64 -34, i64 -41
  %i.az = and i64 %i.ap, 159
  %i.ba = and i64 %i.az, %i.ay
  %.not206 = icmp eq ptr %.0131, null
  %i.bb = ptrtoint ptr %.0131 to i64
  %i.bc = or i64 %i.bb, 4
  %i.bd = and i64 %i.as, -256
  %.pn207 = select i1 %.not206, i64 %i.bd, i64 %i.bc
  %.0134 = or i64 %.pn207, %i.ba
  %i.be = cmpxchg weak ptr %0, i64 %i.ap, i64 %.0134 release monotonic, align 8
  %i.bf = extractvalue { i64, i1 } %i.be, 1
  br i1 %i.bf, label %.loopexit278, label %bb.p, !llvm.loop !116

bb.s:                                             ; preds = %bb.n
  %i.bg = and i64 %i.u, -256
  %i.bh = inttoptr i64 %i.bg to ptr               ; 21 uses
  %i.bi = and i64 %i.u, 1
  %.not183 = icmp eq i64 %i.bi, 0
  br i1 %.not183, label %bb.z, label %bb.t

bb.t:                                             ; preds = %bb.s
  %i.bj = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bk = load i64, ptr %i.bj, align 8, !tbaa !66 ; 2 uses
  %i.bl = and i64 %i.bk, -256
  %i.bm = icmp sgt i64 %i.bl, 256
  br i1 %i.bm, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  %i.bo = add nsw i64 %i.bk, -256
  store i64 %i.bo, ptr %i.bn, align 8, !tbaa !66
  br i1 %i.l, label %bb.y, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bp = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bh, ptr noundef nonnull %1, i64 noundef %i.u, i32 noundef 2)
          to label %bb.w unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp ; 2 uses

bb.w:                                             ; preds = %bb.v
  %.not201 = icmp eq ptr %i.bp, null
  br i1 %.not201, label %.invoke, label %bb.x, !prof !71

bb.x:                                             ; preds = %bb.w
  %i.bq = ptrtoint ptr %i.bp to i64
  %i.br = and i64 %i.u, 191
  %i.bs = or i64 %i.br, %i.bq
  br label %bb.y

bb.y:                                             ; preds = %bb.x, %bb.u
  %.0128 = phi i64 [ %i.bs, %bb.x ], [ %i.u, %bb.u ]
  store atomic i64 %.0128, ptr %0 release, align 8
  br label %.loopexit278

bb.z:                                             ; preds = %bb.s, %bb.t
  %i.bt = icmp eq ptr %.0144, null                ; 2 uses
  br i1 %i.bt, label %.critedge219.thread, label %bb.aa

bb.aa:                                            ; preds = %bb.z
  %i.bu = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  %i.bv = load i8, ptr %i.bu, align 1, !tbaa !67, !range !47, !noundef !48
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %.critedge219, label %.invoke, !prof !14

.critedge219:                                     ; preds = %bb.aa
  %i.bx = getelementptr inbounds nuw i8, ptr %.0144, i64 16 ; 2 uses
  %i.by = load i8, ptr %i.bx, align 8, !tbaa !83, !range !47, !noundef !48
  %i.bz = trunc nuw i8 %i.by to i1
  br i1 %i.bz, label %.critedge219.thread, label %bb.ab

bb.ab:                                            ; preds = %.critedge219
  store i8 1, ptr %i.bx, align 8, !tbaa !83
  %i.ca = getelementptr inbounds nuw i8, ptr %.0144, i64 8 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !65
  %.not185 = icmp eq ptr %i.cb, null
  br i1 %.not185, label %bb.ac, label %.invoke, !prof !14

bb.ac:                                            ; preds = %bb.ab
  %.not186 = icmp eq ptr %.0144, %i.bh
  br i1 %.not186, label %.critedge219.thread, label %bb.ad

bb.ad:                                            ; preds = %bb.ac
  %i.cc = load ptr, ptr %.0144, align 8, !tbaa !51 ; 2 uses
  %i.cd = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_(ptr noundef nonnull %.0144, ptr noundef %i.cc)
  br i1 %i.cd, label %bb.ae, label %.critedge219.thread

bb.ae:                                            ; preds = %bb.ad
  store ptr %i.cc, ptr %i.ca, align 8, !tbaa !65
  br label %.critedge219.thread

.critedge219.thread:                              ; preds = %bb.z, %bb.ac, %bb.ad, %bb.ae, %.critedge219
  %i.ce = load ptr, ptr %i.bh, align 256, !tbaa !51 ; 2 uses
  %i.cf = getelementptr inbounds nuw i8, ptr %i.ce, i64 32
  %i.cg = load ptr, ptr %i.cf, align 8, !tbaa !52 ; 2 uses
  %i.ch = load ptr, ptr %i.cg, align 8, !tbaa !59
  %i.ci = icmp eq ptr %i.ch, @_ZN4absl12lts_20260526L11kExclusiveSE
  br i1 %i.ci, label %bb.af, label %bb.ag

bb.af:                                            ; preds = %.critedge219.thread
  %i.cj = getelementptr inbounds nuw i8, ptr %i.cg, i64 8
  %i.ck = load ptr, ptr %i.cj, align 8, !tbaa !61
  %i.cl = icmp eq ptr %i.ck, null
  br i1 %i.cl, label %.thread486, label %bb.ag

.thread486:                                       ; preds = %bb.af
  %i.cm = getelementptr inbounds nuw i8, ptr %i.ce, i64 17
  store i8 1, ptr %i.cm, align 1, !tbaa !84
  br label %.preheader274.preheader

bb.ag:                                            ; preds = %bb.af, %.critedge219.thread
  %.not187 = icmp eq ptr %.0152, null
  br i1 %.not187, label %bb.ai, label %bb.ah

bb.ah:                                            ; preds = %bb.ag
  %i.cn = getelementptr inbounds nuw i8, ptr %.0152, i64 32
  %i.co = load ptr, ptr %i.cn, align 8, !tbaa !52
  %i.cp = load ptr, ptr %i.co, align 8, !tbaa !59
  %i.cq = icmp eq ptr %i.cp, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.cr = icmp eq ptr %.0144, %i.bh
  %or.cond220 = or i1 %i.cr, %i.cq
  br i1 %or.cond220, label %bb.aw, label %bb.ai

bb.ai:                                            ; preds = %bb.ah, %bb.ag
  %i.cs = icmp eq ptr %.0144, %i.bh
  br i1 %i.cs, label %bb.aj, label %bb.an

bb.aj:                                            ; preds = %bb.ai
  %i.ct = and i64 %i.u, -106
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bh, i64 40
  store i64 0, ptr %i.cu, align 8, !tbaa !66
  %i.cv = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  store i8 0, ptr %i.cv, align 1, !tbaa !67
  br i1 %i.l, label %bb.am, label %bb.ak

bb.ak:                                            ; preds = %bb.aj
  %i.cw = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bh, ptr noundef nonnull %1, i64 noundef %i.u, i32 noundef 2)
          to label %bb.al unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.al:                                            ; preds = %bb.ak
  %i.cx = and i64 %i.u, 150
  %i.cy = ptrtoint ptr %i.cw to i64
  %.0126 = or i64 %i.cx, %i.cy
  br label %bb.am

bb.am:                                            ; preds = %bb.al, %bb.aj
  %.1127 = phi i64 [ %.0126, %bb.al ], [ %i.ct, %bb.aj ]
  store atomic i64 %.1127, ptr %0 release, align 8
  br label %.loopexit278

bb.an:                                            ; preds = %bb.ai
  %..0144 = select i1 %i.bt, ptr %i.bh, ptr %.0144
  %.0123 = load ptr, ptr %..0144, align 8, !tbaa !51
  %i.cz = getelementptr inbounds nuw i8, ptr %i.bh, i64 16
  store i8 0, ptr %i.cz, align 16, !tbaa !83
  %i.da = getelementptr inbounds nuw i8, ptr %i.bh, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !65
  %.not188 = icmp eq ptr %i.db, null
  br i1 %.not188, label %.lr.ph.preheader, label %.invoke, !prof !14

.lr.ph.preheader:                                 ; preds = %bb.an
  %i.dc = getelementptr inbounds nuw i8, ptr %i.bh, i64 19
  store i8 1, ptr %i.dc, align 1, !tbaa !67
  store atomic i64 %i.u, ptr %0 release, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.av, %.lr.ph.preheader
  %.1121365 = phi ptr [ %.2122, %bb.av ], [ %.0144, %.lr.ph.preheader ] ; 2 uses
  %.1124363 = phi ptr [ %i.ed, %bb.av ], [ %.0123, %.lr.ph.preheader ] ; 10 uses
  %.1141362 = phi i64 [ %.2142270, %bb.av ], [ %.0140, %.lr.ph.preheader ] ; 3 uses
  %.1147361 = phi ptr [ %.2148269, %bb.av ], [ %.0146, %.lr.ph.preheader ] ; 4 uses
  %.1153360 = phi ptr [ %.2154268, %bb.av ], [ %.0152, %.lr.ph.preheader ] ; 5 uses
  %i.dd = getelementptr inbounds nuw i8, ptr %.1124363, i64 17 ; 4 uses
  store i8 0, ptr %i.dd, align 1, !tbaa !84
  %i.de = getelementptr inbounds nuw i8, ptr %.1124363, i64 32 ; 3 uses
  %i.df = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.dg = getelementptr inbounds nuw i8, ptr %i.df, i64 8
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !61 ; 3 uses
  %i.di = icmp eq ptr %i.dh, null
  br i1 %i.di, label %bb.ap, label %bb.ao

bb.ao:                                            ; preds = %.lr.ph
  %i.dj = getelementptr inbounds nuw i8, ptr %i.dh, i64 16
  %i.dk = load ptr, ptr %i.dj, align 8, !tbaa !63
  %i.dl = invoke noundef zeroext i1 %i.dk(ptr noundef nonnull align 8 dereferenceable(32) %i.dh)
          to label %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !117

_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit: ; preds = %bb.ao
  br i1 %i.dl, label %bb.ap, label %bb.at

bb.ap:                                            ; preds = %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit, %.lr.ph
  %i.dm = icmp eq ptr %.1153360, null
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.dd, align 1, !tbaa !84
  %i.dn = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.do = load ptr, ptr %i.dn, align 8, !tbaa !59
  %i.dp = icmp eq ptr %i.do, @_ZN4absl12lts_20260526L11kExclusiveSE
  br i1 %i.dp, label %._crit_edge.loopexit, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

bb.ar:                                            ; preds = %bb.ap
  %i.dq = load ptr, ptr %i.de, align 8, !tbaa !52
  %i.dr = load ptr, ptr %i.dq, align 8, !tbaa !59
  %i.ds = icmp eq ptr %i.dr, @_ZN4absl12lts_20260526L8kSharedSE
  br i1 %i.ds, label %bb.as, label %bb.at

bb.as:                                            ; preds = %bb.ar
  store i8 1, ptr %i.dd, align 1, !tbaa !84
  br label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

bb.at:                                            ; preds = %bb.ar, %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit
  %.2142.ph = phi i64 [ 32, %bb.ar ], [ %.1141362, %_ZN4absl12lts_20260526L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ] ; 3 uses
  %i.dt = load i8, ptr %i.dd, align 1, !tbaa !84
  %i.du = trunc nuw i8 %i.dt to i1
  br i1 %i.du, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %bb.au

bb.au:                                            ; preds = %bb.at
  %i.dv = getelementptr inbounds nuw i8, ptr %.1124363, i64 8 ; 2 uses
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !65 ; 4 uses
  %.not.i = icmp eq ptr %i.dw, null
  br i1 %.not.i, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.au
  %i.dx = getelementptr inbounds nuw i8, ptr %i.dw, i64 8
  %i.dy = load ptr, ptr %i.dx, align 8, !tbaa !65 ; 2 uses
  %.not1415.i = icmp eq ptr %i.dy, null
  br i1 %.not1415.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dz = phi ptr [ %i.ec, %.lr.ph.i ], [ %i.dy, %.preheader.i ] ; 4 uses
  %.017.i = phi ptr [ %i.dz, %.lr.ph.i ], [ %i.dw, %.preheader.i ]
  %.01116.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.1124363, %.preheader.i ]
  %i.ea = getelementptr inbounds nuw i8, ptr %.01116.i, i64 8
  store ptr %i.dz, ptr %i.ea, align 8, !tbaa !65
  %i.eb = getelementptr inbounds nuw i8, ptr %i.dz, i64 8
  %i.ec = load ptr, ptr %i.eb, align 8, !tbaa !65 ; 2 uses
  %.not14.i = icmp eq ptr %i.ec, null
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.dw, %.preheader.i ], [ %i.dz, %.lr.ph.i ] ; 2 uses
  store ptr %.0.lcssa.i, ptr %i.dv, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit: ; preds = %bb.as, %bb.aq, %._crit_edge.i, %bb.au, %bb.at
  %.2142270 = phi i64 [ %.2142.ph, %._crit_edge.i ], [ %.2142.ph, %bb.at ], [ %.2142.ph, %bb.au ], [ %.1141362, %bb.aq ], [ %.1141362, %bb.as ] ; 2 uses
  %.2148269 = phi ptr [ %.1147361, %._crit_edge.i ], [ %.1147361, %bb.at ], [ %.1147361, %bb.au ], [ %.1121365, %bb.aq ], [ %.1147361, %bb.as ] ; 2 uses
  %.2154268 = phi ptr [ %.1153360, %._crit_edge.i ], [ %.1153360, %bb.at ], [ %.1153360, %bb.au ], [ %.1124363, %bb.aq ], [ %.1153360, %bb.as ] ; 2 uses
  %.2122 = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.1124363, %bb.at ], [ %.1124363, %bb.au ], [ %.1124363, %bb.aq ], [ %.1124363, %bb.as ] ; 3 uses
  %.not190 = icmp eq ptr %.2122, %i.bh
  br i1 %.not190, label %._crit_edge.loopexit, label %bb.av

bb.av:                                            ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit
  %i.ed = load ptr, ptr %.2122, align 8, !tbaa !51
  br label %.lr.ph

bb.aw:                                            ; preds = %bb.ah
  %i.ee = icmp eq ptr %.0146, null
  %spec.select221 = select i1 %i.ee, ptr %i.bh, ptr %.0146 ; 2 uses
  %.pre = load ptr, ptr %spec.select221, align 8, !tbaa !51
  %i.ef = icmp eq ptr %.pre, %.0152
  br i1 %i.ef, label %.preheader274.preheader, label %.invoke, !prof !124

.preheader274.preheader:                          ; preds = %.thread486, %bb.aw
  %.4491 = phi i64 [ 32, %.thread486 ], [ %.0140, %bb.aw ]
  %.4150490 = phi ptr [ %i.bh, %.thread486 ], [ %spec.select221, %bb.aw ]
  br label %.preheader274

.preheader274:                                    ; preds = %.preheader274.preheader, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i
  %.024.i = phi ptr [ %.12532.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %.4150490, %.preheader274.preheader ] ; 8 uses
  %.022.i = phi ptr [ %.12333.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.a, %.preheader274.preheader ] ; 4 uses
  %.019.i = phi i1 [ %.12034.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ false, %.preheader274.preheader ]
  %.0.i = phi ptr [ %.135.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.bh, %.preheader274.preheader ] ; 13 uses
  %.021.i = load ptr, ptr %.024.i, align 8, !tbaa !51 ; 10 uses
  %i.eg = getelementptr inbounds nuw i8, ptr %.021.i, i64 17
  %i.eh = load i8, ptr %i.eg, align 1, !tbaa !84, !range !47, !noundef !48
  %i.ei = trunc nuw i8 %i.eh to i1
  br i1 %i.ei, label %bb.ax, label %bb.bj

bb.ax:                                            ; preds = %.preheader274
  %i.ej = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 3 uses
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !65
  %.not.i227 = icmp eq ptr %i.ek, null
  br i1 %.not.i227, label %bb.ay, label %.invoke, !prof !14

bb.ay:                                            ; preds = %bb.ax
  %i.el = load ptr, ptr %.021.i, align 8, !tbaa !51 ; 5 uses
  store ptr %i.el, ptr %.024.i, align 8, !tbaa !51
  %i.em = icmp eq ptr %.0.i, %.021.i
  %i.en = icmp eq ptr %.024.i, %.0.i              ; 2 uses
  br i1 %i.em, label %bb.az, label %bb.ba

bb.az:                                            ; preds = %bb.ay
  %i.eo = select i1 %i.en, ptr null, ptr %.024.i
  br label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.ba:                                            ; preds = %bb.ay
  br i1 %i.en, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i, label %bb.bb

bb.bb:                                            ; preds = %bb.ba
  %i.ep = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.eq = load ptr, ptr %i.ep, align 8, !tbaa !52 ; 2 uses
  %i.er = load ptr, ptr %i.eq, align 8, !tbaa !59
  %i.es = getelementptr inbounds nuw i8, ptr %i.el, i64 32
  %i.et = load ptr, ptr %i.es, align 8, !tbaa !52 ; 2 uses
  %i.eu = load ptr, ptr %i.et, align 8, !tbaa !59
  %i.ev = icmp eq ptr %i.er, %i.eu
  br i1 %i.ev, label %bb.bc, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ew = getelementptr inbounds nuw i8, ptr %.024.i, i64 24
  %i.ex = load i32, ptr %i.ew, align 8, !tbaa !60
  %i.ey = getelementptr inbounds nuw i8, ptr %i.el, i64 24
  %i.ez = load i32, ptr %i.ey, align 8, !tbaa !60
  %i.fa = icmp eq i32 %i.ex, %i.ez
  br i1 %i.fa, label %bb.bd, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.fb = getelementptr inbounds nuw i8, ptr %i.eq, i64 8
  %i.fc = load ptr, ptr %i.fb, align 8, !tbaa !61 ; 5 uses
  %i.fd = getelementptr inbounds nuw i8, ptr %i.et, i64 8
  %i.fe = load ptr, ptr %i.fd, align 8, !tbaa !61 ; 5 uses
  %i.ff = icmp eq ptr %i.fc, null
  %i.fg = icmp eq ptr %i.fe, null
  %or.cond.i.i.i.i = or i1 %i.ff, %i.fg
  br i1 %or.cond.i.i.i.i, label %.split.i.i, label %bb.be

.split.i.i:                                       ; preds = %bb.bd
  %i.fh = icmp eq ptr %i.fc, %i.fe
  br i1 %i.fh, label %bb.bg, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.fi = getelementptr inbounds nuw i8, ptr %i.fc, i64 16
  %i.fj = load ptr, ptr %i.fi, align 8, !tbaa !63
  %i.fk = getelementptr inbounds nuw i8, ptr %i.fe, i64 16
  %i.fl = load ptr, ptr %i.fk, align 8, !tbaa !63
  %i.fm = icmp eq ptr %i.fj, %i.fl
  br i1 %i.fm, label %bb.bf, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bf:                                            ; preds = %bb.be
  %i.fn = getelementptr inbounds nuw i8, ptr %i.fc, i64 24
  %i.fo = load ptr, ptr %i.fn, align 8, !tbaa !64
  %i.fp = getelementptr inbounds nuw i8, ptr %i.fe, i64 24
  %i.fq = load ptr, ptr %i.fp, align 8, !tbaa !64
  %i.fr = icmp eq ptr %i.fo, %i.fq
  br i1 %i.fr, label %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i: ; preds = %bb.bf
  %i.fs = load i128, ptr %i.fc, align 1
  %i.ft = load i128, ptr %i.fe, align 1
  %i.fu = icmp ne i128 %i.fs, %i.ft
  %i.fv = zext i1 %i.fu to i32
  %.not.i.i.i.i = icmp eq i32 %i.fv, 0
  br i1 %.not.i.i.i.i, label %bb.bg, label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bg:                                            ; preds = %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, %.split.i.i
  %i.fw = getelementptr inbounds nuw i8, ptr %i.el, i64 8
  %i.fx = load ptr, ptr %i.fw, align 8, !tbaa !65 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fx, null
  br i1 %.not22.i.i, label %bb.bi, label %bb.bh

bb.bh:                                            ; preds = %bb.bg
  store ptr %i.fx, ptr %i.ej, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bi:                                            ; preds = %bb.bg
  store ptr %i.el, ptr %i.ej, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i: ; preds = %bb.bi, %bb.bh, %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, %bb.bf, %bb.be, %.split.i.i, %bb.bc, %bb.bb, %bb.ba, %bb.az
  %.0.i.i = phi ptr [ %i.eo, %bb.az ], [ %.0.i, %bb.bh ], [ %.0.i, %bb.bi ], [ %.0.i, %_ZN4absl12lts_20260526L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i ], [ %.0.i, %bb.ba ], [ %.0.i, %.split.i.i ], [ %.0.i, %bb.bc ], [ %.0.i, %bb.bb ], [ %.0.i, %bb.bf ], [ %.0.i, %bb.be ] ; 3 uses
  %i.fy = load ptr, ptr %.022.i, align 8, !tbaa !123
  store ptr %i.fy, ptr %.021.i, align 8, !tbaa !51
  store ptr %.021.i, ptr %.022.i, align 8, !tbaa !123
  %i.fz = getelementptr inbounds nuw i8, ptr %.021.i, i64 32
  %i.ga = load ptr, ptr %i.fz, align 8, !tbaa !52
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !59
  %i.gc = icmp ne ptr %i.gb, @_ZN4absl12lts_20260526L11kExclusiveSE
  %i.gd = icmp eq ptr %.0.i.i, %i.bh
  %or.cond.i = and i1 %i.gd, %i.gc
  br i1 %or.cond.i, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, label %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit

bb.bj:                                            ; preds = %.preheader274
  %i.ge = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !65 ; 4 uses
  %.not.i.i226 = icmp eq ptr %i.gf, null
  br i1 %.not.i.i226, label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bj
  %i.gg = getelementptr inbounds nuw i8, ptr %i.gf, i64 8
  %i.gh = load ptr, ptr %i.gg, align 8, !tbaa !65 ; 2 uses
  %.not1415.i.i = icmp eq ptr %i.gh, null
  br i1 %.not1415.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.gi = phi ptr [ %i.gl, %.lr.ph.i.i ], [ %i.gh, %.preheader.i.i ] ; 4 uses
  %.017.i.i = phi ptr [ %i.gi, %.lr.ph.i.i ], [ %i.gf, %.preheader.i.i ]
  %.01116.i.i = phi ptr [ %.017.i.i, %.lr.ph.i.i ], [ %.021.i, %.preheader.i.i ]
  %i.gj = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 8
  store ptr %i.gi, ptr %i.gj, align 8, !tbaa !65
  %i.gk = getelementptr inbounds nuw i8, ptr %i.gi, i64 8
  %i.gl = load ptr, ptr %i.gk, align 8, !tbaa !65 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.gl, null
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.gf, %.preheader.i.i ], [ %i.gi, %.lr.ph.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i, ptr %i.ge, align 8, !tbaa !65
  br label %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i

_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i: ; preds = %._crit_edge.i.i, %bb.bj, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i
  %.135.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.0.i, %bb.bj ], [ %.0.i, %._crit_edge.i.i ] ; 3 uses
  %.12034.i = phi i1 [ %.019.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ true, %bb.bj ], [ true, %._crit_edge.i.i ] ; 2 uses
  %.12333.i = phi ptr [ %.021.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.022.i, %bb.bj ], [ %.022.i, %._crit_edge.i.i ]
  %.12532.i = phi ptr [ %.024.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.021.i, %bb.bj ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.gm = icmp eq ptr %.12532.i, %.135.i
  %.not27.i = select i1 %i.gm, i1 %.12034.i, i1 false
  br i1 %.not27.i, label %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit, label %.preheader274, !llvm.loop !118

_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit: ; preds = %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i
  %.2.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_20260526L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.135.i, %_ZN4absl12lts_20260526L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ] ; 2 uses
  %i.gn = and i64 %i.u, 16                        ; 2 uses
  %i.go = or disjoint i64 %i.gn, 2
  br i1 %i.l, label %bb.bl, label %bb.bk

bb.bk:                                            ; preds = %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit
  %i.gp = invoke fastcc noundef ptr @_ZN4absl12lts_20260526L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef %.2.i, ptr noundef nonnull %1, i64 noundef %i.u, i32 noundef 2)
          to label %bb.bl unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.bl:                                            ; preds = %bb.bk, %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit
  %.0129 = phi ptr [ %.2.i, %_ZN4absl12lts_20260526L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit ], [ %i.gp, %bb.bk ] ; 4 uses
  %.0..0..0.239 = load ptr, ptr %i.a, align 8, !tbaa !123
  %.not196 = icmp eq ptr %.0..0..0.239, inttoptr (i64 1 to ptr)
  br i1 %.not196, label %.invoke, label %bb.bm, !prof !71

.invoke:                                          ; preds = %bb.an, %bb.ab, %bb.aa, %bb.ax, %bb.bl, %bb.aw, %bb.w, %bb.o, %bb.i
  %i.gq = phi i32 [ 2381, %bb.bl ], [ 2175, %bb.o ], [ 2358, %bb.aw ], [ 2146, %bb.i ], [ 1092, %bb.ax ], [ 2219, %bb.w ], [ 2231, %bb.aa ], [ 2237, %bb.ab ], [ 2301, %bb.an ]
  %i.gr = phi ptr [ @.str.26, %bb.bl ], [ @.str.16, %bb.o ], [ @.str.24, %bb.aw ], [ @.str.15, %bb.i ], [ @.str.73, %bb.ax ], [ @.str.11, %bb.w ], [ @.str.19, %bb.aa ], [ @.str.21, %bb.ab ], [ @.str.23, %bb.an ]
  %i.gs = phi ptr [ @.str.27, %bb.bl ], [ @.str.17, %bb.o ], [ @.str.25, %bb.aw ], [ @.str.9, %bb.i ], [ @.str.74, %bb.ax ], [ @.str.18, %bb.w ], [ @.str.20, %bb.aa ], [ @.str.22, %bb.ab ], [ @.str.22, %bb.an ]
  invoke void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef %i.gq, ptr noundef nonnull @.str.1, ptr noundef nonnull %i.gr, ptr noundef nonnull %i.gs)
          to label %.cont unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

.cont:                                            ; preds = %.invoke
  unreachable

bb.bm:                                            ; preds = %bb.bl
  %.not197 = icmp eq ptr %.0129, null
  br i1 %.not197, label %bb.bp, label %bb.bn

end_hunk_0
begin_hunk_1_@_ZN4absl12lts_202605267CondVar6RemoveEPNS0_13base_internal14PerThreadSynchE:bb.a

bb.n:                                             ; preds = %bb.m
  store atomic i32 0, ptr %i.ak monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i

bb.o:                                             ; preds = %.noexc32
  store i32 0, ptr %2, align 4, !tbaa !17
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i

_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i: ; preds = %bb.o, %bb.n, %bb.m
  %i.am = phi i32 [ 0, %bb.m ], [ %i.al, %bb.n ], [ 0, %bb.o ] ; 2 uses
  %i.an = icmp eq i32 %.0, %i.af
  br i1 %i.an, label %bb.p, label %bb.s

bb.p:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i
  invoke void @AbslInternalMutexYield_lts_20260526()
          to label %bb.q unwind label %bb.r

bb.q:                                             ; preds = %bb.p
  %i.ao = add nsw i32 %.0, 1
  br label %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i

bb.r:                                             ; preds = %bb.s, %bb.p
  %i.ap = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev(ptr noundef nonnull align 4 dead_on_return(4) dereferenceable(4) %2) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %.body

bb.s:                                             ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableC2Ev.exit.i
  invoke void @AbslInternalSleepFor_lts_20260526(i64 %.sroa.03.0.copyload.i, i32 %.sroa.5.0.copyload.i)
          to label %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i unwind label %bb.r

_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i: ; preds = %bb.s, %bb.q
  %.0.i = phi i32 [ %i.ao, %bb.q ], [ 0, %bb.s ]
  %i.aq = icmp eq i32 %i.am, 0
  br i1 %i.aq, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i, label %bb.t

bb.t:                                             ; preds = %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i
  %i.ar = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %bb.u unwind label %bb.v

bb.u:                                             ; preds = %bb.t
  %i.as = getelementptr inbounds nuw i8, ptr %i.ar, i64 76
  store atomic i32 %i.am, ptr %i.as monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i

bb.v:                                             ; preds = %bb.t
  %i.at = landingpad { ptr, i32 }
          catch ptr null
  %i.au = extractvalue { ptr, i32 } %i.at, 0
  tail call void @__clang_call_terminate(ptr %i.au) #24
  unreachable

_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i: ; preds = %bb.u, %_ZN4absl12lts_202605268SleepForENS0_8DurationE.exit.i
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #23
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.backedge

_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit.backedge: ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i, %bb.k
  %.0.be = phi i32 [ %i.ai, %bb.k ], [ %.0.i, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard12ScopedEnableD2Ev.exit.i ]
  br label %_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii.exit, !llvm.loop !151

bb.w:                                             ; preds = %bb.i, %bb.j, %bb.l
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %bb.r, %bb.w
  %eh.lpad-body = phi { ptr, i32 } [ %i.av, %bb.w ], [ %i.ap, %bb.r ]
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %3) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  resume { ptr, i32 } %eh.lpad-body
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605267CondVar10WaitCommonEPNS0_5MutexENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1, i64 %2) local_unnamed_addr #0 align 2 {
bb.a:
  %3 = alloca %"struct.absl::lts_20260526::SynchWaitParams", align 8 ; 11 uses
  %i.a = load atomic i64, ptr %1 monotonic, align 8
  %i.b = and i64 %i.a, 8
  %.not = icmp eq i64 %i.b, 0
  %i.c = select i1 %.not, ptr @_ZN4absl12lts_20260526L8kSharedSE, ptr @_ZN4absl12lts_20260526L11kExclusiveSE ; 2 uses
  %i.d = load atomic i64, ptr %0 monotonic, align 8
  %i.e = load atomic ptr, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_115cond_var_tracerE acquire, align 8
  tail call void %i.e(ptr noundef nonnull @.str.37, ptr noundef nonnull %0), !inline_history !152
  %i.f = and i64 %i.d, 2
  %.not16 = icmp eq i64 %i.f, 0                   ; 2 uses
  br i1 %.not16, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef 10)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #23
  %i.g = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.d, label %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit, !prof !71

bb.d:                                             ; preds = %bb.c
  %i.i = tail call noundef ptr @_ZN4absl12lts_2026052624synchronization_internal20CreateThreadIdentityEv()
  br label %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit

_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit: ; preds = %bb.c, %bb.d
  %.0.i.i.i = phi ptr [ %i.i, %bb.d ], [ %i.g, %bb.c ]
  store ptr %i.c, ptr %3, align 8, !tbaa !59
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8
  store ptr null, ptr %i.j, align 8, !tbaa !61
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.k, align 8, !tbaa !42
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr %1, ptr %i.l, align 8, !tbaa !77
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 5 uses
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !78
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr %0, ptr %i.n, align 8, !tbaa !79
  %i.o = load atomic ptr, ptr @_ZN4absl12lts_2026052613base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.q = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #23, !srcloc !80 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  %i.t = shl i64 %i.s, 32
  %i.u = or i64 %i.t, %i.r
  br label %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

bb.f:                                             ; preds = %_ZN4absl12lts_20260526L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.v = tail call noundef i64 %i.o(), !inline_history !2
  br label %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit: ; preds = %bb.e, %bb.f
  %.0.in.i.i = phi i64 [ %i.u, %bb.e ], [ %i.v, %bb.f ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.0.i.i = ashr i64 %.0.in.i.i, 1
  store i64 %.0.i.i, ptr %i.w, align 8, !tbaa !81
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.x, align 8, !tbaa !82
  call void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %3) #25
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.z = getelementptr inbounds nuw i8, ptr %i.y, i64 28
  %i.aa = load atomic i32, ptr %i.z acquire, align 4
  %i.ab = icmp eq i32 %i.aa, 1
  br i1 %i.ab, label %.lr.ph, label %._crit_edge

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit, %bb.h
  %.sroa.014.020 = phi i64 [ %.sroa.014.1, %bb.h ], [ %2, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ] ; 2 uses
  %.019 = phi i1 [ %.1, %bb.h ], [ false, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ]
  %i.ac = call noundef zeroext i1 @AbslInternalPerThreadSemWait_lts_20260526(i64 %.sroa.014.020)
  br i1 %i.ac, label %bb.h, label %bb.g

bb.g:                                             ; preds = %.lr.ph
  %i.ad = load ptr, ptr %i.m, align 8, !tbaa !78
  call void @_ZN4absl12lts_202605267CondVar6RemoveEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ad)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %.lr.ph
  %.1 = phi i1 [ %.019, %.lr.ph ], [ true, %bb.g ] ; 2 uses
  %.sroa.014.1 = phi i64 [ %.sroa.014.020, %.lr.ph ], [ -1, %bb.g ]
  %i.ae = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.af = getelementptr inbounds nuw i8, ptr %i.ae, i64 28
  %i.ag = load atomic i32, ptr %i.af acquire, align 4
  %i.ah = icmp eq i32 %i.ag, 1
  br i1 %i.ah, label %.lr.ph, label %._crit_edge, !llvm.loop !153

._crit_edge:                                      ; preds = %bb.h, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  %.0.lcssa = phi i1 [ false, %_ZN4absl12lts_2026052615SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ], [ %.1, %bb.h ]
  %i.ai = load ptr, ptr %i.m, align 8, !tbaa !78
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 32 ; 2 uses
  %i.ak = load ptr, ptr %i.aj, align 8, !tbaa !52
  %.not17 = icmp eq ptr %i.ak, null
  br i1 %.not17, label %bb.i, label %bb.j, !prof !71

bb.i:                                             ; preds = %._crit_edge
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 2677, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.38, ptr noundef nonnull @.str.39)
  unreachable

bb.j:                                             ; preds = %._crit_edge
  store ptr null, ptr %i.aj, align 8, !tbaa !52
  %i.al = load atomic ptr, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_115cond_var_tracerE acquire, align 8
  call void %i.al(ptr noundef nonnull @.str.40, ptr noundef nonnull %0), !inline_history !154
  br i1 %.not16, label %bb.l, label %bb.k

bb.k:                                             ; preds = %bb.j
  call fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef 11)
  br label %bb.l

bb.l:                                             ; preds = %bb.k, %bb.j
  call void @_ZN4absl12lts_202605265Mutex8LockSlowEPKNS0_6MuHowSEPKNS0_9ConditionEi(ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull %i.c, ptr noundef null, i32 noundef 3) #25
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #23
  ret i1 %.0.lcssa
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605267CondVar6SignalEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %1 = alloca %"struct.absl::lts_20260526::base_internal::SchedulingGuard::ScopedDisable", align 1 ; 6 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %1) #23
  %i.a = tail call noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %.not.i.i = icmp ne ptr %i.a, null              ; 3 uses
  br i1 %.not.i.i, label %bb.b, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

bb.b:                                             ; preds = %bb.a
  %i.b = getelementptr inbounds nuw i8, ptr %i.a, i64 76 ; 2 uses
  %i.c = load atomic i32, ptr %i.b monotonic, align 4
  %i.d = add nsw i32 %i.c, 1
  store atomic i32 %i.d, ptr %i.b monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit

_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit: ; preds = %bb.a, %bb.b
  %i.e = zext i1 %.not.i.i to i8
  store i8 %i.e, ptr %1, align 1, !tbaa !69
  %i.f = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %.not44 = icmp eq i64 %i.f, 0
  br i1 %.not44, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit, %bb.j
  %.01746 = phi i32 [ %i.y, %bb.j ], [ 0, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit ]
  %storemerge45 = phi i64 [ %i.z, %bb.j ], [ %i.f, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit ] ; 8 uses
  %i.g = and i64 %storemerge45, 1
  %i.h = icmp eq i64 %i.g, 0
  br i1 %i.h, label %bb.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.c:                                             ; preds = %.lr.ph
  %i.i = or disjoint i64 %storemerge45, 1
  %i.j = cmpxchg ptr %0, i64 %storemerge45, i64 %i.i acquire monotonic, align 8
  %i.k = extractvalue { i64, i1 } %i.j, 1
  br i1 %i.k, label %bb.d, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.d:                                             ; preds = %bb.c
  %i.l = and i64 %storemerge45, -4                ; 2 uses
  %i.m = inttoptr i64 %i.l to ptr                 ; 3 uses
  %.not23 = icmp eq i64 %i.l, 0
  br i1 %.not23, label %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvEEclIJRA14_S3_PNS0_7CondVarEEEEvDpOT_.exit.thread, label %bb.e

_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvEEclIJRA14_S3_PNS0_7CondVarEEEEvDpOT_.exit.thread: ; preds = %bb.d
  store atomic i64 %storemerge45, ptr %0 release, align 8
  br label %bb.i

bb.e:                                             ; preds = %bb.d
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !51   ; 4 uses
  %i.o = icmp eq ptr %i.n, %i.m
  br i1 %i.o, label %bb.f, label %.thread36

.thread36:                                        ; preds = %bb.e
  %i.p = load ptr, ptr %i.n, align 8, !tbaa !51
  store ptr %i.p, ptr %i.m, align 8, !tbaa !51
  %i.q = and i64 %storemerge45, 2
  br label %bb.g

bb.f:                                             ; preds = %bb.e
  %i.r = and i64 %storemerge45, 2                 ; 2 uses
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %.thread36
  %.sink = phi i64 [ %i.r, %bb.f ], [ %storemerge45, %.thread36 ]
  %i.s = phi i64 [ %i.r, %bb.f ], [ %i.q, %.thread36 ]
  store atomic i64 %.sink, ptr %0 release, align 8
  %i.t = getelementptr inbounds nuw i8, ptr %i.n, i64 32
  %i.u = load ptr, ptr %i.t, align 8, !tbaa !52
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 24
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !77
  invoke void @_ZN4absl12lts_202605265Mutex3FerEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %i.w, ptr noundef nonnull %i.n)
          to label %bb.h unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.h:                                             ; preds = %bb.g
  %i.x = load atomic ptr, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_115cond_var_tracerE acquire, align 8
  invoke void %i.x(ptr noundef nonnull @.str.41, ptr noundef nonnull %0)
          to label %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvEEclIJRA14_S3_PNS0_7CondVarEEEEvDpOT_.exit unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp, !inline_history !155

.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp: ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.g, %bb.i, %bb.h
  %lpad.loopexit.split-lp59 = landingpad { ptr, i32 }
          cleanup
  call void @_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev(ptr noundef nonnull align 1 dead_on_return(1) dereferenceable(1) %1) #23
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  resume { ptr, i32 } %lpad.loopexit.split-lp59

_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvEEclIJRA14_S3_PNS0_7CondVarEEEEvDpOT_.exit: ; preds = %bb.h
  %.not25 = icmp eq i64 %i.s, 0
  br i1 %.not25, label %.loopexit.a, label %bb.i

bb.i:                                             ; preds = %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvEEclIJRA14_S3_PNS0_7CondVarEEEEvDpOT_.exit.thread, %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvEEclIJRA14_S3_PNS0_7CondVarEEEEvDpOT_.exit
  invoke fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef 12)
          to label %.loopexit.a unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.c, %.lr.ph
  %i.y = invoke noundef i32 @_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii(i32 noundef %.01746, i32 noundef 1)
          to label %bb.j unwind label %.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp.loopexit.split-lp

bb.j:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %i.z = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.z, 0
  br i1 %.not, label %.loopexit.a, label %.lr.ph, !llvm.loop !156

.loopexit.a:                                      ; preds = %bb.j, %bb.i, %_ZNK4absl12lts_2026052613base_internal10AtomicHookIPFvPKcPKvEEclIJRA14_S3_PNS0_7CondVarEEEEvDpOT_.exit
  %i.aa = load i8, ptr %1, align 1, !tbaa !69
  %i.ab = trunc nuw i8 %i.aa to i1
  br label %.loopexit

.loopexit:                                        ; preds = %.loopexit.a, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit
  %2 = phi i1 [ %i.ab, %.loopexit.a ], [ %.not.i.i, %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableC2Ev.exit ]
  br i1 %2, label %bb.k, label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit

bb.k:                                             ; preds = %.loopexit
  %i.ac = invoke noundef ptr @_ZN4absl12lts_2026052613base_internal30CurrentThreadIdentityIfPresentEv()
          to label %.noexc.i unwind label %bb.l

.noexc.i:                                         ; preds = %bb.k
  %i.ad = getelementptr inbounds nuw i8, ptr %i.ac, i64 76 ; 2 uses
  %i.ae = load atomic i32, ptr %i.ad monotonic, align 4
  %i.af = add nsw i32 %i.ae, -1
  store atomic i32 %i.af, ptr %i.ad monotonic, align 4
  br label %_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit

bb.l:                                             ; preds = %bb.k
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #24
  unreachable

_ZN4absl12lts_2026052613base_internal15SchedulingGuard13ScopedDisableD2Ev.exit: ; preds = %.loopexit, %.noexc.i
  call void @llvm.lifetime.end.p0(ptr nonnull %1) #23
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_202605267CondVar9SignalAllEv(ptr noundef nonnull align 8 dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %.not21 = icmp eq i64 %i.a, 0
  br i1 %.not21, label %.loopexit, label %.lr.ph

.lr.ph:                                           ; preds = %bb.a, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0923 = phi i32 [ %i.p, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %bb.a ]
  %storemerge22 = phi i64 [ %i.q, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ %i.a, %bb.a ] ; 4 uses
  %i.b = and i64 %storemerge22, 1
  %i.c = icmp eq i64 %i.b, 0
  br i1 %i.c, label %bb.b, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.b:                                             ; preds = %.lr.ph
  %i.d = and i64 %storemerge22, 2                 ; 2 uses
  %i.e = cmpxchg ptr %0, i64 %storemerge22, i64 %i.d acquire monotonic, align 8
  %i.f = extractvalue { i64, i1 } %i.e, 1
  br i1 %i.f, label %bb.c, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.g = and i64 %storemerge22, -4                ; 2 uses
  %i.h = inttoptr i64 %i.g to ptr                 ; 2 uses
  %.not12 = icmp eq i64 %i.g, 0
  br i1 %.not12, label %bb.g, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.i = load ptr, ptr %i.h, align 8, !tbaa !51
  br label %bb.e

bb.e:                                             ; preds = %bb.e, %bb.d
  %.0 = phi ptr [ %i.i, %bb.d ], [ %i.j, %bb.e ]  ; 4 uses
  %i.j = load ptr, ptr %.0, align 8, !tbaa !51
  %i.k = getelementptr inbounds nuw i8, ptr %.0, i64 32
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !52
  %i.m = getelementptr inbounds nuw i8, ptr %i.l, i64 24
  %i.n = load ptr, ptr %i.m, align 8, !tbaa !77
  tail call void @_ZN4absl12lts_202605265Mutex3FerEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %i.n, ptr noundef nonnull %.0)
  %.not13 = icmp eq ptr %.0, %i.h
  br i1 %.not13, label %bb.f, label %bb.e, !llvm.loop !157

bb.f:                                             ; preds = %bb.e
  %i.o = load atomic ptr, ptr @_ZN4absl12lts_2026052612_GLOBAL__N_115cond_var_tracerE acquire, align 8
  tail call void %i.o(ptr noundef nonnull @.str.42, ptr noundef nonnull %0), !inline_history !158
  br label %bb.g

bb.g:                                             ; preds = %bb.f, %bb.c
  %.not14 = icmp eq i64 %i.d, 0
  br i1 %.not14, label %.loopexit, label %bb.h

bb.h:                                             ; preds = %bb.g
  tail call fastcc void @_ZN4absl12lts_20260526L14PostSynchEventEPvi(ptr noundef %0, i32 noundef 13)
  br label %.loopexit

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit: ; preds = %bb.b, %.lr.ph
  %i.p = tail call noundef i32 @_ZN4absl12lts_2026052624synchronization_internal10MutexDelayEii(i32 noundef %.0923, i32 noundef 1)
  %i.q = load atomic i64, ptr %0 monotonic, align 8 ; 2 uses
  %.not = icmp eq i64 %i.q, 0
  br i1 %.not, label %.loopexit, label %.lr.ph, !llvm.loop !159

.loopexit:                                        ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit, %bb.a, %bb.g, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local void @_ZN4absl12lts_2026052619ReleasableMutexLock7ReleaseEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(8) %0) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = load ptr, ptr %0, align 8, !tbaa !161    ; 4 uses
  %.not = icmp eq ptr %i.a, null
  br i1 %.not, label %bb.b, label %bb.c, !prof !71

bb.b:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2026052616raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 59), i32 noundef 2776, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.44)
  unreachable

bb.c:                                             ; preds = %bb.a
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 3 uses
  %i.c = and i64 %i.b, 30
  %i.d = xor i64 %i.c, 10
  %i.e = icmp samesign ult i64 %i.d, 6
  br i1 %i.e, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, label %bb.d

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i: ; preds = %bb.c
  %i.f = and i64 %i.b, -41
  %i.g = cmpxchg ptr %i.a, i64 %i.b, i64 %i.f release monotonic, align 8
  %i.h = extractvalue { i64, i1 } %i.g, 1
  br i1 %i.h, label %_ZN4absl12lts_202605265Mutex6unlockEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.c
  tail call void @_ZN4absl12lts_202605265Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef null) #25
  br label %_ZN4absl12lts_202605265Mutex6unlockEv.exit

_ZN4absl12lts_202605265Mutex6unlockEv.exit:       ; preds = %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit.i, %bb.d
  store ptr null, ptr %0, align 8, !tbaa !161
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define linkonce_odr dso_local noundef zeroext i1 @_ZN4absl12lts_202605269Condition10AlwaysTrueEPKS1_(ptr noundef %0) #7 comdat align 2 {
bb.a:
  ret i1 true
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4absl12lts_202605269ConditionC2EPFbPvES2_(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1, ptr noundef %2) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4absl12lts_202605269Condition19CallVoidPtrFunctionEPKS1_, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %2, ptr %i.c, align 8, !tbaa !64
  store ptr %1, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605269Condition19CallVoidPtrFunctionEPKS1_(ptr nofree noundef readonly captures(none) %0) #0 align 2 {
bb.a:
  %.0.copyload = load ptr, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !64
  %i.c = tail call noundef zeroext i1 %.0.copyload(ptr noundef %i.b)
  ret i1 %i.c
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable
define dso_local void @_ZN4absl12lts_202605269ConditionC2EPKb(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(32) initializes((0, 32)) %0, ptr noundef %1) unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 0, ptr %i.b, align 8
  store ptr @_ZN4absl12lts_202605269Condition19CallVoidPtrFunctionEPKS1_, ptr %i.a, align 8, !tbaa !63
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  store ptr %1, ptr %i.c, align 8, !tbaa !64
  store ptr @_ZN4absl12lts_20260526L11DereferenceEPv, ptr %0, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define internal noundef zeroext i1 @_ZN4absl12lts_20260526L11DereferenceEPv(ptr nofree noundef readonly captures(none) %0) #13 {
bb.a:
  %i.a = load i8, ptr %0, align 1, !tbaa !162, !range !47, !noundef !48
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: read) uwtable
define dso_local noundef zeroext i1 @_ZN4absl12lts_202605269Condition15GuaranteedEqualEPKS1_S3_(ptr nofree noundef readonly captures(address) %0, ptr nofree noundef readonly captures(address) %1) local_unnamed_addr #13 align 2 {
bb.a:
  %i.a = icmp eq ptr %0, null
  %i.b = icmp eq ptr %1, null
  %or.cond = or i1 %i.a, %i.b
  br i1 %or.cond, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = icmp eq ptr %0, %1
  br label %bb.f

bb.c:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !63
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  %i.g = load ptr, ptr %i.f, align 8, !tbaa !63
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !64
  %i.k = getelementptr inbounds nuw i8, ptr %1, i64 24
  %i.l = load ptr, ptr %i.k, align 8, !tbaa !64
  %i.m = icmp eq ptr %i.j, %i.l
  br i1 %i.m, label %bb.e, label %bb.f

bb.e:                                             ; preds = %bb.d
  %i.n = load i128, ptr %0, align 1
  %i.o = load i128, ptr %1, align 1
  %i.p = icmp ne i128 %i.n, %i.o
  %i.q = zext i1 %i.p to i32
  %.not = icmp eq i32 %i.q, 0
  br label %bb.f

bb.f:                                             ; preds = %bb.c, %bb.d, %bb.e, %bb.b
  %.0 = phi i1 [ %i.c, %bb.b ], [ false, %bb.d ], [ false, %bb.c ], [ %.not, %bb.e ]
  ret i1 %.0
}

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #14 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #23 ; 0 uses
  tail call void @_ZSt9terminatev() #24
  unreachable
}

end_hunk_1
