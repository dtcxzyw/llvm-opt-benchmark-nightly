inline.NumInlined: 6986
inline.NumDeleted: 3568
begin_hunk_0_@_ZN6duckdb15ConcurrentQueue11EnqueueBulkERNS_13ProducerTokenERNS_6vectorINS_10shared_ptrINS_4TaskELb1EEELb1ESaIS6_EEE:bb.a
  %i.l = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.f:                                             ; preds = %._crit_edge
  %i.m = load ptr, ptr %2, align 8, !tbaa !915    ; 2 uses
  %i.n = load ptr, ptr %i.d, align 8, !tbaa !779
  %i.o = ptrtoint ptr %i.n to i64
  %i.p = ptrtoint ptr %i.m to i64
  %i.q = sub i64 %i.o, %i.p
  %i.r = ashr exact i64 %i.q, 4
  %i.s = load ptr, ptr %i.h, align 8, !tbaa !725, !nonnull !132, !noundef !132
  %i.t = getelementptr inbounds i8, ptr %i.s, i64 -8
  %i.u = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer12enqueue_bulkILNS6_14AllocationModeE0ESt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEEbT0_m(ptr noundef nonnull align 8 dereferenceable(136) %i.t, ptr %i.m, i64 noundef %i.r)
          to label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEEbRKNS_13ProducerTokenET_m.exit unwind label %bb.k

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEEbRKNS_13ProducerTokenET_m.exit: ; preds = %bb.f
  br i1 %i.u, label %bb.g, label %bb.l

bb.g:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEEbRKNS_13ProducerTokenET_m.exit
  %i.v = load ptr, ptr %i.d, align 8, !tbaa !779
  %i.w = load ptr, ptr %2, align 8, !tbaa !782
  %i.x = ptrtoint ptr %i.v to i64
  %i.y = ptrtoint ptr %i.w to i64
  %i.z = sub i64 %i.x, %i.y
  %i.aa = ashr exact i64 %i.z, 4
  %i.ab = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.ac = atomicrmw add ptr %i.ab, i64 %i.aa seq_cst, align 8 ; 0 uses
  %i.ad = load ptr, ptr %i.d, align 8, !tbaa !779
  %i.ae = load ptr, ptr %2, align 8, !tbaa !782
  %i.af = ptrtoint ptr %i.ad to i64
  %i.ag = ptrtoint ptr %i.ae to i64
  %i.ah = sub i64 %i.af, %i.ag
  %i.ai = ashr exact i64 %i.ah, 4
  %i.aj = invoke noundef i64 @_ZN6duckdb15NumericCastImplIlmLb0EE7ConvertEm(i64 noundef %i.ai)
          to label %_ZN6duckdb11NumericCastIlmvEET_T0_.exit unwind label %bb.k ; 2 uses

_ZN6duckdb11NumericCastIlmvEET_T0_.exit:          ; preds = %bb.g
  %i.ak = atomicrmw add ptr %0, i64 %i.aj release, align 8
  %i.al = sub nsw i64 0, %i.ak
  %i.am = tail call i64 @llvm.smin.i64(i64 %i.aj, i64 %i.al) ; 2 uses
  %i.an = icmp sgt i64 %i.am, 0
  br i1 %i.an, label %bb.h, label %_ZN17duckdb_moodycamel20LightweightSemaphore6signalEl.exit

bb.h:                                             ; preds = %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.ao = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.ap = trunc i64 %i.am to i32                  ; 2 uses
  %i.aq = icmp sgt i32 %i.ap, 0
  br i1 %i.aq, label %.preheader.i.i, label %_ZN17duckdb_moodycamel20LightweightSemaphore6signalEl.exit

.preheader.i.i:                                   ; preds = %bb.h, %bb.j
  %.in.i.i = phi i32 [ %i.at, %bb.j ], [ %i.ap, %bb.h ] ; 2 uses
  br label %bb.i

bb.i:                                             ; preds = %bb.i, %.preheader.i.i
  %i.ar = tail call i32 @sem_post(ptr noundef nonnull align 8 dereferenceable(32) %i.ao) #34
  %i.as = icmp eq i32 %i.ar, -1
  br i1 %i.as, label %bb.i, label %bb.j, !llvm.loop !1191

