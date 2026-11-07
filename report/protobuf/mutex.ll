Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/protobuf/original/mutex?download=true
inline.NumInlined: 293
inline.NumDeleted: 118
begin_hunk_0_@_ZN4absl12lts_202505125Mutex20LockSlowWithDeadlineEPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEi:bb.a
bb.g:                                             ; preds = %_ZN4absl12lts_20250512L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.ag = tail call noundef i64 %i.z(), !inline_history !2
  br label %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit: ; preds = %bb.f, %bb.g
  %.0.in.i.i = phi i64 [ %i.af, %bb.f ], [ %i.ag, %bb.g ]
  %i.ah = getelementptr inbounds nuw i8, ptr %5, i64 48
  %.0.i.i = ashr i64 %.0.in.i.i, 1
  store i64 %.0.i.i, ptr %i.ah, align 8, !tbaa !154
  %i.ai = getelementptr inbounds nuw i8, ptr %5, i64 56
  store i8 0, ptr %i.ai, align 8, !tbaa !155
  %.not = icmp eq ptr %2, null                    ; 2 uses
  %i.aj = or i32 %4, 2
  %spec.select = select i1 %.not, i32 %4, i32 %i.aj ; 2 uses
  br i1 %.020, label %bb.h, label %bb.i

bb.h:                                             ; preds = %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  call void @_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5) #26
  %i.ak = load ptr, ptr %i.x, align 8, !tbaa !151
  call void @_ZN4absl12lts_202505125Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.ak)
  %i.al = or i32 %spec.select, 1
  br label %bb.i

bb.i:                                             ; preds = %bb.h, %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  %.1 = phi i32 [ %i.al, %bb.h ], [ %spec.select, %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ]
  call void @_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %5, i32 noundef %.1)
  %i.am = load ptr, ptr %i.u, align 8, !tbaa !136
  %i.an = icmp ne ptr %i.am, null
  %or.cond = or i1 %.not, %i.an
  br i1 %or.cond, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 16
  %i.ap = load ptr, ptr %i.ao, align 8, !tbaa !138
  %i.aq = call noundef zeroext i1 %i.ap(ptr noundef nonnull align 8 dereferenceable(32) %2), !inline_history !1
  br label %bb.k

bb.k:                                             ; preds = %bb.j, %bb.i
  %i.ar = phi i1 [ %i.aq, %bb.j ], [ true, %bb.i ]
  call void @llvm.lifetime.end.p0(ptr nonnull %5) #24
  br label %bb.l

bb.l:                                             ; preds = %bb.b, %bb.c, %bb.k
  %.0 = phi i1 [ %i.ar, %bb.k ], [ true, %bb.c ], [ true, %bb.b ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN4absl12lts_202505125Mutex11AwaitCommonERKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull align 8 dereferenceable(32) %1, i64 %2) local_unnamed_addr #0 align 2 !guid !219 {
bb.a:
  %3 = alloca %"struct.absl::lts_20250512::SynchWaitParams", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 2 uses
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !220
  br i1 %i.c, label %bb.i, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = load atomic i64, ptr %0 monotonic, align 8
  %i.e = and i64 %i.d, 8
  %.not = icmp eq i64 %i.e, 0
  %i.f = select i1 %.not, ptr @_ZN4absl12lts_20250512L8kSharedSE, ptr @_ZN4absl12lts_20250512L11kExclusiveSE
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #24
  %i.g = tail call noundef ptr @_ZN4absl12lts_2025051213base_internal30CurrentThreadIdentityIfPresentEv() ; 2 uses
  %i.h = icmp eq ptr %i.g, null
  br i1 %i.h, label %bb.c, label %_ZN4absl12lts_20250512L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit, !prof !144

bb.c:                                             ; preds = %bb.b
  %i.i = tail call noundef ptr @_ZN4absl12lts_2025051224synchronization_internal20CreateThreadIdentityEv()
  br label %_ZN4absl12lts_20250512L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit

_ZN4absl12lts_20250512L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit: ; preds = %bb.b, %bb.c
  %.0.i.i.i = phi ptr [ %i.i, %bb.c ], [ %i.g, %bb.b ]
  store ptr %i.f, ptr %3, align 8, !tbaa !134
  %i.j = getelementptr inbounds nuw i8, ptr %3, i64 8 ; 2 uses
  store ptr %1, ptr %i.j, align 8, !tbaa !136
  %i.k = getelementptr inbounds nuw i8, ptr %3, i64 16
  store i64 %2, ptr %i.k, align 8, !tbaa !118
  %i.l = getelementptr inbounds nuw i8, ptr %3, i64 24
  store ptr null, ptr %i.l, align 8, !tbaa !150
  %i.m = getelementptr inbounds nuw i8, ptr %3, i64 32 ; 2 uses
  store ptr %.0.i.i.i, ptr %i.m, align 8, !tbaa !151
  %i.n = getelementptr inbounds nuw i8, ptr %3, i64 40
  store ptr null, ptr %i.n, align 8, !tbaa !152
  %i.o = load atomic ptr, ptr @_ZN4absl12lts_2025051213base_internal10CycleClock19cycle_clock_source_E acquire, align 8 ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  br i1 %i.p, label %bb.d, label %bb.e

bb.d:                                             ; preds = %_ZN4absl12lts_20250512L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.q = tail call { i64, i64 } asm sideeffect "rdtsc", "={ax},={dx},~{dirflag},~{fpsr},~{flags}"() #24, !srcloc !153 ; 2 uses
  %i.r = extractvalue { i64, i64 } %i.q, 0
  %i.s = extractvalue { i64, i64 } %i.q, 1
  %i.t = shl i64 %i.s, 32
  %i.u = or i64 %i.t, %i.r
  br label %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

bb.e:                                             ; preds = %_ZN4absl12lts_20250512L27Synch_GetPerThreadAnnotatedEPNS0_5MutexE.exit
  %i.v = tail call noundef i64 %i.o(), !inline_history !2
  br label %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit

