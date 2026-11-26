Download link: https://huggingface.co/buckets/llvm-opt-benchmark/llvm-opt-benchmark/resolve/node/original/cpu-profiler?download=true
inline.NumInlined: 1185
inline.NumDeleted: 792
loop-unroll.NumCompletelyUnrolled: 1
loop-unroll.NumRuntimeUnrolled: 1
loop-unroll.NumUnrolled: 4
begin_hunk_0_@_ZN2v88internal11CpuProfiler13StopProcessorEv:bb.a
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 120
  store i8 0, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 96 ; 3 uses
  %i.c = load ptr, ptr %i.b, align 8              ; 4 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  %i.e = cmpxchg ptr %i.d, i8 1, i8 0 monotonic monotonic, align 1
  %i.f = extractvalue { i8, i1 } %i.e, 1
  br i1 %i.f, label %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i, label %_ZN2v88internal23ProfilerEventsProcessor17StopSynchronouslyEv.exit

_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i:    ; preds = %bb.a
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 96 ; 2 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  tail call void @_ZN2v84base17ConditionVariable9NotifyOneEv(ptr noundef nonnull align 8 dereferenceable(8) %i.h) #20
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.g) #20
  tail call void @_ZN2v84base6Thread4JoinEv(ptr noundef nonnull align 8 dereferenceable(200) %i.c) #20
  br label %_ZN2v88internal23ProfilerEventsProcessor17StopSynchronouslyEv.exit

_ZN2v88internal23ProfilerEventsProcessor17StopSynchronouslyEv.exit: ; preds = %bb.a, %_ZN2v84base9LockGuardINS0_5MutexEED2Ev.exit.i
  %i.i = load ptr, ptr %i.b, align 8              ; 3 uses
  store ptr null, ptr %i.b, align 8
  %.not.i.i = icmp eq ptr %i.i, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal23ProfilerEventsProcessorESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal23ProfilerEventsProcessorEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal23ProfilerEventsProcessorEEclEPS2_.exit.i.i: ; preds = %_ZN2v88internal23ProfilerEventsProcessor17StopSynchronouslyEv.exit
  %i.j = load ptr, ptr %i.i, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.j, i64 8
  %i.l = load ptr, ptr %i.k, align 8
  tail call void %i.l(ptr noundef nonnull align 8 dereferenceable(200) %i.i) #20, !inline_history !3
  br label %_ZNSt10unique_ptrIN2v88internal23ProfilerEventsProcessorESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal23ProfilerEventsProcessorESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZN2v88internal23ProfilerEventsProcessor17StopSynchronouslyEv.exit, %_ZNKSt14default_deleteIN2v88internal23ProfilerEventsProcessorEEclEPS2_.exit.i.i
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CpuProfiler13ResetProfilesEv(ptr noundef nonnull align 8 dereferenceable(121) %0) local_unnamed_addr #0 align 2 !guid !102 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 3 uses
  %i.b = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22 ; 3 uses
  %i.c = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal21CpuProfilesCollectionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef %i.c) #20
  %i.d = load ptr, ptr %i.a, align 8              ; 3 uses
  store ptr %i.b, ptr %i.a, align 8
  %.not.i.i = icmp eq ptr %i.d, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal21CpuProfilesCollectionESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i: ; preds = %bb.a
  tail call void @_ZN2v88internal21CpuProfilesCollectionD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.d) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.d, i64 noundef 120) #23
  %.pre = load ptr, ptr %i.a, align 8
  br label %_ZNSt10unique_ptrIN2v88internal21CpuProfilesCollectionESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal21CpuProfilesCollectionESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i
  %i.e = phi ptr [ %i.b, %bb.a ], [ %.pre, %_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i ]
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 64
  store ptr %0, ptr %i.f, align 8
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CpuProfiler13DeleteProfileEPNS0_10CpuProfileE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1) local_unnamed_addr #0 align 2 !guid !103 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 80 ; 5 uses
  %i.b = load ptr, ptr %i.a, align 8
  tail call void @_ZN2v88internal21CpuProfilesCollection13RemoveProfileEPNS0_10CpuProfileE(ptr noundef nonnull align 8 dereferenceable(120) %i.b, ptr noundef %1) #20
  %i.c = load ptr, ptr %i.a, align 8              ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  %i.e = load ptr, ptr %i.d, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  %i.g = load ptr, ptr %i.f, align 8
  %i.h = icmp eq ptr %i.e, %i.g
  br i1 %i.h, label %bb.b, label %bb.d

