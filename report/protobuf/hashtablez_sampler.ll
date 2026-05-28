inline.NumInlined: 108
inline.NumDeleted: 44
begin_hunk_0_@_ZN4absl12lts_2025051218container_internal10SampleSlowERNS1_13SamplingStateEmmmt:bb.a
  br i1 %i.i, label %bb.c, label %_ZN4absl12lts_2025051218container_internalL19ShouldForceSamplingEv.exit.thread, !prof !38

bb.c:                                             ; preds = %_ZN4absl12lts_2025051218container_internalL19ShouldForceSamplingEv.exit
  store i64 1, ptr %0, align 8, !tbaa !39
  call void @llvm.lifetime.start.p0(ptr nonnull %i.e) #14
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.k = load i64, ptr %i.j, align 8, !tbaa !35
  store i64 1, ptr %i.j, align 8, !tbaa !35
  store i64 %i.k, ptr %i.e, align 8, !tbaa !35
  %i.l = tail call noundef nonnull align 8 dereferenceable(712) ptr @_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv()
  %i.m = call noundef ptr @_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE8RegisterIJRKlRmS9_S9_RtEEEPS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(712) %i.l, ptr noundef nonnull align 8 dereferenceable(8) %i.e, ptr noundef nonnull align 8 dereferenceable(8) %i.a, ptr noundef nonnull align 8 dereferenceable(8) %i.b, ptr noundef nonnull align 8 dereferenceable(8) %i.c, ptr noundef nonnull align 2 dereferenceable(2) %i.d)
  call void @llvm.lifetime.end.p0(ptr nonnull %i.e) #14
  br label %bb.d

_ZN4absl12lts_2025051218container_internalL19ShouldForceSamplingEv.exit.thread: ; preds = %bb.a, %_ZN4absl12lts_2025051218container_internalL19ShouldForceSamplingEv.exit
  store i64 9223372036854775807, ptr %0, align 8, !tbaa !35
  %.sroa.4.0..sroa_idx = getelementptr inbounds nuw i8, ptr %0, i64 8
  store i64 9223372036854775807, ptr %.sroa.4.0..sroa_idx, align 8, !tbaa !35
  br label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internalL19ShouldForceSamplingEv.exit.thread, %bb.c
  %.0 = phi ptr [ %i.m, %bb.c ], [ null, %_ZN4absl12lts_2025051218container_internalL19ShouldForceSamplingEv.exit.thread ]
  ret ptr %.0
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE8RegisterIJRKlRmS9_S9_RtEEEPS4_DpOT_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef nonnull align 8 dereferenceable(8) %1, ptr noundef nonnull align 8 dereferenceable(8) %2, ptr noundef nonnull align 8 dereferenceable(8) %3, ptr noundef nonnull align 8 dereferenceable(8) %4, ptr noundef nonnull align 2 dereferenceable(2) %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8 ; 2 uses
  %i.b = atomicrmw add ptr %i.a, i64 1 monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = icmp ugt i64 %i.b, %i.d
  br i1 %i.e, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.f = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  %i.g = atomicrmw add ptr %0, i64 1 monotonic, align 8 ; 0 uses
  br label %_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PushNewEPS4_.exit

bb.c:                                             ; preds = %bb.a
  %i.h = load i64, ptr %1, align 8, !tbaa !35
  %i.i = load i64, ptr %2, align 8, !tbaa !35
  %i.j = load i64, ptr %3, align 8, !tbaa !35
  %i.k = load i64, ptr %4, align 8, !tbaa !35
  %i.l = load i16, ptr %5, align 2, !tbaa !36
  %i.m = tail call noundef ptr @_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PopDeadIJlmmmtEEEPS4_DpT_(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %i.h, i64 noundef %i.i, i64 noundef %i.j, i64 noundef %i.k, i16 noundef zeroext %i.l) ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  br i1 %i.n, label %bb.d, label %_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PushNewEPS4_.exit

bb.d:                                             ; preds = %bb.c
  %i.o = tail call noalias noundef nonnull dereferenceable(672) ptr @_Znwm(i64 noundef 672) #16 ; 30 uses
  invoke void @_ZN4absl12lts_2025051218container_internal14HashtablezInfoC1Ev(ptr noundef nonnull align 8 dereferenceable(672) %i.o)
          to label %bb.e unwind label %bb.i

bb.e:                                             ; preds = %bb.d
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
  invoke void @_ZN4absl12lts_202505125Mutex18ForgetDeadlockInfoEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %bb.f unwind label %bb.j