_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit: ; preds = %bb.d, %bb.e
  %.0.in.i.i = phi i64 [ %i.u, %bb.d ], [ %i.v, %bb.e ]
  %i.w = getelementptr inbounds nuw i8, ptr %3, i64 48
  %.0.i.i = ashr i64 %.0.in.i.i, 1
  store i64 %.0.i.i, ptr %i.w, align 8, !tbaa !154
  %i.x = getelementptr inbounds nuw i8, ptr %3, i64 56
  store i8 0, ptr %i.x, align 8, !tbaa !155
  call void @_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3) #26
  %i.y = load ptr, ptr %i.m, align 8, !tbaa !151
  call void @_ZN4absl12lts_202505125Mutex5BlockEPNS0_13base_internal14PerThreadSynchE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %i.y)
  call void @_ZN4absl12lts_202505125Mutex12LockSlowLoopEPNS0_15SynchWaitParamsEi(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef nonnull %3, i32 noundef 3)
  %i.z = load ptr, ptr %i.j, align 8, !tbaa !136
  %.not8 = icmp eq ptr %i.z, null
  br i1 %.not8, label %bb.f, label %.critedge

bb.f:                                             ; preds = %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit
  %i.aa = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.ab = call noundef zeroext i1 %i.aa(ptr noundef nonnull align 8 dereferenceable(32) %1), !inline_history !1
  br i1 %i.ab, label %.critedge, label %bb.g

bb.g:                                             ; preds = %bb.f
  %.not10 = icmp eq i64 %2, -1
  br i1 %.not10, label %bb.h, label %.critedge, !prof !144

bb.h:                                             ; preds = %bb.g
  call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 1605, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5)
  unreachable

.critedge:                                        ; preds = %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit, %bb.f, %bb.g
  %i.ac = phi i1 [ false, %bb.g ], [ true, %bb.f ], [ true, %_ZN4absl12lts_2025051215SynchWaitParamsC2EPKNS0_6MuHowSEPKNS0_9ConditionENS0_24synchronization_internal13KernelTimeoutEPNS0_5MutexEPNS0_13base_internal14PerThreadSynchEPSt6atomicIlE.exit ]
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #24
  br label %bb.i

bb.i:                                             ; preds = %bb.a, %.critedge
  %.0 = phi i1 [ %i.ac, %.critedge ], [ true, %bb.a ]
  ret i1 %.0
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZNK4absl12lts_202505129Condition4EvalEv(ptr noundef nonnull align 8 dereferenceable(32) %0) local_unnamed_addr #0 align 2 !guid !221 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !138
  %i.c = tail call noundef zeroext i1 %i.b(ptr noundef nonnull %0)
  ret i1 %i.c
}

; Function Attrs: cold mustprogress noinline optsize uwtable
define void @_ZN4absl12lts_202505125Mutex10UnlockSlowEPNS0_15SynchWaitParamsE(ptr noundef nonnull align 8 dereferenceable(8) %0, ptr noundef %1) local_unnamed_addr #9 align 2 personality ptr @__gxx_personality_v0 !guid !229 {
bb.a:
  %i.a = alloca ptr, align 8                      ; 6 uses
  %i.b = load atomic i64, ptr %0 monotonic, align 8 ; 3 uses
  tail call void @_ZNK4absl12lts_202505125Mutex16AssertReaderHeldEv(ptr noundef nonnull align 8 dereferenceable(8) %0)
  tail call fastcc void @_ZN4absl12lts_20250512L23CheckForMutexCorruptionElPKc(i64 noundef %i.b, ptr noundef nonnull @.str.14)
  %i.c = and i64 %i.b, 16
  %.not = icmp eq i64 %i.c, 0
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = and i64 %i.b, 8
  %.not174 = icmp eq i64 %i.d, 0
  %i.e = select i1 %.not174, i32 9, i32 8
  tail call fastcc void @_ZN4absl12lts_20250512L14PostSynchEventEPvi(ptr noundef %0, i32 noundef %i.e)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  call void @llvm.lifetime.start.p0(ptr nonnull %i.a)
  store ptr inttoptr (i64 1 to ptr), ptr %i.a, align 8, !tbaa !230
  %i.f = icmp eq ptr %1, null                     ; 7 uses
  br i1 %i.f, label %.outer.preheader, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.g = getelementptr inbounds nuw i8, ptr %1, i64 32
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !151  ; 2 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 32
  %i.j = load ptr, ptr %i.i, align 8, !tbaa !127
  %i.k = icmp eq ptr %i.j, null
  br i1 %i.k, label %.outer.preheader, label %bb.e

bb.e:                                             ; preds = %bb.d
  %i.l = getelementptr inbounds nuw i8, ptr %i.h, i64 20
  %i.m = load i8, ptr %i.l, align 4, !tbaa !143, !range !122, !noundef !123
  %i.n = trunc nuw i8 %i.m to i1
  br i1 %i.n, label %.outer.preheader, label %bb.f, !prof !103

.outer.preheader:                                 ; preds = %bb.d, %bb.c, %bb.e
  br label %.outer

bb.f:                                             ; preds = %bb.e
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2145, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.15, ptr noundef nonnull @.str.9)
  unreachable

