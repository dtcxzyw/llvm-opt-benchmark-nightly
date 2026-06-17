inline.NumInlined: 2020
inline.NumDeleted: 1034
begin_hunk_0_@_ZN6duckdb18BufferEvictionNode17TryGetBlockMemoryEv:bb.a
  %i.aj = getelementptr inbounds nuw i8, ptr %i.ai, i64 16
  %i.ak = load ptr, ptr %i.aj, align 8
  call void %i.ak(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #30, !inline_history !154
  %i.al = load ptr, ptr %i.ac, align 8, !tbaa !14
  %i.am = getelementptr inbounds nuw i8, ptr %i.al, i64 24
  %i.an = load ptr, ptr %i.am, align 8
  call void %i.an(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #30, !inline_history !154
  br label %_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EED2Ev.exit

bb.o:                                             ; preds = %bb.m
  %i.ao = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i = icmp eq i8 %i.ao, 0
  br i1 %.not.i.i.i.i, label %bb.q, label %bb.p

bb.p:                                             ; preds = %bb.o
  %i.ap = add nsw i32 %i.ag, -1
  store i32 %i.ap, ptr %i.ad, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

bb.q:                                             ; preds = %bb.o
  %i.aq = atomicrmw volatile add ptr %i.ad, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i: ; preds = %bb.q, %bb.p
  %.0.i.i.i.i.i = phi i32 [ %i.ag, %bb.p ], [ %i.aq, %bb.q ]
  %i.ar = icmp eq i32 %.0.i.i.i.i.i, 1
  br i1 %i.ar, label %bb.r, label %_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EED2Ev.exit, !prof !18

bb.r:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i
  call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.ac) #30
  br label %_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EED2Ev.exit

_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EED2Ev.exit: ; preds = %bb.l, %bb.n, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i.i, %bb.r
  call void @llvm.lifetime.end.p0(ptr nonnull %2) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define linkonce_odr void @_ZNK6duckdb8weak_ptrINS_11BlockMemoryELb1EE4lockEv(ptr dead_on_unwind noalias writable sret(%"class.duckdb::shared_ptr.0") align 8 %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #6 comdat align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !90, !noalias !247 ; 9 uses
  %.not.i.i.i.i = icmp eq ptr %i.b, null
  br i1 %.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EEC2ESt10shared_ptrIS1_E.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %i.b, i64 8 ; 9 uses
  %i.d = load atomic i32, ptr %i.c monotonic, align 8, !noalias !247
  br label %bb.c

bb.c:                                             ; preds = %bb.d, %bb.b
  %.06.i.i.i.i.i = phi i32 [ %i.d, %bb.b ], [ %i.h, %bb.d ] ; 3 uses
  %.not.not.not.i.not.i.i.i.i = icmp eq i32 %.06.i.i.i.i.i, 0
  br i1 %.not.not.not.i.not.i.i.i.i, label %_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EEC2ESt10shared_ptrIS1_E.exit, label %bb.d

bb.d:                                             ; preds = %bb.c
  %i.e = add nsw i32 %.06.i.i.i.i.i, 1
  %i.f = cmpxchg weak ptr %i.c, i32 %.06.i.i.i.i.i, i32 %i.e acq_rel monotonic, align 8, !noalias !247 ; 2 uses
  %i.g = extractvalue { i32, i1 } %i.f, 1
  %i.h = extractvalue { i32, i1 } %i.f, 0
  br i1 %i.g, label %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i, label %bb.c, !llvm.loop !168

_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i: ; preds = %bb.d
  %i.i = load atomic i32, ptr %i.c monotonic, align 8, !noalias !247
  %.fr.i.i.i = freeze i32 %i.i                    ; 2 uses
  %.not.i.i.i = icmp eq i32 %.fr.i.i.i, 0
  %i.j = load ptr, ptr %1, align 8, !noalias !247
  %spec.select = select i1 %.not.i.i.i, ptr null, ptr %i.j ; 2 uses
  store ptr %spec.select, ptr %0, align 8, !tbaa !139
  %i.k = getelementptr inbounds nuw i8, ptr %0, i64 8
  store ptr %i.b, ptr %i.k, align 8, !tbaa !7
  %i.l = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i.i.i = icmp eq i8 %i.l, 0
  br i1 %.not.i.i.i.i.i, label %bb.f, label %bb.e

bb.e:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.m = add nsw i32 %.fr.i.i.i, 1
  store i32 %i.m, ptr %i.c, align 8, !tbaa !3
  br label %bb.g

bb.f:                                             ; preds = %_ZNKSt14__shared_countILN9__gnu_cxx12_Lock_policyE2EE16_M_get_use_countEv.exit.i.i.i
  %i.n = atomicrmw volatile add ptr %i.c, i32 1 acq_rel, align 4 ; 0 uses
  %.pre.i = load ptr, ptr %0, align 8, !tbaa !139
  br label %bb.g

_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EEC2ESt10shared_ptrIS1_E.exit: ; preds = %bb.c, %bb.a
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(16) %0, i8 0, i64 16, i1 false)
  tail call void @_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef null, ptr noundef null) #30
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.g:                                             ; preds = %bb.e, %bb.f
  %.ph = phi ptr [ %.pre.i, %bb.f ], [ %spec.select, %bb.e ] ; 2 uses
  tail call void @_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EE18__enable_weak_thisIS1_S1_TnNSt9enable_ifIXsr3std14is_convertibleIPT0_PKNS_23enable_shared_from_thisIT_EEEE5valueEiE4typeELi0EEEvSB_S6_(ptr noundef nonnull align 8 dereferenceable(16) %0, ptr noundef %.ph, ptr noundef %.ph) #30
  %i.o = load atomic i64, ptr %i.c acquire, align 8 ; 2 uses
  %i.p = icmp eq i64 %i.o, 4294967297
  %i.q = trunc i64 %i.o to i32                    ; 2 uses
  br i1 %i.p, label %bb.h, label %bb.i