bb.j:                                             ; preds = %bb.i
  %i.at = add nsw i32 %.in.i.i, -1
  %i.au = icmp sgt i32 %.in.i.i, 1
  br i1 %i.au, label %.preheader.i.i, label %_ZN17duckdb_moodycamel20LightweightSemaphore6signalEl.exit, !llvm.loop !1192

bb.k:                                             ; preds = %bb.g, %bb.f, %._crit_edge
  %i.av = landingpad { ptr, i32 }
          cleanup
  br label %bb.q

bb.l:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12enqueue_bulkISt13move_iteratorIN9__gnu_cxx17__normal_iteratorIPS4_St6vectorIS4_SaIS4_EEEEEEEbRKNS_13ProducerTokenET_m.exit
  %i.aw = tail call ptr @__cxa_allocate_exception(i64 16) #34 ; 3 uses
  call void @llvm.lifetime.start.p0(ptr nonnull %3) #34
  call void @llvm.lifetime.start.p0(ptr nonnull %4) #34
  invoke void @_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEC2EPKcRKS3_(ptr noundef nonnull align 8 dereferenceable(32) %3, ptr noundef nonnull @.str.26, ptr noundef nonnull align 1 dereferenceable(1) %4)
          to label %bb.m unwind label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread

bb.m:                                             ; preds = %bb.l
  invoke void @_ZN6duckdb17InternalExceptionC1ERKNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEEE(ptr noundef nonnull align 8 dereferenceable(16) %i.aw, ptr noundef nonnull align 8 dereferenceable(32) %3)
          to label %bb.n unwind label %bb.o

bb.n:                                             ; preds = %bb.m
  invoke void @__cxa_throw(ptr nonnull %i.aw, ptr nonnull @_ZTIN6duckdb17InternalExceptionE, ptr nonnull @_ZNSt13runtime_errorD2Ev) #35
          to label %bb.r unwind label %bb.o

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread: ; preds = %bb.l
  %i.ax = landingpad { ptr, i32 }
          cleanup
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br label %bb.p

bb.o:                                             ; preds = %bb.n, %bb.m
  %.0 = phi i1 [ false, %bb.n ], [ true, %bb.m ]  ; 2 uses
  %i.ay = landingpad { ptr, i32 }
          cleanup                                 ; 4 uses
  %i.az = load ptr, ptr %3, align 8, !tbaa !7     ; 2 uses
  %i.ba = getelementptr inbounds nuw i8, ptr %3, i64 16
  %i.bb = icmp eq ptr %i.az, %i.ba
  br i1 %i.bb, label %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, label %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i

_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i: ; preds = %bb.o
  call void @_ZdlPv(ptr noundef %i.az) #36
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %.0, label %bb.p, label %bb.q

_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit: ; preds = %bb.o
  call void @llvm.lifetime.end.p0(ptr nonnull %4) #34
  call void @llvm.lifetime.end.p0(ptr nonnull %3) #34
  br i1 %.0, label %bb.p, label %bb.q

bb.p:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit
  %.pn30 = phi { ptr, i32 } [ %i.ax, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit.thread ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  call void @__cxa_free_exception(ptr %i.aw) #34
  br label %bb.q

_ZN17duckdb_moodycamel20LightweightSemaphore6signalEl.exit: ; preds = %bb.j, %bb.h, %_ZN6duckdb11NumericCastIlmvEET_T0_.exit
  %i.bc = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  ret void

bb.q:                                             ; preds = %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit, %bb.p, %bb.k, %bb.e
  %.pn20 = phi { ptr, i32 } [ %i.l, %bb.e ], [ %i.av, %bb.k ], [ %.pn30, %bb.p ], [ %i.ay, %_ZNSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEED2Ev.exit ], [ %i.ay, %_ZNKSt7__cxx1112basic_stringIcSt11char_traitsIcESaIcEE11_M_is_localEv.exit.i.i ]
  %i.bd = call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %.pn20

bb.r:                                             ; preds = %bb.n
  unreachable
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ConcurrentQueue19DequeueFromProducerERNS_13ProducerTokenERNS_10shared_ptrINS_4TaskELb1EEE(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(56) %1, ptr noundef nonnull align 8 dereferenceable(16) %2) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18QueueProducerTokenESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !725, !nonnull !132, !noundef !132
  %i.f = getelementptr inbounds i8, ptr %i.e, i64 -8
  %i.g = invoke noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS4_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %i.f, ptr noundef nonnull align 8 dereferenceable(16) %2)
          to label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE25try_dequeue_from_producerIS4_EEbRKNS_13ProducerTokenERT_.exit unwind label %bb.d ; 2 uses

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE25try_dequeue_from_producerIS4_EEbRKNS_13ProducerTokenERT_.exit: ; preds = %bb.c
  br i1 %i.g, label %bb.e, label %bb.f