bb.f:                                             ; preds = %bb.e
  %i.p = load i64, ptr %1, align 8, !tbaa !35
  %i.q = load i64, ptr %2, align 8, !tbaa !35
  %i.r = load i64, ptr %3, align 8, !tbaa !35
  %i.s = load i64, ptr %4, align 8, !tbaa !35
  %i.t = load i16, ptr %5, align 2, !tbaa !36
  %i.u = getelementptr inbounds nuw i8, ptr %i.o, i64 32
  store atomic i64 0, ptr %i.u monotonic, align 8
  %i.v = getelementptr inbounds nuw i8, ptr %i.o, i64 40
  store atomic i64 0, ptr %i.v monotonic, align 8
  %i.w = getelementptr inbounds nuw i8, ptr %i.o, i64 48
  store atomic i64 0, ptr %i.w monotonic, align 8
  %i.x = getelementptr inbounds nuw i8, ptr %i.o, i64 56
  store atomic i64 0, ptr %i.x monotonic, align 8
  %i.y = getelementptr inbounds nuw i8, ptr %i.o, i64 64
  store atomic i64 0, ptr %i.y monotonic, align 8
  %i.z = getelementptr inbounds nuw i8, ptr %i.o, i64 72
  store atomic i64 0, ptr %i.z monotonic, align 8
  %i.aa = getelementptr inbounds nuw i8, ptr %i.o, i64 80
  store atomic i64 0, ptr %i.aa monotonic, align 8
  %i.ab = getelementptr inbounds nuw i8, ptr %i.o, i64 88
  store atomic i64 -1, ptr %i.ab monotonic, align 8
  %i.ac = getelementptr inbounds nuw i8, ptr %i.o, i64 96
  store atomic i64 0, ptr %i.ac monotonic, align 8
  %i.ad = getelementptr inbounds nuw i8, ptr %i.o, i64 104
  store atomic i64 0, ptr %i.ad monotonic, align 8
  %i.ae = invoke { i64, i32 } @_ZN4absl12lts_202505123NowEv()
          to label %.noexc unwind label %bb.j     ; 2 uses

.noexc:                                           ; preds = %bb.f
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.ae, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.ae, 1
  %i.af = getelementptr inbounds nuw i8, ptr %i.o, i64 112
  store i64 %.fca.0.extract.i, ptr %i.af, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.o, i64 120
  store i32 %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  %i.ag = getelementptr inbounds nuw i8, ptr %i.o, i64 24
  store i64 %i.p, ptr %i.ag, align 8, !tbaa !25
  %i.ah = getelementptr inbounds nuw i8, ptr %i.o, i64 136
  %i.ai = invoke noundef i32 @_ZN4absl12lts_2025051213GetStackTraceEPPvii(ptr noundef nonnull %i.ah, i32 noundef 64, i32 noundef 0)
          to label %bb.g unwind label %bb.j

bb.g:                                             ; preds = %.noexc
  %i.aj = getelementptr inbounds nuw i8, ptr %i.o, i64 124
  store i32 %i.ai, ptr %i.aj, align 4, !tbaa !26
  %i.ak = getelementptr inbounds nuw i8, ptr %i.o, i64 648
  store i64 %i.q, ptr %i.ak, align 8, !tbaa !31
  %i.al = getelementptr inbounds nuw i8, ptr %i.o, i64 656
  store i64 %i.r, ptr %i.al, align 8, !tbaa !32
  %i.am = getelementptr inbounds nuw i8, ptr %i.o, i64 664
  store i64 %i.s, ptr %i.am, align 8, !tbaa !33
  %i.an = getelementptr inbounds nuw i8, ptr %i.o, i64 128
  store i16 %i.t, ptr %i.an, align 8, !tbaa !34
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.h

bb.h:                                             ; preds = %bb.g
  %i.ao = landingpad { ptr, i32 }
          catch ptr null
  %i.ap = extractvalue { ptr, i32 } %i.ao, 0
  tail call void @__clang_call_terminate(ptr %i.ap) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.g
  %i.aq = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 3 uses
  %i.ar = load atomic ptr, ptr %i.aq monotonic, align 8 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %i.o, i64 8 ; 2 uses
  store ptr %i.ar, ptr %i.as, align 8
  %i.at = cmpxchg weak ptr %i.aq, ptr %i.ar, ptr %i.o release monotonic, align 8 ; 2 uses
  %i.au = extractvalue { ptr, i1 } %i.at, 1
  br i1 %i.au, label %_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PushNewEPS4_.exit, label %_ZNSt6atomicIPN4absl12lts_2025051218container_internal14HashtablezInfoEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit.i