.outer:                                           ; preds = %.outer.preheader, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit
  %.0151.ph = phi i32 [ %i.gq, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  %.0145.ph = phi ptr [ %.0145, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0139.ph = phi ptr [ %.0139, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0137.ph = phi ptr [ %.0137, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ null, %.outer.preheader ]
  %.0134.ph = phi i64 [ %.0134, %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit ], [ 0, %.outer.preheader ]
  br label %._crit_edge

._crit_edge.loopexit:                             ; preds = %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, %bb.ao
  %.0145.ph581 = phi ptr [ %.2147256, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1121333, %bb.ao ]
  %.0139.ph582 = phi ptr [ %.2141257, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ %.1118335, %bb.ao ]
  %.0134.ph583 = phi i64 [ %.2136258, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit ], [ 32, %bb.ao ]
  br label %._crit_edge

._crit_edge:                                      ; preds = %._crit_edge.loopexit, %.outer
  %.0145 = phi ptr [ %.0145.ph, %.outer ], [ %.0145.ph581, %._crit_edge.loopexit ] ; 5 uses
  %.0139 = phi ptr [ %.0139.ph, %.outer ], [ %.0139.ph582, %._crit_edge.loopexit ] ; 4 uses
  %.0137 = phi ptr [ %.0137.ph, %.outer ], [ %i.bb, %._crit_edge.loopexit ] ; 11 uses
  %.0134 = phi i64 [ %.0134.ph, %.outer ], [ %.0134.ph583, %._crit_edge.loopexit ] ; 3 uses
  %i.o = load atomic i64, ptr %0 monotonic, align 8 ; 23 uses
  %i.p = and i64 %i.o, 8
  %.not175 = icmp eq i64 %i.p, 0
  br i1 %.not175, label %bb.h, label %bb.g

bb.g:                                             ; preds = %._crit_edge
  %i.q = and i64 %i.o, 6
  %i.r = icmp ne i64 %i.q, 4
  %or.cond = and i1 %i.f, %i.r
  br i1 %or.cond, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit217, label %bb.h

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit217: ; preds = %bb.g
  %i.s = and i64 %i.o, -41
  %i.t = cmpxchg ptr %0, i64 %i.o, i64 %i.s release monotonic, align 8
  %i.u = extractvalue { i64, i1 } %i.t, 1
  br i1 %i.u, label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.h:                                             ; preds = %bb.g, %._crit_edge
  %i.v = and i64 %i.o, 5
  %i.w = icmp eq i64 %i.v, 1
  %or.cond3 = and i1 %i.f, %i.w
  br i1 %or.cond3, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit216, label %bb.i

_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit216: ; preds = %bb.h
  %i.x = icmp ult i64 %i.o, 512
  %.neg = select i1 %i.x, i64 -257, i64 -256
  %i.y = add i64 %.neg, %i.o
  %i.z = cmpxchg ptr %0, i64 %i.o, i64 %i.y release monotonic, align 8
  %i.aa = extractvalue { i64, i1 } %i.z, 1
  br i1 %i.aa, label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.i:                                             ; preds = %bb.h
  %i.ab = and i64 %i.o, 64
  %i.ac = icmp eq i64 %i.ab, 0
  br i1 %i.ac, label %bb.j, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.j:                                             ; preds = %bb.i
  %i.ad = or disjoint i64 %i.o, 64
  %i.ae = cmpxchg ptr %0, i64 %i.o, i64 %i.ad acquire monotonic, align 8
  %i.af = extractvalue { i64, i1 } %i.ae, 1
  br i1 %i.af, label %bb.k, label %_ZNSt13__atomic_baseIlE23compare_exchange_strongERllSt12memory_orderS2_.exit

bb.k:                                             ; preds = %bb.j
  %i.ag = and i64 %i.o, 4
  %i.ah = icmp eq i64 %i.ag, 0
  br i1 %i.ah, label %bb.l, label %bb.p

bb.l:                                             ; preds = %bb.k
  br i1 %i.f, label %bb.m, label %.preheader, !prof !144

.preheader:                                       ; preds = %bb.l
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 40
  br label %bb.n

bb.m:                                             ; preds = %bb.l
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2174, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.16, ptr noundef nonnull @.str.17)
  unreachable

bb.n:                                             ; preds = %.preheader, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit
  %.0129 = phi i1 [ %.1130, %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit ], [ true, %.preheader ]
  %i.aj = load atomic i64, ptr %0 monotonic, align 8 ; 6 uses
  %i.ak = icmp sgt i64 %i.aj, 255
  %i.al = add nsw i64 %i.aj, -256
  %i.am = select i1 %i.ak, i64 %i.al, i64 %i.aj   ; 2 uses
  br i1 %.0129, label %bb.o, label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

bb.o:                                             ; preds = %bb.n
  %i.an = load ptr, ptr %i.ai, align 8, !tbaa !152
  %i.ao = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef null, ptr noundef nonnull %1, i64 noundef %i.am, i32 noundef 2)
  %i.ap = icmp eq ptr %i.an, null
  br label %_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit

_ZNSt13__atomic_baseIlE21compare_exchange_weakERllSt12memory_orderS2_.exit: ; preds = %bb.o, %bb.n
  %.1130 = phi i1 [ %i.ap, %bb.o ], [ false, %bb.n ]
  %.0128 = phi ptr [ %i.ao, %bb.o ], [ null, %bb.n ] ; 2 uses
  %i.aq = and i64 %i.aj, -504
  %i.ar = icmp eq i64 %i.aq, 0
  %i.as = select i1 %i.ar, i64 -34, i64 -41
  %i.at = and i64 %i.aj, 159
  %i.au = and i64 %i.at, %i.as
  %.not199 = icmp eq ptr %.0128, null
  %i.av = ptrtoint ptr %.0128 to i64
  %i.aw = or i64 %i.av, 4
  %i.ax = and i64 %i.am, -256
  %.pn200 = select i1 %.not199, i64 %i.ax, i64 %i.aw
  %.0131 = or i64 %.pn200, %i.au
  %i.ay = cmpxchg weak ptr %0, i64 %i.aj, i64 %.0131 release monotonic, align 8
  %i.az = extractvalue { i64, i1 } %i.ay, 1
  br i1 %i.az, label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit, label %bb.n, !llvm.loop !222

bb.p:                                             ; preds = %bb.k
  %i.ba = and i64 %i.o, -256
  %i.bb = inttoptr i64 %i.ba to ptr               ; 21 uses
  %i.bc = and i64 %i.o, 1
  %.not176 = icmp eq i64 %i.bc, 0
  br i1 %.not176, label %bb.w, label %bb.q

bb.q:                                             ; preds = %bb.p
  %i.bd = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.be = load i64, ptr %i.bd, align 8, !tbaa !141 ; 2 uses
  %i.bf = and i64 %i.be, -256
  %i.bg = icmp sgt i64 %i.bf, 256
  br i1 %i.bg, label %bb.r, label %bb.w

bb.r:                                             ; preds = %bb.q
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  %i.bi = add nsw i64 %i.be, -256
  store i64 %i.bi, ptr %i.bh, align 8, !tbaa !141
  br i1 %i.f, label %bb.v, label %bb.s

bb.s:                                             ; preds = %bb.r
  %i.bj = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bb, ptr noundef nonnull %1, i64 noundef %i.o, i32 noundef 2) ; 2 uses
  %.not194 = icmp eq ptr %i.bj, null
  br i1 %.not194, label %bb.t, label %bb.u, !prof !144