bb.b:                                             ; preds = %bb.a
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 120
  %i.j = load i8, ptr %i.i, align 8, !range !42, !noundef !43
  %i.k = trunc nuw i8 %i.j to i1
  br i1 %i.k, label %bb.d, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.l = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22 ; 3 uses
  %i.m = load ptr, ptr %0, align 8
  tail call void @_ZN2v88internal21CpuProfilesCollectionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(120) %i.l, ptr noundef %i.m) #20
  %i.n = load ptr, ptr %i.a, align 8              ; 3 uses
  store ptr %i.l, ptr %i.a, align 8
  %.not.i.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i.i, label %_ZN2v88internal11CpuProfiler13ResetProfilesEv.exit, label %_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i.i

_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i.i: ; preds = %bb.c
  tail call void @_ZN2v88internal21CpuProfilesCollectionD2Ev(ptr noundef nonnull align 8 dead_on_return(120) dereferenceable(120) %i.n) #20
  tail call void @_ZdlPvm(ptr noundef nonnull %i.n, i64 noundef 120) #23
  %.pre.i = load ptr, ptr %i.a, align 8
  br label %_ZN2v88internal11CpuProfiler13ResetProfilesEv.exit

_ZN2v88internal11CpuProfiler13ResetProfilesEv.exit: ; preds = %bb.c, %_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i.i
  %i.o = phi ptr [ %i.l, %bb.c ], [ %.pre.i, %_ZNKSt14default_deleteIN2v88internal21CpuProfilesCollectionEEclEPS2_.exit.i.i.i ]
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store ptr %0, ptr %i.p, align 8
  br label %bb.d

bb.d:                                             ; preds = %_ZN2v88internal11CpuProfiler13ResetProfilesEv.exit, %bb.b, %bb.a
  ret void
}

declare void @_ZN2v88internal21CpuProfilesCollection13RemoveProfileEPNS0_10CpuProfileE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) local_unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CpuProfilerC2EPNS0_7IsolateENS_22CpuProfilingNamingModeENS_23CpuProfilingLoggingModeE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3) unnamed_addr #0 align 2 !guid !104 {
bb.a:
  %i.a = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22 ; 2 uses
  tail call void @_ZN2v88internal21CpuProfilesCollectionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(120) %i.a, ptr noundef %1) #20
  %i.b = tail call noalias noundef nonnull dereferenceable(120) ptr @_Znwm(i64 noundef 120) #22 ; 8 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 2 uses
  store ptr getelementptr inbounds nuw inrange(-16, 24) (i8, ptr @_ZTVN2v88internal20ProfilerCodeObserverE, i64 16), ptr %i.b, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %i.b, i64 8
  store ptr %1, ptr %i.d, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %i.b, i64 16
  store ptr %i.c, ptr %i.e, align 8
  %i.f = getelementptr inbounds nuw i8, ptr %i.b, i64 24
  tail call void @_ZN2v88internal20InstructionStreamMapC1ERNS0_16CodeEntryStorageE(ptr noundef nonnull align 8 dereferenceable(56) %i.f, ptr noundef nonnull align 8 dereferenceable(40) %i.c) #20
  %i.g = getelementptr inbounds nuw i8, ptr %i.b, i64 80
  store ptr %1, ptr %i.g, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.b, i64 88
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) %i.h, i8 0, i64 32, i1 false)
  tail call void @_ZN2v88internal20ProfilerCodeObserver11LogBuiltinsEv(ptr noundef nonnull align 8 dereferenceable(120) %i.b)
  tail call void @_ZN2v88internal11CpuProfilerC2EPNS0_7IsolateENS_22CpuProfilingNamingModeENS_23CpuProfilingLoggingModeEPNS0_21CpuProfilesCollectionEPNS0_10SymbolizerEPNS0_23ProfilerEventsProcessorEPNS0_20ProfilerCodeObserverE(ptr noundef nonnull align 8 dereferenceable(121) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef nonnull %i.a, ptr noundef null, ptr noundef null, ptr noundef nonnull %i.b)
  ret void
}