_ZNSt6atomicIPN4absl12lts_2025051218container_internal14HashtablezInfoEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit.i: ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %_ZNSt6atomicIPN4absl12lts_2025051218container_internal14HashtablezInfoEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit.i
  %i.av = phi { ptr, i1 } [ %i.ax, %_ZNSt6atomicIPN4absl12lts_2025051218container_internal14HashtablezInfoEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit.i ], [ %i.at, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ]
  %i.aw = extractvalue { ptr, i1 } %i.av, 0       ; 2 uses
  store ptr %i.aw, ptr %i.as, align 8
  %i.ax = cmpxchg weak ptr %i.aq, ptr %i.aw, ptr %i.o release monotonic, align 8 ; 2 uses
  %i.ay = extractvalue { ptr, i1 } %i.ax, 1
  br i1 %i.ay, label %_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PushNewEPS4_.exit, label %_ZNSt6atomicIPN4absl12lts_2025051218container_internal14HashtablezInfoEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit.i, !llvm.loop !41

bb.i:                                             ; preds = %bb.d
  %i.az = landingpad { ptr, i32 }
          cleanup
  tail call void @_ZdlPvm(ptr noundef nonnull %i.o, i64 noundef 672) #17
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit26

bb.j:                                             ; preds = %.noexc, %bb.f, %bb.e
  %i.ba = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.o)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit26 unwind label %bb.k

bb.k:                                             ; preds = %bb.j
  %i.bb = landingpad { ptr, i32 }
          catch ptr null
  %i.bc = extractvalue { ptr, i32 } %i.bb, 0
  tail call void @__clang_call_terminate(ptr %i.bc) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit26:      ; preds = %bb.j, %bb.i
  %.pn = phi { ptr, i32 } [ %i.az, %bb.i ], [ %i.ba, %bb.j ]
  resume { ptr, i32 } %.pn