bb.t:                                             ; preds = %bb.s
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2218, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.18)
  unreachable

bb.u:                                             ; preds = %bb.s
  %i.bk = ptrtoint ptr %i.bj to i64
  %i.bl = and i64 %i.o, 191
  %i.bm = or i64 %i.bl, %i.bk
  br label %bb.v

bb.v:                                             ; preds = %bb.u, %bb.r
  %.0125 = phi i64 [ %i.bm, %bb.u ], [ %i.o, %bb.r ]
  store atomic i64 %.0125, ptr %0 release, align 8
  br label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit

bb.w:                                             ; preds = %bb.p, %bb.q
  %i.bn = icmp eq ptr %.0137, null                ; 2 uses
  br i1 %i.bn, label %.critedge211.thread, label %bb.x

bb.x:                                             ; preds = %bb.w
  %i.bo = getelementptr inbounds nuw i8, ptr %i.bb, i64 19
  %i.bp = load i8, ptr %i.bo, align 1, !tbaa !142, !range !122, !noundef !123
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %.critedge211, label %bb.y, !prof !103

bb.y:                                             ; preds = %bb.x
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2230, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.19, ptr noundef nonnull @.str.20)
  unreachable

.critedge211:                                     ; preds = %bb.x
  %i.br = getelementptr inbounds nuw i8, ptr %.0137, i64 16 ; 2 uses
  %i.bs = load i8, ptr %i.br, align 8, !tbaa !156, !range !122, !noundef !123
  %i.bt = trunc nuw i8 %i.bs to i1
  br i1 %i.bt, label %.critedge211.thread, label %bb.z

bb.z:                                             ; preds = %.critedge211
  store i8 1, ptr %i.br, align 8, !tbaa !156
  %i.bu = getelementptr inbounds nuw i8, ptr %.0137, i64 8 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !140
  %.not178 = icmp eq ptr %i.bv, null
  br i1 %.not178, label %bb.ab, label %bb.aa, !prof !103

bb.aa:                                            ; preds = %bb.z
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2236, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.21, ptr noundef nonnull @.str.22)
  unreachable

bb.ab:                                            ; preds = %bb.z
  %.not179 = icmp eq ptr %.0137, %i.bb
  br i1 %.not179, label %.critedge211.thread, label %bb.ac

bb.ac:                                            ; preds = %bb.ab
  %i.bw = load ptr, ptr %.0137, align 8, !tbaa !126 ; 2 uses
  %i.bx = tail call fastcc noundef zeroext i1 @_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_(ptr noundef nonnull %.0137, ptr noundef %i.bw)
  br i1 %i.bx, label %bb.ad, label %.critedge211.thread

bb.ad:                                            ; preds = %bb.ac
  store ptr %i.bw, ptr %i.bu, align 8, !tbaa !140
  br label %.critedge211.thread

.critedge211.thread:                              ; preds = %bb.w, %bb.ab, %bb.ac, %bb.ad, %.critedge211
  %i.by = load ptr, ptr %i.bb, align 256, !tbaa !126 ; 2 uses
  %i.bz = getelementptr inbounds nuw i8, ptr %i.by, i64 32
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !127 ; 2 uses
  %i.cb = load ptr, ptr %i.ca, align 8, !tbaa !134
  %i.cc = icmp eq ptr %i.cb, @_ZN4absl12lts_20250512L11kExclusiveSE
  br i1 %i.cc, label %bb.ae, label %bb.af

bb.ae:                                            ; preds = %.critedge211.thread
  %i.cd = getelementptr inbounds nuw i8, ptr %i.ca, i64 8
  %i.ce = load ptr, ptr %i.cd, align 8, !tbaa !136
  %i.cf = icmp eq ptr %i.ce, null
  br i1 %i.cf, label %.thread434, label %bb.af

.thread434:                                       ; preds = %bb.ae
  %i.cg = getelementptr inbounds nuw i8, ptr %i.by, i64 17
  store i8 1, ptr %i.cg, align 1, !tbaa !157
  br label %.preheader258.preheader

bb.af:                                            ; preds = %bb.ae, %.critedge211.thread
  %.not180 = icmp eq ptr %.0145, null
  br i1 %.not180, label %bb.ah, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.ch = getelementptr inbounds nuw i8, ptr %.0145, i64 32
  %i.ci = load ptr, ptr %i.ch, align 8, !tbaa !127
  %i.cj = load ptr, ptr %i.ci, align 8, !tbaa !134
  %i.ck = icmp eq ptr %i.cj, @_ZN4absl12lts_20250512L11kExclusiveSE
  %i.cl = icmp eq ptr %.0137, %i.bb
  %or.cond212 = or i1 %i.cl, %i.ck
  br i1 %or.cond212, label %bb.au, label %bb.ah