bb.d:                                             ; preds = %bb.c, %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.h = landingpad { ptr, i32 }
          cleanup
  %i.i = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.h

bb.e:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE25try_dequeue_from_producerIS4_EEbRKNS_13ProducerTokenERT_.exit
  %i.j = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.k = atomicrmw sub ptr %i.j, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.f

bb.f:                                             ; preds = %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE25try_dequeue_from_producerIS4_EEbRKNS_13ProducerTokenERT_.exit, %bb.e
  %i.l = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  ret i1 %i.g
}

; Function Attrs: mustprogress uwtable
define noundef zeroext i1 @_ZN6duckdb15ConcurrentQueue7DequeueERNS_10shared_ptrINS_4TaskELb1EEE(ptr noundef nonnull align 8 dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS4_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %i.a, ptr noundef nonnull align 8 dereferenceable(16) %1) ; 2 uses
  br i1 %i.b, label %bb.b, label %bb.c

bb.b:                                             ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.d = atomicrmw sub ptr %i.c, i64 1 seq_cst, align 8 ; 0 uses
  br label %bb.c

bb.c:                                             ; preds = %bb.a, %bb.b
  ret i1 %i.b
}

; Function Attrs: mustprogress uwtable
define linkonce_odr noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE11try_dequeueIS4_EEbRT_(ptr noundef nonnull align 8 dereferenceable(612) %0, ptr noundef nonnull align 8 dereferenceable(16) %1) local_unnamed_addr #0 comdat align 2 {
bb.a:
  %i.a = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not51 = icmp eq ptr %i.a, null
  br i1 %.not51, label %.critedge, label %.lr.ph

._crit_edge:                                      ; preds = %.lr.ph
  %i.b = icmp eq i64 %.130, 0
  br i1 %i.b, label %.critedge, label %bb.b

.lr.ph:                                           ; preds = %bb.a, %.lr.ph
  %.02342 = phi ptr [ %i.r, %.lr.ph ], [ %i.a, %bb.a ] ; 4 uses
  %.02441 = phi i64 [ %.2, %.lr.ph ], [ 0, %bb.a ] ; 3 uses
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
  %.not34 = icmp ne i64 %i.j, 0                   ; 3 uses
  %i.k = icmp ugt i64 %i.j, %.02441
  %spec.select35 = tail call i64 @llvm.umax.i64(i64 %i.j, i64 %.02441)
  %i.l = zext i1 %.not34 to i64
  %.130 = add nuw nsw i64 %.02939, %i.l           ; 3 uses
  %i.m = select i1 %.not34, i1 %i.k, i1 false
  %.228 = select i1 %i.m, ptr %.02342, ptr %.02640 ; 5 uses
  %.2 = select i1 %.not34, i64 %spec.select35, i64 %.02441
  %i.n = getelementptr inbounds nuw i8, ptr %.02342, i64 8
  %i.o = load ptr, ptr %i.n, align 8, !tbaa !1193 ; 2 uses
  %i.p = icmp ne ptr %i.o, null                   ; 2 uses
  %i.q = getelementptr inbounds i8, ptr %i.o, i64 -8
  %i.r = select i1 %i.p, ptr %i.q, ptr null
  %i.s = icmp samesign ult i64 %.130, 3
  %i.t = and i1 %i.s, %i.p
  br i1 %i.t, label %.lr.ph, label %._crit_edge, !llvm.loop !1194