_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PushNewEPS4_.exit: ; preds = %_ZNSt6atomicIPN4absl12lts_2025051218container_internal14HashtablezInfoEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit.i, %_ZN4absl12lts_202505129MutexLockD2Ev.exit, %bb.c, %bb.b
  %.022 = phi ptr [ null, %bb.b ], [ %i.m, %bb.c ], [ %i.o, %_ZN4absl12lts_202505129MutexLockD2Ev.exit ], [ %i.o, %_ZNSt6atomicIPN4absl12lts_2025051218container_internal14HashtablezInfoEE21compare_exchange_weakERS4_S4_St12memory_orderS7_.exit.i ]
  ret ptr %.022
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal12UnsampleSlowEPNS1_14HashtablezInfoE(ptr noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212NoDestructorINS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS7_EEE5valueEiE4typeELi0EEEDpOSB_(ptr noundef nonnull align 8 dereferenceable(712) @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  br label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  tail call void @_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE8PushDeadEPS4_(ptr noundef nonnull align 8 dereferenceable(712) @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler, ptr noundef %0)
  %i.e = atomicrmw sub ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler, i64 8), i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051218container_internal16RecordRehashSlowEPNS1_14HashtablezInfoEm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i64 %1, 4
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i64 %i.a, ptr %i.b monotonic, align 8
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.c monotonic, align 8
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 56 ; 2 uses
  %i.e = load atomic i64, ptr %i.d monotonic, align 8
  %i.f = add i64 %i.e, 1
  store atomic i64 %i.f, ptr %i.d monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051218container_internal21RecordReservationSlowEPNS1_14HashtablezInfoEm(ptr noundef captures(none) %0, i64 noundef %1) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104 ; 2 uses
  %i.b = load atomic i64, ptr %i.a monotonic, align 8
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.b, i64 %1)
  store atomic i64 %.sroa.speculated, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051218container_internal28RecordClearedReservationSlowEPNS1_14HashtablezInfoE(ptr noundef writeonly captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 104
  store atomic i64 0, ptr %i.a monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051218container_internal24RecordStorageChangedSlowEPNS1_14HashtablezInfoEmm(ptr noundef writeonly captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  store atomic i64 %1, ptr %i.a monotonic, align 8
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 32
  store atomic i64 %2, ptr %i.b monotonic, align 8
  %i.c = icmp eq i64 %1, 0
  br i1 %i.c, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 72
  store atomic i64 0, ptr %i.d monotonic, align 8
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 48
  store atomic i64 0, ptr %i.e monotonic, align 8
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051218container_internal16RecordInsertSlowEPNS1_14HashtablezInfoEmm(ptr noundef captures(none) %0, i64 noundef %1, i64 noundef %2) local_unnamed_addr #6 {
bb.a:
  %i.a = lshr i64 %2, 4                           ; 2 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 88
  %i.c = atomicrmw and ptr %i.b, i64 %1 monotonic, align 8 ; 0 uses
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 80
  %i.e = atomicrmw or ptr %i.d, i64 %1 monotonic, align 8 ; 0 uses
  %i.f = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.g = atomicrmw xor ptr %i.f, i64 %1 monotonic, align 8 ; 0 uses
  %i.h = getelementptr inbounds nuw i8, ptr %0, i64 64 ; 2 uses
  %i.i = load atomic i64, ptr %i.h monotonic, align 8
  %.sroa.speculated = tail call i64 @llvm.umax.i64(i64 %i.i, i64 %i.a)
  store atomic i64 %.sroa.speculated, ptr %i.h monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 72
  %i.k = atomicrmw add ptr %i.j, i64 %i.a monotonic, align 8 ; 0 uses
  %i.l = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.m = atomicrmw add ptr %i.l, i64 1 monotonic, align 8 ; 0 uses
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN4absl12lts_2025051218container_internal15RecordEraseSlowEPNS1_14HashtablezInfoE(ptr noundef captures(none) %0) local_unnamed_addr #6 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = atomicrmw sub ptr %i.a, i64 1 monotonic, align 8 ; 0 uses
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.d = load atomic i64, ptr %i.c monotonic, align 8
  %i.e = add i64 %i.d, 1
  store atomic i64 %i.e, ptr %i.c monotonic, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051218container_internal27SetHashtablezConfigListenerEPFvvE(ptr noundef %0) local_unnamed_addr #7 {
bb.a:
  store atomic ptr %0, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_128g_hashtablez_config_listenerE.0 release, align 8
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef zeroext i1 @_ZN4absl12lts_2025051218container_internal19IsHashtablezEnabledEv() local_unnamed_addr #7 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_120g_hashtablez_enabledE.0 acquire, align 1, !range !43, !noundef !44
  %i.b = trunc nuw i8 %i.a to i1
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal20SetHashtablezEnabledEb(i1 noundef zeroext %0) local_unnamed_addr #0 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_120g_hashtablez_enabledE.0 release, align 1
  %i.b = load atomic ptr, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_128g_hashtablez_config_listenerE.0 acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(), !inline_history !45
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit: ; preds = %bb.a, %bb.b
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define void @_ZN4absl12lts_2025051218container_internal28SetHashtablezEnabledInternalEb(i1 noundef zeroext %0) local_unnamed_addr #7 {
bb.a:
  %i.a = zext i1 %0 to i8
  store atomic i8 %i.a, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_120g_hashtablez_enabledE.0 release, align 1
  ret void
}

; Function Attrs: mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable
define noundef i32 @_ZN4absl12lts_2025051218container_internal28GetHashtablezSampleParameterEv() local_unnamed_addr #7 {
bb.a:
  %i.a = load atomic i32, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_129g_hashtablez_sample_parameterE.0 acquire, align 4
  ret i32 %i.a
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal28SetHashtablezSampleParameterEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic i32 %0, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_129g_hashtablez_sample_parameterE.0 release, align 4
  br label %_ZN4absl12lts_2025051218container_internal36SetHashtablezSampleParameterInternalEi.exit

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 293, ptr noundef nonnull @.str.1, i64 noundef %i.b)
  br label %_ZN4absl12lts_2025051218container_internal36SetHashtablezSampleParameterInternalEi.exit

_ZN4absl12lts_2025051218container_internal36SetHashtablezSampleParameterInternalEi.exit: ; preds = %bb.b, %bb.c
  %i.c = load atomic ptr, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_128g_hashtablez_config_listenerE.0 acquire, align 8 ; 2 uses
  %.not.i = icmp eq ptr %i.c, null
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit, label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_2025051218container_internal36SetHashtablezSampleParameterInternalEi.exit
  tail call void %i.c(), !inline_history !45
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit: ; preds = %_ZN4absl12lts_2025051218container_internal36SetHashtablezSampleParameterInternalEi.exit, %bb.d
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal36SetHashtablezSampleParameterInternalEi(i32 noundef %0) local_unnamed_addr #0 {
bb.a:
  %i.a = icmp sgt i32 %0, 0
  br i1 %i.a, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  store atomic i32 %0, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_129g_hashtablez_sample_parameterE.0 release, align 4
  br label %bb.d

bb.c:                                             ; preds = %bb.a
  %i.b = sext i32 %0 to i64
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 293, ptr noundef nonnull @.str.1, i64 noundef %i.b)
  br label %bb.d

bb.d:                                             ; preds = %bb.c, %bb.b
  ret void
}

declare void @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef, ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN4absl12lts_2025051218container_internal23GetHashtablezMaxSamplesEv() local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.b, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit, !prof !7

bb.b:                                             ; preds = %bb.a
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit, label %bb.c