bb.ah:                                            ; preds = %bb.ag, %bb.af
  %i.cm = icmp eq ptr %.0137, %i.bb
  br i1 %i.cm, label %bb.ai, label %bb.al

bb.ai:                                            ; preds = %bb.ah
  %i.cn = and i64 %i.o, -106
  %i.co = getelementptr inbounds nuw i8, ptr %i.bb, i64 40
  store i64 0, ptr %i.co, align 8, !tbaa !141
  %i.cp = getelementptr inbounds nuw i8, ptr %i.bb, i64 19
  store i8 0, ptr %i.cp, align 1, !tbaa !142
  br i1 %i.f, label %bb.ak, label %bb.aj

bb.aj:                                            ; preds = %bb.ai
  %i.cq = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef nonnull %i.bb, ptr noundef nonnull %1, i64 noundef %i.o, i32 noundef 2)
  %i.cr = and i64 %i.o, 150
  %i.cs = ptrtoint ptr %i.cq to i64
  %.0123 = or i64 %i.cr, %i.cs
  br label %bb.ak

bb.ak:                                            ; preds = %bb.aj, %bb.ai
  %.1124 = phi i64 [ %.0123, %bb.aj ], [ %i.cn, %bb.ai ]
  store atomic i64 %.1124, ptr %0 release, align 8
  br label %_ZNK4absl12lts_2025051213base_internal10AtomicHookIPFvlEEclIJRlEEEvDpOT_.exit

bb.al:                                            ; preds = %bb.ah
  %..0137 = select i1 %i.bn, ptr %i.bb, ptr %.0137
  %.0120 = load ptr, ptr %..0137, align 8, !tbaa !126
  %i.ct = getelementptr inbounds nuw i8, ptr %i.bb, i64 16
  store i8 0, ptr %i.ct, align 16, !tbaa !156
  %i.cu = getelementptr inbounds nuw i8, ptr %i.bb, i64 8
  %i.cv = load ptr, ptr %i.cu, align 8, !tbaa !140
  %.not181 = icmp eq ptr %i.cv, null
  br i1 %.not181, label %.lr.ph.preheader, label %bb.am, !prof !103

bb.am:                                            ; preds = %bb.al
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2300, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.23, ptr noundef nonnull @.str.22)
  unreachable

.lr.ph.preheader:                                 ; preds = %bb.al
  %i.cw = getelementptr inbounds nuw i8, ptr %i.bb, i64 19
  store i8 1, ptr %i.cw, align 1, !tbaa !142
  store atomic i64 %i.o, ptr %0 release, align 8
  br label %.lr.ph

.lr.ph:                                           ; preds = %bb.at, %.lr.ph.preheader
  %.1118335 = phi ptr [ %.2119, %bb.at ], [ %.0137, %.lr.ph.preheader ] ; 2 uses
  %.1121333 = phi ptr [ %i.dx, %bb.at ], [ %.0120, %.lr.ph.preheader ] ; 10 uses
  %.1135332 = phi i64 [ %.2136258, %bb.at ], [ %.0134, %.lr.ph.preheader ] ; 3 uses
  %.1140331 = phi ptr [ %.2141257, %bb.at ], [ %.0139, %.lr.ph.preheader ] ; 4 uses
  %.1146330 = phi ptr [ %.2147256, %bb.at ], [ %.0145, %.lr.ph.preheader ] ; 5 uses
  %i.cx = getelementptr inbounds nuw i8, ptr %.1121333, i64 17 ; 4 uses
  store i8 0, ptr %i.cx, align 1, !tbaa !157
  %i.cy = getelementptr inbounds nuw i8, ptr %.1121333, i64 32 ; 3 uses
  %i.cz = load ptr, ptr %i.cy, align 8, !tbaa !127
  %i.da = getelementptr inbounds nuw i8, ptr %i.cz, i64 8
  %i.db = load ptr, ptr %i.da, align 8, !tbaa !136 ; 3 uses
  %i.dc = icmp eq ptr %i.db, null
  br i1 %i.dc, label %bb.an, label %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit

_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit: ; preds = %.lr.ph
  %i.dd = getelementptr inbounds nuw i8, ptr %i.db, i64 16
  %i.de = load ptr, ptr %i.dd, align 8, !tbaa !138
  %i.df = tail call noundef zeroext i1 %i.de(ptr noundef nonnull align 8 dereferenceable(32) %i.db), !inline_history !223
  br i1 %i.df, label %bb.an, label %bb.ar

bb.an:                                            ; preds = %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit, %.lr.ph
  %i.dg = icmp eq ptr %.1146330, null
  br i1 %i.dg, label %bb.ao, label %bb.ap

bb.ao:                                            ; preds = %bb.an
  store i8 1, ptr %i.cx, align 1, !tbaa !157
  %i.dh = load ptr, ptr %i.cy, align 8, !tbaa !127
  %i.di = load ptr, ptr %i.dh, align 8, !tbaa !134
  %i.dj = icmp eq ptr %i.di, @_ZN4absl12lts_20250512L11kExclusiveSE
  br i1 %i.dj, label %._crit_edge.loopexit, label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

bb.ap:                                            ; preds = %bb.an
  %i.dk = load ptr, ptr %i.cy, align 8, !tbaa !127
  %i.dl = load ptr, ptr %i.dk, align 8, !tbaa !134
  %i.dm = icmp eq ptr %i.dl, @_ZN4absl12lts_20250512L8kSharedSE
  br i1 %i.dm, label %bb.aq, label %bb.ar

bb.aq:                                            ; preds = %bb.ap
  store i8 1, ptr %i.cx, align 1, !tbaa !157
  br label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

bb.ar:                                            ; preds = %bb.ap, %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit
  %.2136.ph = phi i64 [ 32, %bb.ap ], [ %.1135332, %_ZN4absl12lts_20250512L20EvalConditionIgnoredEPNS0_5MutexEPKNS0_9ConditionE.exit ] ; 3 uses
  %i.dn = load i8, ptr %i.cx, align 1, !tbaa !157
  %i.do = trunc nuw i8 %i.dn to i1
  br i1 %i.do, label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %bb.as