declare void @_ZN2v88internal21CpuProfilesCollectionC1EPNS0_7IsolateE(ptr noundef nonnull align 8 dereferenceable(120), ptr noundef) unnamed_addr #2

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CpuProfilerC2EPNS0_7IsolateENS_22CpuProfilingNamingModeENS_23CpuProfilingLoggingModeEPNS0_21CpuProfilesCollectionEPNS0_10SymbolizerEPNS0_23ProfilerEventsProcessorEPNS0_20ProfilerCodeObserverE(ptr noundef nonnull align 8 dereferenceable(121) initializes((0, 17), (24, 32)) %0, ptr noundef %1, i32 noundef %2, i32 noundef %3, ptr noundef %4, ptr noundef %5, ptr noundef %6, ptr noundef %7) unnamed_addr #0 align 2 !guid !106 {
bb.a:
  store ptr %1, ptr %0, align 8
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i32 %2, ptr %i.a, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 12
  store i32 %3, ptr %i.b, align 4
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  store i8 1, ptr %i.c, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.e = load i32, ptr getelementptr inbounds nuw (i8, ptr @_ZN2v88internal8v8_flagsE, i64 1456), align 16
  %i.f = sext i32 %i.e to i64
  store i64 %i.f, ptr %i.d, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 32
  tail call void @_ZN2v88internal14StringsStorageC1Ev(ptr noundef nonnull align 8 dereferenceable(40) %i.g) #20
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 72
  store ptr %7, ptr %i.h, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %0, i64 80
  store ptr %4, ptr %i.i, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 88
  store ptr %5, ptr %i.j, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 96
  store ptr %6, ptr %i.k, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.m = getelementptr inbounds nuw i8, ptr %4, i64 64
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(17) %i.l, i8 0, i64 17, i1 false)
  store ptr %0, ptr %i.m, align 8
  %i.n = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object acquire, align 8
  %i.o = icmp eq i8 %i.n, 0
  br i1 %i.o, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.p = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object) #20
  %.not.i = icmp eq i32 %i.p, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 32), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 48), ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, align 8
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 32), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 40), i8 0, i64 16, i1 false)
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 56)) #20
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object) #20
  br label %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit

_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 56)) #20
  %i.q = tail call noalias noundef nonnull dereferenceable(24) ptr @_Znwm(i64 noundef 24) #22 ; 4 uses
  store ptr null, ptr %i.q, align 8
  %i.r = getelementptr inbounds nuw i8, ptr %i.q, i64 8
  store ptr %1, ptr %i.r, align 8
  %i.s = getelementptr inbounds nuw i8, ptr %i.q, i64 16
  store ptr %0, ptr %i.s, align 8
  %i.t = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 24), align 8
  %.not.not.i.i.i.i.i.i = icmp eq i64 %i.t, 0
  br i1 %.not.not.i.i.i.i.i.i, label %.preheader.i, label %_ZN2v88internal12_GLOBAL__N_119CpuProfilersManager11AddProfilerEPNS0_7IsolateEPNS0_11CpuProfilerE.exit

.preheader.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit, %bb.d
  %.sroa.0.0.in.i.i.i.i.i.i = phi ptr [ %.sroa.0.0.i.i.i.i.i.i, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 16), %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit ]
  %.sroa.0.0.i.i.i.i.i.i = load ptr, ptr %.sroa.0.0.in.i.i.i.i.i.i, align 8 ; 4 uses
  %i.u = icmp eq ptr %.sroa.0.0.i.i.i.i.i.i, null
  br i1 %i.u, label %_ZN2v88internal12_GLOBAL__N_119CpuProfilersManager11AddProfilerEPNS0_7IsolateEPNS0_11CpuProfilerE.exit, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.v = getelementptr inbounds nuw i8, ptr %.sroa.0.0.i.i.i.i.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = icmp eq ptr %1, %i.w
  br i1 %i.x, label %_ZN2v88internal12_GLOBAL__N_119CpuProfilersManager11AddProfilerEPNS0_7IsolateEPNS0_11CpuProfilerE.exit, label %.preheader.i, !llvm.loop !105