bb.c:                                             ; preds = %bb.b
  invoke void @_ZN4absl12lts_2025051212NoDestructorINS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS7_EEE5valueEiE4typeELi0EEEDpOSB_(ptr noundef nonnull align 8 dereferenceable(712) @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler)
          to label %bb.d unwind label %bb.e

bb.d:                                             ; preds = %bb.c
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  br label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit

bb.e:                                             ; preds = %bb.c
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit: ; preds = %bb.a, %bb.b, %bb.d
  %i.e = load atomic i64, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler, i64 16) acquire, align 8
  ret i64 %i.e
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal23SetHashtablezMaxSamplesEm(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not.i = icmp eq i64 %0, 0
  br i1 %.not.i, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit.i, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  %.not.i.i = icmp eq i32 %i.c, 0
  br i1 %.not.i.i, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit.i, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212NoDestructorINS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS7_EEE5valueEiE4typeELi0EEEDpOSB_(ptr noundef nonnull align 8 dereferenceable(712) @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  br label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit.i

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit.i: ; preds = %bb.e, %bb.c, %bb.b
  store atomic i64 %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler, i64 16) release, align 8
  br label %_ZN4absl12lts_2025051218container_internal31SetHashtablezMaxSamplesInternalEm.exit

bb.g:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 310, ptr noundef nonnull @.str.2)
  br label %_ZN4absl12lts_2025051218container_internal31SetHashtablezMaxSamplesInternalEm.exit

_ZN4absl12lts_2025051218container_internal31SetHashtablezMaxSamplesInternalEm.exit: ; preds = %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit.i, %bb.g
  %i.e = load atomic ptr, ptr @_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_128g_hashtablez_config_listenerE.0 acquire, align 8 ; 2 uses
  %.not.i1 = icmp eq ptr %i.e, null
  br i1 %.not.i1, label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit, label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_2025051218container_internal31SetHashtablezMaxSamplesInternalEm.exit
  tail call void %i.e(), !inline_history !45
  br label %_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit

_ZN4absl12lts_2025051218container_internal12_GLOBAL__N_131TriggerHashtablezConfigListenerEv.exit: ; preds = %_ZN4absl12lts_2025051218container_internal31SetHashtablezMaxSamplesInternalEm.exit, %bb.h
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN4absl12lts_2025051218container_internal31SetHashtablezMaxSamplesInternalEm(i64 noundef %0) local_unnamed_addr #0 personality ptr @__gxx_personality_v0 {
bb.a:
  %.not = icmp eq i64 %0, 0
  br i1 %.not, label %bb.g, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.a = load atomic i8, ptr @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler acquire, align 8
  %i.b = icmp eq i8 %i.a, 0
  br i1 %i.b, label %bb.c, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit, !prof !7

bb.c:                                             ; preds = %bb.b
  %i.c = tail call i32 @__cxa_guard_acquire(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  %.not.i = icmp eq i32 %i.c, 0
  br i1 %.not.i, label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  invoke void @_ZN4absl12lts_2025051212NoDestructorINS0_18profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEEEEC2IJETnNSt9enable_ifIXntsr3std7is_sameIFvDpRNSt5decayIT_E4typeEEFvRS7_EEE5valueEiE4typeELi0EEEDpOSB_(ptr noundef nonnull align 8 dereferenceable(712) @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler)
          to label %bb.e unwind label %bb.f

bb.e:                                             ; preds = %bb.d
  tail call void @__cxa_guard_release(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  br label %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit

bb.f:                                             ; preds = %bb.d
  %i.d = landingpad { ptr, i32 }
          cleanup
  tail call void @__cxa_guard_abort(ptr nonnull @_ZGVZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler) #14
  resume { ptr, i32 } %i.d

_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit: ; preds = %bb.b, %bb.c, %bb.e
  store atomic i64 %0, ptr getelementptr inbounds nuw (i8, ptr @_ZZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEvE7sampler, i64 16) release, align 8
  br label %bb.h

bb.g:                                             ; preds = %bb.a
  tail call void (i32, ptr, i32, ptr, ...) @_ZN4absl12lts_2025051216raw_log_internal6RawLogENS0_11LogSeverityEPKciS4_z(i32 noundef 2, ptr noundef nonnull getelementptr inbounds nuw (i8, ptr @.str, i64 79), i32 noundef 310, ptr noundef nonnull @.str.2)
  br label %bb.h

bb.h:                                             ; preds = %bb.g, %_ZN4absl12lts_2025051218container_internal23GlobalHashtablezSamplerEv.exit
  ret void
}

declare void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

declare void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: noinline noreturn nounwind uwtable
define linkonce_odr hidden void @__clang_call_terminate(ptr noundef %0) local_unnamed_addr #8 comdat {
bb.a:
  %i.a = tail call ptr @__cxa_begin_catch(ptr %0) #14 ; 0 uses
  tail call void @_ZSt9terminatev() #15
  unreachable
}