bb.as:                                            ; preds = %bb.ar
  %i.dp = getelementptr inbounds nuw i8, ptr %.1121333, i64 8 ; 2 uses
  %i.dq = load ptr, ptr %i.dp, align 8, !tbaa !140 ; 4 uses
  %.not.i = icmp eq ptr %i.dq, null
  br i1 %.not.i, label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit, label %.preheader.i

.preheader.i:                                     ; preds = %bb.as
  %i.dr = getelementptr inbounds nuw i8, ptr %i.dq, i64 8
  %i.ds = load ptr, ptr %i.dr, align 8, !tbaa !140 ; 2 uses
  %.not1415.i = icmp eq ptr %i.ds, null
  br i1 %.not1415.i, label %._crit_edge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %.preheader.i, %.lr.ph.i
  %i.dt = phi ptr [ %i.dw, %.lr.ph.i ], [ %i.ds, %.preheader.i ] ; 4 uses
  %.017.i = phi ptr [ %i.dt, %.lr.ph.i ], [ %i.dq, %.preheader.i ]
  %.01116.i = phi ptr [ %.017.i, %.lr.ph.i ], [ %.1121333, %.preheader.i ]
  %i.du = getelementptr inbounds nuw i8, ptr %.01116.i, i64 8
  store ptr %i.dt, ptr %i.du, align 8, !tbaa !140
  %i.dv = getelementptr inbounds nuw i8, ptr %i.dt, i64 8
  %i.dw = load ptr, ptr %i.dv, align 8, !tbaa !140 ; 2 uses
  %.not14.i = icmp eq ptr %i.dw, null
  br i1 %.not14.i, label %._crit_edge.i, label %.lr.ph.i, !llvm.loop !0

._crit_edge.i:                                    ; preds = %.lr.ph.i, %.preheader.i
  %.0.lcssa.i = phi ptr [ %i.dq, %.preheader.i ], [ %i.dt, %.lr.ph.i ] ; 2 uses
  store ptr %.0.lcssa.i, ptr %i.dp, align 8, !tbaa !140
  br label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit

_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit: ; preds = %bb.aq, %bb.ao, %._crit_edge.i, %bb.as, %bb.ar
  %.2136258 = phi i64 [ %.2136.ph, %._crit_edge.i ], [ %.2136.ph, %bb.ar ], [ %.2136.ph, %bb.as ], [ %.1135332, %bb.ao ], [ %.1135332, %bb.aq ] ; 2 uses
  %.2141257 = phi ptr [ %.1140331, %._crit_edge.i ], [ %.1140331, %bb.ar ], [ %.1140331, %bb.as ], [ %.1118335, %bb.ao ], [ %.1140331, %bb.aq ] ; 2 uses
  %.2147256 = phi ptr [ %.1146330, %._crit_edge.i ], [ %.1146330, %bb.ar ], [ %.1146330, %bb.as ], [ %.1121333, %bb.ao ], [ %.1146330, %bb.aq ] ; 2 uses
  %.2119 = phi ptr [ %.0.lcssa.i, %._crit_edge.i ], [ %.1121333, %bb.ar ], [ %.1121333, %bb.as ], [ %.1121333, %bb.ao ], [ %.1121333, %bb.aq ] ; 3 uses
  %.not183 = icmp eq ptr %.2119, %i.bb
  br i1 %.not183, label %._crit_edge.loopexit, label %bb.at

bb.at:                                            ; preds = %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit
  %i.dx = load ptr, ptr %.2119, align 8, !tbaa !126
  br label %.lr.ph

bb.au:                                            ; preds = %bb.ag
  %i.dy = icmp eq ptr %.0139, null
  %spec.select213 = select i1 %i.dy, ptr %i.bb, ptr %.0139 ; 2 uses
  %.pre = load ptr, ptr %spec.select213, align 8, !tbaa !126
  %i.dz = icmp eq ptr %.pre, %.0145
  br i1 %i.dz, label %.preheader258.preheader, label %bb.av, !prof !231

.preheader258.preheader:                          ; preds = %.thread434, %bb.au
  %.4439 = phi i64 [ 32, %.thread434 ], [ %.0134, %bb.au ]
  %.4143438 = phi ptr [ %i.bb, %.thread434 ], [ %spec.select213, %bb.au ]
  br label %.preheader258

bb.av:                                            ; preds = %bb.au
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2357, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.24, ptr noundef nonnull @.str.25)
  unreachable

.preheader258:                                    ; preds = %.preheader258.preheader, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i
  %.024.i = phi ptr [ %.12532.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %.4143438, %.preheader258.preheader ] ; 8 uses
  %.022.i = phi ptr [ %.12333.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.a, %.preheader258.preheader ] ; 4 uses
  %.019.i = phi i1 [ %.12034.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ false, %.preheader258.preheader ]
  %.0.i = phi ptr [ %.135.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ], [ %i.bb, %.preheader258.preheader ] ; 13 uses
  %.021.i = load ptr, ptr %.024.i, align 8, !tbaa !126 ; 10 uses
  %i.ea = getelementptr inbounds nuw i8, ptr %.021.i, i64 17
  %i.eb = load i8, ptr %i.ea, align 1, !tbaa !157, !range !122, !noundef !123
  %i.ec = trunc nuw i8 %i.eb to i1
  br i1 %i.ec, label %bb.aw, label %bb.bi

bb.aw:                                            ; preds = %.preheader258
  %i.ed = getelementptr inbounds nuw i8, ptr %.024.i, i64 8 ; 3 uses
  %i.ee = load ptr, ptr %i.ed, align 8, !tbaa !140
  %.not.i218 = icmp eq ptr %i.ee, null
  br i1 %.not.i218, label %bb.ax, label %.noexc, !prof !103