_ZN2v88internal12_GLOBAL__N_119CpuProfilersManager11AddProfilerEPNS0_7IsolateEPNS0_11CpuProfilerE.exit: ; preds = %.preheader.i, %bb.d, %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit
  %.sroa.019.3.i.i.i.i.i.i = phi ptr [ null, %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit ], [ null, %.preheader.i ], [ %.sroa.0.0.i.i.i.i.i.i, %bb.d ]
  %.sroa.4.3.in.i.i.i.i.i.i = phi ptr [ %1, %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit ], [ %1, %.preheader.i ], [ %i.w, %bb.d ]
  %.sroa.4.3.i.i.i.i.i.i = ptrtoint ptr %.sroa.4.3.in.i.i.i.i.i.i to i64
  %i.y = tail call ptr @_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE20_M_insert_multi_nodeEPNSA_10_Hash_nodeIS8_Lb0EEEmSO_(ptr noundef nonnull align 8 dereferenceable(56) @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, ptr noundef %.sroa.019.3.i.i.i.i.i.i, i64 noundef %.sroa.4.3.i.i.i.i.i.i, ptr noundef nonnull %i.q) ; 0 uses
  tail call void @_ZN2v84base5Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 56)) #20
  %i.z = icmp eq i32 %3, 1
  br i1 %i.z, label %bb.e, label %bb.f

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119CpuProfilersManager11AddProfilerEPNS0_7IsolateEPNS0_11CpuProfilerE.exit
  tail call void @_ZN2v88internal11CpuProfiler13EnableLoggingEv(ptr noundef nonnull align 8 dereferenceable(121) %0)
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %_ZN2v88internal12_GLOBAL__N_119CpuProfilersManager11AddProfilerEPNS0_7IsolateEPNS0_11CpuProfilerE.exit
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CpuProfiler13EnableLoggingEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(121) %0) local_unnamed_addr #0 align 2 !guid !107 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 112 ; 3 uses
  %i.b = load ptr, ptr %i.a, align 8
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.b, label %_ZNSt10unique_ptrIN2v88internal14ProfilingScopeESt14default_deleteIS2_EE5resetEPS2_.exit

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 4 uses
  %i.d = load ptr, ptr %i.c, align 8
  %.not2 = icmp eq ptr %i.d, null
  br i1 %.not2, label %bb.c, label %_ZNSt10unique_ptrIN2v88internal16ProfilerListenerESt14default_deleteIS2_EE5resetEPS2_.exit