bb.h:                                             ; preds = %bb.g
  store i32 0, ptr %i.c, align 8, !tbaa !11
  %i.r = getelementptr inbounds nuw i8, ptr %i.b, i64 12
  store i32 0, ptr %i.r, align 4, !tbaa !13
  %i.s = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.t = getelementptr inbounds nuw i8, ptr %i.s, i64 16
  %i.u = load ptr, ptr %i.t, align 8
  tail call void %i.u(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !142
  %i.v = load ptr, ptr %i.b, align 8, !tbaa !14
  %i.w = getelementptr inbounds nuw i8, ptr %i.v, i64 24
  %i.x = load ptr, ptr %i.w, align 8
  tail call void %i.x(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30, !inline_history !142
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

bb.i:                                             ; preds = %bb.g
  %i.y = load i8, ptr @__libc_single_threaded, align 1, !tbaa !17
  %.not.i.i.i2 = icmp eq i8 %i.y, 0
  br i1 %.not.i.i.i2, label %bb.k, label %bb.j

bb.j:                                             ; preds = %bb.i
  %i.z = add nsw i32 %i.q, -1
  store i32 %i.z, ptr %i.c, align 8, !tbaa !3
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

bb.k:                                             ; preds = %bb.i
  %i.aa = atomicrmw volatile add ptr %i.c, i32 -1 acq_rel, align 4
  br label %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i

_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i: ; preds = %bb.k, %bb.j
  %.0.i.i.i.i = phi i32 [ %i.q, %bb.j ], [ %i.aa, %bb.k ]
  %i.ab = icmp eq i32 %.0.i.i.i.i, 1
  br i1 %i.ab, label %bb.l, label %_ZNSt12__shared_ptrIN6duckdb11BlockMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit, !prof !18

bb.l:                                             ; preds = %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i
  tail call void @_ZNSt16_Sp_counted_baseILN9__gnu_cxx12_Lock_policyE2EE24_M_release_last_use_coldEv(ptr noundef nonnull align 8 dereferenceable(16) %i.b) #30
  br label %_ZNSt12__shared_ptrIN6duckdb11BlockMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit

_ZNSt12__shared_ptrIN6duckdb11BlockMemoryELN9__gnu_cxx12_Lock_policyE2EED2Ev.exit: ; preds = %_ZN6duckdb10shared_ptrINS_11BlockMemoryELb1EEC2ESt10shared_ptrIS1_E.exit, %bb.h, %_ZN9__gnu_cxx27__exchange_and_add_dispatchEPii.exit.i.i.i, %bb.l
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb13EvictionQueue18AddToEvictionQueueEONS_18BufferEvictionNodeE(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.b = tail call noundef ptr @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE28get_or_add_implicit_producerEv(ptr noundef nonnull align 8 dereferenceable(612) %i.a) ; 2 uses
  %i.c = icmp eq ptr %i.b, null
  br i1 %i.c, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE7enqueueEOS2_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.d = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7enqueueILNS4_14AllocationModeE0ES2_EEbOT0_(ptr noundef nonnull align 8 dereferenceable(104) %i.b, ptr noundef nonnull align 8 dereferenceable(24) %1) ; 0 uses
  br label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE7enqueueEOS2_.exit

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE7enqueueEOS2_.exit: ; preds = %bb.a, %bb.b
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 648
  %i.f = atomicrmw add ptr %i.e, i64 1 seq_cst, align 8
  %i.g = and i64 %i.f, 4095
  %i.h = icmp eq i64 %i.g, 4095
  ret i1 %i.h
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb13EvictionQueue18TryDequeueWithLockERNS_18BufferEvictionNodeE(ptr noundef nonnull align 8 dereferenceable(728) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #32
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.d = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %1)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  ret i1 %i.d

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.f = landingpad { ptr, i32 }
          cleanup
  %i.g = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %i.f
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %0, ptr noundef nonnull align 8 dereferenceable(24) %1) local_unnamed_addr #6 comdat align 2 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not51 = icmp eq ptr %i.a, null
  br i1 %.not51, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.b = icmp eq i64 %.130, 0
  br i1 %i.b, label %.critedge, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02342 = phi ptr [ %i.r, %.lr.ph ], [ %i.a, %bb.a ] ; 4 uses
  %.02441 = phi i64 [ %spec.select35, %.lr.ph ], [ 0, %bb.a ] ; 2 uses
  %.02640 = phi ptr [ %.228, %.lr.ph ], [ null, %bb.a ]
  %.02939 = phi i64 [ %.130, %.lr.ph ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.02342, i64 32
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.02342, i64 40
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = sub i64 %i.f, %i.d
  %i.h = icmp ugt i64 %i.g, -9223372036854775808
  %i.i = sub i64 %i.d, %i.f
  %i.j = select i1 %i.h, i64 %i.i, i64 0          ; 3 uses
  %.not34 = icmp ne i64 %i.j, 0                   ; 2 uses
  %i.k = icmp ugt i64 %i.j, %.02441
  %spec.select35 = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %.02441)
  %i.l = zext i1 %.not34 to i64
  %.130 = add nuw nsw i64 %.02939, %i.l           ; 3 uses
  %i.m = select i1 %.not34, i1 %i.k, i1 false
  %.228 = select i1 %i.m, ptr %.02342, ptr %.02640 ; 5 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.02342, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !250  ; 2 uses
  %i.p = icmp ne ptr %i.o, null                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.r = select i1 %i.p, ptr %i.q, ptr null
  %i.s = icmp samesign ult i64 %.130, 3
  %i.t = and i1 %i.s, %i.p
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !256

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.228, i64 72
  %i.v = load i8, ptr %i.u, align 8, !tbaa !257, !range !152, !noundef !42
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.228, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.x, label %.critedge, label %bb.d

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit: ; preds = %bb.b
  %i.y = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.228, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.y, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit
  %i.z = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not3244 = icmp eq ptr %i.z, null
  br i1 %.not3244, label %.critedge, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.d, %select.unfold
  %.045 = phi ptr [ %i.ai, %select.unfold ], [ %i.z, %bb.d ] ; 5 uses
  %.not33 = icmp eq ptr %.045, %.228
  br i1 %.not33, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %.lr.ph47
  %i.aa = getelementptr inbounds nuw i8, ptr %.045, i64 72
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !257, !range !152, !noundef !42
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.045, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ad, label %.critedge, label %select.unfold

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37: ; preds = %bb.e
  %i.ae = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.045, ptr noundef nonnull align 8 dereferenceable(24) %1)
  br i1 %i.ae, label %.critedge, label %select.unfold

select.unfold:                                    ; preds = %bb.f, %.lr.ph47, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37
  %i.af = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !250 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8
  br i1 %i.ah, label %.critedge, label %.lr.ph47

.critedge:                                        ; preds = %bb.f, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37, %select.unfold, %bb.a, %bb.d, %._crit_edge, %bb.c, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit
  %.1 = phi i1 [ true, %bb.c ], [ false, %._crit_edge ], [ true, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit ], [ false, %bb.d ], [ false, %bb.a ], [ true, %bb.f ], [ false, %select.unfold ], [ true, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37 ]
  ret i1 %.1
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13EvictionQueue5PurgeEv(ptr noundef nonnull align 8 dereferenceable(728) %0) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 664 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_trylock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %bb.b, label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 24 ; 2 uses
  %i.d = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not6.i = icmp eq ptr %i.d, null
  br i1 %.not6.i, label %.thread, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.b, %select.unfold.i
  %.08.i = phi ptr [ %i.q, %select.unfold.i ], [ %i.d, %bb.b ] ; 3 uses
  %.057.i = phi i64 [ %i.m, %select.unfold.i ], [ 0, %bb.b ]
  %i.e = getelementptr inbounds nuw i8, ptr %.08.i, i64 32
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %i.h = load atomic i64, ptr %i.g monotonic, align 8 ; 2 uses
  %i.i = sub i64 %i.h, %i.f
  %i.j = icmp ugt i64 %i.i, -9223372036854775808
  %i.k = sub i64 %i.f, %i.h
  %i.l = select i1 %i.j, i64 %i.k, i64 0
  %i.m = add i64 %i.l, %.057.i                    ; 3 uses
  %i.n = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !250  ; 2 uses
  %i.p = icmp eq ptr %i.o, null
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -8
  br i1 %i.p, label %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit, label %select.unfold.i

_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit: ; preds = %select.unfold.i
  %i.r = icmp ult i64 %i.m, 32768
  br i1 %i.r, label %.thread, label %bb.c

bb.c:                                             ; preds = %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit
  %i.s = lshr i64 %i.m, 13                        ; 2 uses
  %i.t = getelementptr inbounds nuw i8, ptr %0, i64 656
  %.not45 = icmp eq i64 %i.s, 0
  br i1 %.not45, label %.thread, label %.lr.ph

.lr.ph:                                           ; preds = %bb.c, %bb.e
  %.02046 = phi i64 [ %i.aq, %bb.e ], [ %i.s, %bb.c ]
  invoke void @_ZN6duckdb13EvictionQueue14PurgeIterationEm(ptr noundef nonnull align 8 dereferenceable(728) %0, i64 noundef 8192)
          to label %bb.d unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit

bb.d:                                             ; preds = %.lr.ph
  %i.u = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not6.i23 = icmp eq ptr %i.u, null
  br i1 %.not6.i23, label %.thread, label %select.unfold.i24

select.unfold.i24:                                ; preds = %bb.d, %select.unfold.i24
  %.08.i25 = phi ptr [ %i.ah, %select.unfold.i24 ], [ %i.u, %bb.d ] ; 3 uses
  %.057.i26 = phi i64 [ %i.ad, %select.unfold.i24 ], [ 0, %bb.d ]
  %i.v = getelementptr inbounds nuw i8, ptr %.08.i25, i64 32
  %i.w = load atomic i64, ptr %i.v monotonic, align 8 ; 2 uses
  %i.x = getelementptr inbounds nuw i8, ptr %.08.i25, i64 40
  %i.y = load atomic i64, ptr %i.x monotonic, align 8 ; 2 uses
  %i.z = sub i64 %i.y, %i.w
  %i.aa = icmp ugt i64 %i.z, -9223372036854775808
  %i.ab = sub i64 %i.w, %i.y
  %i.ac = select i1 %i.aa, i64 %i.ab, i64 0
  %i.ad = add i64 %i.ac, %.057.i26                ; 4 uses
  %i.ae = getelementptr inbounds nuw i8, ptr %.08.i25, i64 8
  %i.af = load ptr, ptr %i.ae, align 8, !tbaa !250 ; 2 uses
  %i.ag = icmp eq ptr %i.af, null
  %i.ah = getelementptr inbounds i8, ptr %i.af, i64 -8
  br i1 %i.ag, label %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit28, label %select.unfold.i24

_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit28: ; preds = %select.unfold.i24
  %i.ai = icmp ult i64 %i.ad, 32768
  br i1 %i.ai, label %.thread, label %bb.e

_ZNSt11unique_lockISt5mutexED2Ev.exit:            ; preds = %.lr.ph
  %i.aj = landingpad { ptr, i32 }
          cleanup
  %i.ak = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  resume { ptr, i32 } %i.aj

bb.e:                                             ; preds = %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit28
  %i.al = load atomic i64, ptr %i.t seq_cst, align 8
  %i.am = tail call i64 @llvm.umin.i64(i64 %i.al, i64 %i.ad) ; 2 uses
  %i.an = sub i64 %i.ad, %i.am
  %i.ao = mul i64 %i.an, 3
  %i.ap = icmp ugt i64 %i.ao, %i.am
  %i.aq = add nsw i64 %.02046, -1                 ; 2 uses
  %.not = icmp eq i64 %i.aq, 0
  %or.cond = select i1 %i.ap, i1 true, i1 %.not
  br i1 %or.cond, label %.thread, label %.lr.ph

.thread:                                          ; preds = %bb.d, %bb.e, %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit28, %bb.c, %bb.b, %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit
  %i.ar = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #30 ; 0 uses
  br label %_ZNSt11unique_lockISt5mutexED2Ev.exit31

_ZNSt11unique_lockISt5mutexED2Ev.exit31:          ; preds = %bb.a, %.thread
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb13EvictionQueue14PurgeIterationEm(ptr noundef nonnull align 8 dereferenceable(728) %0, i64 noundef %1) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %2 = alloca %"class.__gnu_cxx::__normal_iterator", align 8 ; 6 uses
  %3 = alloca %"class.duckdb::shared_ptr.0", align 8 ; 7 uses
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 704 ; 6 uses
  %i.b = getelementptr inbounds nuw i8, ptr %0, i64 712 ; 2 uses
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !261  ; 3 uses
  %i.d = load ptr, ptr %i.a, align 8, !tbaa !264  ; 2 uses
  %i.e = ptrtoint ptr %i.c to i64
  %i.f = ptrtoint ptr %i.d to i64
  %i.g = sub i64 %i.e, %i.f
  %i.h = sdiv exact i64 %i.g, 24                  ; 4 uses
  %i.i = lshr i64 %i.h, 1
  %i.j = icmp ult i64 %1, %i.i
  %i.k = icmp ugt i64 %1, %i.h                    ; 2 uses
  %or.cond = or i1 %i.k, %i.j
  br i1 %or.cond, label %bb.b, label %_ZNSt6vectorIN6duckdb18BufferEvictionNodeESaIS1_EE6resizeEm.exit

bb.b:                                             ; preds = %bb.a
  br i1 %i.k, label %bb.c, label %bb.d

bb.c:                                             ; preds = %bb.b
  %i.l = sub nuw i64 %1, %i.h
  tail call void @_ZNSt6vectorIN6duckdb18BufferEvictionNodeESaIS1_EE17_M_default_appendEm(ptr noundef nonnull align 8 dereferenceable(24) %i.a, i64 noundef %i.l)
  br label %_ZNSt6vectorIN6duckdb18BufferEvictionNodeESaIS1_EE6resizeEm.exit

bb.d:                                             ; preds = %bb.b
  %i.m = icmp ult i64 %1, %i.h
  br i1 %i.m, label %bb.e, label %_ZNSt6vectorIN6duckdb18BufferEvictionNodeESaIS1_EE6resizeEm.exit

bb.e:                                             ; preds = %bb.d
  %i.n = getelementptr inbounds nuw [24 x i8], ptr %i.d, i64 %1 ; 3 uses
  %.not.i.i = icmp eq ptr %i.c, %i.n
  br i1 %.not.i.i, label %_ZNSt6vectorIN6duckdb18BufferEvictionNodeESaIS1_EE6resizeEm.exit, label %.lr.ph.i.i.i.i

.lr.ph.i.i.i.i:                                   ; preds = %bb.e, %_ZSt8_DestroyIN6duckdb18BufferEvictionNodeEEvPT_.exit.i.i.i.i
  %.05.i.i.i.i = phi ptr [ %i.z, %_ZSt8_DestroyIN6duckdb18BufferEvictionNodeEEvPT_.exit.i.i.i.i ], [ %i.n, %bb.e ] ; 2 uses
  %i.o = getelementptr inbounds nuw i8, ptr %.05.i.i.i.i, i64 8
  %i.p = load ptr, ptr %i.o, align 8, !tbaa !90   ; 4 uses
  %.not.i.i.i.i.i.i.i.i.i = icmp eq ptr %i.p, null
  br i1 %.not.i.i.i.i.i.i.i.i.i, label %_ZSt8_DestroyIN6duckdb18BufferEvictionNodeEEvPT_.exit.i.i.i.i, label %bb.f
end_hunk_0
begin_hunk_1_@_ZN6duckdb10BufferPool11EvictBlocksENS_9MemoryTagEmmPNS_10unique_ptrINS_10FileBufferESt14default_deleteIS3_ELb1EEE:bb.a
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25TempBufferPoolReservationE, i64 16), ptr %i.e, align 8, !tbaa !14
  %i.o = load i64, ptr %i.f, align 8, !tbaa !98   ; 6 uses
  %i.p = load ptr, ptr %i.g, align 8, !tbaa !100, !nonnull !42, !align !43 ; 3 uses
  %i.q = load i8, ptr %i.h, align 8, !tbaa !97
  %i.r = getelementptr inbounds nuw i8, ptr %i.p, i64 128 ; 2 uses
  %i.s = zext i8 %i.q to i64                      ; 3 uses
  %i.t = add i64 %i.o, 32767
  %i.u = icmp ult i64 %i.t, 65535
  br i1 %i.u, label %bb.d, label %bb.h