declare ptr @__cxa_begin_catch(ptr) local_unnamed_addr

; Function Attrs: cold nofree noreturn
declare void @_ZSt9terminatev() local_unnamed_addr #9

declare zeroext i1 @AbslContainerInternalSampleEverything_lts_20250512() local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef ptr @_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PopDeadIJlmmmtEEEPS4_DpT_(ptr noundef nonnull align 8 dereferenceable(712) %0, i64 noundef %1, i64 noundef %2, i64 noundef %3, i64 noundef %4, i16 noundef zeroext %5) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
end_hunk_0
begin_hunk_1_@_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE7PopDeadIJlmmmtEEEPS4_DpT_:bb.a
bb.b:                                             ; preds = %bb.a
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.e

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 16 ; 2 uses
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !17
  store ptr %i.f, ptr %i.b, align 8, !tbaa !17
  store ptr null, ptr %i.e, align 8, !tbaa !17
  %i.g = getelementptr inbounds nuw i8, ptr %i.c, i64 32
  store atomic i64 0, ptr %i.g monotonic, align 8
  %i.h = getelementptr inbounds nuw i8, ptr %i.c, i64 40
  store atomic i64 0, ptr %i.h monotonic, align 8
  %i.i = getelementptr inbounds nuw i8, ptr %i.c, i64 48
  store atomic i64 0, ptr %i.i monotonic, align 8
  %i.j = getelementptr inbounds nuw i8, ptr %i.c, i64 56
  store atomic i64 0, ptr %i.j monotonic, align 8
  %i.k = getelementptr inbounds nuw i8, ptr %i.c, i64 64
  store atomic i64 0, ptr %i.k monotonic, align 8
  %i.l = getelementptr inbounds nuw i8, ptr %i.c, i64 72
  store atomic i64 0, ptr %i.l monotonic, align 8
  %i.m = getelementptr inbounds nuw i8, ptr %i.c, i64 80
  store atomic i64 0, ptr %i.m monotonic, align 8
  %i.n = getelementptr inbounds nuw i8, ptr %i.c, i64 88
  store atomic i64 -1, ptr %i.n monotonic, align 8
  %i.o = getelementptr inbounds nuw i8, ptr %i.c, i64 96
  store atomic i64 0, ptr %i.o monotonic, align 8
  %i.p = getelementptr inbounds nuw i8, ptr %i.c, i64 104
  store atomic i64 0, ptr %i.p monotonic, align 8
  %i.q = invoke { i64, i32 } @_ZN4absl12lts_202505123NowEv()
          to label %.noexc unwind label %bb.f     ; 2 uses

.noexc:                                           ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %.fca.0.extract.i = extractvalue { i64, i32 } %i.q, 0
  %.fca.1.extract.i = extractvalue { i64, i32 } %i.q, 1
  %i.r = getelementptr inbounds nuw i8, ptr %i.c, i64 112
  store i64 %.fca.0.extract.i, ptr %i.r, align 8
  %.sroa.4.0..sroa_idx.i = getelementptr inbounds nuw i8, ptr %i.c, i64 120
  store i32 %.fca.1.extract.i, ptr %.sroa.4.0..sroa_idx.i, align 8, !tbaa !3
  %i.s = getelementptr inbounds nuw i8, ptr %i.c, i64 24
  store i64 %1, ptr %i.s, align 8, !tbaa !25
  %i.t = getelementptr inbounds nuw i8, ptr %i.c, i64 136
  %i.u = invoke noundef i32 @_ZN4absl12lts_2025051213GetStackTraceEPPvii(ptr noundef nonnull %i.t, i32 noundef 64, i32 noundef 0)
          to label %bb.c unwind label %bb.f

bb.c:                                             ; preds = %.noexc
  %i.v = getelementptr inbounds nuw i8, ptr %i.c, i64 124
  store i32 %i.u, ptr %i.v, align 4, !tbaa !26
  %i.w = getelementptr inbounds nuw i8, ptr %i.c, i64 648
  store i64 %2, ptr %i.w, align 8, !tbaa !31
  %i.x = getelementptr inbounds nuw i8, ptr %i.c, i64 656
  store i64 %3, ptr %i.x, align 8, !tbaa !32
  %i.y = getelementptr inbounds nuw i8, ptr %i.c, i64 664
  store i64 %4, ptr %i.y, align 8, !tbaa !33
  %i.z = getelementptr inbounds nuw i8, ptr %i.c, i64 128
  store i16 %5, ptr %i.z, align 8, !tbaa !34
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.aa = landingpad { ptr, i32 }
          catch ptr null
  %i.ab = extractvalue { ptr, i32 } %i.aa, 0
  tail call void @__clang_call_terminate(ptr %i.ab) #15
  unreachable