.noexc:                                           ; preds = %bb.aw
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 1091, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.76, ptr noundef nonnull @.str.77)
  unreachable

bb.ax:                                            ; preds = %bb.aw
  %i.ef = load ptr, ptr %.021.i, align 8, !tbaa !126 ; 5 uses
  store ptr %i.ef, ptr %.024.i, align 8, !tbaa !126
  %i.eg = icmp eq ptr %.0.i, %.021.i
  %i.eh = icmp eq ptr %.024.i, %.0.i              ; 2 uses
  br i1 %i.eg, label %bb.ay, label %bb.az

bb.ay:                                            ; preds = %bb.ax
  %i.ei = select i1 %i.eh, ptr null, ptr %.024.i
  br label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.az:                                            ; preds = %bb.ax
  br i1 %i.eh, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i, label %bb.ba

bb.ba:                                            ; preds = %bb.az
  %i.ej = getelementptr inbounds nuw i8, ptr %.024.i, i64 32
  %i.ek = load ptr, ptr %i.ej, align 8, !tbaa !127 ; 2 uses
  %i.el = load ptr, ptr %i.ek, align 8, !tbaa !134
  %i.em = getelementptr inbounds nuw i8, ptr %i.ef, i64 32
  %i.en = load ptr, ptr %i.em, align 8, !tbaa !127 ; 2 uses
  %i.eo = load ptr, ptr %i.en, align 8, !tbaa !134
  %i.ep = icmp eq ptr %i.el, %i.eo
  br i1 %i.ep, label %bb.bb, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bb:                                            ; preds = %bb.ba
  %i.eq = getelementptr inbounds nuw i8, ptr %.024.i, i64 24
  %i.er = load i32, ptr %i.eq, align 8, !tbaa !135
  %i.es = getelementptr inbounds nuw i8, ptr %i.ef, i64 24
  %i.et = load i32, ptr %i.es, align 8, !tbaa !135
  %i.eu = icmp eq i32 %i.er, %i.et
  br i1 %i.eu, label %bb.bc, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bc:                                            ; preds = %bb.bb
  %i.ev = getelementptr inbounds nuw i8, ptr %i.ek, i64 8
  %i.ew = load ptr, ptr %i.ev, align 8, !tbaa !136 ; 5 uses
  %i.ex = getelementptr inbounds nuw i8, ptr %i.en, i64 8
  %i.ey = load ptr, ptr %i.ex, align 8, !tbaa !136 ; 5 uses
  %i.ez = icmp eq ptr %i.ew, null
  %i.fa = icmp eq ptr %i.ey, null
  %or.cond.i.i.i.i = or i1 %i.ez, %i.fa
  br i1 %or.cond.i.i.i.i, label %.split.i.i, label %bb.bd

.split.i.i:                                       ; preds = %bb.bc
  %i.fb = icmp eq ptr %i.ew, %i.ey
  br i1 %i.fb, label %bb.bf, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bd:                                            ; preds = %bb.bc
  %i.fc = getelementptr inbounds nuw i8, ptr %i.ew, i64 16
  %i.fd = load ptr, ptr %i.fc, align 8, !tbaa !138
  %i.fe = getelementptr inbounds nuw i8, ptr %i.ey, i64 16
  %i.ff = load ptr, ptr %i.fe, align 8, !tbaa !138
  %i.fg = icmp eq ptr %i.fd, %i.ff
  br i1 %i.fg, label %bb.be, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.be:                                            ; preds = %bb.bd
  %i.fh = getelementptr inbounds nuw i8, ptr %i.ew, i64 24
  %i.fi = load ptr, ptr %i.fh, align 8, !tbaa !139
  %i.fj = getelementptr inbounds nuw i8, ptr %i.ey, i64 24
  %i.fk = load ptr, ptr %i.fj, align 8, !tbaa !139
  %i.fl = icmp eq ptr %i.fi, %i.fk
  br i1 %i.fl, label %_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i: ; preds = %bb.be
  %i.fm = load i128, ptr %i.ew, align 1
  %i.fn = load i128, ptr %i.ey, align 1
  %i.fo = icmp ne i128 %i.fm, %i.fn
  %i.fp = zext i1 %i.fo to i32
  %.not.i.i.i.i = icmp eq i32 %i.fp, 0
  br i1 %.not.i.i.i.i, label %bb.bf, label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bf:                                            ; preds = %_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, %.split.i.i
  %i.fq = getelementptr inbounds nuw i8, ptr %i.ef, i64 8
  %i.fr = load ptr, ptr %i.fq, align 8, !tbaa !140 ; 2 uses
  %.not22.i.i = icmp eq ptr %i.fr, null
  br i1 %.not22.i.i, label %bb.bh, label %bb.bg

bb.bg:                                            ; preds = %bb.bf
  store ptr %i.fr, ptr %i.ed, align 8, !tbaa !140
  br label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

bb.bh:                                            ; preds = %bb.bf
  store ptr %i.ef, ptr %i.ed, align 8, !tbaa !140
  br label %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i