bb.d:                                             ; preds = %bb.c
  %i.v = invoke noundef i64 @_ZN6duckdb13TaskScheduler17GetEstimatedCPUIdEv()
          to label %.noexc.i.i unwind label %bb.i, !inline_history !355

.noexc.i.i:                                       ; preds = %bb.d
  %i.w = and i64 %i.v, 63
  %i.x = getelementptr inbounds nuw i8, ptr %i.p, i64 264
  %i.y = getelementptr inbounds nuw [136 x i8], ptr %i.x, i64 %i.w ; 2 uses
  %i.z = getelementptr inbounds nuw [8 x i8], ptr %i.y, i64 %i.s ; 2 uses
  %i.aa = atomicrmw sub ptr %i.z, i64 %i.o monotonic, align 8
  %i.ab = sub nsw i64 -32768, %i.o                ; 2 uses
  %i.ac = add i64 %i.aa, %i.ab
  %i.ad = icmp ult i64 %i.ac, -65535
  br i1 %i.ad, label %bb.e, label %bb.f

bb.e:                                             ; preds = %.noexc.i.i
  %i.ae = atomicrmw xchg ptr %i.z, i64 0 monotonic, align 8
  %i.af = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.ag = atomicrmw add ptr %i.af, i64 %i.ae monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %bb.e, %.noexc.i.i
  %i.ah = getelementptr inbounds nuw i8, ptr %i.y, i64 128 ; 2 uses
  %i.ai = atomicrmw sub ptr %i.ah, i64 %i.o monotonic, align 8
  %i.aj = add i64 %i.ai, %i.ab
  %i.ak = icmp ult i64 %i.aj, -65535
  br i1 %i.ak, label %bb.g, label %_ZN6duckdb10BufferPool14EvictionResultD2Ev.exit

bb.g:                                             ; preds = %bb.f
  %i.al = atomicrmw xchg ptr %i.ah, i64 0 monotonic, align 8
  br label %.sink.split.i.i.i.i.i

bb.h:                                             ; preds = %bb.c
  %i.am = sub nsw i64 0, %i.o
  %i.an = getelementptr inbounds nuw [8 x i8], ptr %i.r, i64 %i.s
  %i.ao = atomicrmw sub ptr %i.an, i64 %i.o monotonic, align 8 ; 0 uses
  br label %.sink.split.i.i.i.i.i

.sink.split.i.i.i.i.i:                            ; preds = %bb.h, %bb.g
  %.sink21.i.i.i.i.i = phi i64 [ %i.al, %bb.g ], [ %i.am, %bb.h ]
  %i.ap = getelementptr inbounds nuw i8, ptr %i.p, i64 256
  %i.aq = atomicrmw add ptr %i.ap, i64 %.sink21.i.i.i.i.i monotonic, align 8 ; 0 uses
  br label %_ZN6duckdb10BufferPool14EvictionResultD2Ev.exit

bb.i:                                             ; preds = %bb.d
  %i.ar = landingpad { ptr, i32 }
          catch ptr null
  %i.as = extractvalue { ptr, i32 } %i.ar, 0
  tail call void @__clang_call_terminate(ptr %i.as) #31, !inline_history !355
  unreachable

_ZN6duckdb10BufferPool14EvictionResultD2Ev.exit:  ; preds = %bb.f, %.sink.split.i.i.i.i.i
  %i.at = getelementptr inbounds nuw i8, ptr %.sroa.016.021, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.at, %i.d
  br i1 %.not, label %._crit_edge, label %bb.b

._crit_edge:                                      ; preds = %_ZN6duckdb10BufferPool14EvictionResultD2Ev.exit, %bb.a
  tail call void @_ZN6duckdb10BufferPool23EvictObjectCacheEntriesENS_9MemoryTagEmm(ptr dead_on_unwind writable sret(%"struct.duckdb::BufferPool::EvictionResult") align 8 %0, ptr noundef nonnull align 8 dereferenceable(8984) %1, i8 noundef zeroext %2, i64 noundef %3, i64 noundef %4)
  br label %.critedge

.critedge:                                        ; preds = %bb.b, %._crit_edge
  ret void
}