bb.e:                                             ; preds = %bb.b
  %i.ac = landingpad { ptr, i32 }
          cleanup
  br label %_ZN4absl12lts_202505129MutexLockD2Ev.exit19

bb.f:                                             ; preds = %.noexc, %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.ad = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit19 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.ae = landingpad { ptr, i32 }
          catch ptr null
  %i.af = extractvalue { ptr, i32 } %i.ae, 0
  tail call void @__clang_call_terminate(ptr %i.af) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit19:      ; preds = %bb.f, %bb.e
  %.pn = phi { ptr, i32 } [ %i.ac, %bb.e ], [ %i.ad, %bb.f ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit20 unwind label %bb.h

bb.h:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit19
  %i.ag = landingpad { ptr, i32 }
          catch ptr null
  %i.ah = extractvalue { ptr, i32 } %i.ag, 0
  tail call void @__clang_call_terminate(ptr %i.ah) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit20:      ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit19
  resume { ptr, i32 } %.pn

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %bb.c, %bb.a
  %.015 = phi ptr [ null, %bb.a ], [ %i.c, %bb.c ]
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.a)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit21 unwind label %bb.i

bb.i:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.ai = landingpad { ptr, i32 }
          catch ptr null
  %i.aj = extractvalue { ptr, i32 } %i.ai, 0
  tail call void @__clang_call_terminate(ptr %i.aj) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit21:      ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  ret ptr %.015
}

; Function Attrs: nobuiltin allocsize(0)
declare noundef nonnull ptr @_Znwm(i64 noundef) local_unnamed_addr #10

; Function Attrs: nobuiltin nounwind
declare void @_ZdlPvm(ptr noundef, i64 noundef) local_unnamed_addr #11

declare void @_ZN4absl12lts_202505125Mutex18ForgetDeadlockInfoEv(ptr noundef nonnull align 8 dereferenceable(8)) local_unnamed_addr #5

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZN4absl12lts_2025051218profiling_internal14SampleRecorderINS0_18container_internal14HashtablezInfoEE8PushDeadEPS4_(ptr noundef nonnull align 8 dereferenceable(712) %0, ptr noundef %1) local_unnamed_addr #0 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704
  %i.b = load atomic ptr, ptr %i.a monotonic, align 8 ; 2 uses
  %.not = icmp eq ptr %i.b, null
  br i1 %.not, label %bb.c, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void %i.b(ptr noundef nonnull align 8 dereferenceable(672) %1)
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 32 ; 3 uses
  tail call void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
  invoke void @_ZN4absl12lts_202505125Mutex4LockEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit unwind label %bb.f

_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit: ; preds = %bb.c
  %i.d = getelementptr inbounds nuw i8, ptr %0, i64 48 ; 2 uses
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !17
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 16
  store ptr %i.e, ptr %i.f, align 8, !tbaa !17
  store ptr %1, ptr %i.d, align 8, !tbaa !17
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %1)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit unwind label %bb.d

bb.d:                                             ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  %i.g = landingpad { ptr, i32 }
          catch ptr null
  %i.h = extractvalue { ptr, i32 } %i.g, 0
  tail call void @__clang_call_terminate(ptr %i.h) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit:        ; preds = %_ZN4absl12lts_202505129MutexLockC2EPNS0_5MutexE.exit
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit8 unwind label %bb.e

bb.e:                                             ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  %i.i = landingpad { ptr, i32 }
          catch ptr null
  %i.j = extractvalue { ptr, i32 } %i.i, 0
  tail call void @__clang_call_terminate(ptr %i.j) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit8:       ; preds = %_ZN4absl12lts_202505129MutexLockD2Ev.exit
  ret void

bb.f:                                             ; preds = %bb.c
  %i.k = landingpad { ptr, i32 }
          cleanup
  invoke void @_ZN4absl12lts_202505125Mutex6UnlockEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %_ZN4absl12lts_202505129MutexLockD2Ev.exit9 unwind label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.l = landingpad { ptr, i32 }
          catch ptr null
  %i.m = extractvalue { ptr, i32 } %i.l, 0
  tail call void @__clang_call_terminate(ptr %i.m) #15
  unreachable

_ZN4absl12lts_202505129MutexLockD2Ev.exit9:       ; preds = %bb.f
  resume { ptr, i32 } %i.k
}

; Function Attrs: nocallback nofree nosync nounwind willreturn memory(argmem: write)
declare void @llvm.memset.p0.i64(ptr writeonly captures(none), i8, i64, i1 immarg) #12