bb.b:                                             ; preds = %._crit_edge
  %i.u = getelementptr inbounds nuw i8, ptr %.228, i64 72
  %i.v = load i8, ptr %i.u, align 8, !tbaa !1195, !range !268, !noundef !132
  %i.w = trunc nuw i8 %i.v to i1
  br i1 %i.w, label %bb.c, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit

bb.c:                                             ; preds = %bb.b
  %i.x = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS4_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.228, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.x, label %.critedge, label %bb.d

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit: ; preds = %bb.b
  %i.y = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS4_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.228, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.y, label %.critedge, label %bb.d

bb.d:                                             ; preds = %bb.c, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit
  %i.z = load atomic ptr, ptr %0 acquire, align 8 ; 2 uses
  %.not3244 = icmp eq ptr %i.z, null
  br i1 %.not3244, label %.critedge, label %.lr.ph47

.lr.ph47:                                         ; preds = %bb.d, %select.unfold
  %.045 = phi ptr [ %i.ai, %select.unfold ], [ %i.z, %bb.d ] ; 5 uses
  %.not33 = icmp eq ptr %.045, %.228
  br i1 %.not33, label %select.unfold, label %bb.e

bb.e:                                             ; preds = %.lr.ph47
  %i.aa = getelementptr inbounds nuw i8, ptr %.045, i64 72
  %i.ab = load i8, ptr %i.aa, align 8, !tbaa !1195, !range !268, !noundef !132
  %i.ac = trunc nuw i8 %i.ab to i1
  br i1 %i.ac, label %bb.f, label %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit37

bb.f:                                             ; preds = %bb.e
  %i.ad = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ExplicitProducer7dequeueIS4_EEbRT_(ptr noundef nonnull align 8 dereferenceable(136) %.045, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.ad, label %.critedge, label %select.unfold

_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit37: ; preds = %bb.e
  %i.ae = tail call noundef zeroext i1 @_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE16ImplicitProducer7dequeueIS4_EEbRT_(ptr noundef nonnull align 8 dereferenceable(104) %.045, ptr noundef nonnull align 8 dereferenceable(16) %1)
  br i1 %i.ae, label %.critedge, label %select.unfold

select.unfold:                                    ; preds = %bb.f, %.lr.ph47, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit37
  %i.af = getelementptr inbounds nuw i8, ptr %.045, i64 8
  %i.ag = load ptr, ptr %i.af, align 8, !tbaa !1193 ; 2 uses
  %i.ah = icmp eq ptr %i.ag, null
  %i.ai = getelementptr inbounds i8, ptr %i.ag, i64 -8
  br i1 %i.ah, label %.critedge, label %.lr.ph47

.critedge:                                        ; preds = %bb.f, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit37, %select.unfold, %bb.a, %bb.d, %._crit_edge, %bb.c, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit
  %.1 = phi i1 [ true, %bb.c ], [ false, %._crit_edge ], [ true, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit ], [ false, %bb.d ], [ false, %bb.a ], [ true, %bb.f ], [ false, %select.unfold ], [ true, %_ZN17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE12ProducerBase7dequeueIS4_EEbRT_.exit37 ]
  ret i1 %.1
}

; Function Attrs: mustprogress norecurse nounwind willreturn uwtable
define noundef i64 @_ZNK6duckdb15ConcurrentQueue15GetTasksInQueueEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(664) %0) local_unnamed_addr #12 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 656
  %i.b = load atomic i64, ptr %i.a seq_cst, align 8
  ret i64 %i.b
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define noundef i64 @_ZNK6duckdb15ConcurrentQueue13GetApproxSizeEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(664) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not6.i = icmp eq ptr %i.b, null
  br i1 %.not6.i, label %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.a, %select.unfold.i
  %.08.i = phi ptr [ %i.o, %select.unfold.i ], [ %i.b, %bb.a ] ; 3 uses
  %.057.i = phi i64 [ %i.k, %select.unfold.i ], [ 0, %bb.a ]
  %i.c = getelementptr inbounds nuw i8, ptr %.08.i, i64 32
  %i.d = load atomic i64, ptr %i.c monotonic, align 8 ; 2 uses
  %i.e = getelementptr inbounds nuw i8, ptr %.08.i, i64 40
  %i.f = load atomic i64, ptr %i.e monotonic, align 8 ; 2 uses
  %i.g = sub i64 %i.f, %i.d
  %i.h = icmp ugt i64 %i.g, -9223372036854775808
  %i.i = sub i64 %i.d, %i.f
  %i.j = select i1 %i.h, i64 %i.i, i64 0
  %i.k = add i64 %i.j, %.057.i                    ; 2 uses
  %i.l = getelementptr inbounds nuw i8, ptr %.08.i, i64 8
  %i.m = load ptr, ptr %i.l, align 8, !tbaa !1193 ; 2 uses
  %i.n = icmp eq ptr %i.m, null
  %i.o = getelementptr inbounds i8, ptr %i.m, i64 -8
  br i1 %i.n, label %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit, label %select.unfold.i