bb.c:                                             ; preds = %bb.b
  %i.e = tail call noalias noundef nonnull dereferenceable(56) ptr @_Znwm(i64 noundef 56) #22 ; 2 uses
  %i.f = load ptr, ptr %0, align 8
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.h = load ptr, ptr %i.g, align 8              ; 3 uses
  %i.i = getelementptr inbounds nuw i8, ptr %i.h, i64 16
  %i.j = load ptr, ptr %i.i, align 8, !nonnull !43, !align !46
  %i.k = getelementptr inbounds nuw i8, ptr %i.h, i64 80
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.m = load i32, ptr %i.l, align 8
  tail call void @_ZN2v88internal16ProfilerListenerC1EPNS0_7IsolateEPNS0_17CodeEventObserverERNS0_16CodeEntryStorageERNS0_16WeakCodeRegistryENS_22CpuProfilingNamingModeE(ptr noundef nonnull align 8 dereferenceable(52) %i.e, ptr noundef %i.f, ptr noundef %i.h, ptr noundef nonnull align 8 dereferenceable(40) %i.j, ptr noundef nonnull align 8 dereferenceable(32) %i.k, i32 noundef %i.m) #20
  %i.n = load ptr, ptr %i.c, align 8              ; 3 uses
  store ptr %i.e, ptr %i.c, align 8
  %.not.i.i = icmp eq ptr %i.n, null
  br i1 %.not.i.i, label %_ZNSt10unique_ptrIN2v88internal16ProfilerListenerESt14default_deleteIS2_EE5resetEPS2_.exit, label %_ZNKSt14default_deleteIN2v88internal16ProfilerListenerEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal16ProfilerListenerEEclEPS2_.exit.i.i: ; preds = %bb.c
  %i.o = load ptr, ptr %i.n, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.o, i64 8
  %i.q = load ptr, ptr %i.p, align 8
  tail call void %i.q(ptr noundef nonnull align 8 dereferenceable(52) %i.n) #20, !inline_history !4
  br label %_ZNSt10unique_ptrIN2v88internal16ProfilerListenerESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal16ProfilerListenerESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal16ProfilerListenerEEclEPS2_.exit.i.i, %bb.c, %bb.b
  %i.r = tail call noalias noundef nonnull dereferenceable(16) ptr @_Znwm(i64 noundef 16) #22 ; 2 uses
  %i.s = load ptr, ptr %0, align 8
  %i.t = load ptr, ptr %i.c, align 8
  tail call void @_ZN2v88internal14ProfilingScopeC2EPNS0_7IsolateEPNS0_16ProfilerListenerE(ptr noundef nonnull align 8 dereferenceable(16) %i.r, ptr noundef %i.s, ptr noundef %i.t)
  %i.u = load ptr, ptr %i.a, align 8              ; 6 uses
  store ptr %i.r, ptr %i.a, align 8
  %.not.i.i1 = icmp eq ptr %i.u, null
  br i1 %.not.i.i1, label %_ZNSt10unique_ptrIN2v88internal14ProfilingScopeESt14default_deleteIS2_EE5resetEPS2_.exit, label %bb.d

bb.d:                                             ; preds = %_ZNSt10unique_ptrIN2v88internal16ProfilerListenerESt14default_deleteIS2_EE5resetEPS2_.exit
  %i.v = load ptr, ptr %i.u, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 59504
  %i.x = load ptr, ptr %i.w, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.z = load ptr, ptr %i.y, align 8
  %i.aa = tail call noundef zeroext i1 @_ZN2v88internal6Logger14RemoveListenerEPNS0_16LogEventListenerE(ptr noundef nonnull align 8 dereferenceable(40) %i.x, ptr noundef %i.z)
  br i1 %i.aa, label %bb.f, label %bb.e, !prof !41

bb.e:                                             ; preds = %bb.d
  tail call void (ptr, ...) @_Z8V8_FatalPKcz(ptr noundef nonnull @.str, ptr noundef nonnull @.str.2) #21
  unreachable

bb.f:                                             ; preds = %bb.d
  %i.ab = load ptr, ptr %i.u, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.ab, i64 59872 ; 2 uses
  %i.ad = load i64, ptr %i.ac, align 8
  %i.ae = add i64 %i.ad, -1                       ; 2 uses
  store i64 %i.ae, ptr %i.ac, align 8
  %i.af = icmp eq i64 %i.ae, 0
  br i1 %i.af, label %bb.g, label %_ZNKSt14default_deleteIN2v88internal14ProfilingScopeEEclEPS2_.exit.i.i

bb.g:                                             ; preds = %bb.f
  %i.ag = load ptr, ptr %i.u, align 8             ; 2 uses
  %i.ah = getelementptr inbounds nuw i8, ptr %i.ag, i64 76
  %i.ai = atomicrmw and ptr %i.ah, i8 -2 seq_cst, align 1 ; 0 uses
  tail call void @_ZN2v88internal7Isolate25UpdateLogObjectRelocationEv(ptr noundef nonnull align 8 dereferenceable(64320) %i.ag) #20
  br label %_ZNKSt14default_deleteIN2v88internal14ProfilingScopeEEclEPS2_.exit.i.i

_ZNKSt14default_deleteIN2v88internal14ProfilingScopeEEclEPS2_.exit.i.i: ; preds = %bb.g, %bb.f
  tail call void @_ZdlPvm(ptr noundef nonnull %i.u, i64 noundef 16) #23
  br label %_ZNSt10unique_ptrIN2v88internal14ProfilingScopeESt14default_deleteIS2_EE5resetEPS2_.exit