; Function Attrs: mustprogress uwtable
define void @_ZN6duckdb10BufferPool19EvictBlocksInternalERNS_13EvictionQueueENS_9MemoryTagEmmPNS_10unique_ptrINS_10FileBufferESt14default_deleteIS5_ELb1EEE(ptr dead_on_unwind noalias nofree writable writeonly sret(%"struct.duckdb::BufferPool::EvictionResult") align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(8984) %1, ptr noundef nonnull align 8 dereferenceable(728) %2, i8 noundef zeroext %3, i64 noundef %4, i64 noundef %5, ptr nofree noundef captures(address_is_null) %6) unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %7 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %8 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %9 = alloca %"struct.duckdb::BufferEvictionNode", align 8 ; 12 uses
  %10 = alloca %"class.duckdb::shared_ptr.0", align 8 ; 12 uses
  %11 = alloca %"struct.duckdb::TempBufferPoolReservation", align 8 ; 8 uses
  %12 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  %13 = alloca %"class.duckdb::optional_idx", align 8 ; 2 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %11) #30
  %i.a = getelementptr inbounds nuw i8, ptr %11, i64 8 ; 3 uses
  store i8 %3, ptr %i.a, align 8, !tbaa !97
  %i.b = getelementptr inbounds nuw i8, ptr %11, i64 16 ; 4 uses
  %i.c = getelementptr inbounds nuw i8, ptr %11, i64 24 ; 3 uses
  store ptr %1, ptr %i.c, align 8, !tbaa !348
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25TempBufferPoolReservationE, i64 16), ptr %11, align 8, !tbaa !14
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 128 ; 2 uses
  %i.e = zext i8 %3 to i64                        ; 3 uses
  %i.f = add i64 %4, 32767
  %i.g = icmp ult i64 %i.f, 65535
  br i1 %i.g, label %.noexc.i, label %bb.e

.noexc.i:                                         ; preds = %bb.a
  %i.h = tail call noundef i64 @_ZN6duckdb13TaskScheduler17GetEstimatedCPUIdEv()
  %i.i = and i64 %i.h, 63
  %i.j = getelementptr inbounds nuw i8, ptr %1, i64 264
  %i.k = getelementptr inbounds nuw [136 x i8], ptr %i.j, i64 %i.i ; 2 uses
  %i.l = getelementptr inbounds nuw [8 x i8], ptr %i.k, i64 %i.e ; 2 uses
  %i.m = atomicrmw add ptr %i.l, i64 %4 monotonic, align 8
  %i.n = add nsw i64 %4, -32768                   ; 2 uses
  %i.o = add i64 %i.m, %i.n
  %i.p = icmp ult i64 %i.o, -65535
  br i1 %i.p, label %bb.b, label %bb.c

bb.b:                                             ; preds = %.noexc.i
  %i.q = atomicrmw xchg ptr %i.l, i64 0 monotonic, align 8
  %i.r = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.s = atomicrmw add ptr %i.r, i64 %i.q monotonic, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.b, %.noexc.i
  %i.t = getelementptr inbounds nuw i8, ptr %i.k, i64 128 ; 2 uses
  %i.u = atomicrmw add ptr %i.t, i64 %4 monotonic, align 8
  %i.v = add i64 %i.u, %i.n
  %i.w = icmp ult i64 %i.v, -65535
  br i1 %i.w, label %bb.d, label %bb.f

bb.d:                                             ; preds = %bb.c
  %i.x = atomicrmw xchg ptr %i.t, i64 0 monotonic, align 8
  br label %.sink.split.i.i.i.i

bb.e:                                             ; preds = %bb.a
  %i.y = getelementptr inbounds nuw [8 x i8], ptr %i.d, i64 %i.e
  %i.z = atomicrmw add ptr %i.y, i64 %4 monotonic, align 8 ; 0 uses
  br label %.sink.split.i.i.i.i

.sink.split.i.i.i.i:                              ; preds = %bb.e, %bb.d
  %.sink21.i.i.i.i = phi i64 [ %i.x, %bb.d ], [ %4, %bb.e ]
  %i.aa = getelementptr inbounds nuw i8, ptr %1, i64 256
  %i.ab = atomicrmw add ptr %i.aa, i64 %.sink21.i.i.i.i monotonic, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %.sink.split.i.i.i.i, %bb.c
  store i64 %4, ptr %i.b, align 8, !tbaa !98
  %i.ac = getelementptr inbounds nuw i8, ptr %1, i64 256 ; 2 uses
  %i.ad = load atomic i64, ptr %i.ac monotonic, align 8
  %i.ae = tail call noundef i64 @llvm.smax.i64(i64 %i.ad, i64 0)
  %.not = icmp ugt i64 %i.ae, %5
  br i1 %.not, label %bb.k, label %bb.g

bb.g:                                             ; preds = %bb.f
  %i.af = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.ag = load atomic i64, ptr %i.af seq_cst, align 8
  %i.ah = icmp ugt i64 %4, %i.ag
  br i1 %i.ah, label %bb.h, label %bb.bo

bb.h:                                             ; preds = %bb.g
  %i.ai = getelementptr inbounds nuw i8, ptr %1, i64 8968
  %i.aj = load ptr, ptr %i.ai, align 8, !tbaa !349, !nonnull !42, !align !43
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %12, i64 noundef %4)
          to label %bb.i unwind label %bb.j

bb.i:                                             ; preds = %bb.h
  %i.ak = load i64, ptr %12, align 8
  invoke void @_ZNK6duckdb14BlockAllocator8FlushAllENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(120) %i.aj, i64 %i.ak)
          to label %bb.bo unwind label %bb.j

bb.j:                                             ; preds = %bb.bg, %bb.bn, %bb.bm, %bb.i, %bb.h
  %i.al = landingpad { ptr, i32 }
          cleanup
  br label %.body

.body:                                            ; preds = %_ZN6duckdb18BufferEvictionNodeD2Ev.exit41.i, %bb.j
  %eh.lpad-body = phi { ptr, i32 } [ %i.al, %bb.j ], [ %.pn.pn.pn.pn.i, %_ZN6duckdb18BufferEvictionNodeD2Ev.exit41.i ]
  call void @_ZN6duckdb25TempBufferPoolReservationD2Ev(ptr noundef nonnull align 8 dereferenceable(32) %11) #30
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  resume { ptr, i32 } %eh.lpad-body

bb.k:                                             ; preds = %bb.f
  %i.am = getelementptr inbounds nuw i8, ptr %2, i64 640
  %i.an = load atomic i64, ptr %i.am monotonic, align 8 ; 2 uses
  %i.ao = getelementptr inbounds nuw i8, ptr %2, i64 24 ; 3 uses
  %i.ap = getelementptr inbounds nuw i8, ptr %2, i64 664 ; 3 uses
  %.not.i = icmp eq i64 %i.an, 0
  %i.aq = getelementptr inbounds nuw i8, ptr %9, i64 16
  %i.ar = getelementptr inbounds nuw i8, ptr %2, i64 656 ; 2 uses
  %i.as = getelementptr inbounds nuw i8, ptr %10, i64 8
  %i.at = getelementptr inbounds nuw i8, ptr %9, i64 8 ; 2 uses
  %.not.i23.i = icmp eq ptr %6, null
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.k
  %.0 = phi i8 [ 0, %bb.k ], [ %.1, %.backedge.i.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %9) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %9, i8 0, i64 16, i1 false)
  %i.au = load atomic ptr, ptr %i.ao acquire, align 8 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.au, null
  br i1 %.not51.i.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.av = icmp eq i64 %.130.i.i, 0
  br i1 %i.av, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %bb.l

.lr.ph.i.i:                                       ; preds = %.backedge.i, %.lr.ph.i.i
  %.02342.i.i = phi ptr [ %i.bl, %.lr.ph.i.i ], [ %i.au, %.backedge.i ] ; 4 uses
  %.02441.i.i = phi i64 [ %spec.select35.i.i, %.lr.ph.i.i ], [ 0, %.backedge.i ] ; 2 uses
  %.02640.i.i = phi ptr [ %.228.i.i, %.lr.ph.i.i ], [ null, %.backedge.i ]
  %.02939.i.i = phi i64 [ %.130.i.i, %.lr.ph.i.i ], [ 0, %.backedge.i ]
  %i.aw = getelementptr inbounds nuw i8, ptr %.02342.i.i, i64 32
  %i.ax = load atomic i64, ptr %i.aw monotonic, align 8 ; 2 uses
  %i.ay = getelementptr inbounds nuw i8, ptr %.02342.i.i, i64 40
  %i.az = load atomic i64, ptr %i.ay monotonic, align 8 ; 2 uses
  %i.ba = sub i64 %i.az, %i.ax
  %i.bb = icmp ugt i64 %i.ba, -9223372036854775808
  %i.bc = sub i64 %i.ax, %i.az
  %i.bd = select i1 %i.bb, i64 %i.bc, i64 0       ; 3 uses
  %.not34.i.i = icmp ne i64 %i.bd, 0              ; 2 uses
  %i.be = icmp ugt i64 %i.bd, %.02441.i.i
  %spec.select35.i.i = call i64 @llvm.umax.i64(i64 %i.bd, i64 %.02441.i.i)
  %i.bf = zext i1 %.not34.i.i to i64
  %.130.i.i = add nuw nsw i64 %.02939.i.i, %i.bf  ; 3 uses
  %i.bg = select i1 %.not34.i.i, i1 %i.be, i1 false
  %.228.i.i = select i1 %i.bg, ptr %.02342.i.i, ptr %.02640.i.i ; 5 uses
  %i.bh = getelementptr inbounds nuw i8, ptr %.02342.i.i, i64 8
  %i.bi = load ptr, ptr %i.bh, align 8, !tbaa !250 ; 2 uses
  %i.bj = icmp ne ptr %i.bi, null                 ; 2 uses
  %i.bk = getelementptr inbounds i8, ptr %i.bi, i64 -8
  %i.bl = select i1 %i.bj, ptr %i.bk, ptr null
  %i.bm = icmp samesign ult i64 %.130.i.i, 3
  %i.bn = and i1 %i.bj, %i.bm
  br i1 %i.bn, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !256