_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE11size_approxEv.exit: ; preds = %select.unfold.i, %bb.a
  %.05.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.k, %select.unfold.i ]
  ret i64 %.05.lcssa.i
}

; Function Attrs: mustprogress norecurse nounwind uwtable
define noundef i64 @_ZNK6duckdb15ConcurrentQueue16GetProducerCountEv(ptr nofree noundef nonnull align 8 captures(none) dereferenceable(664) %0) local_unnamed_addr #22 align 2 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 40
  %i.b = load atomic ptr, ptr %i.a acquire, align 8 ; 2 uses
  %.not5.i = icmp eq ptr %i.b, null
  br i1 %.not5.i, label %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE21size_producers_approxEv.exit, label %select.unfold.i

select.unfold.i:                                  ; preds = %bb.a, %select.unfold.i
  %.07.i = phi ptr [ %i.g, %select.unfold.i ], [ %i.b, %bb.a ]
  %.046.i = phi i64 [ %i.c, %select.unfold.i ], [ 0, %bb.a ]
  %i.c = add i64 %.046.i, 1                       ; 2 uses
  %i.d = getelementptr inbounds nuw i8, ptr %.07.i, i64 8
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !1193 ; 2 uses
  %i.f = icmp eq ptr %i.e, null
  %i.g = getelementptr inbounds i8, ptr %i.e, i64 -8
  br i1 %i.f, label %_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE21size_producers_approxEv.exit, label %select.unfold.i

_ZNK17duckdb_moodycamel15ConcurrentQueueIN6duckdb10shared_ptrINS1_4TaskELb1EEENS_28ConcurrentQueueDefaultTraitsEE21size_producers_approxEv.exit: ; preds = %select.unfold.i, %bb.a
  %.04.lcssa.i = phi i64 [ 0, %bb.a ], [ %i.c, %select.unfold.i ]
  ret i64 %.04.lcssa.i
}

; Function Attrs: mustprogress uwtable
define noundef i64 @_ZNK6duckdb15ConcurrentQueue23GetTaskCountForProducerERNS_13ProducerTokenE(ptr nofree noundef nonnull readnone align 8 captures(none) dereferenceable(664) %0, ptr noundef nonnull align 8 dereferenceable(56) %1) local_unnamed_addr #0 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %1, i64 16 ; 3 uses
  %i.b = tail call noundef i32 @pthread_mutex_lock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 2 uses
  %.not.i.i = icmp eq i32 %i.b, 0
  br i1 %.not.i.i, label %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  tail call void @_ZSt20__throw_system_errori(i32 noundef %i.b) #35
  unreachable

_ZNSt10lock_guardISt5mutexEC2ERS0_.exit:          ; preds = %bb.a
  %i.c = getelementptr inbounds nuw i8, ptr %1, i64 8
  %i.d = invoke noundef ptr @_ZNK6duckdb10unique_ptrINS_18QueueProducerTokenESt14default_deleteIS1_ELb1EEptEv(ptr noundef nonnull align 8 dereferenceable(8) %i.c)
          to label %bb.c unwind label %bb.d