_ZNSt10unique_ptrIN2v88internal14ProfilingScopeESt14default_deleteIS2_EE5resetEPS2_.exit: ; preds = %_ZNKSt14default_deleteIN2v88internal14ProfilingScopeEEclEPS2_.exit.i.i, %_ZNSt10unique_ptrIN2v88internal16ProfilerListenerESt14default_deleteIS2_EE5resetEPS2_.exit, %bb.a
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define hidden void @_ZN2v88internal11CpuProfilerD2Ev(ptr noundef nonnull align 8 dead_on_return(121) dereferenceable(121) %0) unnamed_addr #0 align 2 !guid !113 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit, !prof !47

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object) #20
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(32) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 32), i8 0, i64 32, i1 false)
  store ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 48), ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, align 8
  store i64 1, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 8), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 16), i8 0, i64 16, i1 false)
  store float 1.000000e+00, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 32), align 8
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 40), i8 0, i64 16, i1 false)
  tail call void @_ZN2v84base5MutexC1Ev(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 56)) #20
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object) #20
  br label %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit

_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit: ; preds = %bb.a, %bb.b, %bb.c
  %i.d = load ptr, ptr %0, align 8                ; 5 uses
  tail call void @_ZN2v84base5Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 56)) #20
  %i.e = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 24), align 8
  %.not.not.i.i.i.i = icmp eq i64 %i.e, 0
  br i1 %.not.not.i.i.i.i, label %.preheader.i, label %bb.e

.preheader.i:                                     ; preds = %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit, %bb.d
  %.sroa.06.0.in.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.d ], [ getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 16), %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit ]
  %.sroa.06.0.i.i.i.i = load ptr, ptr %.sroa.06.0.in.i.i.i.i, align 8 ; 4 uses
  %i.f = icmp eq ptr %.sroa.06.0.i.i.i.i, null
  br i1 %i.f, label %.critedge.i, label %bb.d

bb.d:                                             ; preds = %.preheader.i
  %i.g = getelementptr inbounds nuw i8, ptr %.sroa.06.0.i.i.i.i, i64 8
  %i.h = load ptr, ptr %i.g, align 8
  %i.i = icmp eq ptr %i.d, %i.h
  br i1 %i.i, label %_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS5_.exit.i.i.i, label %.preheader.i, !llvm.loop !5

bb.e:                                             ; preds = %_ZN2v88internal12_GLOBAL__N_119GetProfilersManagerEv.exit
  %i.j = ptrtoint ptr %i.d to i64
  %i.k = load i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, i64 8), align 8 ; 2 uses
  %i.l = urem i64 %i.j, %i.k                      ; 2 uses
  %i.m = load ptr, ptr @_ZZN2v88internal12_GLOBAL__N_119GetProfilersManagerEvE6object, align 8
  %i.n = getelementptr inbounds nuw [8 x i8], ptr %i.m, i64 %i.l
  %i.o = load ptr, ptr %i.n, align 8              ; 2 uses
  %.not.i.i.i.i.i.i = icmp eq ptr %i.o, null
  br i1 %.not.i.i.i.i.i.i, label %.critedge.i, label %bb.f

bb.f:                                             ; preds = %bb.e
  %i.p = load ptr, ptr %i.o, align 8              ; 3 uses
  %i.q = getelementptr inbounds nuw i8, ptr %i.p, i64 8
  %i.r = load ptr, ptr %i.q, align 8
  %i.s = icmp eq ptr %i.d, %i.r
  br i1 %i.s, label %_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i

bb.g:                                             ; preds = %bb.h
  %i.t = icmp eq ptr %i.d, %i.w
  br i1 %i.t, label %_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS5_.exit.i.i.i, label %.lr.ph.i.i.i.i.i.i, !llvm.loop !6