; Function Attrs: nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none)
declare i64 @llvm.umax.i64(i64, i64) #13

attributes #0 = { mustprogress uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #1 = { nofree nounwind }
attributes #2 = { mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: write) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #3 = { mustprogress nofree norecurse nosync nounwind willreturn memory(none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #4 = { nocallback nofree nosync nounwind willreturn memory(argmem: readwrite) }
attributes #5 = { "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #6 = { mustprogress nofree norecurse nounwind willreturn memory(argmem: readwrite) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #7 = { mustprogress nofree norecurse nounwind willreturn memory(readwrite, argmem: none, inaccessiblemem: none, target_mem: none) uwtable "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #8 = { noinline noreturn nounwind uwtable "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #9 = { cold nofree noreturn }
attributes #10 = { nobuiltin allocsize(0) "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #11 = { nobuiltin nounwind "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cmov,+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "tune-cpu"="generic" }
attributes #12 = { nocallback nofree nosync nounwind willreturn memory(argmem: write) }
attributes #13 = { nocallback nocreateundeforpoison nofree nosync nounwind speculatable willreturn memory(none) }
attributes #14 = { nounwind }
attributes #15 = { noreturn nounwind }
attributes #16 = { builtin allocsize(0) }
attributes #17 = { builtin nounwind }

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
!7 = !{!"branch_weights", i32 1, i32 1048575}
!8 = !{!9, !10, i64 0}
!9 = !{!"_ZTSSt13__atomic_baseImE", !10, i64 0}
!10 = !{!"long", !5, i64 0}
!11 = !{!12, !13, i64 0}
!12 = !{!"_ZTSSt13__atomic_baseIPN4absl12lts_2025051218container_internal14HashtablezInfoEE", !13, i64 0}
!13 = !{!"p1 _ZTSN4absl12lts_2025051218container_internal14HashtablezInfoE", !14, i64 0}
!14 = !{!"any pointer", !5, i64 0}
!15 = !{!16, !14, i64 0}
!16 = !{!"_ZTSSt13__atomic_baseIPFvRKN4absl12lts_2025051218container_internal14HashtablezInfoEEE", !14, i64 0}
!17 = !{!18, !13, i64 16}
!18 = !{!"_ZTSN4absl12lts_2025051218profiling_internal6SampleINS0_18container_internal14HashtablezInfoEEE", !19, i64 0, !13, i64 8, !13, i64 16, !10, i64 24}
!19 = !{!"_ZTSN4absl12lts_202505125MutexE", !20, i64 0}
!20 = !{!"_ZTSSt6atomicIlE", !21, i64 0}
!21 = !{!"_ZTSSt13__atomic_baseIlE", !10, i64 0}
!22 = !{!23, !4, i64 8}
!23 = !{!"_ZTSN4absl12lts_202505128DurationE", !24, i64 0, !4, i64 8}
!24 = !{!"_ZTSN4absl12lts_202505128Duration5HiRepE", !4, i64 0, !4, i64 4}
!25 = !{!18, !10, i64 24}
!26 = !{!27, !4, i64 124}
!27 = !{!"_ZTSN4absl12lts_2025051218container_internal14HashtablezInfoE", !18, i64 0, !28, i64 32, !28, i64 40, !28, i64 48, !28, i64 56, !28, i64 64, !28, i64 72, !28, i64 80, !28, i64 88, !28, i64 96, !28, i64 104, !29, i64 112, !4, i64 124, !30, i64 128, !5, i64 136, !10, i64 648, !10, i64 656, !10, i64 664}
!28 = !{!"_ZTSSt6atomicImE", !9, i64 0}
!29 = !{!"_ZTSN4absl12lts_202505124TimeE", !23, i64 0}
!30 = !{!"short", !5, i64 0}
!31 = !{!27, !10, i64 648}
!32 = !{!27, !10, i64 656}
!33 = !{!27, !10, i64 664}
!34 = !{!27, !30, i64 128}
!35 = !{!10, !10, i64 0}
!36 = !{!30, !30, i64 0}
!37 = !{!"branch_weights", i32 1, i32 4000, i32 1}
!38 = !{!"branch_weights", !"expected", i32 -2147483648, i32 0}
!39 = !{!40, !10, i64 0}
!40 = !{!"_ZTSN4absl12lts_2025051218container_internal13SamplingStateE", !10, i64 0, !10, i64 8}
!41 = distinct !{!41, !42}
!42 = !{!"llvm.loop.mustprogress"}
!43 = !{i8 0, i8 2}
!44 = !{}
!45 = distinct !{null}
end_hunk_1