bb.c:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.e = load ptr, ptr %i.d, align 8, !tbaa !725, !nonnull !132, !noundef !132 ; 2 uses
  %i.f = getelementptr inbounds nuw i8, ptr %i.e, i64 24
  %i.g = load atomic i64, ptr %i.f monotonic, align 8 ; 2 uses
  %i.h = getelementptr inbounds nuw i8, ptr %i.e, i64 32
  %i.i = load atomic i64, ptr %i.h monotonic, align 8 ; 2 uses
  %i.j = sub i64 %i.i, %i.g
  %i.k = icmp ugt i64 %i.j, -9223372036854775808
  %i.l = sub i64 %i.g, %i.i
  %i.m = select i1 %i.k, i64 %i.l, i64 0
  %i.n = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  ret i64 %i.m

bb.d:                                             ; preds = %_ZNSt10lock_guardISt5mutexEC2ERS0_.exit
  %i.o = landingpad { ptr, i32 }
          cleanup
  %i.p = tail call noundef i32 @pthread_mutex_unlock(ptr noundef nonnull align 8 dereferenceable(40) %i.a) #34 ; 0 uses
  resume { ptr, i32 } %i.o
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind willreturn memory(argmem: readwrite) uwtable
define void @_ZN6duckdb13ProducerTokenC2ERNS_13TaskSchedulerENS_10unique_ptrINS_18QueueProducerTokenESt14default_deleteIS4_ELb1EEE(ptr nofree noundef nonnull writeonly align 8 captures(none) dereferenceable(56) initializes((0, 56)) %0, ptr noundef nonnull align 8 dereferenceable(124) %1, ptr nofree noundef captures(none) %2) unnamed_addr #10 align 2 {
bb.a:
  store ptr %1, ptr %0, align 8, !tbaa !1165
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load i64, ptr %2, align 8, !tbaa !734
  store i64 %i.b, ptr %i.a, align 8, !tbaa !734
  store ptr null, ptr %2, align 8, !tbaa !734
  %i.c = getelementptr inbounds nuw i8, ptr %0, i64 16
  tail call void @llvm.memset.p0.i64(ptr noundef nonnull align 8 dereferenceable(40) %i.c, i8 0, i64 40, i1 false)
  ret void
}

; Function Attrs: mustprogress nounwind uwtable
define void @_ZN6duckdb13ProducerTokenD2Ev(ptr nofree noundef nonnull readonly align 8 captures(none) dead_on_return(56) dereferenceable(56) %0) unnamed_addr #5 align 2 personality ptr @__gxx_personality_v0 {
bb.a:
  %i.a = getelementptr inbounds nuw i8, ptr %0, i64 8
  %i.b = load ptr, ptr %i.a, align 8, !tbaa !734  ; 3 uses
  %.not.i = icmp eq ptr %i.b, null
  br i1 %.not.i, label %_ZNSt10unique_ptrIN6duckdb18QueueProducerTokenESt14default_deleteIS1_EED2Ev.exit, label %bb.b

bb.b:                                             ; preds = %bb.a
  %i.c = load ptr, ptr %i.b, align 8, !tbaa !725  ; 3 uses
  %.not.i.i.i.i = icmp eq ptr %i.c, null
  br i1 %.not.i.i.i.i, label %_ZNKSt14default_deleteIN6duckdb18QueueProducerTokenEEclEPS1_.exit.i, label %bb.c

bb.c:                                             ; preds = %bb.b
  %i.d = getelementptr inbounds nuw i8, ptr %i.c, i64 16
  store ptr null, ptr %i.d, align 8, !tbaa !728
  %i.e = getelementptr inbounds nuw i8, ptr %i.c, i64 8
  store atomic i8 1, ptr %i.e release, align 8
  br label %_ZNKSt14default_deleteIN6duckdb18QueueProducerTokenEEclEPS1_.exit.i

_ZNKSt14default_deleteIN6duckdb18QueueProducerTokenEEclEPS1_.exit.i: ; preds = %bb.c, %bb.b
  tail call void @_ZdlPv(ptr noundef nonnull %i.b) #36
  br label %_ZNSt10unique_ptrIN6duckdb18QueueProducerTokenESt14default_deleteIS1_EED2Ev.exit

_ZNSt10unique_ptrIN6duckdb18QueueProducerTokenESt14default_deleteIS1_EED2Ev.exit: ; preds = %bb.a, %_ZNKSt14default_deleteIN6duckdb18QueueProducerTokenEEclEPS1_.exit.i
  ret void
}

; Function Attrs: mustprogress uwtable
end_hunk_0