.lr.ph.i.i.i.i.i.i:                               ; preds = %bb.f, %bb.g
  %.020.i.i.i.i.i.i = phi ptr [ %i.u, %bb.g ], [ %i.p, %bb.f ]
  %i.u = load ptr, ptr %.020.i.i.i.i.i.i, align 8 ; 4 uses
  %.not18.i.i.i.i.i.i = icmp eq ptr %i.u, null
  br i1 %.not18.i.i.i.i.i.i, label %.critedge.i, label %bb.h

bb.h:                                             ; preds = %.lr.ph.i.i.i.i.i.i
  %i.v = getelementptr inbounds nuw i8, ptr %i.u, i64 8
  %i.w = load ptr, ptr %i.v, align 8              ; 2 uses
  %i.x = ptrtoint ptr %i.w to i64
  %i.y = urem i64 %i.x, %i.k
  %.not19.i.i.i.i.i.i = icmp eq i64 %i.y, %i.l
  br i1 %.not19.i.i.i.i.i.i, label %bb.g, label %..loopexit_crit_edge21.i.i.i.i.i.i, !llvm.loop !6

..loopexit_crit_edge21.i.i.i.i.i.i:               ; preds = %bb.h
  br label %.critedge.i, !llvm.loop !6

_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS5_.exit.i.i.i: ; preds = %bb.g, %bb.d, %bb.f
  %.sroa.06.1.i.i.i.i = phi ptr [ %.sroa.06.0.i.i.i.i, %bb.d ], [ %i.p, %bb.f ], [ %i.u, %bb.g ] ; 3 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.j, %_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS5_.exit.i.i.i
  %.sroa.03.0.in.i.i.i = phi ptr [ %.sroa.06.1.i.i.i.i, %_ZNSt10_HashtableIPN2v88internal7IsolateESt4pairIKS3_PNS1_11CpuProfilerEESaIS8_ENSt8__detail10_Select1stESt8equal_toIS3_ESt4hashIS3_ENSA_18_Mod_range_hashingENSA_20_Default_ranged_hashENSA_20_Prime_rehash_policyENSA_17_Hashtable_traitsILb0ELb0ELb0EEEE4findERS5_.exit.i.i.i ], [ %.sroa.03.0.i.i.i, %bb.j ]
  %.sroa.03.0.i.i.i = load ptr, ptr %.sroa.03.0.in.i.i.i, align 8 ; 5 uses
  %.not2.i.i.i = icmp eq ptr %.sroa.03.0.i.i.i, null
  br i1 %.not2.i.i.i, label %_ZNSt18unordered_multimapIPN2v88internal7IsolateEPNS1_11CpuProfilerESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE11equal_rangeERSB_.exit.i, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = getelementptr inbounds nuw i8, ptr %.sroa.03.0.i.i.i, i64 8
  %i.aa = load ptr, ptr %i.z, align 8
  %i.ab = icmp eq ptr %i.d, %i.aa
  br i1 %i.ab, label %bb.i, label %_ZNSt18unordered_multimapIPN2v88internal7IsolateEPNS1_11CpuProfilerESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE11equal_rangeERSB_.exit.i, !llvm.loop !7

_ZNSt18unordered_multimapIPN2v88internal7IsolateEPNS1_11CpuProfilerESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE11equal_rangeERSB_.exit.i: ; preds = %bb.j, %bb.i
  %i.ac = icmp eq ptr %.sroa.06.1.i.i.i.i, %.sroa.03.0.i.i.i
  br i1 %i.ac, label %.critedge.i, label %.lr.ph.i

.lr.ph.i:                                         ; preds = %_ZNSt18unordered_multimapIPN2v88internal7IsolateEPNS1_11CpuProfilerESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE11equal_rangeERSB_.exit.i, %bb.u
  %.sroa.0.013.i = phi ptr [ %i.be, %bb.u ], [ %.sroa.06.1.i.i.i.i, %_ZNSt18unordered_multimapIPN2v88internal7IsolateEPNS1_11CpuProfilerESt4hashIS3_ESt8equal_toIS3_ESaISt4pairIKS3_S5_EEE11equal_rangeERSB_.exit.i ] ; 7 uses
  %i.ad = getelementptr inbounds nuw i8, ptr %.sroa.0.013.i, i64 16
end_hunk_0