_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i: ; preds = %bb.bh, %bb.bg, %_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i, %bb.be, %bb.bd, %.split.i.i, %bb.bb, %bb.ba, %bb.az, %bb.ay
  %.0.i.i = phi ptr [ %i.ei, %bb.ay ], [ %.0.i, %bb.bg ], [ %.0.i, %bb.bh ], [ %.0.i, %_ZN4absl12lts_20250512L18MuEquivalentWaiterEPNS0_13base_internal14PerThreadSynchES3_.exit.i.i ], [ %.0.i, %bb.az ], [ %.0.i, %.split.i.i ], [ %.0.i, %bb.bb ], [ %.0.i, %bb.ba ], [ %.0.i, %bb.be ], [ %.0.i, %bb.bd ] ; 3 uses
  %i.fs = load ptr, ptr %.022.i, align 8, !tbaa !230
  store ptr %i.fs, ptr %.021.i, align 8, !tbaa !126
  store ptr %.021.i, ptr %.022.i, align 8, !tbaa !230
  %i.ft = getelementptr inbounds nuw i8, ptr %.021.i, i64 32
  %i.fu = load ptr, ptr %i.ft, align 8, !tbaa !127
  %i.fv = load ptr, ptr %i.fu, align 8, !tbaa !134
  %i.fw = icmp ne ptr %i.fv, @_ZN4absl12lts_20250512L11kExclusiveSE
  %i.fx = icmp eq ptr %.0.i.i, %i.bb
  %or.cond.i = and i1 %i.fx, %i.fw
  br i1 %or.cond.i, label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, label %_ZN4absl12lts_20250512L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit

bb.bi:                                            ; preds = %.preheader258
  %i.fy = getelementptr inbounds nuw i8, ptr %.021.i, i64 8 ; 2 uses
  %i.fz = load ptr, ptr %i.fy, align 8, !tbaa !140 ; 4 uses
  %.not.i.i = icmp eq ptr %i.fz, null
  br i1 %.not.i.i, label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, label %.preheader.i.i

.preheader.i.i:                                   ; preds = %bb.bi
  %i.ga = getelementptr inbounds nuw i8, ptr %i.fz, i64 8
  %i.gb = load ptr, ptr %i.ga, align 8, !tbaa !140 ; 2 uses
  %.not1415.i.i = icmp eq ptr %i.gb, null
  br i1 %.not1415.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i

.lr.ph.i.i:                                       ; preds = %.preheader.i.i, %.lr.ph.i.i
  %i.gc = phi ptr [ %i.gf, %.lr.ph.i.i ], [ %i.gb, %.preheader.i.i ] ; 4 uses
  %.017.i.i = phi ptr [ %i.gc, %.lr.ph.i.i ], [ %i.fz, %.preheader.i.i ]
  %.01116.i.i = phi ptr [ %.017.i.i, %.lr.ph.i.i ], [ %.021.i, %.preheader.i.i ]
  %i.gd = getelementptr inbounds nuw i8, ptr %.01116.i.i, i64 8
  store ptr %i.gc, ptr %i.gd, align 8, !tbaa !140
  %i.ge = getelementptr inbounds nuw i8, ptr %i.gc, i64 8
  %i.gf = load ptr, ptr %i.ge, align 8, !tbaa !140 ; 2 uses
  %.not14.i.i = icmp eq ptr %i.gf, null
  br i1 %.not14.i.i, label %._crit_edge.i.i, label %.lr.ph.i.i, !llvm.loop !0

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i, %.preheader.i.i
  %.0.lcssa.i.i = phi ptr [ %i.fz, %.preheader.i.i ], [ %i.gc, %.lr.ph.i.i ] ; 2 uses
  store ptr %.0.lcssa.i.i, ptr %i.fy, align 8, !tbaa !140
  br label %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i

_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i: ; preds = %._crit_edge.i.i, %bb.bi, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i
  %.135.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.0.i, %bb.bi ], [ %.0.i, %._crit_edge.i.i ] ; 3 uses
  %.12034.i = phi i1 [ %.019.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ true, %bb.bi ], [ true, %._crit_edge.i.i ] ; 2 uses
  %.12333.i = phi ptr [ %.021.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.022.i, %bb.bi ], [ %.022.i, %._crit_edge.i.i ]
  %.12532.i = phi ptr [ %.024.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.021.i, %bb.bi ], [ %.0.lcssa.i.i, %._crit_edge.i.i ] ; 2 uses
  %i.gg = icmp eq ptr %.12532.i, %.135.i
  %.not27.i = select i1 %i.gg, i1 %.12034.i, i1 false
  br i1 %.not27.i, label %_ZN4absl12lts_20250512L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit, label %.preheader258, !llvm.loop !224

_ZN4absl12lts_20250512L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit: ; preds = %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i
  %.2.i = phi ptr [ %.0.i.i, %_ZN4absl12lts_20250512L7DequeueEPNS0_13base_internal14PerThreadSynchES3_.exit.i ], [ %.135.i, %_ZN4absl12lts_20250512L4SkipEPNS0_13base_internal14PerThreadSynchE.exit.thread.i ] ; 2 uses
  %i.gh = and i64 %i.o, 16                        ; 2 uses
  %i.gi = or disjoint i64 %i.gh, 2
  br i1 %i.f, label %bb.bk, label %bb.bj

bb.bj:                                            ; preds = %_ZN4absl12lts_20250512L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit
  %i.gj = tail call fastcc noundef ptr @_ZN4absl12lts_20250512L7EnqueueEPNS0_13base_internal14PerThreadSynchEPNS0_15SynchWaitParamsEli(ptr noundef %.2.i, ptr noundef nonnull %1, i64 noundef %i.o, i32 noundef 2)
  br label %bb.bk

bb.bk:                                            ; preds = %bb.bj, %_ZN4absl12lts_20250512L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit
  %.0126 = phi ptr [ %.2.i, %_ZN4absl12lts_20250512L18DequeueAllWakeableEPNS0_13base_internal14PerThreadSynchES3_PS3_.exit ], [ %i.gj, %bb.bj ] ; 4 uses
  %.0..0..0.227 = load ptr, ptr %i.a, align 8, !tbaa !230
  %.not189 = icmp eq ptr %.0..0..0.227, inttoptr (i64 1 to ptr)
  br i1 %.not189, label %bb.bl, label %bb.bm, !prof !144

bb.bl:                                            ; preds = %bb.bk
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 3, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 76), i32 noundef 2380, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27)
  unreachable

bb.bm:                                            ; preds = %bb.bk
  %.not190 = icmp eq ptr %.0126, null
end_hunk_0