bb.l:                                             ; preds = %._crit_edge.i.i
  %i.bo = getelementptr inbounds nuw i8, ptr %.228.i.i, i64 72
  %i.bp = load i8, ptr %i.bo, align 8, !tbaa !257, !range !152, !noundef !42
  %i.bq = trunc nuw i8 %i.bp to i1
  br i1 %i.bq, label %bb.m, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i

bb.m:                                             ; preds = %bb.l
  %i.br = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.228.i.i, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.noexc.i4 unwind label %.loopexit.split-lp.loopexit.i

.noexc.i4:                                        ; preds = %bb.m
  br i1 %i.br, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %bb.n

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i: ; preds = %bb.l
  %i.bs = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.228.i.i, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.i

.noexc17.i:                                       ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i
  br i1 %i.bs, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %bb.n

bb.n:                                             ; preds = %.noexc17.i, %.noexc.i4
  %i.bt = load atomic ptr, ptr %i.ao acquire, align 8 ; 2 uses
  %.not3244.i.i = icmp eq ptr %i.bt, null
  br i1 %.not3244.i.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %bb.n, %select.unfold.i.i
  %.045.i.i = phi ptr [ %i.cc, %select.unfold.i.i ], [ %i.bt, %bb.n ] ; 5 uses
  %.not33.i.i = icmp eq ptr %.045.i.i, %.228.i.i
  br i1 %.not33.i.i, label %select.unfold.i.i, label %bb.o

bb.o:                                             ; preds = %.lr.ph47.i.i
  %i.bu = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 72
  %i.bv = load i8, ptr %i.bu, align 8, !tbaa !257, !range !152, !noundef !42
  %i.bw = trunc nuw i8 %i.bv to i1
  br i1 %i.bw, label %bb.p, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i

bb.p:                                             ; preds = %bb.o
  %i.bx = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.045.i.i, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.noexc18.i unwind label %.loopexit.i

.noexc18.i:                                       ; preds = %bb.p
  br i1 %i.bx, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %select.unfold.i.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i: ; preds = %bb.o
  %i.by = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.045.i.i, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %.noexc19.i unwind label %.loopexit.i

.noexc19.i:                                       ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i
  br i1 %i.by, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.noexc19.i, %.noexc18.i, %.lr.ph47.i.i
  %i.bz = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 8
  %i.ca = load ptr, ptr %i.bz, align 8, !tbaa !250 ; 2 uses
  %i.cb = icmp eq ptr %i.ca, null
  %i.cc = getelementptr inbounds i8, ptr %i.ca, i64 -8
  br i1 %i.cb, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %.lr.ph47.i.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i: ; preds = %select.unfold.i.i, %bb.n, %._crit_edge.i.i, %.backedge.i
  %i.cd = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.cd, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.q

bb.q:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.cd) #32
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc20.i:                                       ; preds = %bb.q
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i
  %i.ce = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.ao, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.s unwind label %bb.r

bb.r:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.cf = landingpad { ptr, i32 }
          cleanup
  %i.cg = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #30 ; 0 uses
  br label %.body.i

bb.s:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.ch = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.ap) #30 ; 0 uses
  br i1 %i.ce, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %bb.au

.loopexit.i:                                      ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i, %bb.p
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i, %bb.m
  %lpad.loopexit46.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.q
  %lpad.loopexit.split-lp47.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i: ; preds = %.noexc19.i, %.noexc18.i, %bb.s, %.noexc17.i, %.noexc.i4
  call void @llvm.lifetime.start.p0(ptr nonnull %10) #30
  invoke void @_ZN6duckdb18BufferEvictionNode17TryGetBlockMemoryEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.0") align 8 %10, ptr noundef nonnull align 8 dereferenceable(24) %9)
          to label %bb.t unwind label %bb.v

bb.t:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i
  br i1 %.not.i, label %bb.x, label %bb.u

bb.u:                                             ; preds = %bb.t
  invoke void @_ZN6duckdb10ThreadUtil17SleepMicroSecondsEm(i64 noundef %i.an)
          to label %bb.x unwind label %bb.w

bb.v:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i
  %i.ci = landingpad { ptr, i32 }
          cleanup
  br label %bb.ba

bb.w:                                             ; preds = %bb.u
  %i.cj = landingpad { ptr, i32 }
          cleanup
  br label %bb.az

bb.x:                                             ; preds = %bb.u, %bb.t
  %i.ck = load ptr, ptr %10, align 8, !tbaa !139
  %.not45.i = icmp eq ptr %i.ck, null
  br i1 %.not45.i, label %bb.y, label %bb.z

bb.y:                                             ; preds = %bb.x
  %i.cl = atomicrmw sub ptr %i.ar, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.an, !llvm.loop !378

bb.z:                                             ; preds = %bb.x
  %i.cm = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockMemoryELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.aa unwind label %.loopexit49.i

bb.aa:                                            ; preds = %bb.z
  %i.cn = getelementptr inbounds nuw i8, ptr %i.cm, i64 32 ; 3 uses
  %i.co = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.cn) #30, !noalias !379 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.co, 0
  br i1 %.not.i.i.i.i.i, label %bb.ac, label %bb.ab

bb.ab:                                            ; preds = %bb.aa
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.co) #32
          to label %.noexc21.i unwind label %.loopexit.split-lp50.i

.noexc21.i:                                       ; preds = %bb.ab
  unreachable

bb.ac:                                            ; preds = %bb.aa
  %i.cp = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6duckdb10shared_ptrINS_11BlockMemoryELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %10)
          to label %bb.ad unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i ; 6 uses

bb.ad:                                            ; preds = %bb.ac
  %i.cq = load i64, ptr %i.aq, align 8, !tbaa !243
  %i.cr = getelementptr inbounds nuw i8, ptr %i.cp, i64 96
  %i.cs = load atomic i64, ptr %i.cr seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.cq, %i.cs
  br i1 %.not.i.i, label %bb.ae, label %bb.aj

bb.ae:                                            ; preds = %bb.ad
  %i.ct = getelementptr inbounds nuw i8, ptr %i.cp, i64 72
  %i.cu = load atomic i8, ptr %i.ct seq_cst, align 8
  %i.cv = icmp eq i8 %i.cu, 0
  br i1 %i.cv, label %bb.aj, label %bb.af

bb.af:                                            ; preds = %bb.ae
  %i.cw = getelementptr inbounds nuw i8, ptr %i.cp, i64 76
  %i.cx = load atomic i32, ptr %i.cw seq_cst, align 4
  %i.cy = icmp sgt i32 %i.cx, 0
  br i1 %i.cy, label %bb.aj, label %bb.ag

bb.ag:                                            ; preds = %bb.af
  %i.cz = getelementptr inbounds nuw i8, ptr %i.cp, i64 24
  %i.da = load i64, ptr %i.cz, align 8, !tbaa !83
  %i.db = icmp sgt i64 %i.da, 4611686018427387999
  br i1 %i.db, label %bb.ah, label %_ZN6duckdb18BufferEvictionNode9CanUnloadERNS_11BlockMemoryE.exit.i

bb.ah:                                            ; preds = %bb.ag
  %i.dc = getelementptr inbounds nuw i8, ptr %i.cp, i64 112
  %i.dd = load atomic i8, ptr %i.dc seq_cst, align 8
  %i.de = icmp eq i8 %i.dd, 0
  br i1 %i.de, label %bb.ai, label %_ZN6duckdb18BufferEvictionNode9CanUnloadERNS_11BlockMemoryE.exit.i

bb.ai:                                            ; preds = %bb.ah
  %i.df = getelementptr inbounds nuw i8, ptr %i.cp, i64 16
  %i.dg = load ptr, ptr %i.df, align 8, !tbaa !44, !nonnull !42, !align !43 ; 2 uses
  %i.dh = load ptr, ptr %i.dg, align 8, !tbaa !14
  %i.di = getelementptr inbounds nuw i8, ptr %i.dh, i64 240
  %i.dj = load ptr, ptr %i.di, align 8
  %i.dk = invoke noundef zeroext i1 %i.dj(ptr noundef nonnull align 8 dereferenceable(8) %i.dg)
          to label %.noexc22.i unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, !inline_history !246

.noexc22.i:                                       ; preds = %bb.ai
end_hunk_1
begin_hunk_2_@_ZN6duckdb10BufferPool19EvictBlocksInternalERNS_13EvictionQueueENS_9MemoryTagEmmPNS_10unique_ptrINS_10FileBufferESt14default_deleteIS5_ELb1EEE:bb.a
"_ZN6duckdb13EvictionQueue23IterateUnloadableBlocksIZNS_10BufferPool19EvictBlocksInternalERS0_NS_9MemoryTagEmmPNS_10unique_ptrINS_10FileBufferESt14default_deleteIS6_ELb1EEEE3$_0EEvT_.exit": ; preds = %_ZN6duckdb18BufferEvictionNodeD2Ev.exit.i
  %i.fs = trunc nuw i8 %.1 to i1
  br i1 %i.fs, label %bb.bl, label %bb.bf

bb.bf:                                            ; preds = %"_ZN6duckdb13EvictionQueue23IterateUnloadableBlocksIZNS_10BufferPool19EvictBlocksInternalERS0_NS_9MemoryTagEmmPNS_10unique_ptrINS_10FileBufferESt14default_deleteIS6_ELb1EEEE3$_0EEvT_.exit"
  %i.ft = load i64, ptr %i.b, align 8, !tbaa !98  ; 6 uses
  %i.fu = load ptr, ptr %i.c, align 8, !tbaa !100, !nonnull !42, !align !43 ; 3 uses
  %i.fv = load i8, ptr %i.a, align 8, !tbaa !97
  %i.fw = getelementptr inbounds nuw i8, ptr %i.fu, i64 128 ; 2 uses
  %i.fx = zext i8 %i.fv to i64                    ; 3 uses
  %i.fy = add i64 %i.ft, 32767
  %i.fz = icmp ult i64 %i.fy, 65535
  br i1 %i.fz, label %bb.bg, label %bb.bk

bb.bg:                                            ; preds = %bb.bf
  %i.ga = invoke noundef i64 @_ZN6duckdb13TaskScheduler17GetEstimatedCPUIdEv()
          to label %.noexc unwind label %bb.j

.noexc:                                           ; preds = %bb.bg
  %i.gb = and i64 %i.ga, 63
  %i.gc = getelementptr inbounds nuw i8, ptr %i.fu, i64 264
  %i.gd = getelementptr inbounds nuw [136 x i8], ptr %i.gc, i64 %i.gb ; 2 uses
  %i.ge = getelementptr inbounds nuw [8 x i8], ptr %i.gd, i64 %i.fx ; 2 uses
  %i.gf = atomicrmw sub ptr %i.ge, i64 %i.ft monotonic, align 8
  %i.gg = sub nsw i64 -32768, %i.ft               ; 2 uses
  %i.gh = add i64 %i.gf, %i.gg
  %i.gi = icmp ult i64 %i.gh, -65535
  br i1 %i.gi, label %bb.bh, label %bb.bi

bb.bh:                                            ; preds = %.noexc
  %i.gj = atomicrmw xchg ptr %i.ge, i64 0 monotonic, align 8
  %i.gk = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fx
  %i.gl = atomicrmw add ptr %i.gk, i64 %i.gj monotonic, align 8 ; 0 uses
  br label %bb.bi

bb.bi:                                            ; preds = %bb.bh, %.noexc
  %i.gm = getelementptr inbounds nuw i8, ptr %i.gd, i64 128 ; 2 uses
  %i.gn = atomicrmw sub ptr %i.gm, i64 %i.ft monotonic, align 8
  %i.go = add i64 %i.gn, %i.gg
  %i.gp = icmp ult i64 %i.go, -65535
  br i1 %i.gp, label %bb.bj, label %_ZN6duckdb21BufferPoolReservation6ResizeEm.exit

bb.bj:                                            ; preds = %bb.bi
  %i.gq = atomicrmw xchg ptr %i.gm, i64 0 monotonic, align 8
  br label %.sink.split.i.i.i

bb.bk:                                            ; preds = %bb.bf
  %i.gr = sub nsw i64 0, %i.ft
  %i.gs = getelementptr inbounds nuw [8 x i8], ptr %i.fw, i64 %i.fx
  %i.gt = atomicrmw sub ptr %i.gs, i64 %i.ft monotonic, align 8 ; 0 uses
  br label %.sink.split.i.i.i

.sink.split.i.i.i:                                ; preds = %bb.bk, %bb.bj
  %.sink21.i.i.i = phi i64 [ %i.gq, %bb.bj ], [ %i.gr, %bb.bk ]
  %i.gu = getelementptr inbounds nuw i8, ptr %i.fu, i64 256
  %i.gv = atomicrmw add ptr %i.gu, i64 %.sink21.i.i.i monotonic, align 8 ; 0 uses
  br label %_ZN6duckdb21BufferPoolReservation6ResizeEm.exit

_ZN6duckdb21BufferPoolReservation6ResizeEm.exit:  ; preds = %bb.bi, %.sink.split.i.i.i
  store i64 0, ptr %i.b, align 8, !tbaa !98
  br label %bb.bo

bb.bl:                                            ; preds = %"_ZN6duckdb13EvictionQueue23IterateUnloadableBlocksIZNS_10BufferPool19EvictBlocksInternalERS0_NS_9MemoryTagEmmPNS_10unique_ptrINS_10FileBufferESt14default_deleteIS6_ELb1EEEE3$_0EEvT_.exit"
  %i.gw = getelementptr inbounds nuw i8, ptr %1, i64 80
  %i.gx = load atomic i64, ptr %i.gw seq_cst, align 8
  %i.gy = icmp ugt i64 %4, %i.gx
  br i1 %i.gy, label %bb.bm, label %bb.bo

bb.bm:                                            ; preds = %bb.bl
  %i.gz = getelementptr inbounds nuw i8, ptr %1, i64 8968
  %i.ha = load ptr, ptr %i.gz, align 8, !tbaa !349, !nonnull !42, !align !43
  invoke void @_ZN6duckdb12optional_idxC2Em(ptr noundef nonnull align 8 dereferenceable(8) %13, i64 noundef %4)
          to label %bb.bn unwind label %bb.j

bb.bn:                                            ; preds = %bb.bm
  %i.hb = load i64, ptr %13, align 8
  invoke void @_ZNK6duckdb14BlockAllocator8FlushAllENS_12optional_idxE(ptr noundef nonnull align 8 dereferenceable(120) %i.ha, i64 %i.hb)
          to label %bb.bo unwind label %bb.j

bb.bo:                                            ; preds = %bb.bn, %bb.bl, %_ZN6duckdb21BufferPoolReservation6ResizeEm.exit, %bb.g, %bb.i
  %.sink = phi i8 [ 1, %bb.g ], [ 1, %bb.i ], [ %.1, %_ZN6duckdb21BufferPoolReservation6ResizeEm.exit ], [ %.1, %bb.bl ], [ %.1, %bb.bn ]
  store i8 %.sink, ptr %0, align 8, !tbaa !352
  %i.hc = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.hd = getelementptr inbounds nuw i8, ptr %0, i64 16
  %i.he = load i8, ptr %i.a, align 8, !tbaa !97   ; 2 uses
  store i8 %i.he, ptr %i.hd, align 8, !tbaa !97
  %i.hf = getelementptr inbounds nuw i8, ptr %0, i64 24
  %i.hg = getelementptr inbounds nuw i8, ptr %0, i64 32
  %i.hh = load ptr, ptr %i.c, align 8, !tbaa !100, !nonnull !42, !align !43 ; 4 uses
  store ptr %i.hh, ptr %i.hg, align 8, !tbaa !348
  %i.hi = load i64, ptr %i.b, align 8, !tbaa !98
  store i64 %i.hi, ptr %i.hf, align 8, !tbaa !98
  store ptr getelementptr inbounds nuw inrange(-16, 16) (i8, ptr @_ZTVN6duckdb25TempBufferPoolReservationE, i64 16), ptr %i.hc, align 8, !tbaa !14
  %i.hj = getelementptr inbounds nuw i8, ptr %i.hh, i64 128
  %i.hk = zext i8 %i.he to i64                    ; 2 uses
  %i.hl = invoke noundef i64 @_ZN6duckdb13TaskScheduler17GetEstimatedCPUIdEv()
          to label %.noexc.i7 unwind label %bb.br, !inline_history !355

.noexc.i7:                                        ; preds = %bb.bo
  %i.hm = and i64 %i.hl, 63
  %i.hn = getelementptr inbounds nuw i8, ptr %i.hh, i64 264
  %i.ho = getelementptr inbounds nuw [136 x i8], ptr %i.hn, i64 %i.hm ; 2 uses
  %i.hp = getelementptr inbounds nuw [8 x i8], ptr %i.ho, i64 %i.hk ; 2 uses
  %i.hq = atomicrmw or ptr %i.hp, i64 0 monotonic, align 8
  %i.hr = add i64 %i.hq, -32768
  %i.hs = icmp ult i64 %i.hr, -65535
  br i1 %i.hs, label %bb.bp, label %bb.bq

bb.bp:                                            ; preds = %.noexc.i7
  %i.ht = atomicrmw xchg ptr %i.hp, i64 0 monotonic, align 8
  %i.hu = getelementptr inbounds nuw [8 x i8], ptr %i.hj, i64 %i.hk
  %i.hv = atomicrmw add ptr %i.hu, i64 %i.ht monotonic, align 8 ; 0 uses
  br label %bb.bq

bb.bq:                                            ; preds = %bb.bp, %.noexc.i7
  %i.hw = getelementptr inbounds nuw i8, ptr %i.ho, i64 128 ; 2 uses
  %i.hx = atomicrmw or ptr %i.hw, i64 0 monotonic, align 8
  %i.hy = add i64 %i.hx, -32768
  %i.hz = icmp ult i64 %i.hy, -65535
  br i1 %i.hz, label %.sink.split.i.i.i.i5, label %_ZN6duckdb25TempBufferPoolReservationD2Ev.exit

.sink.split.i.i.i.i5:                             ; preds = %bb.bq
  %i.ia = atomicrmw xchg ptr %i.hw, i64 0 monotonic, align 8
  %i.ib = getelementptr inbounds nuw i8, ptr %i.hh, i64 256
  %i.ic = atomicrmw add ptr %i.ib, i64 %i.ia monotonic, align 8 ; 0 uses
  br label %_ZN6duckdb25TempBufferPoolReservationD2Ev.exit

bb.br:                                            ; preds = %bb.bo
  %i.id = landingpad { ptr, i32 }
          catch ptr null
  %i.ie = extractvalue { ptr, i32 } %i.id, 0
  call void @__clang_call_terminate(ptr %i.ie) #31, !inline_history !355
  unreachable

_ZN6duckdb25TempBufferPoolReservationD2Ev.exit:   ; preds = %bb.bq, %.sink.split.i.i.i.i5
  call void @llvm.lifetime.end.p0(ptr nonnull %11) #30
  ret void
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb10BufferPool15PurgeAgedBlocksEj(ptr nofree noundef nonnull readonly align 8 captures(none) dereferenceable(8984) %0, i32 noundef %1) local_unnamed_addr #6 align 2 {
bb.a:
  %i.a = tail call i64 @_ZNSt6chrono3_V212steady_clock3nowEv() #30
  %i.b = sdiv i64 %i.a, 1000000                   ; 2 uses
  %i.c = zext i32 %1 to i64
  %.neg = mul nsw i64 %i.c, -1000
  %i.d = add nsw i64 %i.b, %.neg
  %i.e = getelementptr inbounds nuw i8, ptr %0, i64 96
  %i.f = load ptr, ptr %i.e, align 8, !tbaa !377  ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %0, i64 104
  %i.h = load ptr, ptr %i.g, align 8, !tbaa !377  ; 2 uses
  %.not16 = icmp eq ptr %i.f, %i.h
  br i1 %.not16, label %._crit_edge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph, %bb.a
  %.0.lcssa = phi i64 [ 0, %bb.a ], [ %i.k, %.lr.ph ]
  ret i64 %.0.lcssa

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.018 = phi i64 [ %i.k, %.lr.ph ], [ 0, %bb.a ]
  %.sroa.010.017 = phi ptr [ %i.l, %.lr.ph ], [ %i.f, %bb.a ] ; 2 uses
  %i.i = tail call noundef nonnull align 8 dereferenceable(728) ptr @_ZNK6duckdb10unique_ptrINS_13EvictionQueueESt14default_deleteIS1_ELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(8) %.sroa.010.017)
  %i.j = tail call noundef i64 @_ZN6duckdb10BufferPool23PurgeAgedBlocksInternalERNS_13EvictionQueueEjll(ptr nonnull align 8 poison, ptr noundef nonnull align 8 dereferenceable(728) %i.i, i32 poison, i64 noundef %i.b, i64 noundef %i.d)
  %i.k = add i64 %i.j, %.018                      ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.sroa.010.017, i64 8 ; 2 uses
  %.not = icmp eq ptr %i.l, %i.h
  br i1 %.not, label %._crit_edge, label %.lr.ph
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZN6duckdb10BufferPool23PurgeAgedBlocksInternalERNS_13EvictionQueueEjll(ptr nofree nonnull readnone align 8 captures(none) %0, ptr noundef nonnull align 8 dereferenceable(728) %1, i32 %2, i64 noundef %3, i64 noundef %4) local_unnamed_addr #6 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %5 = alloca %"class.duckdb::unique_ptr", align 8 ; 4 uses
  %6 = alloca %"struct.duckdb::BufferEvictionNode", align 8 ; 12 uses
  %7 = alloca %"class.duckdb::shared_ptr.0", align 8 ; 12 uses
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 640
  %i.b = load atomic i64, ptr %i.a monotonic, align 8 ; 2 uses
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 24 ; 3 uses
  %i.d = getelementptr inbounds nuw i8, ptr %1, i64 664 ; 3 uses
  %.not.i = icmp eq i64 %i.b, 0
  %i.e = getelementptr inbounds nuw i8, ptr %6, i64 16
  %i.f = getelementptr inbounds nuw i8, ptr %1, i64 656 ; 2 uses
  %i.g = getelementptr inbounds nuw i8, ptr %7, i64 8
  %i.h = getelementptr inbounds nuw i8, ptr %6, i64 8 ; 2 uses
  br label %.backedge.i

.backedge.i:                                      ; preds = %.backedge.i.backedge, %bb.a
  %.0 = phi i64 [ 0, %bb.a ], [ %.1, %.backedge.i.backedge ] ; 4 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %6) #30
  call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(24) %6, i8 0, i64 16, i1 false)
  %i.i = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not51.i.i = icmp eq ptr %i.i, null
  br i1 %.not51.i.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %.lr.ph.i.i

._crit_edge.i.i:                                  ; preds = %.lr.ph.i.i
  %i.j = icmp eq i64 %.130.i.i, 0
  br i1 %i.j, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %bb.b

.lr.ph.i.i:                                       ; preds = %.backedge.i, %.lr.ph.i.i
  %.02342.i.i = phi ptr [ %i.z, %.lr.ph.i.i ], [ %i.i, %.backedge.i ] ; 4 uses
  %.02441.i.i = phi i64 [ %spec.select35.i.i, %.lr.ph.i.i ], [ 0, %.backedge.i ] ; 2 uses
  %.02640.i.i = phi ptr [ %.228.i.i, %.lr.ph.i.i ], [ null, %.backedge.i ]
  %.02939.i.i = phi i64 [ %.130.i.i, %.lr.ph.i.i ], [ 0, %.backedge.i ]
  %i.k = getelementptr inbounds nuw i8, ptr %.02342.i.i, i64 32
  %i.l = load atomic i64, ptr %i.k monotonic, align 8 ; 2 uses
  %i.m = getelementptr inbounds nuw i8, ptr %.02342.i.i, i64 40
  %i.n = load atomic i64, ptr %i.m monotonic, align 8 ; 2 uses
  %i.o = sub i64 %i.n, %i.l
  %i.p = icmp ugt i64 %i.o, -9223372036854775808
  %i.q = sub i64 %i.l, %i.n
  %i.r = select i1 %i.p, i64 %i.q, i64 0          ; 3 uses
  %.not34.i.i = icmp ne i64 %i.r, 0               ; 2 uses
  %i.s = icmp ugt i64 %i.r, %.02441.i.i
  %spec.select35.i.i = call i64 @llvm.umax.i64(i64 %i.r, i64 %.02441.i.i)
  %i.t = zext i1 %.not34.i.i to i64
  %.130.i.i = add nuw nsw i64 %.02939.i.i, %i.t   ; 3 uses
  %i.u = select i1 %.not34.i.i, i1 %i.s, i1 false
  %.228.i.i = select i1 %i.u, ptr %.02342.i.i, ptr %.02640.i.i ; 5 uses
  %i.v = getelementptr inbounds nuw i8, ptr %.02342.i.i, i64 8
  %i.w = load ptr, ptr %i.v, align 8, !tbaa !250  ; 2 uses
  %i.x = icmp ne ptr %i.w, null                   ; 2 uses
  %i.y = getelementptr inbounds i8, ptr %i.w, i64 -8
  %i.z = select i1 %i.x, ptr %i.y, ptr null
  %i.aa = icmp samesign ult i64 %.130.i.i, 3
  %i.ab = and i1 %i.x, %i.aa
  br i1 %i.ab, label %.lr.ph.i.i, label %._crit_edge.i.i, !llvm.loop !256

bb.b:                                             ; preds = %._crit_edge.i.i
  %i.ac = getelementptr inbounds nuw i8, ptr %.228.i.i, i64 72
  %i.ad = load i8, ptr %i.ac, align 8, !tbaa !257, !range !152, !noundef !42
  %i.ae = trunc nuw i8 %i.ad to i1
  br i1 %i.ae, label %bb.c, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i

bb.c:                                             ; preds = %bb.b
  %i.af = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.228.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc.i unwind label %.loopexit.split-lp.loopexit.i

.noexc.i:                                         ; preds = %bb.c
  br i1 %i.af, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %bb.d

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i: ; preds = %bb.b
  %i.ag = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.228.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc17.i unwind label %.loopexit.split-lp.loopexit.i

.noexc17.i:                                       ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i
  br i1 %i.ag, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %bb.d

bb.d:                                             ; preds = %.noexc17.i, %.noexc.i
  %i.ah = load atomic ptr, ptr %i.c acquire, align 8 ; 2 uses
  %.not3244.i.i = icmp eq ptr %i.ah, null
  br i1 %.not3244.i.i, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %.lr.ph47.i.i

.lr.ph47.i.i:                                     ; preds = %bb.d, %select.unfold.i.i
  %.045.i.i = phi ptr [ %i.aq, %select.unfold.i.i ], [ %i.ah, %bb.d ] ; 5 uses
  %.not33.i.i = icmp eq ptr %.045.i.i, %.228.i.i
  br i1 %.not33.i.i, label %select.unfold.i.i, label %bb.e

bb.e:                                             ; preds = %.lr.ph47.i.i
  %i.ai = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 72
  %i.aj = load i8, ptr %i.ai, align 8, !tbaa !257, !range !152, !noundef !42
  %i.ak = trunc nuw i8 %i.aj to i1
  br i1 %i.ak, label %bb.f, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i

bb.f:                                             ; preds = %bb.e
  %i.al = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.045.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc18.i unwind label %.loopexit.i

.noexc18.i:                                       ; preds = %bb.f
  br i1 %i.al, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %select.unfold.i.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i: ; preds = %bb.e
  %i.am = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.045.i.i, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %.noexc19.i unwind label %.loopexit.i

.noexc19.i:                                       ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i
  br i1 %i.am, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %select.unfold.i.i

select.unfold.i.i:                                ; preds = %.noexc19.i, %.noexc18.i, %.lr.ph47.i.i
  %i.an = getelementptr inbounds nuw i8, ptr %.045.i.i, i64 8
  %i.ao = load ptr, ptr %i.an, align 8, !tbaa !250 ; 2 uses
  %i.ap = icmp eq ptr %i.ao, null
  %i.aq = getelementptr inbounds i8, ptr %i.ao, i64 -8
  br i1 %i.ap, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i, label %.lr.ph47.i.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i: ; preds = %select.unfold.i.i, %bb.d, %._crit_edge.i.i, %.backedge.i
  %i.ar = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30 ; 2 uses
  %.not.i.i.i.i = icmp eq i32 %i.ar, 0
  br i1 %.not.i.i.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i, label %bb.g

bb.g:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.ar) #32
          to label %.noexc20.i unwind label %.loopexit.split-lp.loopexit.split-lp.i

.noexc20.i:                                       ; preds = %bb.g
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i:      ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.i
  %i.as = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.c, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.i unwind label %bb.h

bb.h:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.at = landingpad { ptr, i32 }
          cleanup
  %i.au = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30 ; 0 uses
  br label %.body.i

bb.i:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit.i.i
  %i.av = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.d) #30 ; 0 uses
  br i1 %i.as, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i, label %bb.ai

.loopexit.i:                                      ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit37.i.i, %bb.f
  %lpad.loopexit.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.i:                    ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS2_EEbRT_.exit.i.i, %bb.c
  %lpad.loopexit42.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

.loopexit.split-lp.loopexit.split-lp.i:           ; preds = %bb.g
  %lpad.loopexit.split-lp43.i = landingpad { ptr, i32 }
          cleanup
  br label %.body.i

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i: ; preds = %.noexc19.i, %.noexc18.i, %bb.i, %.noexc17.i, %.noexc.i
  call void @llvm.lifetime.start.p0(ptr nonnull %7) #30
  invoke void @_ZN6duckdb18BufferEvictionNode17TryGetBlockMemoryEv(ptr dead_on_unwind nonnull writable sret(%"class.duckdb::shared_ptr.0") align 8 %7, ptr noundef nonnull align 8 dereferenceable(24) %6)
          to label %bb.j unwind label %bb.l

bb.j:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i
  br i1 %.not.i, label %bb.n, label %bb.k

bb.k:                                             ; preds = %bb.j
  invoke void @_ZN6duckdb10ThreadUtil17SleepMicroSecondsEm(i64 noundef %i.b)
          to label %bb.n unwind label %bb.m

bb.l:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb18BufferEvictionNodeENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS2_EEbRT_.exit.thread.i
  %i.aw = landingpad { ptr, i32 }
          cleanup
  br label %bb.ao

bb.m:                                             ; preds = %bb.k
  %i.ax = landingpad { ptr, i32 }
          cleanup
  br label %bb.an

bb.n:                                             ; preds = %bb.k, %bb.j
  %i.ay = load ptr, ptr %7, align 8, !tbaa !139
  %.not41.i = icmp eq ptr %i.ay, null
  br i1 %.not41.i, label %bb.o, label %bb.p

bb.o:                                             ; preds = %bb.n
  %i.az = atomicrmw sub ptr %i.f, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.ab, !llvm.loop !386

bb.p:                                             ; preds = %bb.n
  %i.ba = invoke noundef ptr @_ZNK6duckdb10shared_ptrINS_11BlockMemoryELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.q unwind label %.loopexit45.i

bb.q:                                             ; preds = %bb.p
  %i.bb = getelementptr inbounds nuw i8, ptr %i.ba, i64 32 ; 3 uses
  %i.bc = call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.bb) #30, !noalias !387 ; 2 uses
  %.not.i.i.i.i.i = icmp eq i32 %i.bc, 0
  br i1 %.not.i.i.i.i.i, label %bb.s, label %bb.r

bb.r:                                             ; preds = %bb.q
  invoke void @_ZSt20__throw_system_errori(i32 noundef %i.bc) #32
          to label %.noexc21.i unwind label %.loopexit.split-lp46.i

.noexc21.i:                                       ; preds = %bb.r
  unreachable

bb.s:                                             ; preds = %bb.q
  %i.bd = invoke noundef nonnull align 8 dereferenceable(176) ptr @_ZNK6duckdb10shared_ptrINS_11BlockMemoryELb1EEdeEv(ptr noundef nonnull align 8 dereferenceable(16) %7)
          to label %bb.t unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i ; 6 uses

bb.t:                                             ; preds = %bb.s
  %i.be = load i64, ptr %i.e, align 8, !tbaa !243
  %i.bf = getelementptr inbounds nuw i8, ptr %i.bd, i64 96
  %i.bg = load atomic i64, ptr %i.bf seq_cst, align 8
  %.not.i.i = icmp eq i64 %i.be, %i.bg
  br i1 %.not.i.i, label %bb.u, label %bb.z

bb.u:                                             ; preds = %bb.t
  %i.bh = getelementptr inbounds nuw i8, ptr %i.bd, i64 72
  %i.bi = load atomic i8, ptr %i.bh seq_cst, align 8
  %i.bj = icmp eq i8 %i.bi, 0
  br i1 %i.bj, label %bb.z, label %bb.v

bb.v:                                             ; preds = %bb.u
  %i.bk = getelementptr inbounds nuw i8, ptr %i.bd, i64 76
  %i.bl = load atomic i32, ptr %i.bk seq_cst, align 4
  %i.bm = icmp sgt i32 %i.bl, 0
  br i1 %i.bm, label %bb.z, label %bb.w

bb.w:                                             ; preds = %bb.v
  %i.bn = getelementptr inbounds nuw i8, ptr %i.bd, i64 24
  %i.bo = load i64, ptr %i.bn, align 8, !tbaa !83
  %i.bp = icmp sgt i64 %i.bo, 4611686018427387999
  br i1 %i.bp, label %bb.x, label %_ZN6duckdb18BufferEvictionNode9CanUnloadERNS_11BlockMemoryE.exit.i

bb.x:                                             ; preds = %bb.w
  %i.bq = getelementptr inbounds nuw i8, ptr %i.bd, i64 112
  %i.br = load atomic i8, ptr %i.bq seq_cst, align 8
  %i.bs = icmp eq i8 %i.br, 0
  br i1 %i.bs, label %bb.y, label %_ZN6duckdb18BufferEvictionNode9CanUnloadERNS_11BlockMemoryE.exit.i

bb.y:                                             ; preds = %bb.x
  %i.bt = getelementptr inbounds nuw i8, ptr %i.bd, i64 16
  %i.bu = load ptr, ptr %i.bt, align 8, !tbaa !44, !nonnull !42, !align !43 ; 2 uses
  %i.bv = load ptr, ptr %i.bu, align 8, !tbaa !14
  %i.bw = getelementptr inbounds nuw i8, ptr %i.bv, i64 240
  %i.bx = load ptr, ptr %i.bw, align 8
  %i.by = invoke noundef zeroext i1 %i.bx(ptr noundef nonnull align 8 dereferenceable(8) %i.bu)
          to label %.noexc22.i unwind label %_ZNSt11unique_lockISt5mutexED2Ev.exit.i, !inline_history !246

.noexc22.i:                                       ; preds = %bb.y
end_hunk_2
